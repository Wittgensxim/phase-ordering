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
  %23 = load i32, ptr %8, align 4
  %.promoted7 = load i32, ptr %11, align 4
  %.promoted10 = load double, ptr %6, align 8
  %.promoted13 = load double, ptr %2, align 8
  %.promoted15 = load double, ptr %4, align 8
  %.promoted17 = load i32, ptr %9, align 4
  %.promoted = load double, ptr %3, align 8
  br label %24

24:                                               ; preds = %69, %0
  %.lcssa419 = phi double [ %.lcssa4, %69 ], [ %.promoted, %0 ]
  %.lcssa18 = phi i32 [ %.lcssa, %69 ], [ %.promoted17, %0 ]
  %.lcssa216 = phi double [ %.lcssa2, %69 ], [ %.promoted15, %0 ]
  %.lcssa614 = phi double [ %.lcssa6, %69 ], [ %.promoted13, %0 ]
  %25 = phi double [ %34, %69 ], [ %.promoted10, %0 ]
  %26 = phi i32 [ %31, %69 ], [ %.promoted7, %0 ]
  %27 = load double, ptr @sa, align 8
  %28 = load double, ptr @TLimit, align 8
  %29 = fcmp olt double %27, %28
  br i1 %29, label %30, label %.loopexit

30:                                               ; preds = %24
  %31 = mul nsw i32 %26, 2
  %32 = load double, ptr @one, align 8
  %33 = sitofp i32 %31 to double
  %34 = fdiv double %32, %33
  %35 = load double, ptr @one, align 8
  store double %35, ptr %5, align 8
  %36 = call i32 @dtime(ptr noundef @TimeArray)
  %37 = sub nsw i32 %31, 1
  %38 = load double, ptr %5, align 8
  %39 = load double, ptr @D1, align 8
  %40 = load double, ptr @D2, align 8
  %41 = load double, ptr @D3, align 8
  %42 = load double, ptr %5, align 8
  %43 = load double, ptr @D1, align 8
  %44 = load double, ptr @E2, align 8
  %45 = load double, ptr @E3, align 8
  br label %46

46:                                               ; preds = %62, %30
  %47 = phi double [ %61, %62 ], [ 0.000000e+00, %30 ]
  %48 = phi double [ %54, %62 ], [ %.lcssa419, %30 ]
  %49 = phi double [ %53, %62 ], [ 0.000000e+00, %30 ]
  %50 = phi i32 [ %63, %62 ], [ 1, %30 ]
  %51 = icmp sle i32 %50, %37
  br i1 %51, label %52, label %64

52:                                               ; preds = %46
  %53 = fadd double %49, %38
  %54 = fmul double %53, %34
  %55 = call double @llvm.fmuladd.f64(double %54, double %41, double %40)
  %56 = call double @llvm.fmuladd.f64(double %54, double %55, double %39)
  %57 = call double @llvm.fmuladd.f64(double %54, double %45, double %44)
  %58 = call double @llvm.fmuladd.f64(double %54, double %57, double %43)
  %59 = call double @llvm.fmuladd.f64(double %54, double %58, double %42)
  %60 = fdiv double %56, %59
  %61 = fadd double %47, %60
  br label %62

62:                                               ; preds = %52
  %63 = add nsw i32 %50, 1
  br label %46, !llvm.loop !7

64:                                               ; preds = %46
  %.lcssa6 = phi double [ %47, %46 ]
  %.lcssa4 = phi double [ %48, %46 ]
  %.lcssa2 = phi double [ %49, %46 ]
  %.lcssa = phi i32 [ %50, %46 ]
  %65 = call i32 @dtime(ptr noundef @TimeArray)
  %66 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %66, ptr @sa, align 8
  %67 = icmp eq i32 %31, %23
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  %.lcssa4.lcssa = phi double [ %.lcssa4, %64 ]
  %.lcssa.lcssa = phi i32 [ %.lcssa, %64 ]
  %.lcssa2.lcssa = phi double [ %.lcssa2, %64 ]
  %.lcssa6.lcssa = phi double [ %.lcssa6, %64 ]
  %.lcssa12 = phi double [ %34, %64 ]
  %.lcssa9 = phi i32 [ %31, %64 ]
  store i32 %.lcssa9, ptr %11, align 4
  store double %.lcssa12, ptr %6, align 8
  store double %.lcssa6.lcssa, ptr %2, align 8
  store double %.lcssa2.lcssa, ptr %4, align 8
  store i32 %.lcssa.lcssa, ptr %9, align 4
  store double %.lcssa4.lcssa, ptr %3, align 8
  br label %70

69:                                               ; preds = %64
  br label %24, !llvm.loop !9

.loopexit:                                        ; preds = %24
  %.lcssa419.lcssa = phi double [ %.lcssa419, %24 ]
  %.lcssa18.lcssa = phi i32 [ %.lcssa18, %24 ]
  %.lcssa216.lcssa = phi double [ %.lcssa216, %24 ]
  %.lcssa614.lcssa = phi double [ %.lcssa614, %24 ]
  %.lcssa11 = phi double [ %25, %24 ]
  %.lcssa8 = phi i32 [ %26, %24 ]
  store i32 %.lcssa8, ptr %11, align 4
  store double %.lcssa11, ptr %6, align 8
  store double %.lcssa614.lcssa, ptr %2, align 8
  store double %.lcssa216.lcssa, ptr %4, align 8
  store i32 %.lcssa18.lcssa, ptr %9, align 4
  store double %.lcssa419.lcssa, ptr %3, align 8
  br label %70

70:                                               ; preds = %.loopexit, %68
  store double 1.589500e-02, ptr @scale, align 8
  %71 = load double, ptr @scale, align 8
  store double %71, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %72 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %73 = load i32, ptr %11, align 4
  %74 = sub nsw i32 %73, 1
  %.promoted20 = load i32, ptr %9, align 4
  br label %75

75:                                               ; preds = %79, %70
  %76 = phi i32 [ %80, %79 ], [ %.promoted20, %70 ]
  %77 = icmp sle i32 %76, %74
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  br label %79

79:                                               ; preds = %78
  %80 = add nsw i32 %76, 1
  br label %75, !llvm.loop !10

81:                                               ; preds = %75
  %.lcssa21 = phi i32 [ %76, %75 ]
  store i32 %.lcssa21, ptr %9, align 4
  %82 = call i32 @dtime(ptr noundef @TimeArray)
  %83 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %84 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %85 = fmul double %83, %84
  store double %85, ptr @nulltime, align 8
  %86 = load double, ptr @nulltime, align 8
  %87 = fcmp olt double %86, 0.000000e+00
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  store double 0.000000e+00, ptr @nulltime, align 8
  br label %89

89:                                               ; preds = %88, %81
  %90 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %91 = load double, ptr @sa, align 8
  %92 = load double, ptr @nulltime, align 8
  %93 = fneg double %92
  %94 = call double @llvm.fmuladd.f64(double %90, double %91, double %93)
  store double %94, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %95 = load double, ptr @D1, align 8
  %96 = load double, ptr @D2, align 8
  %97 = fadd double %95, %96
  %98 = load double, ptr @D3, align 8
  %99 = fadd double %97, %98
  %100 = load double, ptr @one, align 8
  %101 = load double, ptr @D1, align 8
  %102 = fadd double %100, %101
  %103 = load double, ptr @E2, align 8
  %104 = fadd double %102, %103
  %105 = load double, ptr @E3, align 8
  %106 = fadd double %104, %105
  %107 = fdiv double %99, %106
  store double %107, ptr @sa, align 8
  %108 = load double, ptr @D1, align 8
  store double %108, ptr @sb, align 8
  %109 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %110 = fdiv double %109, 1.400000e+01
  store double %110, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %111 = load double, ptr %6, align 8
  %112 = load double, ptr @sa, align 8
  %113 = load double, ptr @sb, align 8
  %114 = fadd double %112, %113
  %115 = load double, ptr @two, align 8
  %116 = load double, ptr %2, align 8
  %117 = call double @llvm.fmuladd.f64(double %115, double %116, double %114)
  %118 = fmul double %111, %117
  %119 = load double, ptr @two, align 8
  %120 = fdiv double %118, %119
  store double %120, ptr @sa, align 8
  %121 = load double, ptr @one, align 8
  %122 = load double, ptr @sa, align 8
  %123 = fdiv double %121, %122
  store double %123, ptr @sb, align 8
  %124 = load double, ptr @sb, align 8
  %125 = fptosi double %124 to i32
  %126 = mul nsw i32 %125, 40000
  %127 = sitofp i32 %126 to double
  %128 = load double, ptr @scale, align 8
  %129 = fdiv double %127, %128
  %130 = fptosi double %129 to i32
  store i32 %130, ptr %11, align 4
  %131 = load double, ptr @sb, align 8
  %132 = fsub double %131, 2.520000e+01
  store double %132, ptr @sc, align 8
  %133 = load double, ptr @one, align 8
  %134 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %135 = fdiv double %133, %134
  store double %135, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %136 = load double, ptr @sc, align 8
  %137 = fmul double %136, 1.000000e-30
  %138 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %139 = fmul double %138, 1.000000e-30
  %140 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %141 = fmul double %140, 1.000000e-30
  %142 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %137, double noundef %139, double noundef %141)
  %143 = load i32, ptr %11, align 4
  store i32 %143, ptr %10, align 4
  %144 = load double, ptr @five, align 8
  %145 = fneg double %144
  store double %145, ptr %2, align 8
  %146 = load double, ptr @one, align 8
  %147 = fneg double %146
  store double %147, ptr @sa, align 8
  %148 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %149 = load i32, ptr %10, align 4
  %.promoted22 = load i32, ptr %9, align 4
  %.promoted24 = load double, ptr %2, align 8
  %sa.promoted = load double, ptr @sa, align 8
  br label %150

150:                                              ; preds = %158, %89
  %151 = phi double [ %157, %158 ], [ %sa.promoted, %89 ]
  %152 = phi double [ %156, %158 ], [ %.promoted24, %89 ]
  %153 = phi i32 [ %159, %158 ], [ %.promoted22, %89 ]
  %154 = icmp sle i32 %153, %149
  br i1 %154, label %155, label %160

155:                                              ; preds = %150
  %156 = fneg double %152
  %157 = fadd double %151, %156
  store double %157, ptr @sa, align 8
  br label %158

158:                                              ; preds = %155
  %159 = add nsw i32 %153, 1
  br label %150, !llvm.loop !11

160:                                              ; preds = %150
  %.lcssa25 = phi double [ %152, %150 ]
  %.lcssa23 = phi i32 [ %153, %150 ]
  store i32 %.lcssa23, ptr %9, align 4
  store double %.lcssa25, ptr %2, align 8
  %161 = call i32 @dtime(ptr noundef @TimeArray)
  %162 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %163 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %164 = fmul double %162, %163
  store double %164, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %165 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %166 = fcmp olt double %165, 0.000000e+00
  br i1 %166, label %167, label %168

167:                                              ; preds = %160
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  br label %168

168:                                              ; preds = %167, %160
  %169 = load i32, ptr %10, align 4
  %170 = sitofp i32 %169 to double
  store double %170, ptr @sc, align 8
  %171 = load double, ptr @sa, align 8
  store double %171, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  store double 0.000000e+00, ptr %6, align 8
  %172 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %173 = load i32, ptr %10, align 4
  %174 = load double, ptr @two, align 8
  %.promoted26 = load i32, ptr %9, align 4
  %.promoted28 = load double, ptr %2, align 8
  %sa.promoted30 = load double, ptr @sa, align 8
  %.promoted31 = load double, ptr %3, align 8
  %.promoted33 = load double, ptr %6, align 8
  %.promoted35 = load double, ptr %4, align 8
  %.promoted37 = load double, ptr %5, align 8
  br label %175

175:                                              ; preds = %194, %168
  %176 = phi double [ %193, %194 ], [ %.promoted37, %168 ]
  %177 = phi double [ %191, %194 ], [ %.promoted35, %168 ]
  %178 = phi double [ %189, %194 ], [ %.promoted33, %168 ]
  %179 = phi double [ %187, %194 ], [ %.promoted31, %168 ]
  %180 = phi double [ %186, %194 ], [ %sa.promoted30, %168 ]
  %181 = phi double [ %185, %194 ], [ %.promoted28, %168 ]
  %182 = phi i32 [ %195, %194 ], [ %.promoted26, %168 ]
  %183 = icmp sle i32 %182, %173
  br i1 %183, label %184, label %196

184:                                              ; preds = %175
  %185 = fneg double %181
  %186 = fadd double %180, %185
  store double %186, ptr @sa, align 8
  %187 = fadd double %179, %174
  %188 = fsub double %185, %187
  %189 = fadd double %178, %188
  %190 = fneg double %185
  %191 = call double @llvm.fmuladd.f64(double %190, double %187, double %177)
  %192 = fdiv double %185, %187
  %193 = fadd double %176, %192
  store double %193, ptr %5, align 8
  br label %194

194:                                              ; preds = %184
  %195 = add nsw i32 %182, 1
  br label %175, !llvm.loop !12

196:                                              ; preds = %175
  %.lcssa36 = phi double [ %177, %175 ]
  %.lcssa34 = phi double [ %178, %175 ]
  %.lcssa32 = phi double [ %179, %175 ]
  %.lcssa29 = phi double [ %181, %175 ]
  %.lcssa27 = phi i32 [ %182, %175 ]
  store i32 %.lcssa27, ptr %9, align 4
  store double %.lcssa29, ptr %2, align 8
  store double %.lcssa32, ptr %3, align 8
  store double %.lcssa34, ptr %6, align 8
  store double %.lcssa36, ptr %4, align 8
  %197 = call i32 @dtime(ptr noundef @TimeArray)
  %198 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %199 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %200 = fmul double %198, %199
  store double %200, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %201 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %202 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %203 = fsub double %201, %202
  %204 = fdiv double %203, 7.000000e+00
  store double %204, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %205 = load double, ptr @sa, align 8
  %206 = load double, ptr %6, align 8
  %207 = fmul double %205, %206
  %208 = load double, ptr @sc, align 8
  %209 = fdiv double %207, %208
  %210 = fptosi double %209 to i32
  store i32 %210, ptr %10, align 4
  %211 = load double, ptr @four, align 8
  %212 = load double, ptr %5, align 8
  %213 = fmul double %211, %212
  %214 = load double, ptr @five, align 8
  %215 = fdiv double %213, %214
  store double %215, ptr @sa, align 8
  %216 = load double, ptr @sa, align 8
  %217 = load double, ptr @five, align 8
  %218 = load double, ptr %4, align 8
  %219 = fdiv double %217, %218
  %220 = fadd double %216, %219
  store double %220, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %221 = load double, ptr @sb, align 8
  %222 = load double, ptr @sc, align 8
  %223 = load double, ptr %4, align 8
  %224 = load double, ptr %4, align 8
  %225 = fmul double %223, %224
  %226 = load double, ptr %4, align 8
  %227 = fmul double %225, %226
  %228 = fdiv double %222, %227
  %229 = fsub double %221, %228
  store double %229, ptr @piprg, align 8
  %230 = load double, ptr @piprg, align 8
  %231 = load double, ptr @piref, align 8
  %232 = fsub double %230, %231
  store double %232, ptr @pierr, align 8
  %233 = load double, ptr @one, align 8
  %234 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %235 = fdiv double %233, %234
  store double %235, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %236 = load double, ptr @pierr, align 8
  %237 = fmul double %236, 1.000000e-30
  %238 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %239 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %240 = fsub double %238, %239
  %241 = fmul double %240, 1.000000e-30
  %242 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %243 = fmul double %242, 1.000000e-30
  %244 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %237, double noundef %241, double noundef %243)
  %245 = load double, ptr @piref, align 8
  %246 = load double, ptr @three, align 8
  %247 = load i32, ptr %10, align 4
  %248 = sitofp i32 %247 to double
  %249 = fmul double %246, %248
  %250 = fdiv double %245, %249
  store double %250, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %251 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %252 = load i32, ptr %10, align 4
  %253 = sub nsw i32 %252, 1
  %254 = load double, ptr @one, align 8
  %255 = load double, ptr %6, align 8
  %256 = load double, ptr @A6, align 8
  %257 = load double, ptr @A5, align 8
  %258 = fneg double %257
  %259 = load double, ptr @A4, align 8
  %260 = load double, ptr @A3, align 8
  %261 = fneg double %260
  %262 = load double, ptr @A2, align 8
  %263 = load double, ptr @A1, align 8
  %264 = load double, ptr @one, align 8
  %.promoted38 = load i32, ptr %9, align 4
  %.promoted40 = load double, ptr %4, align 8
  %.promoted42 = load double, ptr %3, align 8
  %.promoted45 = load double, ptr %2, align 8
  br label %265

265:                                              ; preds = %282, %196
  %266 = phi double [ %281, %282 ], [ %.promoted45, %196 ]
  %267 = phi double [ %273, %282 ], [ %.promoted42, %196 ]
  %268 = phi double [ %272, %282 ], [ %.promoted40, %196 ]
  %269 = phi i32 [ %283, %282 ], [ %.promoted38, %196 ]
  %270 = icmp sle i32 %269, %253
  br i1 %270, label %271, label %284

271:                                              ; preds = %265
  %272 = fadd double %268, %254
  %273 = fmul double %272, %255
  %274 = fmul double %273, %273
  store double %274, ptr %5, align 8
  %275 = call double @llvm.fmuladd.f64(double %256, double %274, double %258)
  %276 = call double @llvm.fmuladd.f64(double %275, double %274, double %259)
  %277 = call double @llvm.fmuladd.f64(double %276, double %274, double %261)
  %278 = call double @llvm.fmuladd.f64(double %277, double %274, double %262)
  %279 = call double @llvm.fmuladd.f64(double %278, double %274, double %263)
  %280 = call double @llvm.fmuladd.f64(double %279, double %274, double %264)
  %281 = call double @llvm.fmuladd.f64(double %273, double %280, double %266)
  br label %282

282:                                              ; preds = %271
  %283 = add nsw i32 %269, 1
  br label %265, !llvm.loop !13

284:                                              ; preds = %265
  %.lcssa46 = phi double [ %266, %265 ]
  %.lcssa43 = phi double [ %267, %265 ]
  %.lcssa41 = phi double [ %268, %265 ]
  %.lcssa39 = phi i32 [ %269, %265 ]
  store i32 %.lcssa39, ptr %9, align 4
  store double %.lcssa41, ptr %4, align 8
  store double %.lcssa43, ptr %3, align 8
  store double %.lcssa46, ptr %2, align 8
  %285 = call i32 @dtime(ptr noundef @TimeArray)
  %286 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %287 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %288 = load double, ptr @nulltime, align 8
  %289 = fneg double %288
  %290 = call double @llvm.fmuladd.f64(double %286, double %287, double %289)
  store double %290, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %291 = load double, ptr @piref, align 8
  %292 = load double, ptr @three, align 8
  %293 = fdiv double %291, %292
  store double %293, ptr %3, align 8
  %294 = load double, ptr %3, align 8
  %295 = load double, ptr %3, align 8
  %296 = fmul double %294, %295
  store double %296, ptr %5, align 8
  %297 = load double, ptr %3, align 8
  %298 = load double, ptr @A6, align 8
  %299 = load double, ptr %5, align 8
  %300 = load double, ptr @A5, align 8
  %301 = fneg double %300
  %302 = call double @llvm.fmuladd.f64(double %298, double %299, double %301)
  %303 = load double, ptr %5, align 8
  %304 = load double, ptr @A4, align 8
  %305 = call double @llvm.fmuladd.f64(double %302, double %303, double %304)
  %306 = load double, ptr %5, align 8
  %307 = load double, ptr @A3, align 8
  %308 = fneg double %307
  %309 = call double @llvm.fmuladd.f64(double %305, double %306, double %308)
  %310 = load double, ptr %5, align 8
  %311 = load double, ptr @A2, align 8
  %312 = call double @llvm.fmuladd.f64(double %309, double %310, double %311)
  %313 = load double, ptr %5, align 8
  %314 = load double, ptr @A1, align 8
  %315 = call double @llvm.fmuladd.f64(double %312, double %313, double %314)
  %316 = load double, ptr %5, align 8
  %317 = load double, ptr @one, align 8
  %318 = call double @llvm.fmuladd.f64(double %315, double %316, double %317)
  %319 = fmul double %297, %318
  store double %319, ptr @sa, align 8
  %320 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %321 = fdiv double %320, 1.700000e+01
  store double %321, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %322 = load double, ptr %6, align 8
  %323 = load double, ptr @sa, align 8
  %324 = load double, ptr @two, align 8
  %325 = load double, ptr %2, align 8
  %326 = call double @llvm.fmuladd.f64(double %324, double %325, double %323)
  %327 = fmul double %322, %326
  %328 = load double, ptr @two, align 8
  %329 = fdiv double %327, %328
  store double %329, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %330 = load double, ptr @sa, align 8
  %331 = load double, ptr @sb, align 8
  %332 = fsub double %330, %331
  store double %332, ptr @sc, align 8
  %333 = load double, ptr @one, align 8
  %334 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %335 = fdiv double %333, %334
  store double %335, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %336 = load double, ptr @sc, align 8
  %337 = fmul double %336, 1.000000e-30
  %338 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %339 = fmul double %338, 1.000000e-30
  %340 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %341 = fmul double %340, 1.000000e-30
  %342 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %337, double noundef %339, double noundef %341)
  %343 = load double, ptr @A3, align 8
  %344 = fneg double %343
  store double %344, ptr @A3, align 8
  %345 = load double, ptr @A5, align 8
  %346 = fneg double %345
  store double %346, ptr @A5, align 8
  %347 = load double, ptr @piref, align 8
  %348 = load double, ptr @three, align 8
  %349 = load i32, ptr %10, align 4
  %350 = sitofp i32 %349 to double
  %351 = fmul double %348, %350
  %352 = fdiv double %347, %351
  store double %352, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %353 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %354 = load i32, ptr %10, align 4
  %355 = sub nsw i32 %354, 1
  %356 = load double, ptr %6, align 8
  %357 = load double, ptr @B6, align 8
  %358 = load double, ptr @B5, align 8
  %359 = load double, ptr @B4, align 8
  %360 = load double, ptr @B3, align 8
  %361 = load double, ptr @B2, align 8
  %362 = load double, ptr @B1, align 8
  %363 = load double, ptr @one, align 8
  %.promoted47 = load i32, ptr %9, align 4
  %.promoted49 = load double, ptr %3, align 8
  %.promoted52 = load double, ptr %2, align 8
  br label %364

364:                                              ; preds = %380, %284
  %365 = phi double [ %379, %380 ], [ %.promoted52, %284 ]
  %366 = phi double [ %371, %380 ], [ %.promoted49, %284 ]
  %367 = phi i32 [ %381, %380 ], [ %.promoted47, %284 ]
  %368 = icmp sle i32 %367, %355
  br i1 %368, label %369, label %382

369:                                              ; preds = %364
  %370 = sitofp i32 %367 to double
  %371 = fmul double %370, %356
  %372 = fmul double %371, %371
  store double %372, ptr %5, align 8
  %373 = call double @llvm.fmuladd.f64(double %357, double %372, double %358)
  %374 = call double @llvm.fmuladd.f64(double %372, double %373, double %359)
  %375 = call double @llvm.fmuladd.f64(double %372, double %374, double %360)
  %376 = call double @llvm.fmuladd.f64(double %372, double %375, double %361)
  %377 = call double @llvm.fmuladd.f64(double %372, double %376, double %362)
  %378 = call double @llvm.fmuladd.f64(double %372, double %377, double %365)
  %379 = fadd double %363, %378
  br label %380

380:                                              ; preds = %369
  %381 = add nsw i32 %367, 1
  br label %364, !llvm.loop !14

382:                                              ; preds = %364
  %.lcssa53 = phi double [ %365, %364 ]
  %.lcssa50 = phi double [ %366, %364 ]
  %.lcssa48 = phi i32 [ %367, %364 ]
  store i32 %.lcssa48, ptr %9, align 4
  store double %.lcssa50, ptr %3, align 8
  store double %.lcssa53, ptr %2, align 8
  %383 = call i32 @dtime(ptr noundef @TimeArray)
  %384 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %385 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %386 = load double, ptr @nulltime, align 8
  %387 = fneg double %386
  %388 = call double @llvm.fmuladd.f64(double %384, double %385, double %387)
  store double %388, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %389 = load double, ptr @piref, align 8
  %390 = load double, ptr @three, align 8
  %391 = fdiv double %389, %390
  store double %391, ptr %3, align 8
  %392 = load double, ptr %3, align 8
  %393 = load double, ptr %3, align 8
  %394 = fmul double %392, %393
  store double %394, ptr %5, align 8
  %395 = load double, ptr %5, align 8
  %396 = load double, ptr %5, align 8
  %397 = load double, ptr %5, align 8
  %398 = load double, ptr %5, align 8
  %399 = load double, ptr %5, align 8
  %400 = load double, ptr @B6, align 8
  %401 = load double, ptr %5, align 8
  %402 = load double, ptr @B5, align 8
  %403 = call double @llvm.fmuladd.f64(double %400, double %401, double %402)
  %404 = load double, ptr @B4, align 8
  %405 = call double @llvm.fmuladd.f64(double %399, double %403, double %404)
  %406 = load double, ptr @B3, align 8
  %407 = call double @llvm.fmuladd.f64(double %398, double %405, double %406)
  %408 = load double, ptr @B2, align 8
  %409 = call double @llvm.fmuladd.f64(double %397, double %407, double %408)
  %410 = load double, ptr @B1, align 8
  %411 = call double @llvm.fmuladd.f64(double %396, double %409, double %410)
  %412 = load double, ptr @one, align 8
  %413 = call double @llvm.fmuladd.f64(double %395, double %411, double %412)
  store double %413, ptr @sa, align 8
  %414 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %415 = fdiv double %414, 1.500000e+01
  store double %415, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %416 = load double, ptr %6, align 8
  %417 = load double, ptr @sa, align 8
  %418 = load double, ptr @one, align 8
  %419 = fadd double %417, %418
  %420 = load double, ptr @two, align 8
  %421 = load double, ptr %2, align 8
  %422 = call double @llvm.fmuladd.f64(double %420, double %421, double %419)
  %423 = fmul double %416, %422
  %424 = load double, ptr @two, align 8
  %425 = fdiv double %423, %424
  store double %425, ptr @sa, align 8
  %426 = load double, ptr @piref, align 8
  %427 = load double, ptr @three, align 8
  %428 = fdiv double %426, %427
  store double %428, ptr %3, align 8
  %429 = load double, ptr %3, align 8
  %430 = load double, ptr %3, align 8
  %431 = fmul double %429, %430
  store double %431, ptr %5, align 8
  %432 = load double, ptr %3, align 8
  %433 = load double, ptr @A6, align 8
  %434 = load double, ptr %5, align 8
  %435 = load double, ptr @A5, align 8
  %436 = call double @llvm.fmuladd.f64(double %433, double %434, double %435)
  %437 = load double, ptr %5, align 8
  %438 = load double, ptr @A4, align 8
  %439 = call double @llvm.fmuladd.f64(double %436, double %437, double %438)
  %440 = load double, ptr %5, align 8
  %441 = load double, ptr @A3, align 8
  %442 = call double @llvm.fmuladd.f64(double %439, double %440, double %441)
  %443 = load double, ptr %5, align 8
  %444 = load double, ptr @A2, align 8
  %445 = call double @llvm.fmuladd.f64(double %442, double %443, double %444)
  %446 = load double, ptr %5, align 8
  %447 = load double, ptr @A1, align 8
  %448 = call double @llvm.fmuladd.f64(double %445, double %446, double %447)
  %449 = load double, ptr %5, align 8
  %450 = load double, ptr @A0, align 8
  %451 = call double @llvm.fmuladd.f64(double %448, double %449, double %450)
  %452 = fmul double %432, %451
  store double %452, ptr @sb, align 8
  %453 = load double, ptr @sa, align 8
  %454 = load double, ptr @sb, align 8
  %455 = fsub double %453, %454
  store double %455, ptr @sc, align 8
  %456 = load double, ptr @one, align 8
  %457 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %458 = fdiv double %456, %457
  store double %458, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %459 = load double, ptr @sc, align 8
  %460 = fmul double %459, 1.000000e-30
  %461 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %462 = fmul double %461, 1.000000e-30
  %463 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %464 = fmul double %463, 1.000000e-30
  %465 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %460, double noundef %462, double noundef %464)
  %466 = load double, ptr @piref, align 8
  %467 = load double, ptr @three, align 8
  %468 = load i32, ptr %10, align 4
  %469 = sitofp i32 %468 to double
  %470 = fmul double %467, %469
  %471 = fdiv double %466, %470
  store double %471, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %472 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %473 = load i32, ptr %10, align 4
  %474 = sub nsw i32 %473, 1
  %475 = load double, ptr %6, align 8
  %476 = load double, ptr @A6, align 8
  %477 = load double, ptr @A5, align 8
  %478 = load double, ptr @A4, align 8
  %479 = load double, ptr @A3, align 8
  %480 = load double, ptr @A2, align 8
  %481 = load double, ptr @A1, align 8
  %482 = load double, ptr @one, align 8
  %483 = load double, ptr @B6, align 8
  %484 = load double, ptr @B5, align 8
  %485 = load double, ptr @B4, align 8
  %486 = load double, ptr @B3, align 8
  %487 = load double, ptr @B2, align 8
  %488 = load double, ptr @B1, align 8
  %489 = load double, ptr @one, align 8
  %.promoted54 = load i32, ptr %9, align 4
  %.promoted56 = load double, ptr %3, align 8
  %.promoted59 = load double, ptr %4, align 8
  %.promoted61 = load double, ptr %2, align 8
  br label %490

490:                                              ; preds = %515, %382
  %491 = phi double [ %514, %515 ], [ %.promoted61, %382 ]
  %492 = phi double [ %506, %515 ], [ %.promoted59, %382 ]
  %493 = phi double [ %498, %515 ], [ %.promoted56, %382 ]
  %494 = phi i32 [ %516, %515 ], [ %.promoted54, %382 ]
  %495 = icmp sle i32 %494, %474
  br i1 %495, label %496, label %517

496:                                              ; preds = %490
  %497 = sitofp i32 %494 to double
  %498 = fmul double %497, %475
  %499 = fmul double %498, %498
  store double %499, ptr %5, align 8
  %500 = call double @llvm.fmuladd.f64(double %476, double %499, double %477)
  %501 = call double @llvm.fmuladd.f64(double %500, double %499, double %478)
  %502 = call double @llvm.fmuladd.f64(double %501, double %499, double %479)
  %503 = call double @llvm.fmuladd.f64(double %502, double %499, double %480)
  %504 = call double @llvm.fmuladd.f64(double %503, double %499, double %481)
  %505 = call double @llvm.fmuladd.f64(double %504, double %499, double %482)
  %506 = fmul double %498, %505
  %507 = call double @llvm.fmuladd.f64(double %483, double %499, double %484)
  %508 = call double @llvm.fmuladd.f64(double %499, double %507, double %485)
  %509 = call double @llvm.fmuladd.f64(double %499, double %508, double %486)
  %510 = call double @llvm.fmuladd.f64(double %499, double %509, double %487)
  %511 = call double @llvm.fmuladd.f64(double %499, double %510, double %488)
  %512 = call double @llvm.fmuladd.f64(double %499, double %511, double %489)
  %513 = fdiv double %506, %512
  %514 = fadd double %491, %513
  br label %515

515:                                              ; preds = %496
  %516 = add nsw i32 %494, 1
  br label %490, !llvm.loop !15

517:                                              ; preds = %490
  %.lcssa62 = phi double [ %491, %490 ]
  %.lcssa60 = phi double [ %492, %490 ]
  %.lcssa57 = phi double [ %493, %490 ]
  %.lcssa55 = phi i32 [ %494, %490 ]
  store i32 %.lcssa55, ptr %9, align 4
  store double %.lcssa57, ptr %3, align 8
  store double %.lcssa60, ptr %4, align 8
  store double %.lcssa62, ptr %2, align 8
  %518 = call i32 @dtime(ptr noundef @TimeArray)
  %519 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %520 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %521 = load double, ptr @nulltime, align 8
  %522 = fneg double %521
  %523 = call double @llvm.fmuladd.f64(double %519, double %520, double %522)
  store double %523, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %524 = load double, ptr @piref, align 8
  %525 = load double, ptr @three, align 8
  %526 = fdiv double %524, %525
  store double %526, ptr %3, align 8
  %527 = load double, ptr %3, align 8
  %528 = load double, ptr %3, align 8
  %529 = fmul double %527, %528
  store double %529, ptr %5, align 8
  %530 = load double, ptr %3, align 8
  %531 = load double, ptr @A6, align 8
  %532 = load double, ptr %5, align 8
  %533 = load double, ptr @A5, align 8
  %534 = call double @llvm.fmuladd.f64(double %531, double %532, double %533)
  %535 = load double, ptr %5, align 8
  %536 = load double, ptr @A4, align 8
  %537 = call double @llvm.fmuladd.f64(double %534, double %535, double %536)
  %538 = load double, ptr %5, align 8
  %539 = load double, ptr @A3, align 8
  %540 = call double @llvm.fmuladd.f64(double %537, double %538, double %539)
  %541 = load double, ptr %5, align 8
  %542 = load double, ptr @A2, align 8
  %543 = call double @llvm.fmuladd.f64(double %540, double %541, double %542)
  %544 = load double, ptr %5, align 8
  %545 = load double, ptr @A1, align 8
  %546 = call double @llvm.fmuladd.f64(double %543, double %544, double %545)
  %547 = load double, ptr %5, align 8
  %548 = load double, ptr @one, align 8
  %549 = call double @llvm.fmuladd.f64(double %546, double %547, double %548)
  %550 = fmul double %530, %549
  store double %550, ptr @sa, align 8
  %551 = load double, ptr %5, align 8
  %552 = load double, ptr %5, align 8
  %553 = load double, ptr %5, align 8
  %554 = load double, ptr %5, align 8
  %555 = load double, ptr %5, align 8
  %556 = load double, ptr @B6, align 8
  %557 = load double, ptr %5, align 8
  %558 = load double, ptr @B5, align 8
  %559 = call double @llvm.fmuladd.f64(double %556, double %557, double %558)
  %560 = load double, ptr @B4, align 8
  %561 = call double @llvm.fmuladd.f64(double %555, double %559, double %560)
  %562 = load double, ptr @B3, align 8
  %563 = call double @llvm.fmuladd.f64(double %554, double %561, double %562)
  %564 = load double, ptr @B2, align 8
  %565 = call double @llvm.fmuladd.f64(double %553, double %563, double %564)
  %566 = load double, ptr @B1, align 8
  %567 = call double @llvm.fmuladd.f64(double %552, double %565, double %566)
  %568 = load double, ptr @one, align 8
  %569 = call double @llvm.fmuladd.f64(double %551, double %567, double %568)
  store double %569, ptr @sb, align 8
  %570 = load double, ptr @sa, align 8
  %571 = load double, ptr @sb, align 8
  %572 = fdiv double %570, %571
  store double %572, ptr @sa, align 8
  %573 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %574 = fdiv double %573, 2.900000e+01
  store double %574, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %575 = load double, ptr %6, align 8
  %576 = load double, ptr @sa, align 8
  %577 = load double, ptr @two, align 8
  %578 = load double, ptr %2, align 8
  %579 = call double @llvm.fmuladd.f64(double %577, double %578, double %576)
  %580 = fmul double %575, %579
  %581 = load double, ptr @two, align 8
  %582 = fdiv double %580, %581
  store double %582, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %583 = load double, ptr @sa, align 8
  %584 = load double, ptr @sb, align 8
  %585 = fsub double %583, %584
  store double %585, ptr @sc, align 8
  %586 = load double, ptr @one, align 8
  %587 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %588 = fdiv double %586, %587
  store double %588, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %589 = load double, ptr @sc, align 8
  %590 = fmul double %589, 1.000000e-30
  %591 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %592 = fmul double %591, 1.000000e-30
  %593 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %594 = fmul double %593, 1.000000e-30
  %595 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %590, double noundef %592, double noundef %594)
  %596 = load double, ptr @piref, align 8
  %597 = load double, ptr @four, align 8
  %598 = load i32, ptr %10, align 4
  %599 = sitofp i32 %598 to double
  %600 = fmul double %597, %599
  %601 = fdiv double %596, %600
  store double %601, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %602 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %603 = load i32, ptr %10, align 4
  %604 = sub nsw i32 %603, 1
  %605 = load double, ptr %6, align 8
  %606 = load double, ptr @A6, align 8
  %607 = load double, ptr @A5, align 8
  %608 = load double, ptr @A4, align 8
  %609 = load double, ptr @A3, align 8
  %610 = load double, ptr @A2, align 8
  %611 = load double, ptr @A1, align 8
  %612 = load double, ptr @one, align 8
  %613 = load double, ptr @B6, align 8
  %614 = load double, ptr @B5, align 8
  %615 = load double, ptr @B4, align 8
  %616 = load double, ptr @B3, align 8
  %617 = load double, ptr @B2, align 8
  %618 = load double, ptr @B1, align 8
  %619 = load double, ptr @one, align 8
  %.promoted63 = load i32, ptr %9, align 4
  %.promoted65 = load double, ptr %3, align 8
  %.promoted68 = load double, ptr %4, align 8
  %.promoted70 = load double, ptr %2, align 8
  %.promoted72 = load double, ptr %5, align 1
  br label %620

620:                                              ; preds = %645, %517
  %621 = phi double [ %630, %645 ], [ %.promoted72, %517 ]
  %622 = phi double [ %644, %645 ], [ %.promoted70, %517 ]
  %623 = phi double [ %637, %645 ], [ %.promoted68, %517 ]
  %624 = phi double [ %629, %645 ], [ %.promoted65, %517 ]
  %625 = phi i32 [ %646, %645 ], [ %.promoted63, %517 ]
  %626 = icmp sle i32 %625, %604
  br i1 %626, label %627, label %647

627:                                              ; preds = %620
  %628 = sitofp i32 %625 to double
  %629 = fmul double %628, %605
  %630 = fmul double %629, %629
  %631 = call double @llvm.fmuladd.f64(double %606, double %630, double %607)
  %632 = call double @llvm.fmuladd.f64(double %631, double %630, double %608)
  %633 = call double @llvm.fmuladd.f64(double %632, double %630, double %609)
  %634 = call double @llvm.fmuladd.f64(double %633, double %630, double %610)
  %635 = call double @llvm.fmuladd.f64(double %634, double %630, double %611)
  %636 = call double @llvm.fmuladd.f64(double %635, double %630, double %612)
  %637 = fmul double %629, %636
  %638 = call double @llvm.fmuladd.f64(double %613, double %630, double %614)
  %639 = call double @llvm.fmuladd.f64(double %630, double %638, double %615)
  %640 = call double @llvm.fmuladd.f64(double %630, double %639, double %616)
  %641 = call double @llvm.fmuladd.f64(double %630, double %640, double %617)
  %642 = call double @llvm.fmuladd.f64(double %630, double %641, double %618)
  %643 = call double @llvm.fmuladd.f64(double %630, double %642, double %619)
  %644 = call double @llvm.fmuladd.f64(double %637, double %643, double %622)
  br label %645

645:                                              ; preds = %627
  %646 = add nsw i32 %625, 1
  br label %620, !llvm.loop !16

647:                                              ; preds = %620
  %.lcssa73 = phi double [ %621, %620 ]
  %.lcssa71 = phi double [ %622, %620 ]
  %.lcssa69 = phi double [ %623, %620 ]
  %.lcssa66 = phi double [ %624, %620 ]
  %.lcssa64 = phi i32 [ %625, %620 ]
  store i32 %.lcssa64, ptr %9, align 4
  store double %.lcssa66, ptr %3, align 8
  store double %.lcssa69, ptr %4, align 8
  store double %.lcssa71, ptr %2, align 8
  store double %.lcssa73, ptr %5, align 1
  %648 = call i32 @dtime(ptr noundef @TimeArray)
  %649 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %650 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %651 = load double, ptr @nulltime, align 8
  %652 = fneg double %651
  %653 = call double @llvm.fmuladd.f64(double %649, double %650, double %652)
  store double %653, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %654 = load double, ptr @piref, align 8
  %655 = load double, ptr @four, align 8
  %656 = fdiv double %654, %655
  store double %656, ptr %3, align 8
  %657 = load double, ptr %3, align 8
  %658 = load double, ptr %3, align 8
  %659 = fmul double %657, %658
  store double %659, ptr %5, align 8
  %660 = load double, ptr %3, align 8
  %661 = load double, ptr @A6, align 8
  %662 = load double, ptr %5, align 8
  %663 = load double, ptr @A5, align 8
  %664 = call double @llvm.fmuladd.f64(double %661, double %662, double %663)
  %665 = load double, ptr %5, align 8
  %666 = load double, ptr @A4, align 8
  %667 = call double @llvm.fmuladd.f64(double %664, double %665, double %666)
  %668 = load double, ptr %5, align 8
  %669 = load double, ptr @A3, align 8
  %670 = call double @llvm.fmuladd.f64(double %667, double %668, double %669)
  %671 = load double, ptr %5, align 8
  %672 = load double, ptr @A2, align 8
  %673 = call double @llvm.fmuladd.f64(double %670, double %671, double %672)
  %674 = load double, ptr %5, align 8
  %675 = load double, ptr @A1, align 8
  %676 = call double @llvm.fmuladd.f64(double %673, double %674, double %675)
  %677 = load double, ptr %5, align 8
  %678 = load double, ptr @one, align 8
  %679 = call double @llvm.fmuladd.f64(double %676, double %677, double %678)
  %680 = fmul double %660, %679
  store double %680, ptr @sa, align 8
  %681 = load double, ptr %5, align 8
  %682 = load double, ptr %5, align 8
  %683 = load double, ptr %5, align 8
  %684 = load double, ptr %5, align 8
  %685 = load double, ptr %5, align 8
  %686 = load double, ptr @B6, align 8
  %687 = load double, ptr %5, align 8
  %688 = load double, ptr @B5, align 8
  %689 = call double @llvm.fmuladd.f64(double %686, double %687, double %688)
  %690 = load double, ptr @B4, align 8
  %691 = call double @llvm.fmuladd.f64(double %685, double %689, double %690)
  %692 = load double, ptr @B3, align 8
  %693 = call double @llvm.fmuladd.f64(double %684, double %691, double %692)
  %694 = load double, ptr @B2, align 8
  %695 = call double @llvm.fmuladd.f64(double %683, double %693, double %694)
  %696 = load double, ptr @B1, align 8
  %697 = call double @llvm.fmuladd.f64(double %682, double %695, double %696)
  %698 = load double, ptr @one, align 8
  %699 = call double @llvm.fmuladd.f64(double %681, double %697, double %698)
  store double %699, ptr @sb, align 8
  %700 = load double, ptr @sa, align 8
  %701 = load double, ptr @sb, align 8
  %702 = fmul double %700, %701
  store double %702, ptr @sa, align 8
  %703 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %704 = fdiv double %703, 2.900000e+01
  store double %704, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %705 = load double, ptr %6, align 8
  %706 = load double, ptr @sa, align 8
  %707 = load double, ptr @two, align 8
  %708 = load double, ptr %2, align 8
  %709 = call double @llvm.fmuladd.f64(double %707, double %708, double %706)
  %710 = fmul double %705, %709
  %711 = load double, ptr @two, align 8
  %712 = fdiv double %710, %711
  store double %712, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %713 = load double, ptr @sa, align 8
  %714 = load double, ptr @sb, align 8
  %715 = fsub double %713, %714
  store double %715, ptr @sc, align 8
  %716 = load double, ptr @one, align 8
  %717 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %718 = fdiv double %716, %717
  store double %718, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %719 = load double, ptr @sc, align 8
  %720 = fmul double %719, 1.000000e-30
  %721 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %722 = fmul double %721, 1.000000e-30
  %723 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %724 = fmul double %723, 1.000000e-30
  %725 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, double noundef %720, double noundef %722, double noundef %724)
  store double 0.000000e+00, ptr %2, align 8
  %726 = load double, ptr @one, align 8
  store double %726, ptr %5, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %727 = load double, ptr @sa, align 8
  %728 = load i32, ptr %10, align 4
  %729 = sitofp i32 %728 to double
  %730 = fdiv double %727, %729
  store double %730, ptr %4, align 8
  %731 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %732 = load i32, ptr %10, align 4
  %733 = sub nsw i32 %732, 1
  %734 = load double, ptr %4, align 8
  %735 = load double, ptr %5, align 8
  %736 = load double, ptr %5, align 8
  %737 = load double, ptr %5, align 8
  %738 = load double, ptr %5, align 8
  %.promoted74 = load i32, ptr %9, align 4
  %.promoted76 = load double, ptr %6, align 8
  %.promoted78 = load double, ptr %3, align 8
  %.promoted80 = load double, ptr %2, align 8
  br label %739

739:                                              ; preds = %758, %647
  %740 = phi double [ %757, %758 ], [ %.promoted80, %647 ]
  %741 = phi double [ %748, %758 ], [ %.promoted78, %647 ]
  %742 = phi double [ %747, %758 ], [ %.promoted76, %647 ]
  %743 = phi i32 [ %759, %758 ], [ %.promoted74, %647 ]
  %744 = icmp sle i32 %743, %733
  br i1 %744, label %745, label %760

745:                                              ; preds = %739
  %746 = sitofp i32 %743 to double
  %747 = fmul double %746, %734
  %748 = fmul double %747, %747
  %749 = fadd double %747, %736
  %750 = fdiv double %735, %749
  %751 = fsub double %740, %750
  %752 = fadd double %748, %737
  %753 = fdiv double %747, %752
  %754 = fsub double %751, %753
  %755 = call double @llvm.fmuladd.f64(double %747, double %748, double %738)
  %756 = fdiv double %748, %755
  %757 = fsub double %754, %756
  br label %758

758:                                              ; preds = %745
  %759 = add nsw i32 %743, 1
  br label %739, !llvm.loop !17

760:                                              ; preds = %739
  %.lcssa81 = phi double [ %740, %739 ]
  %.lcssa79 = phi double [ %741, %739 ]
  %.lcssa77 = phi double [ %742, %739 ]
  %.lcssa75 = phi i32 [ %743, %739 ]
  store i32 %.lcssa75, ptr %9, align 4
  store double %.lcssa77, ptr %6, align 8
  store double %.lcssa79, ptr %3, align 8
  store double %.lcssa81, ptr %2, align 8
  %761 = call i32 @dtime(ptr noundef @TimeArray)
  %762 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %763 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %764 = load double, ptr @nulltime, align 8
  %765 = fneg double %764
  %766 = call double @llvm.fmuladd.f64(double %762, double %763, double %765)
  store double %766, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %767 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %768 = fdiv double %767, 1.200000e+01
  store double %768, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %769 = load double, ptr @sa, align 8
  store double %769, ptr %6, align 8
  %770 = load double, ptr %6, align 8
  %771 = load double, ptr %6, align 8
  %772 = fmul double %770, %771
  store double %772, ptr %3, align 8
  %773 = load double, ptr %5, align 8
  %774 = fneg double %773
  %775 = load double, ptr %5, align 8
  %776 = load double, ptr %6, align 8
  %777 = load double, ptr %5, align 8
  %778 = fadd double %776, %777
  %779 = fdiv double %775, %778
  %780 = fsub double %774, %779
  %781 = load double, ptr %6, align 8
  %782 = load double, ptr %3, align 8
  %783 = load double, ptr %5, align 8
  %784 = fadd double %782, %783
  %785 = fdiv double %781, %784
  %786 = fsub double %780, %785
  %787 = load double, ptr %3, align 8
  %788 = load double, ptr %6, align 8
  %789 = load double, ptr %3, align 8
  %790 = load double, ptr %5, align 8
  %791 = call double @llvm.fmuladd.f64(double %788, double %789, double %790)
  %792 = fdiv double %787, %791
  %793 = fsub double %786, %792
  store double %793, ptr @sa, align 8
  %794 = load double, ptr %4, align 8
  %795 = fmul double %794, 1.800000e+01
  %796 = load double, ptr @sa, align 8
  %797 = load double, ptr @two, align 8
  %798 = load double, ptr %2, align 8
  %799 = call double @llvm.fmuladd.f64(double %797, double %798, double %796)
  %800 = fmul double %795, %799
  store double %800, ptr @sa, align 8
  %801 = load double, ptr @sa, align 8
  %802 = fptosi double %801 to i32
  %803 = mul nsw i32 %802, -2000
  store i32 %803, ptr %10, align 4
  %804 = load i32, ptr %10, align 4
  %805 = sitofp i32 %804 to double
  %806 = load double, ptr @scale, align 8
  %807 = fdiv double %805, %806
  %808 = fptosi double %807 to i32
  store i32 %808, ptr %10, align 4
  %809 = load double, ptr @sa, align 8
  %810 = fadd double %809, 5.002000e+02
  store double %810, ptr @sc, align 8
  %811 = load double, ptr @one, align 8
  %812 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %813 = fdiv double %811, %812
  store double %813, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %814 = load double, ptr @sc, align 8
  %815 = fmul double %814, 1.000000e-30
  %816 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %817 = fmul double %816, 1.000000e-30
  %818 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %819 = fmul double %818, 1.000000e-30
  %820 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, double noundef %815, double noundef %817, double noundef %819)
  %821 = load double, ptr @piref, align 8
  %822 = load double, ptr @three, align 8
  %823 = load i32, ptr %10, align 4
  %824 = sitofp i32 %823 to double
  %825 = fmul double %822, %824
  %826 = fdiv double %821, %825
  store double %826, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %827 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %828 = load i32, ptr %10, align 4
  %829 = sub nsw i32 %828, 1
  %830 = load double, ptr %6, align 8
  %831 = load double, ptr @B6, align 8
  %832 = load double, ptr @B5, align 8
  %833 = load double, ptr @B4, align 8
  %834 = load double, ptr @B3, align 8
  %835 = load double, ptr @B2, align 8
  %836 = load double, ptr @B1, align 8
  %837 = load double, ptr @one, align 8
  %838 = load double, ptr @A6, align 8
  %839 = load double, ptr @A5, align 8
  %840 = load double, ptr @A4, align 8
  %841 = load double, ptr @A3, align 8
  %842 = load double, ptr @A2, align 8
  %843 = load double, ptr @A1, align 8
  %844 = load double, ptr @one, align 8
  %.promoted82 = load i32, ptr %9, align 4
  %.promoted84 = load double, ptr %3, align 8
  %.promoted86 = load double, ptr %5, align 8
  %.promoted88 = load double, ptr %4, align 8
  %.promoted90 = load double, ptr %2, align 8
  br label %845

845:                                              ; preds = %871, %760
  %846 = phi double [ %870, %871 ], [ %.promoted90, %760 ]
  %847 = phi double [ %861, %871 ], [ %.promoted88, %760 ]
  %848 = phi double [ %855, %871 ], [ %.promoted86, %760 ]
  %849 = phi double [ %854, %871 ], [ %.promoted84, %760 ]
  %850 = phi i32 [ %872, %871 ], [ %.promoted82, %760 ]
  %851 = icmp sle i32 %850, %829
  br i1 %851, label %852, label %873

852:                                              ; preds = %845
  %853 = sitofp i32 %850 to double
  %854 = fmul double %853, %830
  %855 = fmul double %854, %854
  %856 = call double @llvm.fmuladd.f64(double %831, double %855, double %832)
  %857 = call double @llvm.fmuladd.f64(double %855, double %856, double %833)
  %858 = call double @llvm.fmuladd.f64(double %855, double %857, double %834)
  %859 = call double @llvm.fmuladd.f64(double %855, double %858, double %835)
  %860 = call double @llvm.fmuladd.f64(double %855, double %859, double %836)
  %861 = call double @llvm.fmuladd.f64(double %855, double %860, double %837)
  %862 = fmul double %861, %861
  %863 = fmul double %862, %854
  %864 = call double @llvm.fmuladd.f64(double %838, double %855, double %839)
  %865 = call double @llvm.fmuladd.f64(double %864, double %855, double %840)
  %866 = call double @llvm.fmuladd.f64(double %865, double %855, double %841)
  %867 = call double @llvm.fmuladd.f64(double %866, double %855, double %842)
  %868 = call double @llvm.fmuladd.f64(double %867, double %855, double %843)
  %869 = call double @llvm.fmuladd.f64(double %868, double %855, double %844)
  %870 = call double @llvm.fmuladd.f64(double %863, double %869, double %846)
  br label %871

871:                                              ; preds = %852
  %872 = add nsw i32 %850, 1
  br label %845, !llvm.loop !18

873:                                              ; preds = %845
  %.lcssa91 = phi double [ %846, %845 ]
  %.lcssa89 = phi double [ %847, %845 ]
  %.lcssa87 = phi double [ %848, %845 ]
  %.lcssa85 = phi double [ %849, %845 ]
  %.lcssa83 = phi i32 [ %850, %845 ]
  store i32 %.lcssa83, ptr %9, align 4
  store double %.lcssa85, ptr %3, align 8
  store double %.lcssa87, ptr %5, align 8
  store double %.lcssa89, ptr %4, align 8
  store double %.lcssa91, ptr %2, align 8
  %874 = call i32 @dtime(ptr noundef @TimeArray)
  %875 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %876 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %877 = load double, ptr @nulltime, align 8
  %878 = fneg double %877
  %879 = call double @llvm.fmuladd.f64(double %875, double %876, double %878)
  store double %879, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %880 = load double, ptr @piref, align 8
  %881 = load double, ptr @three, align 8
  %882 = fdiv double %880, %881
  store double %882, ptr %3, align 8
  %883 = load double, ptr %3, align 8
  %884 = load double, ptr %3, align 8
  %885 = fmul double %883, %884
  store double %885, ptr %5, align 8
  %886 = load double, ptr %3, align 8
  %887 = load double, ptr @A6, align 8
  %888 = load double, ptr %5, align 8
  %889 = load double, ptr @A5, align 8
  %890 = call double @llvm.fmuladd.f64(double %887, double %888, double %889)
  %891 = load double, ptr %5, align 8
  %892 = load double, ptr @A4, align 8
  %893 = call double @llvm.fmuladd.f64(double %890, double %891, double %892)
  %894 = load double, ptr %5, align 8
  %895 = load double, ptr @A3, align 8
  %896 = call double @llvm.fmuladd.f64(double %893, double %894, double %895)
  %897 = load double, ptr %5, align 8
  %898 = load double, ptr @A2, align 8
  %899 = call double @llvm.fmuladd.f64(double %896, double %897, double %898)
  %900 = load double, ptr %5, align 8
  %901 = load double, ptr @A1, align 8
  %902 = call double @llvm.fmuladd.f64(double %899, double %900, double %901)
  %903 = load double, ptr %5, align 8
  %904 = load double, ptr @one, align 8
  %905 = call double @llvm.fmuladd.f64(double %902, double %903, double %904)
  %906 = fmul double %886, %905
  store double %906, ptr @sa, align 8
  %907 = load double, ptr %5, align 8
  %908 = load double, ptr %5, align 8
  %909 = load double, ptr %5, align 8
  %910 = load double, ptr %5, align 8
  %911 = load double, ptr %5, align 8
  %912 = load double, ptr @B6, align 8
  %913 = load double, ptr %5, align 8
  %914 = load double, ptr @B5, align 8
  %915 = call double @llvm.fmuladd.f64(double %912, double %913, double %914)
  %916 = load double, ptr @B4, align 8
  %917 = call double @llvm.fmuladd.f64(double %911, double %915, double %916)
  %918 = load double, ptr @B3, align 8
  %919 = call double @llvm.fmuladd.f64(double %910, double %917, double %918)
  %920 = load double, ptr @B2, align 8
  %921 = call double @llvm.fmuladd.f64(double %909, double %919, double %920)
  %922 = load double, ptr @B1, align 8
  %923 = call double @llvm.fmuladd.f64(double %908, double %921, double %922)
  %924 = load double, ptr @one, align 8
  %925 = call double @llvm.fmuladd.f64(double %907, double %923, double %924)
  store double %925, ptr @sb, align 8
  %926 = load double, ptr @sa, align 8
  %927 = load double, ptr @sb, align 8
  %928 = fmul double %926, %927
  %929 = load double, ptr @sb, align 8
  %930 = fmul double %928, %929
  store double %930, ptr @sa, align 8
  %931 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %932 = fdiv double %931, 3.000000e+01
  store double %932, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %933 = load double, ptr %6, align 8
  %934 = load double, ptr @sa, align 8
  %935 = load double, ptr @two, align 8
  %936 = load double, ptr %2, align 8
  %937 = call double @llvm.fmuladd.f64(double %935, double %936, double %934)
  %938 = fmul double %933, %937
  %939 = load double, ptr @two, align 8
  %940 = fdiv double %938, %939
  store double %940, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %941 = load double, ptr @sa, align 8
  %942 = load double, ptr @sb, align 8
  %943 = fsub double %941, %942
  store double %943, ptr @sc, align 8
  %944 = load double, ptr @one, align 8
  %945 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %946 = fdiv double %944, %945
  store double %946, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %947 = load double, ptr @sc, align 8
  %948 = fmul double %947, 1.000000e-30
  %949 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %950 = fmul double %949, 1.000000e-30
  %951 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %952 = fmul double %951, 1.000000e-30
  %953 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, double noundef %948, double noundef %950, double noundef %952)
  %954 = load double, ptr @five, align 8
  %955 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %956 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %957 = fsub double %955, %956
  %958 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %959 = call double @llvm.fmuladd.f64(double %954, double %957, double %958)
  %960 = fdiv double %959, 5.200000e+01
  store double %960, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %961 = load double, ptr @one, align 8
  %962 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %963 = fdiv double %961, %962
  store double %963, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %964 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %965 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %966 = fadd double %964, %965
  %967 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %968 = fadd double %966, %967
  %969 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %970 = fadd double %968, %969
  %971 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %972 = fadd double %970, %971
  store double %972, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %973 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %974 = load double, ptr @four, align 8
  %975 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %976 = call double @llvm.fmuladd.f64(double %974, double %975, double %973)
  %977 = fdiv double %976, 1.520000e+02
  store double %977, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %978 = load double, ptr @one, align 8
  %979 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %980 = fdiv double %978, %979
  store double %980, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %981 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %982 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %983 = fadd double %981, %982
  %984 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %985 = fadd double %983, %984
  %986 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %987 = fadd double %985, %986
  %988 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %989 = fadd double %987, %988
  store double %989, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %990 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %991 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %992 = fadd double %990, %991
  %993 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %994 = fadd double %992, %993
  %995 = fdiv double %994, 1.460000e+02
  store double %995, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %996 = load double, ptr @one, align 8
  %997 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %998 = fdiv double %996, %997
  store double %998, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %999 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %1000 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %1001 = fadd double %999, %1000
  %1002 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %1003 = fadd double %1001, %1002
  %1004 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %1005 = fadd double %1003, %1004
  %1006 = fdiv double %1005, 9.100000e+01
  store double %1006, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %1007 = load double, ptr @one, align 8
  %1008 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %1009 = fdiv double %1007, %1008
  store double %1009, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %1010 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %1011 = load i32, ptr %10, align 4
  %1012 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %1011)
  %1013 = load double, ptr @nulltime, align 8
  %1014 = fmul double %1013, 1.000000e-30
  %1015 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, double noundef %1014)
  %1016 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %1017 = fmul double %1016, 1.000000e-30
  %1018 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, double noundef %1017)
  %1019 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %1020 = fmul double %1019, 1.000000e-30
  %1021 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, double noundef %1020)
  %1022 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %1023 = fmul double %1022, 1.000000e-30
  %1024 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, double noundef %1023)
  %1025 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %1026 = fmul double %1025, 1.000000e-30
  %1027 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, double noundef %1026)
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
