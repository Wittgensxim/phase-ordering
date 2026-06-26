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

24:                                               ; preds = %63, %0
  %.lcssa419 = phi double [ %.promoted, %0 ], [ %.lcssa4, %63 ]
  %.lcssa18 = phi i32 [ %.promoted17, %0 ], [ %.lcssa, %63 ]
  %.lcssa216 = phi double [ %.promoted15, %0 ], [ %.lcssa2, %63 ]
  %.lcssa614 = phi double [ %.promoted13, %0 ], [ %.lcssa6, %63 ]
  %25 = phi double [ %.promoted10, %0 ], [ %34, %63 ]
  %26 = phi i32 [ %.promoted7, %0 ], [ %31, %63 ]
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
  br label %46

46:                                               ; preds = %52, %30
  %47 = phi double [ %61, %52 ], [ 0.000000e+00, %30 ]
  %48 = phi double [ %54, %52 ], [ %.lcssa419, %30 ]
  %49 = phi double [ %53, %52 ], [ 0.000000e+00, %30 ]
  %50 = phi i32 [ %62, %52 ], [ 1, %30 ]
  %51 = icmp sle i32 %50, %37
  br i1 %51, label %52, label %63

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
  %62 = add nsw i32 %50, 1
  br label %46, !llvm.loop !7

63:                                               ; preds = %46
  %.lcssa6 = phi double [ %47, %46 ]
  %.lcssa4 = phi double [ %48, %46 ]
  %.lcssa2 = phi double [ %49, %46 ]
  %.lcssa = phi i32 [ %50, %46 ]
  %64 = call i32 @dtime(ptr noundef @TimeArray)
  %65 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %65, ptr @sa, align 8
  %66 = icmp eq i32 %31, %23
  br i1 %66, label %67, label %24, !llvm.loop !9

67:                                               ; preds = %63
  %.lcssa4.lcssa = phi double [ %.lcssa4, %63 ]
  %.lcssa.lcssa = phi i32 [ %.lcssa, %63 ]
  %.lcssa2.lcssa = phi double [ %.lcssa2, %63 ]
  %.lcssa6.lcssa = phi double [ %.lcssa6, %63 ]
  %.lcssa12 = phi double [ %34, %63 ]
  %.lcssa9 = phi i32 [ %31, %63 ]
  store i32 %.lcssa9, ptr %11, align 4
  store double %.lcssa12, ptr %6, align 8
  store double %.lcssa6.lcssa, ptr %2, align 8
  store double %.lcssa2.lcssa, ptr %4, align 8
  store i32 %.lcssa.lcssa, ptr %9, align 4
  store double %.lcssa4.lcssa, ptr %3, align 8
  br label %68

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
  br label %68

68:                                               ; preds = %.loopexit, %67
  store double 1.589500e-02, ptr @scale, align 8
  %69 = load double, ptr @scale, align 8
  store double %69, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %70 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %71 = load i32, ptr %11, align 4
  %72 = sub nsw i32 %71, 1
  %.promoted20 = load i32, ptr %9, align 4
  br label %73

73:                                               ; preds = %76, %68
  %74 = phi i32 [ %77, %76 ], [ %.promoted20, %68 ]
  %75 = icmp sle i32 %74, %72
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = add nsw i32 %74, 1
  br label %73, !llvm.loop !10

78:                                               ; preds = %73
  %.lcssa21 = phi i32 [ %74, %73 ]
  store i32 %.lcssa21, ptr %9, align 4
  %79 = call i32 @dtime(ptr noundef @TimeArray)
  %80 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %81 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %82 = fmul double %80, %81
  store double %82, ptr @nulltime, align 8
  %83 = load double, ptr @nulltime, align 8
  %84 = fcmp olt double %83, 0.000000e+00
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  store double 0.000000e+00, ptr @nulltime, align 8
  br label %86

86:                                               ; preds = %85, %78
  %87 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %88 = load double, ptr @sa, align 8
  %89 = load double, ptr @nulltime, align 8
  %90 = fneg double %89
  %91 = call double @llvm.fmuladd.f64(double %87, double %88, double %90)
  store double %91, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %92 = load double, ptr @D1, align 8
  %93 = load double, ptr @D2, align 8
  %94 = fadd double %92, %93
  %95 = load double, ptr @D3, align 8
  %96 = fadd double %94, %95
  %97 = load double, ptr @one, align 8
  %98 = load double, ptr @D1, align 8
  %99 = fadd double %97, %98
  %100 = load double, ptr @E2, align 8
  %101 = fadd double %99, %100
  %102 = load double, ptr @E3, align 8
  %103 = fadd double %101, %102
  %104 = fdiv double %96, %103
  store double %104, ptr @sa, align 8
  %105 = load double, ptr @D1, align 8
  store double %105, ptr @sb, align 8
  %106 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %107 = fdiv double %106, 1.400000e+01
  store double %107, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %108 = load double, ptr %6, align 8
  %109 = load double, ptr @sa, align 8
  %110 = load double, ptr @sb, align 8
  %111 = fadd double %109, %110
  %112 = load double, ptr @two, align 8
  %113 = load double, ptr %2, align 8
  %114 = call double @llvm.fmuladd.f64(double %112, double %113, double %111)
  %115 = fmul double %108, %114
  %116 = load double, ptr @two, align 8
  %117 = fdiv double %115, %116
  store double %117, ptr @sa, align 8
  %118 = load double, ptr @one, align 8
  %119 = load double, ptr @sa, align 8
  %120 = fdiv double %118, %119
  store double %120, ptr @sb, align 8
  %121 = load double, ptr @sb, align 8
  %122 = fptosi double %121 to i32
  %123 = mul nsw i32 40000, %122
  %124 = sitofp i32 %123 to double
  %125 = load double, ptr @scale, align 8
  %126 = fdiv double %124, %125
  %127 = fptosi double %126 to i32
  store i32 %127, ptr %11, align 4
  %128 = load double, ptr @sb, align 8
  %129 = fsub double %128, 2.520000e+01
  store double %129, ptr @sc, align 8
  %130 = load double, ptr @one, align 8
  %131 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %132 = fdiv double %130, %131
  store double %132, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %133 = load double, ptr @sc, align 8
  %134 = fmul double %133, 1.000000e-30
  %135 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %136 = fmul double %135, 1.000000e-30
  %137 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %138 = fmul double %137, 1.000000e-30
  %139 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %134, double noundef %136, double noundef %138)
  %140 = load i32, ptr %11, align 4
  store i32 %140, ptr %10, align 4
  %141 = load double, ptr @five, align 8
  %142 = fneg double %141
  store double %142, ptr %2, align 8
  %143 = load double, ptr @one, align 8
  %144 = fneg double %143
  store double %144, ptr @sa, align 8
  %145 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %146 = load i32, ptr %10, align 4
  %.promoted22 = load i32, ptr %9, align 4
  %.promoted24 = load double, ptr %2, align 8
  %sa.promoted = load double, ptr @sa, align 8
  br label %147

147:                                              ; preds = %152, %86
  %148 = phi double [ %154, %152 ], [ %sa.promoted, %86 ]
  %149 = phi double [ %153, %152 ], [ %.promoted24, %86 ]
  %150 = phi i32 [ %155, %152 ], [ %.promoted22, %86 ]
  %151 = icmp sle i32 %150, %146
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = fneg double %149
  %154 = fadd double %148, %153
  store double %154, ptr @sa, align 8
  %155 = add nsw i32 %150, 1
  br label %147, !llvm.loop !11

156:                                              ; preds = %147
  %.lcssa25 = phi double [ %149, %147 ]
  %.lcssa23 = phi i32 [ %150, %147 ]
  store i32 %.lcssa23, ptr %9, align 4
  store double %.lcssa25, ptr %2, align 8
  %157 = call i32 @dtime(ptr noundef @TimeArray)
  %158 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %159 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %160 = fmul double %158, %159
  store double %160, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %161 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %162 = fcmp olt double %161, 0.000000e+00
  br i1 %162, label %163, label %164

163:                                              ; preds = %156
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  br label %164

164:                                              ; preds = %163, %156
  %165 = load i32, ptr %10, align 4
  %166 = sitofp i32 %165 to double
  store double %166, ptr @sc, align 8
  %167 = load double, ptr @sa, align 8
  store double %167, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  store double 0.000000e+00, ptr %6, align 8
  %168 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %169 = load i32, ptr %10, align 4
  %170 = load double, ptr @two, align 8
  %.promoted26 = load i32, ptr %9, align 4
  %.promoted28 = load double, ptr %2, align 8
  %sa.promoted30 = load double, ptr @sa, align 8
  %.promoted31 = load double, ptr %3, align 8
  %.promoted33 = load double, ptr %6, align 8
  %.promoted35 = load double, ptr %4, align 8
  %.promoted37 = load double, ptr %5, align 8
  br label %171

171:                                              ; preds = %180, %164
  %172 = phi double [ %189, %180 ], [ %.promoted37, %164 ]
  %173 = phi double [ %187, %180 ], [ %.promoted35, %164 ]
  %174 = phi double [ %185, %180 ], [ %.promoted33, %164 ]
  %175 = phi double [ %183, %180 ], [ %.promoted31, %164 ]
  %176 = phi double [ %182, %180 ], [ %sa.promoted30, %164 ]
  %177 = phi double [ %181, %180 ], [ %.promoted28, %164 ]
  %178 = phi i32 [ %190, %180 ], [ %.promoted26, %164 ]
  %179 = icmp sle i32 %178, %169
  br i1 %179, label %180, label %191

180:                                              ; preds = %171
  %181 = fneg double %177
  %182 = fadd double %176, %181
  store double %182, ptr @sa, align 8
  %183 = fadd double %175, %170
  %184 = fsub double %181, %183
  %185 = fadd double %174, %184
  %186 = fneg double %181
  %187 = call double @llvm.fmuladd.f64(double %186, double %183, double %173)
  %188 = fdiv double %181, %183
  %189 = fadd double %172, %188
  store double %189, ptr %5, align 8
  %190 = add nsw i32 %178, 1
  br label %171, !llvm.loop !12

191:                                              ; preds = %171
  %.lcssa36 = phi double [ %173, %171 ]
  %.lcssa34 = phi double [ %174, %171 ]
  %.lcssa32 = phi double [ %175, %171 ]
  %.lcssa29 = phi double [ %177, %171 ]
  %.lcssa27 = phi i32 [ %178, %171 ]
  store i32 %.lcssa27, ptr %9, align 4
  store double %.lcssa29, ptr %2, align 8
  store double %.lcssa32, ptr %3, align 8
  store double %.lcssa34, ptr %6, align 8
  store double %.lcssa36, ptr %4, align 8
  %192 = call i32 @dtime(ptr noundef @TimeArray)
  %193 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %194 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %195 = fmul double %193, %194
  store double %195, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %196 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %197 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %198 = fsub double %196, %197
  %199 = fdiv double %198, 7.000000e+00
  store double %199, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %200 = load double, ptr @sa, align 8
  %201 = load double, ptr %6, align 8
  %202 = fmul double %200, %201
  %203 = load double, ptr @sc, align 8
  %204 = fdiv double %202, %203
  %205 = fptosi double %204 to i32
  store i32 %205, ptr %10, align 4
  %206 = load double, ptr @four, align 8
  %207 = load double, ptr %5, align 8
  %208 = fmul double %206, %207
  %209 = load double, ptr @five, align 8
  %210 = fdiv double %208, %209
  store double %210, ptr @sa, align 8
  %211 = load double, ptr @sa, align 8
  %212 = load double, ptr @five, align 8
  %213 = load double, ptr %4, align 8
  %214 = fdiv double %212, %213
  %215 = fadd double %211, %214
  store double %215, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %216 = load double, ptr @sb, align 8
  %217 = load double, ptr @sc, align 8
  %218 = load double, ptr %4, align 8
  %219 = load double, ptr %4, align 8
  %220 = fmul double %218, %219
  %221 = load double, ptr %4, align 8
  %222 = fmul double %220, %221
  %223 = fdiv double %217, %222
  %224 = fsub double %216, %223
  store double %224, ptr @piprg, align 8
  %225 = load double, ptr @piprg, align 8
  %226 = load double, ptr @piref, align 8
  %227 = fsub double %225, %226
  store double %227, ptr @pierr, align 8
  %228 = load double, ptr @one, align 8
  %229 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %230 = fdiv double %228, %229
  store double %230, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %231 = load double, ptr @pierr, align 8
  %232 = fmul double %231, 1.000000e-30
  %233 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %234 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %235 = fsub double %233, %234
  %236 = fmul double %235, 1.000000e-30
  %237 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %238 = fmul double %237, 1.000000e-30
  %239 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %232, double noundef %236, double noundef %238)
  %240 = load double, ptr @piref, align 8
  %241 = load double, ptr @three, align 8
  %242 = load i32, ptr %10, align 4
  %243 = sitofp i32 %242 to double
  %244 = fmul double %241, %243
  %245 = fdiv double %240, %244
  store double %245, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %246 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %247 = load i32, ptr %10, align 4
  %248 = sub nsw i32 %247, 1
  %249 = load double, ptr @one, align 8
  %250 = load double, ptr %6, align 8
  %251 = load double, ptr @A6, align 8
  %252 = load double, ptr @A5, align 8
  %253 = fneg double %252
  %254 = load double, ptr @A4, align 8
  %255 = load double, ptr @A3, align 8
  %256 = fneg double %255
  %257 = load double, ptr @A2, align 8
  %258 = load double, ptr @A1, align 8
  %259 = load double, ptr @one, align 8
  %.promoted38 = load i32, ptr %9, align 4
  %.promoted40 = load double, ptr %4, align 8
  %.promoted42 = load double, ptr %3, align 8
  %.promoted45 = load double, ptr %2, align 8
  br label %260

260:                                              ; preds = %266, %191
  %261 = phi double [ %276, %266 ], [ %.promoted45, %191 ]
  %262 = phi double [ %268, %266 ], [ %.promoted42, %191 ]
  %263 = phi double [ %267, %266 ], [ %.promoted40, %191 ]
  %264 = phi i32 [ %277, %266 ], [ %.promoted38, %191 ]
  %265 = icmp sle i32 %264, %248
  br i1 %265, label %266, label %278

266:                                              ; preds = %260
  %267 = fadd double %263, %249
  %268 = fmul double %267, %250
  %269 = fmul double %268, %268
  store double %269, ptr %5, align 8
  %270 = call double @llvm.fmuladd.f64(double %251, double %269, double %253)
  %271 = call double @llvm.fmuladd.f64(double %270, double %269, double %254)
  %272 = call double @llvm.fmuladd.f64(double %271, double %269, double %256)
  %273 = call double @llvm.fmuladd.f64(double %272, double %269, double %257)
  %274 = call double @llvm.fmuladd.f64(double %273, double %269, double %258)
  %275 = call double @llvm.fmuladd.f64(double %274, double %269, double %259)
  %276 = call double @llvm.fmuladd.f64(double %268, double %275, double %261)
  %277 = add nsw i32 %264, 1
  br label %260, !llvm.loop !13

278:                                              ; preds = %260
  %.lcssa46 = phi double [ %261, %260 ]
  %.lcssa43 = phi double [ %262, %260 ]
  %.lcssa41 = phi double [ %263, %260 ]
  %.lcssa39 = phi i32 [ %264, %260 ]
  store i32 %.lcssa39, ptr %9, align 4
  store double %.lcssa41, ptr %4, align 8
  store double %.lcssa43, ptr %3, align 8
  store double %.lcssa46, ptr %2, align 8
  %279 = call i32 @dtime(ptr noundef @TimeArray)
  %280 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %281 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %282 = load double, ptr @nulltime, align 8
  %283 = fneg double %282
  %284 = call double @llvm.fmuladd.f64(double %280, double %281, double %283)
  store double %284, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %285 = load double, ptr @piref, align 8
  %286 = load double, ptr @three, align 8
  %287 = fdiv double %285, %286
  store double %287, ptr %3, align 8
  %288 = load double, ptr %3, align 8
  %289 = load double, ptr %3, align 8
  %290 = fmul double %288, %289
  store double %290, ptr %5, align 8
  %291 = load double, ptr %3, align 8
  %292 = load double, ptr @A6, align 8
  %293 = load double, ptr %5, align 8
  %294 = load double, ptr @A5, align 8
  %295 = fneg double %294
  %296 = call double @llvm.fmuladd.f64(double %292, double %293, double %295)
  %297 = load double, ptr %5, align 8
  %298 = load double, ptr @A4, align 8
  %299 = call double @llvm.fmuladd.f64(double %296, double %297, double %298)
  %300 = load double, ptr %5, align 8
  %301 = load double, ptr @A3, align 8
  %302 = fneg double %301
  %303 = call double @llvm.fmuladd.f64(double %299, double %300, double %302)
  %304 = load double, ptr %5, align 8
  %305 = load double, ptr @A2, align 8
  %306 = call double @llvm.fmuladd.f64(double %303, double %304, double %305)
  %307 = load double, ptr %5, align 8
  %308 = load double, ptr @A1, align 8
  %309 = call double @llvm.fmuladd.f64(double %306, double %307, double %308)
  %310 = load double, ptr %5, align 8
  %311 = load double, ptr @one, align 8
  %312 = call double @llvm.fmuladd.f64(double %309, double %310, double %311)
  %313 = fmul double %291, %312
  store double %313, ptr @sa, align 8
  %314 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %315 = fdiv double %314, 1.700000e+01
  store double %315, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %316 = load double, ptr %6, align 8
  %317 = load double, ptr @sa, align 8
  %318 = load double, ptr @two, align 8
  %319 = load double, ptr %2, align 8
  %320 = call double @llvm.fmuladd.f64(double %318, double %319, double %317)
  %321 = fmul double %316, %320
  %322 = load double, ptr @two, align 8
  %323 = fdiv double %321, %322
  store double %323, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %324 = load double, ptr @sa, align 8
  %325 = load double, ptr @sb, align 8
  %326 = fsub double %324, %325
  store double %326, ptr @sc, align 8
  %327 = load double, ptr @one, align 8
  %328 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %329 = fdiv double %327, %328
  store double %329, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %330 = load double, ptr @sc, align 8
  %331 = fmul double %330, 1.000000e-30
  %332 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %333 = fmul double %332, 1.000000e-30
  %334 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %335 = fmul double %334, 1.000000e-30
  %336 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %331, double noundef %333, double noundef %335)
  %337 = load double, ptr @A3, align 8
  %338 = fneg double %337
  store double %338, ptr @A3, align 8
  %339 = load double, ptr @A5, align 8
  %340 = fneg double %339
  store double %340, ptr @A5, align 8
  %341 = load double, ptr @piref, align 8
  %342 = load double, ptr @three, align 8
  %343 = load i32, ptr %10, align 4
  %344 = sitofp i32 %343 to double
  %345 = fmul double %342, %344
  %346 = fdiv double %341, %345
  store double %346, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %347 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %348 = load i32, ptr %10, align 4
  %349 = sub nsw i32 %348, 1
  %350 = load double, ptr %6, align 8
  %351 = load double, ptr @B6, align 8
  %352 = load double, ptr @B5, align 8
  %353 = load double, ptr @B4, align 8
  %354 = load double, ptr @B3, align 8
  %355 = load double, ptr @B2, align 8
  %356 = load double, ptr @B1, align 8
  %357 = load double, ptr @one, align 8
  %.promoted47 = load i32, ptr %9, align 4
  %.promoted49 = load double, ptr %3, align 8
  %.promoted52 = load double, ptr %2, align 8
  br label %358

358:                                              ; preds = %363, %278
  %359 = phi double [ %373, %363 ], [ %.promoted52, %278 ]
  %360 = phi double [ %365, %363 ], [ %.promoted49, %278 ]
  %361 = phi i32 [ %374, %363 ], [ %.promoted47, %278 ]
  %362 = icmp sle i32 %361, %349
  br i1 %362, label %363, label %375

363:                                              ; preds = %358
  %364 = sitofp i32 %361 to double
  %365 = fmul double %364, %350
  %366 = fmul double %365, %365
  store double %366, ptr %5, align 8
  %367 = call double @llvm.fmuladd.f64(double %351, double %366, double %352)
  %368 = call double @llvm.fmuladd.f64(double %366, double %367, double %353)
  %369 = call double @llvm.fmuladd.f64(double %366, double %368, double %354)
  %370 = call double @llvm.fmuladd.f64(double %366, double %369, double %355)
  %371 = call double @llvm.fmuladd.f64(double %366, double %370, double %356)
  %372 = call double @llvm.fmuladd.f64(double %366, double %371, double %359)
  %373 = fadd double %372, %357
  %374 = add nsw i32 %361, 1
  br label %358, !llvm.loop !14

375:                                              ; preds = %358
  %.lcssa53 = phi double [ %359, %358 ]
  %.lcssa50 = phi double [ %360, %358 ]
  %.lcssa48 = phi i32 [ %361, %358 ]
  store i32 %.lcssa48, ptr %9, align 4
  store double %.lcssa50, ptr %3, align 8
  store double %.lcssa53, ptr %2, align 8
  %376 = call i32 @dtime(ptr noundef @TimeArray)
  %377 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %378 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %379 = load double, ptr @nulltime, align 8
  %380 = fneg double %379
  %381 = call double @llvm.fmuladd.f64(double %377, double %378, double %380)
  store double %381, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %382 = load double, ptr @piref, align 8
  %383 = load double, ptr @three, align 8
  %384 = fdiv double %382, %383
  store double %384, ptr %3, align 8
  %385 = load double, ptr %3, align 8
  %386 = load double, ptr %3, align 8
  %387 = fmul double %385, %386
  store double %387, ptr %5, align 8
  %388 = load double, ptr %5, align 8
  %389 = load double, ptr %5, align 8
  %390 = load double, ptr %5, align 8
  %391 = load double, ptr %5, align 8
  %392 = load double, ptr %5, align 8
  %393 = load double, ptr @B6, align 8
  %394 = load double, ptr %5, align 8
  %395 = load double, ptr @B5, align 8
  %396 = call double @llvm.fmuladd.f64(double %393, double %394, double %395)
  %397 = load double, ptr @B4, align 8
  %398 = call double @llvm.fmuladd.f64(double %392, double %396, double %397)
  %399 = load double, ptr @B3, align 8
  %400 = call double @llvm.fmuladd.f64(double %391, double %398, double %399)
  %401 = load double, ptr @B2, align 8
  %402 = call double @llvm.fmuladd.f64(double %390, double %400, double %401)
  %403 = load double, ptr @B1, align 8
  %404 = call double @llvm.fmuladd.f64(double %389, double %402, double %403)
  %405 = load double, ptr @one, align 8
  %406 = call double @llvm.fmuladd.f64(double %388, double %404, double %405)
  store double %406, ptr @sa, align 8
  %407 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %408 = fdiv double %407, 1.500000e+01
  store double %408, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %409 = load double, ptr %6, align 8
  %410 = load double, ptr @sa, align 8
  %411 = load double, ptr @one, align 8
  %412 = fadd double %410, %411
  %413 = load double, ptr @two, align 8
  %414 = load double, ptr %2, align 8
  %415 = call double @llvm.fmuladd.f64(double %413, double %414, double %412)
  %416 = fmul double %409, %415
  %417 = load double, ptr @two, align 8
  %418 = fdiv double %416, %417
  store double %418, ptr @sa, align 8
  %419 = load double, ptr @piref, align 8
  %420 = load double, ptr @three, align 8
  %421 = fdiv double %419, %420
  store double %421, ptr %3, align 8
  %422 = load double, ptr %3, align 8
  %423 = load double, ptr %3, align 8
  %424 = fmul double %422, %423
  store double %424, ptr %5, align 8
  %425 = load double, ptr %3, align 8
  %426 = load double, ptr @A6, align 8
  %427 = load double, ptr %5, align 8
  %428 = load double, ptr @A5, align 8
  %429 = call double @llvm.fmuladd.f64(double %426, double %427, double %428)
  %430 = load double, ptr %5, align 8
  %431 = load double, ptr @A4, align 8
  %432 = call double @llvm.fmuladd.f64(double %429, double %430, double %431)
  %433 = load double, ptr %5, align 8
  %434 = load double, ptr @A3, align 8
  %435 = call double @llvm.fmuladd.f64(double %432, double %433, double %434)
  %436 = load double, ptr %5, align 8
  %437 = load double, ptr @A2, align 8
  %438 = call double @llvm.fmuladd.f64(double %435, double %436, double %437)
  %439 = load double, ptr %5, align 8
  %440 = load double, ptr @A1, align 8
  %441 = call double @llvm.fmuladd.f64(double %438, double %439, double %440)
  %442 = load double, ptr %5, align 8
  %443 = load double, ptr @A0, align 8
  %444 = call double @llvm.fmuladd.f64(double %441, double %442, double %443)
  %445 = fmul double %425, %444
  store double %445, ptr @sb, align 8
  %446 = load double, ptr @sa, align 8
  %447 = load double, ptr @sb, align 8
  %448 = fsub double %446, %447
  store double %448, ptr @sc, align 8
  %449 = load double, ptr @one, align 8
  %450 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %451 = fdiv double %449, %450
  store double %451, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %452 = load double, ptr @sc, align 8
  %453 = fmul double %452, 1.000000e-30
  %454 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %455 = fmul double %454, 1.000000e-30
  %456 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %457 = fmul double %456, 1.000000e-30
  %458 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %453, double noundef %455, double noundef %457)
  %459 = load double, ptr @piref, align 8
  %460 = load double, ptr @three, align 8
  %461 = load i32, ptr %10, align 4
  %462 = sitofp i32 %461 to double
  %463 = fmul double %460, %462
  %464 = fdiv double %459, %463
  store double %464, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %465 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %466 = load i32, ptr %10, align 4
  %467 = sub nsw i32 %466, 1
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
  br label %483

483:                                              ; preds = %489, %375
  %484 = phi double [ %507, %489 ], [ %.promoted61, %375 ]
  %485 = phi double [ %499, %489 ], [ %.promoted59, %375 ]
  %486 = phi double [ %491, %489 ], [ %.promoted56, %375 ]
  %487 = phi i32 [ %508, %489 ], [ %.promoted54, %375 ]
  %488 = icmp sle i32 %487, %467
  br i1 %488, label %489, label %509

489:                                              ; preds = %483
  %490 = sitofp i32 %487 to double
  %491 = fmul double %490, %468
  %492 = fmul double %491, %491
  store double %492, ptr %5, align 8
  %493 = call double @llvm.fmuladd.f64(double %469, double %492, double %470)
  %494 = call double @llvm.fmuladd.f64(double %493, double %492, double %471)
  %495 = call double @llvm.fmuladd.f64(double %494, double %492, double %472)
  %496 = call double @llvm.fmuladd.f64(double %495, double %492, double %473)
  %497 = call double @llvm.fmuladd.f64(double %496, double %492, double %474)
  %498 = call double @llvm.fmuladd.f64(double %497, double %492, double %475)
  %499 = fmul double %491, %498
  %500 = call double @llvm.fmuladd.f64(double %476, double %492, double %477)
  %501 = call double @llvm.fmuladd.f64(double %492, double %500, double %478)
  %502 = call double @llvm.fmuladd.f64(double %492, double %501, double %479)
  %503 = call double @llvm.fmuladd.f64(double %492, double %502, double %480)
  %504 = call double @llvm.fmuladd.f64(double %492, double %503, double %481)
  %505 = call double @llvm.fmuladd.f64(double %492, double %504, double %482)
  %506 = fdiv double %499, %505
  %507 = fadd double %484, %506
  %508 = add nsw i32 %487, 1
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
  %596 = sub nsw i32 %595, 1
  %597 = load double, ptr %6, align 8
  %598 = load double, ptr @A6, align 8
  %599 = load double, ptr @A5, align 8
  %600 = load double, ptr @A4, align 8
  %601 = load double, ptr @A3, align 8
  %602 = load double, ptr @A2, align 8
  %603 = load double, ptr @A1, align 8
  %604 = load double, ptr @one, align 8
  %605 = load double, ptr @B6, align 8
  %606 = load double, ptr @B5, align 8
  %607 = load double, ptr @B4, align 8
  %608 = load double, ptr @B3, align 8
  %609 = load double, ptr @B2, align 8
  %610 = load double, ptr @B1, align 8
  %611 = load double, ptr @one, align 8
  %.promoted63 = load i32, ptr %9, align 4
  %.promoted65 = load double, ptr %3, align 8
  %.promoted68 = load double, ptr %4, align 8
  %.promoted70 = load double, ptr %2, align 8
  %.promoted72 = load double, ptr %5, align 1
  br label %612

612:                                              ; preds = %619, %509
  %613 = phi double [ %622, %619 ], [ %.promoted72, %509 ]
  %614 = phi double [ %636, %619 ], [ %.promoted70, %509 ]
  %615 = phi double [ %629, %619 ], [ %.promoted68, %509 ]
  %616 = phi double [ %621, %619 ], [ %.promoted65, %509 ]
  %617 = phi i32 [ %637, %619 ], [ %.promoted63, %509 ]
  %618 = icmp sle i32 %617, %596
  br i1 %618, label %619, label %638

619:                                              ; preds = %612
  %620 = sitofp i32 %617 to double
  %621 = fmul double %620, %597
  %622 = fmul double %621, %621
  %623 = call double @llvm.fmuladd.f64(double %598, double %622, double %599)
  %624 = call double @llvm.fmuladd.f64(double %623, double %622, double %600)
  %625 = call double @llvm.fmuladd.f64(double %624, double %622, double %601)
  %626 = call double @llvm.fmuladd.f64(double %625, double %622, double %602)
  %627 = call double @llvm.fmuladd.f64(double %626, double %622, double %603)
  %628 = call double @llvm.fmuladd.f64(double %627, double %622, double %604)
  %629 = fmul double %621, %628
  %630 = call double @llvm.fmuladd.f64(double %605, double %622, double %606)
  %631 = call double @llvm.fmuladd.f64(double %622, double %630, double %607)
  %632 = call double @llvm.fmuladd.f64(double %622, double %631, double %608)
  %633 = call double @llvm.fmuladd.f64(double %622, double %632, double %609)
  %634 = call double @llvm.fmuladd.f64(double %622, double %633, double %610)
  %635 = call double @llvm.fmuladd.f64(double %622, double %634, double %611)
  %636 = call double @llvm.fmuladd.f64(double %629, double %635, double %614)
  %637 = add nsw i32 %617, 1
  br label %612, !llvm.loop !16

638:                                              ; preds = %612
  %.lcssa73 = phi double [ %613, %612 ]
  %.lcssa71 = phi double [ %614, %612 ]
  %.lcssa69 = phi double [ %615, %612 ]
  %.lcssa66 = phi double [ %616, %612 ]
  %.lcssa64 = phi i32 [ %617, %612 ]
  store i32 %.lcssa64, ptr %9, align 4
  store double %.lcssa66, ptr %3, align 8
  store double %.lcssa69, ptr %4, align 8
  store double %.lcssa71, ptr %2, align 8
  store double %.lcssa73, ptr %5, align 1
  %639 = call i32 @dtime(ptr noundef @TimeArray)
  %640 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %641 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %642 = load double, ptr @nulltime, align 8
  %643 = fneg double %642
  %644 = call double @llvm.fmuladd.f64(double %640, double %641, double %643)
  store double %644, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %645 = load double, ptr @piref, align 8
  %646 = load double, ptr @four, align 8
  %647 = fdiv double %645, %646
  store double %647, ptr %3, align 8
  %648 = load double, ptr %3, align 8
  %649 = load double, ptr %3, align 8
  %650 = fmul double %648, %649
  store double %650, ptr %5, align 8
  %651 = load double, ptr %3, align 8
  %652 = load double, ptr @A6, align 8
  %653 = load double, ptr %5, align 8
  %654 = load double, ptr @A5, align 8
  %655 = call double @llvm.fmuladd.f64(double %652, double %653, double %654)
  %656 = load double, ptr %5, align 8
  %657 = load double, ptr @A4, align 8
  %658 = call double @llvm.fmuladd.f64(double %655, double %656, double %657)
  %659 = load double, ptr %5, align 8
  %660 = load double, ptr @A3, align 8
  %661 = call double @llvm.fmuladd.f64(double %658, double %659, double %660)
  %662 = load double, ptr %5, align 8
  %663 = load double, ptr @A2, align 8
  %664 = call double @llvm.fmuladd.f64(double %661, double %662, double %663)
  %665 = load double, ptr %5, align 8
  %666 = load double, ptr @A1, align 8
  %667 = call double @llvm.fmuladd.f64(double %664, double %665, double %666)
  %668 = load double, ptr %5, align 8
  %669 = load double, ptr @one, align 8
  %670 = call double @llvm.fmuladd.f64(double %667, double %668, double %669)
  %671 = fmul double %651, %670
  store double %671, ptr @sa, align 8
  %672 = load double, ptr %5, align 8
  %673 = load double, ptr %5, align 8
  %674 = load double, ptr %5, align 8
  %675 = load double, ptr %5, align 8
  %676 = load double, ptr %5, align 8
  %677 = load double, ptr @B6, align 8
  %678 = load double, ptr %5, align 8
  %679 = load double, ptr @B5, align 8
  %680 = call double @llvm.fmuladd.f64(double %677, double %678, double %679)
  %681 = load double, ptr @B4, align 8
  %682 = call double @llvm.fmuladd.f64(double %676, double %680, double %681)
  %683 = load double, ptr @B3, align 8
  %684 = call double @llvm.fmuladd.f64(double %675, double %682, double %683)
  %685 = load double, ptr @B2, align 8
  %686 = call double @llvm.fmuladd.f64(double %674, double %684, double %685)
  %687 = load double, ptr @B1, align 8
  %688 = call double @llvm.fmuladd.f64(double %673, double %686, double %687)
  %689 = load double, ptr @one, align 8
  %690 = call double @llvm.fmuladd.f64(double %672, double %688, double %689)
  store double %690, ptr @sb, align 8
  %691 = load double, ptr @sa, align 8
  %692 = load double, ptr @sb, align 8
  %693 = fmul double %691, %692
  store double %693, ptr @sa, align 8
  %694 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %695 = fdiv double %694, 2.900000e+01
  store double %695, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %696 = load double, ptr %6, align 8
  %697 = load double, ptr @sa, align 8
  %698 = load double, ptr @two, align 8
  %699 = load double, ptr %2, align 8
  %700 = call double @llvm.fmuladd.f64(double %698, double %699, double %697)
  %701 = fmul double %696, %700
  %702 = load double, ptr @two, align 8
  %703 = fdiv double %701, %702
  store double %703, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %704 = load double, ptr @sa, align 8
  %705 = load double, ptr @sb, align 8
  %706 = fsub double %704, %705
  store double %706, ptr @sc, align 8
  %707 = load double, ptr @one, align 8
  %708 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %709 = fdiv double %707, %708
  store double %709, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %710 = load double, ptr @sc, align 8
  %711 = fmul double %710, 1.000000e-30
  %712 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %713 = fmul double %712, 1.000000e-30
  %714 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %715 = fmul double %714, 1.000000e-30
  %716 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, double noundef %711, double noundef %713, double noundef %715)
  store double 0.000000e+00, ptr %2, align 8
  %717 = load double, ptr @one, align 8
  store double %717, ptr %5, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %718 = load double, ptr @sa, align 8
  %719 = load i32, ptr %10, align 4
  %720 = sitofp i32 %719 to double
  %721 = fdiv double %718, %720
  store double %721, ptr %4, align 8
  %722 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %723 = load i32, ptr %10, align 4
  %724 = sub nsw i32 %723, 1
  %725 = load double, ptr %4, align 8
  %726 = load double, ptr %5, align 8
  %727 = load double, ptr %5, align 8
  %728 = load double, ptr %5, align 8
  %729 = load double, ptr %5, align 8
  %.promoted74 = load i32, ptr %9, align 4
  %.promoted76 = load double, ptr %6, align 8
  %.promoted78 = load double, ptr %3, align 8
  %.promoted80 = load double, ptr %2, align 8
  br label %730

730:                                              ; preds = %736, %638
  %731 = phi double [ %748, %736 ], [ %.promoted80, %638 ]
  %732 = phi double [ %739, %736 ], [ %.promoted78, %638 ]
  %733 = phi double [ %738, %736 ], [ %.promoted76, %638 ]
  %734 = phi i32 [ %749, %736 ], [ %.promoted74, %638 ]
  %735 = icmp sle i32 %734, %724
  br i1 %735, label %736, label %750

736:                                              ; preds = %730
  %737 = sitofp i32 %734 to double
  %738 = fmul double %737, %725
  %739 = fmul double %738, %738
  %740 = fadd double %738, %727
  %741 = fdiv double %726, %740
  %742 = fsub double %731, %741
  %743 = fadd double %739, %728
  %744 = fdiv double %738, %743
  %745 = fsub double %742, %744
  %746 = call double @llvm.fmuladd.f64(double %738, double %739, double %729)
  %747 = fdiv double %739, %746
  %748 = fsub double %745, %747
  %749 = add nsw i32 %734, 1
  br label %730, !llvm.loop !17

750:                                              ; preds = %730
  %.lcssa81 = phi double [ %731, %730 ]
  %.lcssa79 = phi double [ %732, %730 ]
  %.lcssa77 = phi double [ %733, %730 ]
  %.lcssa75 = phi i32 [ %734, %730 ]
  store i32 %.lcssa75, ptr %9, align 4
  store double %.lcssa77, ptr %6, align 8
  store double %.lcssa79, ptr %3, align 8
  store double %.lcssa81, ptr %2, align 8
  %751 = call i32 @dtime(ptr noundef @TimeArray)
  %752 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %753 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %754 = load double, ptr @nulltime, align 8
  %755 = fneg double %754
  %756 = call double @llvm.fmuladd.f64(double %752, double %753, double %755)
  store double %756, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %757 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %758 = fdiv double %757, 1.200000e+01
  store double %758, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %759 = load double, ptr @sa, align 8
  store double %759, ptr %6, align 8
  %760 = load double, ptr %6, align 8
  %761 = load double, ptr %6, align 8
  %762 = fmul double %760, %761
  store double %762, ptr %3, align 8
  %763 = load double, ptr %5, align 8
  %764 = fneg double %763
  %765 = load double, ptr %5, align 8
  %766 = load double, ptr %6, align 8
  %767 = load double, ptr %5, align 8
  %768 = fadd double %766, %767
  %769 = fdiv double %765, %768
  %770 = fsub double %764, %769
  %771 = load double, ptr %6, align 8
  %772 = load double, ptr %3, align 8
  %773 = load double, ptr %5, align 8
  %774 = fadd double %772, %773
  %775 = fdiv double %771, %774
  %776 = fsub double %770, %775
  %777 = load double, ptr %3, align 8
  %778 = load double, ptr %6, align 8
  %779 = load double, ptr %3, align 8
  %780 = load double, ptr %5, align 8
  %781 = call double @llvm.fmuladd.f64(double %778, double %779, double %780)
  %782 = fdiv double %777, %781
  %783 = fsub double %776, %782
  store double %783, ptr @sa, align 8
  %784 = load double, ptr %4, align 8
  %785 = fmul double 1.800000e+01, %784
  %786 = load double, ptr @sa, align 8
  %787 = load double, ptr @two, align 8
  %788 = load double, ptr %2, align 8
  %789 = call double @llvm.fmuladd.f64(double %787, double %788, double %786)
  %790 = fmul double %785, %789
  store double %790, ptr @sa, align 8
  %791 = load double, ptr @sa, align 8
  %792 = fptosi double %791 to i32
  %793 = mul nsw i32 -2000, %792
  store i32 %793, ptr %10, align 4
  %794 = load i32, ptr %10, align 4
  %795 = sitofp i32 %794 to double
  %796 = load double, ptr @scale, align 8
  %797 = fdiv double %795, %796
  %798 = fptosi double %797 to i32
  store i32 %798, ptr %10, align 4
  %799 = load double, ptr @sa, align 8
  %800 = fadd double %799, 5.002000e+02
  store double %800, ptr @sc, align 8
  %801 = load double, ptr @one, align 8
  %802 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %803 = fdiv double %801, %802
  store double %803, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %804 = load double, ptr @sc, align 8
  %805 = fmul double %804, 1.000000e-30
  %806 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %807 = fmul double %806, 1.000000e-30
  %808 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %809 = fmul double %808, 1.000000e-30
  %810 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, double noundef %805, double noundef %807, double noundef %809)
  %811 = load double, ptr @piref, align 8
  %812 = load double, ptr @three, align 8
  %813 = load i32, ptr %10, align 4
  %814 = sitofp i32 %813 to double
  %815 = fmul double %812, %814
  %816 = fdiv double %811, %815
  store double %816, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %817 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %818 = load i32, ptr %10, align 4
  %819 = sub nsw i32 %818, 1
  %820 = load double, ptr %6, align 8
  %821 = load double, ptr @B6, align 8
  %822 = load double, ptr @B5, align 8
  %823 = load double, ptr @B4, align 8
  %824 = load double, ptr @B3, align 8
  %825 = load double, ptr @B2, align 8
  %826 = load double, ptr @B1, align 8
  %827 = load double, ptr @one, align 8
  %828 = load double, ptr @A6, align 8
  %829 = load double, ptr @A5, align 8
  %830 = load double, ptr @A4, align 8
  %831 = load double, ptr @A3, align 8
  %832 = load double, ptr @A2, align 8
  %833 = load double, ptr @A1, align 8
  %834 = load double, ptr @one, align 8
  %.promoted82 = load i32, ptr %9, align 4
  %.promoted84 = load double, ptr %3, align 8
  %.promoted86 = load double, ptr %5, align 8
  %.promoted88 = load double, ptr %4, align 8
  %.promoted90 = load double, ptr %2, align 8
  br label %835

835:                                              ; preds = %842, %750
  %836 = phi double [ %860, %842 ], [ %.promoted90, %750 ]
  %837 = phi double [ %851, %842 ], [ %.promoted88, %750 ]
  %838 = phi double [ %845, %842 ], [ %.promoted86, %750 ]
  %839 = phi double [ %844, %842 ], [ %.promoted84, %750 ]
  %840 = phi i32 [ %861, %842 ], [ %.promoted82, %750 ]
  %841 = icmp sle i32 %840, %819
  br i1 %841, label %842, label %862

842:                                              ; preds = %835
  %843 = sitofp i32 %840 to double
  %844 = fmul double %843, %820
  %845 = fmul double %844, %844
  %846 = call double @llvm.fmuladd.f64(double %821, double %845, double %822)
  %847 = call double @llvm.fmuladd.f64(double %845, double %846, double %823)
  %848 = call double @llvm.fmuladd.f64(double %845, double %847, double %824)
  %849 = call double @llvm.fmuladd.f64(double %845, double %848, double %825)
  %850 = call double @llvm.fmuladd.f64(double %845, double %849, double %826)
  %851 = call double @llvm.fmuladd.f64(double %845, double %850, double %827)
  %852 = fmul double %851, %851
  %853 = fmul double %852, %844
  %854 = call double @llvm.fmuladd.f64(double %828, double %845, double %829)
  %855 = call double @llvm.fmuladd.f64(double %854, double %845, double %830)
  %856 = call double @llvm.fmuladd.f64(double %855, double %845, double %831)
  %857 = call double @llvm.fmuladd.f64(double %856, double %845, double %832)
  %858 = call double @llvm.fmuladd.f64(double %857, double %845, double %833)
  %859 = call double @llvm.fmuladd.f64(double %858, double %845, double %834)
  %860 = call double @llvm.fmuladd.f64(double %853, double %859, double %836)
  %861 = add nsw i32 %840, 1
  br label %835, !llvm.loop !18

862:                                              ; preds = %835
  %.lcssa91 = phi double [ %836, %835 ]
  %.lcssa89 = phi double [ %837, %835 ]
  %.lcssa87 = phi double [ %838, %835 ]
  %.lcssa85 = phi double [ %839, %835 ]
  %.lcssa83 = phi i32 [ %840, %835 ]
  store i32 %.lcssa83, ptr %9, align 4
  store double %.lcssa85, ptr %3, align 8
  store double %.lcssa87, ptr %5, align 8
  store double %.lcssa89, ptr %4, align 8
  store double %.lcssa91, ptr %2, align 8
  %863 = call i32 @dtime(ptr noundef @TimeArray)
  %864 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %865 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %866 = load double, ptr @nulltime, align 8
  %867 = fneg double %866
  %868 = call double @llvm.fmuladd.f64(double %864, double %865, double %867)
  store double %868, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %869 = load double, ptr @piref, align 8
  %870 = load double, ptr @three, align 8
  %871 = fdiv double %869, %870
  store double %871, ptr %3, align 8
  %872 = load double, ptr %3, align 8
  %873 = load double, ptr %3, align 8
  %874 = fmul double %872, %873
  store double %874, ptr %5, align 8
  %875 = load double, ptr %3, align 8
  %876 = load double, ptr @A6, align 8
  %877 = load double, ptr %5, align 8
  %878 = load double, ptr @A5, align 8
  %879 = call double @llvm.fmuladd.f64(double %876, double %877, double %878)
  %880 = load double, ptr %5, align 8
  %881 = load double, ptr @A4, align 8
  %882 = call double @llvm.fmuladd.f64(double %879, double %880, double %881)
  %883 = load double, ptr %5, align 8
  %884 = load double, ptr @A3, align 8
  %885 = call double @llvm.fmuladd.f64(double %882, double %883, double %884)
  %886 = load double, ptr %5, align 8
  %887 = load double, ptr @A2, align 8
  %888 = call double @llvm.fmuladd.f64(double %885, double %886, double %887)
  %889 = load double, ptr %5, align 8
  %890 = load double, ptr @A1, align 8
  %891 = call double @llvm.fmuladd.f64(double %888, double %889, double %890)
  %892 = load double, ptr %5, align 8
  %893 = load double, ptr @one, align 8
  %894 = call double @llvm.fmuladd.f64(double %891, double %892, double %893)
  %895 = fmul double %875, %894
  store double %895, ptr @sa, align 8
  %896 = load double, ptr %5, align 8
  %897 = load double, ptr %5, align 8
  %898 = load double, ptr %5, align 8
  %899 = load double, ptr %5, align 8
  %900 = load double, ptr %5, align 8
  %901 = load double, ptr @B6, align 8
  %902 = load double, ptr %5, align 8
  %903 = load double, ptr @B5, align 8
  %904 = call double @llvm.fmuladd.f64(double %901, double %902, double %903)
  %905 = load double, ptr @B4, align 8
  %906 = call double @llvm.fmuladd.f64(double %900, double %904, double %905)
  %907 = load double, ptr @B3, align 8
  %908 = call double @llvm.fmuladd.f64(double %899, double %906, double %907)
  %909 = load double, ptr @B2, align 8
  %910 = call double @llvm.fmuladd.f64(double %898, double %908, double %909)
  %911 = load double, ptr @B1, align 8
  %912 = call double @llvm.fmuladd.f64(double %897, double %910, double %911)
  %913 = load double, ptr @one, align 8
  %914 = call double @llvm.fmuladd.f64(double %896, double %912, double %913)
  store double %914, ptr @sb, align 8
  %915 = load double, ptr @sa, align 8
  %916 = load double, ptr @sb, align 8
  %917 = fmul double %915, %916
  %918 = load double, ptr @sb, align 8
  %919 = fmul double %917, %918
  store double %919, ptr @sa, align 8
  %920 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %921 = fdiv double %920, 3.000000e+01
  store double %921, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %922 = load double, ptr %6, align 8
  %923 = load double, ptr @sa, align 8
  %924 = load double, ptr @two, align 8
  %925 = load double, ptr %2, align 8
  %926 = call double @llvm.fmuladd.f64(double %924, double %925, double %923)
  %927 = fmul double %922, %926
  %928 = load double, ptr @two, align 8
  %929 = fdiv double %927, %928
  store double %929, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %930 = load double, ptr @sa, align 8
  %931 = load double, ptr @sb, align 8
  %932 = fsub double %930, %931
  store double %932, ptr @sc, align 8
  %933 = load double, ptr @one, align 8
  %934 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %935 = fdiv double %933, %934
  store double %935, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %936 = load double, ptr @sc, align 8
  %937 = fmul double %936, 1.000000e-30
  %938 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %939 = fmul double %938, 1.000000e-30
  %940 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %941 = fmul double %940, 1.000000e-30
  %942 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, double noundef %937, double noundef %939, double noundef %941)
  %943 = load double, ptr @five, align 8
  %944 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %945 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %946 = fsub double %944, %945
  %947 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %948 = call double @llvm.fmuladd.f64(double %943, double %946, double %947)
  %949 = fdiv double %948, 5.200000e+01
  store double %949, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %950 = load double, ptr @one, align 8
  %951 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %952 = fdiv double %950, %951
  store double %952, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %953 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %954 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %955 = fadd double %953, %954
  %956 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %957 = fadd double %955, %956
  %958 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %959 = fadd double %957, %958
  %960 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %961 = fadd double %959, %960
  store double %961, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %962 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %963 = load double, ptr @four, align 8
  %964 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %965 = call double @llvm.fmuladd.f64(double %963, double %964, double %962)
  %966 = fdiv double %965, 1.520000e+02
  store double %966, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %967 = load double, ptr @one, align 8
  %968 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %969 = fdiv double %967, %968
  store double %969, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %970 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %971 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %972 = fadd double %970, %971
  %973 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %974 = fadd double %972, %973
  %975 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %976 = fadd double %974, %975
  %977 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %978 = fadd double %976, %977
  store double %978, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %979 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %980 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %981 = fadd double %979, %980
  %982 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %983 = fadd double %981, %982
  %984 = fdiv double %983, 1.460000e+02
  store double %984, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %985 = load double, ptr @one, align 8
  %986 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %987 = fdiv double %985, %986
  store double %987, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %988 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %989 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %990 = fadd double %988, %989
  %991 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %992 = fadd double %990, %991
  %993 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %994 = fadd double %992, %993
  %995 = fdiv double %994, 9.100000e+01
  store double %995, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %996 = load double, ptr @one, align 8
  %997 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %998 = fdiv double %996, %997
  store double %998, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %999 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %1000 = load i32, ptr %10, align 4
  %1001 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %1000)
  %1002 = load double, ptr @nulltime, align 8
  %1003 = fmul double %1002, 1.000000e-30
  %1004 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, double noundef %1003)
  %1005 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %1006 = fmul double %1005, 1.000000e-30
  %1007 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, double noundef %1006)
  %1008 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %1009 = fmul double %1008, 1.000000e-30
  %1010 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, double noundef %1009)
  %1011 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %1012 = fmul double %1011, 1.000000e-30
  %1013 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, double noundef %1012)
  %1014 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %1015 = fmul double %1014, 1.000000e-30
  %1016 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, double noundef %1015)
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
