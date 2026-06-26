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

20:                                               ; preds = %59, %0
  %21 = load double, ptr @sa, align 8
  %22 = load double, ptr @TLimit, align 8
  %23 = fcmp olt double %21, %22
  br i1 %23, label %24, label %65

24:                                               ; preds = %20
  %25 = load i32, ptr %11, align 4
  %26 = mul nsw i32 2, %25
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

32:                                               ; preds = %37, %24
  %33 = load i32, ptr %9, align 4
  %34 = load i32, ptr %11, align 4
  %35 = sub nsw i32 %34, 1
  %36 = icmp sle i32 %33, %35
  br i1 %36, label %37, label %59

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
  %57 = load i32, ptr %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %9, align 4
  br label %32, !llvm.loop !7

59:                                               ; preds = %32
  %60 = call i32 @dtime(ptr noundef @TimeArray)
  %61 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %61, ptr @sa, align 8
  %62 = load i32, ptr %11, align 4
  %63 = load i32, ptr %8, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %20, !llvm.loop !9

65:                                               ; preds = %59, %20
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %66 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %67

67:                                               ; preds = %72, %65
  %68 = load i32, ptr %9, align 4
  %69 = load i32, ptr %11, align 4
  %70 = sub nsw i32 %69, 1
  %71 = icmp sle i32 %68, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = add nsw i32 %68, 1
  store i32 %73, ptr %9, align 4
  br label %67, !llvm.loop !10

74:                                               ; preds = %67
  %75 = call i32 @dtime(ptr noundef @TimeArray)
  %76 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %77 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %78 = fmul double %76, %77
  store double %78, ptr @nulltime, align 8
  %79 = fcmp olt double %78, 0.000000e+00
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store double 0.000000e+00, ptr @nulltime, align 8
  br label %81

81:                                               ; preds = %80, %74
  %82 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %83 = load double, ptr @sa, align 8
  %84 = load double, ptr @nulltime, align 8
  %85 = fneg double %84
  %86 = call double @llvm.fmuladd.f64(double %82, double %83, double %85)
  store double %86, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %87 = load double, ptr @D1, align 8
  %88 = load double, ptr @D2, align 8
  %89 = fadd double %87, %88
  %90 = load double, ptr @D3, align 8
  %91 = fadd double %89, %90
  %92 = load double, ptr @one, align 8
  %93 = fadd double %92, %87
  %94 = load double, ptr @E2, align 8
  %95 = fadd double %93, %94
  %96 = load double, ptr @E3, align 8
  %97 = fadd double %95, %96
  %98 = fdiv double %91, %97
  store double %98, ptr @sa, align 8
  %99 = load double, ptr @D1, align 8
  store double %99, ptr @sb, align 8
  %100 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %101 = fdiv double %100, 1.400000e+01
  store double %101, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %102 = load double, ptr %6, align 8
  %103 = load double, ptr @sa, align 8
  %104 = load double, ptr @sb, align 8
  %105 = fadd double %103, %104
  %106 = load double, ptr @two, align 8
  %107 = load double, ptr %2, align 8
  %108 = call double @llvm.fmuladd.f64(double %106, double %107, double %105)
  %109 = fmul double %102, %108
  %110 = fdiv double %109, %106
  store double %110, ptr @sa, align 8
  %111 = load double, ptr @one, align 8
  %112 = fdiv double %111, %110
  store double %112, ptr @sb, align 8
  %113 = fptosi double %112 to i32
  %114 = mul nsw i32 40000, %113
  %115 = sitofp i32 %114 to double
  %116 = load double, ptr @scale, align 8
  %117 = fdiv double %115, %116
  %118 = fptosi double %117 to i32
  store i32 %118, ptr %11, align 4
  %119 = load double, ptr @sb, align 8
  %120 = fsub double %119, 2.520000e+01
  store double %120, ptr @sc, align 8
  %121 = load double, ptr @one, align 8
  %122 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %123 = fdiv double %121, %122
  store double %123, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %124 = load double, ptr @sc, align 8
  %125 = fmul double %124, 1.000000e-30
  %126 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %127 = fmul double %126, 1.000000e-30
  %128 = fmul double %123, 1.000000e-30
  %129 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %125, double noundef %127, double noundef %128)
  %130 = load i32, ptr %11, align 4
  store i32 %130, ptr %10, align 4
  %131 = load double, ptr @five, align 8
  %132 = fneg double %131
  store double %132, ptr %2, align 8
  %133 = load double, ptr @one, align 8
  %134 = fneg double %133
  store double %134, ptr @sa, align 8
  %135 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %136

136:                                              ; preds = %140, %81
  %137 = load i32, ptr %9, align 4
  %138 = load i32, ptr %10, align 4
  %139 = icmp sle i32 %137, %138
  br i1 %139, label %140, label %147

140:                                              ; preds = %136
  %141 = load double, ptr %2, align 8
  %142 = fneg double %141
  store double %142, ptr %2, align 8
  %143 = load double, ptr @sa, align 8
  %144 = fadd double %143, %142
  store double %144, ptr @sa, align 8
  %145 = load i32, ptr %9, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, ptr %9, align 4
  br label %136, !llvm.loop !11

147:                                              ; preds = %136
  %148 = call i32 @dtime(ptr noundef @TimeArray)
  %149 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %150 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %151 = fmul double %149, %150
  store double %151, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %152 = fcmp olt double %151, 0.000000e+00
  br i1 %152, label %153, label %154

153:                                              ; preds = %147
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  br label %154

154:                                              ; preds = %153, %147
  %155 = load i32, ptr %10, align 4
  %156 = sitofp i32 %155 to double
  store double %156, ptr @sc, align 8
  %157 = load double, ptr @sa, align 8
  store double %157, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  store double 0.000000e+00, ptr %6, align 8
  %158 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %159

159:                                              ; preds = %163, %154
  %160 = load i32, ptr %9, align 4
  %161 = load i32, ptr %10, align 4
  %162 = icmp sle i32 %160, %161
  br i1 %162, label %163, label %187

163:                                              ; preds = %159
  %164 = load double, ptr %2, align 8
  %165 = fneg double %164
  store double %165, ptr %2, align 8
  %166 = load double, ptr @sa, align 8
  %167 = fadd double %166, %165
  store double %167, ptr @sa, align 8
  %168 = load double, ptr %3, align 8
  %169 = load double, ptr @two, align 8
  %170 = fadd double %168, %169
  store double %170, ptr %3, align 8
  %171 = load double, ptr %6, align 8
  %172 = load double, ptr %2, align 8
  %173 = fsub double %172, %170
  %174 = fadd double %171, %173
  store double %174, ptr %6, align 8
  %175 = load double, ptr %4, align 8
  %176 = load double, ptr %2, align 8
  %177 = load double, ptr %3, align 8
  %178 = fneg double %176
  %179 = call double @llvm.fmuladd.f64(double %178, double %177, double %175)
  store double %179, ptr %4, align 8
  %180 = load double, ptr %5, align 8
  %181 = load double, ptr %2, align 8
  %182 = load double, ptr %3, align 8
  %183 = fdiv double %181, %182
  %184 = fadd double %180, %183
  store double %184, ptr %5, align 8
  %185 = load i32, ptr %9, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, ptr %9, align 4
  br label %159, !llvm.loop !12

187:                                              ; preds = %159
  %188 = call i32 @dtime(ptr noundef @TimeArray)
  %189 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %190 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %191 = fmul double %189, %190
  store double %191, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %192 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %193 = fsub double %191, %192
  %194 = fdiv double %193, 7.000000e+00
  store double %194, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %195 = load double, ptr @sa, align 8
  %196 = load double, ptr %6, align 8
  %197 = fmul double %195, %196
  %198 = load double, ptr @sc, align 8
  %199 = fdiv double %197, %198
  %200 = fptosi double %199 to i32
  store i32 %200, ptr %10, align 4
  %201 = load double, ptr @four, align 8
  %202 = load double, ptr %5, align 8
  %203 = fmul double %201, %202
  %204 = load double, ptr @five, align 8
  %205 = fdiv double %203, %204
  store double %205, ptr @sa, align 8
  %206 = load double, ptr @five, align 8
  %207 = load double, ptr %4, align 8
  %208 = fdiv double %206, %207
  %209 = fadd double %205, %208
  store double %209, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %210 = load double, ptr @sb, align 8
  %211 = load double, ptr %4, align 8
  %212 = fmul double %211, %211
  %213 = fmul double %212, %211
  %214 = fdiv double 3.125000e+01, %213
  %215 = fsub double %210, %214
  store double %215, ptr @piprg, align 8
  %216 = load double, ptr @piref, align 8
  %217 = fsub double %215, %216
  store double %217, ptr @pierr, align 8
  %218 = load double, ptr @one, align 8
  %219 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %220 = fdiv double %218, %219
  store double %220, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %221 = load double, ptr @pierr, align 8
  %222 = fmul double %221, 1.000000e-30
  %223 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %224 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %225 = fsub double %223, %224
  %226 = fmul double %225, 1.000000e-30
  %227 = fmul double %220, 1.000000e-30
  %228 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %222, double noundef %226, double noundef %227)
  %229 = load double, ptr @piref, align 8
  %230 = load double, ptr @three, align 8
  %231 = load i32, ptr %10, align 4
  %232 = sitofp i32 %231 to double
  %233 = fmul double %230, %232
  %234 = fdiv double %229, %233
  store double %234, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %235 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %236

236:                                              ; preds = %241, %187
  %237 = load i32, ptr %9, align 4
  %238 = load i32, ptr %10, align 4
  %239 = sub nsw i32 %238, 1
  %240 = icmp sle i32 %237, %239
  br i1 %240, label %241, label %268

241:                                              ; preds = %236
  %242 = load double, ptr %4, align 8
  %243 = load double, ptr @one, align 8
  %244 = fadd double %242, %243
  store double %244, ptr %4, align 8
  %245 = load double, ptr %6, align 8
  %246 = fmul double %244, %245
  store double %246, ptr %3, align 8
  %247 = fmul double %246, %246
  store double %247, ptr %5, align 8
  %248 = load double, ptr %2, align 8
  %249 = load double, ptr %3, align 8
  %250 = load double, ptr @A6, align 8
  %251 = load double, ptr @A5, align 8
  %252 = fneg double %251
  %253 = call double @llvm.fmuladd.f64(double %250, double %247, double %252)
  %254 = load double, ptr @A4, align 8
  %255 = call double @llvm.fmuladd.f64(double %253, double %247, double %254)
  %256 = load double, ptr @A3, align 8
  %257 = fneg double %256
  %258 = call double @llvm.fmuladd.f64(double %255, double %247, double %257)
  %259 = load double, ptr @A2, align 8
  %260 = call double @llvm.fmuladd.f64(double %258, double %247, double %259)
  %261 = load double, ptr @A1, align 8
  %262 = call double @llvm.fmuladd.f64(double %260, double %247, double %261)
  %263 = load double, ptr @one, align 8
  %264 = call double @llvm.fmuladd.f64(double %262, double %247, double %263)
  %265 = call double @llvm.fmuladd.f64(double %249, double %264, double %248)
  store double %265, ptr %2, align 8
  %266 = load i32, ptr %9, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, ptr %9, align 4
  br label %236, !llvm.loop !13

268:                                              ; preds = %236
  %269 = call i32 @dtime(ptr noundef @TimeArray)
  %270 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %271 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %272 = load double, ptr @nulltime, align 8
  %273 = fneg double %272
  %274 = call double @llvm.fmuladd.f64(double %270, double %271, double %273)
  store double %274, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %275 = load double, ptr @piref, align 8
  %276 = load double, ptr @three, align 8
  %277 = fdiv double %275, %276
  store double %277, ptr %3, align 8
  %278 = fmul double %277, %277
  store double %278, ptr %5, align 8
  %279 = load double, ptr %3, align 8
  %280 = load double, ptr @A6, align 8
  %281 = load double, ptr @A5, align 8
  %282 = fneg double %281
  %283 = call double @llvm.fmuladd.f64(double %280, double %278, double %282)
  %284 = load double, ptr @A4, align 8
  %285 = call double @llvm.fmuladd.f64(double %283, double %278, double %284)
  %286 = load double, ptr @A3, align 8
  %287 = fneg double %286
  %288 = call double @llvm.fmuladd.f64(double %285, double %278, double %287)
  %289 = load double, ptr @A2, align 8
  %290 = call double @llvm.fmuladd.f64(double %288, double %278, double %289)
  %291 = load double, ptr @A1, align 8
  %292 = call double @llvm.fmuladd.f64(double %290, double %278, double %291)
  %293 = load double, ptr @one, align 8
  %294 = call double @llvm.fmuladd.f64(double %292, double %278, double %293)
  %295 = fmul double %279, %294
  store double %295, ptr @sa, align 8
  %296 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %297 = fdiv double %296, 1.700000e+01
  store double %297, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %298 = load double, ptr %6, align 8
  %299 = load double, ptr @sa, align 8
  %300 = load double, ptr @two, align 8
  %301 = load double, ptr %2, align 8
  %302 = call double @llvm.fmuladd.f64(double %300, double %301, double %299)
  %303 = fmul double %298, %302
  %304 = fdiv double %303, %300
  store double %304, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %305 = load double, ptr @sa, align 8
  %306 = fsub double %305, 5.000000e-01
  store double %306, ptr @sc, align 8
  %307 = load double, ptr @one, align 8
  %308 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %309 = fdiv double %307, %308
  store double %309, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %310 = load double, ptr @sc, align 8
  %311 = fmul double %310, 1.000000e-30
  %312 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %313 = fmul double %312, 1.000000e-30
  %314 = fmul double %309, 1.000000e-30
  %315 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %311, double noundef %313, double noundef %314)
  %316 = load double, ptr @A3, align 8
  %317 = fneg double %316
  store double %317, ptr @A3, align 8
  %318 = load double, ptr @A5, align 8
  %319 = fneg double %318
  store double %319, ptr @A5, align 8
  %320 = load double, ptr @piref, align 8
  %321 = load double, ptr @three, align 8
  %322 = load i32, ptr %10, align 4
  %323 = sitofp i32 %322 to double
  %324 = fmul double %321, %323
  %325 = fdiv double %320, %324
  store double %325, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %326 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %327

327:                                              ; preds = %332, %268
  %328 = load i32, ptr %9, align 4
  %329 = load i32, ptr %10, align 4
  %330 = sub nsw i32 %329, 1
  %331 = icmp sle i32 %328, %330
  br i1 %331, label %332, label %354

332:                                              ; preds = %327
  %333 = sitofp i32 %328 to double
  %334 = load double, ptr %6, align 8
  %335 = fmul double %333, %334
  store double %335, ptr %3, align 8
  %336 = fmul double %335, %335
  store double %336, ptr %5, align 8
  %337 = load double, ptr %2, align 8
  %338 = load double, ptr @B6, align 8
  %339 = load double, ptr @B5, align 8
  %340 = call double @llvm.fmuladd.f64(double %338, double %336, double %339)
  %341 = load double, ptr @B4, align 8
  %342 = call double @llvm.fmuladd.f64(double %336, double %340, double %341)
  %343 = load double, ptr @B3, align 8
  %344 = call double @llvm.fmuladd.f64(double %336, double %342, double %343)
  %345 = load double, ptr @B2, align 8
  %346 = call double @llvm.fmuladd.f64(double %336, double %344, double %345)
  %347 = load double, ptr @B1, align 8
  %348 = call double @llvm.fmuladd.f64(double %336, double %346, double %347)
  %349 = call double @llvm.fmuladd.f64(double %336, double %348, double %337)
  %350 = load double, ptr @one, align 8
  %351 = fadd double %349, %350
  store double %351, ptr %2, align 8
  %352 = load i32, ptr %9, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, ptr %9, align 4
  br label %327, !llvm.loop !14

354:                                              ; preds = %327
  %355 = call i32 @dtime(ptr noundef @TimeArray)
  %356 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %357 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %358 = load double, ptr @nulltime, align 8
  %359 = fneg double %358
  %360 = call double @llvm.fmuladd.f64(double %356, double %357, double %359)
  store double %360, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %361 = load double, ptr @piref, align 8
  %362 = load double, ptr @three, align 8
  %363 = fdiv double %361, %362
  store double %363, ptr %3, align 8
  %364 = fmul double %363, %363
  store double %364, ptr %5, align 8
  %365 = load double, ptr @B6, align 8
  %366 = load double, ptr @B5, align 8
  %367 = call double @llvm.fmuladd.f64(double %365, double %364, double %366)
  %368 = load double, ptr @B4, align 8
  %369 = call double @llvm.fmuladd.f64(double %364, double %367, double %368)
  %370 = load double, ptr @B3, align 8
  %371 = call double @llvm.fmuladd.f64(double %364, double %369, double %370)
  %372 = load double, ptr @B2, align 8
  %373 = call double @llvm.fmuladd.f64(double %364, double %371, double %372)
  %374 = load double, ptr @B1, align 8
  %375 = call double @llvm.fmuladd.f64(double %364, double %373, double %374)
  %376 = load double, ptr @one, align 8
  %377 = call double @llvm.fmuladd.f64(double %364, double %375, double %376)
  store double %377, ptr @sa, align 8
  %378 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %379 = fdiv double %378, 1.500000e+01
  store double %379, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %380 = load double, ptr %6, align 8
  %381 = load double, ptr @sa, align 8
  %382 = load double, ptr @one, align 8
  %383 = fadd double %381, %382
  %384 = load double, ptr @two, align 8
  %385 = load double, ptr %2, align 8
  %386 = call double @llvm.fmuladd.f64(double %384, double %385, double %383)
  %387 = fmul double %380, %386
  %388 = fdiv double %387, %384
  store double %388, ptr @sa, align 8
  %389 = load double, ptr @piref, align 8
  %390 = load double, ptr @three, align 8
  %391 = fdiv double %389, %390
  store double %391, ptr %3, align 8
  %392 = fmul double %391, %391
  store double %392, ptr %5, align 8
  %393 = load double, ptr %3, align 8
  %394 = load double, ptr @A6, align 8
  %395 = load double, ptr @A5, align 8
  %396 = call double @llvm.fmuladd.f64(double %394, double %392, double %395)
  %397 = load double, ptr @A4, align 8
  %398 = call double @llvm.fmuladd.f64(double %396, double %392, double %397)
  %399 = load double, ptr @A3, align 8
  %400 = call double @llvm.fmuladd.f64(double %398, double %392, double %399)
  %401 = load double, ptr @A2, align 8
  %402 = call double @llvm.fmuladd.f64(double %400, double %392, double %401)
  %403 = load double, ptr @A1, align 8
  %404 = call double @llvm.fmuladd.f64(double %402, double %392, double %403)
  %405 = load double, ptr @A0, align 8
  %406 = call double @llvm.fmuladd.f64(double %404, double %392, double %405)
  %407 = fmul double %393, %406
  store double %407, ptr @sb, align 8
  %408 = load double, ptr @sa, align 8
  %409 = fsub double %408, %407
  store double %409, ptr @sc, align 8
  %410 = load double, ptr @one, align 8
  %411 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %412 = fdiv double %410, %411
  store double %412, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %413 = load double, ptr @sc, align 8
  %414 = fmul double %413, 1.000000e-30
  %415 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %416 = fmul double %415, 1.000000e-30
  %417 = fmul double %412, 1.000000e-30
  %418 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %414, double noundef %416, double noundef %417)
  %419 = load double, ptr @piref, align 8
  %420 = load double, ptr @three, align 8
  %421 = load i32, ptr %10, align 4
  %422 = sitofp i32 %421 to double
  %423 = fmul double %420, %422
  %424 = fdiv double %419, %423
  store double %424, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %425 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %426

426:                                              ; preds = %431, %354
  %427 = load i32, ptr %9, align 4
  %428 = load i32, ptr %10, align 4
  %429 = sub nsw i32 %428, 1
  %430 = icmp sle i32 %427, %429
  br i1 %430, label %431, label %470

431:                                              ; preds = %426
  %432 = sitofp i32 %427 to double
  %433 = load double, ptr %6, align 8
  %434 = fmul double %432, %433
  store double %434, ptr %3, align 8
  %435 = fmul double %434, %434
  store double %435, ptr %5, align 8
  %436 = load double, ptr %3, align 8
  %437 = load double, ptr @A6, align 8
  %438 = load double, ptr @A5, align 8
  %439 = call double @llvm.fmuladd.f64(double %437, double %435, double %438)
  %440 = load double, ptr @A4, align 8
  %441 = call double @llvm.fmuladd.f64(double %439, double %435, double %440)
  %442 = load double, ptr @A3, align 8
  %443 = call double @llvm.fmuladd.f64(double %441, double %435, double %442)
  %444 = load double, ptr @A2, align 8
  %445 = call double @llvm.fmuladd.f64(double %443, double %435, double %444)
  %446 = load double, ptr @A1, align 8
  %447 = call double @llvm.fmuladd.f64(double %445, double %435, double %446)
  %448 = load double, ptr @one, align 8
  %449 = call double @llvm.fmuladd.f64(double %447, double %435, double %448)
  %450 = fmul double %436, %449
  store double %450, ptr %4, align 8
  %451 = load double, ptr %2, align 8
  %452 = load double, ptr %5, align 8
  %453 = load double, ptr @B6, align 8
  %454 = load double, ptr @B5, align 8
  %455 = call double @llvm.fmuladd.f64(double %453, double %452, double %454)
  %456 = load double, ptr @B4, align 8
  %457 = call double @llvm.fmuladd.f64(double %452, double %455, double %456)
  %458 = load double, ptr @B3, align 8
  %459 = call double @llvm.fmuladd.f64(double %452, double %457, double %458)
  %460 = load double, ptr @B2, align 8
  %461 = call double @llvm.fmuladd.f64(double %452, double %459, double %460)
  %462 = load double, ptr @B1, align 8
  %463 = call double @llvm.fmuladd.f64(double %452, double %461, double %462)
  %464 = load double, ptr @one, align 8
  %465 = call double @llvm.fmuladd.f64(double %452, double %463, double %464)
  %466 = fdiv double %450, %465
  %467 = fadd double %451, %466
  store double %467, ptr %2, align 8
  %468 = load i32, ptr %9, align 4
  %469 = add nsw i32 %468, 1
  store i32 %469, ptr %9, align 4
  br label %426, !llvm.loop !15

470:                                              ; preds = %426
  %471 = call i32 @dtime(ptr noundef @TimeArray)
  %472 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %473 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %474 = load double, ptr @nulltime, align 8
  %475 = fneg double %474
  %476 = call double @llvm.fmuladd.f64(double %472, double %473, double %475)
  store double %476, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %477 = load double, ptr @piref, align 8
  %478 = load double, ptr @three, align 8
  %479 = fdiv double %477, %478
  store double %479, ptr %3, align 8
  %480 = fmul double %479, %479
  store double %480, ptr %5, align 8
  %481 = load double, ptr %3, align 8
  %482 = load double, ptr @A6, align 8
  %483 = load double, ptr @A5, align 8
  %484 = call double @llvm.fmuladd.f64(double %482, double %480, double %483)
  %485 = load double, ptr @A4, align 8
  %486 = call double @llvm.fmuladd.f64(double %484, double %480, double %485)
  %487 = load double, ptr @A3, align 8
  %488 = call double @llvm.fmuladd.f64(double %486, double %480, double %487)
  %489 = load double, ptr @A2, align 8
  %490 = call double @llvm.fmuladd.f64(double %488, double %480, double %489)
  %491 = load double, ptr @A1, align 8
  %492 = call double @llvm.fmuladd.f64(double %490, double %480, double %491)
  %493 = load double, ptr @one, align 8
  %494 = call double @llvm.fmuladd.f64(double %492, double %480, double %493)
  %495 = fmul double %481, %494
  store double %495, ptr @sa, align 8
  %496 = load double, ptr %5, align 8
  %497 = load double, ptr @B6, align 8
  %498 = load double, ptr @B5, align 8
  %499 = call double @llvm.fmuladd.f64(double %497, double %496, double %498)
  %500 = load double, ptr @B4, align 8
  %501 = call double @llvm.fmuladd.f64(double %496, double %499, double %500)
  %502 = load double, ptr @B3, align 8
  %503 = call double @llvm.fmuladd.f64(double %496, double %501, double %502)
  %504 = load double, ptr @B2, align 8
  %505 = call double @llvm.fmuladd.f64(double %496, double %503, double %504)
  %506 = load double, ptr @B1, align 8
  %507 = call double @llvm.fmuladd.f64(double %496, double %505, double %506)
  %508 = load double, ptr @one, align 8
  %509 = call double @llvm.fmuladd.f64(double %496, double %507, double %508)
  store double %509, ptr @sb, align 8
  %510 = load double, ptr @sa, align 8
  %511 = fdiv double %510, %509
  store double %511, ptr @sa, align 8
  %512 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %513 = fdiv double %512, 2.900000e+01
  store double %513, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %514 = load double, ptr %6, align 8
  %515 = load double, ptr @sa, align 8
  %516 = load double, ptr @two, align 8
  %517 = load double, ptr %2, align 8
  %518 = call double @llvm.fmuladd.f64(double %516, double %517, double %515)
  %519 = fmul double %514, %518
  %520 = fdiv double %519, %516
  store double %520, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %521 = load double, ptr @sa, align 8
  %522 = fsub double %521, f0x3FE62E42FEFA39EF
  store double %522, ptr @sc, align 8
  %523 = load double, ptr @one, align 8
  %524 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %525 = fdiv double %523, %524
  store double %525, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %526 = load double, ptr @sc, align 8
  %527 = fmul double %526, 1.000000e-30
  %528 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %529 = fmul double %528, 1.000000e-30
  %530 = fmul double %525, 1.000000e-30
  %531 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %527, double noundef %529, double noundef %530)
  %532 = load double, ptr @piref, align 8
  %533 = load double, ptr @four, align 8
  %534 = load i32, ptr %10, align 4
  %535 = sitofp i32 %534 to double
  %536 = fmul double %533, %535
  %537 = fdiv double %532, %536
  store double %537, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %538 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %539

539:                                              ; preds = %544, %470
  %540 = load i32, ptr %9, align 4
  %541 = load i32, ptr %10, align 4
  %542 = sub nsw i32 %541, 1
  %543 = icmp sle i32 %540, %542
  br i1 %543, label %544, label %582

544:                                              ; preds = %539
  %545 = sitofp i32 %540 to double
  %546 = load double, ptr %6, align 8
  %547 = fmul double %545, %546
  store double %547, ptr %3, align 8
  %548 = fmul double %547, %547
  store double %548, ptr %5, align 8
  %549 = load double, ptr %3, align 8
  %550 = load double, ptr @A6, align 8
  %551 = load double, ptr @A5, align 8
  %552 = call double @llvm.fmuladd.f64(double %550, double %548, double %551)
  %553 = load double, ptr @A4, align 8
  %554 = call double @llvm.fmuladd.f64(double %552, double %548, double %553)
  %555 = load double, ptr @A3, align 8
  %556 = call double @llvm.fmuladd.f64(double %554, double %548, double %555)
  %557 = load double, ptr @A2, align 8
  %558 = call double @llvm.fmuladd.f64(double %556, double %548, double %557)
  %559 = load double, ptr @A1, align 8
  %560 = call double @llvm.fmuladd.f64(double %558, double %548, double %559)
  %561 = load double, ptr @one, align 8
  %562 = call double @llvm.fmuladd.f64(double %560, double %548, double %561)
  %563 = fmul double %549, %562
  store double %563, ptr %4, align 8
  %564 = load double, ptr %2, align 8
  %565 = load double, ptr %5, align 8
  %566 = load double, ptr @B6, align 8
  %567 = load double, ptr @B5, align 8
  %568 = call double @llvm.fmuladd.f64(double %566, double %565, double %567)
  %569 = load double, ptr @B4, align 8
  %570 = call double @llvm.fmuladd.f64(double %565, double %568, double %569)
  %571 = load double, ptr @B3, align 8
  %572 = call double @llvm.fmuladd.f64(double %565, double %570, double %571)
  %573 = load double, ptr @B2, align 8
  %574 = call double @llvm.fmuladd.f64(double %565, double %572, double %573)
  %575 = load double, ptr @B1, align 8
  %576 = call double @llvm.fmuladd.f64(double %565, double %574, double %575)
  %577 = load double, ptr @one, align 8
  %578 = call double @llvm.fmuladd.f64(double %565, double %576, double %577)
  %579 = call double @llvm.fmuladd.f64(double %563, double %578, double %564)
  store double %579, ptr %2, align 8
  %580 = load i32, ptr %9, align 4
  %581 = add nsw i32 %580, 1
  store i32 %581, ptr %9, align 4
  br label %539, !llvm.loop !16

582:                                              ; preds = %539
  %583 = call i32 @dtime(ptr noundef @TimeArray)
  %584 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %585 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %586 = load double, ptr @nulltime, align 8
  %587 = fneg double %586
  %588 = call double @llvm.fmuladd.f64(double %584, double %585, double %587)
  store double %588, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %589 = load double, ptr @piref, align 8
  %590 = load double, ptr @four, align 8
  %591 = fdiv double %589, %590
  store double %591, ptr %3, align 8
  %592 = fmul double %591, %591
  store double %592, ptr %5, align 8
  %593 = load double, ptr %3, align 8
  %594 = load double, ptr @A6, align 8
  %595 = load double, ptr @A5, align 8
  %596 = call double @llvm.fmuladd.f64(double %594, double %592, double %595)
  %597 = load double, ptr @A4, align 8
  %598 = call double @llvm.fmuladd.f64(double %596, double %592, double %597)
  %599 = load double, ptr @A3, align 8
  %600 = call double @llvm.fmuladd.f64(double %598, double %592, double %599)
  %601 = load double, ptr @A2, align 8
  %602 = call double @llvm.fmuladd.f64(double %600, double %592, double %601)
  %603 = load double, ptr @A1, align 8
  %604 = call double @llvm.fmuladd.f64(double %602, double %592, double %603)
  %605 = load double, ptr @one, align 8
  %606 = call double @llvm.fmuladd.f64(double %604, double %592, double %605)
  %607 = fmul double %593, %606
  store double %607, ptr @sa, align 8
  %608 = load double, ptr %5, align 8
  %609 = load double, ptr @B6, align 8
  %610 = load double, ptr @B5, align 8
  %611 = call double @llvm.fmuladd.f64(double %609, double %608, double %610)
  %612 = load double, ptr @B4, align 8
  %613 = call double @llvm.fmuladd.f64(double %608, double %611, double %612)
  %614 = load double, ptr @B3, align 8
  %615 = call double @llvm.fmuladd.f64(double %608, double %613, double %614)
  %616 = load double, ptr @B2, align 8
  %617 = call double @llvm.fmuladd.f64(double %608, double %615, double %616)
  %618 = load double, ptr @B1, align 8
  %619 = call double @llvm.fmuladd.f64(double %608, double %617, double %618)
  %620 = load double, ptr @one, align 8
  %621 = call double @llvm.fmuladd.f64(double %608, double %619, double %620)
  store double %621, ptr @sb, align 8
  %622 = load double, ptr @sa, align 8
  %623 = fmul double %622, %621
  store double %623, ptr @sa, align 8
  %624 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %625 = fdiv double %624, 2.900000e+01
  store double %625, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %626 = load double, ptr %6, align 8
  %627 = load double, ptr @sa, align 8
  %628 = load double, ptr @two, align 8
  %629 = load double, ptr %2, align 8
  %630 = call double @llvm.fmuladd.f64(double %628, double %629, double %627)
  %631 = fmul double %626, %630
  %632 = fdiv double %631, %628
  store double %632, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %633 = load double, ptr @sa, align 8
  %634 = fsub double %633, 2.500000e-01
  store double %634, ptr @sc, align 8
  %635 = load double, ptr @one, align 8
  %636 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %637 = fdiv double %635, %636
  store double %637, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %638 = load double, ptr @sc, align 8
  %639 = fmul double %638, 1.000000e-30
  %640 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %641 = fmul double %640, 1.000000e-30
  %642 = fmul double %637, 1.000000e-30
  %643 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, double noundef %639, double noundef %641, double noundef %642)
  store double 0.000000e+00, ptr %2, align 8
  %644 = load double, ptr @one, align 8
  store double %644, ptr %5, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %645 = load i32, ptr %10, align 4
  %646 = sitofp i32 %645 to double
  %647 = fdiv double f0x40599541F7F192A4, %646
  store double %647, ptr %4, align 8
  %648 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %649

649:                                              ; preds = %654, %582
  %650 = load i32, ptr %9, align 4
  %651 = load i32, ptr %10, align 4
  %652 = sub nsw i32 %651, 1
  %653 = icmp sle i32 %650, %652
  br i1 %653, label %654, label %673

654:                                              ; preds = %649
  %655 = sitofp i32 %650 to double
  %656 = load double, ptr %4, align 8
  %657 = fmul double %655, %656
  store double %657, ptr %6, align 8
  %658 = fmul double %657, %657
  store double %658, ptr %3, align 8
  %659 = load double, ptr %2, align 8
  %660 = load double, ptr %5, align 8
  %661 = load double, ptr %6, align 8
  %662 = fadd double %661, %660
  %663 = fdiv double %660, %662
  %664 = fsub double %659, %663
  %665 = fadd double %658, %660
  %666 = fdiv double %661, %665
  %667 = fsub double %664, %666
  %668 = call double @llvm.fmuladd.f64(double %661, double %658, double %660)
  %669 = fdiv double %658, %668
  %670 = fsub double %667, %669
  store double %670, ptr %2, align 8
  %671 = load i32, ptr %9, align 4
  %672 = add nsw i32 %671, 1
  store i32 %672, ptr %9, align 4
  br label %649, !llvm.loop !17

673:                                              ; preds = %649
  %674 = call i32 @dtime(ptr noundef @TimeArray)
  %675 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %676 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %677 = load double, ptr @nulltime, align 8
  %678 = fneg double %677
  %679 = call double @llvm.fmuladd.f64(double %675, double %676, double %678)
  store double %679, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %680 = fdiv double %679, 1.200000e+01
  store double %680, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %681 = load double, ptr @sa, align 8
  store double %681, ptr %6, align 8
  %682 = fmul double %681, %681
  store double %682, ptr %3, align 8
  %683 = load double, ptr %5, align 8
  %684 = fneg double %683
  %685 = load double, ptr %6, align 8
  %686 = fadd double %685, %683
  %687 = fdiv double %683, %686
  %688 = fsub double %684, %687
  %689 = fadd double %682, %683
  %690 = fdiv double %685, %689
  %691 = fsub double %688, %690
  %692 = call double @llvm.fmuladd.f64(double %685, double %682, double %683)
  %693 = fdiv double %682, %692
  %694 = fsub double %691, %693
  store double %694, ptr @sa, align 8
  %695 = load double, ptr %4, align 8
  %696 = fmul double 1.800000e+01, %695
  %697 = load double, ptr @two, align 8
  %698 = load double, ptr %2, align 8
  %699 = call double @llvm.fmuladd.f64(double %697, double %698, double %694)
  %700 = fmul double %696, %699
  store double %700, ptr @sa, align 8
  %701 = fptosi double %700 to i32
  %702 = mul nsw i32 -2000, %701
  store i32 %702, ptr %10, align 4
  %703 = sitofp i32 %702 to double
  %704 = load double, ptr @scale, align 8
  %705 = fdiv double %703, %704
  %706 = fptosi double %705 to i32
  store i32 %706, ptr %10, align 4
  %707 = load double, ptr @sa, align 8
  %708 = fadd double %707, 5.002000e+02
  store double %708, ptr @sc, align 8
  %709 = load double, ptr @one, align 8
  %710 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %711 = fdiv double %709, %710
  store double %711, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %712 = load double, ptr @sc, align 8
  %713 = fmul double %712, 1.000000e-30
  %714 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %715 = fmul double %714, 1.000000e-30
  %716 = fmul double %711, 1.000000e-30
  %717 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, double noundef %713, double noundef %715, double noundef %716)
  %718 = load double, ptr @piref, align 8
  %719 = load double, ptr @three, align 8
  %720 = load i32, ptr %10, align 4
  %721 = sitofp i32 %720 to double
  %722 = fmul double %719, %721
  %723 = fdiv double %718, %722
  store double %723, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %724 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %725

725:                                              ; preds = %730, %673
  %726 = load i32, ptr %9, align 4
  %727 = load i32, ptr %10, align 4
  %728 = sub nsw i32 %727, 1
  %729 = icmp sle i32 %726, %728
  br i1 %729, label %730, label %769

730:                                              ; preds = %725
  %731 = sitofp i32 %726 to double
  %732 = load double, ptr %6, align 8
  %733 = fmul double %731, %732
  store double %733, ptr %3, align 8
  %734 = fmul double %733, %733
  store double %734, ptr %5, align 8
  %735 = load double, ptr @B6, align 8
  %736 = load double, ptr @B5, align 8
  %737 = call double @llvm.fmuladd.f64(double %735, double %734, double %736)
  %738 = load double, ptr @B4, align 8
  %739 = call double @llvm.fmuladd.f64(double %734, double %737, double %738)
  %740 = load double, ptr @B3, align 8
  %741 = call double @llvm.fmuladd.f64(double %734, double %739, double %740)
  %742 = load double, ptr @B2, align 8
  %743 = call double @llvm.fmuladd.f64(double %734, double %741, double %742)
  %744 = load double, ptr @B1, align 8
  %745 = call double @llvm.fmuladd.f64(double %734, double %743, double %744)
  %746 = load double, ptr @one, align 8
  %747 = call double @llvm.fmuladd.f64(double %734, double %745, double %746)
  store double %747, ptr %4, align 8
  %748 = load double, ptr %2, align 8
  %749 = fmul double %747, %747
  %750 = load double, ptr %3, align 8
  %751 = fmul double %749, %750
  %752 = load double, ptr @A6, align 8
  %753 = load double, ptr %5, align 8
  %754 = load double, ptr @A5, align 8
  %755 = call double @llvm.fmuladd.f64(double %752, double %753, double %754)
  %756 = load double, ptr @A4, align 8
  %757 = call double @llvm.fmuladd.f64(double %755, double %753, double %756)
  %758 = load double, ptr @A3, align 8
  %759 = call double @llvm.fmuladd.f64(double %757, double %753, double %758)
  %760 = load double, ptr @A2, align 8
  %761 = call double @llvm.fmuladd.f64(double %759, double %753, double %760)
  %762 = load double, ptr @A1, align 8
  %763 = call double @llvm.fmuladd.f64(double %761, double %753, double %762)
  %764 = load double, ptr @one, align 8
  %765 = call double @llvm.fmuladd.f64(double %763, double %753, double %764)
  %766 = call double @llvm.fmuladd.f64(double %751, double %765, double %748)
  store double %766, ptr %2, align 8
  %767 = load i32, ptr %9, align 4
  %768 = add nsw i32 %767, 1
  store i32 %768, ptr %9, align 4
  br label %725, !llvm.loop !18

769:                                              ; preds = %725
  %770 = call i32 @dtime(ptr noundef @TimeArray)
  %771 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %772 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %773 = load double, ptr @nulltime, align 8
  %774 = fneg double %773
  %775 = call double @llvm.fmuladd.f64(double %771, double %772, double %774)
  store double %775, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %776 = load double, ptr @piref, align 8
  %777 = load double, ptr @three, align 8
  %778 = fdiv double %776, %777
  store double %778, ptr %3, align 8
  %779 = fmul double %778, %778
  store double %779, ptr %5, align 8
  %780 = load double, ptr %3, align 8
  %781 = load double, ptr @A6, align 8
  %782 = load double, ptr @A5, align 8
  %783 = call double @llvm.fmuladd.f64(double %781, double %779, double %782)
  %784 = load double, ptr @A4, align 8
  %785 = call double @llvm.fmuladd.f64(double %783, double %779, double %784)
  %786 = load double, ptr @A3, align 8
  %787 = call double @llvm.fmuladd.f64(double %785, double %779, double %786)
  %788 = load double, ptr @A2, align 8
  %789 = call double @llvm.fmuladd.f64(double %787, double %779, double %788)
  %790 = load double, ptr @A1, align 8
  %791 = call double @llvm.fmuladd.f64(double %789, double %779, double %790)
  %792 = load double, ptr @one, align 8
  %793 = call double @llvm.fmuladd.f64(double %791, double %779, double %792)
  %794 = fmul double %780, %793
  store double %794, ptr @sa, align 8
  %795 = load double, ptr %5, align 8
  %796 = load double, ptr @B6, align 8
  %797 = load double, ptr @B5, align 8
  %798 = call double @llvm.fmuladd.f64(double %796, double %795, double %797)
  %799 = load double, ptr @B4, align 8
  %800 = call double @llvm.fmuladd.f64(double %795, double %798, double %799)
  %801 = load double, ptr @B3, align 8
  %802 = call double @llvm.fmuladd.f64(double %795, double %800, double %801)
  %803 = load double, ptr @B2, align 8
  %804 = call double @llvm.fmuladd.f64(double %795, double %802, double %803)
  %805 = load double, ptr @B1, align 8
  %806 = call double @llvm.fmuladd.f64(double %795, double %804, double %805)
  %807 = load double, ptr @one, align 8
  %808 = call double @llvm.fmuladd.f64(double %795, double %806, double %807)
  store double %808, ptr @sb, align 8
  %809 = load double, ptr @sa, align 8
  %810 = fmul double %809, %808
  %811 = fmul double %810, %808
  store double %811, ptr @sa, align 8
  %812 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %813 = fdiv double %812, 3.000000e+01
  store double %813, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %814 = load double, ptr %6, align 8
  %815 = load double, ptr @sa, align 8
  %816 = load double, ptr @two, align 8
  %817 = load double, ptr %2, align 8
  %818 = call double @llvm.fmuladd.f64(double %816, double %817, double %815)
  %819 = fmul double %814, %818
  %820 = fdiv double %819, %816
  store double %820, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %821 = load double, ptr @sa, align 8
  %822 = fsub double %821, f0x3FD2AAAAAAAAAAAB
  store double %822, ptr @sc, align 8
  %823 = load double, ptr @one, align 8
  %824 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %825 = fdiv double %823, %824
  store double %825, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %826 = load double, ptr @sc, align 8
  %827 = fmul double %826, 1.000000e-30
  %828 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %829 = fmul double %828, 1.000000e-30
  %830 = fmul double %825, 1.000000e-30
  %831 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, double noundef %827, double noundef %829, double noundef %830)
  %832 = load double, ptr @five, align 8
  %833 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %834 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %835 = fsub double %833, %834
  %836 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %837 = call double @llvm.fmuladd.f64(double %832, double %835, double %836)
  %838 = fdiv double %837, 5.200000e+01
  store double %838, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %839 = load double, ptr @one, align 8
  %840 = fdiv double %839, %838
  store double %840, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %841 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %842 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %843 = fadd double %841, %842
  %844 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %845 = fadd double %843, %844
  %846 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %847 = fadd double %845, %846
  %848 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %849 = fadd double %847, %848
  store double %849, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %850 = load double, ptr @four, align 8
  %851 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %852 = call double @llvm.fmuladd.f64(double %850, double %851, double %849)
  %853 = fdiv double %852, 1.520000e+02
  store double %853, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %854 = load double, ptr @one, align 8
  %855 = fdiv double %854, %853
  store double %855, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %856 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %857 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %858 = fadd double %856, %857
  %859 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %860 = fadd double %858, %859
  %861 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %862 = fadd double %860, %861
  %863 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %864 = fadd double %862, %863
  store double %864, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %865 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %866 = fadd double %864, %865
  %867 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %868 = fadd double %866, %867
  %869 = fdiv double %868, 1.460000e+02
  store double %869, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %870 = load double, ptr @one, align 8
  %871 = fdiv double %870, %869
  store double %871, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %872 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %873 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %874 = fadd double %872, %873
  %875 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %876 = fadd double %874, %875
  %877 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %878 = fadd double %876, %877
  %879 = fdiv double %878, 9.100000e+01
  store double %879, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %880 = load double, ptr @one, align 8
  %881 = fdiv double %880, %879
  store double %881, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %882 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %883 = load i32, ptr %10, align 4
  %884 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %883)
  %885 = load double, ptr @nulltime, align 8
  %886 = fmul double %885, 1.000000e-30
  %887 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, double noundef %886)
  %888 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %889 = fmul double %888, 1.000000e-30
  %890 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, double noundef %889)
  %891 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %892 = fmul double %891, 1.000000e-30
  %893 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, double noundef %892)
  %894 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %895 = fmul double %894, 1.000000e-30
  %896 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, double noundef %895)
  %897 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %898 = fmul double %897, 1.000000e-30
  %899 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, double noundef %898)
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
