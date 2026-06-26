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
  store double 6.400000e+01, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  store double 1.000000e+00, ptr @TLimit, align 8
  store double f0x400921FB54442D18, ptr @piref, align 8
  store double 1.000000e+00, ptr @one, align 8
  store double 2.000000e+00, ptr @two, align 8
  store double 3.000000e+00, ptr @three, align 8
  store double 4.000000e+00, ptr @four, align 8
  store double 5.000000e+00, ptr @five, align 8
  store double 1.000000e+00, ptr @scale, align 8
  %3 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %4 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %5 = call i32 @dtime(ptr noundef @TimeArray)
  %6 = call i32 @dtime(ptr noundef @TimeArray)
  store double 0.000000e+00, ptr @sa, align 8
  br label %7

7:                                                ; preds = %47, %0
  %8 = phi double [ %22, %47 ], [ undef, %0 ]
  %9 = phi double [ %18, %47 ], [ undef, %0 ]
  %10 = phi i32 [ %15, %47 ], [ 15625, %0 ]
  %11 = phi double [ %44, %47 ], [ 0.000000e+00, %0 ]
  %12 = load double, ptr @TLimit, align 8
  %13 = fcmp olt double %11, %12
  br i1 %13, label %14, label %48

14:                                               ; preds = %7
  %15 = mul nsw i32 2, %10
  %16 = load double, ptr @one, align 8
  %17 = sitofp i32 %15 to double
  %18 = fdiv double %16, %17
  %19 = call i32 @dtime(ptr noundef @TimeArray)
  br label %20

20:                                               ; preds = %26, %14
  %21 = phi double [ %27, %26 ], [ 0.000000e+00, %14 ]
  %22 = phi double [ %40, %26 ], [ 0.000000e+00, %14 ]
  %23 = phi i32 [ %41, %26 ], [ 1, %14 ]
  %24 = sub nsw i32 %15, 1
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %20
  %27 = fadd double %21, %16
  %28 = fmul double %27, %18
  %29 = load double, ptr @D1, align 8
  %30 = load double, ptr @D2, align 8
  %31 = load double, ptr @D3, align 8
  %32 = call double @llvm.fmuladd.f64(double %28, double %31, double %30)
  %33 = call double @llvm.fmuladd.f64(double %28, double %32, double %29)
  %34 = load double, ptr @E2, align 8
  %35 = load double, ptr @E3, align 8
  %36 = call double @llvm.fmuladd.f64(double %28, double %35, double %34)
  %37 = call double @llvm.fmuladd.f64(double %28, double %36, double %29)
  %38 = call double @llvm.fmuladd.f64(double %28, double %37, double %16)
  %39 = fdiv double %33, %38
  %40 = fadd double %22, %39
  %41 = add nsw i32 %23, 1
  br label %20, !llvm.loop !7

42:                                               ; preds = %20
  %43 = call i32 @dtime(ptr noundef @TimeArray)
  %44 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %44, ptr @sa, align 8
  %45 = icmp eq i32 %15, 512000000
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %48

47:                                               ; preds = %42
  br label %7, !llvm.loop !9

48:                                               ; preds = %46, %7
  %49 = phi double [ %22, %46 ], [ %8, %7 ]
  %50 = phi double [ %18, %46 ], [ %9, %7 ]
  %51 = phi i32 [ 512000000, %46 ], [ %10, %7 ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %52 = call i32 @dtime(ptr noundef @TimeArray)
  br label %53

53:                                               ; preds = %57, %48
  %54 = phi i32 [ %58, %57 ], [ 1, %48 ]
  %55 = sub nsw i32 %51, 1
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = add nsw i32 %54, 1
  br label %53, !llvm.loop !10

59:                                               ; preds = %53
  %60 = call i32 @dtime(ptr noundef @TimeArray)
  %61 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %62 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %63 = fmul double %61, %62
  store double %63, ptr @nulltime, align 8
  %64 = fcmp olt double %63, 0.000000e+00
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store double 0.000000e+00, ptr @nulltime, align 8
  br label %66

66:                                               ; preds = %65, %59
  %67 = phi double [ 0.000000e+00, %65 ], [ %63, %59 ]
  %68 = load double, ptr @sa, align 8
  %69 = fneg double %67
  %70 = call double @llvm.fmuladd.f64(double %61, double %68, double %69)
  store double %70, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %71 = load double, ptr @D1, align 8
  %72 = load double, ptr @D2, align 8
  %73 = fadd double %71, %72
  %74 = load double, ptr @D3, align 8
  %75 = fadd double %73, %74
  %76 = load double, ptr @one, align 8
  %77 = fadd double %76, %71
  %78 = load double, ptr @E2, align 8
  %79 = fadd double %77, %78
  %80 = load double, ptr @E3, align 8
  %81 = fadd double %79, %80
  %82 = fdiv double %75, %81
  store double %82, ptr @sa, align 8
  store double %71, ptr @sb, align 8
  %83 = fdiv double %70, 1.400000e+01
  store double %83, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %84 = fadd double %82, %71
  %85 = load double, ptr @two, align 8
  %86 = call double @llvm.fmuladd.f64(double %85, double %49, double %84)
  %87 = fmul double %50, %86
  %88 = fdiv double %87, %85
  store double %88, ptr @sa, align 8
  %89 = fdiv double %76, %88
  store double %89, ptr @sb, align 8
  %90 = fptosi double %89 to i32
  %91 = mul nsw i32 40000, %90
  %92 = sitofp i32 %91 to double
  %93 = load double, ptr @scale, align 8
  %94 = fdiv double %92, %93
  %95 = fptosi double %94 to i32
  %96 = fsub double %89, 2.520000e+01
  store double %96, ptr @sc, align 8
  %97 = fdiv double %76, %83
  store double %97, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %98 = fmul double %96, 1.000000e-30
  %99 = fmul double %70, 1.000000e-30
  %100 = fmul double %97, 1.000000e-30
  %101 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %98, double noundef %99, double noundef %100)
  %102 = load double, ptr @five, align 8
  %103 = fneg double %102
  %104 = load double, ptr @one, align 8
  %105 = fneg double %104
  store double %105, ptr @sa, align 8
  %106 = call i32 @dtime(ptr noundef @TimeArray)
  br label %107

107:                                              ; preds = %111, %66
  %108 = phi double [ %112, %111 ], [ %103, %66 ]
  %109 = phi i32 [ %115, %111 ], [ 1, %66 ]
  %110 = icmp sle i32 %109, %95
  br i1 %110, label %111, label %116

111:                                              ; preds = %107
  %112 = fneg double %108
  %113 = load double, ptr @sa, align 8
  %114 = fadd double %113, %112
  store double %114, ptr @sa, align 8
  %115 = add nsw i32 %109, 1
  br label %107, !llvm.loop !11

116:                                              ; preds = %107
  %117 = call i32 @dtime(ptr noundef @TimeArray)
  %118 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %119 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %120 = fmul double %118, %119
  store double %120, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %121 = fcmp olt double %120, 0.000000e+00
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  br label %123

123:                                              ; preds = %122, %116
  %124 = sitofp i32 %95 to double
  store double %124, ptr @sc, align 8
  %125 = load double, ptr @sa, align 8
  %126 = call i32 @dtime(ptr noundef @TimeArray)
  br label %127

127:                                              ; preds = %134, %123
  %.0 = phi double [ 0.000000e+00, %123 ], [ %144, %134 ]
  %128 = phi double [ %139, %134 ], [ %125, %123 ]
  %129 = phi double [ %135, %134 ], [ %108, %123 ]
  %130 = phi double [ %142, %134 ], [ 0.000000e+00, %123 ]
  %131 = phi double [ %141, %134 ], [ 0.000000e+00, %123 ]
  %132 = phi i32 [ %145, %134 ], [ 1, %123 ]
  %133 = icmp sle i32 %132, %95
  br i1 %133, label %134, label %146

134:                                              ; preds = %127
  %135 = fneg double %129
  %136 = load double, ptr @sa, align 8
  %137 = fadd double %136, %135
  store double %137, ptr @sa, align 8
  %138 = load double, ptr @two, align 8
  %139 = fadd double %128, %138
  %140 = fsub double %135, %139
  %141 = fadd double %131, %140
  %142 = call double @llvm.fmuladd.f64(double %129, double %139, double %130)
  %143 = fdiv double %135, %139
  %144 = fadd double %.0, %143
  %145 = add nsw i32 %132, 1
  br label %127, !llvm.loop !12

146:                                              ; preds = %127
  %147 = call i32 @dtime(ptr noundef @TimeArray)
  %148 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %149 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %150 = fmul double %148, %149
  store double %150, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %151 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %152 = fsub double %150, %151
  %153 = fdiv double %152, 7.000000e+00
  store double %153, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %154 = load double, ptr @sa, align 8
  %155 = fmul double %154, %131
  %156 = load double, ptr @sc, align 8
  %157 = fdiv double %155, %156
  %158 = fptosi double %157 to i32
  %159 = load double, ptr @four, align 8
  %160 = fmul double %159, %.0
  %161 = load double, ptr @five, align 8
  %162 = fdiv double %160, %161
  store double %162, ptr @sa, align 8
  %163 = fdiv double %161, %130
  %164 = fadd double %162, %163
  store double %164, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %165 = fmul double %130, %130
  %166 = fmul double %165, %130
  %167 = fdiv double 3.125000e+01, %166
  %168 = fsub double %164, %167
  store double %168, ptr @piprg, align 8
  %169 = load double, ptr @piref, align 8
  %170 = fsub double %168, %169
  store double %170, ptr @pierr, align 8
  %171 = load double, ptr @one, align 8
  %172 = fdiv double %171, %153
  store double %172, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %173 = fmul double %170, 1.000000e-30
  %174 = fmul double %152, 1.000000e-30
  %175 = fmul double %172, 1.000000e-30
  %176 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %173, double noundef %174, double noundef %175)
  %177 = load double, ptr @piref, align 8
  %178 = load double, ptr @three, align 8
  %179 = sitofp i32 %158 to double
  %180 = fmul double %178, %179
  %181 = fdiv double %177, %180
  %182 = call i32 @dtime(ptr noundef @TimeArray)
  br label %183

183:                                              ; preds = %189, %146
  %184 = phi double [ %191, %189 ], [ 0.000000e+00, %146 ]
  %185 = phi double [ %208, %189 ], [ 0.000000e+00, %146 ]
  %186 = phi i32 [ %209, %189 ], [ 1, %146 ]
  %187 = sub nsw i32 %158, 1
  %188 = icmp sle i32 %186, %187
  br i1 %188, label %189, label %210

189:                                              ; preds = %183
  %190 = load double, ptr @one, align 8
  %191 = fadd double %184, %190
  %192 = fmul double %191, %181
  %193 = fmul double %192, %192
  %194 = load double, ptr @A6, align 8
  %195 = load double, ptr @A5, align 8
  %196 = fneg double %195
  %197 = call double @llvm.fmuladd.f64(double %194, double %193, double %196)
  %198 = load double, ptr @A4, align 8
  %199 = call double @llvm.fmuladd.f64(double %197, double %193, double %198)
  %200 = load double, ptr @A3, align 8
  %201 = fneg double %200
  %202 = call double @llvm.fmuladd.f64(double %199, double %193, double %201)
  %203 = load double, ptr @A2, align 8
  %204 = call double @llvm.fmuladd.f64(double %202, double %193, double %203)
  %205 = load double, ptr @A1, align 8
  %206 = call double @llvm.fmuladd.f64(double %204, double %193, double %205)
  %207 = call double @llvm.fmuladd.f64(double %206, double %193, double %190)
  %208 = call double @llvm.fmuladd.f64(double %192, double %207, double %185)
  %209 = add nsw i32 %186, 1
  br label %183, !llvm.loop !13

210:                                              ; preds = %183
  %211 = call i32 @dtime(ptr noundef @TimeArray)
  %212 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %213 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %214 = load double, ptr @nulltime, align 8
  %215 = fneg double %214
  %216 = call double @llvm.fmuladd.f64(double %212, double %213, double %215)
  store double %216, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %217 = load double, ptr @piref, align 8
  %218 = load double, ptr @three, align 8
  %219 = fdiv double %217, %218
  %220 = fmul double %219, %219
  %221 = load double, ptr @A6, align 8
  %222 = load double, ptr @A5, align 8
  %223 = fneg double %222
  %224 = call double @llvm.fmuladd.f64(double %221, double %220, double %223)
  %225 = load double, ptr @A4, align 8
  %226 = call double @llvm.fmuladd.f64(double %224, double %220, double %225)
  %227 = load double, ptr @A3, align 8
  %228 = fneg double %227
  %229 = call double @llvm.fmuladd.f64(double %226, double %220, double %228)
  %230 = load double, ptr @A2, align 8
  %231 = call double @llvm.fmuladd.f64(double %229, double %220, double %230)
  %232 = load double, ptr @A1, align 8
  %233 = call double @llvm.fmuladd.f64(double %231, double %220, double %232)
  %234 = load double, ptr @one, align 8
  %235 = call double @llvm.fmuladd.f64(double %233, double %220, double %234)
  %236 = fmul double %219, %235
  store double %236, ptr @sa, align 8
  %237 = fdiv double %216, 1.700000e+01
  store double %237, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %238 = load double, ptr @two, align 8
  %239 = call double @llvm.fmuladd.f64(double %238, double %185, double %236)
  %240 = fmul double %181, %239
  %241 = fdiv double %240, %238
  store double %241, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %242 = fsub double %241, 5.000000e-01
  store double %242, ptr @sc, align 8
  %243 = fdiv double %234, %237
  store double %243, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %244 = fmul double %242, 1.000000e-30
  %245 = fmul double %216, 1.000000e-30
  %246 = fmul double %243, 1.000000e-30
  %247 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %244, double noundef %245, double noundef %246)
  %248 = load double, ptr @A3, align 8
  %249 = fneg double %248
  store double %249, ptr @A3, align 8
  %250 = load double, ptr @A5, align 8
  %251 = fneg double %250
  store double %251, ptr @A5, align 8
  %252 = load double, ptr @piref, align 8
  %253 = load double, ptr @three, align 8
  %254 = fmul double %253, %179
  %255 = fdiv double %252, %254
  %256 = call i32 @dtime(ptr noundef @TimeArray)
  br label %257

257:                                              ; preds = %261, %210
  %258 = phi double [ %278, %261 ], [ 0.000000e+00, %210 ]
  %259 = phi i32 [ %279, %261 ], [ 1, %210 ]
  %260 = icmp sle i32 %259, %187
  br i1 %260, label %261, label %280

261:                                              ; preds = %257
  %262 = sitofp i32 %259 to double
  %263 = fmul double %262, %255
  %264 = fmul double %263, %263
  %265 = load double, ptr @B6, align 8
  %266 = load double, ptr @B5, align 8
  %267 = call double @llvm.fmuladd.f64(double %265, double %264, double %266)
  %268 = load double, ptr @B4, align 8
  %269 = call double @llvm.fmuladd.f64(double %264, double %267, double %268)
  %270 = load double, ptr @B3, align 8
  %271 = call double @llvm.fmuladd.f64(double %264, double %269, double %270)
  %272 = load double, ptr @B2, align 8
  %273 = call double @llvm.fmuladd.f64(double %264, double %271, double %272)
  %274 = load double, ptr @B1, align 8
  %275 = call double @llvm.fmuladd.f64(double %264, double %273, double %274)
  %276 = call double @llvm.fmuladd.f64(double %264, double %275, double %258)
  %277 = load double, ptr @one, align 8
  %278 = fadd double %276, %277
  %279 = add nsw i32 %259, 1
  br label %257, !llvm.loop !14

280:                                              ; preds = %257
  %281 = call i32 @dtime(ptr noundef @TimeArray)
  %282 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %283 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %284 = load double, ptr @nulltime, align 8
  %285 = fneg double %284
  %286 = call double @llvm.fmuladd.f64(double %282, double %283, double %285)
  store double %286, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %287 = load double, ptr @piref, align 8
  %288 = load double, ptr @three, align 8
  %289 = fdiv double %287, %288
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
  %302 = load double, ptr @one, align 8
  %303 = call double @llvm.fmuladd.f64(double %290, double %301, double %302)
  store double %303, ptr @sa, align 8
  %304 = fdiv double %286, 1.500000e+01
  store double %304, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %305 = fadd double %303, %302
  %306 = load double, ptr @two, align 8
  %307 = call double @llvm.fmuladd.f64(double %306, double %258, double %305)
  %308 = fmul double %255, %307
  %309 = fdiv double %308, %306
  store double %309, ptr @sa, align 8
  %310 = load double, ptr @A6, align 8
  %311 = load double, ptr @A5, align 8
  %312 = call double @llvm.fmuladd.f64(double %310, double %290, double %311)
  %313 = load double, ptr @A4, align 8
  %314 = call double @llvm.fmuladd.f64(double %312, double %290, double %313)
  %315 = load double, ptr @A3, align 8
  %316 = call double @llvm.fmuladd.f64(double %314, double %290, double %315)
  %317 = load double, ptr @A2, align 8
  %318 = call double @llvm.fmuladd.f64(double %316, double %290, double %317)
  %319 = load double, ptr @A1, align 8
  %320 = call double @llvm.fmuladd.f64(double %318, double %290, double %319)
  %321 = load double, ptr @A0, align 8
  %322 = call double @llvm.fmuladd.f64(double %320, double %290, double %321)
  %323 = fmul double %289, %322
  store double %323, ptr @sb, align 8
  %324 = fsub double %309, %323
  store double %324, ptr @sc, align 8
  %325 = fdiv double %302, %304
  store double %325, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %326 = fmul double %324, 1.000000e-30
  %327 = fmul double %286, 1.000000e-30
  %328 = fmul double %325, 1.000000e-30
  %329 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %326, double noundef %327, double noundef %328)
  %330 = load double, ptr @piref, align 8
  %331 = load double, ptr @three, align 8
  %332 = fmul double %331, %179
  %333 = fdiv double %330, %332
  %334 = call i32 @dtime(ptr noundef @TimeArray)
  br label %335

335:                                              ; preds = %339, %280
  %336 = phi double [ %370, %339 ], [ 0.000000e+00, %280 ]
  %337 = phi i32 [ %371, %339 ], [ 1, %280 ]
  %338 = icmp sle i32 %337, %187
  br i1 %338, label %339, label %372

339:                                              ; preds = %335
  %340 = sitofp i32 %337 to double
  %341 = fmul double %340, %333
  %342 = fmul double %341, %341
  %343 = load double, ptr @A6, align 8
  %344 = load double, ptr @A5, align 8
  %345 = call double @llvm.fmuladd.f64(double %343, double %342, double %344)
  %346 = load double, ptr @A4, align 8
  %347 = call double @llvm.fmuladd.f64(double %345, double %342, double %346)
  %348 = load double, ptr @A3, align 8
  %349 = call double @llvm.fmuladd.f64(double %347, double %342, double %348)
  %350 = load double, ptr @A2, align 8
  %351 = call double @llvm.fmuladd.f64(double %349, double %342, double %350)
  %352 = load double, ptr @A1, align 8
  %353 = call double @llvm.fmuladd.f64(double %351, double %342, double %352)
  %354 = load double, ptr @one, align 8
  %355 = call double @llvm.fmuladd.f64(double %353, double %342, double %354)
  %356 = fmul double %341, %355
  %357 = load double, ptr @B6, align 8
  %358 = load double, ptr @B5, align 8
  %359 = call double @llvm.fmuladd.f64(double %357, double %342, double %358)
  %360 = load double, ptr @B4, align 8
  %361 = call double @llvm.fmuladd.f64(double %342, double %359, double %360)
  %362 = load double, ptr @B3, align 8
  %363 = call double @llvm.fmuladd.f64(double %342, double %361, double %362)
  %364 = load double, ptr @B2, align 8
  %365 = call double @llvm.fmuladd.f64(double %342, double %363, double %364)
  %366 = load double, ptr @B1, align 8
  %367 = call double @llvm.fmuladd.f64(double %342, double %365, double %366)
  %368 = call double @llvm.fmuladd.f64(double %342, double %367, double %354)
  %369 = fdiv double %356, %368
  %370 = fadd double %336, %369
  %371 = add nsw i32 %337, 1
  br label %335, !llvm.loop !15

372:                                              ; preds = %335
  %373 = call i32 @dtime(ptr noundef @TimeArray)
  %374 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %375 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %376 = load double, ptr @nulltime, align 8
  %377 = fneg double %376
  %378 = call double @llvm.fmuladd.f64(double %374, double %375, double %377)
  store double %378, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %379 = load double, ptr @piref, align 8
  %380 = load double, ptr @three, align 8
  %381 = fdiv double %379, %380
  %382 = fmul double %381, %381
  %383 = load double, ptr @A6, align 8
  %384 = load double, ptr @A5, align 8
  %385 = call double @llvm.fmuladd.f64(double %383, double %382, double %384)
  %386 = load double, ptr @A4, align 8
  %387 = call double @llvm.fmuladd.f64(double %385, double %382, double %386)
  %388 = load double, ptr @A3, align 8
  %389 = call double @llvm.fmuladd.f64(double %387, double %382, double %388)
  %390 = load double, ptr @A2, align 8
  %391 = call double @llvm.fmuladd.f64(double %389, double %382, double %390)
  %392 = load double, ptr @A1, align 8
  %393 = call double @llvm.fmuladd.f64(double %391, double %382, double %392)
  %394 = load double, ptr @one, align 8
  %395 = call double @llvm.fmuladd.f64(double %393, double %382, double %394)
  %396 = fmul double %381, %395
  store double %396, ptr @sa, align 8
  %397 = load double, ptr @B6, align 8
  %398 = load double, ptr @B5, align 8
  %399 = call double @llvm.fmuladd.f64(double %397, double %382, double %398)
  %400 = load double, ptr @B4, align 8
  %401 = call double @llvm.fmuladd.f64(double %382, double %399, double %400)
  %402 = load double, ptr @B3, align 8
  %403 = call double @llvm.fmuladd.f64(double %382, double %401, double %402)
  %404 = load double, ptr @B2, align 8
  %405 = call double @llvm.fmuladd.f64(double %382, double %403, double %404)
  %406 = load double, ptr @B1, align 8
  %407 = call double @llvm.fmuladd.f64(double %382, double %405, double %406)
  %408 = call double @llvm.fmuladd.f64(double %382, double %407, double %394)
  store double %408, ptr @sb, align 8
  %409 = fdiv double %396, %408
  store double %409, ptr @sa, align 8
  %410 = fdiv double %378, 2.900000e+01
  store double %410, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %411 = load double, ptr @two, align 8
  %412 = call double @llvm.fmuladd.f64(double %411, double %336, double %409)
  %413 = fmul double %333, %412
  %414 = fdiv double %413, %411
  store double %414, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %415 = fsub double %414, f0x3FE62E42FEFA39EF
  store double %415, ptr @sc, align 8
  %416 = fdiv double %394, %410
  store double %416, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %417 = fmul double %415, 1.000000e-30
  %418 = fmul double %378, 1.000000e-30
  %419 = fmul double %416, 1.000000e-30
  %420 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %417, double noundef %418, double noundef %419)
  %421 = load double, ptr @piref, align 8
  %422 = load double, ptr @four, align 8
  %423 = fmul double %422, %179
  %424 = fdiv double %421, %423
  %425 = call i32 @dtime(ptr noundef @TimeArray)
  br label %426

426:                                              ; preds = %430, %372
  %427 = phi double [ %460, %430 ], [ 0.000000e+00, %372 ]
  %428 = phi i32 [ %461, %430 ], [ 1, %372 ]
  %429 = icmp sle i32 %428, %187
  br i1 %429, label %430, label %462

430:                                              ; preds = %426
  %431 = sitofp i32 %428 to double
  %432 = fmul double %431, %424
  %433 = fmul double %432, %432
  %434 = load double, ptr @A6, align 8
  %435 = load double, ptr @A5, align 8
  %436 = call double @llvm.fmuladd.f64(double %434, double %433, double %435)
  %437 = load double, ptr @A4, align 8
  %438 = call double @llvm.fmuladd.f64(double %436, double %433, double %437)
  %439 = load double, ptr @A3, align 8
  %440 = call double @llvm.fmuladd.f64(double %438, double %433, double %439)
  %441 = load double, ptr @A2, align 8
  %442 = call double @llvm.fmuladd.f64(double %440, double %433, double %441)
  %443 = load double, ptr @A1, align 8
  %444 = call double @llvm.fmuladd.f64(double %442, double %433, double %443)
  %445 = load double, ptr @one, align 8
  %446 = call double @llvm.fmuladd.f64(double %444, double %433, double %445)
  %447 = fmul double %432, %446
  %448 = load double, ptr @B6, align 8
  %449 = load double, ptr @B5, align 8
  %450 = call double @llvm.fmuladd.f64(double %448, double %433, double %449)
  %451 = load double, ptr @B4, align 8
  %452 = call double @llvm.fmuladd.f64(double %433, double %450, double %451)
  %453 = load double, ptr @B3, align 8
  %454 = call double @llvm.fmuladd.f64(double %433, double %452, double %453)
  %455 = load double, ptr @B2, align 8
  %456 = call double @llvm.fmuladd.f64(double %433, double %454, double %455)
  %457 = load double, ptr @B1, align 8
  %458 = call double @llvm.fmuladd.f64(double %433, double %456, double %457)
  %459 = call double @llvm.fmuladd.f64(double %433, double %458, double %445)
  %460 = call double @llvm.fmuladd.f64(double %447, double %459, double %427)
  %461 = add nsw i32 %428, 1
  br label %426, !llvm.loop !16

462:                                              ; preds = %426
  %463 = call i32 @dtime(ptr noundef @TimeArray)
  %464 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %465 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %466 = load double, ptr @nulltime, align 8
  %467 = fneg double %466
  %468 = call double @llvm.fmuladd.f64(double %464, double %465, double %467)
  store double %468, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %469 = load double, ptr @piref, align 8
  %470 = load double, ptr @four, align 8
  %471 = fdiv double %469, %470
  %472 = fmul double %471, %471
  %473 = load double, ptr @A6, align 8
  %474 = load double, ptr @A5, align 8
  %475 = call double @llvm.fmuladd.f64(double %473, double %472, double %474)
  %476 = load double, ptr @A4, align 8
  %477 = call double @llvm.fmuladd.f64(double %475, double %472, double %476)
  %478 = load double, ptr @A3, align 8
  %479 = call double @llvm.fmuladd.f64(double %477, double %472, double %478)
  %480 = load double, ptr @A2, align 8
  %481 = call double @llvm.fmuladd.f64(double %479, double %472, double %480)
  %482 = load double, ptr @A1, align 8
  %483 = call double @llvm.fmuladd.f64(double %481, double %472, double %482)
  %484 = load double, ptr @one, align 8
  %485 = call double @llvm.fmuladd.f64(double %483, double %472, double %484)
  %486 = fmul double %471, %485
  store double %486, ptr @sa, align 8
  %487 = load double, ptr @B6, align 8
  %488 = load double, ptr @B5, align 8
  %489 = call double @llvm.fmuladd.f64(double %487, double %472, double %488)
  %490 = load double, ptr @B4, align 8
  %491 = call double @llvm.fmuladd.f64(double %472, double %489, double %490)
  %492 = load double, ptr @B3, align 8
  %493 = call double @llvm.fmuladd.f64(double %472, double %491, double %492)
  %494 = load double, ptr @B2, align 8
  %495 = call double @llvm.fmuladd.f64(double %472, double %493, double %494)
  %496 = load double, ptr @B1, align 8
  %497 = call double @llvm.fmuladd.f64(double %472, double %495, double %496)
  %498 = call double @llvm.fmuladd.f64(double %472, double %497, double %484)
  store double %498, ptr @sb, align 8
  %499 = fmul double %486, %498
  store double %499, ptr @sa, align 8
  %500 = fdiv double %468, 2.900000e+01
  store double %500, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %501 = load double, ptr @two, align 8
  %502 = call double @llvm.fmuladd.f64(double %501, double %427, double %499)
  %503 = fmul double %424, %502
  %504 = fdiv double %503, %501
  store double %504, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %505 = fsub double %504, 2.500000e-01
  store double %505, ptr @sc, align 8
  %506 = fdiv double %484, %500
  store double %506, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %507 = fmul double %505, 1.000000e-30
  %508 = fmul double %468, 1.000000e-30
  %509 = fmul double %506, 1.000000e-30
  %510 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, double noundef %507, double noundef %508, double noundef %509)
  %511 = load double, ptr @one, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %512 = fdiv double f0x40599541F7F192A4, %179
  %513 = call i32 @dtime(ptr noundef @TimeArray)
  br label %514

514:                                              ; preds = %518, %462
  %515 = phi double [ %530, %518 ], [ 0.000000e+00, %462 ]
  %516 = phi i32 [ %531, %518 ], [ 1, %462 ]
  %517 = icmp sle i32 %516, %187
  br i1 %517, label %518, label %532

518:                                              ; preds = %514
  %519 = sitofp i32 %516 to double
  %520 = fmul double %519, %512
  %521 = fmul double %520, %520
  %522 = fadd double %520, %511
  %523 = fdiv double %511, %522
  %524 = fsub double %515, %523
  %525 = fadd double %521, %511
  %526 = fdiv double %520, %525
  %527 = fsub double %524, %526
  %528 = call double @llvm.fmuladd.f64(double %520, double %521, double %511)
  %529 = fdiv double %521, %528
  %530 = fsub double %527, %529
  %531 = add nsw i32 %516, 1
  br label %514, !llvm.loop !17

532:                                              ; preds = %514
  %533 = call i32 @dtime(ptr noundef @TimeArray)
  %534 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %535 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %536 = load double, ptr @nulltime, align 8
  %537 = fneg double %536
  %538 = call double @llvm.fmuladd.f64(double %534, double %535, double %537)
  store double %538, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %539 = fdiv double %538, 1.200000e+01
  store double %539, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %540 = load double, ptr @sa, align 8
  %541 = fmul double %540, %540
  %542 = fneg double %511
  %543 = fadd double %540, %511
  %544 = fdiv double %511, %543
  %545 = fsub double %542, %544
  %546 = fadd double %541, %511
  %547 = fdiv double %540, %546
  %548 = fsub double %545, %547
  %549 = call double @llvm.fmuladd.f64(double %540, double %541, double %511)
  %550 = fdiv double %541, %549
  %551 = fsub double %548, %550
  store double %551, ptr @sa, align 8
  %552 = fmul double 1.800000e+01, %512
  %553 = load double, ptr @two, align 8
  %554 = call double @llvm.fmuladd.f64(double %553, double %515, double %551)
  %555 = fmul double %552, %554
  store double %555, ptr @sa, align 8
  %556 = fptosi double %555 to i32
  %557 = mul nsw i32 -2000, %556
  %558 = sitofp i32 %557 to double
  %559 = load double, ptr @scale, align 8
  %560 = fdiv double %558, %559
  %561 = fptosi double %560 to i32
  %562 = fadd double %555, 5.002000e+02
  store double %562, ptr @sc, align 8
  %563 = load double, ptr @one, align 8
  %564 = fdiv double %563, %539
  store double %564, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %565 = fmul double %562, 1.000000e-30
  %566 = fmul double %538, 1.000000e-30
  %567 = fmul double %564, 1.000000e-30
  %568 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, double noundef %565, double noundef %566, double noundef %567)
  %569 = load double, ptr @piref, align 8
  %570 = load double, ptr @three, align 8
  %571 = sitofp i32 %561 to double
  %572 = fmul double %570, %571
  %573 = fdiv double %569, %572
  %574 = call i32 @dtime(ptr noundef @TimeArray)
  br label %575

575:                                              ; preds = %580, %532
  %576 = phi double [ %611, %580 ], [ 0.000000e+00, %532 ]
  %577 = phi i32 [ %612, %580 ], [ 1, %532 ]
  %578 = sub nsw i32 %561, 1
  %579 = icmp sle i32 %577, %578
  br i1 %579, label %580, label %613

580:                                              ; preds = %575
  %581 = sitofp i32 %577 to double
  %582 = fmul double %581, %573
  %583 = fmul double %582, %582
  %584 = load double, ptr @B6, align 8
  %585 = load double, ptr @B5, align 8
  %586 = call double @llvm.fmuladd.f64(double %584, double %583, double %585)
  %587 = load double, ptr @B4, align 8
  %588 = call double @llvm.fmuladd.f64(double %583, double %586, double %587)
  %589 = load double, ptr @B3, align 8
  %590 = call double @llvm.fmuladd.f64(double %583, double %588, double %589)
  %591 = load double, ptr @B2, align 8
  %592 = call double @llvm.fmuladd.f64(double %583, double %590, double %591)
  %593 = load double, ptr @B1, align 8
  %594 = call double @llvm.fmuladd.f64(double %583, double %592, double %593)
  %595 = load double, ptr @one, align 8
  %596 = call double @llvm.fmuladd.f64(double %583, double %594, double %595)
  %597 = fmul double %596, %596
  %598 = fmul double %597, %582
  %599 = load double, ptr @A6, align 8
  %600 = load double, ptr @A5, align 8
  %601 = call double @llvm.fmuladd.f64(double %599, double %583, double %600)
  %602 = load double, ptr @A4, align 8
  %603 = call double @llvm.fmuladd.f64(double %601, double %583, double %602)
  %604 = load double, ptr @A3, align 8
  %605 = call double @llvm.fmuladd.f64(double %603, double %583, double %604)
  %606 = load double, ptr @A2, align 8
  %607 = call double @llvm.fmuladd.f64(double %605, double %583, double %606)
  %608 = load double, ptr @A1, align 8
  %609 = call double @llvm.fmuladd.f64(double %607, double %583, double %608)
  %610 = call double @llvm.fmuladd.f64(double %609, double %583, double %595)
  %611 = call double @llvm.fmuladd.f64(double %598, double %610, double %576)
  %612 = add nsw i32 %577, 1
  br label %575, !llvm.loop !18

613:                                              ; preds = %575
  %614 = call i32 @dtime(ptr noundef @TimeArray)
  %615 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %616 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %617 = load double, ptr @nulltime, align 8
  %618 = fneg double %617
  %619 = call double @llvm.fmuladd.f64(double %615, double %616, double %618)
  store double %619, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %620 = load double, ptr @piref, align 8
  %621 = load double, ptr @three, align 8
  %622 = fdiv double %620, %621
  %623 = fmul double %622, %622
  %624 = load double, ptr @A6, align 8
  %625 = load double, ptr @A5, align 8
  %626 = call double @llvm.fmuladd.f64(double %624, double %623, double %625)
  %627 = load double, ptr @A4, align 8
  %628 = call double @llvm.fmuladd.f64(double %626, double %623, double %627)
  %629 = load double, ptr @A3, align 8
  %630 = call double @llvm.fmuladd.f64(double %628, double %623, double %629)
  %631 = load double, ptr @A2, align 8
  %632 = call double @llvm.fmuladd.f64(double %630, double %623, double %631)
  %633 = load double, ptr @A1, align 8
  %634 = call double @llvm.fmuladd.f64(double %632, double %623, double %633)
  %635 = load double, ptr @one, align 8
  %636 = call double @llvm.fmuladd.f64(double %634, double %623, double %635)
  %637 = fmul double %622, %636
  store double %637, ptr @sa, align 8
  %638 = load double, ptr @B6, align 8
  %639 = load double, ptr @B5, align 8
  %640 = call double @llvm.fmuladd.f64(double %638, double %623, double %639)
  %641 = load double, ptr @B4, align 8
  %642 = call double @llvm.fmuladd.f64(double %623, double %640, double %641)
  %643 = load double, ptr @B3, align 8
  %644 = call double @llvm.fmuladd.f64(double %623, double %642, double %643)
  %645 = load double, ptr @B2, align 8
  %646 = call double @llvm.fmuladd.f64(double %623, double %644, double %645)
  %647 = load double, ptr @B1, align 8
  %648 = call double @llvm.fmuladd.f64(double %623, double %646, double %647)
  %649 = call double @llvm.fmuladd.f64(double %623, double %648, double %635)
  store double %649, ptr @sb, align 8
  %650 = fmul double %637, %649
  %651 = fmul double %650, %649
  store double %651, ptr @sa, align 8
  %652 = fdiv double %619, 3.000000e+01
  store double %652, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %653 = load double, ptr @two, align 8
  %654 = call double @llvm.fmuladd.f64(double %653, double %576, double %651)
  %655 = fmul double %573, %654
  %656 = fdiv double %655, %653
  store double %656, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %657 = fsub double %656, f0x3FD2AAAAAAAAAAAB
  store double %657, ptr @sc, align 8
  %658 = fdiv double %635, %652
  store double %658, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %659 = fmul double %657, 1.000000e-30
  %660 = fmul double %619, 1.000000e-30
  %661 = fmul double %658, 1.000000e-30
  %662 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, double noundef %659, double noundef %660, double noundef %661)
  %663 = load double, ptr @five, align 8
  %664 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %665 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %666 = fsub double %664, %665
  %667 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %668 = call double @llvm.fmuladd.f64(double %663, double %666, double %667)
  %669 = fdiv double %668, 5.200000e+01
  store double %669, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %670 = load double, ptr @one, align 8
  %671 = fdiv double %670, %669
  store double %671, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %672 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %673 = fadd double %672, %667
  %674 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %675 = fadd double %673, %674
  %676 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %677 = fadd double %675, %676
  %678 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %679 = fadd double %677, %678
  store double %679, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %680 = load double, ptr @four, align 8
  %681 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %682 = call double @llvm.fmuladd.f64(double %680, double %681, double %679)
  %683 = fdiv double %682, 1.520000e+02
  store double %683, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %684 = fdiv double %670, %683
  store double %684, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %679, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %685 = fadd double %679, %681
  %686 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %687 = fadd double %685, %686
  %688 = fdiv double %687, 1.460000e+02
  store double %688, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %689 = fdiv double %670, %688
  store double %689, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %690 = fadd double %667, %674
  %691 = fadd double %690, %678
  %692 = fadd double %691, %686
  %693 = fdiv double %692, 9.100000e+01
  store double %693, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %694 = fdiv double %670, %693
  store double %694, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %695 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %696 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %561)
  %697 = load double, ptr @nulltime, align 8
  %698 = fmul double %697, 1.000000e-30
  %699 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, double noundef %698)
  %700 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %701 = fmul double %700, 1.000000e-30
  %702 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, double noundef %701)
  %703 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %704 = fmul double %703, 1.000000e-30
  %705 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, double noundef %704)
  %706 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %707 = fmul double %706, 1.000000e-30
  %708 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, double noundef %707)
  %709 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %710 = fmul double %709, 1.000000e-30
  %711 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, double noundef %710)
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
  store double %6, ptr %2, align 8
  %7 = fsub double %6, %3
  %8 = getelementptr inbounds double, ptr %0, i64 1
  store double %7, ptr %8, align 8
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
