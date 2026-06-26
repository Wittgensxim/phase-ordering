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

10:                                               ; preds = %47, %0
  %.0284 = phi double [ undef, %0 ], [ %18, %47 ]
  %.0273 = phi double [ undef, %0 ], [ %.2275.lcssa, %47 ]
  %.0 = phi i32 [ 15625, %0 ], [ %15, %47 ]
  %11 = load double, ptr @sa, align 8
  %12 = load double, ptr @TLimit, align 8
  %13 = fcmp olt double %11, %12
  br i1 %13, label %14, label %.loopexit

14:                                               ; preds = %10
  %15 = mul nuw i32 2, %.0
  %16 = load double, ptr @one, align 8
  %17 = sitofp i32 %15 to double
  %18 = fdiv double %16, %17
  %19 = load double, ptr @one, align 8
  %20 = call i32 @dtime(ptr noundef @TimeArray)
  %21 = add i32 %15, -1
  %smax = call i32 @llvm.smax.i32(i32 %21, i32 0)
  %22 = add nuw i32 %smax, 1
  br label %23

23:                                               ; preds = %40, %14
  %.0288 = phi double [ 0.000000e+00, %14 ], [ %25, %40 ]
  %.2275 = phi double [ 0.000000e+00, %14 ], [ %39, %40 ]
  %.0271 = phi i32 [ 1, %14 ], [ %41, %40 ]
  %exitcond = icmp ne i32 %.0271, %22
  br i1 %exitcond, label %24, label %42

24:                                               ; preds = %23
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
  br label %40

40:                                               ; preds = %24
  %41 = add nuw i32 %.0271, 1
  br label %23, !llvm.loop !7

42:                                               ; preds = %23
  %.2275.lcssa = phi double [ %.2275, %23 ]
  %43 = call i32 @dtime(ptr noundef @TimeArray)
  %44 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %44, ptr @sa, align 8
  %45 = icmp eq i32 %15, 512000000
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  %.lcssa = phi double [ %18, %42 ]
  %.2275.lcssa.lcssa = phi double [ %.2275.lcssa, %42 ]
  br label %48

47:                                               ; preds = %42
  br label %10, !llvm.loop !9

.loopexit:                                        ; preds = %10
  %.0284.lcssa = phi double [ %.0284, %10 ]
  %.0273.lcssa = phi double [ %.0273, %10 ]
  br label %48

48:                                               ; preds = %.loopexit, %46
  %.1285 = phi double [ %.lcssa, %46 ], [ %.0284.lcssa, %.loopexit ]
  %.1274 = phi double [ %.2275.lcssa.lcssa, %46 ], [ %.0273.lcssa, %.loopexit ]
  store double 1.589500e-02, ptr @scale, align 8
  %49 = load double, ptr @scale, align 8
  store double %49, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %50 = call i32 @dtime(ptr noundef @TimeArray)
  br label %51

51:                                               ; preds = %53, %48
  br i1 false, label %52, label %54

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52
  br label %51, !llvm.loop !10

54:                                               ; preds = %51
  %55 = call i32 @dtime(ptr noundef @TimeArray)
  %56 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %57 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %58 = fmul double %56, %57
  store double %58, ptr @nulltime, align 8
  %59 = load double, ptr @nulltime, align 8
  %60 = fcmp olt double %59, 0.000000e+00
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store double 0.000000e+00, ptr @nulltime, align 8
  br label %62

62:                                               ; preds = %61, %54
  %63 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %64 = load double, ptr @sa, align 8
  %65 = load double, ptr @nulltime, align 8
  %66 = fneg double %65
  %67 = call double @llvm.fmuladd.f64(double %63, double %64, double %66)
  store double %67, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %68 = load double, ptr @D1, align 8
  %69 = load double, ptr @D2, align 8
  %70 = fadd double %68, %69
  %71 = load double, ptr @D3, align 8
  %72 = fadd double %70, %71
  %73 = load double, ptr @one, align 8
  %74 = load double, ptr @D1, align 8
  %75 = fadd double %73, %74
  %76 = load double, ptr @E2, align 8
  %77 = fadd double %75, %76
  %78 = load double, ptr @E3, align 8
  %79 = fadd double %77, %78
  %80 = fdiv double %72, %79
  store double %80, ptr @sa, align 8
  %81 = load double, ptr @D1, align 8
  store double %81, ptr @sb, align 8
  %82 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %83 = fdiv double %82, 1.400000e+01
  store double %83, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %84 = load double, ptr @sa, align 8
  %85 = load double, ptr @sb, align 8
  %86 = fadd double %84, %85
  %87 = load double, ptr @two, align 8
  %88 = call double @llvm.fmuladd.f64(double %87, double %.1274, double %86)
  %89 = fmul double %.1285, %88
  %90 = load double, ptr @two, align 8
  %91 = fdiv double %89, %90
  store double %91, ptr @sa, align 8
  %92 = load double, ptr @one, align 8
  %93 = load double, ptr @sa, align 8
  %94 = fdiv double %92, %93
  store double %94, ptr @sb, align 8
  %95 = load double, ptr @sb, align 8
  %96 = fptosi double %95 to i32
  %97 = mul nsw i32 40000, %96
  %98 = sitofp i32 %97 to double
  %99 = load double, ptr @scale, align 8
  %100 = fdiv double %98, %99
  %101 = fptosi double %100 to i32
  %102 = load double, ptr @sb, align 8
  %103 = fsub double %102, 2.520000e+01
  store double %103, ptr @sc, align 8
  %104 = load double, ptr @one, align 8
  %105 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %106 = fdiv double %104, %105
  store double %106, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %107 = load double, ptr @sc, align 8
  %108 = fmul double %107, 1.000000e-30
  %109 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %110 = fmul double %109, 1.000000e-30
  %111 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %112 = fmul double %111, 1.000000e-30
  %113 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %108, double noundef %110, double noundef %112)
  %114 = load double, ptr @five, align 8
  %115 = fneg double %114
  %116 = load double, ptr @one, align 8
  %117 = fneg double %116
  store double %117, ptr @sa, align 8
  %118 = call i32 @dtime(ptr noundef @TimeArray)
  %smax295 = call i32 @llvm.smax.i32(i32 %101, i32 0)
  %119 = add nuw i32 %smax295, 1
  br label %120

120:                                              ; preds = %125, %62
  %.3276 = phi double [ %115, %62 ], [ %122, %125 ]
  %.2 = phi i32 [ 1, %62 ], [ %126, %125 ]
  %exitcond296 = icmp ne i32 %.2, %119
  br i1 %exitcond296, label %121, label %127

121:                                              ; preds = %120
  %122 = fneg double %.3276
  %123 = load double, ptr @sa, align 8
  %124 = fadd double %123, %122
  store double %124, ptr @sa, align 8
  br label %125

125:                                              ; preds = %121
  %126 = add nuw i32 %.2, 1
  br label %120, !llvm.loop !11

127:                                              ; preds = %120
  %.3276.lcssa = phi double [ %.3276, %120 ]
  %128 = call i32 @dtime(ptr noundef @TimeArray)
  %129 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %130 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %131 = fmul double %129, %130
  store double %131, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %132 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %133 = fcmp olt double %132, 0.000000e+00
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  br label %135

135:                                              ; preds = %134, %127
  %136 = sitofp i32 %101 to double
  store double %136, ptr @sc, align 8
  %137 = load double, ptr @sa, align 8
  %138 = call i32 @dtime(ptr noundef @TimeArray)
  %smax297 = call i32 @llvm.smax.i32(i32 %101, i32 0)
  %139 = add nuw i32 %smax297, 1
  br label %140

140:                                              ; preds = %153, %135
  %.1289 = phi double [ 0.000000e+00, %135 ], [ %150, %153 ]
  %.0287 = phi double [ 0.000000e+00, %135 ], [ %152, %153 ]
  %.2286 = phi double [ 0.000000e+00, %135 ], [ %148, %153 ]
  %.0283 = phi double [ %137, %135 ], [ %146, %153 ]
  %.4277 = phi double [ %.3276.lcssa, %135 ], [ %142, %153 ]
  %.3 = phi i32 [ 1, %135 ], [ %154, %153 ]
  %exitcond298 = icmp ne i32 %.3, %139
  br i1 %exitcond298, label %141, label %155

141:                                              ; preds = %140
  %142 = fneg double %.4277
  %143 = load double, ptr @sa, align 8
  %144 = fadd double %143, %142
  store double %144, ptr @sa, align 8
  %145 = load double, ptr @two, align 8
  %146 = fadd double %.0283, %145
  %147 = fsub double %142, %146
  %148 = fadd double %.2286, %147
  %149 = fneg double %142
  %150 = call double @llvm.fmuladd.f64(double %149, double %146, double %.1289)
  %151 = fdiv double %142, %146
  %152 = fadd double %.0287, %151
  br label %153

153:                                              ; preds = %141
  %154 = add nuw i32 %.3, 1
  br label %140, !llvm.loop !12

155:                                              ; preds = %140
  %.1289.lcssa = phi double [ %.1289, %140 ]
  %.0287.lcssa = phi double [ %.0287, %140 ]
  %.2286.lcssa = phi double [ %.2286, %140 ]
  %156 = call i32 @dtime(ptr noundef @TimeArray)
  %157 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %158 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %159 = fmul double %157, %158
  store double %159, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %160 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %161 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %162 = fsub double %160, %161
  %163 = fdiv double %162, 7.000000e+00
  store double %163, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %164 = load double, ptr @sa, align 8
  %165 = fmul double %164, %.2286.lcssa
  %166 = load double, ptr @sc, align 8
  %167 = fdiv double %165, %166
  %168 = fptosi double %167 to i32
  %169 = load double, ptr @four, align 8
  %170 = fmul double %169, %.0287.lcssa
  %171 = load double, ptr @five, align 8
  %172 = fdiv double %170, %171
  store double %172, ptr @sa, align 8
  %173 = load double, ptr @sa, align 8
  %174 = load double, ptr @five, align 8
  %175 = fdiv double %174, %.1289.lcssa
  %176 = fadd double %173, %175
  store double %176, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %177 = load double, ptr @sb, align 8
  %178 = load double, ptr @sc, align 8
  %179 = fmul double %.1289.lcssa, %.1289.lcssa
  %180 = fmul double %179, %.1289.lcssa
  %181 = fdiv double %178, %180
  %182 = fsub double %177, %181
  store double %182, ptr @piprg, align 8
  %183 = load double, ptr @piprg, align 8
  %184 = load double, ptr @piref, align 8
  %185 = fsub double %183, %184
  store double %185, ptr @pierr, align 8
  %186 = load double, ptr @one, align 8
  %187 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %188 = fdiv double %186, %187
  store double %188, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %189 = load double, ptr @pierr, align 8
  %190 = fmul double %189, 1.000000e-30
  %191 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %192 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %193 = fsub double %191, %192
  %194 = fmul double %193, 1.000000e-30
  %195 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %196 = fmul double %195, 1.000000e-30
  %197 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %190, double noundef %194, double noundef %196)
  %198 = load double, ptr @piref, align 8
  %199 = load double, ptr @three, align 8
  %200 = sitofp i32 %168 to double
  %201 = fmul double %199, %200
  %202 = fdiv double %198, %201
  %203 = call i32 @dtime(ptr noundef @TimeArray)
  %204 = add i32 %168, -1
  %smax299 = call i32 @llvm.smax.i32(i32 %204, i32 0)
  %205 = add nuw i32 %smax299, 1
  br label %206

206:                                              ; preds = %228, %155
  %.2290 = phi double [ 0.000000e+00, %155 ], [ %209, %228 ]
  %.5278 = phi double [ 0.000000e+00, %155 ], [ %227, %228 ]
  %.4 = phi i32 [ 1, %155 ], [ %229, %228 ]
  %exitcond300 = icmp ne i32 %.4, %205
  br i1 %exitcond300, label %207, label %230

207:                                              ; preds = %206
  %208 = load double, ptr @one, align 8
  %209 = fadd double %.2290, %208
  %210 = fmul double %209, %202
  %211 = fmul double %210, %210
  %212 = load double, ptr @A6, align 8
  %213 = load double, ptr @A5, align 8
  %214 = fneg double %213
  %215 = call double @llvm.fmuladd.f64(double %212, double %211, double %214)
  %216 = load double, ptr @A4, align 8
  %217 = call double @llvm.fmuladd.f64(double %215, double %211, double %216)
  %218 = load double, ptr @A3, align 8
  %219 = fneg double %218
  %220 = call double @llvm.fmuladd.f64(double %217, double %211, double %219)
  %221 = load double, ptr @A2, align 8
  %222 = call double @llvm.fmuladd.f64(double %220, double %211, double %221)
  %223 = load double, ptr @A1, align 8
  %224 = call double @llvm.fmuladd.f64(double %222, double %211, double %223)
  %225 = load double, ptr @one, align 8
  %226 = call double @llvm.fmuladd.f64(double %224, double %211, double %225)
  %227 = call double @llvm.fmuladd.f64(double %210, double %226, double %.5278)
  br label %228

228:                                              ; preds = %207
  %229 = add nuw i32 %.4, 1
  br label %206, !llvm.loop !13

230:                                              ; preds = %206
  %.5278.lcssa = phi double [ %.5278, %206 ]
  %231 = call i32 @dtime(ptr noundef @TimeArray)
  %232 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %233 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %234 = load double, ptr @nulltime, align 8
  %235 = fneg double %234
  %236 = call double @llvm.fmuladd.f64(double %232, double %233, double %235)
  store double %236, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %237 = load double, ptr @piref, align 8
  %238 = load double, ptr @three, align 8
  %239 = fdiv double %237, %238
  %240 = fmul double %239, %239
  %241 = load double, ptr @A6, align 8
  %242 = load double, ptr @A5, align 8
  %243 = fneg double %242
  %244 = call double @llvm.fmuladd.f64(double %241, double %240, double %243)
  %245 = load double, ptr @A4, align 8
  %246 = call double @llvm.fmuladd.f64(double %244, double %240, double %245)
  %247 = load double, ptr @A3, align 8
  %248 = fneg double %247
  %249 = call double @llvm.fmuladd.f64(double %246, double %240, double %248)
  %250 = load double, ptr @A2, align 8
  %251 = call double @llvm.fmuladd.f64(double %249, double %240, double %250)
  %252 = load double, ptr @A1, align 8
  %253 = call double @llvm.fmuladd.f64(double %251, double %240, double %252)
  %254 = load double, ptr @one, align 8
  %255 = call double @llvm.fmuladd.f64(double %253, double %240, double %254)
  %256 = fmul double %239, %255
  store double %256, ptr @sa, align 8
  %257 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %258 = fdiv double %257, 1.700000e+01
  store double %258, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %259 = load double, ptr @sa, align 8
  %260 = load double, ptr @two, align 8
  %261 = call double @llvm.fmuladd.f64(double %260, double %.5278.lcssa, double %259)
  %262 = fmul double %202, %261
  %263 = load double, ptr @two, align 8
  %264 = fdiv double %262, %263
  store double %264, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %265 = load double, ptr @sa, align 8
  %266 = load double, ptr @sb, align 8
  %267 = fsub double %265, %266
  store double %267, ptr @sc, align 8
  %268 = load double, ptr @one, align 8
  %269 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %270 = fdiv double %268, %269
  store double %270, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %271 = load double, ptr @sc, align 8
  %272 = fmul double %271, 1.000000e-30
  %273 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %274 = fmul double %273, 1.000000e-30
  %275 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %276 = fmul double %275, 1.000000e-30
  %277 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %272, double noundef %274, double noundef %276)
  %278 = load double, ptr @A3, align 8
  %279 = fneg double %278
  store double %279, ptr @A3, align 8
  %280 = load double, ptr @A5, align 8
  %281 = fneg double %280
  store double %281, ptr @A5, align 8
  %282 = load double, ptr @piref, align 8
  %283 = load double, ptr @three, align 8
  %284 = sitofp i32 %168 to double
  %285 = fmul double %283, %284
  %286 = fdiv double %282, %285
  %287 = call i32 @dtime(ptr noundef @TimeArray)
  br label %288

288:                                              ; preds = %307, %230
  %.6279 = phi double [ 0.000000e+00, %230 ], [ %306, %307 ]
  %.5 = phi i32 [ 1, %230 ], [ %308, %307 ]
  %exitcond301 = icmp ne i32 %.5, %205
  br i1 %exitcond301, label %289, label %309

289:                                              ; preds = %288
  %290 = sitofp i32 %.5 to double
  %291 = fmul double %290, %286
  %292 = fmul double %291, %291
  %293 = load double, ptr @B6, align 8
  %294 = load double, ptr @B5, align 8
  %295 = call double @llvm.fmuladd.f64(double %293, double %292, double %294)
  %296 = load double, ptr @B4, align 8
  %297 = call double @llvm.fmuladd.f64(double %292, double %295, double %296)
  %298 = load double, ptr @B3, align 8
  %299 = call double @llvm.fmuladd.f64(double %292, double %297, double %298)
  %300 = load double, ptr @B2, align 8
  %301 = call double @llvm.fmuladd.f64(double %292, double %299, double %300)
  %302 = load double, ptr @B1, align 8
  %303 = call double @llvm.fmuladd.f64(double %292, double %301, double %302)
  %304 = call double @llvm.fmuladd.f64(double %292, double %303, double %.6279)
  %305 = load double, ptr @one, align 8
  %306 = fadd double %304, %305
  br label %307

307:                                              ; preds = %289
  %308 = add nuw i32 %.5, 1
  br label %288, !llvm.loop !14

309:                                              ; preds = %288
  %.6279.lcssa = phi double [ %.6279, %288 ]
  %310 = call i32 @dtime(ptr noundef @TimeArray)
  %311 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %312 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %313 = load double, ptr @nulltime, align 8
  %314 = fneg double %313
  %315 = call double @llvm.fmuladd.f64(double %311, double %312, double %314)
  store double %315, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %316 = load double, ptr @piref, align 8
  %317 = load double, ptr @three, align 8
  %318 = fdiv double %316, %317
  %319 = fmul double %318, %318
  %320 = load double, ptr @B6, align 8
  %321 = load double, ptr @B5, align 8
  %322 = call double @llvm.fmuladd.f64(double %320, double %319, double %321)
  %323 = load double, ptr @B4, align 8
  %324 = call double @llvm.fmuladd.f64(double %319, double %322, double %323)
  %325 = load double, ptr @B3, align 8
  %326 = call double @llvm.fmuladd.f64(double %319, double %324, double %325)
  %327 = load double, ptr @B2, align 8
  %328 = call double @llvm.fmuladd.f64(double %319, double %326, double %327)
  %329 = load double, ptr @B1, align 8
  %330 = call double @llvm.fmuladd.f64(double %319, double %328, double %329)
  %331 = load double, ptr @one, align 8
  %332 = call double @llvm.fmuladd.f64(double %319, double %330, double %331)
  store double %332, ptr @sa, align 8
  %333 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %334 = fdiv double %333, 1.500000e+01
  store double %334, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %335 = load double, ptr @sa, align 8
  %336 = load double, ptr @one, align 8
  %337 = fadd double %335, %336
  %338 = load double, ptr @two, align 8
  %339 = call double @llvm.fmuladd.f64(double %338, double %.6279.lcssa, double %337)
  %340 = fmul double %286, %339
  %341 = load double, ptr @two, align 8
  %342 = fdiv double %340, %341
  store double %342, ptr @sa, align 8
  %343 = load double, ptr @piref, align 8
  %344 = load double, ptr @three, align 8
  %345 = fdiv double %343, %344
  %346 = fmul double %345, %345
  %347 = load double, ptr @A6, align 8
  %348 = load double, ptr @A5, align 8
  %349 = call double @llvm.fmuladd.f64(double %347, double %346, double %348)
  %350 = load double, ptr @A4, align 8
  %351 = call double @llvm.fmuladd.f64(double %349, double %346, double %350)
  %352 = load double, ptr @A3, align 8
  %353 = call double @llvm.fmuladd.f64(double %351, double %346, double %352)
  %354 = load double, ptr @A2, align 8
  %355 = call double @llvm.fmuladd.f64(double %353, double %346, double %354)
  %356 = load double, ptr @A1, align 8
  %357 = call double @llvm.fmuladd.f64(double %355, double %346, double %356)
  %358 = load double, ptr @A0, align 8
  %359 = call double @llvm.fmuladd.f64(double %357, double %346, double %358)
  %360 = fmul double %345, %359
  store double %360, ptr @sb, align 8
  %361 = load double, ptr @sa, align 8
  %362 = load double, ptr @sb, align 8
  %363 = fsub double %361, %362
  store double %363, ptr @sc, align 8
  %364 = load double, ptr @one, align 8
  %365 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %366 = fdiv double %364, %365
  store double %366, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %367 = load double, ptr @sc, align 8
  %368 = fmul double %367, 1.000000e-30
  %369 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %370 = fmul double %369, 1.000000e-30
  %371 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %372 = fmul double %371, 1.000000e-30
  %373 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %368, double noundef %370, double noundef %372)
  %374 = load double, ptr @piref, align 8
  %375 = load double, ptr @three, align 8
  %376 = sitofp i32 %168 to double
  %377 = fmul double %375, %376
  %378 = fdiv double %374, %377
  %379 = call i32 @dtime(ptr noundef @TimeArray)
  br label %380

380:                                              ; preds = %414, %309
  %.7280 = phi double [ 0.000000e+00, %309 ], [ %413, %414 ]
  %.6 = phi i32 [ 1, %309 ], [ %415, %414 ]
  %exitcond302 = icmp ne i32 %.6, %205
  br i1 %exitcond302, label %381, label %416

381:                                              ; preds = %380
  %382 = sitofp i32 %.6 to double
  %383 = fmul double %382, %378
  %384 = fmul double %383, %383
  %385 = load double, ptr @A6, align 8
  %386 = load double, ptr @A5, align 8
  %387 = call double @llvm.fmuladd.f64(double %385, double %384, double %386)
  %388 = load double, ptr @A4, align 8
  %389 = call double @llvm.fmuladd.f64(double %387, double %384, double %388)
  %390 = load double, ptr @A3, align 8
  %391 = call double @llvm.fmuladd.f64(double %389, double %384, double %390)
  %392 = load double, ptr @A2, align 8
  %393 = call double @llvm.fmuladd.f64(double %391, double %384, double %392)
  %394 = load double, ptr @A1, align 8
  %395 = call double @llvm.fmuladd.f64(double %393, double %384, double %394)
  %396 = load double, ptr @one, align 8
  %397 = call double @llvm.fmuladd.f64(double %395, double %384, double %396)
  %398 = fmul double %383, %397
  %399 = load double, ptr @B6, align 8
  %400 = load double, ptr @B5, align 8
  %401 = call double @llvm.fmuladd.f64(double %399, double %384, double %400)
  %402 = load double, ptr @B4, align 8
  %403 = call double @llvm.fmuladd.f64(double %384, double %401, double %402)
  %404 = load double, ptr @B3, align 8
  %405 = call double @llvm.fmuladd.f64(double %384, double %403, double %404)
  %406 = load double, ptr @B2, align 8
  %407 = call double @llvm.fmuladd.f64(double %384, double %405, double %406)
  %408 = load double, ptr @B1, align 8
  %409 = call double @llvm.fmuladd.f64(double %384, double %407, double %408)
  %410 = load double, ptr @one, align 8
  %411 = call double @llvm.fmuladd.f64(double %384, double %409, double %410)
  %412 = fdiv double %398, %411
  %413 = fadd double %.7280, %412
  br label %414

414:                                              ; preds = %381
  %415 = add nuw i32 %.6, 1
  br label %380, !llvm.loop !15

416:                                              ; preds = %380
  %.7280.lcssa = phi double [ %.7280, %380 ]
  %417 = call i32 @dtime(ptr noundef @TimeArray)
  %418 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %419 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %420 = load double, ptr @nulltime, align 8
  %421 = fneg double %420
  %422 = call double @llvm.fmuladd.f64(double %418, double %419, double %421)
  store double %422, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %423 = load double, ptr @piref, align 8
  %424 = load double, ptr @three, align 8
  %425 = fdiv double %423, %424
  %426 = fmul double %425, %425
  %427 = load double, ptr @A6, align 8
  %428 = load double, ptr @A5, align 8
  %429 = call double @llvm.fmuladd.f64(double %427, double %426, double %428)
  %430 = load double, ptr @A4, align 8
  %431 = call double @llvm.fmuladd.f64(double %429, double %426, double %430)
  %432 = load double, ptr @A3, align 8
  %433 = call double @llvm.fmuladd.f64(double %431, double %426, double %432)
  %434 = load double, ptr @A2, align 8
  %435 = call double @llvm.fmuladd.f64(double %433, double %426, double %434)
  %436 = load double, ptr @A1, align 8
  %437 = call double @llvm.fmuladd.f64(double %435, double %426, double %436)
  %438 = load double, ptr @one, align 8
  %439 = call double @llvm.fmuladd.f64(double %437, double %426, double %438)
  %440 = fmul double %425, %439
  store double %440, ptr @sa, align 8
  %441 = load double, ptr @B6, align 8
  %442 = load double, ptr @B5, align 8
  %443 = call double @llvm.fmuladd.f64(double %441, double %426, double %442)
  %444 = load double, ptr @B4, align 8
  %445 = call double @llvm.fmuladd.f64(double %426, double %443, double %444)
  %446 = load double, ptr @B3, align 8
  %447 = call double @llvm.fmuladd.f64(double %426, double %445, double %446)
  %448 = load double, ptr @B2, align 8
  %449 = call double @llvm.fmuladd.f64(double %426, double %447, double %448)
  %450 = load double, ptr @B1, align 8
  %451 = call double @llvm.fmuladd.f64(double %426, double %449, double %450)
  %452 = load double, ptr @one, align 8
  %453 = call double @llvm.fmuladd.f64(double %426, double %451, double %452)
  store double %453, ptr @sb, align 8
  %454 = load double, ptr @sa, align 8
  %455 = load double, ptr @sb, align 8
  %456 = fdiv double %454, %455
  store double %456, ptr @sa, align 8
  %457 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %458 = fdiv double %457, 2.900000e+01
  store double %458, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %459 = load double, ptr @sa, align 8
  %460 = load double, ptr @two, align 8
  %461 = call double @llvm.fmuladd.f64(double %460, double %.7280.lcssa, double %459)
  %462 = fmul double %378, %461
  %463 = load double, ptr @two, align 8
  %464 = fdiv double %462, %463
  store double %464, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %465 = load double, ptr @sa, align 8
  %466 = load double, ptr @sb, align 8
  %467 = fsub double %465, %466
  store double %467, ptr @sc, align 8
  %468 = load double, ptr @one, align 8
  %469 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %470 = fdiv double %468, %469
  store double %470, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %471 = load double, ptr @sc, align 8
  %472 = fmul double %471, 1.000000e-30
  %473 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %474 = fmul double %473, 1.000000e-30
  %475 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %476 = fmul double %475, 1.000000e-30
  %477 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %472, double noundef %474, double noundef %476)
  %478 = load double, ptr @piref, align 8
  %479 = load double, ptr @four, align 8
  %480 = sitofp i32 %168 to double
  %481 = fmul double %479, %480
  %482 = fdiv double %478, %481
  %483 = call i32 @dtime(ptr noundef @TimeArray)
  br label %484

484:                                              ; preds = %517, %416
  %.8281 = phi double [ 0.000000e+00, %416 ], [ %516, %517 ]
  %.7 = phi i32 [ 1, %416 ], [ %518, %517 ]
  %exitcond303 = icmp ne i32 %.7, %205
  br i1 %exitcond303, label %485, label %519

485:                                              ; preds = %484
  %486 = sitofp i32 %.7 to double
  %487 = fmul double %486, %482
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
  br label %517

517:                                              ; preds = %485
  %518 = add nuw i32 %.7, 1
  br label %484, !llvm.loop !16

519:                                              ; preds = %484
  %.8281.lcssa = phi double [ %.8281, %484 ]
  %520 = call i32 @dtime(ptr noundef @TimeArray)
  %521 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %522 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %523 = load double, ptr @nulltime, align 8
  %524 = fneg double %523
  %525 = call double @llvm.fmuladd.f64(double %521, double %522, double %524)
  store double %525, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %526 = load double, ptr @piref, align 8
  %527 = load double, ptr @four, align 8
  %528 = fdiv double %526, %527
  %529 = fmul double %528, %528
  %530 = load double, ptr @A6, align 8
  %531 = load double, ptr @A5, align 8
  %532 = call double @llvm.fmuladd.f64(double %530, double %529, double %531)
  %533 = load double, ptr @A4, align 8
  %534 = call double @llvm.fmuladd.f64(double %532, double %529, double %533)
  %535 = load double, ptr @A3, align 8
  %536 = call double @llvm.fmuladd.f64(double %534, double %529, double %535)
  %537 = load double, ptr @A2, align 8
  %538 = call double @llvm.fmuladd.f64(double %536, double %529, double %537)
  %539 = load double, ptr @A1, align 8
  %540 = call double @llvm.fmuladd.f64(double %538, double %529, double %539)
  %541 = load double, ptr @one, align 8
  %542 = call double @llvm.fmuladd.f64(double %540, double %529, double %541)
  %543 = fmul double %528, %542
  store double %543, ptr @sa, align 8
  %544 = load double, ptr @B6, align 8
  %545 = load double, ptr @B5, align 8
  %546 = call double @llvm.fmuladd.f64(double %544, double %529, double %545)
  %547 = load double, ptr @B4, align 8
  %548 = call double @llvm.fmuladd.f64(double %529, double %546, double %547)
  %549 = load double, ptr @B3, align 8
  %550 = call double @llvm.fmuladd.f64(double %529, double %548, double %549)
  %551 = load double, ptr @B2, align 8
  %552 = call double @llvm.fmuladd.f64(double %529, double %550, double %551)
  %553 = load double, ptr @B1, align 8
  %554 = call double @llvm.fmuladd.f64(double %529, double %552, double %553)
  %555 = load double, ptr @one, align 8
  %556 = call double @llvm.fmuladd.f64(double %529, double %554, double %555)
  store double %556, ptr @sb, align 8
  %557 = load double, ptr @sa, align 8
  %558 = load double, ptr @sb, align 8
  %559 = fmul double %557, %558
  store double %559, ptr @sa, align 8
  %560 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %561 = fdiv double %560, 2.900000e+01
  store double %561, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %562 = load double, ptr @sa, align 8
  %563 = load double, ptr @two, align 8
  %564 = call double @llvm.fmuladd.f64(double %563, double %.8281.lcssa, double %562)
  %565 = fmul double %482, %564
  %566 = load double, ptr @two, align 8
  %567 = fdiv double %565, %566
  store double %567, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %568 = load double, ptr @sa, align 8
  %569 = load double, ptr @sb, align 8
  %570 = fsub double %568, %569
  store double %570, ptr @sc, align 8
  %571 = load double, ptr @one, align 8
  %572 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %573 = fdiv double %571, %572
  store double %573, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %574 = load double, ptr @sc, align 8
  %575 = fmul double %574, 1.000000e-30
  %576 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %577 = fmul double %576, 1.000000e-30
  %578 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %579 = fmul double %578, 1.000000e-30
  %580 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, double noundef %575, double noundef %577, double noundef %579)
  %581 = load double, ptr @one, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %582 = load double, ptr @sa, align 8
  %583 = sitofp i32 %168 to double
  %584 = fdiv double %582, %583
  %585 = call i32 @dtime(ptr noundef @TimeArray)
  br label %586

586:                                              ; preds = %600, %519
  %.9282 = phi double [ 0.000000e+00, %519 ], [ %599, %600 ]
  %.8 = phi i32 [ 1, %519 ], [ %601, %600 ]
  %exitcond304 = icmp ne i32 %.8, %205
  br i1 %exitcond304, label %587, label %602

587:                                              ; preds = %586
  %588 = sitofp i32 %.8 to double
  %589 = fmul double %588, %584
  %590 = fmul double %589, %589
  %591 = fadd double %589, %581
  %592 = fdiv double %581, %591
  %593 = fsub double %.9282, %592
  %594 = fadd double %590, %581
  %595 = fdiv double %589, %594
  %596 = fsub double %593, %595
  %597 = call double @llvm.fmuladd.f64(double %589, double %590, double %581)
  %598 = fdiv double %590, %597
  %599 = fsub double %596, %598
  br label %600

600:                                              ; preds = %587
  %601 = add nuw i32 %.8, 1
  br label %586, !llvm.loop !17

602:                                              ; preds = %586
  %.9282.lcssa = phi double [ %.9282, %586 ]
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
  %613 = fneg double %581
  %614 = fadd double %611, %581
  %615 = fdiv double %581, %614
  %616 = fsub double %613, %615
  %617 = fadd double %612, %581
  %618 = fdiv double %611, %617
  %619 = fsub double %616, %618
  %620 = call double @llvm.fmuladd.f64(double %611, double %612, double %581)
  %621 = fdiv double %612, %620
  %622 = fsub double %619, %621
  store double %622, ptr @sa, align 8
  %623 = fmul double 1.800000e+01, %584
  %624 = load double, ptr @sa, align 8
  %625 = load double, ptr @two, align 8
  %626 = call double @llvm.fmuladd.f64(double %625, double %.9282.lcssa, double %624)
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
  %653 = add i32 %634, -1
  %smax305 = call i32 @llvm.smax.i32(i32 %653, i32 0)
  %654 = add nuw i32 %smax305, 1
  br label %655

655:                                              ; preds = %689, %602
  %.10 = phi double [ 0.000000e+00, %602 ], [ %688, %689 ]
  %.9 = phi i32 [ 1, %602 ], [ %690, %689 ]
  %exitcond306 = icmp ne i32 %.9, %654
  br i1 %exitcond306, label %656, label %691

656:                                              ; preds = %655
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
  br label %689

689:                                              ; preds = %656
  %690 = add nuw i32 %.9, 1
  br label %655, !llvm.loop !18

691:                                              ; preds = %655
  %.10.lcssa = phi double [ %.10, %655 ]
  %692 = call i32 @dtime(ptr noundef @TimeArray)
  %693 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %694 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %695 = load double, ptr @nulltime, align 8
  %696 = fneg double %695
  %697 = call double @llvm.fmuladd.f64(double %693, double %694, double %696)
  store double %697, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %698 = load double, ptr @piref, align 8
  %699 = load double, ptr @three, align 8
  %700 = fdiv double %698, %699
  %701 = fmul double %700, %700
  %702 = load double, ptr @A6, align 8
  %703 = load double, ptr @A5, align 8
  %704 = call double @llvm.fmuladd.f64(double %702, double %701, double %703)
  %705 = load double, ptr @A4, align 8
  %706 = call double @llvm.fmuladd.f64(double %704, double %701, double %705)
  %707 = load double, ptr @A3, align 8
  %708 = call double @llvm.fmuladd.f64(double %706, double %701, double %707)
  %709 = load double, ptr @A2, align 8
  %710 = call double @llvm.fmuladd.f64(double %708, double %701, double %709)
  %711 = load double, ptr @A1, align 8
  %712 = call double @llvm.fmuladd.f64(double %710, double %701, double %711)
  %713 = load double, ptr @one, align 8
  %714 = call double @llvm.fmuladd.f64(double %712, double %701, double %713)
  %715 = fmul double %700, %714
  store double %715, ptr @sa, align 8
  %716 = load double, ptr @B6, align 8
  %717 = load double, ptr @B5, align 8
  %718 = call double @llvm.fmuladd.f64(double %716, double %701, double %717)
  %719 = load double, ptr @B4, align 8
  %720 = call double @llvm.fmuladd.f64(double %701, double %718, double %719)
  %721 = load double, ptr @B3, align 8
  %722 = call double @llvm.fmuladd.f64(double %701, double %720, double %721)
  %723 = load double, ptr @B2, align 8
  %724 = call double @llvm.fmuladd.f64(double %701, double %722, double %723)
  %725 = load double, ptr @B1, align 8
  %726 = call double @llvm.fmuladd.f64(double %701, double %724, double %725)
  %727 = load double, ptr @one, align 8
  %728 = call double @llvm.fmuladd.f64(double %701, double %726, double %727)
  store double %728, ptr @sb, align 8
  %729 = load double, ptr @sa, align 8
  %730 = load double, ptr @sb, align 8
  %731 = fmul double %729, %730
  %732 = load double, ptr @sb, align 8
  %733 = fmul double %731, %732
  store double %733, ptr @sa, align 8
  %734 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %735 = fdiv double %734, 3.000000e+01
  store double %735, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %736 = load double, ptr @sa, align 8
  %737 = load double, ptr @two, align 8
  %738 = call double @llvm.fmuladd.f64(double %737, double %.10.lcssa, double %736)
  %739 = fmul double %651, %738
  %740 = load double, ptr @two, align 8
  %741 = fdiv double %739, %740
  store double %741, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %742 = load double, ptr @sa, align 8
  %743 = load double, ptr @sb, align 8
  %744 = fsub double %742, %743
  store double %744, ptr @sc, align 8
  %745 = load double, ptr @one, align 8
  %746 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %747 = fdiv double %745, %746
  store double %747, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %748 = load double, ptr @sc, align 8
  %749 = fmul double %748, 1.000000e-30
  %750 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %751 = fmul double %750, 1.000000e-30
  %752 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %753 = fmul double %752, 1.000000e-30
  %754 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, double noundef %749, double noundef %751, double noundef %753)
  %755 = load double, ptr @five, align 8
  %756 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %757 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %758 = fsub double %756, %757
  %759 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %760 = call double @llvm.fmuladd.f64(double %755, double %758, double %759)
  %761 = fdiv double %760, 5.200000e+01
  store double %761, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %762 = load double, ptr @one, align 8
  %763 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %764 = fdiv double %762, %763
  store double %764, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %765 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %766 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %767 = fadd double %765, %766
  %768 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %769 = fadd double %767, %768
  %770 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %771 = fadd double %769, %770
  %772 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %773 = fadd double %771, %772
  store double %773, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %774 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %775 = load double, ptr @four, align 8
  %776 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %777 = call double @llvm.fmuladd.f64(double %775, double %776, double %774)
  %778 = fdiv double %777, 1.520000e+02
  store double %778, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %779 = load double, ptr @one, align 8
  %780 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %781 = fdiv double %779, %780
  store double %781, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %782 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %783 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %784 = fadd double %782, %783
  %785 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %786 = fadd double %784, %785
  %787 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %788 = fadd double %786, %787
  %789 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %790 = fadd double %788, %789
  store double %790, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %791 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %792 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %793 = fadd double %791, %792
  %794 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %795 = fadd double %793, %794
  %796 = fdiv double %795, 1.460000e+02
  store double %796, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %797 = load double, ptr @one, align 8
  %798 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %799 = fdiv double %797, %798
  store double %799, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %800 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %801 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %802 = fadd double %800, %801
  %803 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %804 = fadd double %802, %803
  %805 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %806 = fadd double %804, %805
  %807 = fdiv double %806, 9.100000e+01
  store double %807, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %808 = load double, ptr @one, align 8
  %809 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %810 = fdiv double %808, %809
  store double %810, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %811 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %812 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %634)
  %813 = load double, ptr @nulltime, align 8
  %814 = fmul double %813, 1.000000e-30
  %815 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, double noundef %814)
  %816 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %817 = fmul double %816, 1.000000e-30
  %818 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, double noundef %817)
  %819 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %820 = fmul double %819, 1.000000e-30
  %821 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, double noundef %820)
  %822 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %823 = fmul double %822, 1.000000e-30
  %824 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, double noundef %823)
  %825 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %826 = fmul double %825, 1.000000e-30
  %827 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, double noundef %826)
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

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
