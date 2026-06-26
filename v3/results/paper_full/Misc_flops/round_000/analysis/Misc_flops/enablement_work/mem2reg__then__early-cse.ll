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
  %3 = load double, ptr @one, align 8
  store double %3, ptr @scale, align 8
  %4 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %5 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %6 = call i32 @dtime(ptr noundef @TimeArray)
  %7 = call i32 @dtime(ptr noundef @TimeArray)
  store double 0.000000e+00, ptr @sa, align 8
  br label %8

8:                                                ; preds = %43, %0
  %.08 = phi double [ undef, %0 ], [ %16, %43 ]
  %.01 = phi double [ undef, %0 ], [ %.2, %43 ]
  %.0 = phi i32 [ 15625, %0 ], [ %13, %43 ]
  %9 = load double, ptr @sa, align 8
  %10 = load double, ptr @TLimit, align 8
  %11 = fcmp olt double %9, %10
  br i1 %11, label %12, label %44

12:                                               ; preds = %8
  %13 = mul nsw i32 2, %.0
  %14 = load double, ptr @one, align 8
  %15 = sitofp i32 %13 to double
  %16 = fdiv double %14, %15
  %17 = call i32 @dtime(ptr noundef @TimeArray)
  br label %18

18:                                               ; preds = %36, %12
  %.011 = phi i32 [ 1, %12 ], [ %37, %36 ]
  %.04 = phi double [ 0.000000e+00, %12 ], [ %22, %36 ]
  %.2 = phi double [ 0.000000e+00, %12 ], [ %35, %36 ]
  %19 = sub nsw i32 %13, 1
  %20 = icmp sle i32 %.011, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %18
  %22 = fadd double %.04, %14
  %23 = fmul double %22, %16
  %24 = load double, ptr @D1, align 8
  %25 = load double, ptr @D2, align 8
  %26 = load double, ptr @D3, align 8
  %27 = call double @llvm.fmuladd.f64(double %23, double %26, double %25)
  %28 = call double @llvm.fmuladd.f64(double %23, double %27, double %24)
  %29 = load double, ptr @E2, align 8
  %30 = load double, ptr @E3, align 8
  %31 = call double @llvm.fmuladd.f64(double %23, double %30, double %29)
  %32 = call double @llvm.fmuladd.f64(double %23, double %31, double %24)
  %33 = call double @llvm.fmuladd.f64(double %23, double %32, double %14)
  %34 = fdiv double %28, %33
  %35 = fadd double %.2, %34
  br label %36

36:                                               ; preds = %21
  %37 = add nsw i32 %.011, 1
  br label %18, !llvm.loop !7

38:                                               ; preds = %18
  %39 = call i32 @dtime(ptr noundef @TimeArray)
  %40 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %40, ptr @sa, align 8
  %41 = icmp eq i32 %13, 512000000
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %44

43:                                               ; preds = %38
  br label %8, !llvm.loop !9

44:                                               ; preds = %42, %8
  %.19 = phi double [ %16, %42 ], [ %.08, %8 ]
  %.12 = phi double [ %.2, %42 ], [ %.01, %8 ]
  %.1 = phi i32 [ %13, %42 ], [ %.0, %8 ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %45 = call i32 @dtime(ptr noundef @TimeArray)
  br label %46

46:                                               ; preds = %50, %44
  %.112 = phi i32 [ 1, %44 ], [ %51, %50 ]
  %47 = sub nsw i32 %.1, 1
  %48 = icmp sle i32 %.112, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  br label %50

50:                                               ; preds = %49
  %51 = add nsw i32 %.112, 1
  br label %46, !llvm.loop !10

52:                                               ; preds = %46
  %53 = call i32 @dtime(ptr noundef @TimeArray)
  %54 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %55 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %56 = fmul double %54, %55
  store double %56, ptr @nulltime, align 8
  %57 = fcmp olt double %56, 0.000000e+00
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store double 0.000000e+00, ptr @nulltime, align 8
  br label %59

59:                                               ; preds = %58, %52
  %60 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %61 = load double, ptr @sa, align 8
  %62 = load double, ptr @nulltime, align 8
  %63 = fneg double %62
  %64 = call double @llvm.fmuladd.f64(double %60, double %61, double %63)
  store double %64, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %65 = load double, ptr @D1, align 8
  %66 = load double, ptr @D2, align 8
  %67 = fadd double %65, %66
  %68 = load double, ptr @D3, align 8
  %69 = fadd double %67, %68
  %70 = load double, ptr @one, align 8
  %71 = fadd double %70, %65
  %72 = load double, ptr @E2, align 8
  %73 = fadd double %71, %72
  %74 = load double, ptr @E3, align 8
  %75 = fadd double %73, %74
  %76 = fdiv double %69, %75
  store double %76, ptr @sa, align 8
  %77 = load double, ptr @D1, align 8
  store double %77, ptr @sb, align 8
  %78 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %79 = fdiv double %78, 1.400000e+01
  store double %79, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %80 = load double, ptr @sa, align 8
  %81 = load double, ptr @sb, align 8
  %82 = fadd double %80, %81
  %83 = load double, ptr @two, align 8
  %84 = call double @llvm.fmuladd.f64(double %83, double %.12, double %82)
  %85 = fmul double %.19, %84
  %86 = fdiv double %85, %83
  store double %86, ptr @sa, align 8
  %87 = load double, ptr @one, align 8
  %88 = fdiv double %87, %86
  store double %88, ptr @sb, align 8
  %89 = fptosi double %88 to i32
  %90 = mul nsw i32 40000, %89
  %91 = sitofp i32 %90 to double
  %92 = load double, ptr @scale, align 8
  %93 = fdiv double %91, %92
  %94 = fptosi double %93 to i32
  %95 = fsub double %88, 2.520000e+01
  store double %95, ptr @sc, align 8
  %96 = load double, ptr @one, align 8
  %97 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %98 = fdiv double %96, %97
  store double %98, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %99 = load double, ptr @sc, align 8
  %100 = fmul double %99, 1.000000e-30
  %101 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %102 = fmul double %101, 1.000000e-30
  %103 = fmul double %98, 1.000000e-30
  %104 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %100, double noundef %102, double noundef %103)
  %105 = load double, ptr @five, align 8
  %106 = fneg double %105
  %107 = load double, ptr @one, align 8
  %108 = fneg double %107
  store double %108, ptr @sa, align 8
  %109 = call i32 @dtime(ptr noundef @TimeArray)
  br label %110

110:                                              ; preds = %116, %59
  %.213 = phi i32 [ 1, %59 ], [ %117, %116 ]
  %.3 = phi double [ %106, %59 ], [ %113, %116 ]
  %111 = icmp sle i32 %.213, %94
  br i1 %111, label %112, label %118

112:                                              ; preds = %110
  %113 = fneg double %.3
  %114 = load double, ptr @sa, align 8
  %115 = fadd double %114, %113
  store double %115, ptr @sa, align 8
  br label %116

116:                                              ; preds = %112
  %117 = add nsw i32 %.213, 1
  br label %110, !llvm.loop !11

118:                                              ; preds = %110
  %119 = call i32 @dtime(ptr noundef @TimeArray)
  %120 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %121 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %122 = fmul double %120, %121
  store double %122, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %123 = fcmp olt double %122, 0.000000e+00
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  br label %125

125:                                              ; preds = %124, %118
  %126 = sitofp i32 %94 to double
  store double %126, ptr @sc, align 8
  %127 = load double, ptr @sa, align 8
  %128 = call i32 @dtime(ptr noundef @TimeArray)
  br label %129

129:                                              ; preds = %142, %125
  %.314 = phi i32 [ 1, %125 ], [ %143, %142 ]
  %.210 = phi double [ 0.000000e+00, %125 ], [ %138, %142 ]
  %.07 = phi double [ 0.000000e+00, %125 ], [ %141, %142 ]
  %.15 = phi double [ 0.000000e+00, %125 ], [ %139, %142 ]
  %.03 = phi double [ %127, %125 ], [ %136, %142 ]
  %.4 = phi double [ %.3, %125 ], [ %132, %142 ]
  %130 = icmp sle i32 %.314, %94
  br i1 %130, label %131, label %144

131:                                              ; preds = %129
  %132 = fneg double %.4
  %133 = load double, ptr @sa, align 8
  %134 = fadd double %133, %132
  store double %134, ptr @sa, align 8
  %135 = load double, ptr @two, align 8
  %136 = fadd double %.03, %135
  %137 = fsub double %132, %136
  %138 = fadd double %.210, %137
  %139 = call double @llvm.fmuladd.f64(double %.4, double %136, double %.15)
  %140 = fdiv double %132, %136
  %141 = fadd double %.07, %140
  br label %142

142:                                              ; preds = %131
  %143 = add nsw i32 %.314, 1
  br label %129, !llvm.loop !12

144:                                              ; preds = %129
  %145 = call i32 @dtime(ptr noundef @TimeArray)
  %146 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %147 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %148 = fmul double %146, %147
  store double %148, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %149 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %150 = fsub double %148, %149
  %151 = fdiv double %150, 7.000000e+00
  store double %151, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %152 = load double, ptr @sa, align 8
  %153 = fmul double %152, %.210
  %154 = load double, ptr @sc, align 8
  %155 = fdiv double %153, %154
  %156 = fptosi double %155 to i32
  %157 = load double, ptr @four, align 8
  %158 = fmul double %157, %.07
  %159 = load double, ptr @five, align 8
  %160 = fdiv double %158, %159
  store double %160, ptr @sa, align 8
  %161 = load double, ptr @five, align 8
  %162 = fdiv double %161, %.15
  %163 = fadd double %160, %162
  store double %163, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %164 = load double, ptr @sb, align 8
  %165 = fmul double %.15, %.15
  %166 = fmul double %165, %.15
  %167 = fdiv double 3.125000e+01, %166
  %168 = fsub double %164, %167
  store double %168, ptr @piprg, align 8
  %169 = load double, ptr @piref, align 8
  %170 = fsub double %168, %169
  store double %170, ptr @pierr, align 8
  %171 = load double, ptr @one, align 8
  %172 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %173 = fdiv double %171, %172
  store double %173, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %174 = load double, ptr @pierr, align 8
  %175 = fmul double %174, 1.000000e-30
  %176 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %177 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %178 = fsub double %176, %177
  %179 = fmul double %178, 1.000000e-30
  %180 = fmul double %173, 1.000000e-30
  %181 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %175, double noundef %179, double noundef %180)
  %182 = load double, ptr @piref, align 8
  %183 = load double, ptr @three, align 8
  %184 = sitofp i32 %156 to double
  %185 = fmul double %183, %184
  %186 = fdiv double %182, %185
  %187 = call i32 @dtime(ptr noundef @TimeArray)
  br label %188

188:                                              ; preds = %211, %144
  %.415 = phi i32 [ 1, %144 ], [ %212, %211 ]
  %.26 = phi double [ 0.000000e+00, %144 ], [ %193, %211 ]
  %.5 = phi double [ 0.000000e+00, %144 ], [ %210, %211 ]
  %189 = sub nsw i32 %156, 1
  %190 = icmp sle i32 %.415, %189
  br i1 %190, label %191, label %213

191:                                              ; preds = %188
  %192 = load double, ptr @one, align 8
  %193 = fadd double %.26, %192
  %194 = fmul double %193, %186
  %195 = fmul double %194, %194
  %196 = load double, ptr @A6, align 8
  %197 = load double, ptr @A5, align 8
  %198 = fneg double %197
  %199 = call double @llvm.fmuladd.f64(double %196, double %195, double %198)
  %200 = load double, ptr @A4, align 8
  %201 = call double @llvm.fmuladd.f64(double %199, double %195, double %200)
  %202 = load double, ptr @A3, align 8
  %203 = fneg double %202
  %204 = call double @llvm.fmuladd.f64(double %201, double %195, double %203)
  %205 = load double, ptr @A2, align 8
  %206 = call double @llvm.fmuladd.f64(double %204, double %195, double %205)
  %207 = load double, ptr @A1, align 8
  %208 = call double @llvm.fmuladd.f64(double %206, double %195, double %207)
  %209 = call double @llvm.fmuladd.f64(double %208, double %195, double %192)
  %210 = call double @llvm.fmuladd.f64(double %194, double %209, double %.5)
  br label %211

211:                                              ; preds = %191
  %212 = add nsw i32 %.415, 1
  br label %188, !llvm.loop !13

213:                                              ; preds = %188
  %214 = call i32 @dtime(ptr noundef @TimeArray)
  %215 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %216 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %217 = load double, ptr @nulltime, align 8
  %218 = fneg double %217
  %219 = call double @llvm.fmuladd.f64(double %215, double %216, double %218)
  store double %219, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %220 = load double, ptr @piref, align 8
  %221 = load double, ptr @three, align 8
  %222 = fdiv double %220, %221
  %223 = fmul double %222, %222
  %224 = load double, ptr @A6, align 8
  %225 = load double, ptr @A5, align 8
  %226 = fneg double %225
  %227 = call double @llvm.fmuladd.f64(double %224, double %223, double %226)
  %228 = load double, ptr @A4, align 8
  %229 = call double @llvm.fmuladd.f64(double %227, double %223, double %228)
  %230 = load double, ptr @A3, align 8
  %231 = fneg double %230
  %232 = call double @llvm.fmuladd.f64(double %229, double %223, double %231)
  %233 = load double, ptr @A2, align 8
  %234 = call double @llvm.fmuladd.f64(double %232, double %223, double %233)
  %235 = load double, ptr @A1, align 8
  %236 = call double @llvm.fmuladd.f64(double %234, double %223, double %235)
  %237 = load double, ptr @one, align 8
  %238 = call double @llvm.fmuladd.f64(double %236, double %223, double %237)
  %239 = fmul double %222, %238
  store double %239, ptr @sa, align 8
  %240 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %241 = fdiv double %240, 1.700000e+01
  store double %241, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %242 = load double, ptr @sa, align 8
  %243 = load double, ptr @two, align 8
  %244 = call double @llvm.fmuladd.f64(double %243, double %.5, double %242)
  %245 = fmul double %186, %244
  %246 = fdiv double %245, %243
  store double %246, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %247 = load double, ptr @sa, align 8
  %248 = fsub double %247, 5.000000e-01
  store double %248, ptr @sc, align 8
  %249 = load double, ptr @one, align 8
  %250 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %251 = fdiv double %249, %250
  store double %251, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %252 = load double, ptr @sc, align 8
  %253 = fmul double %252, 1.000000e-30
  %254 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %255 = fmul double %254, 1.000000e-30
  %256 = fmul double %251, 1.000000e-30
  %257 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %253, double noundef %255, double noundef %256)
  %258 = load double, ptr @A3, align 8
  %259 = fneg double %258
  store double %259, ptr @A3, align 8
  %260 = load double, ptr @A5, align 8
  %261 = fneg double %260
  store double %261, ptr @A5, align 8
  %262 = load double, ptr @piref, align 8
  %263 = load double, ptr @three, align 8
  %264 = fmul double %263, %184
  %265 = fdiv double %262, %264
  %266 = call i32 @dtime(ptr noundef @TimeArray)
  br label %267

267:                                              ; preds = %287, %213
  %.516 = phi i32 [ 1, %213 ], [ %288, %287 ]
  %.6 = phi double [ 0.000000e+00, %213 ], [ %286, %287 ]
  %268 = icmp sle i32 %.516, %189
  br i1 %268, label %269, label %289

269:                                              ; preds = %267
  %270 = sitofp i32 %.516 to double
  %271 = fmul double %270, %265
  %272 = fmul double %271, %271
  %273 = load double, ptr @B6, align 8
  %274 = load double, ptr @B5, align 8
  %275 = call double @llvm.fmuladd.f64(double %273, double %272, double %274)
  %276 = load double, ptr @B4, align 8
  %277 = call double @llvm.fmuladd.f64(double %272, double %275, double %276)
  %278 = load double, ptr @B3, align 8
  %279 = call double @llvm.fmuladd.f64(double %272, double %277, double %278)
  %280 = load double, ptr @B2, align 8
  %281 = call double @llvm.fmuladd.f64(double %272, double %279, double %280)
  %282 = load double, ptr @B1, align 8
  %283 = call double @llvm.fmuladd.f64(double %272, double %281, double %282)
  %284 = call double @llvm.fmuladd.f64(double %272, double %283, double %.6)
  %285 = load double, ptr @one, align 8
  %286 = fadd double %284, %285
  br label %287

287:                                              ; preds = %269
  %288 = add nsw i32 %.516, 1
  br label %267, !llvm.loop !14

289:                                              ; preds = %267
  %290 = call i32 @dtime(ptr noundef @TimeArray)
  %291 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %292 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %293 = load double, ptr @nulltime, align 8
  %294 = fneg double %293
  %295 = call double @llvm.fmuladd.f64(double %291, double %292, double %294)
  store double %295, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %296 = load double, ptr @piref, align 8
  %297 = load double, ptr @three, align 8
  %298 = fdiv double %296, %297
  %299 = fmul double %298, %298
  %300 = load double, ptr @B6, align 8
  %301 = load double, ptr @B5, align 8
  %302 = call double @llvm.fmuladd.f64(double %300, double %299, double %301)
  %303 = load double, ptr @B4, align 8
  %304 = call double @llvm.fmuladd.f64(double %299, double %302, double %303)
  %305 = load double, ptr @B3, align 8
  %306 = call double @llvm.fmuladd.f64(double %299, double %304, double %305)
  %307 = load double, ptr @B2, align 8
  %308 = call double @llvm.fmuladd.f64(double %299, double %306, double %307)
  %309 = load double, ptr @B1, align 8
  %310 = call double @llvm.fmuladd.f64(double %299, double %308, double %309)
  %311 = load double, ptr @one, align 8
  %312 = call double @llvm.fmuladd.f64(double %299, double %310, double %311)
  store double %312, ptr @sa, align 8
  %313 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %314 = fdiv double %313, 1.500000e+01
  store double %314, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %315 = load double, ptr @sa, align 8
  %316 = load double, ptr @one, align 8
  %317 = fadd double %315, %316
  %318 = load double, ptr @two, align 8
  %319 = call double @llvm.fmuladd.f64(double %318, double %.6, double %317)
  %320 = fmul double %265, %319
  %321 = fdiv double %320, %318
  store double %321, ptr @sa, align 8
  %322 = load double, ptr @piref, align 8
  %323 = load double, ptr @three, align 8
  %324 = fdiv double %322, %323
  %325 = fmul double %324, %324
  %326 = load double, ptr @A6, align 8
  %327 = load double, ptr @A5, align 8
  %328 = call double @llvm.fmuladd.f64(double %326, double %325, double %327)
  %329 = load double, ptr @A4, align 8
  %330 = call double @llvm.fmuladd.f64(double %328, double %325, double %329)
  %331 = load double, ptr @A3, align 8
  %332 = call double @llvm.fmuladd.f64(double %330, double %325, double %331)
  %333 = load double, ptr @A2, align 8
  %334 = call double @llvm.fmuladd.f64(double %332, double %325, double %333)
  %335 = load double, ptr @A1, align 8
  %336 = call double @llvm.fmuladd.f64(double %334, double %325, double %335)
  %337 = load double, ptr @A0, align 8
  %338 = call double @llvm.fmuladd.f64(double %336, double %325, double %337)
  %339 = fmul double %324, %338
  store double %339, ptr @sb, align 8
  %340 = load double, ptr @sa, align 8
  %341 = fsub double %340, %339
  store double %341, ptr @sc, align 8
  %342 = load double, ptr @one, align 8
  %343 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %344 = fdiv double %342, %343
  store double %344, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %345 = load double, ptr @sc, align 8
  %346 = fmul double %345, 1.000000e-30
  %347 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %348 = fmul double %347, 1.000000e-30
  %349 = fmul double %344, 1.000000e-30
  %350 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %346, double noundef %348, double noundef %349)
  %351 = load double, ptr @piref, align 8
  %352 = load double, ptr @three, align 8
  %353 = fmul double %352, %184
  %354 = fdiv double %351, %353
  %355 = call i32 @dtime(ptr noundef @TimeArray)
  br label %356

356:                                              ; preds = %390, %289
  %.617 = phi i32 [ 1, %289 ], [ %391, %390 ]
  %.7 = phi double [ 0.000000e+00, %289 ], [ %389, %390 ]
  %357 = icmp sle i32 %.617, %189
  br i1 %357, label %358, label %392

358:                                              ; preds = %356
  %359 = sitofp i32 %.617 to double
  %360 = fmul double %359, %354
  %361 = fmul double %360, %360
  %362 = load double, ptr @A6, align 8
  %363 = load double, ptr @A5, align 8
  %364 = call double @llvm.fmuladd.f64(double %362, double %361, double %363)
  %365 = load double, ptr @A4, align 8
  %366 = call double @llvm.fmuladd.f64(double %364, double %361, double %365)
  %367 = load double, ptr @A3, align 8
  %368 = call double @llvm.fmuladd.f64(double %366, double %361, double %367)
  %369 = load double, ptr @A2, align 8
  %370 = call double @llvm.fmuladd.f64(double %368, double %361, double %369)
  %371 = load double, ptr @A1, align 8
  %372 = call double @llvm.fmuladd.f64(double %370, double %361, double %371)
  %373 = load double, ptr @one, align 8
  %374 = call double @llvm.fmuladd.f64(double %372, double %361, double %373)
  %375 = fmul double %360, %374
  %376 = load double, ptr @B6, align 8
  %377 = load double, ptr @B5, align 8
  %378 = call double @llvm.fmuladd.f64(double %376, double %361, double %377)
  %379 = load double, ptr @B4, align 8
  %380 = call double @llvm.fmuladd.f64(double %361, double %378, double %379)
  %381 = load double, ptr @B3, align 8
  %382 = call double @llvm.fmuladd.f64(double %361, double %380, double %381)
  %383 = load double, ptr @B2, align 8
  %384 = call double @llvm.fmuladd.f64(double %361, double %382, double %383)
  %385 = load double, ptr @B1, align 8
  %386 = call double @llvm.fmuladd.f64(double %361, double %384, double %385)
  %387 = call double @llvm.fmuladd.f64(double %361, double %386, double %373)
  %388 = fdiv double %375, %387
  %389 = fadd double %.7, %388
  br label %390

390:                                              ; preds = %358
  %391 = add nsw i32 %.617, 1
  br label %356, !llvm.loop !15

392:                                              ; preds = %356
  %393 = call i32 @dtime(ptr noundef @TimeArray)
  %394 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %395 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %396 = load double, ptr @nulltime, align 8
  %397 = fneg double %396
  %398 = call double @llvm.fmuladd.f64(double %394, double %395, double %397)
  store double %398, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %399 = load double, ptr @piref, align 8
  %400 = load double, ptr @three, align 8
  %401 = fdiv double %399, %400
  %402 = fmul double %401, %401
  %403 = load double, ptr @A6, align 8
  %404 = load double, ptr @A5, align 8
  %405 = call double @llvm.fmuladd.f64(double %403, double %402, double %404)
  %406 = load double, ptr @A4, align 8
  %407 = call double @llvm.fmuladd.f64(double %405, double %402, double %406)
  %408 = load double, ptr @A3, align 8
  %409 = call double @llvm.fmuladd.f64(double %407, double %402, double %408)
  %410 = load double, ptr @A2, align 8
  %411 = call double @llvm.fmuladd.f64(double %409, double %402, double %410)
  %412 = load double, ptr @A1, align 8
  %413 = call double @llvm.fmuladd.f64(double %411, double %402, double %412)
  %414 = load double, ptr @one, align 8
  %415 = call double @llvm.fmuladd.f64(double %413, double %402, double %414)
  %416 = fmul double %401, %415
  store double %416, ptr @sa, align 8
  %417 = load double, ptr @B6, align 8
  %418 = load double, ptr @B5, align 8
  %419 = call double @llvm.fmuladd.f64(double %417, double %402, double %418)
  %420 = load double, ptr @B4, align 8
  %421 = call double @llvm.fmuladd.f64(double %402, double %419, double %420)
  %422 = load double, ptr @B3, align 8
  %423 = call double @llvm.fmuladd.f64(double %402, double %421, double %422)
  %424 = load double, ptr @B2, align 8
  %425 = call double @llvm.fmuladd.f64(double %402, double %423, double %424)
  %426 = load double, ptr @B1, align 8
  %427 = call double @llvm.fmuladd.f64(double %402, double %425, double %426)
  %428 = load double, ptr @one, align 8
  %429 = call double @llvm.fmuladd.f64(double %402, double %427, double %428)
  store double %429, ptr @sb, align 8
  %430 = load double, ptr @sa, align 8
  %431 = fdiv double %430, %429
  store double %431, ptr @sa, align 8
  %432 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %433 = fdiv double %432, 2.900000e+01
  store double %433, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %434 = load double, ptr @sa, align 8
  %435 = load double, ptr @two, align 8
  %436 = call double @llvm.fmuladd.f64(double %435, double %.7, double %434)
  %437 = fmul double %354, %436
  %438 = fdiv double %437, %435
  store double %438, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %439 = load double, ptr @sa, align 8
  %440 = fsub double %439, f0x3FE62E42FEFA39EF
  store double %440, ptr @sc, align 8
  %441 = load double, ptr @one, align 8
  %442 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %443 = fdiv double %441, %442
  store double %443, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %444 = load double, ptr @sc, align 8
  %445 = fmul double %444, 1.000000e-30
  %446 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %447 = fmul double %446, 1.000000e-30
  %448 = fmul double %443, 1.000000e-30
  %449 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %445, double noundef %447, double noundef %448)
  %450 = load double, ptr @piref, align 8
  %451 = load double, ptr @four, align 8
  %452 = fmul double %451, %184
  %453 = fdiv double %450, %452
  %454 = call i32 @dtime(ptr noundef @TimeArray)
  br label %455

455:                                              ; preds = %488, %392
  %.718 = phi i32 [ 1, %392 ], [ %489, %488 ]
  %.8 = phi double [ 0.000000e+00, %392 ], [ %487, %488 ]
  %456 = icmp sle i32 %.718, %189
  br i1 %456, label %457, label %490

457:                                              ; preds = %455
  %458 = sitofp i32 %.718 to double
  %459 = fmul double %458, %453
  %460 = fmul double %459, %459
  %461 = load double, ptr @A6, align 8
  %462 = load double, ptr @A5, align 8
  %463 = call double @llvm.fmuladd.f64(double %461, double %460, double %462)
  %464 = load double, ptr @A4, align 8
  %465 = call double @llvm.fmuladd.f64(double %463, double %460, double %464)
  %466 = load double, ptr @A3, align 8
  %467 = call double @llvm.fmuladd.f64(double %465, double %460, double %466)
  %468 = load double, ptr @A2, align 8
  %469 = call double @llvm.fmuladd.f64(double %467, double %460, double %468)
  %470 = load double, ptr @A1, align 8
  %471 = call double @llvm.fmuladd.f64(double %469, double %460, double %470)
  %472 = load double, ptr @one, align 8
  %473 = call double @llvm.fmuladd.f64(double %471, double %460, double %472)
  %474 = fmul double %459, %473
  %475 = load double, ptr @B6, align 8
  %476 = load double, ptr @B5, align 8
  %477 = call double @llvm.fmuladd.f64(double %475, double %460, double %476)
  %478 = load double, ptr @B4, align 8
  %479 = call double @llvm.fmuladd.f64(double %460, double %477, double %478)
  %480 = load double, ptr @B3, align 8
  %481 = call double @llvm.fmuladd.f64(double %460, double %479, double %480)
  %482 = load double, ptr @B2, align 8
  %483 = call double @llvm.fmuladd.f64(double %460, double %481, double %482)
  %484 = load double, ptr @B1, align 8
  %485 = call double @llvm.fmuladd.f64(double %460, double %483, double %484)
  %486 = call double @llvm.fmuladd.f64(double %460, double %485, double %472)
  %487 = call double @llvm.fmuladd.f64(double %474, double %486, double %.8)
  br label %488

488:                                              ; preds = %457
  %489 = add nsw i32 %.718, 1
  br label %455, !llvm.loop !16

490:                                              ; preds = %455
  %491 = call i32 @dtime(ptr noundef @TimeArray)
  %492 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %493 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %494 = load double, ptr @nulltime, align 8
  %495 = fneg double %494
  %496 = call double @llvm.fmuladd.f64(double %492, double %493, double %495)
  store double %496, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %497 = load double, ptr @piref, align 8
  %498 = load double, ptr @four, align 8
  %499 = fdiv double %497, %498
  %500 = fmul double %499, %499
  %501 = load double, ptr @A6, align 8
  %502 = load double, ptr @A5, align 8
  %503 = call double @llvm.fmuladd.f64(double %501, double %500, double %502)
  %504 = load double, ptr @A4, align 8
  %505 = call double @llvm.fmuladd.f64(double %503, double %500, double %504)
  %506 = load double, ptr @A3, align 8
  %507 = call double @llvm.fmuladd.f64(double %505, double %500, double %506)
  %508 = load double, ptr @A2, align 8
  %509 = call double @llvm.fmuladd.f64(double %507, double %500, double %508)
  %510 = load double, ptr @A1, align 8
  %511 = call double @llvm.fmuladd.f64(double %509, double %500, double %510)
  %512 = load double, ptr @one, align 8
  %513 = call double @llvm.fmuladd.f64(double %511, double %500, double %512)
  %514 = fmul double %499, %513
  store double %514, ptr @sa, align 8
  %515 = load double, ptr @B6, align 8
  %516 = load double, ptr @B5, align 8
  %517 = call double @llvm.fmuladd.f64(double %515, double %500, double %516)
  %518 = load double, ptr @B4, align 8
  %519 = call double @llvm.fmuladd.f64(double %500, double %517, double %518)
  %520 = load double, ptr @B3, align 8
  %521 = call double @llvm.fmuladd.f64(double %500, double %519, double %520)
  %522 = load double, ptr @B2, align 8
  %523 = call double @llvm.fmuladd.f64(double %500, double %521, double %522)
  %524 = load double, ptr @B1, align 8
  %525 = call double @llvm.fmuladd.f64(double %500, double %523, double %524)
  %526 = load double, ptr @one, align 8
  %527 = call double @llvm.fmuladd.f64(double %500, double %525, double %526)
  store double %527, ptr @sb, align 8
  %528 = load double, ptr @sa, align 8
  %529 = fmul double %528, %527
  store double %529, ptr @sa, align 8
  %530 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %531 = fdiv double %530, 2.900000e+01
  store double %531, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %532 = load double, ptr @sa, align 8
  %533 = load double, ptr @two, align 8
  %534 = call double @llvm.fmuladd.f64(double %533, double %.8, double %532)
  %535 = fmul double %453, %534
  %536 = fdiv double %535, %533
  store double %536, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %537 = load double, ptr @sa, align 8
  %538 = fsub double %537, 2.500000e-01
  store double %538, ptr @sc, align 8
  %539 = load double, ptr @one, align 8
  %540 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %541 = fdiv double %539, %540
  store double %541, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %542 = load double, ptr @sc, align 8
  %543 = fmul double %542, 1.000000e-30
  %544 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %545 = fmul double %544, 1.000000e-30
  %546 = fmul double %541, 1.000000e-30
  %547 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, double noundef %543, double noundef %545, double noundef %546)
  %548 = load double, ptr @one, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %549 = fdiv double f0x40599541F7F192A4, %184
  %550 = call i32 @dtime(ptr noundef @TimeArray)
  br label %551

551:                                              ; preds = %566, %490
  %.819 = phi i32 [ 1, %490 ], [ %567, %566 ]
  %.9 = phi double [ 0.000000e+00, %490 ], [ %565, %566 ]
  %552 = icmp sle i32 %.819, %189
  br i1 %552, label %553, label %568

553:                                              ; preds = %551
  %554 = sitofp i32 %.819 to double
  %555 = fmul double %554, %549
  %556 = fmul double %555, %555
  %557 = fadd double %555, %548
  %558 = fdiv double %548, %557
  %559 = fsub double %.9, %558
  %560 = fadd double %556, %548
  %561 = fdiv double %555, %560
  %562 = fsub double %559, %561
  %563 = call double @llvm.fmuladd.f64(double %555, double %556, double %548)
  %564 = fdiv double %556, %563
  %565 = fsub double %562, %564
  br label %566

566:                                              ; preds = %553
  %567 = add nsw i32 %.819, 1
  br label %551, !llvm.loop !17

568:                                              ; preds = %551
  %569 = call i32 @dtime(ptr noundef @TimeArray)
  %570 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %571 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %572 = load double, ptr @nulltime, align 8
  %573 = fneg double %572
  %574 = call double @llvm.fmuladd.f64(double %570, double %571, double %573)
  store double %574, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %575 = fdiv double %574, 1.200000e+01
  store double %575, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %576 = load double, ptr @sa, align 8
  %577 = fmul double %576, %576
  %578 = fneg double %548
  %579 = fadd double %576, %548
  %580 = fdiv double %548, %579
  %581 = fsub double %578, %580
  %582 = fadd double %577, %548
  %583 = fdiv double %576, %582
  %584 = fsub double %581, %583
  %585 = call double @llvm.fmuladd.f64(double %576, double %577, double %548)
  %586 = fdiv double %577, %585
  %587 = fsub double %584, %586
  store double %587, ptr @sa, align 8
  %588 = fmul double 1.800000e+01, %549
  %589 = load double, ptr @two, align 8
  %590 = call double @llvm.fmuladd.f64(double %589, double %.9, double %587)
  %591 = fmul double %588, %590
  store double %591, ptr @sa, align 8
  %592 = fptosi double %591 to i32
  %593 = mul nsw i32 -2000, %592
  %594 = sitofp i32 %593 to double
  %595 = load double, ptr @scale, align 8
  %596 = fdiv double %594, %595
  %597 = fptosi double %596 to i32
  %598 = fadd double %591, 5.002000e+02
  store double %598, ptr @sc, align 8
  %599 = load double, ptr @one, align 8
  %600 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %601 = fdiv double %599, %600
  store double %601, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %602 = load double, ptr @sc, align 8
  %603 = fmul double %602, 1.000000e-30
  %604 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %605 = fmul double %604, 1.000000e-30
  %606 = fmul double %601, 1.000000e-30
  %607 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, double noundef %603, double noundef %605, double noundef %606)
  %608 = load double, ptr @piref, align 8
  %609 = load double, ptr @three, align 8
  %610 = sitofp i32 %597 to double
  %611 = fmul double %609, %610
  %612 = fdiv double %608, %611
  %613 = call i32 @dtime(ptr noundef @TimeArray)
  br label %614

614:                                              ; preds = %649, %568
  %.920 = phi i32 [ 1, %568 ], [ %650, %649 ]
  %.10 = phi double [ 0.000000e+00, %568 ], [ %648, %649 ]
  %615 = sub nsw i32 %597, 1
  %616 = icmp sle i32 %.920, %615
  br i1 %616, label %617, label %651

617:                                              ; preds = %614
  %618 = sitofp i32 %.920 to double
  %619 = fmul double %618, %612
  %620 = fmul double %619, %619
  %621 = load double, ptr @B6, align 8
  %622 = load double, ptr @B5, align 8
  %623 = call double @llvm.fmuladd.f64(double %621, double %620, double %622)
  %624 = load double, ptr @B4, align 8
  %625 = call double @llvm.fmuladd.f64(double %620, double %623, double %624)
  %626 = load double, ptr @B3, align 8
  %627 = call double @llvm.fmuladd.f64(double %620, double %625, double %626)
  %628 = load double, ptr @B2, align 8
  %629 = call double @llvm.fmuladd.f64(double %620, double %627, double %628)
  %630 = load double, ptr @B1, align 8
  %631 = call double @llvm.fmuladd.f64(double %620, double %629, double %630)
  %632 = load double, ptr @one, align 8
  %633 = call double @llvm.fmuladd.f64(double %620, double %631, double %632)
  %634 = fmul double %633, %633
  %635 = fmul double %634, %619
  %636 = load double, ptr @A6, align 8
  %637 = load double, ptr @A5, align 8
  %638 = call double @llvm.fmuladd.f64(double %636, double %620, double %637)
  %639 = load double, ptr @A4, align 8
  %640 = call double @llvm.fmuladd.f64(double %638, double %620, double %639)
  %641 = load double, ptr @A3, align 8
  %642 = call double @llvm.fmuladd.f64(double %640, double %620, double %641)
  %643 = load double, ptr @A2, align 8
  %644 = call double @llvm.fmuladd.f64(double %642, double %620, double %643)
  %645 = load double, ptr @A1, align 8
  %646 = call double @llvm.fmuladd.f64(double %644, double %620, double %645)
  %647 = call double @llvm.fmuladd.f64(double %646, double %620, double %632)
  %648 = call double @llvm.fmuladd.f64(double %635, double %647, double %.10)
  br label %649

649:                                              ; preds = %617
  %650 = add nsw i32 %.920, 1
  br label %614, !llvm.loop !18

651:                                              ; preds = %614
  %652 = call i32 @dtime(ptr noundef @TimeArray)
  %653 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %654 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %655 = load double, ptr @nulltime, align 8
  %656 = fneg double %655
  %657 = call double @llvm.fmuladd.f64(double %653, double %654, double %656)
  store double %657, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %658 = load double, ptr @piref, align 8
  %659 = load double, ptr @three, align 8
  %660 = fdiv double %658, %659
  %661 = fmul double %660, %660
  %662 = load double, ptr @A6, align 8
  %663 = load double, ptr @A5, align 8
  %664 = call double @llvm.fmuladd.f64(double %662, double %661, double %663)
  %665 = load double, ptr @A4, align 8
  %666 = call double @llvm.fmuladd.f64(double %664, double %661, double %665)
  %667 = load double, ptr @A3, align 8
  %668 = call double @llvm.fmuladd.f64(double %666, double %661, double %667)
  %669 = load double, ptr @A2, align 8
  %670 = call double @llvm.fmuladd.f64(double %668, double %661, double %669)
  %671 = load double, ptr @A1, align 8
  %672 = call double @llvm.fmuladd.f64(double %670, double %661, double %671)
  %673 = load double, ptr @one, align 8
  %674 = call double @llvm.fmuladd.f64(double %672, double %661, double %673)
  %675 = fmul double %660, %674
  store double %675, ptr @sa, align 8
  %676 = load double, ptr @B6, align 8
  %677 = load double, ptr @B5, align 8
  %678 = call double @llvm.fmuladd.f64(double %676, double %661, double %677)
  %679 = load double, ptr @B4, align 8
  %680 = call double @llvm.fmuladd.f64(double %661, double %678, double %679)
  %681 = load double, ptr @B3, align 8
  %682 = call double @llvm.fmuladd.f64(double %661, double %680, double %681)
  %683 = load double, ptr @B2, align 8
  %684 = call double @llvm.fmuladd.f64(double %661, double %682, double %683)
  %685 = load double, ptr @B1, align 8
  %686 = call double @llvm.fmuladd.f64(double %661, double %684, double %685)
  %687 = load double, ptr @one, align 8
  %688 = call double @llvm.fmuladd.f64(double %661, double %686, double %687)
  store double %688, ptr @sb, align 8
  %689 = load double, ptr @sa, align 8
  %690 = fmul double %689, %688
  %691 = fmul double %690, %688
  store double %691, ptr @sa, align 8
  %692 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %693 = fdiv double %692, 3.000000e+01
  store double %693, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %694 = load double, ptr @sa, align 8
  %695 = load double, ptr @two, align 8
  %696 = call double @llvm.fmuladd.f64(double %695, double %.10, double %694)
  %697 = fmul double %612, %696
  %698 = fdiv double %697, %695
  store double %698, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %699 = load double, ptr @sa, align 8
  %700 = fsub double %699, f0x3FD2AAAAAAAAAAAB
  store double %700, ptr @sc, align 8
  %701 = load double, ptr @one, align 8
  %702 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %703 = fdiv double %701, %702
  store double %703, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %704 = load double, ptr @sc, align 8
  %705 = fmul double %704, 1.000000e-30
  %706 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %707 = fmul double %706, 1.000000e-30
  %708 = fmul double %703, 1.000000e-30
  %709 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, double noundef %705, double noundef %707, double noundef %708)
  %710 = load double, ptr @five, align 8
  %711 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %712 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %713 = fsub double %711, %712
  %714 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %715 = call double @llvm.fmuladd.f64(double %710, double %713, double %714)
  %716 = fdiv double %715, 5.200000e+01
  store double %716, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %717 = load double, ptr @one, align 8
  %718 = fdiv double %717, %716
  store double %718, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %719 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %720 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %721 = fadd double %719, %720
  %722 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %723 = fadd double %721, %722
  %724 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %725 = fadd double %723, %724
  %726 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %727 = fadd double %725, %726
  store double %727, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %728 = load double, ptr @four, align 8
  %729 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %730 = call double @llvm.fmuladd.f64(double %728, double %729, double %727)
  %731 = fdiv double %730, 1.520000e+02
  store double %731, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %732 = load double, ptr @one, align 8
  %733 = fdiv double %732, %731
  store double %733, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %734 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %735 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %736 = fadd double %734, %735
  %737 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %738 = fadd double %736, %737
  %739 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %740 = fadd double %738, %739
  %741 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %742 = fadd double %740, %741
  store double %742, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %743 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %744 = fadd double %742, %743
  %745 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %746 = fadd double %744, %745
  %747 = fdiv double %746, 1.460000e+02
  store double %747, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %748 = load double, ptr @one, align 8
  %749 = fdiv double %748, %747
  store double %749, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %750 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %751 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %752 = fadd double %750, %751
  %753 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %754 = fadd double %752, %753
  %755 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %756 = fadd double %754, %755
  %757 = fdiv double %756, 9.100000e+01
  store double %757, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %758 = load double, ptr @one, align 8
  %759 = fdiv double %758, %757
  store double %759, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %760 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %761 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %597)
  %762 = load double, ptr @nulltime, align 8
  %763 = fmul double %762, 1.000000e-30
  %764 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, double noundef %763)
  %765 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %766 = fmul double %765, 1.000000e-30
  %767 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, double noundef %766)
  %768 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %769 = fmul double %768, 1.000000e-30
  %770 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, double noundef %769)
  %771 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %772 = fmul double %771, 1.000000e-30
  %773 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, double noundef %772)
  %774 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %775 = fmul double %774, 1.000000e-30
  %776 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, double noundef %775)
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
