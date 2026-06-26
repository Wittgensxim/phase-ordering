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
  store double 6.400000e+01, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  store double 1.000000e+00, ptr @TLimit, align 8
  store i32 512000000, ptr %8, align 4
  store double f0x400921FB54442D18, ptr @piref, align 8
  store double 1.000000e+00, ptr @one, align 8
  store double 2.000000e+00, ptr @two, align 8
  store double 3.000000e+00, ptr @three, align 8
  store double 4.000000e+00, ptr @four, align 8
  store double 5.000000e+00, ptr @five, align 8
  %14 = load double, ptr @one, align 8
  store double %14, ptr @scale, align 8
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %17 = call i32 @dtime(ptr noundef @TimeArray)
  %18 = call i32 @dtime(ptr noundef @TimeArray)
  %19 = load i32, ptr %7, align 4
  store i32 %19, ptr %11, align 4
  store double 0.000000e+00, ptr @sa, align 8
  %20 = load i32, ptr %8, align 4
  %.promoted7 = load i32, ptr %11, align 4
  %.promoted10 = load double, ptr %6, align 8
  %.promoted13 = load double, ptr %2, align 8
  %.promoted15 = load double, ptr %4, align 8
  %.promoted17 = load double, ptr %5, align 8
  %.promoted20 = load i32, ptr %9, align 4
  %.promoted = load double, ptr %3, align 1
  br label %21

21:                                               ; preds = %64, %0
  %.lcssa422 = phi double [ %.lcssa4, %64 ], [ %.promoted, %0 ]
  %.lcssa21 = phi i32 [ %.lcssa, %64 ], [ %.promoted20, %0 ]
  %22 = phi double [ %33, %64 ], [ %.promoted17, %0 ]
  %.lcssa216 = phi double [ %.lcssa2, %64 ], [ %.promoted15, %0 ]
  %.lcssa614 = phi double [ %.lcssa6, %64 ], [ %.promoted13, %0 ]
  %23 = phi double [ %32, %64 ], [ %.promoted10, %0 ]
  %24 = phi i32 [ %29, %64 ], [ %.promoted7, %0 ]
  %25 = load double, ptr @sa, align 8
  %26 = load double, ptr @TLimit, align 8
  %27 = fcmp olt double %25, %26
  br i1 %27, label %28, label %.loopexit

28:                                               ; preds = %21
  %29 = mul nsw i32 2, %24
  %30 = load double, ptr @one, align 8
  %31 = sitofp i32 %29 to double
  %32 = fdiv double %30, %31
  %33 = load double, ptr @one, align 8
  %34 = call i32 @dtime(ptr noundef @TimeArray)
  %35 = sub nsw i32 %29, 1
  %36 = load double, ptr @D1, align 8
  %37 = load double, ptr @D2, align 8
  %38 = load double, ptr @D3, align 8
  %39 = load double, ptr @E2, align 8
  %40 = load double, ptr @E3, align 8
  br label %41

41:                                               ; preds = %57, %28
  %42 = phi double [ %56, %57 ], [ 0.000000e+00, %28 ]
  %43 = phi double [ %49, %57 ], [ %.lcssa422, %28 ]
  %44 = phi double [ %48, %57 ], [ 0.000000e+00, %28 ]
  %45 = phi i32 [ %58, %57 ], [ 1, %28 ]
  %46 = icmp sle i32 %45, %35
  br i1 %46, label %47, label %59

47:                                               ; preds = %41
  %48 = fadd double %44, %33
  %49 = fmul double %48, %32
  %50 = call double @llvm.fmuladd.f64(double %49, double %38, double %37)
  %51 = call double @llvm.fmuladd.f64(double %49, double %50, double %36)
  %52 = call double @llvm.fmuladd.f64(double %49, double %40, double %39)
  %53 = call double @llvm.fmuladd.f64(double %49, double %52, double %36)
  %54 = call double @llvm.fmuladd.f64(double %49, double %53, double %33)
  %55 = fdiv double %51, %54
  %56 = fadd double %42, %55
  br label %57

57:                                               ; preds = %47
  %58 = add nsw i32 %45, 1
  br label %41, !llvm.loop !7

59:                                               ; preds = %41
  %.lcssa6 = phi double [ %42, %41 ]
  %.lcssa4 = phi double [ %43, %41 ]
  %.lcssa2 = phi double [ %44, %41 ]
  %.lcssa = phi i32 [ %45, %41 ]
  %60 = call i32 @dtime(ptr noundef @TimeArray)
  %61 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %61, ptr @sa, align 8
  %62 = icmp eq i32 %29, %20
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  %.lcssa4.lcssa = phi double [ %.lcssa4, %59 ]
  %.lcssa.lcssa = phi i32 [ %.lcssa, %59 ]
  %.lcssa19 = phi double [ %33, %59 ]
  %.lcssa2.lcssa = phi double [ %.lcssa2, %59 ]
  %.lcssa6.lcssa = phi double [ %.lcssa6, %59 ]
  %.lcssa12 = phi double [ %32, %59 ]
  %.lcssa9 = phi i32 [ %29, %59 ]
  store i32 %.lcssa9, ptr %11, align 4
  store double %.lcssa12, ptr %6, align 8
  store double %.lcssa6.lcssa, ptr %2, align 8
  store double %.lcssa2.lcssa, ptr %4, align 8
  store double %.lcssa19, ptr %5, align 8
  store i32 %.lcssa.lcssa, ptr %9, align 4
  store double %.lcssa4.lcssa, ptr %3, align 1
  br label %65

64:                                               ; preds = %59
  br label %21, !llvm.loop !9

.loopexit:                                        ; preds = %21
  %.lcssa422.lcssa = phi double [ %.lcssa422, %21 ]
  %.lcssa21.lcssa = phi i32 [ %.lcssa21, %21 ]
  %.lcssa18 = phi double [ %22, %21 ]
  %.lcssa216.lcssa = phi double [ %.lcssa216, %21 ]
  %.lcssa614.lcssa = phi double [ %.lcssa614, %21 ]
  %.lcssa11 = phi double [ %23, %21 ]
  %.lcssa8 = phi i32 [ %24, %21 ]
  store i32 %.lcssa8, ptr %11, align 4
  store double %.lcssa11, ptr %6, align 8
  store double %.lcssa614.lcssa, ptr %2, align 8
  store double %.lcssa216.lcssa, ptr %4, align 8
  store double %.lcssa18, ptr %5, align 8
  store i32 %.lcssa21.lcssa, ptr %9, align 4
  store double %.lcssa422.lcssa, ptr %3, align 1
  br label %65

65:                                               ; preds = %.loopexit, %63
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %66 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %67 = load i32, ptr %11, align 4
  %68 = sub nsw i32 %67, 1
  %.promoted23 = load i32, ptr %9, align 4
  br label %69

69:                                               ; preds = %73, %65
  %70 = phi i32 [ %74, %73 ], [ %.promoted23, %65 ]
  %71 = icmp sle i32 %70, %68
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  br label %73

73:                                               ; preds = %72
  %74 = add nsw i32 %70, 1
  br label %69, !llvm.loop !10

75:                                               ; preds = %69
  %.lcssa24 = phi i32 [ %70, %69 ]
  store i32 %.lcssa24, ptr %9, align 4
  %76 = call i32 @dtime(ptr noundef @TimeArray)
  %77 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %78 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %79 = fmul double %77, %78
  store double %79, ptr @nulltime, align 8
  %80 = fcmp olt double %79, 0.000000e+00
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  store double 0.000000e+00, ptr @nulltime, align 8
  br label %82

82:                                               ; preds = %81, %75
  %83 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %84 = load double, ptr @sa, align 8
  %85 = load double, ptr @nulltime, align 8
  %86 = fneg double %85
  %87 = call double @llvm.fmuladd.f64(double %83, double %84, double %86)
  store double %87, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %88 = load double, ptr @D1, align 8
  %89 = load double, ptr @D2, align 8
  %90 = fadd double %88, %89
  %91 = load double, ptr @D3, align 8
  %92 = fadd double %90, %91
  %93 = load double, ptr @one, align 8
  %94 = fadd double %93, %88
  %95 = load double, ptr @E2, align 8
  %96 = fadd double %94, %95
  %97 = load double, ptr @E3, align 8
  %98 = fadd double %96, %97
  %99 = fdiv double %92, %98
  store double %99, ptr @sa, align 8
  %100 = load double, ptr @D1, align 8
  store double %100, ptr @sb, align 8
  %101 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %102 = fdiv double %101, 1.400000e+01
  store double %102, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %103 = load double, ptr %6, align 8
  %104 = load double, ptr @sa, align 8
  %105 = load double, ptr @sb, align 8
  %106 = fadd double %104, %105
  %107 = load double, ptr @two, align 8
  %108 = load double, ptr %2, align 8
  %109 = call double @llvm.fmuladd.f64(double %107, double %108, double %106)
  %110 = fmul double %103, %109
  %111 = fdiv double %110, %107
  store double %111, ptr @sa, align 8
  %112 = load double, ptr @one, align 8
  %113 = fdiv double %112, %111
  store double %113, ptr @sb, align 8
  %114 = fptosi double %113 to i32
  %115 = mul nsw i32 40000, %114
  %116 = sitofp i32 %115 to double
  %117 = load double, ptr @scale, align 8
  %118 = fdiv double %116, %117
  %119 = fptosi double %118 to i32
  store i32 %119, ptr %11, align 4
  %120 = load double, ptr @sb, align 8
  %121 = fsub double %120, 2.520000e+01
  store double %121, ptr @sc, align 8
  %122 = load double, ptr @one, align 8
  %123 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %124 = fdiv double %122, %123
  store double %124, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %125 = load double, ptr @sc, align 8
  %126 = fmul double %125, 1.000000e-30
  %127 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %128 = fmul double %127, 1.000000e-30
  %129 = fmul double %124, 1.000000e-30
  %130 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %126, double noundef %128, double noundef %129)
  %131 = load i32, ptr %11, align 4
  store i32 %131, ptr %10, align 4
  %132 = load double, ptr @five, align 8
  %133 = fneg double %132
  store double %133, ptr %2, align 8
  %134 = load double, ptr @one, align 8
  %135 = fneg double %134
  store double %135, ptr @sa, align 8
  %136 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %137 = load i32, ptr %10, align 4
  %.promoted25 = load i32, ptr %9, align 4
  %.promoted27 = load double, ptr %2, align 8
  %sa.promoted = load double, ptr @sa, align 8
  br label %138

138:                                              ; preds = %146, %82
  %139 = phi double [ %145, %146 ], [ %sa.promoted, %82 ]
  %140 = phi double [ %144, %146 ], [ %.promoted27, %82 ]
  %141 = phi i32 [ %147, %146 ], [ %.promoted25, %82 ]
  %142 = icmp sle i32 %141, %137
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = fneg double %140
  %145 = fadd double %139, %144
  store double %145, ptr @sa, align 8
  br label %146

146:                                              ; preds = %143
  %147 = add nsw i32 %141, 1
  br label %138, !llvm.loop !11

148:                                              ; preds = %138
  %.lcssa28 = phi double [ %140, %138 ]
  %.lcssa26 = phi i32 [ %141, %138 ]
  store i32 %.lcssa26, ptr %9, align 4
  store double %.lcssa28, ptr %2, align 8
  %149 = call i32 @dtime(ptr noundef @TimeArray)
  %150 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %151 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %152 = fmul double %150, %151
  store double %152, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %153 = fcmp olt double %152, 0.000000e+00
  br i1 %153, label %154, label %155

154:                                              ; preds = %148
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  br label %155

155:                                              ; preds = %154, %148
  %156 = load i32, ptr %10, align 4
  %157 = sitofp i32 %156 to double
  store double %157, ptr @sc, align 8
  %158 = load double, ptr @sa, align 8
  store double %158, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  store double 0.000000e+00, ptr %6, align 8
  %159 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %160 = load i32, ptr %10, align 4
  %161 = load double, ptr @two, align 8
  %.promoted29 = load i32, ptr %9, align 4
  %.promoted31 = load double, ptr %2, align 8
  %sa.promoted33 = load double, ptr @sa, align 8
  %.promoted34 = load double, ptr %3, align 8
  %.promoted36 = load double, ptr %6, align 8
  %.promoted38 = load double, ptr %4, align 8
  %.promoted40 = load double, ptr %5, align 8
  br label %162

162:                                              ; preds = %181, %155
  %163 = phi double [ %180, %181 ], [ %.promoted40, %155 ]
  %164 = phi double [ %178, %181 ], [ %.promoted38, %155 ]
  %165 = phi double [ %176, %181 ], [ %.promoted36, %155 ]
  %166 = phi double [ %174, %181 ], [ %.promoted34, %155 ]
  %167 = phi double [ %173, %181 ], [ %sa.promoted33, %155 ]
  %168 = phi double [ %172, %181 ], [ %.promoted31, %155 ]
  %169 = phi i32 [ %182, %181 ], [ %.promoted29, %155 ]
  %170 = icmp sle i32 %169, %160
  br i1 %170, label %171, label %183

171:                                              ; preds = %162
  %172 = fneg double %168
  %173 = fadd double %167, %172
  store double %173, ptr @sa, align 8
  %174 = fadd double %166, %161
  %175 = fsub double %172, %174
  %176 = fadd double %165, %175
  %177 = fneg double %172
  %178 = call double @llvm.fmuladd.f64(double %177, double %174, double %164)
  %179 = fdiv double %172, %174
  %180 = fadd double %163, %179
  br label %181

181:                                              ; preds = %171
  %182 = add nsw i32 %169, 1
  br label %162, !llvm.loop !12

183:                                              ; preds = %162
  %.lcssa41 = phi double [ %163, %162 ]
  %.lcssa39 = phi double [ %164, %162 ]
  %.lcssa37 = phi double [ %165, %162 ]
  %.lcssa35 = phi double [ %166, %162 ]
  %.lcssa32 = phi double [ %168, %162 ]
  %.lcssa30 = phi i32 [ %169, %162 ]
  store i32 %.lcssa30, ptr %9, align 4
  store double %.lcssa32, ptr %2, align 8
  store double %.lcssa35, ptr %3, align 8
  store double %.lcssa37, ptr %6, align 8
  store double %.lcssa39, ptr %4, align 8
  store double %.lcssa41, ptr %5, align 8
  %184 = call i32 @dtime(ptr noundef @TimeArray)
  %185 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %186 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %187 = fmul double %185, %186
  store double %187, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %188 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %189 = fsub double %187, %188
  %190 = fdiv double %189, 7.000000e+00
  store double %190, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %191 = load double, ptr @sa, align 8
  %192 = load double, ptr %6, align 8
  %193 = fmul double %191, %192
  %194 = load double, ptr @sc, align 8
  %195 = fdiv double %193, %194
  %196 = fptosi double %195 to i32
  store i32 %196, ptr %10, align 4
  %197 = load double, ptr @four, align 8
  %198 = load double, ptr %5, align 8
  %199 = fmul double %197, %198
  %200 = load double, ptr @five, align 8
  %201 = fdiv double %199, %200
  store double %201, ptr @sa, align 8
  %202 = load double, ptr @five, align 8
  %203 = load double, ptr %4, align 8
  %204 = fdiv double %202, %203
  %205 = fadd double %201, %204
  store double %205, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %206 = load double, ptr @sb, align 8
  %207 = load double, ptr %4, align 8
  %208 = fmul double %207, %207
  %209 = fmul double %208, %207
  %210 = fdiv double 3.125000e+01, %209
  %211 = fsub double %206, %210
  store double %211, ptr @piprg, align 8
  %212 = load double, ptr @piref, align 8
  %213 = fsub double %211, %212
  store double %213, ptr @pierr, align 8
  %214 = load double, ptr @one, align 8
  %215 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %216 = fdiv double %214, %215
  store double %216, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %217 = load double, ptr @pierr, align 8
  %218 = fmul double %217, 1.000000e-30
  %219 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %220 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %221 = fsub double %219, %220
  %222 = fmul double %221, 1.000000e-30
  %223 = fmul double %216, 1.000000e-30
  %224 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %218, double noundef %222, double noundef %223)
  %225 = load double, ptr @piref, align 8
  %226 = load double, ptr @three, align 8
  %227 = load i32, ptr %10, align 4
  %228 = sitofp i32 %227 to double
  %229 = fmul double %226, %228
  %230 = fdiv double %225, %229
  store double %230, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %231 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %232 = load i32, ptr %10, align 4
  %233 = sub nsw i32 %232, 1
  %234 = load double, ptr @one, align 8
  %235 = load double, ptr %6, align 8
  %236 = load double, ptr @A6, align 8
  %237 = load double, ptr @A5, align 8
  %238 = fneg double %237
  %239 = load double, ptr @A4, align 8
  %240 = load double, ptr @A3, align 8
  %241 = fneg double %240
  %242 = load double, ptr @A2, align 8
  %243 = load double, ptr @A1, align 8
  %244 = load double, ptr @one, align 8
  %.promoted42 = load i32, ptr %9, align 4
  %.promoted44 = load double, ptr %4, align 8
  %.promoted46 = load double, ptr %3, align 8
  %.promoted48 = load double, ptr %5, align 1
  %.promoted50 = load double, ptr %2, align 8
  br label %245

245:                                              ; preds = %263, %183
  %246 = phi double [ %262, %263 ], [ %.promoted50, %183 ]
  %247 = phi double [ %255, %263 ], [ %.promoted48, %183 ]
  %248 = phi double [ %254, %263 ], [ %.promoted46, %183 ]
  %249 = phi double [ %253, %263 ], [ %.promoted44, %183 ]
  %250 = phi i32 [ %264, %263 ], [ %.promoted42, %183 ]
  %251 = icmp sle i32 %250, %233
  br i1 %251, label %252, label %265

252:                                              ; preds = %245
  %253 = fadd double %249, %234
  %254 = fmul double %253, %235
  %255 = fmul double %254, %254
  %256 = call double @llvm.fmuladd.f64(double %236, double %255, double %238)
  %257 = call double @llvm.fmuladd.f64(double %256, double %255, double %239)
  %258 = call double @llvm.fmuladd.f64(double %257, double %255, double %241)
  %259 = call double @llvm.fmuladd.f64(double %258, double %255, double %242)
  %260 = call double @llvm.fmuladd.f64(double %259, double %255, double %243)
  %261 = call double @llvm.fmuladd.f64(double %260, double %255, double %244)
  %262 = call double @llvm.fmuladd.f64(double %254, double %261, double %246)
  br label %263

263:                                              ; preds = %252
  %264 = add nsw i32 %250, 1
  br label %245, !llvm.loop !13

265:                                              ; preds = %245
  %.lcssa51 = phi double [ %246, %245 ]
  %.lcssa49 = phi double [ %247, %245 ]
  %.lcssa47 = phi double [ %248, %245 ]
  %.lcssa45 = phi double [ %249, %245 ]
  %.lcssa43 = phi i32 [ %250, %245 ]
  store i32 %.lcssa43, ptr %9, align 4
  store double %.lcssa45, ptr %4, align 8
  store double %.lcssa47, ptr %3, align 8
  store double %.lcssa49, ptr %5, align 1
  store double %.lcssa51, ptr %2, align 8
  %266 = call i32 @dtime(ptr noundef @TimeArray)
  %267 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %268 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %269 = load double, ptr @nulltime, align 8
  %270 = fneg double %269
  %271 = call double @llvm.fmuladd.f64(double %267, double %268, double %270)
  store double %271, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %272 = load double, ptr @piref, align 8
  %273 = load double, ptr @three, align 8
  %274 = fdiv double %272, %273
  store double %274, ptr %3, align 8
  %275 = fmul double %274, %274
  store double %275, ptr %5, align 8
  %276 = load double, ptr %3, align 8
  %277 = load double, ptr @A6, align 8
  %278 = load double, ptr @A5, align 8
  %279 = fneg double %278
  %280 = call double @llvm.fmuladd.f64(double %277, double %275, double %279)
  %281 = load double, ptr @A4, align 8
  %282 = call double @llvm.fmuladd.f64(double %280, double %275, double %281)
  %283 = load double, ptr @A3, align 8
  %284 = fneg double %283
  %285 = call double @llvm.fmuladd.f64(double %282, double %275, double %284)
  %286 = load double, ptr @A2, align 8
  %287 = call double @llvm.fmuladd.f64(double %285, double %275, double %286)
  %288 = load double, ptr @A1, align 8
  %289 = call double @llvm.fmuladd.f64(double %287, double %275, double %288)
  %290 = load double, ptr @one, align 8
  %291 = call double @llvm.fmuladd.f64(double %289, double %275, double %290)
  %292 = fmul double %276, %291
  store double %292, ptr @sa, align 8
  %293 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %294 = fdiv double %293, 1.700000e+01
  store double %294, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %295 = load double, ptr %6, align 8
  %296 = load double, ptr @sa, align 8
  %297 = load double, ptr @two, align 8
  %298 = load double, ptr %2, align 8
  %299 = call double @llvm.fmuladd.f64(double %297, double %298, double %296)
  %300 = fmul double %295, %299
  %301 = fdiv double %300, %297
  store double %301, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %302 = load double, ptr @sa, align 8
  %303 = fsub double %302, 5.000000e-01
  store double %303, ptr @sc, align 8
  %304 = load double, ptr @one, align 8
  %305 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %306 = fdiv double %304, %305
  store double %306, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %307 = load double, ptr @sc, align 8
  %308 = fmul double %307, 1.000000e-30
  %309 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %310 = fmul double %309, 1.000000e-30
  %311 = fmul double %306, 1.000000e-30
  %312 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %308, double noundef %310, double noundef %311)
  %313 = load double, ptr @A3, align 8
  %314 = fneg double %313
  store double %314, ptr @A3, align 8
  %315 = load double, ptr @A5, align 8
  %316 = fneg double %315
  store double %316, ptr @A5, align 8
  %317 = load double, ptr @piref, align 8
  %318 = load double, ptr @three, align 8
  %319 = load i32, ptr %10, align 4
  %320 = sitofp i32 %319 to double
  %321 = fmul double %318, %320
  %322 = fdiv double %317, %321
  store double %322, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %323 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %324 = load i32, ptr %10, align 4
  %325 = sub nsw i32 %324, 1
  %326 = load double, ptr %6, align 8
  %327 = load double, ptr @B6, align 8
  %328 = load double, ptr @B5, align 8
  %329 = load double, ptr @B4, align 8
  %330 = load double, ptr @B3, align 8
  %331 = load double, ptr @B2, align 8
  %332 = load double, ptr @B1, align 8
  %333 = load double, ptr @one, align 8
  %.promoted52 = load i32, ptr %9, align 4
  %.promoted54 = load double, ptr %3, align 1
  %.promoted56 = load double, ptr %5, align 1
  %.promoted58 = load double, ptr %2, align 8
  br label %334

334:                                              ; preds = %351, %265
  %335 = phi double [ %350, %351 ], [ %.promoted58, %265 ]
  %336 = phi double [ %343, %351 ], [ %.promoted56, %265 ]
  %337 = phi double [ %342, %351 ], [ %.promoted54, %265 ]
  %338 = phi i32 [ %352, %351 ], [ %.promoted52, %265 ]
  %339 = icmp sle i32 %338, %325
  br i1 %339, label %340, label %353

340:                                              ; preds = %334
  %341 = sitofp i32 %338 to double
  %342 = fmul double %341, %326
  %343 = fmul double %342, %342
  %344 = call double @llvm.fmuladd.f64(double %327, double %343, double %328)
  %345 = call double @llvm.fmuladd.f64(double %343, double %344, double %329)
  %346 = call double @llvm.fmuladd.f64(double %343, double %345, double %330)
  %347 = call double @llvm.fmuladd.f64(double %343, double %346, double %331)
  %348 = call double @llvm.fmuladd.f64(double %343, double %347, double %332)
  %349 = call double @llvm.fmuladd.f64(double %343, double %348, double %335)
  %350 = fadd double %349, %333
  br label %351

351:                                              ; preds = %340
  %352 = add nsw i32 %338, 1
  br label %334, !llvm.loop !14

353:                                              ; preds = %334
  %.lcssa59 = phi double [ %335, %334 ]
  %.lcssa57 = phi double [ %336, %334 ]
  %.lcssa55 = phi double [ %337, %334 ]
  %.lcssa53 = phi i32 [ %338, %334 ]
  store i32 %.lcssa53, ptr %9, align 4
  store double %.lcssa55, ptr %3, align 1
  store double %.lcssa57, ptr %5, align 1
  store double %.lcssa59, ptr %2, align 8
  %354 = call i32 @dtime(ptr noundef @TimeArray)
  %355 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %356 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %357 = load double, ptr @nulltime, align 8
  %358 = fneg double %357
  %359 = call double @llvm.fmuladd.f64(double %355, double %356, double %358)
  store double %359, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %360 = load double, ptr @piref, align 8
  %361 = load double, ptr @three, align 8
  %362 = fdiv double %360, %361
  store double %362, ptr %3, align 8
  %363 = fmul double %362, %362
  store double %363, ptr %5, align 8
  %364 = load double, ptr @B6, align 8
  %365 = load double, ptr @B5, align 8
  %366 = call double @llvm.fmuladd.f64(double %364, double %363, double %365)
  %367 = load double, ptr @B4, align 8
  %368 = call double @llvm.fmuladd.f64(double %363, double %366, double %367)
  %369 = load double, ptr @B3, align 8
  %370 = call double @llvm.fmuladd.f64(double %363, double %368, double %369)
  %371 = load double, ptr @B2, align 8
  %372 = call double @llvm.fmuladd.f64(double %363, double %370, double %371)
  %373 = load double, ptr @B1, align 8
  %374 = call double @llvm.fmuladd.f64(double %363, double %372, double %373)
  %375 = load double, ptr @one, align 8
  %376 = call double @llvm.fmuladd.f64(double %363, double %374, double %375)
  store double %376, ptr @sa, align 8
  %377 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %378 = fdiv double %377, 1.500000e+01
  store double %378, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %379 = load double, ptr %6, align 8
  %380 = load double, ptr @sa, align 8
  %381 = load double, ptr @one, align 8
  %382 = fadd double %380, %381
  %383 = load double, ptr @two, align 8
  %384 = load double, ptr %2, align 8
  %385 = call double @llvm.fmuladd.f64(double %383, double %384, double %382)
  %386 = fmul double %379, %385
  %387 = fdiv double %386, %383
  store double %387, ptr @sa, align 8
  %388 = load double, ptr @piref, align 8
  %389 = load double, ptr @three, align 8
  %390 = fdiv double %388, %389
  store double %390, ptr %3, align 8
  %391 = fmul double %390, %390
  store double %391, ptr %5, align 8
  %392 = load double, ptr %3, align 8
  %393 = load double, ptr @A6, align 8
  %394 = load double, ptr @A5, align 8
  %395 = call double @llvm.fmuladd.f64(double %393, double %391, double %394)
  %396 = load double, ptr @A4, align 8
  %397 = call double @llvm.fmuladd.f64(double %395, double %391, double %396)
  %398 = load double, ptr @A3, align 8
  %399 = call double @llvm.fmuladd.f64(double %397, double %391, double %398)
  %400 = load double, ptr @A2, align 8
  %401 = call double @llvm.fmuladd.f64(double %399, double %391, double %400)
  %402 = load double, ptr @A1, align 8
  %403 = call double @llvm.fmuladd.f64(double %401, double %391, double %402)
  %404 = load double, ptr @A0, align 8
  %405 = call double @llvm.fmuladd.f64(double %403, double %391, double %404)
  %406 = fmul double %392, %405
  store double %406, ptr @sb, align 8
  %407 = load double, ptr @sa, align 8
  %408 = fsub double %407, %406
  store double %408, ptr @sc, align 8
  %409 = load double, ptr @one, align 8
  %410 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %411 = fdiv double %409, %410
  store double %411, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %412 = load double, ptr @sc, align 8
  %413 = fmul double %412, 1.000000e-30
  %414 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %415 = fmul double %414, 1.000000e-30
  %416 = fmul double %411, 1.000000e-30
  %417 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %413, double noundef %415, double noundef %416)
  %418 = load double, ptr @piref, align 8
  %419 = load double, ptr @three, align 8
  %420 = load i32, ptr %10, align 4
  %421 = sitofp i32 %420 to double
  %422 = fmul double %419, %421
  %423 = fdiv double %418, %422
  store double %423, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %424 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %425 = load i32, ptr %10, align 4
  %426 = sub nsw i32 %425, 1
  %427 = load double, ptr %6, align 8
  %428 = load double, ptr @A6, align 8
  %429 = load double, ptr @A5, align 8
  %430 = load double, ptr @A4, align 8
  %431 = load double, ptr @A3, align 8
  %432 = load double, ptr @A2, align 8
  %433 = load double, ptr @A1, align 8
  %434 = load double, ptr @one, align 8
  %435 = load double, ptr @B6, align 8
  %436 = load double, ptr @B5, align 8
  %437 = load double, ptr @B4, align 8
  %438 = load double, ptr @B3, align 8
  %439 = load double, ptr @B2, align 8
  %440 = load double, ptr @B1, align 8
  %441 = load double, ptr @one, align 8
  %.promoted60 = load i32, ptr %9, align 4
  %.promoted62 = load double, ptr %3, align 8
  %.promoted64 = load double, ptr %5, align 8
  %.promoted66 = load double, ptr %4, align 1
  %.promoted68 = load double, ptr %2, align 8
  br label %442

442:                                              ; preds = %468, %353
  %443 = phi double [ %467, %468 ], [ %.promoted68, %353 ]
  %444 = phi double [ %459, %468 ], [ %.promoted66, %353 ]
  %445 = phi double [ %452, %468 ], [ %.promoted64, %353 ]
  %446 = phi double [ %451, %468 ], [ %.promoted62, %353 ]
  %447 = phi i32 [ %469, %468 ], [ %.promoted60, %353 ]
  %448 = icmp sle i32 %447, %426
  br i1 %448, label %449, label %470

449:                                              ; preds = %442
  %450 = sitofp i32 %447 to double
  %451 = fmul double %450, %427
  %452 = fmul double %451, %451
  %453 = call double @llvm.fmuladd.f64(double %428, double %452, double %429)
  %454 = call double @llvm.fmuladd.f64(double %453, double %452, double %430)
  %455 = call double @llvm.fmuladd.f64(double %454, double %452, double %431)
  %456 = call double @llvm.fmuladd.f64(double %455, double %452, double %432)
  %457 = call double @llvm.fmuladd.f64(double %456, double %452, double %433)
  %458 = call double @llvm.fmuladd.f64(double %457, double %452, double %434)
  %459 = fmul double %451, %458
  %460 = call double @llvm.fmuladd.f64(double %435, double %452, double %436)
  %461 = call double @llvm.fmuladd.f64(double %452, double %460, double %437)
  %462 = call double @llvm.fmuladd.f64(double %452, double %461, double %438)
  %463 = call double @llvm.fmuladd.f64(double %452, double %462, double %439)
  %464 = call double @llvm.fmuladd.f64(double %452, double %463, double %440)
  %465 = call double @llvm.fmuladd.f64(double %452, double %464, double %441)
  %466 = fdiv double %459, %465
  %467 = fadd double %443, %466
  br label %468

468:                                              ; preds = %449
  %469 = add nsw i32 %447, 1
  br label %442, !llvm.loop !15

470:                                              ; preds = %442
  %.lcssa69 = phi double [ %443, %442 ]
  %.lcssa67 = phi double [ %444, %442 ]
  %.lcssa65 = phi double [ %445, %442 ]
  %.lcssa63 = phi double [ %446, %442 ]
  %.lcssa61 = phi i32 [ %447, %442 ]
  store i32 %.lcssa61, ptr %9, align 4
  store double %.lcssa63, ptr %3, align 8
  store double %.lcssa65, ptr %5, align 8
  store double %.lcssa67, ptr %4, align 1
  store double %.lcssa69, ptr %2, align 8
  %471 = call i32 @dtime(ptr noundef @TimeArray)
  %472 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %473 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %474 = load double, ptr @nulltime, align 8
  %475 = fneg double %474
  %476 = call double @llvm.fmuladd.f64(double %472, double %473, double %475)
  store double %476, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %477 = load double, ptr @piref, align 8
  %478 = load double, ptr @three, align 8
  %479 = fdiv double %477, %478
  store double %479, ptr %3, align 8
  %480 = fmul double %479, %479
  store double %480, ptr %5, align 8
  %481 = load double, ptr %3, align 8
  %482 = load double, ptr @A6, align 8
  %483 = load double, ptr @A5, align 8
  %484 = call double @llvm.fmuladd.f64(double %482, double %480, double %483)
  %485 = load double, ptr @A4, align 8
  %486 = call double @llvm.fmuladd.f64(double %484, double %480, double %485)
  %487 = load double, ptr @A3, align 8
  %488 = call double @llvm.fmuladd.f64(double %486, double %480, double %487)
  %489 = load double, ptr @A2, align 8
  %490 = call double @llvm.fmuladd.f64(double %488, double %480, double %489)
  %491 = load double, ptr @A1, align 8
  %492 = call double @llvm.fmuladd.f64(double %490, double %480, double %491)
  %493 = load double, ptr @one, align 8
  %494 = call double @llvm.fmuladd.f64(double %492, double %480, double %493)
  %495 = fmul double %481, %494
  store double %495, ptr @sa, align 8
  %496 = load double, ptr %5, align 8
  %497 = load double, ptr @B6, align 8
  %498 = load double, ptr @B5, align 8
  %499 = call double @llvm.fmuladd.f64(double %497, double %496, double %498)
  %500 = load double, ptr @B4, align 8
  %501 = call double @llvm.fmuladd.f64(double %496, double %499, double %500)
  %502 = load double, ptr @B3, align 8
  %503 = call double @llvm.fmuladd.f64(double %496, double %501, double %502)
  %504 = load double, ptr @B2, align 8
  %505 = call double @llvm.fmuladd.f64(double %496, double %503, double %504)
  %506 = load double, ptr @B1, align 8
  %507 = call double @llvm.fmuladd.f64(double %496, double %505, double %506)
  %508 = load double, ptr @one, align 8
  %509 = call double @llvm.fmuladd.f64(double %496, double %507, double %508)
  store double %509, ptr @sb, align 8
  %510 = load double, ptr @sa, align 8
  %511 = fdiv double %510, %509
  store double %511, ptr @sa, align 8
  %512 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %513 = fdiv double %512, 2.900000e+01
  store double %513, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %514 = load double, ptr %6, align 8
  %515 = load double, ptr @sa, align 8
  %516 = load double, ptr @two, align 8
  %517 = load double, ptr %2, align 8
  %518 = call double @llvm.fmuladd.f64(double %516, double %517, double %515)
  %519 = fmul double %514, %518
  %520 = fdiv double %519, %516
  store double %520, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %521 = load double, ptr @sa, align 8
  %522 = fsub double %521, f0x3FE62E42FEFA39EF
  store double %522, ptr @sc, align 8
  %523 = load double, ptr @one, align 8
  %524 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %525 = fdiv double %523, %524
  store double %525, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %526 = load double, ptr @sc, align 8
  %527 = fmul double %526, 1.000000e-30
  %528 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %529 = fmul double %528, 1.000000e-30
  %530 = fmul double %525, 1.000000e-30
  %531 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %527, double noundef %529, double noundef %530)
  %532 = load double, ptr @piref, align 8
  %533 = load double, ptr @four, align 8
  %534 = load i32, ptr %10, align 4
  %535 = sitofp i32 %534 to double
  %536 = fmul double %533, %535
  %537 = fdiv double %532, %536
  store double %537, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %538 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %539 = load i32, ptr %10, align 4
  %540 = sub nsw i32 %539, 1
  %541 = load double, ptr %6, align 8
  %542 = load double, ptr @A6, align 8
  %543 = load double, ptr @A5, align 8
  %544 = load double, ptr @A4, align 8
  %545 = load double, ptr @A3, align 8
  %546 = load double, ptr @A2, align 8
  %547 = load double, ptr @A1, align 8
  %548 = load double, ptr @one, align 8
  %549 = load double, ptr @B6, align 8
  %550 = load double, ptr @B5, align 8
  %551 = load double, ptr @B4, align 8
  %552 = load double, ptr @B3, align 8
  %553 = load double, ptr @B2, align 8
  %554 = load double, ptr @B1, align 8
  %555 = load double, ptr @one, align 8
  %.promoted70 = load i32, ptr %9, align 4
  %.promoted72 = load double, ptr %3, align 8
  %.promoted74 = load double, ptr %5, align 8
  %.promoted76 = load double, ptr %4, align 1
  %.promoted78 = load double, ptr %2, align 8
  br label %556

556:                                              ; preds = %581, %470
  %557 = phi double [ %580, %581 ], [ %.promoted78, %470 ]
  %558 = phi double [ %573, %581 ], [ %.promoted76, %470 ]
  %559 = phi double [ %566, %581 ], [ %.promoted74, %470 ]
  %560 = phi double [ %565, %581 ], [ %.promoted72, %470 ]
  %561 = phi i32 [ %582, %581 ], [ %.promoted70, %470 ]
  %562 = icmp sle i32 %561, %540
  br i1 %562, label %563, label %583

563:                                              ; preds = %556
  %564 = sitofp i32 %561 to double
  %565 = fmul double %564, %541
  %566 = fmul double %565, %565
  %567 = call double @llvm.fmuladd.f64(double %542, double %566, double %543)
  %568 = call double @llvm.fmuladd.f64(double %567, double %566, double %544)
  %569 = call double @llvm.fmuladd.f64(double %568, double %566, double %545)
  %570 = call double @llvm.fmuladd.f64(double %569, double %566, double %546)
  %571 = call double @llvm.fmuladd.f64(double %570, double %566, double %547)
  %572 = call double @llvm.fmuladd.f64(double %571, double %566, double %548)
  %573 = fmul double %565, %572
  %574 = call double @llvm.fmuladd.f64(double %549, double %566, double %550)
  %575 = call double @llvm.fmuladd.f64(double %566, double %574, double %551)
  %576 = call double @llvm.fmuladd.f64(double %566, double %575, double %552)
  %577 = call double @llvm.fmuladd.f64(double %566, double %576, double %553)
  %578 = call double @llvm.fmuladd.f64(double %566, double %577, double %554)
  %579 = call double @llvm.fmuladd.f64(double %566, double %578, double %555)
  %580 = call double @llvm.fmuladd.f64(double %573, double %579, double %557)
  br label %581

581:                                              ; preds = %563
  %582 = add nsw i32 %561, 1
  br label %556, !llvm.loop !16

583:                                              ; preds = %556
  %.lcssa79 = phi double [ %557, %556 ]
  %.lcssa77 = phi double [ %558, %556 ]
  %.lcssa75 = phi double [ %559, %556 ]
  %.lcssa73 = phi double [ %560, %556 ]
  %.lcssa71 = phi i32 [ %561, %556 ]
  store i32 %.lcssa71, ptr %9, align 4
  store double %.lcssa73, ptr %3, align 8
  store double %.lcssa75, ptr %5, align 8
  store double %.lcssa77, ptr %4, align 1
  store double %.lcssa79, ptr %2, align 8
  %584 = call i32 @dtime(ptr noundef @TimeArray)
  %585 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %586 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %587 = load double, ptr @nulltime, align 8
  %588 = fneg double %587
  %589 = call double @llvm.fmuladd.f64(double %585, double %586, double %588)
  store double %589, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %590 = load double, ptr @piref, align 8
  %591 = load double, ptr @four, align 8
  %592 = fdiv double %590, %591
  store double %592, ptr %3, align 8
  %593 = fmul double %592, %592
  store double %593, ptr %5, align 8
  %594 = load double, ptr %3, align 8
  %595 = load double, ptr @A6, align 8
  %596 = load double, ptr @A5, align 8
  %597 = call double @llvm.fmuladd.f64(double %595, double %593, double %596)
  %598 = load double, ptr @A4, align 8
  %599 = call double @llvm.fmuladd.f64(double %597, double %593, double %598)
  %600 = load double, ptr @A3, align 8
  %601 = call double @llvm.fmuladd.f64(double %599, double %593, double %600)
  %602 = load double, ptr @A2, align 8
  %603 = call double @llvm.fmuladd.f64(double %601, double %593, double %602)
  %604 = load double, ptr @A1, align 8
  %605 = call double @llvm.fmuladd.f64(double %603, double %593, double %604)
  %606 = load double, ptr @one, align 8
  %607 = call double @llvm.fmuladd.f64(double %605, double %593, double %606)
  %608 = fmul double %594, %607
  store double %608, ptr @sa, align 8
  %609 = load double, ptr %5, align 8
  %610 = load double, ptr @B6, align 8
  %611 = load double, ptr @B5, align 8
  %612 = call double @llvm.fmuladd.f64(double %610, double %609, double %611)
  %613 = load double, ptr @B4, align 8
  %614 = call double @llvm.fmuladd.f64(double %609, double %612, double %613)
  %615 = load double, ptr @B3, align 8
  %616 = call double @llvm.fmuladd.f64(double %609, double %614, double %615)
  %617 = load double, ptr @B2, align 8
  %618 = call double @llvm.fmuladd.f64(double %609, double %616, double %617)
  %619 = load double, ptr @B1, align 8
  %620 = call double @llvm.fmuladd.f64(double %609, double %618, double %619)
  %621 = load double, ptr @one, align 8
  %622 = call double @llvm.fmuladd.f64(double %609, double %620, double %621)
  store double %622, ptr @sb, align 8
  %623 = load double, ptr @sa, align 8
  %624 = fmul double %623, %622
  store double %624, ptr @sa, align 8
  %625 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %626 = fdiv double %625, 2.900000e+01
  store double %626, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %627 = load double, ptr %6, align 8
  %628 = load double, ptr @sa, align 8
  %629 = load double, ptr @two, align 8
  %630 = load double, ptr %2, align 8
  %631 = call double @llvm.fmuladd.f64(double %629, double %630, double %628)
  %632 = fmul double %627, %631
  %633 = fdiv double %632, %629
  store double %633, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %634 = load double, ptr @sa, align 8
  %635 = fsub double %634, 2.500000e-01
  store double %635, ptr @sc, align 8
  %636 = load double, ptr @one, align 8
  %637 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %638 = fdiv double %636, %637
  store double %638, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %639 = load double, ptr @sc, align 8
  %640 = fmul double %639, 1.000000e-30
  %641 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %642 = fmul double %641, 1.000000e-30
  %643 = fmul double %638, 1.000000e-30
  %644 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, double noundef %640, double noundef %642, double noundef %643)
  store double 0.000000e+00, ptr %2, align 8
  %645 = load double, ptr @one, align 8
  store double %645, ptr %5, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %646 = load i32, ptr %10, align 4
  %647 = sitofp i32 %646 to double
  %648 = fdiv double f0x40599541F7F192A4, %647
  store double %648, ptr %4, align 8
  %649 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %650 = load i32, ptr %10, align 4
  %651 = sub nsw i32 %650, 1
  %652 = load double, ptr %4, align 8
  %653 = load double, ptr %5, align 8
  %.promoted80 = load i32, ptr %9, align 4
  %.promoted82 = load double, ptr %6, align 8
  %.promoted84 = load double, ptr %3, align 1
  %.promoted86 = load double, ptr %2, align 8
  br label %654

654:                                              ; preds = %673, %583
  %655 = phi double [ %672, %673 ], [ %.promoted86, %583 ]
  %656 = phi double [ %663, %673 ], [ %.promoted84, %583 ]
  %657 = phi double [ %662, %673 ], [ %.promoted82, %583 ]
  %658 = phi i32 [ %674, %673 ], [ %.promoted80, %583 ]
  %659 = icmp sle i32 %658, %651
  br i1 %659, label %660, label %675

660:                                              ; preds = %654
  %661 = sitofp i32 %658 to double
  %662 = fmul double %661, %652
  %663 = fmul double %662, %662
  %664 = fadd double %662, %653
  %665 = fdiv double %653, %664
  %666 = fsub double %655, %665
  %667 = fadd double %663, %653
  %668 = fdiv double %662, %667
  %669 = fsub double %666, %668
  %670 = call double @llvm.fmuladd.f64(double %662, double %663, double %653)
  %671 = fdiv double %663, %670
  %672 = fsub double %669, %671
  br label %673

673:                                              ; preds = %660
  %674 = add nsw i32 %658, 1
  br label %654, !llvm.loop !17

675:                                              ; preds = %654
  %.lcssa87 = phi double [ %655, %654 ]
  %.lcssa85 = phi double [ %656, %654 ]
  %.lcssa83 = phi double [ %657, %654 ]
  %.lcssa81 = phi i32 [ %658, %654 ]
  store i32 %.lcssa81, ptr %9, align 4
  store double %.lcssa83, ptr %6, align 8
  store double %.lcssa85, ptr %3, align 1
  store double %.lcssa87, ptr %2, align 8
  %676 = call i32 @dtime(ptr noundef @TimeArray)
  %677 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %678 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %679 = load double, ptr @nulltime, align 8
  %680 = fneg double %679
  %681 = call double @llvm.fmuladd.f64(double %677, double %678, double %680)
  store double %681, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %682 = fdiv double %681, 1.200000e+01
  store double %682, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %683 = load double, ptr @sa, align 8
  store double %683, ptr %6, align 8
  %684 = fmul double %683, %683
  store double %684, ptr %3, align 8
  %685 = load double, ptr %5, align 8
  %686 = fneg double %685
  %687 = load double, ptr %6, align 8
  %688 = fadd double %687, %685
  %689 = fdiv double %685, %688
  %690 = fsub double %686, %689
  %691 = fadd double %684, %685
  %692 = fdiv double %687, %691
  %693 = fsub double %690, %692
  %694 = call double @llvm.fmuladd.f64(double %687, double %684, double %685)
  %695 = fdiv double %684, %694
  %696 = fsub double %693, %695
  store double %696, ptr @sa, align 8
  %697 = load double, ptr %4, align 8
  %698 = fmul double 1.800000e+01, %697
  %699 = load double, ptr @two, align 8
  %700 = load double, ptr %2, align 8
  %701 = call double @llvm.fmuladd.f64(double %699, double %700, double %696)
  %702 = fmul double %698, %701
  store double %702, ptr @sa, align 8
  %703 = fptosi double %702 to i32
  %704 = mul nsw i32 -2000, %703
  store i32 %704, ptr %10, align 4
  %705 = sitofp i32 %704 to double
  %706 = load double, ptr @scale, align 8
  %707 = fdiv double %705, %706
  %708 = fptosi double %707 to i32
  store i32 %708, ptr %10, align 4
  %709 = load double, ptr @sa, align 8
  %710 = fadd double %709, 5.002000e+02
  store double %710, ptr @sc, align 8
  %711 = load double, ptr @one, align 8
  %712 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %713 = fdiv double %711, %712
  store double %713, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %714 = load double, ptr @sc, align 8
  %715 = fmul double %714, 1.000000e-30
  %716 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %717 = fmul double %716, 1.000000e-30
  %718 = fmul double %713, 1.000000e-30
  %719 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, double noundef %715, double noundef %717, double noundef %718)
  %720 = load double, ptr @piref, align 8
  %721 = load double, ptr @three, align 8
  %722 = load i32, ptr %10, align 4
  %723 = sitofp i32 %722 to double
  %724 = fmul double %721, %723
  %725 = fdiv double %720, %724
  store double %725, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %726 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %727 = load i32, ptr %10, align 4
  %728 = sub nsw i32 %727, 1
  %729 = load double, ptr %6, align 8
  %730 = load double, ptr @B6, align 8
  %731 = load double, ptr @B5, align 8
  %732 = load double, ptr @B4, align 8
  %733 = load double, ptr @B3, align 8
  %734 = load double, ptr @B2, align 8
  %735 = load double, ptr @B1, align 8
  %736 = load double, ptr @one, align 8
  %737 = load double, ptr @A6, align 8
  %738 = load double, ptr @A5, align 8
  %739 = load double, ptr @A4, align 8
  %740 = load double, ptr @A3, align 8
  %741 = load double, ptr @A2, align 8
  %742 = load double, ptr @A1, align 8
  %743 = load double, ptr @one, align 8
  %.promoted88 = load i32, ptr %9, align 4
  %.promoted90 = load double, ptr %3, align 8
  %.promoted92 = load double, ptr %5, align 8
  %.promoted94 = load double, ptr %4, align 1
  %.promoted96 = load double, ptr %2, align 8
  br label %744

744:                                              ; preds = %770, %675
  %745 = phi double [ %769, %770 ], [ %.promoted96, %675 ]
  %746 = phi double [ %760, %770 ], [ %.promoted94, %675 ]
  %747 = phi double [ %754, %770 ], [ %.promoted92, %675 ]
  %748 = phi double [ %753, %770 ], [ %.promoted90, %675 ]
  %749 = phi i32 [ %771, %770 ], [ %.promoted88, %675 ]
  %750 = icmp sle i32 %749, %728
  br i1 %750, label %751, label %772

751:                                              ; preds = %744
  %752 = sitofp i32 %749 to double
  %753 = fmul double %752, %729
  %754 = fmul double %753, %753
  %755 = call double @llvm.fmuladd.f64(double %730, double %754, double %731)
  %756 = call double @llvm.fmuladd.f64(double %754, double %755, double %732)
  %757 = call double @llvm.fmuladd.f64(double %754, double %756, double %733)
  %758 = call double @llvm.fmuladd.f64(double %754, double %757, double %734)
  %759 = call double @llvm.fmuladd.f64(double %754, double %758, double %735)
  %760 = call double @llvm.fmuladd.f64(double %754, double %759, double %736)
  %761 = fmul double %760, %760
  %762 = fmul double %761, %753
  %763 = call double @llvm.fmuladd.f64(double %737, double %754, double %738)
  %764 = call double @llvm.fmuladd.f64(double %763, double %754, double %739)
  %765 = call double @llvm.fmuladd.f64(double %764, double %754, double %740)
  %766 = call double @llvm.fmuladd.f64(double %765, double %754, double %741)
  %767 = call double @llvm.fmuladd.f64(double %766, double %754, double %742)
  %768 = call double @llvm.fmuladd.f64(double %767, double %754, double %743)
  %769 = call double @llvm.fmuladd.f64(double %762, double %768, double %745)
  br label %770

770:                                              ; preds = %751
  %771 = add nsw i32 %749, 1
  br label %744, !llvm.loop !18

772:                                              ; preds = %744
  %.lcssa97 = phi double [ %745, %744 ]
  %.lcssa95 = phi double [ %746, %744 ]
  %.lcssa93 = phi double [ %747, %744 ]
  %.lcssa91 = phi double [ %748, %744 ]
  %.lcssa89 = phi i32 [ %749, %744 ]
  store i32 %.lcssa89, ptr %9, align 4
  store double %.lcssa91, ptr %3, align 8
  store double %.lcssa93, ptr %5, align 8
  store double %.lcssa95, ptr %4, align 1
  store double %.lcssa97, ptr %2, align 8
  %773 = call i32 @dtime(ptr noundef @TimeArray)
  %774 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %775 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %776 = load double, ptr @nulltime, align 8
  %777 = fneg double %776
  %778 = call double @llvm.fmuladd.f64(double %774, double %775, double %777)
  store double %778, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %779 = load double, ptr @piref, align 8
  %780 = load double, ptr @three, align 8
  %781 = fdiv double %779, %780
  store double %781, ptr %3, align 8
  %782 = fmul double %781, %781
  store double %782, ptr %5, align 8
  %783 = load double, ptr %3, align 8
  %784 = load double, ptr @A6, align 8
  %785 = load double, ptr @A5, align 8
  %786 = call double @llvm.fmuladd.f64(double %784, double %782, double %785)
  %787 = load double, ptr @A4, align 8
  %788 = call double @llvm.fmuladd.f64(double %786, double %782, double %787)
  %789 = load double, ptr @A3, align 8
  %790 = call double @llvm.fmuladd.f64(double %788, double %782, double %789)
  %791 = load double, ptr @A2, align 8
  %792 = call double @llvm.fmuladd.f64(double %790, double %782, double %791)
  %793 = load double, ptr @A1, align 8
  %794 = call double @llvm.fmuladd.f64(double %792, double %782, double %793)
  %795 = load double, ptr @one, align 8
  %796 = call double @llvm.fmuladd.f64(double %794, double %782, double %795)
  %797 = fmul double %783, %796
  store double %797, ptr @sa, align 8
  %798 = load double, ptr %5, align 8
  %799 = load double, ptr @B6, align 8
  %800 = load double, ptr @B5, align 8
  %801 = call double @llvm.fmuladd.f64(double %799, double %798, double %800)
  %802 = load double, ptr @B4, align 8
  %803 = call double @llvm.fmuladd.f64(double %798, double %801, double %802)
  %804 = load double, ptr @B3, align 8
  %805 = call double @llvm.fmuladd.f64(double %798, double %803, double %804)
  %806 = load double, ptr @B2, align 8
  %807 = call double @llvm.fmuladd.f64(double %798, double %805, double %806)
  %808 = load double, ptr @B1, align 8
  %809 = call double @llvm.fmuladd.f64(double %798, double %807, double %808)
  %810 = load double, ptr @one, align 8
  %811 = call double @llvm.fmuladd.f64(double %798, double %809, double %810)
  store double %811, ptr @sb, align 8
  %812 = load double, ptr @sa, align 8
  %813 = fmul double %812, %811
  %814 = fmul double %813, %811
  store double %814, ptr @sa, align 8
  %815 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %816 = fdiv double %815, 3.000000e+01
  store double %816, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %817 = load double, ptr %6, align 8
  %818 = load double, ptr @sa, align 8
  %819 = load double, ptr @two, align 8
  %820 = load double, ptr %2, align 8
  %821 = call double @llvm.fmuladd.f64(double %819, double %820, double %818)
  %822 = fmul double %817, %821
  %823 = fdiv double %822, %819
  store double %823, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %824 = load double, ptr @sa, align 8
  %825 = fsub double %824, f0x3FD2AAAAAAAAAAAB
  store double %825, ptr @sc, align 8
  %826 = load double, ptr @one, align 8
  %827 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %828 = fdiv double %826, %827
  store double %828, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %829 = load double, ptr @sc, align 8
  %830 = fmul double %829, 1.000000e-30
  %831 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %832 = fmul double %831, 1.000000e-30
  %833 = fmul double %828, 1.000000e-30
  %834 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, double noundef %830, double noundef %832, double noundef %833)
  %835 = load double, ptr @five, align 8
  %836 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %837 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %838 = fsub double %836, %837
  %839 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %840 = call double @llvm.fmuladd.f64(double %835, double %838, double %839)
  %841 = fdiv double %840, 5.200000e+01
  store double %841, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %842 = load double, ptr @one, align 8
  %843 = fdiv double %842, %841
  store double %843, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %844 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %845 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %846 = fadd double %844, %845
  %847 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %848 = fadd double %846, %847
  %849 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %850 = fadd double %848, %849
  %851 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %852 = fadd double %850, %851
  store double %852, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %853 = load double, ptr @four, align 8
  %854 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %855 = call double @llvm.fmuladd.f64(double %853, double %854, double %852)
  %856 = fdiv double %855, 1.520000e+02
  store double %856, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %857 = load double, ptr @one, align 8
  %858 = fdiv double %857, %856
  store double %858, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %859 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %860 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %861 = fadd double %859, %860
  %862 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %863 = fadd double %861, %862
  %864 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %865 = fadd double %863, %864
  %866 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %867 = fadd double %865, %866
  store double %867, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %868 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %869 = fadd double %867, %868
  %870 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %871 = fadd double %869, %870
  %872 = fdiv double %871, 1.460000e+02
  store double %872, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %873 = load double, ptr @one, align 8
  %874 = fdiv double %873, %872
  store double %874, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %875 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %876 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %877 = fadd double %875, %876
  %878 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %879 = fadd double %877, %878
  %880 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %881 = fadd double %879, %880
  %882 = fdiv double %881, 9.100000e+01
  store double %882, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %883 = load double, ptr @one, align 8
  %884 = fdiv double %883, %882
  store double %884, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %885 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %886 = load i32, ptr %10, align 4
  %887 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %886)
  %888 = load double, ptr @nulltime, align 8
  %889 = fmul double %888, 1.000000e-30
  %890 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, double noundef %889)
  %891 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %892 = fmul double %891, 1.000000e-30
  %893 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, double noundef %892)
  %894 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %895 = fmul double %894, 1.000000e-30
  %896 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, double noundef %895)
  %897 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %898 = fmul double %897, 1.000000e-30
  %899 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, double noundef %898)
  %900 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %901 = fmul double %900, 1.000000e-30
  %902 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, double noundef %901)
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
  %4 = getelementptr inbounds double, ptr %0, i64 2
  %5 = load double, ptr %4, align 8
  store double %5, ptr %3, align 8
  %6 = call i32 @GetTickCount()
  %7 = uitofp i32 %6 to double
  %8 = fmul double %7, 1.000000e-03
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds double, ptr %9, i64 2
  store double %8, ptr %10, align 8
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds double, ptr %11, i64 2
  %13 = load double, ptr %12, align 8
  %14 = load double, ptr %3, align 8
  %15 = fsub double %13, %14
  %16 = getelementptr inbounds double, ptr %11, i64 1
  store double %15, ptr %16, align 8
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
