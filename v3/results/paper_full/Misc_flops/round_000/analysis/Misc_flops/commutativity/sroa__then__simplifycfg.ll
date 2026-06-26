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
  %1 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %3 = sitofp i32 15625 to double
  %4 = fdiv double 1.000000e+06, %3
  store double %4, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  store double 1.000000e+00, ptr @TLimit, align 8
  store double f0x400921FB54442D18, ptr @piref, align 8
  store double 1.000000e+00, ptr @one, align 8
  store double 2.000000e+00, ptr @two, align 8
  store double 3.000000e+00, ptr @three, align 8
  store double 4.000000e+00, ptr @four, align 8
  store double 5.000000e+00, ptr @five, align 8
  %5 = load double, ptr @one, align 8
  store double %5, ptr @scale, align 8
  %6 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %7 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %8 = call i32 @dtime(ptr noundef @TimeArray)
  %9 = call i32 @dtime(ptr noundef @TimeArray)
  store double 0.000000e+00, ptr @sa, align 8
  br label %10

10:                                               ; preds = %41, %0
  %.0284 = phi double [ undef, %0 ], [ %18, %41 ]
  %.0273 = phi double [ undef, %0 ], [ %.2275, %41 ]
  %.0 = phi i32 [ 15625, %0 ], [ %15, %41 ]
  %11 = load double, ptr @sa, align 8
  %12 = load double, ptr @TLimit, align 8
  %13 = fcmp olt double %11, %12
  br i1 %13, label %14, label %45

14:                                               ; preds = %10
  %15 = mul nsw i32 2, %.0
  %16 = load double, ptr @one, align 8
  %17 = sitofp i32 %15 to double
  %18 = fdiv double %16, %17
  %19 = load double, ptr @one, align 8
  %20 = call i32 @dtime(ptr noundef @TimeArray)
  br label %21

21:                                               ; preds = %24, %14
  %.0288 = phi double [ 0.000000e+00, %14 ], [ %25, %24 ]
  %.2275 = phi double [ 0.000000e+00, %14 ], [ %39, %24 ]
  %.0271 = phi i32 [ 1, %14 ], [ %40, %24 ]
  %22 = sub nsw i32 %15, 1
  %23 = icmp sle i32 %.0271, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %21
  %25 = fadd double %.0288, %19
  %26 = fmul double %25, %18
  %27 = load double, ptr @D1, align 8
  %28 = load double, ptr @D2, align 8
  %29 = load double, ptr @D3, align 8
  %30 = call double @llvm.fmuladd.f64(double %26, double %29, double %28)
  %31 = call double @llvm.fmuladd.f64(double %26, double %30, double %27)
  %32 = load double, ptr @D1, align 8
  %33 = load double, ptr @E2, align 8
  %34 = load double, ptr @E3, align 8
  %35 = call double @llvm.fmuladd.f64(double %26, double %34, double %33)
  %36 = call double @llvm.fmuladd.f64(double %26, double %35, double %32)
  %37 = call double @llvm.fmuladd.f64(double %26, double %36, double %19)
  %38 = fdiv double %31, %37
  %39 = fadd double %.2275, %38
  %40 = add nsw i32 %.0271, 1
  br label %21, !llvm.loop !7

41:                                               ; preds = %21
  %42 = call i32 @dtime(ptr noundef @TimeArray)
  %43 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %43, ptr @sa, align 8
  %44 = icmp eq i32 %15, 512000000
  br i1 %44, label %45, label %10, !llvm.loop !9

45:                                               ; preds = %41, %10
  %.1285 = phi double [ %.0284, %10 ], [ %18, %41 ]
  %.1274 = phi double [ %.0273, %10 ], [ %.2275, %41 ]
  %.1 = phi i32 [ %.0, %10 ], [ %15, %41 ]
  store double 1.589500e-02, ptr @scale, align 8
  %46 = load double, ptr @scale, align 8
  store double %46, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %47 = call i32 @dtime(ptr noundef @TimeArray)
  br label %48

48:                                               ; preds = %51, %45
  %.1272 = phi i32 [ 1, %45 ], [ %52, %51 ]
  %49 = sub nsw i32 %.1, 1
  %50 = icmp sle i32 %.1272, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = add nsw i32 %.1272, 1
  br label %48, !llvm.loop !10

53:                                               ; preds = %48
  %54 = call i32 @dtime(ptr noundef @TimeArray)
  %55 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %56 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %57 = fmul double %55, %56
  store double %57, ptr @nulltime, align 8
  %58 = load double, ptr @nulltime, align 8
  %59 = fcmp olt double %58, 0.000000e+00
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store double 0.000000e+00, ptr @nulltime, align 8
  br label %61

61:                                               ; preds = %60, %53
  %62 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %63 = load double, ptr @sa, align 8
  %64 = load double, ptr @nulltime, align 8
  %65 = fneg double %64
  %66 = call double @llvm.fmuladd.f64(double %62, double %63, double %65)
  store double %66, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %67 = load double, ptr @D1, align 8
  %68 = load double, ptr @D2, align 8
  %69 = fadd double %67, %68
  %70 = load double, ptr @D3, align 8
  %71 = fadd double %69, %70
  %72 = load double, ptr @one, align 8
  %73 = load double, ptr @D1, align 8
  %74 = fadd double %72, %73
  %75 = load double, ptr @E2, align 8
  %76 = fadd double %74, %75
  %77 = load double, ptr @E3, align 8
  %78 = fadd double %76, %77
  %79 = fdiv double %71, %78
  store double %79, ptr @sa, align 8
  %80 = load double, ptr @D1, align 8
  store double %80, ptr @sb, align 8
  %81 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %82 = fdiv double %81, 1.400000e+01
  store double %82, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %83 = load double, ptr @sa, align 8
  %84 = load double, ptr @sb, align 8
  %85 = fadd double %83, %84
  %86 = load double, ptr @two, align 8
  %87 = call double @llvm.fmuladd.f64(double %86, double %.1274, double %85)
  %88 = fmul double %.1285, %87
  %89 = load double, ptr @two, align 8
  %90 = fdiv double %88, %89
  store double %90, ptr @sa, align 8
  %91 = load double, ptr @one, align 8
  %92 = load double, ptr @sa, align 8
  %93 = fdiv double %91, %92
  store double %93, ptr @sb, align 8
  %94 = load double, ptr @sb, align 8
  %95 = fptosi double %94 to i32
  %96 = mul nsw i32 40000, %95
  %97 = sitofp i32 %96 to double
  %98 = load double, ptr @scale, align 8
  %99 = fdiv double %97, %98
  %100 = fptosi double %99 to i32
  %101 = load double, ptr @sb, align 8
  %102 = fsub double %101, 2.520000e+01
  store double %102, ptr @sc, align 8
  %103 = load double, ptr @one, align 8
  %104 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %105 = fdiv double %103, %104
  store double %105, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %106 = load double, ptr @sc, align 8
  %107 = fmul double %106, 1.000000e-30
  %108 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %109 = fmul double %108, 1.000000e-30
  %110 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %111 = fmul double %110, 1.000000e-30
  %112 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %107, double noundef %109, double noundef %111)
  %113 = load double, ptr @five, align 8
  %114 = fneg double %113
  %115 = load double, ptr @one, align 8
  %116 = fneg double %115
  store double %116, ptr @sa, align 8
  %117 = call i32 @dtime(ptr noundef @TimeArray)
  br label %118

118:                                              ; preds = %120, %61
  %.3276 = phi double [ %114, %61 ], [ %121, %120 ]
  %.2 = phi i32 [ 1, %61 ], [ %124, %120 ]
  %119 = icmp sle i32 %.2, %100
  br i1 %119, label %120, label %125

120:                                              ; preds = %118
  %121 = fneg double %.3276
  %122 = load double, ptr @sa, align 8
  %123 = fadd double %122, %121
  store double %123, ptr @sa, align 8
  %124 = add nsw i32 %.2, 1
  br label %118, !llvm.loop !11

125:                                              ; preds = %118
  %126 = call i32 @dtime(ptr noundef @TimeArray)
  %127 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %128 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %129 = fmul double %127, %128
  store double %129, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %130 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %131 = fcmp olt double %130, 0.000000e+00
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  br label %133

133:                                              ; preds = %132, %125
  %134 = sitofp i32 %100 to double
  store double %134, ptr @sc, align 8
  %135 = load double, ptr @sa, align 8
  %136 = call i32 @dtime(ptr noundef @TimeArray)
  br label %137

137:                                              ; preds = %139, %133
  %.1289 = phi double [ 0.000000e+00, %133 ], [ %148, %139 ]
  %.0287 = phi double [ 0.000000e+00, %133 ], [ %150, %139 ]
  %.2286 = phi double [ 0.000000e+00, %133 ], [ %146, %139 ]
  %.0283 = phi double [ %135, %133 ], [ %144, %139 ]
  %.4277 = phi double [ %.3276, %133 ], [ %140, %139 ]
  %.3 = phi i32 [ 1, %133 ], [ %151, %139 ]
  %138 = icmp sle i32 %.3, %100
  br i1 %138, label %139, label %152

139:                                              ; preds = %137
  %140 = fneg double %.4277
  %141 = load double, ptr @sa, align 8
  %142 = fadd double %141, %140
  store double %142, ptr @sa, align 8
  %143 = load double, ptr @two, align 8
  %144 = fadd double %.0283, %143
  %145 = fsub double %140, %144
  %146 = fadd double %.2286, %145
  %147 = fneg double %140
  %148 = call double @llvm.fmuladd.f64(double %147, double %144, double %.1289)
  %149 = fdiv double %140, %144
  %150 = fadd double %.0287, %149
  %151 = add nsw i32 %.3, 1
  br label %137, !llvm.loop !12

152:                                              ; preds = %137
  %153 = call i32 @dtime(ptr noundef @TimeArray)
  %154 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %155 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %156 = fmul double %154, %155
  store double %156, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %157 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %158 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %159 = fsub double %157, %158
  %160 = fdiv double %159, 7.000000e+00
  store double %160, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %161 = load double, ptr @sa, align 8
  %162 = fmul double %161, %.2286
  %163 = load double, ptr @sc, align 8
  %164 = fdiv double %162, %163
  %165 = fptosi double %164 to i32
  %166 = load double, ptr @four, align 8
  %167 = fmul double %166, %.0287
  %168 = load double, ptr @five, align 8
  %169 = fdiv double %167, %168
  store double %169, ptr @sa, align 8
  %170 = load double, ptr @sa, align 8
  %171 = load double, ptr @five, align 8
  %172 = fdiv double %171, %.1289
  %173 = fadd double %170, %172
  store double %173, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %174 = load double, ptr @sb, align 8
  %175 = load double, ptr @sc, align 8
  %176 = fmul double %.1289, %.1289
  %177 = fmul double %176, %.1289
  %178 = fdiv double %175, %177
  %179 = fsub double %174, %178
  store double %179, ptr @piprg, align 8
  %180 = load double, ptr @piprg, align 8
  %181 = load double, ptr @piref, align 8
  %182 = fsub double %180, %181
  store double %182, ptr @pierr, align 8
  %183 = load double, ptr @one, align 8
  %184 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %185 = fdiv double %183, %184
  store double %185, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %186 = load double, ptr @pierr, align 8
  %187 = fmul double %186, 1.000000e-30
  %188 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %189 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %190 = fsub double %188, %189
  %191 = fmul double %190, 1.000000e-30
  %192 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %193 = fmul double %192, 1.000000e-30
  %194 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %187, double noundef %191, double noundef %193)
  %195 = load double, ptr @piref, align 8
  %196 = load double, ptr @three, align 8
  %197 = sitofp i32 %165 to double
  %198 = fmul double %196, %197
  %199 = fdiv double %195, %198
  %200 = call i32 @dtime(ptr noundef @TimeArray)
  br label %201

201:                                              ; preds = %204, %152
  %.2290 = phi double [ 0.000000e+00, %152 ], [ %206, %204 ]
  %.5278 = phi double [ 0.000000e+00, %152 ], [ %224, %204 ]
  %.4 = phi i32 [ 1, %152 ], [ %225, %204 ]
  %202 = sub nsw i32 %165, 1
  %203 = icmp sle i32 %.4, %202
  br i1 %203, label %204, label %226

204:                                              ; preds = %201
  %205 = load double, ptr @one, align 8
  %206 = fadd double %.2290, %205
  %207 = fmul double %206, %199
  %208 = fmul double %207, %207
  %209 = load double, ptr @A6, align 8
  %210 = load double, ptr @A5, align 8
  %211 = fneg double %210
  %212 = call double @llvm.fmuladd.f64(double %209, double %208, double %211)
  %213 = load double, ptr @A4, align 8
  %214 = call double @llvm.fmuladd.f64(double %212, double %208, double %213)
  %215 = load double, ptr @A3, align 8
  %216 = fneg double %215
  %217 = call double @llvm.fmuladd.f64(double %214, double %208, double %216)
  %218 = load double, ptr @A2, align 8
  %219 = call double @llvm.fmuladd.f64(double %217, double %208, double %218)
  %220 = load double, ptr @A1, align 8
  %221 = call double @llvm.fmuladd.f64(double %219, double %208, double %220)
  %222 = load double, ptr @one, align 8
  %223 = call double @llvm.fmuladd.f64(double %221, double %208, double %222)
  %224 = call double @llvm.fmuladd.f64(double %207, double %223, double %.5278)
  %225 = add nsw i32 %.4, 1
  br label %201, !llvm.loop !13

226:                                              ; preds = %201
  %227 = call i32 @dtime(ptr noundef @TimeArray)
  %228 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %229 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %230 = load double, ptr @nulltime, align 8
  %231 = fneg double %230
  %232 = call double @llvm.fmuladd.f64(double %228, double %229, double %231)
  store double %232, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %233 = load double, ptr @piref, align 8
  %234 = load double, ptr @three, align 8
  %235 = fdiv double %233, %234
  %236 = fmul double %235, %235
  %237 = load double, ptr @A6, align 8
  %238 = load double, ptr @A5, align 8
  %239 = fneg double %238
  %240 = call double @llvm.fmuladd.f64(double %237, double %236, double %239)
  %241 = load double, ptr @A4, align 8
  %242 = call double @llvm.fmuladd.f64(double %240, double %236, double %241)
  %243 = load double, ptr @A3, align 8
  %244 = fneg double %243
  %245 = call double @llvm.fmuladd.f64(double %242, double %236, double %244)
  %246 = load double, ptr @A2, align 8
  %247 = call double @llvm.fmuladd.f64(double %245, double %236, double %246)
  %248 = load double, ptr @A1, align 8
  %249 = call double @llvm.fmuladd.f64(double %247, double %236, double %248)
  %250 = load double, ptr @one, align 8
  %251 = call double @llvm.fmuladd.f64(double %249, double %236, double %250)
  %252 = fmul double %235, %251
  store double %252, ptr @sa, align 8
  %253 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %254 = fdiv double %253, 1.700000e+01
  store double %254, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %255 = load double, ptr @sa, align 8
  %256 = load double, ptr @two, align 8
  %257 = call double @llvm.fmuladd.f64(double %256, double %.5278, double %255)
  %258 = fmul double %199, %257
  %259 = load double, ptr @two, align 8
  %260 = fdiv double %258, %259
  store double %260, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %261 = load double, ptr @sa, align 8
  %262 = load double, ptr @sb, align 8
  %263 = fsub double %261, %262
  store double %263, ptr @sc, align 8
  %264 = load double, ptr @one, align 8
  %265 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %266 = fdiv double %264, %265
  store double %266, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %267 = load double, ptr @sc, align 8
  %268 = fmul double %267, 1.000000e-30
  %269 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %270 = fmul double %269, 1.000000e-30
  %271 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %272 = fmul double %271, 1.000000e-30
  %273 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %268, double noundef %270, double noundef %272)
  %274 = load double, ptr @A3, align 8
  %275 = fneg double %274
  store double %275, ptr @A3, align 8
  %276 = load double, ptr @A5, align 8
  %277 = fneg double %276
  store double %277, ptr @A5, align 8
  %278 = load double, ptr @piref, align 8
  %279 = load double, ptr @three, align 8
  %280 = sitofp i32 %165 to double
  %281 = fmul double %279, %280
  %282 = fdiv double %278, %281
  %283 = call i32 @dtime(ptr noundef @TimeArray)
  br label %284

284:                                              ; preds = %287, %226
  %.6279 = phi double [ 0.000000e+00, %226 ], [ %304, %287 ]
  %.5 = phi i32 [ 1, %226 ], [ %305, %287 ]
  %285 = sub nsw i32 %165, 1
  %286 = icmp sle i32 %.5, %285
  br i1 %286, label %287, label %306

287:                                              ; preds = %284
  %288 = sitofp i32 %.5 to double
  %289 = fmul double %288, %282
  %290 = fmul double %289, %289
  %291 = load double, ptr @B6, align 8
  %292 = load double, ptr @B5, align 8
  %293 = call double @llvm.fmuladd.f64(double %291, double %290, double %292)
  %294 = load double, ptr @B4, align 8
  %295 = call double @llvm.fmuladd.f64(double %290, double %293, double %294)
  %296 = load double, ptr @B3, align 8
  %297 = call double @llvm.fmuladd.f64(double %290, double %295, double %296)
  %298 = load double, ptr @B2, align 8
  %299 = call double @llvm.fmuladd.f64(double %290, double %297, double %298)
  %300 = load double, ptr @B1, align 8
  %301 = call double @llvm.fmuladd.f64(double %290, double %299, double %300)
  %302 = call double @llvm.fmuladd.f64(double %290, double %301, double %.6279)
  %303 = load double, ptr @one, align 8
  %304 = fadd double %302, %303
  %305 = add nsw i32 %.5, 1
  br label %284, !llvm.loop !14

306:                                              ; preds = %284
  %307 = call i32 @dtime(ptr noundef @TimeArray)
  %308 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %309 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %310 = load double, ptr @nulltime, align 8
  %311 = fneg double %310
  %312 = call double @llvm.fmuladd.f64(double %308, double %309, double %311)
  store double %312, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %313 = load double, ptr @piref, align 8
  %314 = load double, ptr @three, align 8
  %315 = fdiv double %313, %314
  %316 = fmul double %315, %315
  %317 = load double, ptr @B6, align 8
  %318 = load double, ptr @B5, align 8
  %319 = call double @llvm.fmuladd.f64(double %317, double %316, double %318)
  %320 = load double, ptr @B4, align 8
  %321 = call double @llvm.fmuladd.f64(double %316, double %319, double %320)
  %322 = load double, ptr @B3, align 8
  %323 = call double @llvm.fmuladd.f64(double %316, double %321, double %322)
  %324 = load double, ptr @B2, align 8
  %325 = call double @llvm.fmuladd.f64(double %316, double %323, double %324)
  %326 = load double, ptr @B1, align 8
  %327 = call double @llvm.fmuladd.f64(double %316, double %325, double %326)
  %328 = load double, ptr @one, align 8
  %329 = call double @llvm.fmuladd.f64(double %316, double %327, double %328)
  store double %329, ptr @sa, align 8
  %330 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %331 = fdiv double %330, 1.500000e+01
  store double %331, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %332 = load double, ptr @sa, align 8
  %333 = load double, ptr @one, align 8
  %334 = fadd double %332, %333
  %335 = load double, ptr @two, align 8
  %336 = call double @llvm.fmuladd.f64(double %335, double %.6279, double %334)
  %337 = fmul double %282, %336
  %338 = load double, ptr @two, align 8
  %339 = fdiv double %337, %338
  store double %339, ptr @sa, align 8
  %340 = load double, ptr @piref, align 8
  %341 = load double, ptr @three, align 8
  %342 = fdiv double %340, %341
  %343 = fmul double %342, %342
  %344 = load double, ptr @A6, align 8
  %345 = load double, ptr @A5, align 8
  %346 = call double @llvm.fmuladd.f64(double %344, double %343, double %345)
  %347 = load double, ptr @A4, align 8
  %348 = call double @llvm.fmuladd.f64(double %346, double %343, double %347)
  %349 = load double, ptr @A3, align 8
  %350 = call double @llvm.fmuladd.f64(double %348, double %343, double %349)
  %351 = load double, ptr @A2, align 8
  %352 = call double @llvm.fmuladd.f64(double %350, double %343, double %351)
  %353 = load double, ptr @A1, align 8
  %354 = call double @llvm.fmuladd.f64(double %352, double %343, double %353)
  %355 = load double, ptr @A0, align 8
  %356 = call double @llvm.fmuladd.f64(double %354, double %343, double %355)
  %357 = fmul double %342, %356
  store double %357, ptr @sb, align 8
  %358 = load double, ptr @sa, align 8
  %359 = load double, ptr @sb, align 8
  %360 = fsub double %358, %359
  store double %360, ptr @sc, align 8
  %361 = load double, ptr @one, align 8
  %362 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %363 = fdiv double %361, %362
  store double %363, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %364 = load double, ptr @sc, align 8
  %365 = fmul double %364, 1.000000e-30
  %366 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %367 = fmul double %366, 1.000000e-30
  %368 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %369 = fmul double %368, 1.000000e-30
  %370 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %365, double noundef %367, double noundef %369)
  %371 = load double, ptr @piref, align 8
  %372 = load double, ptr @three, align 8
  %373 = sitofp i32 %165 to double
  %374 = fmul double %372, %373
  %375 = fdiv double %371, %374
  %376 = call i32 @dtime(ptr noundef @TimeArray)
  br label %377

377:                                              ; preds = %380, %306
  %.7280 = phi double [ 0.000000e+00, %306 ], [ %412, %380 ]
  %.6 = phi i32 [ 1, %306 ], [ %413, %380 ]
  %378 = sub nsw i32 %165, 1
  %379 = icmp sle i32 %.6, %378
  br i1 %379, label %380, label %414

380:                                              ; preds = %377
  %381 = sitofp i32 %.6 to double
  %382 = fmul double %381, %375
  %383 = fmul double %382, %382
  %384 = load double, ptr @A6, align 8
  %385 = load double, ptr @A5, align 8
  %386 = call double @llvm.fmuladd.f64(double %384, double %383, double %385)
  %387 = load double, ptr @A4, align 8
  %388 = call double @llvm.fmuladd.f64(double %386, double %383, double %387)
  %389 = load double, ptr @A3, align 8
  %390 = call double @llvm.fmuladd.f64(double %388, double %383, double %389)
  %391 = load double, ptr @A2, align 8
  %392 = call double @llvm.fmuladd.f64(double %390, double %383, double %391)
  %393 = load double, ptr @A1, align 8
  %394 = call double @llvm.fmuladd.f64(double %392, double %383, double %393)
  %395 = load double, ptr @one, align 8
  %396 = call double @llvm.fmuladd.f64(double %394, double %383, double %395)
  %397 = fmul double %382, %396
  %398 = load double, ptr @B6, align 8
  %399 = load double, ptr @B5, align 8
  %400 = call double @llvm.fmuladd.f64(double %398, double %383, double %399)
  %401 = load double, ptr @B4, align 8
  %402 = call double @llvm.fmuladd.f64(double %383, double %400, double %401)
  %403 = load double, ptr @B3, align 8
  %404 = call double @llvm.fmuladd.f64(double %383, double %402, double %403)
  %405 = load double, ptr @B2, align 8
  %406 = call double @llvm.fmuladd.f64(double %383, double %404, double %405)
  %407 = load double, ptr @B1, align 8
  %408 = call double @llvm.fmuladd.f64(double %383, double %406, double %407)
  %409 = load double, ptr @one, align 8
  %410 = call double @llvm.fmuladd.f64(double %383, double %408, double %409)
  %411 = fdiv double %397, %410
  %412 = fadd double %.7280, %411
  %413 = add nsw i32 %.6, 1
  br label %377, !llvm.loop !15

414:                                              ; preds = %377
  %415 = call i32 @dtime(ptr noundef @TimeArray)
  %416 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %417 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %418 = load double, ptr @nulltime, align 8
  %419 = fneg double %418
  %420 = call double @llvm.fmuladd.f64(double %416, double %417, double %419)
  store double %420, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %421 = load double, ptr @piref, align 8
  %422 = load double, ptr @three, align 8
  %423 = fdiv double %421, %422
  %424 = fmul double %423, %423
  %425 = load double, ptr @A6, align 8
  %426 = load double, ptr @A5, align 8
  %427 = call double @llvm.fmuladd.f64(double %425, double %424, double %426)
  %428 = load double, ptr @A4, align 8
  %429 = call double @llvm.fmuladd.f64(double %427, double %424, double %428)
  %430 = load double, ptr @A3, align 8
  %431 = call double @llvm.fmuladd.f64(double %429, double %424, double %430)
  %432 = load double, ptr @A2, align 8
  %433 = call double @llvm.fmuladd.f64(double %431, double %424, double %432)
  %434 = load double, ptr @A1, align 8
  %435 = call double @llvm.fmuladd.f64(double %433, double %424, double %434)
  %436 = load double, ptr @one, align 8
  %437 = call double @llvm.fmuladd.f64(double %435, double %424, double %436)
  %438 = fmul double %423, %437
  store double %438, ptr @sa, align 8
  %439 = load double, ptr @B6, align 8
  %440 = load double, ptr @B5, align 8
  %441 = call double @llvm.fmuladd.f64(double %439, double %424, double %440)
  %442 = load double, ptr @B4, align 8
  %443 = call double @llvm.fmuladd.f64(double %424, double %441, double %442)
  %444 = load double, ptr @B3, align 8
  %445 = call double @llvm.fmuladd.f64(double %424, double %443, double %444)
  %446 = load double, ptr @B2, align 8
  %447 = call double @llvm.fmuladd.f64(double %424, double %445, double %446)
  %448 = load double, ptr @B1, align 8
  %449 = call double @llvm.fmuladd.f64(double %424, double %447, double %448)
  %450 = load double, ptr @one, align 8
  %451 = call double @llvm.fmuladd.f64(double %424, double %449, double %450)
  store double %451, ptr @sb, align 8
  %452 = load double, ptr @sa, align 8
  %453 = load double, ptr @sb, align 8
  %454 = fdiv double %452, %453
  store double %454, ptr @sa, align 8
  %455 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %456 = fdiv double %455, 2.900000e+01
  store double %456, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %457 = load double, ptr @sa, align 8
  %458 = load double, ptr @two, align 8
  %459 = call double @llvm.fmuladd.f64(double %458, double %.7280, double %457)
  %460 = fmul double %375, %459
  %461 = load double, ptr @two, align 8
  %462 = fdiv double %460, %461
  store double %462, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %463 = load double, ptr @sa, align 8
  %464 = load double, ptr @sb, align 8
  %465 = fsub double %463, %464
  store double %465, ptr @sc, align 8
  %466 = load double, ptr @one, align 8
  %467 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %468 = fdiv double %466, %467
  store double %468, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %469 = load double, ptr @sc, align 8
  %470 = fmul double %469, 1.000000e-30
  %471 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %472 = fmul double %471, 1.000000e-30
  %473 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %474 = fmul double %473, 1.000000e-30
  %475 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %470, double noundef %472, double noundef %474)
  %476 = load double, ptr @piref, align 8
  %477 = load double, ptr @four, align 8
  %478 = sitofp i32 %165 to double
  %479 = fmul double %477, %478
  %480 = fdiv double %476, %479
  %481 = call i32 @dtime(ptr noundef @TimeArray)
  br label %482

482:                                              ; preds = %485, %414
  %.8281 = phi double [ 0.000000e+00, %414 ], [ %516, %485 ]
  %.7 = phi i32 [ 1, %414 ], [ %517, %485 ]
  %483 = sub nsw i32 %165, 1
  %484 = icmp sle i32 %.7, %483
  br i1 %484, label %485, label %518

485:                                              ; preds = %482
  %486 = sitofp i32 %.7 to double
  %487 = fmul double %486, %480
  %488 = fmul double %487, %487
  %489 = load double, ptr @A6, align 8
  %490 = load double, ptr @A5, align 8
  %491 = call double @llvm.fmuladd.f64(double %489, double %488, double %490)
  %492 = load double, ptr @A4, align 8
  %493 = call double @llvm.fmuladd.f64(double %491, double %488, double %492)
  %494 = load double, ptr @A3, align 8
  %495 = call double @llvm.fmuladd.f64(double %493, double %488, double %494)
  %496 = load double, ptr @A2, align 8
  %497 = call double @llvm.fmuladd.f64(double %495, double %488, double %496)
  %498 = load double, ptr @A1, align 8
  %499 = call double @llvm.fmuladd.f64(double %497, double %488, double %498)
  %500 = load double, ptr @one, align 8
  %501 = call double @llvm.fmuladd.f64(double %499, double %488, double %500)
  %502 = fmul double %487, %501
  %503 = load double, ptr @B6, align 8
  %504 = load double, ptr @B5, align 8
  %505 = call double @llvm.fmuladd.f64(double %503, double %488, double %504)
  %506 = load double, ptr @B4, align 8
  %507 = call double @llvm.fmuladd.f64(double %488, double %505, double %506)
  %508 = load double, ptr @B3, align 8
  %509 = call double @llvm.fmuladd.f64(double %488, double %507, double %508)
  %510 = load double, ptr @B2, align 8
  %511 = call double @llvm.fmuladd.f64(double %488, double %509, double %510)
  %512 = load double, ptr @B1, align 8
  %513 = call double @llvm.fmuladd.f64(double %488, double %511, double %512)
  %514 = load double, ptr @one, align 8
  %515 = call double @llvm.fmuladd.f64(double %488, double %513, double %514)
  %516 = call double @llvm.fmuladd.f64(double %502, double %515, double %.8281)
  %517 = add nsw i32 %.7, 1
  br label %482, !llvm.loop !16

518:                                              ; preds = %482
  %519 = call i32 @dtime(ptr noundef @TimeArray)
  %520 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %521 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %522 = load double, ptr @nulltime, align 8
  %523 = fneg double %522
  %524 = call double @llvm.fmuladd.f64(double %520, double %521, double %523)
  store double %524, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %525 = load double, ptr @piref, align 8
  %526 = load double, ptr @four, align 8
  %527 = fdiv double %525, %526
  %528 = fmul double %527, %527
  %529 = load double, ptr @A6, align 8
  %530 = load double, ptr @A5, align 8
  %531 = call double @llvm.fmuladd.f64(double %529, double %528, double %530)
  %532 = load double, ptr @A4, align 8
  %533 = call double @llvm.fmuladd.f64(double %531, double %528, double %532)
  %534 = load double, ptr @A3, align 8
  %535 = call double @llvm.fmuladd.f64(double %533, double %528, double %534)
  %536 = load double, ptr @A2, align 8
  %537 = call double @llvm.fmuladd.f64(double %535, double %528, double %536)
  %538 = load double, ptr @A1, align 8
  %539 = call double @llvm.fmuladd.f64(double %537, double %528, double %538)
  %540 = load double, ptr @one, align 8
  %541 = call double @llvm.fmuladd.f64(double %539, double %528, double %540)
  %542 = fmul double %527, %541
  store double %542, ptr @sa, align 8
  %543 = load double, ptr @B6, align 8
  %544 = load double, ptr @B5, align 8
  %545 = call double @llvm.fmuladd.f64(double %543, double %528, double %544)
  %546 = load double, ptr @B4, align 8
  %547 = call double @llvm.fmuladd.f64(double %528, double %545, double %546)
  %548 = load double, ptr @B3, align 8
  %549 = call double @llvm.fmuladd.f64(double %528, double %547, double %548)
  %550 = load double, ptr @B2, align 8
  %551 = call double @llvm.fmuladd.f64(double %528, double %549, double %550)
  %552 = load double, ptr @B1, align 8
  %553 = call double @llvm.fmuladd.f64(double %528, double %551, double %552)
  %554 = load double, ptr @one, align 8
  %555 = call double @llvm.fmuladd.f64(double %528, double %553, double %554)
  store double %555, ptr @sb, align 8
  %556 = load double, ptr @sa, align 8
  %557 = load double, ptr @sb, align 8
  %558 = fmul double %556, %557
  store double %558, ptr @sa, align 8
  %559 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %560 = fdiv double %559, 2.900000e+01
  store double %560, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %561 = load double, ptr @sa, align 8
  %562 = load double, ptr @two, align 8
  %563 = call double @llvm.fmuladd.f64(double %562, double %.8281, double %561)
  %564 = fmul double %480, %563
  %565 = load double, ptr @two, align 8
  %566 = fdiv double %564, %565
  store double %566, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %567 = load double, ptr @sa, align 8
  %568 = load double, ptr @sb, align 8
  %569 = fsub double %567, %568
  store double %569, ptr @sc, align 8
  %570 = load double, ptr @one, align 8
  %571 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %572 = fdiv double %570, %571
  store double %572, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %573 = load double, ptr @sc, align 8
  %574 = fmul double %573, 1.000000e-30
  %575 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %576 = fmul double %575, 1.000000e-30
  %577 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %578 = fmul double %577, 1.000000e-30
  %579 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, double noundef %574, double noundef %576, double noundef %578)
  %580 = load double, ptr @one, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %581 = load double, ptr @sa, align 8
  %582 = sitofp i32 %165 to double
  %583 = fdiv double %581, %582
  %584 = call i32 @dtime(ptr noundef @TimeArray)
  br label %585

585:                                              ; preds = %588, %518
  %.9282 = phi double [ 0.000000e+00, %518 ], [ %600, %588 ]
  %.8 = phi i32 [ 1, %518 ], [ %601, %588 ]
  %586 = sub nsw i32 %165, 1
  %587 = icmp sle i32 %.8, %586
  br i1 %587, label %588, label %602

588:                                              ; preds = %585
  %589 = sitofp i32 %.8 to double
  %590 = fmul double %589, %583
  %591 = fmul double %590, %590
  %592 = fadd double %590, %580
  %593 = fdiv double %580, %592
  %594 = fsub double %.9282, %593
  %595 = fadd double %591, %580
  %596 = fdiv double %590, %595
  %597 = fsub double %594, %596
  %598 = call double @llvm.fmuladd.f64(double %590, double %591, double %580)
  %599 = fdiv double %591, %598
  %600 = fsub double %597, %599
  %601 = add nsw i32 %.8, 1
  br label %585, !llvm.loop !17

602:                                              ; preds = %585
  %603 = call i32 @dtime(ptr noundef @TimeArray)
  %604 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %605 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %606 = load double, ptr @nulltime, align 8
  %607 = fneg double %606
  %608 = call double @llvm.fmuladd.f64(double %604, double %605, double %607)
  store double %608, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %609 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %610 = fdiv double %609, 1.200000e+01
  store double %610, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %611 = load double, ptr @sa, align 8
  %612 = fmul double %611, %611
  %613 = fneg double %580
  %614 = fadd double %611, %580
  %615 = fdiv double %580, %614
  %616 = fsub double %613, %615
  %617 = fadd double %612, %580
  %618 = fdiv double %611, %617
  %619 = fsub double %616, %618
  %620 = call double @llvm.fmuladd.f64(double %611, double %612, double %580)
  %621 = fdiv double %612, %620
  %622 = fsub double %619, %621
  store double %622, ptr @sa, align 8
  %623 = fmul double 1.800000e+01, %583
  %624 = load double, ptr @sa, align 8
  %625 = load double, ptr @two, align 8
  %626 = call double @llvm.fmuladd.f64(double %625, double %.9282, double %624)
  %627 = fmul double %623, %626
  store double %627, ptr @sa, align 8
  %628 = load double, ptr @sa, align 8
  %629 = fptosi double %628 to i32
  %630 = mul nsw i32 -2000, %629
  %631 = sitofp i32 %630 to double
  %632 = load double, ptr @scale, align 8
  %633 = fdiv double %631, %632
  %634 = fptosi double %633 to i32
  %635 = load double, ptr @sa, align 8
  %636 = fadd double %635, 5.002000e+02
  store double %636, ptr @sc, align 8
  %637 = load double, ptr @one, align 8
  %638 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %639 = fdiv double %637, %638
  store double %639, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %640 = load double, ptr @sc, align 8
  %641 = fmul double %640, 1.000000e-30
  %642 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %643 = fmul double %642, 1.000000e-30
  %644 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %645 = fmul double %644, 1.000000e-30
  %646 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, double noundef %641, double noundef %643, double noundef %645)
  %647 = load double, ptr @piref, align 8
  %648 = load double, ptr @three, align 8
  %649 = sitofp i32 %634 to double
  %650 = fmul double %648, %649
  %651 = fdiv double %647, %650
  %652 = call i32 @dtime(ptr noundef @TimeArray)
  br label %653

653:                                              ; preds = %656, %602
  %.10 = phi double [ 0.000000e+00, %602 ], [ %688, %656 ]
  %.9 = phi i32 [ 1, %602 ], [ %689, %656 ]
  %654 = sub nsw i32 %634, 1
  %655 = icmp sle i32 %.9, %654
  br i1 %655, label %656, label %690

656:                                              ; preds = %653
  %657 = sitofp i32 %.9 to double
  %658 = fmul double %657, %651
  %659 = fmul double %658, %658
  %660 = load double, ptr @B6, align 8
  %661 = load double, ptr @B5, align 8
  %662 = call double @llvm.fmuladd.f64(double %660, double %659, double %661)
  %663 = load double, ptr @B4, align 8
  %664 = call double @llvm.fmuladd.f64(double %659, double %662, double %663)
  %665 = load double, ptr @B3, align 8
  %666 = call double @llvm.fmuladd.f64(double %659, double %664, double %665)
  %667 = load double, ptr @B2, align 8
  %668 = call double @llvm.fmuladd.f64(double %659, double %666, double %667)
  %669 = load double, ptr @B1, align 8
  %670 = call double @llvm.fmuladd.f64(double %659, double %668, double %669)
  %671 = load double, ptr @one, align 8
  %672 = call double @llvm.fmuladd.f64(double %659, double %670, double %671)
  %673 = fmul double %672, %672
  %674 = fmul double %673, %658
  %675 = load double, ptr @A6, align 8
  %676 = load double, ptr @A5, align 8
  %677 = call double @llvm.fmuladd.f64(double %675, double %659, double %676)
  %678 = load double, ptr @A4, align 8
  %679 = call double @llvm.fmuladd.f64(double %677, double %659, double %678)
  %680 = load double, ptr @A3, align 8
  %681 = call double @llvm.fmuladd.f64(double %679, double %659, double %680)
  %682 = load double, ptr @A2, align 8
  %683 = call double @llvm.fmuladd.f64(double %681, double %659, double %682)
  %684 = load double, ptr @A1, align 8
  %685 = call double @llvm.fmuladd.f64(double %683, double %659, double %684)
  %686 = load double, ptr @one, align 8
  %687 = call double @llvm.fmuladd.f64(double %685, double %659, double %686)
  %688 = call double @llvm.fmuladd.f64(double %674, double %687, double %.10)
  %689 = add nsw i32 %.9, 1
  br label %653, !llvm.loop !18

690:                                              ; preds = %653
  %691 = call i32 @dtime(ptr noundef @TimeArray)
  %692 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %693 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %694 = load double, ptr @nulltime, align 8
  %695 = fneg double %694
  %696 = call double @llvm.fmuladd.f64(double %692, double %693, double %695)
  store double %696, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %697 = load double, ptr @piref, align 8
  %698 = load double, ptr @three, align 8
  %699 = fdiv double %697, %698
  %700 = fmul double %699, %699
  %701 = load double, ptr @A6, align 8
  %702 = load double, ptr @A5, align 8
  %703 = call double @llvm.fmuladd.f64(double %701, double %700, double %702)
  %704 = load double, ptr @A4, align 8
  %705 = call double @llvm.fmuladd.f64(double %703, double %700, double %704)
  %706 = load double, ptr @A3, align 8
  %707 = call double @llvm.fmuladd.f64(double %705, double %700, double %706)
  %708 = load double, ptr @A2, align 8
  %709 = call double @llvm.fmuladd.f64(double %707, double %700, double %708)
  %710 = load double, ptr @A1, align 8
  %711 = call double @llvm.fmuladd.f64(double %709, double %700, double %710)
  %712 = load double, ptr @one, align 8
  %713 = call double @llvm.fmuladd.f64(double %711, double %700, double %712)
  %714 = fmul double %699, %713
  store double %714, ptr @sa, align 8
  %715 = load double, ptr @B6, align 8
  %716 = load double, ptr @B5, align 8
  %717 = call double @llvm.fmuladd.f64(double %715, double %700, double %716)
  %718 = load double, ptr @B4, align 8
  %719 = call double @llvm.fmuladd.f64(double %700, double %717, double %718)
  %720 = load double, ptr @B3, align 8
  %721 = call double @llvm.fmuladd.f64(double %700, double %719, double %720)
  %722 = load double, ptr @B2, align 8
  %723 = call double @llvm.fmuladd.f64(double %700, double %721, double %722)
  %724 = load double, ptr @B1, align 8
  %725 = call double @llvm.fmuladd.f64(double %700, double %723, double %724)
  %726 = load double, ptr @one, align 8
  %727 = call double @llvm.fmuladd.f64(double %700, double %725, double %726)
  store double %727, ptr @sb, align 8
  %728 = load double, ptr @sa, align 8
  %729 = load double, ptr @sb, align 8
  %730 = fmul double %728, %729
  %731 = load double, ptr @sb, align 8
  %732 = fmul double %730, %731
  store double %732, ptr @sa, align 8
  %733 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %734 = fdiv double %733, 3.000000e+01
  store double %734, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %735 = load double, ptr @sa, align 8
  %736 = load double, ptr @two, align 8
  %737 = call double @llvm.fmuladd.f64(double %736, double %.10, double %735)
  %738 = fmul double %651, %737
  %739 = load double, ptr @two, align 8
  %740 = fdiv double %738, %739
  store double %740, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %741 = load double, ptr @sa, align 8
  %742 = load double, ptr @sb, align 8
  %743 = fsub double %741, %742
  store double %743, ptr @sc, align 8
  %744 = load double, ptr @one, align 8
  %745 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %746 = fdiv double %744, %745
  store double %746, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %747 = load double, ptr @sc, align 8
  %748 = fmul double %747, 1.000000e-30
  %749 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %750 = fmul double %749, 1.000000e-30
  %751 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %752 = fmul double %751, 1.000000e-30
  %753 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, double noundef %748, double noundef %750, double noundef %752)
  %754 = load double, ptr @five, align 8
  %755 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %756 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %757 = fsub double %755, %756
  %758 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %759 = call double @llvm.fmuladd.f64(double %754, double %757, double %758)
  %760 = fdiv double %759, 5.200000e+01
  store double %760, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %761 = load double, ptr @one, align 8
  %762 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %763 = fdiv double %761, %762
  store double %763, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %764 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %765 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %766 = fadd double %764, %765
  %767 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %768 = fadd double %766, %767
  %769 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %770 = fadd double %768, %769
  %771 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %772 = fadd double %770, %771
  store double %772, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %773 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %774 = load double, ptr @four, align 8
  %775 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %776 = call double @llvm.fmuladd.f64(double %774, double %775, double %773)
  %777 = fdiv double %776, 1.520000e+02
  store double %777, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %778 = load double, ptr @one, align 8
  %779 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %780 = fdiv double %778, %779
  store double %780, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %781 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %782 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %783 = fadd double %781, %782
  %784 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %785 = fadd double %783, %784
  %786 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %787 = fadd double %785, %786
  %788 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %789 = fadd double %787, %788
  store double %789, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %790 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %791 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %792 = fadd double %790, %791
  %793 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %794 = fadd double %792, %793
  %795 = fdiv double %794, 1.460000e+02
  store double %795, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %796 = load double, ptr @one, align 8
  %797 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %798 = fdiv double %796, %797
  store double %798, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %799 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %800 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %801 = fadd double %799, %800
  %802 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %803 = fadd double %801, %802
  %804 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %805 = fadd double %803, %804
  %806 = fdiv double %805, 9.100000e+01
  store double %806, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %807 = load double, ptr @one, align 8
  %808 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %809 = fdiv double %807, %808
  store double %809, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %810 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %811 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %634)
  %812 = load double, ptr @nulltime, align 8
  %813 = fmul double %812, 1.000000e-30
  %814 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, double noundef %813)
  %815 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %816 = fmul double %815, 1.000000e-30
  %817 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, double noundef %816)
  %818 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %819 = fmul double %818, 1.000000e-30
  %820 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, double noundef %819)
  %821 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %822 = fmul double %821, 1.000000e-30
  %823 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, double noundef %822)
  %824 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %825 = fmul double %824, 1.000000e-30
  %826 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, double noundef %825)
  ret i32 0
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dtime(ptr noundef %0) #0 {
  %2 = getelementptr inbounds double, ptr %0, i64 2
  %3 = load double, ptr %2, align 8
  %4 = call i32 @GetTickCount()
  %5 = uitofp i32 %4 to double
  %6 = fmul double %5, 1.000000e-03
  %7 = getelementptr inbounds double, ptr %0, i64 2
  store double %6, ptr %7, align 8
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8
  %10 = fsub double %9, %3
  %11 = getelementptr inbounds double, ptr %0, i64 1
  store double %10, ptr %11, align 8
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
