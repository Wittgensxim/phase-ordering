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

7:                                                ; preds = %41, %0
  %8 = phi double [ 0.000000e+00, %0 ], [ %38, %41 ]
  %.08 = phi double [ undef, %0 ], [ %15, %41 ]
  %.01 = phi double [ undef, %0 ], [ %.2, %41 ]
  %.0 = phi i32 [ 15625, %0 ], [ %12, %41 ]
  %9 = load double, ptr @TLimit, align 8
  %10 = fcmp olt double %8, %9
  br i1 %10, label %11, label %42

11:                                               ; preds = %7
  %12 = mul nsw i32 2, %.0
  %13 = load double, ptr @one, align 8
  %14 = sitofp i32 %12 to double
  %15 = fdiv double %13, %14
  %16 = call i32 @dtime(ptr noundef @TimeArray)
  br label %17

17:                                               ; preds = %20, %11
  %.011 = phi i32 [ 1, %11 ], [ %35, %20 ]
  %.04 = phi double [ 0.000000e+00, %11 ], [ %21, %20 ]
  %.2 = phi double [ 0.000000e+00, %11 ], [ %34, %20 ]
  %18 = sub nsw i32 %12, 1
  %19 = icmp sle i32 %.011, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  %21 = fadd double %.04, %13
  %22 = fmul double %21, %15
  %23 = load double, ptr @D1, align 8
  %24 = load double, ptr @D2, align 8
  %25 = load double, ptr @D3, align 8
  %26 = call double @llvm.fmuladd.f64(double %22, double %25, double %24)
  %27 = call double @llvm.fmuladd.f64(double %22, double %26, double %23)
  %28 = load double, ptr @E2, align 8
  %29 = load double, ptr @E3, align 8
  %30 = call double @llvm.fmuladd.f64(double %22, double %29, double %28)
  %31 = call double @llvm.fmuladd.f64(double %22, double %30, double %23)
  %32 = call double @llvm.fmuladd.f64(double %22, double %31, double %13)
  %33 = fdiv double %27, %32
  %34 = fadd double %.2, %33
  %35 = add nsw i32 %.011, 1
  br label %17, !llvm.loop !7

36:                                               ; preds = %17
  %37 = call i32 @dtime(ptr noundef @TimeArray)
  %38 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %38, ptr @sa, align 8
  %39 = icmp eq i32 %12, 512000000
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %42

41:                                               ; preds = %36
  br label %7, !llvm.loop !9

42:                                               ; preds = %40, %7
  %.19 = phi double [ %15, %40 ], [ %.08, %7 ]
  %.12 = phi double [ %.2, %40 ], [ %.01, %7 ]
  %.1 = phi i32 [ 512000000, %40 ], [ %.0, %7 ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %43 = call i32 @dtime(ptr noundef @TimeArray)
  br label %44

44:                                               ; preds = %47, %42
  %.112 = phi i32 [ 1, %42 ], [ %48, %47 ]
  %45 = sub nsw i32 %.1, 1
  %46 = icmp sle i32 %.112, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = add nsw i32 %.112, 1
  br label %44, !llvm.loop !10

49:                                               ; preds = %44
  %50 = call i32 @dtime(ptr noundef @TimeArray)
  %51 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %52 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %53 = fmul double %51, %52
  store double %53, ptr @nulltime, align 8
  %54 = fcmp olt double %53, 0.000000e+00
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store double 0.000000e+00, ptr @nulltime, align 8
  br label %56

56:                                               ; preds = %55, %49
  %57 = phi double [ 0.000000e+00, %55 ], [ %53, %49 ]
  %58 = load double, ptr @sa, align 8
  %59 = fneg double %57
  %60 = call double @llvm.fmuladd.f64(double %51, double %58, double %59)
  store double %60, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %61 = load double, ptr @D1, align 8
  %62 = load double, ptr @D2, align 8
  %63 = fadd double %61, %62
  %64 = load double, ptr @D3, align 8
  %65 = fadd double %63, %64
  %66 = load double, ptr @one, align 8
  %67 = fadd double %66, %61
  %68 = load double, ptr @E2, align 8
  %69 = fadd double %67, %68
  %70 = load double, ptr @E3, align 8
  %71 = fadd double %69, %70
  %72 = fdiv double %65, %71
  store double %72, ptr @sa, align 8
  store double %61, ptr @sb, align 8
  %73 = fdiv double %60, 1.400000e+01
  store double %73, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %74 = fadd double %72, %61
  %75 = load double, ptr @two, align 8
  %76 = call double @llvm.fmuladd.f64(double %75, double %.12, double %74)
  %77 = fmul double %.19, %76
  %78 = fdiv double %77, %75
  store double %78, ptr @sa, align 8
  %79 = fdiv double %66, %78
  store double %79, ptr @sb, align 8
  %80 = fptosi double %79 to i32
  %81 = mul nsw i32 40000, %80
  %82 = sitofp i32 %81 to double
  %83 = load double, ptr @scale, align 8
  %84 = fdiv double %82, %83
  %85 = fptosi double %84 to i32
  %86 = fsub double %79, 2.520000e+01
  store double %86, ptr @sc, align 8
  %87 = fdiv double %66, %73
  store double %87, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %88 = fmul double %86, 1.000000e-30
  %89 = fmul double %60, 1.000000e-30
  %90 = fmul double %87, 1.000000e-30
  %91 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %88, double noundef %89, double noundef %90)
  %92 = load double, ptr @five, align 8
  %93 = fneg double %92
  %94 = load double, ptr @one, align 8
  %95 = fneg double %94
  store double %95, ptr @sa, align 8
  %96 = call i32 @dtime(ptr noundef @TimeArray)
  br label %97

97:                                               ; preds = %99, %56
  %.213 = phi i32 [ 1, %56 ], [ %103, %99 ]
  %.3 = phi double [ %93, %56 ], [ %100, %99 ]
  %98 = icmp sle i32 %.213, %85
  br i1 %98, label %99, label %104

99:                                               ; preds = %97
  %100 = fneg double %.3
  %101 = load double, ptr @sa, align 8
  %102 = fadd double %101, %100
  store double %102, ptr @sa, align 8
  %103 = add nsw i32 %.213, 1
  br label %97, !llvm.loop !11

104:                                              ; preds = %97
  %105 = call i32 @dtime(ptr noundef @TimeArray)
  %106 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %107 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %108 = fmul double %106, %107
  store double %108, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %109 = fcmp olt double %108, 0.000000e+00
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  br label %111

111:                                              ; preds = %110, %104
  %112 = sitofp i32 %85 to double
  store double %112, ptr @sc, align 8
  %113 = load double, ptr @sa, align 8
  %114 = call i32 @dtime(ptr noundef @TimeArray)
  br label %115

115:                                              ; preds = %117, %111
  %.314 = phi i32 [ 1, %111 ], [ %128, %117 ]
  %.210 = phi double [ 0.000000e+00, %111 ], [ %124, %117 ]
  %.07 = phi double [ 0.000000e+00, %111 ], [ %127, %117 ]
  %.15 = phi double [ 0.000000e+00, %111 ], [ %125, %117 ]
  %.03 = phi double [ %113, %111 ], [ %122, %117 ]
  %.4 = phi double [ %.3, %111 ], [ %118, %117 ]
  %116 = icmp sle i32 %.314, %85
  br i1 %116, label %117, label %129

117:                                              ; preds = %115
  %118 = fneg double %.4
  %119 = load double, ptr @sa, align 8
  %120 = fadd double %119, %118
  store double %120, ptr @sa, align 8
  %121 = load double, ptr @two, align 8
  %122 = fadd double %.03, %121
  %123 = fsub double %118, %122
  %124 = fadd double %.210, %123
  %125 = call double @llvm.fmuladd.f64(double %.4, double %122, double %.15)
  %126 = fdiv double %118, %122
  %127 = fadd double %.07, %126
  %128 = add nsw i32 %.314, 1
  br label %115, !llvm.loop !12

129:                                              ; preds = %115
  %130 = call i32 @dtime(ptr noundef @TimeArray)
  %131 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %132 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %133 = fmul double %131, %132
  store double %133, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %134 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %135 = fsub double %133, %134
  %136 = fdiv double %135, 7.000000e+00
  store double %136, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %137 = load double, ptr @sa, align 8
  %138 = fmul double %137, %.210
  %139 = load double, ptr @sc, align 8
  %140 = fdiv double %138, %139
  %141 = fptosi double %140 to i32
  %142 = load double, ptr @four, align 8
  %143 = fmul double %142, %.07
  %144 = load double, ptr @five, align 8
  %145 = fdiv double %143, %144
  store double %145, ptr @sa, align 8
  %146 = fdiv double %144, %.15
  %147 = fadd double %145, %146
  store double %147, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %148 = fmul double %.15, %.15
  %149 = fmul double %148, %.15
  %150 = fdiv double 3.125000e+01, %149
  %151 = fsub double %147, %150
  store double %151, ptr @piprg, align 8
  %152 = load double, ptr @piref, align 8
  %153 = fsub double %151, %152
  store double %153, ptr @pierr, align 8
  %154 = load double, ptr @one, align 8
  %155 = fdiv double %154, %136
  store double %155, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %156 = fmul double %153, 1.000000e-30
  %157 = fmul double %135, 1.000000e-30
  %158 = fmul double %155, 1.000000e-30
  %159 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %156, double noundef %157, double noundef %158)
  %160 = load double, ptr @piref, align 8
  %161 = load double, ptr @three, align 8
  %162 = sitofp i32 %141 to double
  %163 = fmul double %161, %162
  %164 = fdiv double %160, %163
  %165 = call i32 @dtime(ptr noundef @TimeArray)
  br label %166

166:                                              ; preds = %169, %129
  %.415 = phi i32 [ 1, %129 ], [ %189, %169 ]
  %.26 = phi double [ 0.000000e+00, %129 ], [ %171, %169 ]
  %.5 = phi double [ 0.000000e+00, %129 ], [ %188, %169 ]
  %167 = sub nsw i32 %141, 1
  %168 = icmp sle i32 %.415, %167
  br i1 %168, label %169, label %190

169:                                              ; preds = %166
  %170 = load double, ptr @one, align 8
  %171 = fadd double %.26, %170
  %172 = fmul double %171, %164
  %173 = fmul double %172, %172
  %174 = load double, ptr @A6, align 8
  %175 = load double, ptr @A5, align 8
  %176 = fneg double %175
  %177 = call double @llvm.fmuladd.f64(double %174, double %173, double %176)
  %178 = load double, ptr @A4, align 8
  %179 = call double @llvm.fmuladd.f64(double %177, double %173, double %178)
  %180 = load double, ptr @A3, align 8
  %181 = fneg double %180
  %182 = call double @llvm.fmuladd.f64(double %179, double %173, double %181)
  %183 = load double, ptr @A2, align 8
  %184 = call double @llvm.fmuladd.f64(double %182, double %173, double %183)
  %185 = load double, ptr @A1, align 8
  %186 = call double @llvm.fmuladd.f64(double %184, double %173, double %185)
  %187 = call double @llvm.fmuladd.f64(double %186, double %173, double %170)
  %188 = call double @llvm.fmuladd.f64(double %172, double %187, double %.5)
  %189 = add nsw i32 %.415, 1
  br label %166, !llvm.loop !13

190:                                              ; preds = %166
  %191 = call i32 @dtime(ptr noundef @TimeArray)
  %192 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %193 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %194 = load double, ptr @nulltime, align 8
  %195 = fneg double %194
  %196 = call double @llvm.fmuladd.f64(double %192, double %193, double %195)
  store double %196, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %197 = load double, ptr @piref, align 8
  %198 = load double, ptr @three, align 8
  %199 = fdiv double %197, %198
  %200 = fmul double %199, %199
  %201 = load double, ptr @A6, align 8
  %202 = load double, ptr @A5, align 8
  %203 = fneg double %202
  %204 = call double @llvm.fmuladd.f64(double %201, double %200, double %203)
  %205 = load double, ptr @A4, align 8
  %206 = call double @llvm.fmuladd.f64(double %204, double %200, double %205)
  %207 = load double, ptr @A3, align 8
  %208 = fneg double %207
  %209 = call double @llvm.fmuladd.f64(double %206, double %200, double %208)
  %210 = load double, ptr @A2, align 8
  %211 = call double @llvm.fmuladd.f64(double %209, double %200, double %210)
  %212 = load double, ptr @A1, align 8
  %213 = call double @llvm.fmuladd.f64(double %211, double %200, double %212)
  %214 = load double, ptr @one, align 8
  %215 = call double @llvm.fmuladd.f64(double %213, double %200, double %214)
  %216 = fmul double %199, %215
  store double %216, ptr @sa, align 8
  %217 = fdiv double %196, 1.700000e+01
  store double %217, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %218 = load double, ptr @two, align 8
  %219 = call double @llvm.fmuladd.f64(double %218, double %.5, double %216)
  %220 = fmul double %164, %219
  %221 = fdiv double %220, %218
  store double %221, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %222 = fsub double %221, 5.000000e-01
  store double %222, ptr @sc, align 8
  %223 = fdiv double %214, %217
  store double %223, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %224 = fmul double %222, 1.000000e-30
  %225 = fmul double %196, 1.000000e-30
  %226 = fmul double %223, 1.000000e-30
  %227 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %224, double noundef %225, double noundef %226)
  %228 = load double, ptr @A3, align 8
  %229 = fneg double %228
  store double %229, ptr @A3, align 8
  %230 = load double, ptr @A5, align 8
  %231 = fneg double %230
  store double %231, ptr @A5, align 8
  %232 = load double, ptr @piref, align 8
  %233 = load double, ptr @three, align 8
  %234 = fmul double %233, %162
  %235 = fdiv double %232, %234
  %236 = call i32 @dtime(ptr noundef @TimeArray)
  br label %237

237:                                              ; preds = %239, %190
  %.516 = phi i32 [ 1, %190 ], [ %257, %239 ]
  %.6 = phi double [ 0.000000e+00, %190 ], [ %256, %239 ]
  %238 = icmp sle i32 %.516, %167
  br i1 %238, label %239, label %258

239:                                              ; preds = %237
  %240 = sitofp i32 %.516 to double
  %241 = fmul double %240, %235
  %242 = fmul double %241, %241
  %243 = load double, ptr @B6, align 8
  %244 = load double, ptr @B5, align 8
  %245 = call double @llvm.fmuladd.f64(double %243, double %242, double %244)
  %246 = load double, ptr @B4, align 8
  %247 = call double @llvm.fmuladd.f64(double %242, double %245, double %246)
  %248 = load double, ptr @B3, align 8
  %249 = call double @llvm.fmuladd.f64(double %242, double %247, double %248)
  %250 = load double, ptr @B2, align 8
  %251 = call double @llvm.fmuladd.f64(double %242, double %249, double %250)
  %252 = load double, ptr @B1, align 8
  %253 = call double @llvm.fmuladd.f64(double %242, double %251, double %252)
  %254 = call double @llvm.fmuladd.f64(double %242, double %253, double %.6)
  %255 = load double, ptr @one, align 8
  %256 = fadd double %254, %255
  %257 = add nsw i32 %.516, 1
  br label %237, !llvm.loop !14

258:                                              ; preds = %237
  %259 = call i32 @dtime(ptr noundef @TimeArray)
  %260 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %261 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %262 = load double, ptr @nulltime, align 8
  %263 = fneg double %262
  %264 = call double @llvm.fmuladd.f64(double %260, double %261, double %263)
  store double %264, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %265 = load double, ptr @piref, align 8
  %266 = load double, ptr @three, align 8
  %267 = fdiv double %265, %266
  %268 = fmul double %267, %267
  %269 = load double, ptr @B6, align 8
  %270 = load double, ptr @B5, align 8
  %271 = call double @llvm.fmuladd.f64(double %269, double %268, double %270)
  %272 = load double, ptr @B4, align 8
  %273 = call double @llvm.fmuladd.f64(double %268, double %271, double %272)
  %274 = load double, ptr @B3, align 8
  %275 = call double @llvm.fmuladd.f64(double %268, double %273, double %274)
  %276 = load double, ptr @B2, align 8
  %277 = call double @llvm.fmuladd.f64(double %268, double %275, double %276)
  %278 = load double, ptr @B1, align 8
  %279 = call double @llvm.fmuladd.f64(double %268, double %277, double %278)
  %280 = load double, ptr @one, align 8
  %281 = call double @llvm.fmuladd.f64(double %268, double %279, double %280)
  store double %281, ptr @sa, align 8
  %282 = fdiv double %264, 1.500000e+01
  store double %282, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %283 = fadd double %281, %280
  %284 = load double, ptr @two, align 8
  %285 = call double @llvm.fmuladd.f64(double %284, double %.6, double %283)
  %286 = fmul double %235, %285
  %287 = fdiv double %286, %284
  store double %287, ptr @sa, align 8
  %288 = load double, ptr @A6, align 8
  %289 = load double, ptr @A5, align 8
  %290 = call double @llvm.fmuladd.f64(double %288, double %268, double %289)
  %291 = load double, ptr @A4, align 8
  %292 = call double @llvm.fmuladd.f64(double %290, double %268, double %291)
  %293 = load double, ptr @A3, align 8
  %294 = call double @llvm.fmuladd.f64(double %292, double %268, double %293)
  %295 = load double, ptr @A2, align 8
  %296 = call double @llvm.fmuladd.f64(double %294, double %268, double %295)
  %297 = load double, ptr @A1, align 8
  %298 = call double @llvm.fmuladd.f64(double %296, double %268, double %297)
  %299 = load double, ptr @A0, align 8
  %300 = call double @llvm.fmuladd.f64(double %298, double %268, double %299)
  %301 = fmul double %267, %300
  store double %301, ptr @sb, align 8
  %302 = fsub double %287, %301
  store double %302, ptr @sc, align 8
  %303 = fdiv double %280, %282
  store double %303, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %304 = fmul double %302, 1.000000e-30
  %305 = fmul double %264, 1.000000e-30
  %306 = fmul double %303, 1.000000e-30
  %307 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %304, double noundef %305, double noundef %306)
  %308 = load double, ptr @piref, align 8
  %309 = load double, ptr @three, align 8
  %310 = fmul double %309, %162
  %311 = fdiv double %308, %310
  %312 = call i32 @dtime(ptr noundef @TimeArray)
  br label %313

313:                                              ; preds = %315, %258
  %.617 = phi i32 [ 1, %258 ], [ %347, %315 ]
  %.7 = phi double [ 0.000000e+00, %258 ], [ %346, %315 ]
  %314 = icmp sle i32 %.617, %167
  br i1 %314, label %315, label %348

315:                                              ; preds = %313
  %316 = sitofp i32 %.617 to double
  %317 = fmul double %316, %311
  %318 = fmul double %317, %317
  %319 = load double, ptr @A6, align 8
  %320 = load double, ptr @A5, align 8
  %321 = call double @llvm.fmuladd.f64(double %319, double %318, double %320)
  %322 = load double, ptr @A4, align 8
  %323 = call double @llvm.fmuladd.f64(double %321, double %318, double %322)
  %324 = load double, ptr @A3, align 8
  %325 = call double @llvm.fmuladd.f64(double %323, double %318, double %324)
  %326 = load double, ptr @A2, align 8
  %327 = call double @llvm.fmuladd.f64(double %325, double %318, double %326)
  %328 = load double, ptr @A1, align 8
  %329 = call double @llvm.fmuladd.f64(double %327, double %318, double %328)
  %330 = load double, ptr @one, align 8
  %331 = call double @llvm.fmuladd.f64(double %329, double %318, double %330)
  %332 = fmul double %317, %331
  %333 = load double, ptr @B6, align 8
  %334 = load double, ptr @B5, align 8
  %335 = call double @llvm.fmuladd.f64(double %333, double %318, double %334)
  %336 = load double, ptr @B4, align 8
  %337 = call double @llvm.fmuladd.f64(double %318, double %335, double %336)
  %338 = load double, ptr @B3, align 8
  %339 = call double @llvm.fmuladd.f64(double %318, double %337, double %338)
  %340 = load double, ptr @B2, align 8
  %341 = call double @llvm.fmuladd.f64(double %318, double %339, double %340)
  %342 = load double, ptr @B1, align 8
  %343 = call double @llvm.fmuladd.f64(double %318, double %341, double %342)
  %344 = call double @llvm.fmuladd.f64(double %318, double %343, double %330)
  %345 = fdiv double %332, %344
  %346 = fadd double %.7, %345
  %347 = add nsw i32 %.617, 1
  br label %313, !llvm.loop !15

348:                                              ; preds = %313
  %349 = call i32 @dtime(ptr noundef @TimeArray)
  %350 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %351 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %352 = load double, ptr @nulltime, align 8
  %353 = fneg double %352
  %354 = call double @llvm.fmuladd.f64(double %350, double %351, double %353)
  store double %354, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %355 = load double, ptr @piref, align 8
  %356 = load double, ptr @three, align 8
  %357 = fdiv double %355, %356
  %358 = fmul double %357, %357
  %359 = load double, ptr @A6, align 8
  %360 = load double, ptr @A5, align 8
  %361 = call double @llvm.fmuladd.f64(double %359, double %358, double %360)
  %362 = load double, ptr @A4, align 8
  %363 = call double @llvm.fmuladd.f64(double %361, double %358, double %362)
  %364 = load double, ptr @A3, align 8
  %365 = call double @llvm.fmuladd.f64(double %363, double %358, double %364)
  %366 = load double, ptr @A2, align 8
  %367 = call double @llvm.fmuladd.f64(double %365, double %358, double %366)
  %368 = load double, ptr @A1, align 8
  %369 = call double @llvm.fmuladd.f64(double %367, double %358, double %368)
  %370 = load double, ptr @one, align 8
  %371 = call double @llvm.fmuladd.f64(double %369, double %358, double %370)
  %372 = fmul double %357, %371
  store double %372, ptr @sa, align 8
  %373 = load double, ptr @B6, align 8
  %374 = load double, ptr @B5, align 8
  %375 = call double @llvm.fmuladd.f64(double %373, double %358, double %374)
  %376 = load double, ptr @B4, align 8
  %377 = call double @llvm.fmuladd.f64(double %358, double %375, double %376)
  %378 = load double, ptr @B3, align 8
  %379 = call double @llvm.fmuladd.f64(double %358, double %377, double %378)
  %380 = load double, ptr @B2, align 8
  %381 = call double @llvm.fmuladd.f64(double %358, double %379, double %380)
  %382 = load double, ptr @B1, align 8
  %383 = call double @llvm.fmuladd.f64(double %358, double %381, double %382)
  %384 = call double @llvm.fmuladd.f64(double %358, double %383, double %370)
  store double %384, ptr @sb, align 8
  %385 = fdiv double %372, %384
  store double %385, ptr @sa, align 8
  %386 = fdiv double %354, 2.900000e+01
  store double %386, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %387 = load double, ptr @two, align 8
  %388 = call double @llvm.fmuladd.f64(double %387, double %.7, double %385)
  %389 = fmul double %311, %388
  %390 = fdiv double %389, %387
  store double %390, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %391 = fsub double %390, f0x3FE62E42FEFA39EF
  store double %391, ptr @sc, align 8
  %392 = fdiv double %370, %386
  store double %392, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %393 = fmul double %391, 1.000000e-30
  %394 = fmul double %354, 1.000000e-30
  %395 = fmul double %392, 1.000000e-30
  %396 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %393, double noundef %394, double noundef %395)
  %397 = load double, ptr @piref, align 8
  %398 = load double, ptr @four, align 8
  %399 = fmul double %398, %162
  %400 = fdiv double %397, %399
  %401 = call i32 @dtime(ptr noundef @TimeArray)
  br label %402

402:                                              ; preds = %404, %348
  %.718 = phi i32 [ 1, %348 ], [ %435, %404 ]
  %.8 = phi double [ 0.000000e+00, %348 ], [ %434, %404 ]
  %403 = icmp sle i32 %.718, %167
  br i1 %403, label %404, label %436

404:                                              ; preds = %402
  %405 = sitofp i32 %.718 to double
  %406 = fmul double %405, %400
  %407 = fmul double %406, %406
  %408 = load double, ptr @A6, align 8
  %409 = load double, ptr @A5, align 8
  %410 = call double @llvm.fmuladd.f64(double %408, double %407, double %409)
  %411 = load double, ptr @A4, align 8
  %412 = call double @llvm.fmuladd.f64(double %410, double %407, double %411)
  %413 = load double, ptr @A3, align 8
  %414 = call double @llvm.fmuladd.f64(double %412, double %407, double %413)
  %415 = load double, ptr @A2, align 8
  %416 = call double @llvm.fmuladd.f64(double %414, double %407, double %415)
  %417 = load double, ptr @A1, align 8
  %418 = call double @llvm.fmuladd.f64(double %416, double %407, double %417)
  %419 = load double, ptr @one, align 8
  %420 = call double @llvm.fmuladd.f64(double %418, double %407, double %419)
  %421 = fmul double %406, %420
  %422 = load double, ptr @B6, align 8
  %423 = load double, ptr @B5, align 8
  %424 = call double @llvm.fmuladd.f64(double %422, double %407, double %423)
  %425 = load double, ptr @B4, align 8
  %426 = call double @llvm.fmuladd.f64(double %407, double %424, double %425)
  %427 = load double, ptr @B3, align 8
  %428 = call double @llvm.fmuladd.f64(double %407, double %426, double %427)
  %429 = load double, ptr @B2, align 8
  %430 = call double @llvm.fmuladd.f64(double %407, double %428, double %429)
  %431 = load double, ptr @B1, align 8
  %432 = call double @llvm.fmuladd.f64(double %407, double %430, double %431)
  %433 = call double @llvm.fmuladd.f64(double %407, double %432, double %419)
  %434 = call double @llvm.fmuladd.f64(double %421, double %433, double %.8)
  %435 = add nsw i32 %.718, 1
  br label %402, !llvm.loop !16

436:                                              ; preds = %402
  %437 = call i32 @dtime(ptr noundef @TimeArray)
  %438 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %439 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %440 = load double, ptr @nulltime, align 8
  %441 = fneg double %440
  %442 = call double @llvm.fmuladd.f64(double %438, double %439, double %441)
  store double %442, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %443 = load double, ptr @piref, align 8
  %444 = load double, ptr @four, align 8
  %445 = fdiv double %443, %444
  %446 = fmul double %445, %445
  %447 = load double, ptr @A6, align 8
  %448 = load double, ptr @A5, align 8
  %449 = call double @llvm.fmuladd.f64(double %447, double %446, double %448)
  %450 = load double, ptr @A4, align 8
  %451 = call double @llvm.fmuladd.f64(double %449, double %446, double %450)
  %452 = load double, ptr @A3, align 8
  %453 = call double @llvm.fmuladd.f64(double %451, double %446, double %452)
  %454 = load double, ptr @A2, align 8
  %455 = call double @llvm.fmuladd.f64(double %453, double %446, double %454)
  %456 = load double, ptr @A1, align 8
  %457 = call double @llvm.fmuladd.f64(double %455, double %446, double %456)
  %458 = load double, ptr @one, align 8
  %459 = call double @llvm.fmuladd.f64(double %457, double %446, double %458)
  %460 = fmul double %445, %459
  store double %460, ptr @sa, align 8
  %461 = load double, ptr @B6, align 8
  %462 = load double, ptr @B5, align 8
  %463 = call double @llvm.fmuladd.f64(double %461, double %446, double %462)
  %464 = load double, ptr @B4, align 8
  %465 = call double @llvm.fmuladd.f64(double %446, double %463, double %464)
  %466 = load double, ptr @B3, align 8
  %467 = call double @llvm.fmuladd.f64(double %446, double %465, double %466)
  %468 = load double, ptr @B2, align 8
  %469 = call double @llvm.fmuladd.f64(double %446, double %467, double %468)
  %470 = load double, ptr @B1, align 8
  %471 = call double @llvm.fmuladd.f64(double %446, double %469, double %470)
  %472 = call double @llvm.fmuladd.f64(double %446, double %471, double %458)
  store double %472, ptr @sb, align 8
  %473 = fmul double %460, %472
  store double %473, ptr @sa, align 8
  %474 = fdiv double %442, 2.900000e+01
  store double %474, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %475 = load double, ptr @two, align 8
  %476 = call double @llvm.fmuladd.f64(double %475, double %.8, double %473)
  %477 = fmul double %400, %476
  %478 = fdiv double %477, %475
  store double %478, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %479 = fsub double %478, 2.500000e-01
  store double %479, ptr @sc, align 8
  %480 = fdiv double %458, %474
  store double %480, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %481 = fmul double %479, 1.000000e-30
  %482 = fmul double %442, 1.000000e-30
  %483 = fmul double %480, 1.000000e-30
  %484 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, double noundef %481, double noundef %482, double noundef %483)
  %485 = load double, ptr @one, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %486 = fdiv double f0x40599541F7F192A4, %162
  %487 = call i32 @dtime(ptr noundef @TimeArray)
  br label %488

488:                                              ; preds = %490, %436
  %.819 = phi i32 [ 1, %436 ], [ %503, %490 ]
  %.9 = phi double [ 0.000000e+00, %436 ], [ %502, %490 ]
  %489 = icmp sle i32 %.819, %167
  br i1 %489, label %490, label %504

490:                                              ; preds = %488
  %491 = sitofp i32 %.819 to double
  %492 = fmul double %491, %486
  %493 = fmul double %492, %492
  %494 = fadd double %492, %485
  %495 = fdiv double %485, %494
  %496 = fsub double %.9, %495
  %497 = fadd double %493, %485
  %498 = fdiv double %492, %497
  %499 = fsub double %496, %498
  %500 = call double @llvm.fmuladd.f64(double %492, double %493, double %485)
  %501 = fdiv double %493, %500
  %502 = fsub double %499, %501
  %503 = add nsw i32 %.819, 1
  br label %488, !llvm.loop !17

504:                                              ; preds = %488
  %505 = call i32 @dtime(ptr noundef @TimeArray)
  %506 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %507 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %508 = load double, ptr @nulltime, align 8
  %509 = fneg double %508
  %510 = call double @llvm.fmuladd.f64(double %506, double %507, double %509)
  store double %510, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %511 = fdiv double %510, 1.200000e+01
  store double %511, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %512 = load double, ptr @sa, align 8
  %513 = fmul double %512, %512
  %514 = fneg double %485
  %515 = fadd double %512, %485
  %516 = fdiv double %485, %515
  %517 = fsub double %514, %516
  %518 = fadd double %513, %485
  %519 = fdiv double %512, %518
  %520 = fsub double %517, %519
  %521 = call double @llvm.fmuladd.f64(double %512, double %513, double %485)
  %522 = fdiv double %513, %521
  %523 = fsub double %520, %522
  store double %523, ptr @sa, align 8
  %524 = fmul double 1.800000e+01, %486
  %525 = load double, ptr @two, align 8
  %526 = call double @llvm.fmuladd.f64(double %525, double %.9, double %523)
  %527 = fmul double %524, %526
  store double %527, ptr @sa, align 8
  %528 = fptosi double %527 to i32
  %529 = mul nsw i32 -2000, %528
  %530 = sitofp i32 %529 to double
  %531 = load double, ptr @scale, align 8
  %532 = fdiv double %530, %531
  %533 = fptosi double %532 to i32
  %534 = fadd double %527, 5.002000e+02
  store double %534, ptr @sc, align 8
  %535 = load double, ptr @one, align 8
  %536 = fdiv double %535, %511
  store double %536, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %537 = fmul double %534, 1.000000e-30
  %538 = fmul double %510, 1.000000e-30
  %539 = fmul double %536, 1.000000e-30
  %540 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, double noundef %537, double noundef %538, double noundef %539)
  %541 = load double, ptr @piref, align 8
  %542 = load double, ptr @three, align 8
  %543 = sitofp i32 %533 to double
  %544 = fmul double %542, %543
  %545 = fdiv double %541, %544
  %546 = call i32 @dtime(ptr noundef @TimeArray)
  br label %547

547:                                              ; preds = %550, %504
  %.920 = phi i32 [ 1, %504 ], [ %582, %550 ]
  %.10 = phi double [ 0.000000e+00, %504 ], [ %581, %550 ]
  %548 = sub nsw i32 %533, 1
  %549 = icmp sle i32 %.920, %548
  br i1 %549, label %550, label %583

550:                                              ; preds = %547
  %551 = sitofp i32 %.920 to double
  %552 = fmul double %551, %545
  %553 = fmul double %552, %552
  %554 = load double, ptr @B6, align 8
  %555 = load double, ptr @B5, align 8
  %556 = call double @llvm.fmuladd.f64(double %554, double %553, double %555)
  %557 = load double, ptr @B4, align 8
  %558 = call double @llvm.fmuladd.f64(double %553, double %556, double %557)
  %559 = load double, ptr @B3, align 8
  %560 = call double @llvm.fmuladd.f64(double %553, double %558, double %559)
  %561 = load double, ptr @B2, align 8
  %562 = call double @llvm.fmuladd.f64(double %553, double %560, double %561)
  %563 = load double, ptr @B1, align 8
  %564 = call double @llvm.fmuladd.f64(double %553, double %562, double %563)
  %565 = load double, ptr @one, align 8
  %566 = call double @llvm.fmuladd.f64(double %553, double %564, double %565)
  %567 = fmul double %566, %566
  %568 = fmul double %567, %552
  %569 = load double, ptr @A6, align 8
  %570 = load double, ptr @A5, align 8
  %571 = call double @llvm.fmuladd.f64(double %569, double %553, double %570)
  %572 = load double, ptr @A4, align 8
  %573 = call double @llvm.fmuladd.f64(double %571, double %553, double %572)
  %574 = load double, ptr @A3, align 8
  %575 = call double @llvm.fmuladd.f64(double %573, double %553, double %574)
  %576 = load double, ptr @A2, align 8
  %577 = call double @llvm.fmuladd.f64(double %575, double %553, double %576)
  %578 = load double, ptr @A1, align 8
  %579 = call double @llvm.fmuladd.f64(double %577, double %553, double %578)
  %580 = call double @llvm.fmuladd.f64(double %579, double %553, double %565)
  %581 = call double @llvm.fmuladd.f64(double %568, double %580, double %.10)
  %582 = add nsw i32 %.920, 1
  br label %547, !llvm.loop !18

583:                                              ; preds = %547
  %584 = call i32 @dtime(ptr noundef @TimeArray)
  %585 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %586 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %587 = load double, ptr @nulltime, align 8
  %588 = fneg double %587
  %589 = call double @llvm.fmuladd.f64(double %585, double %586, double %588)
  store double %589, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %590 = load double, ptr @piref, align 8
  %591 = load double, ptr @three, align 8
  %592 = fdiv double %590, %591
  %593 = fmul double %592, %592
  %594 = load double, ptr @A6, align 8
  %595 = load double, ptr @A5, align 8
  %596 = call double @llvm.fmuladd.f64(double %594, double %593, double %595)
  %597 = load double, ptr @A4, align 8
  %598 = call double @llvm.fmuladd.f64(double %596, double %593, double %597)
  %599 = load double, ptr @A3, align 8
  %600 = call double @llvm.fmuladd.f64(double %598, double %593, double %599)
  %601 = load double, ptr @A2, align 8
  %602 = call double @llvm.fmuladd.f64(double %600, double %593, double %601)
  %603 = load double, ptr @A1, align 8
  %604 = call double @llvm.fmuladd.f64(double %602, double %593, double %603)
  %605 = load double, ptr @one, align 8
  %606 = call double @llvm.fmuladd.f64(double %604, double %593, double %605)
  %607 = fmul double %592, %606
  store double %607, ptr @sa, align 8
  %608 = load double, ptr @B6, align 8
  %609 = load double, ptr @B5, align 8
  %610 = call double @llvm.fmuladd.f64(double %608, double %593, double %609)
  %611 = load double, ptr @B4, align 8
  %612 = call double @llvm.fmuladd.f64(double %593, double %610, double %611)
  %613 = load double, ptr @B3, align 8
  %614 = call double @llvm.fmuladd.f64(double %593, double %612, double %613)
  %615 = load double, ptr @B2, align 8
  %616 = call double @llvm.fmuladd.f64(double %593, double %614, double %615)
  %617 = load double, ptr @B1, align 8
  %618 = call double @llvm.fmuladd.f64(double %593, double %616, double %617)
  %619 = call double @llvm.fmuladd.f64(double %593, double %618, double %605)
  store double %619, ptr @sb, align 8
  %620 = fmul double %607, %619
  %621 = fmul double %620, %619
  store double %621, ptr @sa, align 8
  %622 = fdiv double %589, 3.000000e+01
  store double %622, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %623 = load double, ptr @two, align 8
  %624 = call double @llvm.fmuladd.f64(double %623, double %.10, double %621)
  %625 = fmul double %545, %624
  %626 = fdiv double %625, %623
  store double %626, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %627 = fsub double %626, f0x3FD2AAAAAAAAAAAB
  store double %627, ptr @sc, align 8
  %628 = fdiv double %605, %622
  store double %628, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %629 = fmul double %627, 1.000000e-30
  %630 = fmul double %589, 1.000000e-30
  %631 = fmul double %628, 1.000000e-30
  %632 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, double noundef %629, double noundef %630, double noundef %631)
  %633 = load double, ptr @five, align 8
  %634 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %635 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %636 = fsub double %634, %635
  %637 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %638 = call double @llvm.fmuladd.f64(double %633, double %636, double %637)
  %639 = fdiv double %638, 5.200000e+01
  store double %639, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %640 = load double, ptr @one, align 8
  %641 = fdiv double %640, %639
  store double %641, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %642 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %643 = fadd double %642, %637
  %644 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %645 = fadd double %643, %644
  %646 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %647 = fadd double %645, %646
  %648 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %649 = fadd double %647, %648
  store double %649, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %650 = load double, ptr @four, align 8
  %651 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %652 = call double @llvm.fmuladd.f64(double %650, double %651, double %649)
  %653 = fdiv double %652, 1.520000e+02
  store double %653, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %654 = fdiv double %640, %653
  store double %654, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %649, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %655 = fadd double %649, %651
  %656 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %657 = fadd double %655, %656
  %658 = fdiv double %657, 1.460000e+02
  store double %658, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %659 = fdiv double %640, %658
  store double %659, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %660 = fadd double %637, %644
  %661 = fadd double %660, %648
  %662 = fadd double %661, %656
  %663 = fdiv double %662, 9.100000e+01
  store double %663, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %664 = fdiv double %640, %663
  store double %664, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %665 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %666 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %533)
  %667 = load double, ptr @nulltime, align 8
  %668 = fmul double %667, 1.000000e-30
  %669 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, double noundef %668)
  %670 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %671 = fmul double %670, 1.000000e-30
  %672 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, double noundef %671)
  %673 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %674 = fmul double %673, 1.000000e-30
  %675 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, double noundef %674)
  %676 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %677 = fmul double %676, 1.000000e-30
  %678 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, double noundef %677)
  %679 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %680 = fmul double %679, 1.000000e-30
  %681 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, double noundef %680)
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
