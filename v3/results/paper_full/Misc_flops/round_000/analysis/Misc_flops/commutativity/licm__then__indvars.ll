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
  %.lcssa18 = phi i32 [ %46, %69 ], [ %.promoted17, %0 ]
  %.lcssa216 = phi double [ %.lcssa2, %69 ], [ %.promoted15, %0 ]
  %.lcssa614 = phi double [ %.lcssa6, %69 ], [ %.promoted13, %0 ]
  %25 = phi double [ %34, %69 ], [ %.promoted10, %0 ]
  %26 = phi i32 [ %31, %69 ], [ %.promoted7, %0 ]
  %27 = load double, ptr @sa, align 8
  %28 = load double, ptr @TLimit, align 8
  %29 = fcmp olt double %27, %28
  br i1 %29, label %30, label %.loopexit

30:                                               ; preds = %24
  %31 = mul nsw i32 2, %26
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
  %smax = call i32 @llvm.smax.i32(i32 %37, i32 0)
  %46 = add nuw i32 %smax, 1
  br label %47

47:                                               ; preds = %62, %30
  %48 = phi double [ %61, %62 ], [ 0.000000e+00, %30 ]
  %49 = phi double [ %54, %62 ], [ %.lcssa419, %30 ]
  %50 = phi double [ %53, %62 ], [ 0.000000e+00, %30 ]
  %51 = phi i32 [ %63, %62 ], [ 1, %30 ]
  %exitcond = icmp ne i32 %51, %46
  br i1 %exitcond, label %52, label %64

52:                                               ; preds = %47
  %53 = fadd double %50, %38
  %54 = fmul double %53, %34
  %55 = call double @llvm.fmuladd.f64(double %54, double %41, double %40)
  %56 = call double @llvm.fmuladd.f64(double %54, double %55, double %39)
  %57 = call double @llvm.fmuladd.f64(double %54, double %45, double %44)
  %58 = call double @llvm.fmuladd.f64(double %54, double %57, double %43)
  %59 = call double @llvm.fmuladd.f64(double %54, double %58, double %42)
  %60 = fdiv double %56, %59
  %61 = fadd double %48, %60
  br label %62

62:                                               ; preds = %52
  %63 = add nuw i32 %51, 1
  br label %47, !llvm.loop !7

64:                                               ; preds = %47
  %.lcssa6 = phi double [ %48, %47 ]
  %.lcssa4 = phi double [ %49, %47 ]
  %.lcssa2 = phi double [ %50, %47 ]
  %65 = call i32 @dtime(ptr noundef @TimeArray)
  %66 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %66, ptr @sa, align 8
  %67 = icmp eq i32 %31, %23
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  %.lcssa4.lcssa = phi double [ %.lcssa4, %64 ]
  %.lcssa.lcssa = phi i32 [ %46, %64 ]
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
  %.promoted20 = load i32, ptr %9, align 4
  br label %74

74:                                               ; preds = %76, %70
  br i1 false, label %75, label %77

75:                                               ; preds = %74
  br label %76

76:                                               ; preds = %75
  br label %74, !llvm.loop !10

77:                                               ; preds = %74
  %smax92 = call i32 @llvm.smax.i32(i32 %.promoted20, i32 %73)
  store i32 %smax92, ptr %9, align 4
  %78 = call i32 @dtime(ptr noundef @TimeArray)
  %79 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %80 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %81 = fmul double %79, %80
  store double %81, ptr @nulltime, align 8
  %82 = load double, ptr @nulltime, align 8
  %83 = fcmp olt double %82, 0.000000e+00
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  store double 0.000000e+00, ptr @nulltime, align 8
  br label %85

85:                                               ; preds = %84, %77
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
  %97 = load double, ptr @D1, align 8
  %98 = fadd double %96, %97
  %99 = load double, ptr @E2, align 8
  %100 = fadd double %98, %99
  %101 = load double, ptr @E3, align 8
  %102 = fadd double %100, %101
  %103 = fdiv double %95, %102
  store double %103, ptr @sa, align 8
  %104 = load double, ptr @D1, align 8
  store double %104, ptr @sb, align 8
  %105 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %106 = fdiv double %105, 1.400000e+01
  store double %106, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %107 = load double, ptr %6, align 8
  %108 = load double, ptr @sa, align 8
  %109 = load double, ptr @sb, align 8
  %110 = fadd double %108, %109
  %111 = load double, ptr @two, align 8
  %112 = load double, ptr %2, align 8
  %113 = call double @llvm.fmuladd.f64(double %111, double %112, double %110)
  %114 = fmul double %107, %113
  %115 = load double, ptr @two, align 8
  %116 = fdiv double %114, %115
  store double %116, ptr @sa, align 8
  %117 = load double, ptr @one, align 8
  %118 = load double, ptr @sa, align 8
  %119 = fdiv double %117, %118
  store double %119, ptr @sb, align 8
  %120 = load double, ptr @sb, align 8
  %121 = fptosi double %120 to i32
  %122 = mul nsw i32 40000, %121
  %123 = sitofp i32 %122 to double
  %124 = load double, ptr @scale, align 8
  %125 = fdiv double %123, %124
  %126 = fptosi double %125 to i32
  store i32 %126, ptr %11, align 4
  %127 = load double, ptr @sb, align 8
  %128 = fsub double %127, 2.520000e+01
  store double %128, ptr @sc, align 8
  %129 = load double, ptr @one, align 8
  %130 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %131 = fdiv double %129, %130
  store double %131, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %132 = load double, ptr @sc, align 8
  %133 = fmul double %132, 1.000000e-30
  %134 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %135 = fmul double %134, 1.000000e-30
  %136 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %137 = fmul double %136, 1.000000e-30
  %138 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %133, double noundef %135, double noundef %137)
  %139 = load i32, ptr %11, align 4
  store i32 %139, ptr %10, align 4
  %140 = load double, ptr @five, align 8
  %141 = fneg double %140
  store double %141, ptr %2, align 8
  %142 = load double, ptr @one, align 8
  %143 = fneg double %142
  store double %143, ptr @sa, align 8
  %144 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %145 = load i32, ptr %10, align 4
  %.promoted22 = load i32, ptr %9, align 4
  %.promoted24 = load double, ptr %2, align 8
  %sa.promoted = load double, ptr @sa, align 8
  br label %146

146:                                              ; preds = %154, %85
  %147 = phi double [ %153, %154 ], [ %sa.promoted, %85 ]
  %148 = phi double [ %152, %154 ], [ %.promoted24, %85 ]
  %149 = phi i32 [ %155, %154 ], [ %.promoted22, %85 ]
  %150 = icmp sle i32 %149, %145
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  %152 = fneg double %148
  %153 = fadd double %147, %152
  store double %153, ptr @sa, align 8
  br label %154

154:                                              ; preds = %151
  %155 = add nsw i32 %149, 1
  br label %146, !llvm.loop !11

156:                                              ; preds = %146
  %.lcssa25 = phi double [ %148, %146 ]
  %157 = add i32 %145, 1
  %smax93 = call i32 @llvm.smax.i32(i32 %.promoted22, i32 %157)
  store i32 %smax93, ptr %9, align 4
  store double %.lcssa25, ptr %2, align 8
  %158 = call i32 @dtime(ptr noundef @TimeArray)
  %159 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %160 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %161 = fmul double %159, %160
  store double %161, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %162 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %163 = fcmp olt double %162, 0.000000e+00
  br i1 %163, label %164, label %165

164:                                              ; preds = %156
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  br label %165

165:                                              ; preds = %164, %156
  %166 = load i32, ptr %10, align 4
  %167 = sitofp i32 %166 to double
  store double %167, ptr @sc, align 8
  %168 = load double, ptr @sa, align 8
  store double %168, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  store double 0.000000e+00, ptr %6, align 8
  %169 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %170 = load i32, ptr %10, align 4
  %171 = load double, ptr @two, align 8
  %.promoted26 = load i32, ptr %9, align 4
  %.promoted28 = load double, ptr %2, align 8
  %sa.promoted30 = load double, ptr @sa, align 8
  %.promoted31 = load double, ptr %3, align 8
  %.promoted33 = load double, ptr %6, align 8
  %.promoted35 = load double, ptr %4, align 8
  %.promoted37 = load double, ptr %5, align 8
  br label %172

172:                                              ; preds = %191, %165
  %173 = phi double [ %190, %191 ], [ %.promoted37, %165 ]
  %174 = phi double [ %188, %191 ], [ %.promoted35, %165 ]
  %175 = phi double [ %186, %191 ], [ %.promoted33, %165 ]
  %176 = phi double [ %184, %191 ], [ %.promoted31, %165 ]
  %177 = phi double [ %183, %191 ], [ %sa.promoted30, %165 ]
  %178 = phi double [ %182, %191 ], [ %.promoted28, %165 ]
  %179 = phi i32 [ %192, %191 ], [ %.promoted26, %165 ]
  %180 = icmp sle i32 %179, %170
  br i1 %180, label %181, label %193

181:                                              ; preds = %172
  %182 = fneg double %178
  %183 = fadd double %177, %182
  store double %183, ptr @sa, align 8
  %184 = fadd double %176, %171
  %185 = fsub double %182, %184
  %186 = fadd double %175, %185
  %187 = fneg double %182
  %188 = call double @llvm.fmuladd.f64(double %187, double %184, double %174)
  %189 = fdiv double %182, %184
  %190 = fadd double %173, %189
  store double %190, ptr %5, align 8
  br label %191

191:                                              ; preds = %181
  %192 = add nsw i32 %179, 1
  br label %172, !llvm.loop !12

193:                                              ; preds = %172
  %.lcssa36 = phi double [ %174, %172 ]
  %.lcssa34 = phi double [ %175, %172 ]
  %.lcssa32 = phi double [ %176, %172 ]
  %.lcssa29 = phi double [ %178, %172 ]
  %194 = add i32 %170, 1
  %smax94 = call i32 @llvm.smax.i32(i32 %.promoted26, i32 %194)
  store i32 %smax94, ptr %9, align 4
  store double %.lcssa29, ptr %2, align 8
  store double %.lcssa32, ptr %3, align 8
  store double %.lcssa34, ptr %6, align 8
  store double %.lcssa36, ptr %4, align 8
  %195 = call i32 @dtime(ptr noundef @TimeArray)
  %196 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %197 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %198 = fmul double %196, %197
  store double %198, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %199 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %200 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %201 = fsub double %199, %200
  %202 = fdiv double %201, 7.000000e+00
  store double %202, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %203 = load double, ptr @sa, align 8
  %204 = load double, ptr %6, align 8
  %205 = fmul double %203, %204
  %206 = load double, ptr @sc, align 8
  %207 = fdiv double %205, %206
  %208 = fptosi double %207 to i32
  store i32 %208, ptr %10, align 4
  %209 = load double, ptr @four, align 8
  %210 = load double, ptr %5, align 8
  %211 = fmul double %209, %210
  %212 = load double, ptr @five, align 8
  %213 = fdiv double %211, %212
  store double %213, ptr @sa, align 8
  %214 = load double, ptr @sa, align 8
  %215 = load double, ptr @five, align 8
  %216 = load double, ptr %4, align 8
  %217 = fdiv double %215, %216
  %218 = fadd double %214, %217
  store double %218, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %219 = load double, ptr @sb, align 8
  %220 = load double, ptr @sc, align 8
  %221 = load double, ptr %4, align 8
  %222 = load double, ptr %4, align 8
  %223 = fmul double %221, %222
  %224 = load double, ptr %4, align 8
  %225 = fmul double %223, %224
  %226 = fdiv double %220, %225
  %227 = fsub double %219, %226
  store double %227, ptr @piprg, align 8
  %228 = load double, ptr @piprg, align 8
  %229 = load double, ptr @piref, align 8
  %230 = fsub double %228, %229
  store double %230, ptr @pierr, align 8
  %231 = load double, ptr @one, align 8
  %232 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %233 = fdiv double %231, %232
  store double %233, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %234 = load double, ptr @pierr, align 8
  %235 = fmul double %234, 1.000000e-30
  %236 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %237 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %238 = fsub double %236, %237
  %239 = fmul double %238, 1.000000e-30
  %240 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %241 = fmul double %240, 1.000000e-30
  %242 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %235, double noundef %239, double noundef %241)
  %243 = load double, ptr @piref, align 8
  %244 = load double, ptr @three, align 8
  %245 = load i32, ptr %10, align 4
  %246 = sitofp i32 %245 to double
  %247 = fmul double %244, %246
  %248 = fdiv double %243, %247
  store double %248, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %249 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %250 = load i32, ptr %10, align 4
  %251 = load double, ptr @one, align 8
  %252 = load double, ptr %6, align 8
  %253 = load double, ptr @A6, align 8
  %254 = load double, ptr @A5, align 8
  %255 = fneg double %254
  %256 = load double, ptr @A4, align 8
  %257 = load double, ptr @A3, align 8
  %258 = fneg double %257
  %259 = load double, ptr @A2, align 8
  %260 = load double, ptr @A1, align 8
  %261 = load double, ptr @one, align 8
  %.promoted38 = load i32, ptr %9, align 4
  %.promoted40 = load double, ptr %4, align 8
  %.promoted42 = load double, ptr %3, align 8
  %.promoted45 = load double, ptr %2, align 8
  %smax95 = call i32 @llvm.smax.i32(i32 %.promoted38, i32 %250)
  br label %262

262:                                              ; preds = %278, %193
  %263 = phi double [ %277, %278 ], [ %.promoted45, %193 ]
  %264 = phi double [ %269, %278 ], [ %.promoted42, %193 ]
  %265 = phi double [ %268, %278 ], [ %.promoted40, %193 ]
  %266 = phi i32 [ %279, %278 ], [ %.promoted38, %193 ]
  %exitcond96 = icmp ne i32 %266, %smax95
  br i1 %exitcond96, label %267, label %280

267:                                              ; preds = %262
  %268 = fadd double %265, %251
  %269 = fmul double %268, %252
  %270 = fmul double %269, %269
  store double %270, ptr %5, align 8
  %271 = call double @llvm.fmuladd.f64(double %253, double %270, double %255)
  %272 = call double @llvm.fmuladd.f64(double %271, double %270, double %256)
  %273 = call double @llvm.fmuladd.f64(double %272, double %270, double %258)
  %274 = call double @llvm.fmuladd.f64(double %273, double %270, double %259)
  %275 = call double @llvm.fmuladd.f64(double %274, double %270, double %260)
  %276 = call double @llvm.fmuladd.f64(double %275, double %270, double %261)
  %277 = call double @llvm.fmuladd.f64(double %269, double %276, double %263)
  br label %278

278:                                              ; preds = %267
  %279 = add i32 %266, 1
  br label %262, !llvm.loop !13

280:                                              ; preds = %262
  %.lcssa46 = phi double [ %263, %262 ]
  %.lcssa43 = phi double [ %264, %262 ]
  %.lcssa41 = phi double [ %265, %262 ]
  store i32 %smax95, ptr %9, align 4
  store double %.lcssa41, ptr %4, align 8
  store double %.lcssa43, ptr %3, align 8
  store double %.lcssa46, ptr %2, align 8
  %281 = call i32 @dtime(ptr noundef @TimeArray)
  %282 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %283 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %284 = load double, ptr @nulltime, align 8
  %285 = fneg double %284
  %286 = call double @llvm.fmuladd.f64(double %282, double %283, double %285)
  store double %286, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %287 = load double, ptr @piref, align 8
  %288 = load double, ptr @three, align 8
  %289 = fdiv double %287, %288
  store double %289, ptr %3, align 8
  %290 = load double, ptr %3, align 8
  %291 = load double, ptr %3, align 8
  %292 = fmul double %290, %291
  store double %292, ptr %5, align 8
  %293 = load double, ptr %3, align 8
  %294 = load double, ptr @A6, align 8
  %295 = load double, ptr %5, align 8
  %296 = load double, ptr @A5, align 8
  %297 = fneg double %296
  %298 = call double @llvm.fmuladd.f64(double %294, double %295, double %297)
  %299 = load double, ptr %5, align 8
  %300 = load double, ptr @A4, align 8
  %301 = call double @llvm.fmuladd.f64(double %298, double %299, double %300)
  %302 = load double, ptr %5, align 8
  %303 = load double, ptr @A3, align 8
  %304 = fneg double %303
  %305 = call double @llvm.fmuladd.f64(double %301, double %302, double %304)
  %306 = load double, ptr %5, align 8
  %307 = load double, ptr @A2, align 8
  %308 = call double @llvm.fmuladd.f64(double %305, double %306, double %307)
  %309 = load double, ptr %5, align 8
  %310 = load double, ptr @A1, align 8
  %311 = call double @llvm.fmuladd.f64(double %308, double %309, double %310)
  %312 = load double, ptr %5, align 8
  %313 = load double, ptr @one, align 8
  %314 = call double @llvm.fmuladd.f64(double %311, double %312, double %313)
  %315 = fmul double %293, %314
  store double %315, ptr @sa, align 8
  %316 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %317 = fdiv double %316, 1.700000e+01
  store double %317, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %318 = load double, ptr %6, align 8
  %319 = load double, ptr @sa, align 8
  %320 = load double, ptr @two, align 8
  %321 = load double, ptr %2, align 8
  %322 = call double @llvm.fmuladd.f64(double %320, double %321, double %319)
  %323 = fmul double %318, %322
  %324 = load double, ptr @two, align 8
  %325 = fdiv double %323, %324
  store double %325, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %326 = load double, ptr @sa, align 8
  %327 = load double, ptr @sb, align 8
  %328 = fsub double %326, %327
  store double %328, ptr @sc, align 8
  %329 = load double, ptr @one, align 8
  %330 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %331 = fdiv double %329, %330
  store double %331, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %332 = load double, ptr @sc, align 8
  %333 = fmul double %332, 1.000000e-30
  %334 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %335 = fmul double %334, 1.000000e-30
  %336 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %337 = fmul double %336, 1.000000e-30
  %338 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %333, double noundef %335, double noundef %337)
  %339 = load double, ptr @A3, align 8
  %340 = fneg double %339
  store double %340, ptr @A3, align 8
  %341 = load double, ptr @A5, align 8
  %342 = fneg double %341
  store double %342, ptr @A5, align 8
  %343 = load double, ptr @piref, align 8
  %344 = load double, ptr @three, align 8
  %345 = load i32, ptr %10, align 4
  %346 = sitofp i32 %345 to double
  %347 = fmul double %344, %346
  %348 = fdiv double %343, %347
  store double %348, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %349 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %350 = load i32, ptr %10, align 4
  %351 = load double, ptr %6, align 8
  %352 = load double, ptr @B6, align 8
  %353 = load double, ptr @B5, align 8
  %354 = load double, ptr @B4, align 8
  %355 = load double, ptr @B3, align 8
  %356 = load double, ptr @B2, align 8
  %357 = load double, ptr @B1, align 8
  %358 = load double, ptr @one, align 8
  %.promoted47 = load i32, ptr %9, align 4
  %.promoted49 = load double, ptr %3, align 8
  %.promoted52 = load double, ptr %2, align 8
  %smax97 = call i32 @llvm.smax.i32(i32 %.promoted47, i32 %350)
  br label %359

359:                                              ; preds = %374, %280
  %360 = phi double [ %373, %374 ], [ %.promoted52, %280 ]
  %361 = phi double [ %365, %374 ], [ %.promoted49, %280 ]
  %362 = phi i32 [ %375, %374 ], [ %.promoted47, %280 ]
  %exitcond98 = icmp ne i32 %362, %smax97
  br i1 %exitcond98, label %363, label %376

363:                                              ; preds = %359
  %364 = sitofp i32 %362 to double
  %365 = fmul double %364, %351
  %366 = fmul double %365, %365
  store double %366, ptr %5, align 8
  %367 = call double @llvm.fmuladd.f64(double %352, double %366, double %353)
  %368 = call double @llvm.fmuladd.f64(double %366, double %367, double %354)
  %369 = call double @llvm.fmuladd.f64(double %366, double %368, double %355)
  %370 = call double @llvm.fmuladd.f64(double %366, double %369, double %356)
  %371 = call double @llvm.fmuladd.f64(double %366, double %370, double %357)
  %372 = call double @llvm.fmuladd.f64(double %366, double %371, double %360)
  %373 = fadd double %372, %358
  br label %374

374:                                              ; preds = %363
  %375 = add i32 %362, 1
  br label %359, !llvm.loop !14

376:                                              ; preds = %359
  %.lcssa53 = phi double [ %360, %359 ]
  %.lcssa50 = phi double [ %361, %359 ]
  %.lcssa48 = phi i32 [ %362, %359 ]
  store i32 %.lcssa48, ptr %9, align 4
  store double %.lcssa50, ptr %3, align 8
  store double %.lcssa53, ptr %2, align 8
  %377 = call i32 @dtime(ptr noundef @TimeArray)
  %378 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %379 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %380 = load double, ptr @nulltime, align 8
  %381 = fneg double %380
  %382 = call double @llvm.fmuladd.f64(double %378, double %379, double %381)
  store double %382, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %383 = load double, ptr @piref, align 8
  %384 = load double, ptr @three, align 8
  %385 = fdiv double %383, %384
  store double %385, ptr %3, align 8
  %386 = load double, ptr %3, align 8
  %387 = load double, ptr %3, align 8
  %388 = fmul double %386, %387
  store double %388, ptr %5, align 8
  %389 = load double, ptr %5, align 8
  %390 = load double, ptr %5, align 8
  %391 = load double, ptr %5, align 8
  %392 = load double, ptr %5, align 8
  %393 = load double, ptr %5, align 8
  %394 = load double, ptr @B6, align 8
  %395 = load double, ptr %5, align 8
  %396 = load double, ptr @B5, align 8
  %397 = call double @llvm.fmuladd.f64(double %394, double %395, double %396)
  %398 = load double, ptr @B4, align 8
  %399 = call double @llvm.fmuladd.f64(double %393, double %397, double %398)
  %400 = load double, ptr @B3, align 8
  %401 = call double @llvm.fmuladd.f64(double %392, double %399, double %400)
  %402 = load double, ptr @B2, align 8
  %403 = call double @llvm.fmuladd.f64(double %391, double %401, double %402)
  %404 = load double, ptr @B1, align 8
  %405 = call double @llvm.fmuladd.f64(double %390, double %403, double %404)
  %406 = load double, ptr @one, align 8
  %407 = call double @llvm.fmuladd.f64(double %389, double %405, double %406)
  store double %407, ptr @sa, align 8
  %408 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %409 = fdiv double %408, 1.500000e+01
  store double %409, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %410 = load double, ptr %6, align 8
  %411 = load double, ptr @sa, align 8
  %412 = load double, ptr @one, align 8
  %413 = fadd double %411, %412
  %414 = load double, ptr @two, align 8
  %415 = load double, ptr %2, align 8
  %416 = call double @llvm.fmuladd.f64(double %414, double %415, double %413)
  %417 = fmul double %410, %416
  %418 = load double, ptr @two, align 8
  %419 = fdiv double %417, %418
  store double %419, ptr @sa, align 8
  %420 = load double, ptr @piref, align 8
  %421 = load double, ptr @three, align 8
  %422 = fdiv double %420, %421
  store double %422, ptr %3, align 8
  %423 = load double, ptr %3, align 8
  %424 = load double, ptr %3, align 8
  %425 = fmul double %423, %424
  store double %425, ptr %5, align 8
  %426 = load double, ptr %3, align 8
  %427 = load double, ptr @A6, align 8
  %428 = load double, ptr %5, align 8
  %429 = load double, ptr @A5, align 8
  %430 = call double @llvm.fmuladd.f64(double %427, double %428, double %429)
  %431 = load double, ptr %5, align 8
  %432 = load double, ptr @A4, align 8
  %433 = call double @llvm.fmuladd.f64(double %430, double %431, double %432)
  %434 = load double, ptr %5, align 8
  %435 = load double, ptr @A3, align 8
  %436 = call double @llvm.fmuladd.f64(double %433, double %434, double %435)
  %437 = load double, ptr %5, align 8
  %438 = load double, ptr @A2, align 8
  %439 = call double @llvm.fmuladd.f64(double %436, double %437, double %438)
  %440 = load double, ptr %5, align 8
  %441 = load double, ptr @A1, align 8
  %442 = call double @llvm.fmuladd.f64(double %439, double %440, double %441)
  %443 = load double, ptr %5, align 8
  %444 = load double, ptr @A0, align 8
  %445 = call double @llvm.fmuladd.f64(double %442, double %443, double %444)
  %446 = fmul double %426, %445
  store double %446, ptr @sb, align 8
  %447 = load double, ptr @sa, align 8
  %448 = load double, ptr @sb, align 8
  %449 = fsub double %447, %448
  store double %449, ptr @sc, align 8
  %450 = load double, ptr @one, align 8
  %451 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %452 = fdiv double %450, %451
  store double %452, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %453 = load double, ptr @sc, align 8
  %454 = fmul double %453, 1.000000e-30
  %455 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %456 = fmul double %455, 1.000000e-30
  %457 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %458 = fmul double %457, 1.000000e-30
  %459 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %454, double noundef %456, double noundef %458)
  %460 = load double, ptr @piref, align 8
  %461 = load double, ptr @three, align 8
  %462 = load i32, ptr %10, align 4
  %463 = sitofp i32 %462 to double
  %464 = fmul double %461, %463
  %465 = fdiv double %460, %464
  store double %465, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %466 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %467 = load i32, ptr %10, align 4
  %468 = load double, ptr %6, align 8
  %469 = load double, ptr @A6, align 8
  %470 = load double, ptr @A5, align 8
  %471 = load double, ptr @A4, align 8
  %472 = load double, ptr @A3, align 8
  %473 = load double, ptr @A2, align 8
  %474 = load double, ptr @A1, align 8
  %475 = load double, ptr @one, align 8
  %476 = load double, ptr @B6, align 8
  %477 = load double, ptr @B5, align 8
  %478 = load double, ptr @B4, align 8
  %479 = load double, ptr @B3, align 8
  %480 = load double, ptr @B2, align 8
  %481 = load double, ptr @B1, align 8
  %482 = load double, ptr @one, align 8
  %.promoted54 = load i32, ptr %9, align 4
  %.promoted56 = load double, ptr %3, align 8
  %.promoted59 = load double, ptr %4, align 8
  %.promoted61 = load double, ptr %2, align 8
  %smax99 = call i32 @llvm.smax.i32(i32 %.promoted54, i32 %467)
  br label %483

483:                                              ; preds = %507, %376
  %484 = phi double [ %506, %507 ], [ %.promoted61, %376 ]
  %485 = phi double [ %498, %507 ], [ %.promoted59, %376 ]
  %486 = phi double [ %490, %507 ], [ %.promoted56, %376 ]
  %487 = phi i32 [ %508, %507 ], [ %.promoted54, %376 ]
  %exitcond100 = icmp ne i32 %487, %smax99
  br i1 %exitcond100, label %488, label %509

488:                                              ; preds = %483
  %489 = sitofp i32 %487 to double
  %490 = fmul double %489, %468
  %491 = fmul double %490, %490
  store double %491, ptr %5, align 8
  %492 = call double @llvm.fmuladd.f64(double %469, double %491, double %470)
  %493 = call double @llvm.fmuladd.f64(double %492, double %491, double %471)
  %494 = call double @llvm.fmuladd.f64(double %493, double %491, double %472)
  %495 = call double @llvm.fmuladd.f64(double %494, double %491, double %473)
  %496 = call double @llvm.fmuladd.f64(double %495, double %491, double %474)
  %497 = call double @llvm.fmuladd.f64(double %496, double %491, double %475)
  %498 = fmul double %490, %497
  %499 = call double @llvm.fmuladd.f64(double %476, double %491, double %477)
  %500 = call double @llvm.fmuladd.f64(double %491, double %499, double %478)
  %501 = call double @llvm.fmuladd.f64(double %491, double %500, double %479)
  %502 = call double @llvm.fmuladd.f64(double %491, double %501, double %480)
  %503 = call double @llvm.fmuladd.f64(double %491, double %502, double %481)
  %504 = call double @llvm.fmuladd.f64(double %491, double %503, double %482)
  %505 = fdiv double %498, %504
  %506 = fadd double %484, %505
  br label %507

507:                                              ; preds = %488
  %508 = add i32 %487, 1
  br label %483, !llvm.loop !15

509:                                              ; preds = %483
  %.lcssa62 = phi double [ %484, %483 ]
  %.lcssa60 = phi double [ %485, %483 ]
  %.lcssa57 = phi double [ %486, %483 ]
  %.lcssa55 = phi i32 [ %487, %483 ]
  store i32 %.lcssa55, ptr %9, align 4
  store double %.lcssa57, ptr %3, align 8
  store double %.lcssa60, ptr %4, align 8
  store double %.lcssa62, ptr %2, align 8
  %510 = call i32 @dtime(ptr noundef @TimeArray)
  %511 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %512 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %513 = load double, ptr @nulltime, align 8
  %514 = fneg double %513
  %515 = call double @llvm.fmuladd.f64(double %511, double %512, double %514)
  store double %515, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %516 = load double, ptr @piref, align 8
  %517 = load double, ptr @three, align 8
  %518 = fdiv double %516, %517
  store double %518, ptr %3, align 8
  %519 = load double, ptr %3, align 8
  %520 = load double, ptr %3, align 8
  %521 = fmul double %519, %520
  store double %521, ptr %5, align 8
  %522 = load double, ptr %3, align 8
  %523 = load double, ptr @A6, align 8
  %524 = load double, ptr %5, align 8
  %525 = load double, ptr @A5, align 8
  %526 = call double @llvm.fmuladd.f64(double %523, double %524, double %525)
  %527 = load double, ptr %5, align 8
  %528 = load double, ptr @A4, align 8
  %529 = call double @llvm.fmuladd.f64(double %526, double %527, double %528)
  %530 = load double, ptr %5, align 8
  %531 = load double, ptr @A3, align 8
  %532 = call double @llvm.fmuladd.f64(double %529, double %530, double %531)
  %533 = load double, ptr %5, align 8
  %534 = load double, ptr @A2, align 8
  %535 = call double @llvm.fmuladd.f64(double %532, double %533, double %534)
  %536 = load double, ptr %5, align 8
  %537 = load double, ptr @A1, align 8
  %538 = call double @llvm.fmuladd.f64(double %535, double %536, double %537)
  %539 = load double, ptr %5, align 8
  %540 = load double, ptr @one, align 8
  %541 = call double @llvm.fmuladd.f64(double %538, double %539, double %540)
  %542 = fmul double %522, %541
  store double %542, ptr @sa, align 8
  %543 = load double, ptr %5, align 8
  %544 = load double, ptr %5, align 8
  %545 = load double, ptr %5, align 8
  %546 = load double, ptr %5, align 8
  %547 = load double, ptr %5, align 8
  %548 = load double, ptr @B6, align 8
  %549 = load double, ptr %5, align 8
  %550 = load double, ptr @B5, align 8
  %551 = call double @llvm.fmuladd.f64(double %548, double %549, double %550)
  %552 = load double, ptr @B4, align 8
  %553 = call double @llvm.fmuladd.f64(double %547, double %551, double %552)
  %554 = load double, ptr @B3, align 8
  %555 = call double @llvm.fmuladd.f64(double %546, double %553, double %554)
  %556 = load double, ptr @B2, align 8
  %557 = call double @llvm.fmuladd.f64(double %545, double %555, double %556)
  %558 = load double, ptr @B1, align 8
  %559 = call double @llvm.fmuladd.f64(double %544, double %557, double %558)
  %560 = load double, ptr @one, align 8
  %561 = call double @llvm.fmuladd.f64(double %543, double %559, double %560)
  store double %561, ptr @sb, align 8
  %562 = load double, ptr @sa, align 8
  %563 = load double, ptr @sb, align 8
  %564 = fdiv double %562, %563
  store double %564, ptr @sa, align 8
  %565 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %566 = fdiv double %565, 2.900000e+01
  store double %566, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %567 = load double, ptr %6, align 8
  %568 = load double, ptr @sa, align 8
  %569 = load double, ptr @two, align 8
  %570 = load double, ptr %2, align 8
  %571 = call double @llvm.fmuladd.f64(double %569, double %570, double %568)
  %572 = fmul double %567, %571
  %573 = load double, ptr @two, align 8
  %574 = fdiv double %572, %573
  store double %574, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %575 = load double, ptr @sa, align 8
  %576 = load double, ptr @sb, align 8
  %577 = fsub double %575, %576
  store double %577, ptr @sc, align 8
  %578 = load double, ptr @one, align 8
  %579 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %580 = fdiv double %578, %579
  store double %580, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %581 = load double, ptr @sc, align 8
  %582 = fmul double %581, 1.000000e-30
  %583 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %584 = fmul double %583, 1.000000e-30
  %585 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %586 = fmul double %585, 1.000000e-30
  %587 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %582, double noundef %584, double noundef %586)
  %588 = load double, ptr @piref, align 8
  %589 = load double, ptr @four, align 8
  %590 = load i32, ptr %10, align 4
  %591 = sitofp i32 %590 to double
  %592 = fmul double %589, %591
  %593 = fdiv double %588, %592
  store double %593, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %594 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %595 = load i32, ptr %10, align 4
  %596 = load double, ptr %6, align 8
  %597 = load double, ptr @A6, align 8
  %598 = load double, ptr @A5, align 8
  %599 = load double, ptr @A4, align 8
  %600 = load double, ptr @A3, align 8
  %601 = load double, ptr @A2, align 8
  %602 = load double, ptr @A1, align 8
  %603 = load double, ptr @one, align 8
  %604 = load double, ptr @B6, align 8
  %605 = load double, ptr @B5, align 8
  %606 = load double, ptr @B4, align 8
  %607 = load double, ptr @B3, align 8
  %608 = load double, ptr @B2, align 8
  %609 = load double, ptr @B1, align 8
  %610 = load double, ptr @one, align 8
  %.promoted63 = load i32, ptr %9, align 4
  %.promoted65 = load double, ptr %3, align 8
  %.promoted68 = load double, ptr %4, align 8
  %.promoted70 = load double, ptr %2, align 8
  %.promoted72 = load double, ptr %5, align 1
  %smax101 = call i32 @llvm.smax.i32(i32 %.promoted63, i32 %595)
  br label %611

611:                                              ; preds = %635, %509
  %612 = phi double [ %620, %635 ], [ %.promoted72, %509 ]
  %613 = phi double [ %634, %635 ], [ %.promoted70, %509 ]
  %614 = phi double [ %627, %635 ], [ %.promoted68, %509 ]
  %615 = phi double [ %619, %635 ], [ %.promoted65, %509 ]
  %616 = phi i32 [ %636, %635 ], [ %.promoted63, %509 ]
  %exitcond102 = icmp ne i32 %616, %smax101
  br i1 %exitcond102, label %617, label %637

617:                                              ; preds = %611
  %618 = sitofp i32 %616 to double
  %619 = fmul double %618, %596
  %620 = fmul double %619, %619
  %621 = call double @llvm.fmuladd.f64(double %597, double %620, double %598)
  %622 = call double @llvm.fmuladd.f64(double %621, double %620, double %599)
  %623 = call double @llvm.fmuladd.f64(double %622, double %620, double %600)
  %624 = call double @llvm.fmuladd.f64(double %623, double %620, double %601)
  %625 = call double @llvm.fmuladd.f64(double %624, double %620, double %602)
  %626 = call double @llvm.fmuladd.f64(double %625, double %620, double %603)
  %627 = fmul double %619, %626
  %628 = call double @llvm.fmuladd.f64(double %604, double %620, double %605)
  %629 = call double @llvm.fmuladd.f64(double %620, double %628, double %606)
  %630 = call double @llvm.fmuladd.f64(double %620, double %629, double %607)
  %631 = call double @llvm.fmuladd.f64(double %620, double %630, double %608)
  %632 = call double @llvm.fmuladd.f64(double %620, double %631, double %609)
  %633 = call double @llvm.fmuladd.f64(double %620, double %632, double %610)
  %634 = call double @llvm.fmuladd.f64(double %627, double %633, double %613)
  br label %635

635:                                              ; preds = %617
  %636 = add i32 %616, 1
  br label %611, !llvm.loop !16

637:                                              ; preds = %611
  %.lcssa73 = phi double [ %612, %611 ]
  %.lcssa71 = phi double [ %613, %611 ]
  %.lcssa69 = phi double [ %614, %611 ]
  %.lcssa66 = phi double [ %615, %611 ]
  store i32 %smax101, ptr %9, align 4
  store double %.lcssa66, ptr %3, align 8
  store double %.lcssa69, ptr %4, align 8
  store double %.lcssa71, ptr %2, align 8
  store double %.lcssa73, ptr %5, align 1
  %638 = call i32 @dtime(ptr noundef @TimeArray)
  %639 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %640 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %641 = load double, ptr @nulltime, align 8
  %642 = fneg double %641
  %643 = call double @llvm.fmuladd.f64(double %639, double %640, double %642)
  store double %643, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %644 = load double, ptr @piref, align 8
  %645 = load double, ptr @four, align 8
  %646 = fdiv double %644, %645
  store double %646, ptr %3, align 8
  %647 = load double, ptr %3, align 8
  %648 = load double, ptr %3, align 8
  %649 = fmul double %647, %648
  store double %649, ptr %5, align 8
  %650 = load double, ptr %3, align 8
  %651 = load double, ptr @A6, align 8
  %652 = load double, ptr %5, align 8
  %653 = load double, ptr @A5, align 8
  %654 = call double @llvm.fmuladd.f64(double %651, double %652, double %653)
  %655 = load double, ptr %5, align 8
  %656 = load double, ptr @A4, align 8
  %657 = call double @llvm.fmuladd.f64(double %654, double %655, double %656)
  %658 = load double, ptr %5, align 8
  %659 = load double, ptr @A3, align 8
  %660 = call double @llvm.fmuladd.f64(double %657, double %658, double %659)
  %661 = load double, ptr %5, align 8
  %662 = load double, ptr @A2, align 8
  %663 = call double @llvm.fmuladd.f64(double %660, double %661, double %662)
  %664 = load double, ptr %5, align 8
  %665 = load double, ptr @A1, align 8
  %666 = call double @llvm.fmuladd.f64(double %663, double %664, double %665)
  %667 = load double, ptr %5, align 8
  %668 = load double, ptr @one, align 8
  %669 = call double @llvm.fmuladd.f64(double %666, double %667, double %668)
  %670 = fmul double %650, %669
  store double %670, ptr @sa, align 8
  %671 = load double, ptr %5, align 8
  %672 = load double, ptr %5, align 8
  %673 = load double, ptr %5, align 8
  %674 = load double, ptr %5, align 8
  %675 = load double, ptr %5, align 8
  %676 = load double, ptr @B6, align 8
  %677 = load double, ptr %5, align 8
  %678 = load double, ptr @B5, align 8
  %679 = call double @llvm.fmuladd.f64(double %676, double %677, double %678)
  %680 = load double, ptr @B4, align 8
  %681 = call double @llvm.fmuladd.f64(double %675, double %679, double %680)
  %682 = load double, ptr @B3, align 8
  %683 = call double @llvm.fmuladd.f64(double %674, double %681, double %682)
  %684 = load double, ptr @B2, align 8
  %685 = call double @llvm.fmuladd.f64(double %673, double %683, double %684)
  %686 = load double, ptr @B1, align 8
  %687 = call double @llvm.fmuladd.f64(double %672, double %685, double %686)
  %688 = load double, ptr @one, align 8
  %689 = call double @llvm.fmuladd.f64(double %671, double %687, double %688)
  store double %689, ptr @sb, align 8
  %690 = load double, ptr @sa, align 8
  %691 = load double, ptr @sb, align 8
  %692 = fmul double %690, %691
  store double %692, ptr @sa, align 8
  %693 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %694 = fdiv double %693, 2.900000e+01
  store double %694, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %695 = load double, ptr %6, align 8
  %696 = load double, ptr @sa, align 8
  %697 = load double, ptr @two, align 8
  %698 = load double, ptr %2, align 8
  %699 = call double @llvm.fmuladd.f64(double %697, double %698, double %696)
  %700 = fmul double %695, %699
  %701 = load double, ptr @two, align 8
  %702 = fdiv double %700, %701
  store double %702, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %703 = load double, ptr @sa, align 8
  %704 = load double, ptr @sb, align 8
  %705 = fsub double %703, %704
  store double %705, ptr @sc, align 8
  %706 = load double, ptr @one, align 8
  %707 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %708 = fdiv double %706, %707
  store double %708, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %709 = load double, ptr @sc, align 8
  %710 = fmul double %709, 1.000000e-30
  %711 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %712 = fmul double %711, 1.000000e-30
  %713 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %714 = fmul double %713, 1.000000e-30
  %715 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, double noundef %710, double noundef %712, double noundef %714)
  store double 0.000000e+00, ptr %2, align 8
  %716 = load double, ptr @one, align 8
  store double %716, ptr %5, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %717 = load double, ptr @sa, align 8
  %718 = load i32, ptr %10, align 4
  %719 = sitofp i32 %718 to double
  %720 = fdiv double %717, %719
  store double %720, ptr %4, align 8
  %721 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %722 = load i32, ptr %10, align 4
  %723 = load double, ptr %4, align 8
  %724 = load double, ptr %5, align 8
  %725 = load double, ptr %5, align 8
  %726 = load double, ptr %5, align 8
  %727 = load double, ptr %5, align 8
  %.promoted74 = load i32, ptr %9, align 4
  %.promoted76 = load double, ptr %6, align 8
  %.promoted78 = load double, ptr %3, align 8
  %.promoted80 = load double, ptr %2, align 8
  %smax103 = call i32 @llvm.smax.i32(i32 %.promoted74, i32 %722)
  br label %728

728:                                              ; preds = %746, %637
  %729 = phi double [ %745, %746 ], [ %.promoted80, %637 ]
  %730 = phi double [ %736, %746 ], [ %.promoted78, %637 ]
  %731 = phi double [ %735, %746 ], [ %.promoted76, %637 ]
  %732 = phi i32 [ %747, %746 ], [ %.promoted74, %637 ]
  %exitcond104 = icmp ne i32 %732, %smax103
  br i1 %exitcond104, label %733, label %748

733:                                              ; preds = %728
  %734 = sitofp i32 %732 to double
  %735 = fmul double %734, %723
  %736 = fmul double %735, %735
  %737 = fadd double %735, %725
  %738 = fdiv double %724, %737
  %739 = fsub double %729, %738
  %740 = fadd double %736, %726
  %741 = fdiv double %735, %740
  %742 = fsub double %739, %741
  %743 = call double @llvm.fmuladd.f64(double %735, double %736, double %727)
  %744 = fdiv double %736, %743
  %745 = fsub double %742, %744
  br label %746

746:                                              ; preds = %733
  %747 = add i32 %732, 1
  br label %728, !llvm.loop !17

748:                                              ; preds = %728
  %.lcssa81 = phi double [ %729, %728 ]
  %.lcssa79 = phi double [ %730, %728 ]
  %.lcssa77 = phi double [ %731, %728 ]
  store i32 %smax103, ptr %9, align 4
  store double %.lcssa77, ptr %6, align 8
  store double %.lcssa79, ptr %3, align 8
  store double %.lcssa81, ptr %2, align 8
  %749 = call i32 @dtime(ptr noundef @TimeArray)
  %750 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %751 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %752 = load double, ptr @nulltime, align 8
  %753 = fneg double %752
  %754 = call double @llvm.fmuladd.f64(double %750, double %751, double %753)
  store double %754, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %755 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %756 = fdiv double %755, 1.200000e+01
  store double %756, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %757 = load double, ptr @sa, align 8
  store double %757, ptr %6, align 8
  %758 = load double, ptr %6, align 8
  %759 = load double, ptr %6, align 8
  %760 = fmul double %758, %759
  store double %760, ptr %3, align 8
  %761 = load double, ptr %5, align 8
  %762 = fneg double %761
  %763 = load double, ptr %5, align 8
  %764 = load double, ptr %6, align 8
  %765 = load double, ptr %5, align 8
  %766 = fadd double %764, %765
  %767 = fdiv double %763, %766
  %768 = fsub double %762, %767
  %769 = load double, ptr %6, align 8
  %770 = load double, ptr %3, align 8
  %771 = load double, ptr %5, align 8
  %772 = fadd double %770, %771
  %773 = fdiv double %769, %772
  %774 = fsub double %768, %773
  %775 = load double, ptr %3, align 8
  %776 = load double, ptr %6, align 8
  %777 = load double, ptr %3, align 8
  %778 = load double, ptr %5, align 8
  %779 = call double @llvm.fmuladd.f64(double %776, double %777, double %778)
  %780 = fdiv double %775, %779
  %781 = fsub double %774, %780
  store double %781, ptr @sa, align 8
  %782 = load double, ptr %4, align 8
  %783 = fmul double 1.800000e+01, %782
  %784 = load double, ptr @sa, align 8
  %785 = load double, ptr @two, align 8
  %786 = load double, ptr %2, align 8
  %787 = call double @llvm.fmuladd.f64(double %785, double %786, double %784)
  %788 = fmul double %783, %787
  store double %788, ptr @sa, align 8
  %789 = load double, ptr @sa, align 8
  %790 = fptosi double %789 to i32
  %791 = mul nsw i32 -2000, %790
  store i32 %791, ptr %10, align 4
  %792 = load i32, ptr %10, align 4
  %793 = sitofp i32 %792 to double
  %794 = load double, ptr @scale, align 8
  %795 = fdiv double %793, %794
  %796 = fptosi double %795 to i32
  store i32 %796, ptr %10, align 4
  %797 = load double, ptr @sa, align 8
  %798 = fadd double %797, 5.002000e+02
  store double %798, ptr @sc, align 8
  %799 = load double, ptr @one, align 8
  %800 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %801 = fdiv double %799, %800
  store double %801, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %802 = load double, ptr @sc, align 8
  %803 = fmul double %802, 1.000000e-30
  %804 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %805 = fmul double %804, 1.000000e-30
  %806 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %807 = fmul double %806, 1.000000e-30
  %808 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, double noundef %803, double noundef %805, double noundef %807)
  %809 = load double, ptr @piref, align 8
  %810 = load double, ptr @three, align 8
  %811 = load i32, ptr %10, align 4
  %812 = sitofp i32 %811 to double
  %813 = fmul double %810, %812
  %814 = fdiv double %809, %813
  store double %814, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %815 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %816 = load i32, ptr %10, align 4
  %817 = load double, ptr %6, align 8
  %818 = load double, ptr @B6, align 8
  %819 = load double, ptr @B5, align 8
  %820 = load double, ptr @B4, align 8
  %821 = load double, ptr @B3, align 8
  %822 = load double, ptr @B2, align 8
  %823 = load double, ptr @B1, align 8
  %824 = load double, ptr @one, align 8
  %825 = load double, ptr @A6, align 8
  %826 = load double, ptr @A5, align 8
  %827 = load double, ptr @A4, align 8
  %828 = load double, ptr @A3, align 8
  %829 = load double, ptr @A2, align 8
  %830 = load double, ptr @A1, align 8
  %831 = load double, ptr @one, align 8
  %.promoted82 = load i32, ptr %9, align 4
  %.promoted84 = load double, ptr %3, align 8
  %.promoted86 = load double, ptr %5, align 8
  %.promoted88 = load double, ptr %4, align 8
  %.promoted90 = load double, ptr %2, align 8
  %smax105 = call i32 @llvm.smax.i32(i32 %.promoted82, i32 %816)
  br label %832

832:                                              ; preds = %857, %748
  %833 = phi double [ %856, %857 ], [ %.promoted90, %748 ]
  %834 = phi double [ %847, %857 ], [ %.promoted88, %748 ]
  %835 = phi double [ %841, %857 ], [ %.promoted86, %748 ]
  %836 = phi double [ %840, %857 ], [ %.promoted84, %748 ]
  %837 = phi i32 [ %858, %857 ], [ %.promoted82, %748 ]
  %exitcond106 = icmp ne i32 %837, %smax105
  br i1 %exitcond106, label %838, label %859

838:                                              ; preds = %832
  %839 = sitofp i32 %837 to double
  %840 = fmul double %839, %817
  %841 = fmul double %840, %840
  %842 = call double @llvm.fmuladd.f64(double %818, double %841, double %819)
  %843 = call double @llvm.fmuladd.f64(double %841, double %842, double %820)
  %844 = call double @llvm.fmuladd.f64(double %841, double %843, double %821)
  %845 = call double @llvm.fmuladd.f64(double %841, double %844, double %822)
  %846 = call double @llvm.fmuladd.f64(double %841, double %845, double %823)
  %847 = call double @llvm.fmuladd.f64(double %841, double %846, double %824)
  %848 = fmul double %847, %847
  %849 = fmul double %848, %840
  %850 = call double @llvm.fmuladd.f64(double %825, double %841, double %826)
  %851 = call double @llvm.fmuladd.f64(double %850, double %841, double %827)
  %852 = call double @llvm.fmuladd.f64(double %851, double %841, double %828)
  %853 = call double @llvm.fmuladd.f64(double %852, double %841, double %829)
  %854 = call double @llvm.fmuladd.f64(double %853, double %841, double %830)
  %855 = call double @llvm.fmuladd.f64(double %854, double %841, double %831)
  %856 = call double @llvm.fmuladd.f64(double %849, double %855, double %833)
  br label %857

857:                                              ; preds = %838
  %858 = add i32 %837, 1
  br label %832, !llvm.loop !18

859:                                              ; preds = %832
  %.lcssa91 = phi double [ %833, %832 ]
  %.lcssa89 = phi double [ %834, %832 ]
  %.lcssa87 = phi double [ %835, %832 ]
  %.lcssa85 = phi double [ %836, %832 ]
  store i32 %smax105, ptr %9, align 4
  store double %.lcssa85, ptr %3, align 8
  store double %.lcssa87, ptr %5, align 8
  store double %.lcssa89, ptr %4, align 8
  store double %.lcssa91, ptr %2, align 8
  %860 = call i32 @dtime(ptr noundef @TimeArray)
  %861 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %862 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %863 = load double, ptr @nulltime, align 8
  %864 = fneg double %863
  %865 = call double @llvm.fmuladd.f64(double %861, double %862, double %864)
  store double %865, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %866 = load double, ptr @piref, align 8
  %867 = load double, ptr @three, align 8
  %868 = fdiv double %866, %867
  store double %868, ptr %3, align 8
  %869 = load double, ptr %3, align 8
  %870 = load double, ptr %3, align 8
  %871 = fmul double %869, %870
  store double %871, ptr %5, align 8
  %872 = load double, ptr %3, align 8
  %873 = load double, ptr @A6, align 8
  %874 = load double, ptr %5, align 8
  %875 = load double, ptr @A5, align 8
  %876 = call double @llvm.fmuladd.f64(double %873, double %874, double %875)
  %877 = load double, ptr %5, align 8
  %878 = load double, ptr @A4, align 8
  %879 = call double @llvm.fmuladd.f64(double %876, double %877, double %878)
  %880 = load double, ptr %5, align 8
  %881 = load double, ptr @A3, align 8
  %882 = call double @llvm.fmuladd.f64(double %879, double %880, double %881)
  %883 = load double, ptr %5, align 8
  %884 = load double, ptr @A2, align 8
  %885 = call double @llvm.fmuladd.f64(double %882, double %883, double %884)
  %886 = load double, ptr %5, align 8
  %887 = load double, ptr @A1, align 8
  %888 = call double @llvm.fmuladd.f64(double %885, double %886, double %887)
  %889 = load double, ptr %5, align 8
  %890 = load double, ptr @one, align 8
  %891 = call double @llvm.fmuladd.f64(double %888, double %889, double %890)
  %892 = fmul double %872, %891
  store double %892, ptr @sa, align 8
  %893 = load double, ptr %5, align 8
  %894 = load double, ptr %5, align 8
  %895 = load double, ptr %5, align 8
  %896 = load double, ptr %5, align 8
  %897 = load double, ptr %5, align 8
  %898 = load double, ptr @B6, align 8
  %899 = load double, ptr %5, align 8
  %900 = load double, ptr @B5, align 8
  %901 = call double @llvm.fmuladd.f64(double %898, double %899, double %900)
  %902 = load double, ptr @B4, align 8
  %903 = call double @llvm.fmuladd.f64(double %897, double %901, double %902)
  %904 = load double, ptr @B3, align 8
  %905 = call double @llvm.fmuladd.f64(double %896, double %903, double %904)
  %906 = load double, ptr @B2, align 8
  %907 = call double @llvm.fmuladd.f64(double %895, double %905, double %906)
  %908 = load double, ptr @B1, align 8
  %909 = call double @llvm.fmuladd.f64(double %894, double %907, double %908)
  %910 = load double, ptr @one, align 8
  %911 = call double @llvm.fmuladd.f64(double %893, double %909, double %910)
  store double %911, ptr @sb, align 8
  %912 = load double, ptr @sa, align 8
  %913 = load double, ptr @sb, align 8
  %914 = fmul double %912, %913
  %915 = load double, ptr @sb, align 8
  %916 = fmul double %914, %915
  store double %916, ptr @sa, align 8
  %917 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %918 = fdiv double %917, 3.000000e+01
  store double %918, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %919 = load double, ptr %6, align 8
  %920 = load double, ptr @sa, align 8
  %921 = load double, ptr @two, align 8
  %922 = load double, ptr %2, align 8
  %923 = call double @llvm.fmuladd.f64(double %921, double %922, double %920)
  %924 = fmul double %919, %923
  %925 = load double, ptr @two, align 8
  %926 = fdiv double %924, %925
  store double %926, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %927 = load double, ptr @sa, align 8
  %928 = load double, ptr @sb, align 8
  %929 = fsub double %927, %928
  store double %929, ptr @sc, align 8
  %930 = load double, ptr @one, align 8
  %931 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %932 = fdiv double %930, %931
  store double %932, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %933 = load double, ptr @sc, align 8
  %934 = fmul double %933, 1.000000e-30
  %935 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %936 = fmul double %935, 1.000000e-30
  %937 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %938 = fmul double %937, 1.000000e-30
  %939 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, double noundef %934, double noundef %936, double noundef %938)
  %940 = load double, ptr @five, align 8
  %941 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %942 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %943 = fsub double %941, %942
  %944 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %945 = call double @llvm.fmuladd.f64(double %940, double %943, double %944)
  %946 = fdiv double %945, 5.200000e+01
  store double %946, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %947 = load double, ptr @one, align 8
  %948 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %949 = fdiv double %947, %948
  store double %949, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %950 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %951 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %952 = fadd double %950, %951
  %953 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %954 = fadd double %952, %953
  %955 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %956 = fadd double %954, %955
  %957 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %958 = fadd double %956, %957
  store double %958, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %959 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %960 = load double, ptr @four, align 8
  %961 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %962 = call double @llvm.fmuladd.f64(double %960, double %961, double %959)
  %963 = fdiv double %962, 1.520000e+02
  store double %963, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %964 = load double, ptr @one, align 8
  %965 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %966 = fdiv double %964, %965
  store double %966, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %967 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %968 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %969 = fadd double %967, %968
  %970 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %971 = fadd double %969, %970
  %972 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %973 = fadd double %971, %972
  %974 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %975 = fadd double %973, %974
  store double %975, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %976 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %977 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %978 = fadd double %976, %977
  %979 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %980 = fadd double %978, %979
  %981 = fdiv double %980, 1.460000e+02
  store double %981, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %982 = load double, ptr @one, align 8
  %983 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %984 = fdiv double %982, %983
  store double %984, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %985 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %986 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %987 = fadd double %985, %986
  %988 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %989 = fadd double %987, %988
  %990 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %991 = fadd double %989, %990
  %992 = fdiv double %991, 9.100000e+01
  store double %992, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %993 = load double, ptr @one, align 8
  %994 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %995 = fdiv double %993, %994
  store double %995, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %996 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %997 = load i32, ptr %10, align 4
  %998 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %997)
  %999 = load double, ptr @nulltime, align 8
  %1000 = fmul double %999, 1.000000e-30
  %1001 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, double noundef %1000)
  %1002 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %1003 = fmul double %1002, 1.000000e-30
  %1004 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, double noundef %1003)
  %1005 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %1006 = fmul double %1005, 1.000000e-30
  %1007 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, double noundef %1006)
  %1008 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %1009 = fmul double %1008, 1.000000e-30
  %1010 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, double noundef %1009)
  %1011 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %1012 = fmul double %1011, 1.000000e-30
  %1013 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, double noundef %1012)
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
