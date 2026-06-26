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
  %.08 = phi double [ undef, %0 ], [ %18, %47 ]
  %.01 = phi double [ undef, %0 ], [ %.2, %47 ]
  %.0 = phi i32 [ 15625, %0 ], [ %15, %47 ]
  %11 = load double, ptr @sa, align 8
  %12 = load double, ptr @TLimit, align 8
  %13 = fcmp olt double %11, %12
  br i1 %13, label %14, label %48

14:                                               ; preds = %10
  %15 = mul nsw i32 2, %.0
  %16 = load double, ptr @one, align 8
  %17 = sitofp i32 %15 to double
  %18 = fdiv double %16, %17
  %19 = load double, ptr @one, align 8
  %20 = call i32 @dtime(ptr noundef @TimeArray)
  br label %21

21:                                               ; preds = %40, %14
  %.011 = phi i32 [ 1, %14 ], [ %41, %40 ]
  %.04 = phi double [ 0.000000e+00, %14 ], [ %25, %40 ]
  %.2 = phi double [ 0.000000e+00, %14 ], [ %39, %40 ]
  %22 = sub nsw i32 %15, 1
  %23 = icmp sle i32 %.011, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %21
  %25 = fadd double %.04, %19
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
  %39 = fadd double %.2, %38
  br label %40

40:                                               ; preds = %24
  %41 = add nsw i32 %.011, 1
  br label %21, !llvm.loop !7

42:                                               ; preds = %21
  %43 = call i32 @dtime(ptr noundef @TimeArray)
  %44 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %44, ptr @sa, align 8
  %45 = icmp eq i32 %15, 512000000
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %48

47:                                               ; preds = %42
  br label %10, !llvm.loop !9

48:                                               ; preds = %46, %10
  %.19 = phi double [ %18, %46 ], [ %.08, %10 ]
  %.12 = phi double [ %.2, %46 ], [ %.01, %10 ]
  %.1 = phi i32 [ %15, %46 ], [ %.0, %10 ]
  store double 1.589500e-02, ptr @scale, align 8
  %49 = load double, ptr @scale, align 8
  store double %49, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %50 = call i32 @dtime(ptr noundef @TimeArray)
  br label %51

51:                                               ; preds = %55, %48
  %.112 = phi i32 [ 1, %48 ], [ %56, %55 ]
  %52 = sub nsw i32 %.1, 1
  %53 = icmp sle i32 %.112, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  br label %55

55:                                               ; preds = %54
  %56 = add nsw i32 %.112, 1
  br label %51, !llvm.loop !10

57:                                               ; preds = %51
  %58 = call i32 @dtime(ptr noundef @TimeArray)
  %59 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %60 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %61 = fmul double %59, %60
  store double %61, ptr @nulltime, align 8
  %62 = load double, ptr @nulltime, align 8
  %63 = fcmp olt double %62, 0.000000e+00
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store double 0.000000e+00, ptr @nulltime, align 8
  br label %65

65:                                               ; preds = %64, %57
  %66 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %67 = load double, ptr @sa, align 8
  %68 = load double, ptr @nulltime, align 8
  %69 = fneg double %68
  %70 = call double @llvm.fmuladd.f64(double %66, double %67, double %69)
  store double %70, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %71 = load double, ptr @D1, align 8
  %72 = load double, ptr @D2, align 8
  %73 = fadd double %71, %72
  %74 = load double, ptr @D3, align 8
  %75 = fadd double %73, %74
  %76 = load double, ptr @one, align 8
  %77 = load double, ptr @D1, align 8
  %78 = fadd double %76, %77
  %79 = load double, ptr @E2, align 8
  %80 = fadd double %78, %79
  %81 = load double, ptr @E3, align 8
  %82 = fadd double %80, %81
  %83 = fdiv double %75, %82
  store double %83, ptr @sa, align 8
  %84 = load double, ptr @D1, align 8
  store double %84, ptr @sb, align 8
  %85 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %86 = fdiv double %85, 1.400000e+01
  store double %86, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %87 = load double, ptr @sa, align 8
  %88 = load double, ptr @sb, align 8
  %89 = fadd double %87, %88
  %90 = load double, ptr @two, align 8
  %91 = call double @llvm.fmuladd.f64(double %90, double %.12, double %89)
  %92 = fmul double %.19, %91
  %93 = load double, ptr @two, align 8
  %94 = fdiv double %92, %93
  store double %94, ptr @sa, align 8
  %95 = load double, ptr @one, align 8
  %96 = load double, ptr @sa, align 8
  %97 = fdiv double %95, %96
  store double %97, ptr @sb, align 8
  %98 = load double, ptr @sb, align 8
  %99 = fptosi double %98 to i32
  %100 = mul nsw i32 40000, %99
  %101 = sitofp i32 %100 to double
  %102 = load double, ptr @scale, align 8
  %103 = fdiv double %101, %102
  %104 = fptosi double %103 to i32
  %105 = load double, ptr @sb, align 8
  %106 = fsub double %105, 2.520000e+01
  store double %106, ptr @sc, align 8
  %107 = load double, ptr @one, align 8
  %108 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %109 = fdiv double %107, %108
  store double %109, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %110 = load double, ptr @sc, align 8
  %111 = fmul double %110, 1.000000e-30
  %112 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %113 = fmul double %112, 1.000000e-30
  %114 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %115 = fmul double %114, 1.000000e-30
  %116 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %111, double noundef %113, double noundef %115)
  %117 = load double, ptr @five, align 8
  %118 = fneg double %117
  %119 = load double, ptr @one, align 8
  %120 = fneg double %119
  store double %120, ptr @sa, align 8
  %121 = call i32 @dtime(ptr noundef @TimeArray)
  br label %122

122:                                              ; preds = %128, %65
  %.213 = phi i32 [ 1, %65 ], [ %129, %128 ]
  %.3 = phi double [ %118, %65 ], [ %125, %128 ]
  %123 = icmp sle i32 %.213, %104
  br i1 %123, label %124, label %130

124:                                              ; preds = %122
  %125 = fneg double %.3
  %126 = load double, ptr @sa, align 8
  %127 = fadd double %126, %125
  store double %127, ptr @sa, align 8
  br label %128

128:                                              ; preds = %124
  %129 = add nsw i32 %.213, 1
  br label %122, !llvm.loop !11

130:                                              ; preds = %122
  %131 = call i32 @dtime(ptr noundef @TimeArray)
  %132 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %133 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %134 = fmul double %132, %133
  store double %134, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %135 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %136 = fcmp olt double %135, 0.000000e+00
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  br label %138

138:                                              ; preds = %137, %130
  %139 = sitofp i32 %104 to double
  store double %139, ptr @sc, align 8
  %140 = load double, ptr @sa, align 8
  %141 = call i32 @dtime(ptr noundef @TimeArray)
  br label %142

142:                                              ; preds = %156, %138
  %.314 = phi i32 [ 1, %138 ], [ %157, %156 ]
  %.210 = phi double [ 0.000000e+00, %138 ], [ %151, %156 ]
  %.07 = phi double [ 0.000000e+00, %138 ], [ %155, %156 ]
  %.15 = phi double [ 0.000000e+00, %138 ], [ %153, %156 ]
  %.03 = phi double [ %140, %138 ], [ %149, %156 ]
  %.4 = phi double [ %.3, %138 ], [ %145, %156 ]
  %143 = icmp sle i32 %.314, %104
  br i1 %143, label %144, label %158

144:                                              ; preds = %142
  %145 = fneg double %.4
  %146 = load double, ptr @sa, align 8
  %147 = fadd double %146, %145
  store double %147, ptr @sa, align 8
  %148 = load double, ptr @two, align 8
  %149 = fadd double %.03, %148
  %150 = fsub double %145, %149
  %151 = fadd double %.210, %150
  %152 = fneg double %145
  %153 = call double @llvm.fmuladd.f64(double %152, double %149, double %.15)
  %154 = fdiv double %145, %149
  %155 = fadd double %.07, %154
  br label %156

156:                                              ; preds = %144
  %157 = add nsw i32 %.314, 1
  br label %142, !llvm.loop !12

158:                                              ; preds = %142
  %159 = call i32 @dtime(ptr noundef @TimeArray)
  %160 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %161 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %162 = fmul double %160, %161
  store double %162, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %163 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %164 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %165 = fsub double %163, %164
  %166 = fdiv double %165, 7.000000e+00
  store double %166, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %167 = load double, ptr @sa, align 8
  %168 = fmul double %167, %.210
  %169 = load double, ptr @sc, align 8
  %170 = fdiv double %168, %169
  %171 = fptosi double %170 to i32
  %172 = load double, ptr @four, align 8
  %173 = fmul double %172, %.07
  %174 = load double, ptr @five, align 8
  %175 = fdiv double %173, %174
  store double %175, ptr @sa, align 8
  %176 = load double, ptr @sa, align 8
  %177 = load double, ptr @five, align 8
  %178 = fdiv double %177, %.15
  %179 = fadd double %176, %178
  store double %179, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %180 = load double, ptr @sb, align 8
  %181 = load double, ptr @sc, align 8
  %182 = fmul double %.15, %.15
  %183 = fmul double %182, %.15
  %184 = fdiv double %181, %183
  %185 = fsub double %180, %184
  store double %185, ptr @piprg, align 8
  %186 = load double, ptr @piprg, align 8
  %187 = load double, ptr @piref, align 8
  %188 = fsub double %186, %187
  store double %188, ptr @pierr, align 8
  %189 = load double, ptr @one, align 8
  %190 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %191 = fdiv double %189, %190
  store double %191, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %192 = load double, ptr @pierr, align 8
  %193 = fmul double %192, 1.000000e-30
  %194 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %195 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %196 = fsub double %194, %195
  %197 = fmul double %196, 1.000000e-30
  %198 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %199 = fmul double %198, 1.000000e-30
  %200 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %193, double noundef %197, double noundef %199)
  %201 = load double, ptr @piref, align 8
  %202 = load double, ptr @three, align 8
  %203 = sitofp i32 %171 to double
  %204 = fmul double %202, %203
  %205 = fdiv double %201, %204
  %206 = call i32 @dtime(ptr noundef @TimeArray)
  br label %207

207:                                              ; preds = %231, %158
  %.415 = phi i32 [ 1, %158 ], [ %232, %231 ]
  %.26 = phi double [ 0.000000e+00, %158 ], [ %212, %231 ]
  %.5 = phi double [ 0.000000e+00, %158 ], [ %230, %231 ]
  %208 = sub nsw i32 %171, 1
  %209 = icmp sle i32 %.415, %208
  br i1 %209, label %210, label %233

210:                                              ; preds = %207
  %211 = load double, ptr @one, align 8
  %212 = fadd double %.26, %211
  %213 = fmul double %212, %205
  %214 = fmul double %213, %213
  %215 = load double, ptr @A6, align 8
  %216 = load double, ptr @A5, align 8
  %217 = fneg double %216
  %218 = call double @llvm.fmuladd.f64(double %215, double %214, double %217)
  %219 = load double, ptr @A4, align 8
  %220 = call double @llvm.fmuladd.f64(double %218, double %214, double %219)
  %221 = load double, ptr @A3, align 8
  %222 = fneg double %221
  %223 = call double @llvm.fmuladd.f64(double %220, double %214, double %222)
  %224 = load double, ptr @A2, align 8
  %225 = call double @llvm.fmuladd.f64(double %223, double %214, double %224)
  %226 = load double, ptr @A1, align 8
  %227 = call double @llvm.fmuladd.f64(double %225, double %214, double %226)
  %228 = load double, ptr @one, align 8
  %229 = call double @llvm.fmuladd.f64(double %227, double %214, double %228)
  %230 = call double @llvm.fmuladd.f64(double %213, double %229, double %.5)
  br label %231

231:                                              ; preds = %210
  %232 = add nsw i32 %.415, 1
  br label %207, !llvm.loop !13

233:                                              ; preds = %207
  %234 = call i32 @dtime(ptr noundef @TimeArray)
  %235 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %236 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %237 = load double, ptr @nulltime, align 8
  %238 = fneg double %237
  %239 = call double @llvm.fmuladd.f64(double %235, double %236, double %238)
  store double %239, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %240 = load double, ptr @piref, align 8
  %241 = load double, ptr @three, align 8
  %242 = fdiv double %240, %241
  %243 = fmul double %242, %242
  %244 = load double, ptr @A6, align 8
  %245 = load double, ptr @A5, align 8
  %246 = fneg double %245
  %247 = call double @llvm.fmuladd.f64(double %244, double %243, double %246)
  %248 = load double, ptr @A4, align 8
  %249 = call double @llvm.fmuladd.f64(double %247, double %243, double %248)
  %250 = load double, ptr @A3, align 8
  %251 = fneg double %250
  %252 = call double @llvm.fmuladd.f64(double %249, double %243, double %251)
  %253 = load double, ptr @A2, align 8
  %254 = call double @llvm.fmuladd.f64(double %252, double %243, double %253)
  %255 = load double, ptr @A1, align 8
  %256 = call double @llvm.fmuladd.f64(double %254, double %243, double %255)
  %257 = load double, ptr @one, align 8
  %258 = call double @llvm.fmuladd.f64(double %256, double %243, double %257)
  %259 = fmul double %242, %258
  store double %259, ptr @sa, align 8
  %260 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %261 = fdiv double %260, 1.700000e+01
  store double %261, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %262 = load double, ptr @sa, align 8
  %263 = load double, ptr @two, align 8
  %264 = call double @llvm.fmuladd.f64(double %263, double %.5, double %262)
  %265 = fmul double %205, %264
  %266 = load double, ptr @two, align 8
  %267 = fdiv double %265, %266
  store double %267, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %268 = load double, ptr @sa, align 8
  %269 = load double, ptr @sb, align 8
  %270 = fsub double %268, %269
  store double %270, ptr @sc, align 8
  %271 = load double, ptr @one, align 8
  %272 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %273 = fdiv double %271, %272
  store double %273, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %274 = load double, ptr @sc, align 8
  %275 = fmul double %274, 1.000000e-30
  %276 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %277 = fmul double %276, 1.000000e-30
  %278 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %279 = fmul double %278, 1.000000e-30
  %280 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %275, double noundef %277, double noundef %279)
  %281 = load double, ptr @A3, align 8
  %282 = fneg double %281
  store double %282, ptr @A3, align 8
  %283 = load double, ptr @A5, align 8
  %284 = fneg double %283
  store double %284, ptr @A5, align 8
  %285 = load double, ptr @piref, align 8
  %286 = load double, ptr @three, align 8
  %287 = sitofp i32 %171 to double
  %288 = fmul double %286, %287
  %289 = fdiv double %285, %288
  %290 = call i32 @dtime(ptr noundef @TimeArray)
  br label %291

291:                                              ; preds = %312, %233
  %.516 = phi i32 [ 1, %233 ], [ %313, %312 ]
  %.6 = phi double [ 0.000000e+00, %233 ], [ %311, %312 ]
  %292 = sub nsw i32 %171, 1
  %293 = icmp sle i32 %.516, %292
  br i1 %293, label %294, label %314

294:                                              ; preds = %291
  %295 = sitofp i32 %.516 to double
  %296 = fmul double %295, %289
  %297 = fmul double %296, %296
  %298 = load double, ptr @B6, align 8
  %299 = load double, ptr @B5, align 8
  %300 = call double @llvm.fmuladd.f64(double %298, double %297, double %299)
  %301 = load double, ptr @B4, align 8
  %302 = call double @llvm.fmuladd.f64(double %297, double %300, double %301)
  %303 = load double, ptr @B3, align 8
  %304 = call double @llvm.fmuladd.f64(double %297, double %302, double %303)
  %305 = load double, ptr @B2, align 8
  %306 = call double @llvm.fmuladd.f64(double %297, double %304, double %305)
  %307 = load double, ptr @B1, align 8
  %308 = call double @llvm.fmuladd.f64(double %297, double %306, double %307)
  %309 = call double @llvm.fmuladd.f64(double %297, double %308, double %.6)
  %310 = load double, ptr @one, align 8
  %311 = fadd double %309, %310
  br label %312

312:                                              ; preds = %294
  %313 = add nsw i32 %.516, 1
  br label %291, !llvm.loop !14

314:                                              ; preds = %291
  %315 = call i32 @dtime(ptr noundef @TimeArray)
  %316 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %317 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %318 = load double, ptr @nulltime, align 8
  %319 = fneg double %318
  %320 = call double @llvm.fmuladd.f64(double %316, double %317, double %319)
  store double %320, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %321 = load double, ptr @piref, align 8
  %322 = load double, ptr @three, align 8
  %323 = fdiv double %321, %322
  %324 = fmul double %323, %323
  %325 = load double, ptr @B6, align 8
  %326 = load double, ptr @B5, align 8
  %327 = call double @llvm.fmuladd.f64(double %325, double %324, double %326)
  %328 = load double, ptr @B4, align 8
  %329 = call double @llvm.fmuladd.f64(double %324, double %327, double %328)
  %330 = load double, ptr @B3, align 8
  %331 = call double @llvm.fmuladd.f64(double %324, double %329, double %330)
  %332 = load double, ptr @B2, align 8
  %333 = call double @llvm.fmuladd.f64(double %324, double %331, double %332)
  %334 = load double, ptr @B1, align 8
  %335 = call double @llvm.fmuladd.f64(double %324, double %333, double %334)
  %336 = load double, ptr @one, align 8
  %337 = call double @llvm.fmuladd.f64(double %324, double %335, double %336)
  store double %337, ptr @sa, align 8
  %338 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %339 = fdiv double %338, 1.500000e+01
  store double %339, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %340 = load double, ptr @sa, align 8
  %341 = load double, ptr @one, align 8
  %342 = fadd double %340, %341
  %343 = load double, ptr @two, align 8
  %344 = call double @llvm.fmuladd.f64(double %343, double %.6, double %342)
  %345 = fmul double %289, %344
  %346 = load double, ptr @two, align 8
  %347 = fdiv double %345, %346
  store double %347, ptr @sa, align 8
  %348 = load double, ptr @piref, align 8
  %349 = load double, ptr @three, align 8
  %350 = fdiv double %348, %349
  %351 = fmul double %350, %350
  %352 = load double, ptr @A6, align 8
  %353 = load double, ptr @A5, align 8
  %354 = call double @llvm.fmuladd.f64(double %352, double %351, double %353)
  %355 = load double, ptr @A4, align 8
  %356 = call double @llvm.fmuladd.f64(double %354, double %351, double %355)
  %357 = load double, ptr @A3, align 8
  %358 = call double @llvm.fmuladd.f64(double %356, double %351, double %357)
  %359 = load double, ptr @A2, align 8
  %360 = call double @llvm.fmuladd.f64(double %358, double %351, double %359)
  %361 = load double, ptr @A1, align 8
  %362 = call double @llvm.fmuladd.f64(double %360, double %351, double %361)
  %363 = load double, ptr @A0, align 8
  %364 = call double @llvm.fmuladd.f64(double %362, double %351, double %363)
  %365 = fmul double %350, %364
  store double %365, ptr @sb, align 8
  %366 = load double, ptr @sa, align 8
  %367 = load double, ptr @sb, align 8
  %368 = fsub double %366, %367
  store double %368, ptr @sc, align 8
  %369 = load double, ptr @one, align 8
  %370 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %371 = fdiv double %369, %370
  store double %371, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %372 = load double, ptr @sc, align 8
  %373 = fmul double %372, 1.000000e-30
  %374 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %375 = fmul double %374, 1.000000e-30
  %376 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %377 = fmul double %376, 1.000000e-30
  %378 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %373, double noundef %375, double noundef %377)
  %379 = load double, ptr @piref, align 8
  %380 = load double, ptr @three, align 8
  %381 = sitofp i32 %171 to double
  %382 = fmul double %380, %381
  %383 = fdiv double %379, %382
  %384 = call i32 @dtime(ptr noundef @TimeArray)
  br label %385

385:                                              ; preds = %421, %314
  %.617 = phi i32 [ 1, %314 ], [ %422, %421 ]
  %.7 = phi double [ 0.000000e+00, %314 ], [ %420, %421 ]
  %386 = sub nsw i32 %171, 1
  %387 = icmp sle i32 %.617, %386
  br i1 %387, label %388, label %423

388:                                              ; preds = %385
  %389 = sitofp i32 %.617 to double
  %390 = fmul double %389, %383
  %391 = fmul double %390, %390
  %392 = load double, ptr @A6, align 8
  %393 = load double, ptr @A5, align 8
  %394 = call double @llvm.fmuladd.f64(double %392, double %391, double %393)
  %395 = load double, ptr @A4, align 8
  %396 = call double @llvm.fmuladd.f64(double %394, double %391, double %395)
  %397 = load double, ptr @A3, align 8
  %398 = call double @llvm.fmuladd.f64(double %396, double %391, double %397)
  %399 = load double, ptr @A2, align 8
  %400 = call double @llvm.fmuladd.f64(double %398, double %391, double %399)
  %401 = load double, ptr @A1, align 8
  %402 = call double @llvm.fmuladd.f64(double %400, double %391, double %401)
  %403 = load double, ptr @one, align 8
  %404 = call double @llvm.fmuladd.f64(double %402, double %391, double %403)
  %405 = fmul double %390, %404
  %406 = load double, ptr @B6, align 8
  %407 = load double, ptr @B5, align 8
  %408 = call double @llvm.fmuladd.f64(double %406, double %391, double %407)
  %409 = load double, ptr @B4, align 8
  %410 = call double @llvm.fmuladd.f64(double %391, double %408, double %409)
  %411 = load double, ptr @B3, align 8
  %412 = call double @llvm.fmuladd.f64(double %391, double %410, double %411)
  %413 = load double, ptr @B2, align 8
  %414 = call double @llvm.fmuladd.f64(double %391, double %412, double %413)
  %415 = load double, ptr @B1, align 8
  %416 = call double @llvm.fmuladd.f64(double %391, double %414, double %415)
  %417 = load double, ptr @one, align 8
  %418 = call double @llvm.fmuladd.f64(double %391, double %416, double %417)
  %419 = fdiv double %405, %418
  %420 = fadd double %.7, %419
  br label %421

421:                                              ; preds = %388
  %422 = add nsw i32 %.617, 1
  br label %385, !llvm.loop !15

423:                                              ; preds = %385
  %424 = call i32 @dtime(ptr noundef @TimeArray)
  %425 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %426 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %427 = load double, ptr @nulltime, align 8
  %428 = fneg double %427
  %429 = call double @llvm.fmuladd.f64(double %425, double %426, double %428)
  store double %429, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %430 = load double, ptr @piref, align 8
  %431 = load double, ptr @three, align 8
  %432 = fdiv double %430, %431
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
  store double %447, ptr @sa, align 8
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
  %459 = load double, ptr @one, align 8
  %460 = call double @llvm.fmuladd.f64(double %433, double %458, double %459)
  store double %460, ptr @sb, align 8
  %461 = load double, ptr @sa, align 8
  %462 = load double, ptr @sb, align 8
  %463 = fdiv double %461, %462
  store double %463, ptr @sa, align 8
  %464 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %465 = fdiv double %464, 2.900000e+01
  store double %465, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %466 = load double, ptr @sa, align 8
  %467 = load double, ptr @two, align 8
  %468 = call double @llvm.fmuladd.f64(double %467, double %.7, double %466)
  %469 = fmul double %383, %468
  %470 = load double, ptr @two, align 8
  %471 = fdiv double %469, %470
  store double %471, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %472 = load double, ptr @sa, align 8
  %473 = load double, ptr @sb, align 8
  %474 = fsub double %472, %473
  store double %474, ptr @sc, align 8
  %475 = load double, ptr @one, align 8
  %476 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %477 = fdiv double %475, %476
  store double %477, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %478 = load double, ptr @sc, align 8
  %479 = fmul double %478, 1.000000e-30
  %480 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %481 = fmul double %480, 1.000000e-30
  %482 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %483 = fmul double %482, 1.000000e-30
  %484 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %479, double noundef %481, double noundef %483)
  %485 = load double, ptr @piref, align 8
  %486 = load double, ptr @four, align 8
  %487 = sitofp i32 %171 to double
  %488 = fmul double %486, %487
  %489 = fdiv double %485, %488
  %490 = call i32 @dtime(ptr noundef @TimeArray)
  br label %491

491:                                              ; preds = %526, %423
  %.718 = phi i32 [ 1, %423 ], [ %527, %526 ]
  %.8 = phi double [ 0.000000e+00, %423 ], [ %525, %526 ]
  %492 = sub nsw i32 %171, 1
  %493 = icmp sle i32 %.718, %492
  br i1 %493, label %494, label %528

494:                                              ; preds = %491
  %495 = sitofp i32 %.718 to double
  %496 = fmul double %495, %489
  %497 = fmul double %496, %496
  %498 = load double, ptr @A6, align 8
  %499 = load double, ptr @A5, align 8
  %500 = call double @llvm.fmuladd.f64(double %498, double %497, double %499)
  %501 = load double, ptr @A4, align 8
  %502 = call double @llvm.fmuladd.f64(double %500, double %497, double %501)
  %503 = load double, ptr @A3, align 8
  %504 = call double @llvm.fmuladd.f64(double %502, double %497, double %503)
  %505 = load double, ptr @A2, align 8
  %506 = call double @llvm.fmuladd.f64(double %504, double %497, double %505)
  %507 = load double, ptr @A1, align 8
  %508 = call double @llvm.fmuladd.f64(double %506, double %497, double %507)
  %509 = load double, ptr @one, align 8
  %510 = call double @llvm.fmuladd.f64(double %508, double %497, double %509)
  %511 = fmul double %496, %510
  %512 = load double, ptr @B6, align 8
  %513 = load double, ptr @B5, align 8
  %514 = call double @llvm.fmuladd.f64(double %512, double %497, double %513)
  %515 = load double, ptr @B4, align 8
  %516 = call double @llvm.fmuladd.f64(double %497, double %514, double %515)
  %517 = load double, ptr @B3, align 8
  %518 = call double @llvm.fmuladd.f64(double %497, double %516, double %517)
  %519 = load double, ptr @B2, align 8
  %520 = call double @llvm.fmuladd.f64(double %497, double %518, double %519)
  %521 = load double, ptr @B1, align 8
  %522 = call double @llvm.fmuladd.f64(double %497, double %520, double %521)
  %523 = load double, ptr @one, align 8
  %524 = call double @llvm.fmuladd.f64(double %497, double %522, double %523)
  %525 = call double @llvm.fmuladd.f64(double %511, double %524, double %.8)
  br label %526

526:                                              ; preds = %494
  %527 = add nsw i32 %.718, 1
  br label %491, !llvm.loop !16

528:                                              ; preds = %491
  %529 = call i32 @dtime(ptr noundef @TimeArray)
  %530 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %531 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %532 = load double, ptr @nulltime, align 8
  %533 = fneg double %532
  %534 = call double @llvm.fmuladd.f64(double %530, double %531, double %533)
  store double %534, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %535 = load double, ptr @piref, align 8
  %536 = load double, ptr @four, align 8
  %537 = fdiv double %535, %536
  %538 = fmul double %537, %537
  %539 = load double, ptr @A6, align 8
  %540 = load double, ptr @A5, align 8
  %541 = call double @llvm.fmuladd.f64(double %539, double %538, double %540)
  %542 = load double, ptr @A4, align 8
  %543 = call double @llvm.fmuladd.f64(double %541, double %538, double %542)
  %544 = load double, ptr @A3, align 8
  %545 = call double @llvm.fmuladd.f64(double %543, double %538, double %544)
  %546 = load double, ptr @A2, align 8
  %547 = call double @llvm.fmuladd.f64(double %545, double %538, double %546)
  %548 = load double, ptr @A1, align 8
  %549 = call double @llvm.fmuladd.f64(double %547, double %538, double %548)
  %550 = load double, ptr @one, align 8
  %551 = call double @llvm.fmuladd.f64(double %549, double %538, double %550)
  %552 = fmul double %537, %551
  store double %552, ptr @sa, align 8
  %553 = load double, ptr @B6, align 8
  %554 = load double, ptr @B5, align 8
  %555 = call double @llvm.fmuladd.f64(double %553, double %538, double %554)
  %556 = load double, ptr @B4, align 8
  %557 = call double @llvm.fmuladd.f64(double %538, double %555, double %556)
  %558 = load double, ptr @B3, align 8
  %559 = call double @llvm.fmuladd.f64(double %538, double %557, double %558)
  %560 = load double, ptr @B2, align 8
  %561 = call double @llvm.fmuladd.f64(double %538, double %559, double %560)
  %562 = load double, ptr @B1, align 8
  %563 = call double @llvm.fmuladd.f64(double %538, double %561, double %562)
  %564 = load double, ptr @one, align 8
  %565 = call double @llvm.fmuladd.f64(double %538, double %563, double %564)
  store double %565, ptr @sb, align 8
  %566 = load double, ptr @sa, align 8
  %567 = load double, ptr @sb, align 8
  %568 = fmul double %566, %567
  store double %568, ptr @sa, align 8
  %569 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %570 = fdiv double %569, 2.900000e+01
  store double %570, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %571 = load double, ptr @sa, align 8
  %572 = load double, ptr @two, align 8
  %573 = call double @llvm.fmuladd.f64(double %572, double %.8, double %571)
  %574 = fmul double %489, %573
  %575 = load double, ptr @two, align 8
  %576 = fdiv double %574, %575
  store double %576, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %577 = load double, ptr @sa, align 8
  %578 = load double, ptr @sb, align 8
  %579 = fsub double %577, %578
  store double %579, ptr @sc, align 8
  %580 = load double, ptr @one, align 8
  %581 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %582 = fdiv double %580, %581
  store double %582, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %583 = load double, ptr @sc, align 8
  %584 = fmul double %583, 1.000000e-30
  %585 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %586 = fmul double %585, 1.000000e-30
  %587 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %588 = fmul double %587, 1.000000e-30
  %589 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, double noundef %584, double noundef %586, double noundef %588)
  %590 = load double, ptr @one, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %591 = load double, ptr @sa, align 8
  %592 = sitofp i32 %171 to double
  %593 = fdiv double %591, %592
  %594 = call i32 @dtime(ptr noundef @TimeArray)
  br label %595

595:                                              ; preds = %611, %528
  %.819 = phi i32 [ 1, %528 ], [ %612, %611 ]
  %.9 = phi double [ 0.000000e+00, %528 ], [ %610, %611 ]
  %596 = sub nsw i32 %171, 1
  %597 = icmp sle i32 %.819, %596
  br i1 %597, label %598, label %613

598:                                              ; preds = %595
  %599 = sitofp i32 %.819 to double
  %600 = fmul double %599, %593
  %601 = fmul double %600, %600
  %602 = fadd double %600, %590
  %603 = fdiv double %590, %602
  %604 = fsub double %.9, %603
  %605 = fadd double %601, %590
  %606 = fdiv double %600, %605
  %607 = fsub double %604, %606
  %608 = call double @llvm.fmuladd.f64(double %600, double %601, double %590)
  %609 = fdiv double %601, %608
  %610 = fsub double %607, %609
  br label %611

611:                                              ; preds = %598
  %612 = add nsw i32 %.819, 1
  br label %595, !llvm.loop !17

613:                                              ; preds = %595
  %614 = call i32 @dtime(ptr noundef @TimeArray)
  %615 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %616 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %617 = load double, ptr @nulltime, align 8
  %618 = fneg double %617
  %619 = call double @llvm.fmuladd.f64(double %615, double %616, double %618)
  store double %619, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %620 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %621 = fdiv double %620, 1.200000e+01
  store double %621, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %622 = load double, ptr @sa, align 8
  %623 = fmul double %622, %622
  %624 = fneg double %590
  %625 = fadd double %622, %590
  %626 = fdiv double %590, %625
  %627 = fsub double %624, %626
  %628 = fadd double %623, %590
  %629 = fdiv double %622, %628
  %630 = fsub double %627, %629
  %631 = call double @llvm.fmuladd.f64(double %622, double %623, double %590)
  %632 = fdiv double %623, %631
  %633 = fsub double %630, %632
  store double %633, ptr @sa, align 8
  %634 = fmul double 1.800000e+01, %593
  %635 = load double, ptr @sa, align 8
  %636 = load double, ptr @two, align 8
  %637 = call double @llvm.fmuladd.f64(double %636, double %.9, double %635)
  %638 = fmul double %634, %637
  store double %638, ptr @sa, align 8
  %639 = load double, ptr @sa, align 8
  %640 = fptosi double %639 to i32
  %641 = mul nsw i32 -2000, %640
  %642 = sitofp i32 %641 to double
  %643 = load double, ptr @scale, align 8
  %644 = fdiv double %642, %643
  %645 = fptosi double %644 to i32
  %646 = load double, ptr @sa, align 8
  %647 = fadd double %646, 5.002000e+02
  store double %647, ptr @sc, align 8
  %648 = load double, ptr @one, align 8
  %649 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %650 = fdiv double %648, %649
  store double %650, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %651 = load double, ptr @sc, align 8
  %652 = fmul double %651, 1.000000e-30
  %653 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %654 = fmul double %653, 1.000000e-30
  %655 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %656 = fmul double %655, 1.000000e-30
  %657 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, double noundef %652, double noundef %654, double noundef %656)
  %658 = load double, ptr @piref, align 8
  %659 = load double, ptr @three, align 8
  %660 = sitofp i32 %645 to double
  %661 = fmul double %659, %660
  %662 = fdiv double %658, %661
  %663 = call i32 @dtime(ptr noundef @TimeArray)
  br label %664

664:                                              ; preds = %700, %613
  %.920 = phi i32 [ 1, %613 ], [ %701, %700 ]
  %.10 = phi double [ 0.000000e+00, %613 ], [ %699, %700 ]
  %665 = sub nsw i32 %645, 1
  %666 = icmp sle i32 %.920, %665
  br i1 %666, label %667, label %702

667:                                              ; preds = %664
  %668 = sitofp i32 %.920 to double
  %669 = fmul double %668, %662
  %670 = fmul double %669, %669
  %671 = load double, ptr @B6, align 8
  %672 = load double, ptr @B5, align 8
  %673 = call double @llvm.fmuladd.f64(double %671, double %670, double %672)
  %674 = load double, ptr @B4, align 8
  %675 = call double @llvm.fmuladd.f64(double %670, double %673, double %674)
  %676 = load double, ptr @B3, align 8
  %677 = call double @llvm.fmuladd.f64(double %670, double %675, double %676)
  %678 = load double, ptr @B2, align 8
  %679 = call double @llvm.fmuladd.f64(double %670, double %677, double %678)
  %680 = load double, ptr @B1, align 8
  %681 = call double @llvm.fmuladd.f64(double %670, double %679, double %680)
  %682 = load double, ptr @one, align 8
  %683 = call double @llvm.fmuladd.f64(double %670, double %681, double %682)
  %684 = fmul double %683, %683
  %685 = fmul double %684, %669
  %686 = load double, ptr @A6, align 8
  %687 = load double, ptr @A5, align 8
  %688 = call double @llvm.fmuladd.f64(double %686, double %670, double %687)
  %689 = load double, ptr @A4, align 8
  %690 = call double @llvm.fmuladd.f64(double %688, double %670, double %689)
  %691 = load double, ptr @A3, align 8
  %692 = call double @llvm.fmuladd.f64(double %690, double %670, double %691)
  %693 = load double, ptr @A2, align 8
  %694 = call double @llvm.fmuladd.f64(double %692, double %670, double %693)
  %695 = load double, ptr @A1, align 8
  %696 = call double @llvm.fmuladd.f64(double %694, double %670, double %695)
  %697 = load double, ptr @one, align 8
  %698 = call double @llvm.fmuladd.f64(double %696, double %670, double %697)
  %699 = call double @llvm.fmuladd.f64(double %685, double %698, double %.10)
  br label %700

700:                                              ; preds = %667
  %701 = add nsw i32 %.920, 1
  br label %664, !llvm.loop !18

702:                                              ; preds = %664
  %703 = call i32 @dtime(ptr noundef @TimeArray)
  %704 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %705 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %706 = load double, ptr @nulltime, align 8
  %707 = fneg double %706
  %708 = call double @llvm.fmuladd.f64(double %704, double %705, double %707)
  store double %708, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %709 = load double, ptr @piref, align 8
  %710 = load double, ptr @three, align 8
  %711 = fdiv double %709, %710
  %712 = fmul double %711, %711
  %713 = load double, ptr @A6, align 8
  %714 = load double, ptr @A5, align 8
  %715 = call double @llvm.fmuladd.f64(double %713, double %712, double %714)
  %716 = load double, ptr @A4, align 8
  %717 = call double @llvm.fmuladd.f64(double %715, double %712, double %716)
  %718 = load double, ptr @A3, align 8
  %719 = call double @llvm.fmuladd.f64(double %717, double %712, double %718)
  %720 = load double, ptr @A2, align 8
  %721 = call double @llvm.fmuladd.f64(double %719, double %712, double %720)
  %722 = load double, ptr @A1, align 8
  %723 = call double @llvm.fmuladd.f64(double %721, double %712, double %722)
  %724 = load double, ptr @one, align 8
  %725 = call double @llvm.fmuladd.f64(double %723, double %712, double %724)
  %726 = fmul double %711, %725
  store double %726, ptr @sa, align 8
  %727 = load double, ptr @B6, align 8
  %728 = load double, ptr @B5, align 8
  %729 = call double @llvm.fmuladd.f64(double %727, double %712, double %728)
  %730 = load double, ptr @B4, align 8
  %731 = call double @llvm.fmuladd.f64(double %712, double %729, double %730)
  %732 = load double, ptr @B3, align 8
  %733 = call double @llvm.fmuladd.f64(double %712, double %731, double %732)
  %734 = load double, ptr @B2, align 8
  %735 = call double @llvm.fmuladd.f64(double %712, double %733, double %734)
  %736 = load double, ptr @B1, align 8
  %737 = call double @llvm.fmuladd.f64(double %712, double %735, double %736)
  %738 = load double, ptr @one, align 8
  %739 = call double @llvm.fmuladd.f64(double %712, double %737, double %738)
  store double %739, ptr @sb, align 8
  %740 = load double, ptr @sa, align 8
  %741 = load double, ptr @sb, align 8
  %742 = fmul double %740, %741
  %743 = load double, ptr @sb, align 8
  %744 = fmul double %742, %743
  store double %744, ptr @sa, align 8
  %745 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %746 = fdiv double %745, 3.000000e+01
  store double %746, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %747 = load double, ptr @sa, align 8
  %748 = load double, ptr @two, align 8
  %749 = call double @llvm.fmuladd.f64(double %748, double %.10, double %747)
  %750 = fmul double %662, %749
  %751 = load double, ptr @two, align 8
  %752 = fdiv double %750, %751
  store double %752, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %753 = load double, ptr @sa, align 8
  %754 = load double, ptr @sb, align 8
  %755 = fsub double %753, %754
  store double %755, ptr @sc, align 8
  %756 = load double, ptr @one, align 8
  %757 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %758 = fdiv double %756, %757
  store double %758, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %759 = load double, ptr @sc, align 8
  %760 = fmul double %759, 1.000000e-30
  %761 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %762 = fmul double %761, 1.000000e-30
  %763 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %764 = fmul double %763, 1.000000e-30
  %765 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, double noundef %760, double noundef %762, double noundef %764)
  %766 = load double, ptr @five, align 8
  %767 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %768 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %769 = fsub double %767, %768
  %770 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %771 = call double @llvm.fmuladd.f64(double %766, double %769, double %770)
  %772 = fdiv double %771, 5.200000e+01
  store double %772, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %773 = load double, ptr @one, align 8
  %774 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %775 = fdiv double %773, %774
  store double %775, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %776 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %777 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %778 = fadd double %776, %777
  %779 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %780 = fadd double %778, %779
  %781 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %782 = fadd double %780, %781
  %783 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %784 = fadd double %782, %783
  store double %784, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %785 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %786 = load double, ptr @four, align 8
  %787 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %788 = call double @llvm.fmuladd.f64(double %786, double %787, double %785)
  %789 = fdiv double %788, 1.520000e+02
  store double %789, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %790 = load double, ptr @one, align 8
  %791 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %792 = fdiv double %790, %791
  store double %792, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %793 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %794 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %795 = fadd double %793, %794
  %796 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %797 = fadd double %795, %796
  %798 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %799 = fadd double %797, %798
  %800 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %801 = fadd double %799, %800
  store double %801, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %802 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %803 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %804 = fadd double %802, %803
  %805 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %806 = fadd double %804, %805
  %807 = fdiv double %806, 1.460000e+02
  store double %807, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %808 = load double, ptr @one, align 8
  %809 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %810 = fdiv double %808, %809
  store double %810, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %811 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %812 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %813 = fadd double %811, %812
  %814 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %815 = fadd double %813, %814
  %816 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %817 = fadd double %815, %816
  %818 = fdiv double %817, 9.100000e+01
  store double %818, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %819 = load double, ptr @one, align 8
  %820 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %821 = fdiv double %819, %820
  store double %821, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %822 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %823 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %645)
  %824 = load double, ptr @nulltime, align 8
  %825 = fmul double %824, 1.000000e-30
  %826 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, double noundef %825)
  %827 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %828 = fmul double %827, 1.000000e-30
  %829 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, double noundef %828)
  %830 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %831 = fmul double %830, 1.000000e-30
  %832 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, double noundef %831)
  %833 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %834 = fmul double %833, 1.000000e-30
  %835 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, double noundef %834)
  %836 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %837 = fmul double %836, 1.000000e-30
  %838 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, double noundef %837)
  ret i32 0
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dtime(ptr noundef %0) #0 {
  %2 = getelementptr inbounds nuw double, ptr %0, i64 2
  %3 = load double, ptr %2, align 8
  %4 = call i32 @GetTickCount()
  %5 = uitofp i32 %4 to double
  %6 = fmul double %5, 1.000000e-03
  %7 = getelementptr inbounds nuw double, ptr %0, i64 2
  store double %6, ptr %7, align 8
  %8 = getelementptr inbounds nuw double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8
  %10 = fsub double %9, %3
  %11 = getelementptr inbounds nuw double, ptr %0, i64 1
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
