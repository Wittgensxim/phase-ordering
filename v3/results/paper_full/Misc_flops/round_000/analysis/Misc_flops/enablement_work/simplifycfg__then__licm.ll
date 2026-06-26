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
  %.promoted8 = load double, ptr %6, align 8
  %.promoted9 = load double, ptr %2, align 8
  %.promoted12 = load double, ptr %4, align 8
  %.promoted15 = load i32, ptr %9, align 4
  %.promoted = load double, ptr %3, align 8
  br label %24

24:                                               ; preds = %63, %0
  %.lcssa418 = phi double [ %.lcssa4, %63 ], [ %.promoted, %0 ]
  %.lcssa16 = phi i32 [ %.lcssa, %63 ], [ %.promoted15, %0 ]
  %.lcssa213 = phi double [ %.lcssa2, %63 ], [ %.promoted12, %0 ]
  %.lcssa610 = phi double [ %.lcssa6, %63 ], [ %.promoted9, %0 ]
  %25 = phi double [ %34, %63 ], [ %.promoted8, %0 ]
  %26 = phi i32 [ %31, %63 ], [ %.promoted7, %0 ]
  %27 = load double, ptr @sa, align 8
  %28 = load double, ptr @TLimit, align 8
  %29 = fcmp olt double %27, %28
  br i1 %29, label %30, label %67

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
  %48 = phi double [ %54, %52 ], [ %.lcssa418, %30 ]
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

67:                                               ; preds = %63, %24
  %.lcssa419 = phi double [ %.lcssa4, %63 ], [ %.lcssa418, %24 ]
  %.lcssa17 = phi i32 [ %.lcssa, %63 ], [ %.lcssa16, %24 ]
  %.lcssa214 = phi double [ %.lcssa2, %63 ], [ %.lcssa213, %24 ]
  %.lcssa611 = phi double [ %.lcssa6, %63 ], [ %.lcssa610, %24 ]
  %68 = phi double [ %34, %63 ], [ %25, %24 ]
  %69 = phi i32 [ %31, %63 ], [ %26, %24 ]
  store i32 %69, ptr %11, align 4
  store double %68, ptr %6, align 8
  store double %.lcssa611, ptr %2, align 8
  store double %.lcssa214, ptr %4, align 8
  store i32 %.lcssa17, ptr %9, align 4
  store double %.lcssa419, ptr %3, align 8
  store double 1.589500e-02, ptr @scale, align 8
  %70 = load double, ptr @scale, align 8
  store double %70, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %71 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %72 = load i32, ptr %11, align 4
  %73 = sub nsw i32 %72, 1
  %.promoted20 = load i32, ptr %9, align 4
  br label %74

74:                                               ; preds = %77, %67
  %75 = phi i32 [ %78, %77 ], [ %.promoted20, %67 ]
  %76 = icmp sle i32 %75, %73
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = add nsw i32 %75, 1
  br label %74, !llvm.loop !10

79:                                               ; preds = %74
  %.lcssa21 = phi i32 [ %75, %74 ]
  store i32 %.lcssa21, ptr %9, align 4
  %80 = call i32 @dtime(ptr noundef @TimeArray)
  %81 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %82 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %83 = fmul double %81, %82
  store double %83, ptr @nulltime, align 8
  %84 = load double, ptr @nulltime, align 8
  %85 = fcmp olt double %84, 0.000000e+00
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  store double 0.000000e+00, ptr @nulltime, align 8
  br label %87

87:                                               ; preds = %86, %79
  %88 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %89 = load double, ptr @sa, align 8
  %90 = load double, ptr @nulltime, align 8
  %91 = fneg double %90
  %92 = call double @llvm.fmuladd.f64(double %88, double %89, double %91)
  store double %92, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %93 = load double, ptr @D1, align 8
  %94 = load double, ptr @D2, align 8
  %95 = fadd double %93, %94
  %96 = load double, ptr @D3, align 8
  %97 = fadd double %95, %96
  %98 = load double, ptr @one, align 8
  %99 = load double, ptr @D1, align 8
  %100 = fadd double %98, %99
  %101 = load double, ptr @E2, align 8
  %102 = fadd double %100, %101
  %103 = load double, ptr @E3, align 8
  %104 = fadd double %102, %103
  %105 = fdiv double %97, %104
  store double %105, ptr @sa, align 8
  %106 = load double, ptr @D1, align 8
  store double %106, ptr @sb, align 8
  %107 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %108 = fdiv double %107, 1.400000e+01
  store double %108, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %109 = load double, ptr %6, align 8
  %110 = load double, ptr @sa, align 8
  %111 = load double, ptr @sb, align 8
  %112 = fadd double %110, %111
  %113 = load double, ptr @two, align 8
  %114 = load double, ptr %2, align 8
  %115 = call double @llvm.fmuladd.f64(double %113, double %114, double %112)
  %116 = fmul double %109, %115
  %117 = load double, ptr @two, align 8
  %118 = fdiv double %116, %117
  store double %118, ptr @sa, align 8
  %119 = load double, ptr @one, align 8
  %120 = load double, ptr @sa, align 8
  %121 = fdiv double %119, %120
  store double %121, ptr @sb, align 8
  %122 = load double, ptr @sb, align 8
  %123 = fptosi double %122 to i32
  %124 = mul nsw i32 40000, %123
  %125 = sitofp i32 %124 to double
  %126 = load double, ptr @scale, align 8
  %127 = fdiv double %125, %126
  %128 = fptosi double %127 to i32
  store i32 %128, ptr %11, align 4
  %129 = load double, ptr @sb, align 8
  %130 = fsub double %129, 2.520000e+01
  store double %130, ptr @sc, align 8
  %131 = load double, ptr @one, align 8
  %132 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %133 = fdiv double %131, %132
  store double %133, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %134 = load double, ptr @sc, align 8
  %135 = fmul double %134, 1.000000e-30
  %136 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %137 = fmul double %136, 1.000000e-30
  %138 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %139 = fmul double %138, 1.000000e-30
  %140 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %135, double noundef %137, double noundef %139)
  %141 = load i32, ptr %11, align 4
  store i32 %141, ptr %10, align 4
  %142 = load double, ptr @five, align 8
  %143 = fneg double %142
  store double %143, ptr %2, align 8
  %144 = load double, ptr @one, align 8
  %145 = fneg double %144
  store double %145, ptr @sa, align 8
  %146 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %147 = load i32, ptr %10, align 4
  %.promoted22 = load i32, ptr %9, align 4
  %.promoted24 = load double, ptr %2, align 8
  %sa.promoted = load double, ptr @sa, align 8
  br label %148

148:                                              ; preds = %153, %87
  %149 = phi double [ %155, %153 ], [ %sa.promoted, %87 ]
  %150 = phi double [ %154, %153 ], [ %.promoted24, %87 ]
  %151 = phi i32 [ %156, %153 ], [ %.promoted22, %87 ]
  %152 = icmp sle i32 %151, %147
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = fneg double %150
  %155 = fadd double %149, %154
  store double %155, ptr @sa, align 8
  %156 = add nsw i32 %151, 1
  br label %148, !llvm.loop !11

157:                                              ; preds = %148
  %.lcssa25 = phi double [ %150, %148 ]
  %.lcssa23 = phi i32 [ %151, %148 ]
  store i32 %.lcssa23, ptr %9, align 4
  store double %.lcssa25, ptr %2, align 8
  %158 = call i32 @dtime(ptr noundef @TimeArray)
  %159 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %160 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %161 = fmul double %159, %160
  store double %161, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %162 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %163 = fcmp olt double %162, 0.000000e+00
  br i1 %163, label %164, label %165

164:                                              ; preds = %157
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  br label %165

165:                                              ; preds = %164, %157
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

172:                                              ; preds = %181, %165
  %173 = phi double [ %190, %181 ], [ %.promoted37, %165 ]
  %174 = phi double [ %188, %181 ], [ %.promoted35, %165 ]
  %175 = phi double [ %186, %181 ], [ %.promoted33, %165 ]
  %176 = phi double [ %184, %181 ], [ %.promoted31, %165 ]
  %177 = phi double [ %183, %181 ], [ %sa.promoted30, %165 ]
  %178 = phi double [ %182, %181 ], [ %.promoted28, %165 ]
  %179 = phi i32 [ %191, %181 ], [ %.promoted26, %165 ]
  %180 = icmp sle i32 %179, %170
  br i1 %180, label %181, label %192

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
  %191 = add nsw i32 %179, 1
  br label %172, !llvm.loop !12

192:                                              ; preds = %172
  %.lcssa36 = phi double [ %174, %172 ]
  %.lcssa34 = phi double [ %175, %172 ]
  %.lcssa32 = phi double [ %176, %172 ]
  %.lcssa29 = phi double [ %178, %172 ]
  %.lcssa27 = phi i32 [ %179, %172 ]
  store i32 %.lcssa27, ptr %9, align 4
  store double %.lcssa29, ptr %2, align 8
  store double %.lcssa32, ptr %3, align 8
  store double %.lcssa34, ptr %6, align 8
  store double %.lcssa36, ptr %4, align 8
  %193 = call i32 @dtime(ptr noundef @TimeArray)
  %194 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %195 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %196 = fmul double %194, %195
  store double %196, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %197 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %198 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %199 = fsub double %197, %198
  %200 = fdiv double %199, 7.000000e+00
  store double %200, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %201 = load double, ptr @sa, align 8
  %202 = load double, ptr %6, align 8
  %203 = fmul double %201, %202
  %204 = load double, ptr @sc, align 8
  %205 = fdiv double %203, %204
  %206 = fptosi double %205 to i32
  store i32 %206, ptr %10, align 4
  %207 = load double, ptr @four, align 8
  %208 = load double, ptr %5, align 8
  %209 = fmul double %207, %208
  %210 = load double, ptr @five, align 8
  %211 = fdiv double %209, %210
  store double %211, ptr @sa, align 8
  %212 = load double, ptr @sa, align 8
  %213 = load double, ptr @five, align 8
  %214 = load double, ptr %4, align 8
  %215 = fdiv double %213, %214
  %216 = fadd double %212, %215
  store double %216, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %217 = load double, ptr @sb, align 8
  %218 = load double, ptr @sc, align 8
  %219 = load double, ptr %4, align 8
  %220 = load double, ptr %4, align 8
  %221 = fmul double %219, %220
  %222 = load double, ptr %4, align 8
  %223 = fmul double %221, %222
  %224 = fdiv double %218, %223
  %225 = fsub double %217, %224
  store double %225, ptr @piprg, align 8
  %226 = load double, ptr @piprg, align 8
  %227 = load double, ptr @piref, align 8
  %228 = fsub double %226, %227
  store double %228, ptr @pierr, align 8
  %229 = load double, ptr @one, align 8
  %230 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %231 = fdiv double %229, %230
  store double %231, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %232 = load double, ptr @pierr, align 8
  %233 = fmul double %232, 1.000000e-30
  %234 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %235 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %236 = fsub double %234, %235
  %237 = fmul double %236, 1.000000e-30
  %238 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %239 = fmul double %238, 1.000000e-30
  %240 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %233, double noundef %237, double noundef %239)
  %241 = load double, ptr @piref, align 8
  %242 = load double, ptr @three, align 8
  %243 = load i32, ptr %10, align 4
  %244 = sitofp i32 %243 to double
  %245 = fmul double %242, %244
  %246 = fdiv double %241, %245
  store double %246, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %247 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %248 = load i32, ptr %10, align 4
  %249 = sub nsw i32 %248, 1
  %250 = load double, ptr @one, align 8
  %251 = load double, ptr %6, align 8
  %252 = load double, ptr @A6, align 8
  %253 = load double, ptr @A5, align 8
  %254 = fneg double %253
  %255 = load double, ptr @A4, align 8
  %256 = load double, ptr @A3, align 8
  %257 = fneg double %256
  %258 = load double, ptr @A2, align 8
  %259 = load double, ptr @A1, align 8
  %260 = load double, ptr @one, align 8
  %.promoted38 = load i32, ptr %9, align 4
  %.promoted40 = load double, ptr %4, align 8
  %.promoted42 = load double, ptr %3, align 8
  %.promoted45 = load double, ptr %2, align 8
  br label %261

261:                                              ; preds = %267, %192
  %262 = phi double [ %277, %267 ], [ %.promoted45, %192 ]
  %263 = phi double [ %269, %267 ], [ %.promoted42, %192 ]
  %264 = phi double [ %268, %267 ], [ %.promoted40, %192 ]
  %265 = phi i32 [ %278, %267 ], [ %.promoted38, %192 ]
  %266 = icmp sle i32 %265, %249
  br i1 %266, label %267, label %279

267:                                              ; preds = %261
  %268 = fadd double %264, %250
  %269 = fmul double %268, %251
  %270 = fmul double %269, %269
  store double %270, ptr %5, align 8
  %271 = call double @llvm.fmuladd.f64(double %252, double %270, double %254)
  %272 = call double @llvm.fmuladd.f64(double %271, double %270, double %255)
  %273 = call double @llvm.fmuladd.f64(double %272, double %270, double %257)
  %274 = call double @llvm.fmuladd.f64(double %273, double %270, double %258)
  %275 = call double @llvm.fmuladd.f64(double %274, double %270, double %259)
  %276 = call double @llvm.fmuladd.f64(double %275, double %270, double %260)
  %277 = call double @llvm.fmuladd.f64(double %269, double %276, double %262)
  %278 = add nsw i32 %265, 1
  br label %261, !llvm.loop !13

279:                                              ; preds = %261
  %.lcssa46 = phi double [ %262, %261 ]
  %.lcssa43 = phi double [ %263, %261 ]
  %.lcssa41 = phi double [ %264, %261 ]
  %.lcssa39 = phi i32 [ %265, %261 ]
  store i32 %.lcssa39, ptr %9, align 4
  store double %.lcssa41, ptr %4, align 8
  store double %.lcssa43, ptr %3, align 8
  store double %.lcssa46, ptr %2, align 8
  %280 = call i32 @dtime(ptr noundef @TimeArray)
  %281 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %282 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %283 = load double, ptr @nulltime, align 8
  %284 = fneg double %283
  %285 = call double @llvm.fmuladd.f64(double %281, double %282, double %284)
  store double %285, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %286 = load double, ptr @piref, align 8
  %287 = load double, ptr @three, align 8
  %288 = fdiv double %286, %287
  store double %288, ptr %3, align 8
  %289 = load double, ptr %3, align 8
  %290 = load double, ptr %3, align 8
  %291 = fmul double %289, %290
  store double %291, ptr %5, align 8
  %292 = load double, ptr %3, align 8
  %293 = load double, ptr @A6, align 8
  %294 = load double, ptr %5, align 8
  %295 = load double, ptr @A5, align 8
  %296 = fneg double %295
  %297 = call double @llvm.fmuladd.f64(double %293, double %294, double %296)
  %298 = load double, ptr %5, align 8
  %299 = load double, ptr @A4, align 8
  %300 = call double @llvm.fmuladd.f64(double %297, double %298, double %299)
  %301 = load double, ptr %5, align 8
  %302 = load double, ptr @A3, align 8
  %303 = fneg double %302
  %304 = call double @llvm.fmuladd.f64(double %300, double %301, double %303)
  %305 = load double, ptr %5, align 8
  %306 = load double, ptr @A2, align 8
  %307 = call double @llvm.fmuladd.f64(double %304, double %305, double %306)
  %308 = load double, ptr %5, align 8
  %309 = load double, ptr @A1, align 8
  %310 = call double @llvm.fmuladd.f64(double %307, double %308, double %309)
  %311 = load double, ptr %5, align 8
  %312 = load double, ptr @one, align 8
  %313 = call double @llvm.fmuladd.f64(double %310, double %311, double %312)
  %314 = fmul double %292, %313
  store double %314, ptr @sa, align 8
  %315 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %316 = fdiv double %315, 1.700000e+01
  store double %316, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %317 = load double, ptr %6, align 8
  %318 = load double, ptr @sa, align 8
  %319 = load double, ptr @two, align 8
  %320 = load double, ptr %2, align 8
  %321 = call double @llvm.fmuladd.f64(double %319, double %320, double %318)
  %322 = fmul double %317, %321
  %323 = load double, ptr @two, align 8
  %324 = fdiv double %322, %323
  store double %324, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %325 = load double, ptr @sa, align 8
  %326 = load double, ptr @sb, align 8
  %327 = fsub double %325, %326
  store double %327, ptr @sc, align 8
  %328 = load double, ptr @one, align 8
  %329 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %330 = fdiv double %328, %329
  store double %330, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %331 = load double, ptr @sc, align 8
  %332 = fmul double %331, 1.000000e-30
  %333 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %334 = fmul double %333, 1.000000e-30
  %335 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %336 = fmul double %335, 1.000000e-30
  %337 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %332, double noundef %334, double noundef %336)
  %338 = load double, ptr @A3, align 8
  %339 = fneg double %338
  store double %339, ptr @A3, align 8
  %340 = load double, ptr @A5, align 8
  %341 = fneg double %340
  store double %341, ptr @A5, align 8
  %342 = load double, ptr @piref, align 8
  %343 = load double, ptr @three, align 8
  %344 = load i32, ptr %10, align 4
  %345 = sitofp i32 %344 to double
  %346 = fmul double %343, %345
  %347 = fdiv double %342, %346
  store double %347, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %348 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %349 = load i32, ptr %10, align 4
  %350 = sub nsw i32 %349, 1
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
  br label %359

359:                                              ; preds = %364, %279
  %360 = phi double [ %374, %364 ], [ %.promoted52, %279 ]
  %361 = phi double [ %366, %364 ], [ %.promoted49, %279 ]
  %362 = phi i32 [ %375, %364 ], [ %.promoted47, %279 ]
  %363 = icmp sle i32 %362, %350
  br i1 %363, label %364, label %376

364:                                              ; preds = %359
  %365 = sitofp i32 %362 to double
  %366 = fmul double %365, %351
  %367 = fmul double %366, %366
  store double %367, ptr %5, align 8
  %368 = call double @llvm.fmuladd.f64(double %352, double %367, double %353)
  %369 = call double @llvm.fmuladd.f64(double %367, double %368, double %354)
  %370 = call double @llvm.fmuladd.f64(double %367, double %369, double %355)
  %371 = call double @llvm.fmuladd.f64(double %367, double %370, double %356)
  %372 = call double @llvm.fmuladd.f64(double %367, double %371, double %357)
  %373 = call double @llvm.fmuladd.f64(double %367, double %372, double %360)
  %374 = fadd double %373, %358
  %375 = add nsw i32 %362, 1
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
  %468 = sub nsw i32 %467, 1
  %469 = load double, ptr %6, align 8
  %470 = load double, ptr @A6, align 8
  %471 = load double, ptr @A5, align 8
  %472 = load double, ptr @A4, align 8
  %473 = load double, ptr @A3, align 8
  %474 = load double, ptr @A2, align 8
  %475 = load double, ptr @A1, align 8
  %476 = load double, ptr @one, align 8
  %477 = load double, ptr @B6, align 8
  %478 = load double, ptr @B5, align 8
  %479 = load double, ptr @B4, align 8
  %480 = load double, ptr @B3, align 8
  %481 = load double, ptr @B2, align 8
  %482 = load double, ptr @B1, align 8
  %483 = load double, ptr @one, align 8
  %.promoted54 = load i32, ptr %9, align 4
  %.promoted56 = load double, ptr %3, align 8
  %.promoted59 = load double, ptr %4, align 8
  %.promoted61 = load double, ptr %2, align 8
  br label %484

484:                                              ; preds = %490, %376
  %485 = phi double [ %508, %490 ], [ %.promoted61, %376 ]
  %486 = phi double [ %500, %490 ], [ %.promoted59, %376 ]
  %487 = phi double [ %492, %490 ], [ %.promoted56, %376 ]
  %488 = phi i32 [ %509, %490 ], [ %.promoted54, %376 ]
  %489 = icmp sle i32 %488, %468
  br i1 %489, label %490, label %510

490:                                              ; preds = %484
  %491 = sitofp i32 %488 to double
  %492 = fmul double %491, %469
  %493 = fmul double %492, %492
  store double %493, ptr %5, align 8
  %494 = call double @llvm.fmuladd.f64(double %470, double %493, double %471)
  %495 = call double @llvm.fmuladd.f64(double %494, double %493, double %472)
  %496 = call double @llvm.fmuladd.f64(double %495, double %493, double %473)
  %497 = call double @llvm.fmuladd.f64(double %496, double %493, double %474)
  %498 = call double @llvm.fmuladd.f64(double %497, double %493, double %475)
  %499 = call double @llvm.fmuladd.f64(double %498, double %493, double %476)
  %500 = fmul double %492, %499
  %501 = call double @llvm.fmuladd.f64(double %477, double %493, double %478)
  %502 = call double @llvm.fmuladd.f64(double %493, double %501, double %479)
  %503 = call double @llvm.fmuladd.f64(double %493, double %502, double %480)
  %504 = call double @llvm.fmuladd.f64(double %493, double %503, double %481)
  %505 = call double @llvm.fmuladd.f64(double %493, double %504, double %482)
  %506 = call double @llvm.fmuladd.f64(double %493, double %505, double %483)
  %507 = fdiv double %500, %506
  %508 = fadd double %485, %507
  %509 = add nsw i32 %488, 1
  br label %484, !llvm.loop !15

510:                                              ; preds = %484
  %.lcssa62 = phi double [ %485, %484 ]
  %.lcssa60 = phi double [ %486, %484 ]
  %.lcssa57 = phi double [ %487, %484 ]
  %.lcssa55 = phi i32 [ %488, %484 ]
  store i32 %.lcssa55, ptr %9, align 4
  store double %.lcssa57, ptr %3, align 8
  store double %.lcssa60, ptr %4, align 8
  store double %.lcssa62, ptr %2, align 8
  %511 = call i32 @dtime(ptr noundef @TimeArray)
  %512 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %513 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %514 = load double, ptr @nulltime, align 8
  %515 = fneg double %514
  %516 = call double @llvm.fmuladd.f64(double %512, double %513, double %515)
  store double %516, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %517 = load double, ptr @piref, align 8
  %518 = load double, ptr @three, align 8
  %519 = fdiv double %517, %518
  store double %519, ptr %3, align 8
  %520 = load double, ptr %3, align 8
  %521 = load double, ptr %3, align 8
  %522 = fmul double %520, %521
  store double %522, ptr %5, align 8
  %523 = load double, ptr %3, align 8
  %524 = load double, ptr @A6, align 8
  %525 = load double, ptr %5, align 8
  %526 = load double, ptr @A5, align 8
  %527 = call double @llvm.fmuladd.f64(double %524, double %525, double %526)
  %528 = load double, ptr %5, align 8
  %529 = load double, ptr @A4, align 8
  %530 = call double @llvm.fmuladd.f64(double %527, double %528, double %529)
  %531 = load double, ptr %5, align 8
  %532 = load double, ptr @A3, align 8
  %533 = call double @llvm.fmuladd.f64(double %530, double %531, double %532)
  %534 = load double, ptr %5, align 8
  %535 = load double, ptr @A2, align 8
  %536 = call double @llvm.fmuladd.f64(double %533, double %534, double %535)
  %537 = load double, ptr %5, align 8
  %538 = load double, ptr @A1, align 8
  %539 = call double @llvm.fmuladd.f64(double %536, double %537, double %538)
  %540 = load double, ptr %5, align 8
  %541 = load double, ptr @one, align 8
  %542 = call double @llvm.fmuladd.f64(double %539, double %540, double %541)
  %543 = fmul double %523, %542
  store double %543, ptr @sa, align 8
  %544 = load double, ptr %5, align 8
  %545 = load double, ptr %5, align 8
  %546 = load double, ptr %5, align 8
  %547 = load double, ptr %5, align 8
  %548 = load double, ptr %5, align 8
  %549 = load double, ptr @B6, align 8
  %550 = load double, ptr %5, align 8
  %551 = load double, ptr @B5, align 8
  %552 = call double @llvm.fmuladd.f64(double %549, double %550, double %551)
  %553 = load double, ptr @B4, align 8
  %554 = call double @llvm.fmuladd.f64(double %548, double %552, double %553)
  %555 = load double, ptr @B3, align 8
  %556 = call double @llvm.fmuladd.f64(double %547, double %554, double %555)
  %557 = load double, ptr @B2, align 8
  %558 = call double @llvm.fmuladd.f64(double %546, double %556, double %557)
  %559 = load double, ptr @B1, align 8
  %560 = call double @llvm.fmuladd.f64(double %545, double %558, double %559)
  %561 = load double, ptr @one, align 8
  %562 = call double @llvm.fmuladd.f64(double %544, double %560, double %561)
  store double %562, ptr @sb, align 8
  %563 = load double, ptr @sa, align 8
  %564 = load double, ptr @sb, align 8
  %565 = fdiv double %563, %564
  store double %565, ptr @sa, align 8
  %566 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %567 = fdiv double %566, 2.900000e+01
  store double %567, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %568 = load double, ptr %6, align 8
  %569 = load double, ptr @sa, align 8
  %570 = load double, ptr @two, align 8
  %571 = load double, ptr %2, align 8
  %572 = call double @llvm.fmuladd.f64(double %570, double %571, double %569)
  %573 = fmul double %568, %572
  %574 = load double, ptr @two, align 8
  %575 = fdiv double %573, %574
  store double %575, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %576 = load double, ptr @sa, align 8
  %577 = load double, ptr @sb, align 8
  %578 = fsub double %576, %577
  store double %578, ptr @sc, align 8
  %579 = load double, ptr @one, align 8
  %580 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %581 = fdiv double %579, %580
  store double %581, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %582 = load double, ptr @sc, align 8
  %583 = fmul double %582, 1.000000e-30
  %584 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %585 = fmul double %584, 1.000000e-30
  %586 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %587 = fmul double %586, 1.000000e-30
  %588 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %583, double noundef %585, double noundef %587)
  %589 = load double, ptr @piref, align 8
  %590 = load double, ptr @four, align 8
  %591 = load i32, ptr %10, align 4
  %592 = sitofp i32 %591 to double
  %593 = fmul double %590, %592
  %594 = fdiv double %589, %593
  store double %594, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %595 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %596 = load i32, ptr %10, align 4
  %597 = sub nsw i32 %596, 1
  %598 = load double, ptr %6, align 8
  %599 = load double, ptr @A6, align 8
  %600 = load double, ptr @A5, align 8
  %601 = load double, ptr @A4, align 8
  %602 = load double, ptr @A3, align 8
  %603 = load double, ptr @A2, align 8
  %604 = load double, ptr @A1, align 8
  %605 = load double, ptr @one, align 8
  %606 = load double, ptr @B6, align 8
  %607 = load double, ptr @B5, align 8
  %608 = load double, ptr @B4, align 8
  %609 = load double, ptr @B3, align 8
  %610 = load double, ptr @B2, align 8
  %611 = load double, ptr @B1, align 8
  %612 = load double, ptr @one, align 8
  %.promoted63 = load i32, ptr %9, align 4
  %.promoted65 = load double, ptr %3, align 8
  %.promoted68 = load double, ptr %4, align 8
  %.promoted70 = load double, ptr %2, align 8
  %.promoted72 = load double, ptr %5, align 1
  br label %613

613:                                              ; preds = %620, %510
  %614 = phi double [ %623, %620 ], [ %.promoted72, %510 ]
  %615 = phi double [ %637, %620 ], [ %.promoted70, %510 ]
  %616 = phi double [ %630, %620 ], [ %.promoted68, %510 ]
  %617 = phi double [ %622, %620 ], [ %.promoted65, %510 ]
  %618 = phi i32 [ %638, %620 ], [ %.promoted63, %510 ]
  %619 = icmp sle i32 %618, %597
  br i1 %619, label %620, label %639

620:                                              ; preds = %613
  %621 = sitofp i32 %618 to double
  %622 = fmul double %621, %598
  %623 = fmul double %622, %622
  %624 = call double @llvm.fmuladd.f64(double %599, double %623, double %600)
  %625 = call double @llvm.fmuladd.f64(double %624, double %623, double %601)
  %626 = call double @llvm.fmuladd.f64(double %625, double %623, double %602)
  %627 = call double @llvm.fmuladd.f64(double %626, double %623, double %603)
  %628 = call double @llvm.fmuladd.f64(double %627, double %623, double %604)
  %629 = call double @llvm.fmuladd.f64(double %628, double %623, double %605)
  %630 = fmul double %622, %629
  %631 = call double @llvm.fmuladd.f64(double %606, double %623, double %607)
  %632 = call double @llvm.fmuladd.f64(double %623, double %631, double %608)
  %633 = call double @llvm.fmuladd.f64(double %623, double %632, double %609)
  %634 = call double @llvm.fmuladd.f64(double %623, double %633, double %610)
  %635 = call double @llvm.fmuladd.f64(double %623, double %634, double %611)
  %636 = call double @llvm.fmuladd.f64(double %623, double %635, double %612)
  %637 = call double @llvm.fmuladd.f64(double %630, double %636, double %615)
  %638 = add nsw i32 %618, 1
  br label %613, !llvm.loop !16

639:                                              ; preds = %613
  %.lcssa73 = phi double [ %614, %613 ]
  %.lcssa71 = phi double [ %615, %613 ]
  %.lcssa69 = phi double [ %616, %613 ]
  %.lcssa66 = phi double [ %617, %613 ]
  %.lcssa64 = phi i32 [ %618, %613 ]
  store i32 %.lcssa64, ptr %9, align 4
  store double %.lcssa66, ptr %3, align 8
  store double %.lcssa69, ptr %4, align 8
  store double %.lcssa71, ptr %2, align 8
  store double %.lcssa73, ptr %5, align 1
  %640 = call i32 @dtime(ptr noundef @TimeArray)
  %641 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %642 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %643 = load double, ptr @nulltime, align 8
  %644 = fneg double %643
  %645 = call double @llvm.fmuladd.f64(double %641, double %642, double %644)
  store double %645, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %646 = load double, ptr @piref, align 8
  %647 = load double, ptr @four, align 8
  %648 = fdiv double %646, %647
  store double %648, ptr %3, align 8
  %649 = load double, ptr %3, align 8
  %650 = load double, ptr %3, align 8
  %651 = fmul double %649, %650
  store double %651, ptr %5, align 8
  %652 = load double, ptr %3, align 8
  %653 = load double, ptr @A6, align 8
  %654 = load double, ptr %5, align 8
  %655 = load double, ptr @A5, align 8
  %656 = call double @llvm.fmuladd.f64(double %653, double %654, double %655)
  %657 = load double, ptr %5, align 8
  %658 = load double, ptr @A4, align 8
  %659 = call double @llvm.fmuladd.f64(double %656, double %657, double %658)
  %660 = load double, ptr %5, align 8
  %661 = load double, ptr @A3, align 8
  %662 = call double @llvm.fmuladd.f64(double %659, double %660, double %661)
  %663 = load double, ptr %5, align 8
  %664 = load double, ptr @A2, align 8
  %665 = call double @llvm.fmuladd.f64(double %662, double %663, double %664)
  %666 = load double, ptr %5, align 8
  %667 = load double, ptr @A1, align 8
  %668 = call double @llvm.fmuladd.f64(double %665, double %666, double %667)
  %669 = load double, ptr %5, align 8
  %670 = load double, ptr @one, align 8
  %671 = call double @llvm.fmuladd.f64(double %668, double %669, double %670)
  %672 = fmul double %652, %671
  store double %672, ptr @sa, align 8
  %673 = load double, ptr %5, align 8
  %674 = load double, ptr %5, align 8
  %675 = load double, ptr %5, align 8
  %676 = load double, ptr %5, align 8
  %677 = load double, ptr %5, align 8
  %678 = load double, ptr @B6, align 8
  %679 = load double, ptr %5, align 8
  %680 = load double, ptr @B5, align 8
  %681 = call double @llvm.fmuladd.f64(double %678, double %679, double %680)
  %682 = load double, ptr @B4, align 8
  %683 = call double @llvm.fmuladd.f64(double %677, double %681, double %682)
  %684 = load double, ptr @B3, align 8
  %685 = call double @llvm.fmuladd.f64(double %676, double %683, double %684)
  %686 = load double, ptr @B2, align 8
  %687 = call double @llvm.fmuladd.f64(double %675, double %685, double %686)
  %688 = load double, ptr @B1, align 8
  %689 = call double @llvm.fmuladd.f64(double %674, double %687, double %688)
  %690 = load double, ptr @one, align 8
  %691 = call double @llvm.fmuladd.f64(double %673, double %689, double %690)
  store double %691, ptr @sb, align 8
  %692 = load double, ptr @sa, align 8
  %693 = load double, ptr @sb, align 8
  %694 = fmul double %692, %693
  store double %694, ptr @sa, align 8
  %695 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %696 = fdiv double %695, 2.900000e+01
  store double %696, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %697 = load double, ptr %6, align 8
  %698 = load double, ptr @sa, align 8
  %699 = load double, ptr @two, align 8
  %700 = load double, ptr %2, align 8
  %701 = call double @llvm.fmuladd.f64(double %699, double %700, double %698)
  %702 = fmul double %697, %701
  %703 = load double, ptr @two, align 8
  %704 = fdiv double %702, %703
  store double %704, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %705 = load double, ptr @sa, align 8
  %706 = load double, ptr @sb, align 8
  %707 = fsub double %705, %706
  store double %707, ptr @sc, align 8
  %708 = load double, ptr @one, align 8
  %709 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %710 = fdiv double %708, %709
  store double %710, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %711 = load double, ptr @sc, align 8
  %712 = fmul double %711, 1.000000e-30
  %713 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %714 = fmul double %713, 1.000000e-30
  %715 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %716 = fmul double %715, 1.000000e-30
  %717 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, double noundef %712, double noundef %714, double noundef %716)
  store double 0.000000e+00, ptr %2, align 8
  %718 = load double, ptr @one, align 8
  store double %718, ptr %5, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %719 = load double, ptr @sa, align 8
  %720 = load i32, ptr %10, align 4
  %721 = sitofp i32 %720 to double
  %722 = fdiv double %719, %721
  store double %722, ptr %4, align 8
  %723 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %724 = load i32, ptr %10, align 4
  %725 = sub nsw i32 %724, 1
  %726 = load double, ptr %4, align 8
  %727 = load double, ptr %5, align 8
  %728 = load double, ptr %5, align 8
  %729 = load double, ptr %5, align 8
  %730 = load double, ptr %5, align 8
  %.promoted74 = load i32, ptr %9, align 4
  %.promoted76 = load double, ptr %6, align 8
  %.promoted78 = load double, ptr %3, align 8
  %.promoted80 = load double, ptr %2, align 8
  br label %731

731:                                              ; preds = %737, %639
  %732 = phi double [ %749, %737 ], [ %.promoted80, %639 ]
  %733 = phi double [ %740, %737 ], [ %.promoted78, %639 ]
  %734 = phi double [ %739, %737 ], [ %.promoted76, %639 ]
  %735 = phi i32 [ %750, %737 ], [ %.promoted74, %639 ]
  %736 = icmp sle i32 %735, %725
  br i1 %736, label %737, label %751

737:                                              ; preds = %731
  %738 = sitofp i32 %735 to double
  %739 = fmul double %738, %726
  %740 = fmul double %739, %739
  %741 = fadd double %739, %728
  %742 = fdiv double %727, %741
  %743 = fsub double %732, %742
  %744 = fadd double %740, %729
  %745 = fdiv double %739, %744
  %746 = fsub double %743, %745
  %747 = call double @llvm.fmuladd.f64(double %739, double %740, double %730)
  %748 = fdiv double %740, %747
  %749 = fsub double %746, %748
  %750 = add nsw i32 %735, 1
  br label %731, !llvm.loop !17

751:                                              ; preds = %731
  %.lcssa81 = phi double [ %732, %731 ]
  %.lcssa79 = phi double [ %733, %731 ]
  %.lcssa77 = phi double [ %734, %731 ]
  %.lcssa75 = phi i32 [ %735, %731 ]
  store i32 %.lcssa75, ptr %9, align 4
  store double %.lcssa77, ptr %6, align 8
  store double %.lcssa79, ptr %3, align 8
  store double %.lcssa81, ptr %2, align 8
  %752 = call i32 @dtime(ptr noundef @TimeArray)
  %753 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %754 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %755 = load double, ptr @nulltime, align 8
  %756 = fneg double %755
  %757 = call double @llvm.fmuladd.f64(double %753, double %754, double %756)
  store double %757, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %758 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %759 = fdiv double %758, 1.200000e+01
  store double %759, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %760 = load double, ptr @sa, align 8
  store double %760, ptr %6, align 8
  %761 = load double, ptr %6, align 8
  %762 = load double, ptr %6, align 8
  %763 = fmul double %761, %762
  store double %763, ptr %3, align 8
  %764 = load double, ptr %5, align 8
  %765 = fneg double %764
  %766 = load double, ptr %5, align 8
  %767 = load double, ptr %6, align 8
  %768 = load double, ptr %5, align 8
  %769 = fadd double %767, %768
  %770 = fdiv double %766, %769
  %771 = fsub double %765, %770
  %772 = load double, ptr %6, align 8
  %773 = load double, ptr %3, align 8
  %774 = load double, ptr %5, align 8
  %775 = fadd double %773, %774
  %776 = fdiv double %772, %775
  %777 = fsub double %771, %776
  %778 = load double, ptr %3, align 8
  %779 = load double, ptr %6, align 8
  %780 = load double, ptr %3, align 8
  %781 = load double, ptr %5, align 8
  %782 = call double @llvm.fmuladd.f64(double %779, double %780, double %781)
  %783 = fdiv double %778, %782
  %784 = fsub double %777, %783
  store double %784, ptr @sa, align 8
  %785 = load double, ptr %4, align 8
  %786 = fmul double 1.800000e+01, %785
  %787 = load double, ptr @sa, align 8
  %788 = load double, ptr @two, align 8
  %789 = load double, ptr %2, align 8
  %790 = call double @llvm.fmuladd.f64(double %788, double %789, double %787)
  %791 = fmul double %786, %790
  store double %791, ptr @sa, align 8
  %792 = load double, ptr @sa, align 8
  %793 = fptosi double %792 to i32
  %794 = mul nsw i32 -2000, %793
  store i32 %794, ptr %10, align 4
  %795 = load i32, ptr %10, align 4
  %796 = sitofp i32 %795 to double
  %797 = load double, ptr @scale, align 8
  %798 = fdiv double %796, %797
  %799 = fptosi double %798 to i32
  store i32 %799, ptr %10, align 4
  %800 = load double, ptr @sa, align 8
  %801 = fadd double %800, 5.002000e+02
  store double %801, ptr @sc, align 8
  %802 = load double, ptr @one, align 8
  %803 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %804 = fdiv double %802, %803
  store double %804, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %805 = load double, ptr @sc, align 8
  %806 = fmul double %805, 1.000000e-30
  %807 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %808 = fmul double %807, 1.000000e-30
  %809 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %810 = fmul double %809, 1.000000e-30
  %811 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, double noundef %806, double noundef %808, double noundef %810)
  %812 = load double, ptr @piref, align 8
  %813 = load double, ptr @three, align 8
  %814 = load i32, ptr %10, align 4
  %815 = sitofp i32 %814 to double
  %816 = fmul double %813, %815
  %817 = fdiv double %812, %816
  store double %817, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %818 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %819 = load i32, ptr %10, align 4
  %820 = sub nsw i32 %819, 1
  %821 = load double, ptr %6, align 8
  %822 = load double, ptr @B6, align 8
  %823 = load double, ptr @B5, align 8
  %824 = load double, ptr @B4, align 8
  %825 = load double, ptr @B3, align 8
  %826 = load double, ptr @B2, align 8
  %827 = load double, ptr @B1, align 8
  %828 = load double, ptr @one, align 8
  %829 = load double, ptr @A6, align 8
  %830 = load double, ptr @A5, align 8
  %831 = load double, ptr @A4, align 8
  %832 = load double, ptr @A3, align 8
  %833 = load double, ptr @A2, align 8
  %834 = load double, ptr @A1, align 8
  %835 = load double, ptr @one, align 8
  %.promoted82 = load i32, ptr %9, align 4
  %.promoted84 = load double, ptr %3, align 8
  %.promoted86 = load double, ptr %5, align 8
  %.promoted88 = load double, ptr %4, align 8
  %.promoted90 = load double, ptr %2, align 8
  br label %836

836:                                              ; preds = %843, %751
  %837 = phi double [ %861, %843 ], [ %.promoted90, %751 ]
  %838 = phi double [ %852, %843 ], [ %.promoted88, %751 ]
  %839 = phi double [ %846, %843 ], [ %.promoted86, %751 ]
  %840 = phi double [ %845, %843 ], [ %.promoted84, %751 ]
  %841 = phi i32 [ %862, %843 ], [ %.promoted82, %751 ]
  %842 = icmp sle i32 %841, %820
  br i1 %842, label %843, label %863

843:                                              ; preds = %836
  %844 = sitofp i32 %841 to double
  %845 = fmul double %844, %821
  %846 = fmul double %845, %845
  %847 = call double @llvm.fmuladd.f64(double %822, double %846, double %823)
  %848 = call double @llvm.fmuladd.f64(double %846, double %847, double %824)
  %849 = call double @llvm.fmuladd.f64(double %846, double %848, double %825)
  %850 = call double @llvm.fmuladd.f64(double %846, double %849, double %826)
  %851 = call double @llvm.fmuladd.f64(double %846, double %850, double %827)
  %852 = call double @llvm.fmuladd.f64(double %846, double %851, double %828)
  %853 = fmul double %852, %852
  %854 = fmul double %853, %845
  %855 = call double @llvm.fmuladd.f64(double %829, double %846, double %830)
  %856 = call double @llvm.fmuladd.f64(double %855, double %846, double %831)
  %857 = call double @llvm.fmuladd.f64(double %856, double %846, double %832)
  %858 = call double @llvm.fmuladd.f64(double %857, double %846, double %833)
  %859 = call double @llvm.fmuladd.f64(double %858, double %846, double %834)
  %860 = call double @llvm.fmuladd.f64(double %859, double %846, double %835)
  %861 = call double @llvm.fmuladd.f64(double %854, double %860, double %837)
  %862 = add nsw i32 %841, 1
  br label %836, !llvm.loop !18

863:                                              ; preds = %836
  %.lcssa91 = phi double [ %837, %836 ]
  %.lcssa89 = phi double [ %838, %836 ]
  %.lcssa87 = phi double [ %839, %836 ]
  %.lcssa85 = phi double [ %840, %836 ]
  %.lcssa83 = phi i32 [ %841, %836 ]
  store i32 %.lcssa83, ptr %9, align 4
  store double %.lcssa85, ptr %3, align 8
  store double %.lcssa87, ptr %5, align 8
  store double %.lcssa89, ptr %4, align 8
  store double %.lcssa91, ptr %2, align 8
  %864 = call i32 @dtime(ptr noundef @TimeArray)
  %865 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %866 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %867 = load double, ptr @nulltime, align 8
  %868 = fneg double %867
  %869 = call double @llvm.fmuladd.f64(double %865, double %866, double %868)
  store double %869, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %870 = load double, ptr @piref, align 8
  %871 = load double, ptr @three, align 8
  %872 = fdiv double %870, %871
  store double %872, ptr %3, align 8
  %873 = load double, ptr %3, align 8
  %874 = load double, ptr %3, align 8
  %875 = fmul double %873, %874
  store double %875, ptr %5, align 8
  %876 = load double, ptr %3, align 8
  %877 = load double, ptr @A6, align 8
  %878 = load double, ptr %5, align 8
  %879 = load double, ptr @A5, align 8
  %880 = call double @llvm.fmuladd.f64(double %877, double %878, double %879)
  %881 = load double, ptr %5, align 8
  %882 = load double, ptr @A4, align 8
  %883 = call double @llvm.fmuladd.f64(double %880, double %881, double %882)
  %884 = load double, ptr %5, align 8
  %885 = load double, ptr @A3, align 8
  %886 = call double @llvm.fmuladd.f64(double %883, double %884, double %885)
  %887 = load double, ptr %5, align 8
  %888 = load double, ptr @A2, align 8
  %889 = call double @llvm.fmuladd.f64(double %886, double %887, double %888)
  %890 = load double, ptr %5, align 8
  %891 = load double, ptr @A1, align 8
  %892 = call double @llvm.fmuladd.f64(double %889, double %890, double %891)
  %893 = load double, ptr %5, align 8
  %894 = load double, ptr @one, align 8
  %895 = call double @llvm.fmuladd.f64(double %892, double %893, double %894)
  %896 = fmul double %876, %895
  store double %896, ptr @sa, align 8
  %897 = load double, ptr %5, align 8
  %898 = load double, ptr %5, align 8
  %899 = load double, ptr %5, align 8
  %900 = load double, ptr %5, align 8
  %901 = load double, ptr %5, align 8
  %902 = load double, ptr @B6, align 8
  %903 = load double, ptr %5, align 8
  %904 = load double, ptr @B5, align 8
  %905 = call double @llvm.fmuladd.f64(double %902, double %903, double %904)
  %906 = load double, ptr @B4, align 8
  %907 = call double @llvm.fmuladd.f64(double %901, double %905, double %906)
  %908 = load double, ptr @B3, align 8
  %909 = call double @llvm.fmuladd.f64(double %900, double %907, double %908)
  %910 = load double, ptr @B2, align 8
  %911 = call double @llvm.fmuladd.f64(double %899, double %909, double %910)
  %912 = load double, ptr @B1, align 8
  %913 = call double @llvm.fmuladd.f64(double %898, double %911, double %912)
  %914 = load double, ptr @one, align 8
  %915 = call double @llvm.fmuladd.f64(double %897, double %913, double %914)
  store double %915, ptr @sb, align 8
  %916 = load double, ptr @sa, align 8
  %917 = load double, ptr @sb, align 8
  %918 = fmul double %916, %917
  %919 = load double, ptr @sb, align 8
  %920 = fmul double %918, %919
  store double %920, ptr @sa, align 8
  %921 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %922 = fdiv double %921, 3.000000e+01
  store double %922, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %923 = load double, ptr %6, align 8
  %924 = load double, ptr @sa, align 8
  %925 = load double, ptr @two, align 8
  %926 = load double, ptr %2, align 8
  %927 = call double @llvm.fmuladd.f64(double %925, double %926, double %924)
  %928 = fmul double %923, %927
  %929 = load double, ptr @two, align 8
  %930 = fdiv double %928, %929
  store double %930, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %931 = load double, ptr @sa, align 8
  %932 = load double, ptr @sb, align 8
  %933 = fsub double %931, %932
  store double %933, ptr @sc, align 8
  %934 = load double, ptr @one, align 8
  %935 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %936 = fdiv double %934, %935
  store double %936, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %937 = load double, ptr @sc, align 8
  %938 = fmul double %937, 1.000000e-30
  %939 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %940 = fmul double %939, 1.000000e-30
  %941 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %942 = fmul double %941, 1.000000e-30
  %943 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, double noundef %938, double noundef %940, double noundef %942)
  %944 = load double, ptr @five, align 8
  %945 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %946 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %947 = fsub double %945, %946
  %948 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %949 = call double @llvm.fmuladd.f64(double %944, double %947, double %948)
  %950 = fdiv double %949, 5.200000e+01
  store double %950, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %951 = load double, ptr @one, align 8
  %952 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %953 = fdiv double %951, %952
  store double %953, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %954 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %955 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %956 = fadd double %954, %955
  %957 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %958 = fadd double %956, %957
  %959 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %960 = fadd double %958, %959
  %961 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %962 = fadd double %960, %961
  store double %962, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %963 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %964 = load double, ptr @four, align 8
  %965 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %966 = call double @llvm.fmuladd.f64(double %964, double %965, double %963)
  %967 = fdiv double %966, 1.520000e+02
  store double %967, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %968 = load double, ptr @one, align 8
  %969 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %970 = fdiv double %968, %969
  store double %970, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %971 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %972 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %973 = fadd double %971, %972
  %974 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %975 = fadd double %973, %974
  %976 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %977 = fadd double %975, %976
  %978 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %979 = fadd double %977, %978
  store double %979, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %980 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %981 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %982 = fadd double %980, %981
  %983 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %984 = fadd double %982, %983
  %985 = fdiv double %984, 1.460000e+02
  store double %985, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %986 = load double, ptr @one, align 8
  %987 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %988 = fdiv double %986, %987
  store double %988, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %989 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %990 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %991 = fadd double %989, %990
  %992 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %993 = fadd double %991, %992
  %994 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %995 = fadd double %993, %994
  %996 = fdiv double %995, 9.100000e+01
  store double %996, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %997 = load double, ptr @one, align 8
  %998 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %999 = fdiv double %997, %998
  store double %999, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %1000 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %1001 = load i32, ptr %10, align 4
  %1002 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %1001)
  %1003 = load double, ptr @nulltime, align 8
  %1004 = fmul double %1003, 1.000000e-30
  %1005 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, double noundef %1004)
  %1006 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %1007 = fmul double %1006, 1.000000e-30
  %1008 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, double noundef %1007)
  %1009 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %1010 = fmul double %1009, 1.000000e-30
  %1011 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, double noundef %1010)
  %1012 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %1013 = fmul double %1012, 1.000000e-30
  %1014 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, double noundef %1013)
  %1015 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %1016 = fmul double %1015, 1.000000e-30
  %1017 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, double noundef %1016)
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
