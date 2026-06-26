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
  store double 1.000000e+00, ptr @scale, align 8
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %16 = call i32 @dtime(ptr noundef @TimeArray)
  %17 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 15625, ptr %11, align 4
  store double 0.000000e+00, ptr @sa, align 8
  %.promoted25 = load i32, ptr %11, align 1
  %.promoted28 = load double, ptr %6, align 1
  %.promoted31 = load double, ptr %2, align 1
  %.promoted33 = load double, ptr %4, align 1
  %.promoted = load double, ptr %5, align 8
  %.promoted37 = load i32, ptr %9, align 1
  %.promoted39 = load double, ptr %3, align 1
  br label %18

18:                                               ; preds = %65, %0
  %.lcssa2040 = phi double [ %.lcssa20, %65 ], [ %.promoted39, %0 ]
  %.lcssa2438 = phi i32 [ %.lcssa24, %65 ], [ %.promoted37, %0 ]
  %19 = phi double [ %30, %65 ], [ %.promoted, %0 ]
  %.lcssa1834 = phi double [ %.lcssa18, %65 ], [ %.promoted33, %0 ]
  %.lcssa2232 = phi double [ %.lcssa22, %65 ], [ %.promoted31, %0 ]
  %20 = phi double [ %32, %65 ], [ %.promoted28, %0 ]
  %21 = phi i32 [ %29, %65 ], [ %.promoted25, %0 ]
  %22 = phi double [ %.lcssa10, %65 ], [ undef, %0 ]
  %23 = phi double [ %32, %65 ], [ undef, %0 ]
  %24 = phi i32 [ %29, %65 ], [ 15625, %0 ]
  %25 = phi double [ %62, %65 ], [ 0.000000e+00, %0 ]
  %26 = load double, ptr @TLimit, align 8
  %27 = fcmp olt double %25, %26
  br i1 %27, label %28, label %.loopexit

28:                                               ; preds = %18
  %29 = mul nsw i32 2, %24
  %30 = load double, ptr @one, align 8
  %31 = sitofp i32 %29 to double
  %32 = fdiv double %30, %31
  %33 = call i32 @dtime(ptr noundef @TimeArray)
  %34 = sub nsw i32 %29, 1
  %35 = load double, ptr @D1, align 8
  %36 = load double, ptr @D2, align 8
  %37 = load double, ptr @D3, align 8
  %38 = load double, ptr @E2, align 8
  %39 = load double, ptr @E3, align 8
  br label %40

40:                                               ; preds = %49, %28
  %41 = phi i32 [ %59, %49 ], [ 1, %28 ]
  %42 = phi double [ %58, %49 ], [ 0.000000e+00, %28 ]
  %43 = phi double [ %51, %49 ], [ %.lcssa2040, %28 ]
  %44 = phi double [ %50, %49 ], [ 0.000000e+00, %28 ]
  %45 = phi double [ %50, %49 ], [ 0.000000e+00, %28 ]
  %46 = phi double [ %58, %49 ], [ 0.000000e+00, %28 ]
  %47 = phi i32 [ %59, %49 ], [ 1, %28 ]
  %48 = icmp sle i32 %47, %34
  br i1 %48, label %49, label %60

49:                                               ; preds = %40
  %50 = fadd double %45, %30
  %51 = fmul double %50, %32
  %52 = call double @llvm.fmuladd.f64(double %51, double %37, double %36)
  %53 = call double @llvm.fmuladd.f64(double %51, double %52, double %35)
  %54 = call double @llvm.fmuladd.f64(double %51, double %39, double %38)
  %55 = call double @llvm.fmuladd.f64(double %51, double %54, double %35)
  %56 = call double @llvm.fmuladd.f64(double %51, double %55, double %30)
  %57 = fdiv double %53, %56
  %58 = fadd double %46, %57
  %59 = add nsw i32 %47, 1
  br label %40, !llvm.loop !7

60:                                               ; preds = %40
  %.lcssa24 = phi i32 [ %41, %40 ]
  %.lcssa22 = phi double [ %42, %40 ]
  %.lcssa20 = phi double [ %43, %40 ]
  %.lcssa18 = phi double [ %44, %40 ]
  %.lcssa10 = phi double [ %46, %40 ]
  %61 = call i32 @dtime(ptr noundef @TimeArray)
  %62 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %62, ptr @sa, align 8
  %63 = icmp eq i32 %29, 512000000
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  %.lcssa20.lcssa = phi double [ %.lcssa20, %60 ]
  %.lcssa24.lcssa = phi i32 [ %.lcssa24, %60 ]
  %.lcssa36 = phi double [ %30, %60 ]
  %.lcssa18.lcssa = phi double [ %.lcssa18, %60 ]
  %.lcssa22.lcssa = phi double [ %.lcssa22, %60 ]
  %.lcssa30 = phi double [ %32, %60 ]
  %.lcssa27 = phi i32 [ %29, %60 ]
  %.lcssa17 = phi double [ %32, %60 ]
  %.lcssa10.lcssa = phi double [ %.lcssa10, %60 ]
  store i32 %.lcssa27, ptr %11, align 1
  store double %.lcssa30, ptr %6, align 1
  store double %.lcssa22.lcssa, ptr %2, align 1
  store double %.lcssa18.lcssa, ptr %4, align 1
  store double %.lcssa36, ptr %5, align 8
  store i32 %.lcssa24.lcssa, ptr %9, align 1
  store double %.lcssa20.lcssa, ptr %3, align 1
  br label %66

65:                                               ; preds = %60
  br label %18, !llvm.loop !9

.loopexit:                                        ; preds = %18
  %.lcssa2040.lcssa = phi double [ %.lcssa2040, %18 ]
  %.lcssa2438.lcssa = phi i32 [ %.lcssa2438, %18 ]
  %.lcssa35 = phi double [ %19, %18 ]
  %.lcssa1834.lcssa = phi double [ %.lcssa1834, %18 ]
  %.lcssa2232.lcssa = phi double [ %.lcssa2232, %18 ]
  %.lcssa29 = phi double [ %20, %18 ]
  %.lcssa26 = phi i32 [ %21, %18 ]
  %.lcssa15 = phi double [ %22, %18 ]
  %.lcssa13 = phi double [ %23, %18 ]
  %.lcssa11 = phi i32 [ %24, %18 ]
  store i32 %.lcssa26, ptr %11, align 1
  store double %.lcssa29, ptr %6, align 1
  store double %.lcssa2232.lcssa, ptr %2, align 1
  store double %.lcssa1834.lcssa, ptr %4, align 1
  store double %.lcssa35, ptr %5, align 8
  store i32 %.lcssa2438.lcssa, ptr %9, align 1
  store double %.lcssa2040.lcssa, ptr %3, align 1
  br label %66

66:                                               ; preds = %.loopexit, %64
  %67 = phi double [ %.lcssa10.lcssa, %64 ], [ %.lcssa15, %.loopexit ]
  %68 = phi double [ %.lcssa17, %64 ], [ %.lcssa13, %.loopexit ]
  %69 = phi i32 [ 512000000, %64 ], [ %.lcssa11, %.loopexit ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %70 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %71 = sub nsw i32 %69, 1
  %.promoted41 = load i32, ptr %9, align 1
  br label %72

72:                                               ; preds = %76, %66
  %73 = phi i32 [ %77, %76 ], [ %.promoted41, %66 ]
  %74 = phi i32 [ %77, %76 ], [ 1, %66 ]
  %75 = icmp sle i32 %74, %71
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = add nsw i32 %74, 1
  br label %72, !llvm.loop !10

78:                                               ; preds = %72
  %.lcssa42 = phi i32 [ %73, %72 ]
  store i32 %.lcssa42, ptr %9, align 1
  %79 = call i32 @dtime(ptr noundef @TimeArray)
  %80 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %81 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %82 = fmul double %80, %81
  store double %82, ptr @nulltime, align 8
  %83 = fcmp olt double %82, 0.000000e+00
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store double 0.000000e+00, ptr @nulltime, align 8
  br label %85

85:                                               ; preds = %84, %78
  %86 = phi double [ 0.000000e+00, %84 ], [ %82, %78 ]
  %87 = load double, ptr @sa, align 8
  %88 = fneg double %86
  %89 = call double @llvm.fmuladd.f64(double %80, double %87, double %88)
  store double %89, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %90 = load double, ptr @D1, align 8
  %91 = load double, ptr @D2, align 8
  %92 = fadd double %90, %91
  %93 = load double, ptr @D3, align 8
  %94 = fadd double %92, %93
  %95 = load double, ptr @one, align 8
  %96 = fadd double %95, %90
  %97 = load double, ptr @E2, align 8
  %98 = fadd double %96, %97
  %99 = load double, ptr @E3, align 8
  %100 = fadd double %98, %99
  %101 = fdiv double %94, %100
  store double %101, ptr @sa, align 8
  store double %90, ptr @sb, align 8
  %102 = fdiv double %89, 1.400000e+01
  store double %102, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %103 = fadd double %101, %90
  %104 = load double, ptr @two, align 8
  %105 = call double @llvm.fmuladd.f64(double %104, double %67, double %103)
  %106 = fmul double %68, %105
  %107 = fdiv double %106, %104
  store double %107, ptr @sa, align 8
  %108 = fdiv double %95, %107
  store double %108, ptr @sb, align 8
  %109 = fptosi double %108 to i32
  %110 = mul nsw i32 40000, %109
  %111 = sitofp i32 %110 to double
  %112 = load double, ptr @scale, align 8
  %113 = fdiv double %111, %112
  %114 = fptosi double %113 to i32
  store i32 %114, ptr %11, align 4
  %115 = fsub double %108, 2.520000e+01
  store double %115, ptr @sc, align 8
  %116 = fdiv double %95, %102
  store double %116, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %117 = fmul double %115, 1.000000e-30
  %118 = fmul double %89, 1.000000e-30
  %119 = fmul double %116, 1.000000e-30
  %120 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %117, double noundef %118, double noundef %119)
  store i32 %114, ptr %10, align 4
  %121 = load double, ptr @five, align 8
  %122 = fneg double %121
  store double %122, ptr %2, align 8
  %123 = load double, ptr @one, align 8
  %124 = fneg double %123
  store double %124, ptr @sa, align 8
  %125 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %.promoted43 = load double, ptr %2, align 1
  %sa.promoted = load double, ptr @sa, align 8
  %.promoted45 = load i32, ptr %9, align 1
  br label %126

126:                                              ; preds = %133, %85
  %127 = phi i32 [ %136, %133 ], [ %.promoted45, %85 ]
  %128 = phi double [ %135, %133 ], [ %sa.promoted, %85 ]
  %129 = phi double [ %134, %133 ], [ %.promoted43, %85 ]
  %130 = phi double [ %134, %133 ], [ %122, %85 ]
  %131 = phi i32 [ %136, %133 ], [ 1, %85 ]
  %132 = icmp sle i32 %131, %114
  br i1 %132, label %133, label %137

133:                                              ; preds = %126
  %134 = fneg double %130
  %135 = fadd double %128, %134
  store double %135, ptr @sa, align 8
  %136 = add nsw i32 %131, 1
  br label %126, !llvm.loop !11

137:                                              ; preds = %126
  %.lcssa46 = phi i32 [ %127, %126 ]
  %.lcssa44 = phi double [ %129, %126 ]
  %.lcssa9 = phi double [ %130, %126 ]
  store double %.lcssa44, ptr %2, align 1
  store i32 %.lcssa46, ptr %9, align 1
  %138 = call i32 @dtime(ptr noundef @TimeArray)
  %139 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %140 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %141 = fmul double %139, %140
  store double %141, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %142 = fcmp olt double %141, 0.000000e+00
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  br label %144

144:                                              ; preds = %143, %137
  %145 = sitofp i32 %114 to double
  store double %145, ptr @sc, align 8
  %146 = load double, ptr @sa, align 8
  store double %146, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  store double 0.000000e+00, ptr %6, align 8
  %147 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %148 = load double, ptr @two, align 8
  %.promoted47 = load double, ptr %2, align 1
  %sa.promoted49 = load double, ptr @sa, align 8
  %.promoted50 = load double, ptr %3, align 1
  %.promoted52 = load double, ptr %6, align 1
  %.promoted54 = load double, ptr %4, align 1
  %.promoted56 = load double, ptr %5, align 8
  %.promoted58 = load i32, ptr %9, align 1
  br label %149

149:                                              ; preds = %163, %144
  %150 = phi i32 [ %172, %163 ], [ %.promoted58, %144 ]
  %151 = phi double [ %171, %163 ], [ %.promoted56, %144 ]
  %152 = phi double [ %169, %163 ], [ %.promoted54, %144 ]
  %153 = phi double [ %168, %163 ], [ %.promoted52, %144 ]
  %154 = phi double [ %166, %163 ], [ %.promoted50, %144 ]
  %155 = phi double [ %165, %163 ], [ %sa.promoted49, %144 ]
  %156 = phi double [ %164, %163 ], [ %.promoted47, %144 ]
  %157 = phi double [ %166, %163 ], [ %146, %144 ]
  %158 = phi double [ %164, %163 ], [ %.lcssa9, %144 ]
  %159 = phi double [ %169, %163 ], [ 0.000000e+00, %144 ]
  %160 = phi double [ %168, %163 ], [ 0.000000e+00, %144 ]
  %161 = phi i32 [ %172, %163 ], [ 1, %144 ]
  %162 = icmp sle i32 %161, %114
  br i1 %162, label %163, label %173

163:                                              ; preds = %149
  %164 = fneg double %158
  %165 = fadd double %155, %164
  store double %165, ptr @sa, align 8
  %166 = fadd double %157, %148
  %167 = fsub double %164, %166
  %168 = fadd double %160, %167
  %169 = call double @llvm.fmuladd.f64(double %158, double %166, double %159)
  %170 = fdiv double %164, %166
  %171 = fadd double %151, %170
  %172 = add nsw i32 %161, 1
  br label %149, !llvm.loop !12

173:                                              ; preds = %149
  %.lcssa59 = phi i32 [ %150, %149 ]
  %.lcssa57 = phi double [ %151, %149 ]
  %.lcssa55 = phi double [ %152, %149 ]
  %.lcssa53 = phi double [ %153, %149 ]
  %.lcssa51 = phi double [ %154, %149 ]
  %.lcssa48 = phi double [ %156, %149 ]
  %.lcssa8 = phi double [ %159, %149 ]
  %.lcssa7 = phi double [ %160, %149 ]
  store double %.lcssa48, ptr %2, align 1
  store double %.lcssa51, ptr %3, align 1
  store double %.lcssa53, ptr %6, align 1
  store double %.lcssa55, ptr %4, align 1
  store double %.lcssa57, ptr %5, align 8
  store i32 %.lcssa59, ptr %9, align 1
  %174 = call i32 @dtime(ptr noundef @TimeArray)
  %175 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %176 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %177 = fmul double %175, %176
  store double %177, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %178 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %179 = fsub double %177, %178
  %180 = fdiv double %179, 7.000000e+00
  store double %180, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %181 = load double, ptr @sa, align 8
  %182 = fmul double %181, %.lcssa7
  %183 = load double, ptr @sc, align 8
  %184 = fdiv double %182, %183
  %185 = fptosi double %184 to i32
  store i32 %185, ptr %10, align 4
  %186 = load double, ptr @four, align 8
  %187 = load double, ptr %5, align 8
  %188 = fmul double %186, %187
  %189 = load double, ptr @five, align 8
  %190 = fdiv double %188, %189
  store double %190, ptr @sa, align 8
  %191 = fdiv double %189, %.lcssa8
  %192 = fadd double %190, %191
  store double %192, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %193 = fmul double %.lcssa8, %.lcssa8
  %194 = fmul double %193, %.lcssa8
  %195 = fdiv double 3.125000e+01, %194
  %196 = fsub double %192, %195
  store double %196, ptr @piprg, align 8
  %197 = load double, ptr @piref, align 8
  %198 = fsub double %196, %197
  store double %198, ptr @pierr, align 8
  %199 = load double, ptr @one, align 8
  %200 = fdiv double %199, %180
  store double %200, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %201 = fmul double %198, 1.000000e-30
  %202 = fmul double %179, 1.000000e-30
  %203 = fmul double %200, 1.000000e-30
  %204 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %201, double noundef %202, double noundef %203)
  %205 = load double, ptr @piref, align 8
  %206 = load double, ptr @three, align 8
  %207 = sitofp i32 %185 to double
  %208 = fmul double %206, %207
  %209 = fdiv double %205, %208
  store double %209, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %210 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %211 = sub nsw i32 %185, 1
  %212 = load double, ptr @one, align 8
  %213 = load double, ptr @A6, align 8
  %214 = load double, ptr @A5, align 8
  %215 = fneg double %214
  %216 = load double, ptr @A4, align 8
  %217 = load double, ptr @A3, align 8
  %218 = fneg double %217
  %219 = load double, ptr @A2, align 8
  %220 = load double, ptr @A1, align 8
  %.promoted60 = load double, ptr %4, align 1
  %.promoted62 = load double, ptr %3, align 1
  %.promoted64 = load double, ptr %5, align 1
  %.promoted66 = load double, ptr %2, align 1
  %.promoted68 = load i32, ptr %9, align 1
  br label %221

221:                                              ; preds = %231, %173
  %222 = phi i32 [ %242, %231 ], [ %.promoted68, %173 ]
  %223 = phi double [ %241, %231 ], [ %.promoted66, %173 ]
  %224 = phi double [ %234, %231 ], [ %.promoted64, %173 ]
  %225 = phi double [ %233, %231 ], [ %.promoted62, %173 ]
  %226 = phi double [ %232, %231 ], [ %.promoted60, %173 ]
  %227 = phi double [ %232, %231 ], [ 0.000000e+00, %173 ]
  %228 = phi double [ %241, %231 ], [ 0.000000e+00, %173 ]
  %229 = phi i32 [ %242, %231 ], [ 1, %173 ]
  %230 = icmp sle i32 %229, %211
  br i1 %230, label %231, label %243

231:                                              ; preds = %221
  %232 = fadd double %227, %212
  %233 = fmul double %232, %209
  %234 = fmul double %233, %233
  %235 = call double @llvm.fmuladd.f64(double %213, double %234, double %215)
  %236 = call double @llvm.fmuladd.f64(double %235, double %234, double %216)
  %237 = call double @llvm.fmuladd.f64(double %236, double %234, double %218)
  %238 = call double @llvm.fmuladd.f64(double %237, double %234, double %219)
  %239 = call double @llvm.fmuladd.f64(double %238, double %234, double %220)
  %240 = call double @llvm.fmuladd.f64(double %239, double %234, double %212)
  %241 = call double @llvm.fmuladd.f64(double %233, double %240, double %228)
  %242 = add nsw i32 %229, 1
  br label %221, !llvm.loop !13

243:                                              ; preds = %221
  %.lcssa69 = phi i32 [ %222, %221 ]
  %.lcssa67 = phi double [ %223, %221 ]
  %.lcssa65 = phi double [ %224, %221 ]
  %.lcssa63 = phi double [ %225, %221 ]
  %.lcssa61 = phi double [ %226, %221 ]
  %.lcssa6 = phi double [ %228, %221 ]
  %.lcssa5 = phi i32 [ %211, %221 ]
  store double %.lcssa61, ptr %4, align 1
  store double %.lcssa63, ptr %3, align 1
  store double %.lcssa65, ptr %5, align 1
  store double %.lcssa67, ptr %2, align 1
  store i32 %.lcssa69, ptr %9, align 1
  %244 = call i32 @dtime(ptr noundef @TimeArray)
  %245 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %246 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %247 = load double, ptr @nulltime, align 8
  %248 = fneg double %247
  %249 = call double @llvm.fmuladd.f64(double %245, double %246, double %248)
  store double %249, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %250 = load double, ptr @piref, align 8
  %251 = load double, ptr @three, align 8
  %252 = fdiv double %250, %251
  store double %252, ptr %3, align 8
  %253 = fmul double %252, %252
  store double %253, ptr %5, align 8
  %254 = load double, ptr @A6, align 8
  %255 = load double, ptr @A5, align 8
  %256 = fneg double %255
  %257 = call double @llvm.fmuladd.f64(double %254, double %253, double %256)
  %258 = load double, ptr @A4, align 8
  %259 = call double @llvm.fmuladd.f64(double %257, double %253, double %258)
  %260 = load double, ptr @A3, align 8
  %261 = fneg double %260
  %262 = call double @llvm.fmuladd.f64(double %259, double %253, double %261)
  %263 = load double, ptr @A2, align 8
  %264 = call double @llvm.fmuladd.f64(double %262, double %253, double %263)
  %265 = load double, ptr @A1, align 8
  %266 = call double @llvm.fmuladd.f64(double %264, double %253, double %265)
  %267 = load double, ptr @one, align 8
  %268 = call double @llvm.fmuladd.f64(double %266, double %253, double %267)
  %269 = fmul double %252, %268
  store double %269, ptr @sa, align 8
  %270 = fdiv double %249, 1.700000e+01
  store double %270, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %271 = load double, ptr @two, align 8
  %272 = call double @llvm.fmuladd.f64(double %271, double %.lcssa6, double %269)
  %273 = fmul double %209, %272
  %274 = fdiv double %273, %271
  store double %274, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %275 = fsub double %274, 5.000000e-01
  store double %275, ptr @sc, align 8
  %276 = fdiv double %267, %270
  store double %276, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %277 = fmul double %275, 1.000000e-30
  %278 = fmul double %249, 1.000000e-30
  %279 = fmul double %276, 1.000000e-30
  %280 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %277, double noundef %278, double noundef %279)
  %281 = load double, ptr @A3, align 8
  %282 = fneg double %281
  store double %282, ptr @A3, align 8
  %283 = load double, ptr @A5, align 8
  %284 = fneg double %283
  store double %284, ptr @A5, align 8
  %285 = load double, ptr @piref, align 8
  %286 = load double, ptr @three, align 8
  %287 = fmul double %286, %207
  %288 = fdiv double %285, %287
  store double %288, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %289 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %290 = load double, ptr @B6, align 8
  %291 = load double, ptr @B5, align 8
  %292 = load double, ptr @B4, align 8
  %293 = load double, ptr @B3, align 8
  %294 = load double, ptr @B2, align 8
  %295 = load double, ptr @B1, align 8
  %296 = load double, ptr @one, align 8
  %.promoted70 = load double, ptr %3, align 1
  %.promoted72 = load double, ptr %5, align 1
  %.promoted74 = load double, ptr %2, align 1
  %.promoted76 = load i32, ptr %9, align 1
  br label %297

297:                                              ; preds = %305, %243
  %298 = phi i32 [ %316, %305 ], [ %.promoted76, %243 ]
  %299 = phi double [ %315, %305 ], [ %.promoted74, %243 ]
  %300 = phi double [ %308, %305 ], [ %.promoted72, %243 ]
  %301 = phi double [ %307, %305 ], [ %.promoted70, %243 ]
  %302 = phi double [ %315, %305 ], [ 0.000000e+00, %243 ]
  %303 = phi i32 [ %316, %305 ], [ 1, %243 ]
  %304 = icmp sle i32 %303, %.lcssa5
  br i1 %304, label %305, label %317

305:                                              ; preds = %297
  %306 = sitofp i32 %303 to double
  %307 = fmul double %306, %288
  %308 = fmul double %307, %307
  %309 = call double @llvm.fmuladd.f64(double %290, double %308, double %291)
  %310 = call double @llvm.fmuladd.f64(double %308, double %309, double %292)
  %311 = call double @llvm.fmuladd.f64(double %308, double %310, double %293)
  %312 = call double @llvm.fmuladd.f64(double %308, double %311, double %294)
  %313 = call double @llvm.fmuladd.f64(double %308, double %312, double %295)
  %314 = call double @llvm.fmuladd.f64(double %308, double %313, double %302)
  %315 = fadd double %314, %296
  %316 = add nsw i32 %303, 1
  br label %297, !llvm.loop !14

317:                                              ; preds = %297
  %.lcssa77 = phi i32 [ %298, %297 ]
  %.lcssa75 = phi double [ %299, %297 ]
  %.lcssa73 = phi double [ %300, %297 ]
  %.lcssa71 = phi double [ %301, %297 ]
  %.lcssa4 = phi double [ %302, %297 ]
  store double %.lcssa71, ptr %3, align 1
  store double %.lcssa73, ptr %5, align 1
  store double %.lcssa75, ptr %2, align 1
  store i32 %.lcssa77, ptr %9, align 1
  %318 = call i32 @dtime(ptr noundef @TimeArray)
  %319 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %320 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %321 = load double, ptr @nulltime, align 8
  %322 = fneg double %321
  %323 = call double @llvm.fmuladd.f64(double %319, double %320, double %322)
  store double %323, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %324 = load double, ptr @piref, align 8
  %325 = load double, ptr @three, align 8
  %326 = fdiv double %324, %325
  store double %326, ptr %3, align 8
  %327 = fmul double %326, %326
  store double %327, ptr %5, align 8
  %328 = load double, ptr @B6, align 8
  %329 = load double, ptr @B5, align 8
  %330 = call double @llvm.fmuladd.f64(double %328, double %327, double %329)
  %331 = load double, ptr @B4, align 8
  %332 = call double @llvm.fmuladd.f64(double %327, double %330, double %331)
  %333 = load double, ptr @B3, align 8
  %334 = call double @llvm.fmuladd.f64(double %327, double %332, double %333)
  %335 = load double, ptr @B2, align 8
  %336 = call double @llvm.fmuladd.f64(double %327, double %334, double %335)
  %337 = load double, ptr @B1, align 8
  %338 = call double @llvm.fmuladd.f64(double %327, double %336, double %337)
  %339 = load double, ptr @one, align 8
  %340 = call double @llvm.fmuladd.f64(double %327, double %338, double %339)
  store double %340, ptr @sa, align 8
  %341 = fdiv double %323, 1.500000e+01
  store double %341, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %342 = fadd double %340, %339
  %343 = load double, ptr @two, align 8
  %344 = call double @llvm.fmuladd.f64(double %343, double %.lcssa4, double %342)
  %345 = fmul double %288, %344
  %346 = fdiv double %345, %343
  store double %346, ptr @sa, align 8
  store double %326, ptr %3, align 8
  store double %327, ptr %5, align 8
  %347 = load double, ptr @A6, align 8
  %348 = load double, ptr @A5, align 8
  %349 = call double @llvm.fmuladd.f64(double %347, double %327, double %348)
  %350 = load double, ptr @A4, align 8
  %351 = call double @llvm.fmuladd.f64(double %349, double %327, double %350)
  %352 = load double, ptr @A3, align 8
  %353 = call double @llvm.fmuladd.f64(double %351, double %327, double %352)
  %354 = load double, ptr @A2, align 8
  %355 = call double @llvm.fmuladd.f64(double %353, double %327, double %354)
  %356 = load double, ptr @A1, align 8
  %357 = call double @llvm.fmuladd.f64(double %355, double %327, double %356)
  %358 = load double, ptr @A0, align 8
  %359 = call double @llvm.fmuladd.f64(double %357, double %327, double %358)
  %360 = fmul double %326, %359
  store double %360, ptr @sb, align 8
  %361 = fsub double %346, %360
  store double %361, ptr @sc, align 8
  %362 = fdiv double %339, %341
  store double %362, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %363 = fmul double %361, 1.000000e-30
  %364 = fmul double %323, 1.000000e-30
  %365 = fmul double %362, 1.000000e-30
  %366 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %363, double noundef %364, double noundef %365)
  %367 = load double, ptr @piref, align 8
  %368 = load double, ptr @three, align 8
  %369 = fmul double %368, %207
  %370 = fdiv double %367, %369
  store double %370, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %371 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %372 = load double, ptr @A6, align 8
  %373 = load double, ptr @A5, align 8
  %374 = load double, ptr @A4, align 8
  %375 = load double, ptr @A3, align 8
  %376 = load double, ptr @A2, align 8
  %377 = load double, ptr @A1, align 8
  %378 = load double, ptr @one, align 8
  %379 = load double, ptr @B6, align 8
  %380 = load double, ptr @B5, align 8
  %381 = load double, ptr @B4, align 8
  %382 = load double, ptr @B3, align 8
  %383 = load double, ptr @B2, align 8
  %384 = load double, ptr @B1, align 8
  %.promoted78 = load double, ptr %3, align 1
  %.promoted80 = load double, ptr %5, align 1
  %.promoted82 = load double, ptr %4, align 1
  %.promoted84 = load double, ptr %2, align 1
  %.promoted86 = load i32, ptr %9, align 1
  br label %385

385:                                              ; preds = %394, %317
  %386 = phi i32 [ %413, %394 ], [ %.promoted86, %317 ]
  %387 = phi double [ %412, %394 ], [ %.promoted84, %317 ]
  %388 = phi double [ %404, %394 ], [ %.promoted82, %317 ]
  %389 = phi double [ %397, %394 ], [ %.promoted80, %317 ]
  %390 = phi double [ %396, %394 ], [ %.promoted78, %317 ]
  %391 = phi double [ %412, %394 ], [ 0.000000e+00, %317 ]
  %392 = phi i32 [ %413, %394 ], [ 1, %317 ]
  %393 = icmp sle i32 %392, %.lcssa5
  br i1 %393, label %394, label %414

394:                                              ; preds = %385
  %395 = sitofp i32 %392 to double
  %396 = fmul double %395, %370
  %397 = fmul double %396, %396
  %398 = call double @llvm.fmuladd.f64(double %372, double %397, double %373)
  %399 = call double @llvm.fmuladd.f64(double %398, double %397, double %374)
  %400 = call double @llvm.fmuladd.f64(double %399, double %397, double %375)
  %401 = call double @llvm.fmuladd.f64(double %400, double %397, double %376)
  %402 = call double @llvm.fmuladd.f64(double %401, double %397, double %377)
  %403 = call double @llvm.fmuladd.f64(double %402, double %397, double %378)
  %404 = fmul double %396, %403
  %405 = call double @llvm.fmuladd.f64(double %379, double %397, double %380)
  %406 = call double @llvm.fmuladd.f64(double %397, double %405, double %381)
  %407 = call double @llvm.fmuladd.f64(double %397, double %406, double %382)
  %408 = call double @llvm.fmuladd.f64(double %397, double %407, double %383)
  %409 = call double @llvm.fmuladd.f64(double %397, double %408, double %384)
  %410 = call double @llvm.fmuladd.f64(double %397, double %409, double %378)
  %411 = fdiv double %404, %410
  %412 = fadd double %391, %411
  %413 = add nsw i32 %392, 1
  br label %385, !llvm.loop !15

414:                                              ; preds = %385
  %.lcssa87 = phi i32 [ %386, %385 ]
  %.lcssa85 = phi double [ %387, %385 ]
  %.lcssa83 = phi double [ %388, %385 ]
  %.lcssa81 = phi double [ %389, %385 ]
  %.lcssa79 = phi double [ %390, %385 ]
  %.lcssa3 = phi double [ %391, %385 ]
  store double %.lcssa79, ptr %3, align 1
  store double %.lcssa81, ptr %5, align 1
  store double %.lcssa83, ptr %4, align 1
  store double %.lcssa85, ptr %2, align 1
  store i32 %.lcssa87, ptr %9, align 1
  %415 = call i32 @dtime(ptr noundef @TimeArray)
  %416 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %417 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %418 = load double, ptr @nulltime, align 8
  %419 = fneg double %418
  %420 = call double @llvm.fmuladd.f64(double %416, double %417, double %419)
  store double %420, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %421 = load double, ptr @piref, align 8
  %422 = load double, ptr @three, align 8
  %423 = fdiv double %421, %422
  store double %423, ptr %3, align 8
  %424 = fmul double %423, %423
  store double %424, ptr %5, align 8
  %425 = load double, ptr @A6, align 8
  %426 = load double, ptr @A5, align 8
  %427 = call double @llvm.fmuladd.f64(double %425, double %424, double %426)
  %428 = load double, ptr @A4, align 8
  %429 = call double @llvm.fmuladd.f64(double %427, double %424, double %428)
  %430 = load double, ptr @A3, align 8
  %431 = call double @llvm.fmuladd.f64(double %429, double %424, double %430)
  %432 = load double, ptr @A2, align 8
  %433 = call double @llvm.fmuladd.f64(double %431, double %424, double %432)
  %434 = load double, ptr @A1, align 8
  %435 = call double @llvm.fmuladd.f64(double %433, double %424, double %434)
  %436 = load double, ptr @one, align 8
  %437 = call double @llvm.fmuladd.f64(double %435, double %424, double %436)
  %438 = fmul double %423, %437
  store double %438, ptr @sa, align 8
  %439 = load double, ptr @B6, align 8
  %440 = load double, ptr @B5, align 8
  %441 = call double @llvm.fmuladd.f64(double %439, double %424, double %440)
  %442 = load double, ptr @B4, align 8
  %443 = call double @llvm.fmuladd.f64(double %424, double %441, double %442)
  %444 = load double, ptr @B3, align 8
  %445 = call double @llvm.fmuladd.f64(double %424, double %443, double %444)
  %446 = load double, ptr @B2, align 8
  %447 = call double @llvm.fmuladd.f64(double %424, double %445, double %446)
  %448 = load double, ptr @B1, align 8
  %449 = call double @llvm.fmuladd.f64(double %424, double %447, double %448)
  %450 = call double @llvm.fmuladd.f64(double %424, double %449, double %436)
  store double %450, ptr @sb, align 8
  %451 = fdiv double %438, %450
  store double %451, ptr @sa, align 8
  %452 = fdiv double %420, 2.900000e+01
  store double %452, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %453 = load double, ptr @two, align 8
  %454 = call double @llvm.fmuladd.f64(double %453, double %.lcssa3, double %451)
  %455 = fmul double %370, %454
  %456 = fdiv double %455, %453
  store double %456, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %457 = fsub double %456, f0x3FE62E42FEFA39EF
  store double %457, ptr @sc, align 8
  %458 = fdiv double %436, %452
  store double %458, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %459 = fmul double %457, 1.000000e-30
  %460 = fmul double %420, 1.000000e-30
  %461 = fmul double %458, 1.000000e-30
  %462 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %459, double noundef %460, double noundef %461)
  %463 = load double, ptr @piref, align 8
  %464 = load double, ptr @four, align 8
  %465 = fmul double %464, %207
  %466 = fdiv double %463, %465
  store double %466, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %467 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %468 = load double, ptr @A6, align 8
  %469 = load double, ptr @A5, align 8
  %470 = load double, ptr @A4, align 8
  %471 = load double, ptr @A3, align 8
  %472 = load double, ptr @A2, align 8
  %473 = load double, ptr @A1, align 8
  %474 = load double, ptr @one, align 8
  %475 = load double, ptr @B6, align 8
  %476 = load double, ptr @B5, align 8
  %477 = load double, ptr @B4, align 8
  %478 = load double, ptr @B3, align 8
  %479 = load double, ptr @B2, align 8
  %480 = load double, ptr @B1, align 8
  %.promoted88 = load double, ptr %3, align 1
  %.promoted90 = load double, ptr %5, align 1
  %.promoted92 = load double, ptr %4, align 1
  %.promoted94 = load double, ptr %2, align 1
  %.promoted96 = load i32, ptr %9, align 1
  br label %481

481:                                              ; preds = %490, %414
  %482 = phi i32 [ %508, %490 ], [ %.promoted96, %414 ]
  %483 = phi double [ %507, %490 ], [ %.promoted94, %414 ]
  %484 = phi double [ %500, %490 ], [ %.promoted92, %414 ]
  %485 = phi double [ %493, %490 ], [ %.promoted90, %414 ]
  %486 = phi double [ %492, %490 ], [ %.promoted88, %414 ]
  %487 = phi double [ %507, %490 ], [ 0.000000e+00, %414 ]
  %488 = phi i32 [ %508, %490 ], [ 1, %414 ]
  %489 = icmp sle i32 %488, %.lcssa5
  br i1 %489, label %490, label %509

490:                                              ; preds = %481
  %491 = sitofp i32 %488 to double
  %492 = fmul double %491, %466
  %493 = fmul double %492, %492
  %494 = call double @llvm.fmuladd.f64(double %468, double %493, double %469)
  %495 = call double @llvm.fmuladd.f64(double %494, double %493, double %470)
  %496 = call double @llvm.fmuladd.f64(double %495, double %493, double %471)
  %497 = call double @llvm.fmuladd.f64(double %496, double %493, double %472)
  %498 = call double @llvm.fmuladd.f64(double %497, double %493, double %473)
  %499 = call double @llvm.fmuladd.f64(double %498, double %493, double %474)
  %500 = fmul double %492, %499
  %501 = call double @llvm.fmuladd.f64(double %475, double %493, double %476)
  %502 = call double @llvm.fmuladd.f64(double %493, double %501, double %477)
  %503 = call double @llvm.fmuladd.f64(double %493, double %502, double %478)
  %504 = call double @llvm.fmuladd.f64(double %493, double %503, double %479)
  %505 = call double @llvm.fmuladd.f64(double %493, double %504, double %480)
  %506 = call double @llvm.fmuladd.f64(double %493, double %505, double %474)
  %507 = call double @llvm.fmuladd.f64(double %500, double %506, double %487)
  %508 = add nsw i32 %488, 1
  br label %481, !llvm.loop !16

509:                                              ; preds = %481
  %.lcssa97 = phi i32 [ %482, %481 ]
  %.lcssa95 = phi double [ %483, %481 ]
  %.lcssa93 = phi double [ %484, %481 ]
  %.lcssa91 = phi double [ %485, %481 ]
  %.lcssa89 = phi double [ %486, %481 ]
  %.lcssa2 = phi double [ %487, %481 ]
  store double %.lcssa89, ptr %3, align 1
  store double %.lcssa91, ptr %5, align 1
  store double %.lcssa93, ptr %4, align 1
  store double %.lcssa95, ptr %2, align 1
  store i32 %.lcssa97, ptr %9, align 1
  %510 = call i32 @dtime(ptr noundef @TimeArray)
  %511 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %512 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %513 = load double, ptr @nulltime, align 8
  %514 = fneg double %513
  %515 = call double @llvm.fmuladd.f64(double %511, double %512, double %514)
  store double %515, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %516 = load double, ptr @piref, align 8
  %517 = load double, ptr @four, align 8
  %518 = fdiv double %516, %517
  store double %518, ptr %3, align 8
  %519 = fmul double %518, %518
  store double %519, ptr %5, align 8
  %520 = load double, ptr @A6, align 8
  %521 = load double, ptr @A5, align 8
  %522 = call double @llvm.fmuladd.f64(double %520, double %519, double %521)
  %523 = load double, ptr @A4, align 8
  %524 = call double @llvm.fmuladd.f64(double %522, double %519, double %523)
  %525 = load double, ptr @A3, align 8
  %526 = call double @llvm.fmuladd.f64(double %524, double %519, double %525)
  %527 = load double, ptr @A2, align 8
  %528 = call double @llvm.fmuladd.f64(double %526, double %519, double %527)
  %529 = load double, ptr @A1, align 8
  %530 = call double @llvm.fmuladd.f64(double %528, double %519, double %529)
  %531 = load double, ptr @one, align 8
  %532 = call double @llvm.fmuladd.f64(double %530, double %519, double %531)
  %533 = fmul double %518, %532
  store double %533, ptr @sa, align 8
  %534 = load double, ptr @B6, align 8
  %535 = load double, ptr @B5, align 8
  %536 = call double @llvm.fmuladd.f64(double %534, double %519, double %535)
  %537 = load double, ptr @B4, align 8
  %538 = call double @llvm.fmuladd.f64(double %519, double %536, double %537)
  %539 = load double, ptr @B3, align 8
  %540 = call double @llvm.fmuladd.f64(double %519, double %538, double %539)
  %541 = load double, ptr @B2, align 8
  %542 = call double @llvm.fmuladd.f64(double %519, double %540, double %541)
  %543 = load double, ptr @B1, align 8
  %544 = call double @llvm.fmuladd.f64(double %519, double %542, double %543)
  %545 = call double @llvm.fmuladd.f64(double %519, double %544, double %531)
  store double %545, ptr @sb, align 8
  %546 = fmul double %533, %545
  store double %546, ptr @sa, align 8
  %547 = fdiv double %515, 2.900000e+01
  store double %547, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %548 = load double, ptr @two, align 8
  %549 = call double @llvm.fmuladd.f64(double %548, double %.lcssa2, double %546)
  %550 = fmul double %466, %549
  %551 = fdiv double %550, %548
  store double %551, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %552 = fsub double %551, 2.500000e-01
  store double %552, ptr @sc, align 8
  %553 = fdiv double %531, %547
  store double %553, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %554 = fmul double %552, 1.000000e-30
  %555 = fmul double %515, 1.000000e-30
  %556 = fmul double %553, 1.000000e-30
  %557 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, double noundef %554, double noundef %555, double noundef %556)
  store double 0.000000e+00, ptr %2, align 8
  %558 = load double, ptr @one, align 8
  store double %558, ptr %5, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %559 = fdiv double f0x40599541F7F192A4, %207
  store double %559, ptr %4, align 8
  %560 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %561 = load double, ptr %5, align 8
  %.promoted98 = load double, ptr %6, align 1
  %.promoted100 = load double, ptr %3, align 1
  %.promoted102 = load double, ptr %2, align 1
  %.promoted104 = load i32, ptr %9, align 1
  br label %562

562:                                              ; preds = %570, %509
  %563 = phi i32 [ %583, %570 ], [ %.promoted104, %509 ]
  %564 = phi double [ %582, %570 ], [ %.promoted102, %509 ]
  %565 = phi double [ %573, %570 ], [ %.promoted100, %509 ]
  %566 = phi double [ %572, %570 ], [ %.promoted98, %509 ]
  %567 = phi double [ %582, %570 ], [ 0.000000e+00, %509 ]
  %568 = phi i32 [ %583, %570 ], [ 1, %509 ]
  %569 = icmp sle i32 %568, %.lcssa5
  br i1 %569, label %570, label %584

570:                                              ; preds = %562
  %571 = sitofp i32 %568 to double
  %572 = fmul double %571, %559
  %573 = fmul double %572, %572
  %574 = fadd double %572, %561
  %575 = fdiv double %561, %574
  %576 = fsub double %567, %575
  %577 = fadd double %573, %561
  %578 = fdiv double %572, %577
  %579 = fsub double %576, %578
  %580 = call double @llvm.fmuladd.f64(double %572, double %573, double %561)
  %581 = fdiv double %573, %580
  %582 = fsub double %579, %581
  %583 = add nsw i32 %568, 1
  br label %562, !llvm.loop !17

584:                                              ; preds = %562
  %.lcssa105 = phi i32 [ %563, %562 ]
  %.lcssa103 = phi double [ %564, %562 ]
  %.lcssa101 = phi double [ %565, %562 ]
  %.lcssa99 = phi double [ %566, %562 ]
  %.lcssa1 = phi double [ %567, %562 ]
  store double %.lcssa99, ptr %6, align 1
  store double %.lcssa101, ptr %3, align 1
  store double %.lcssa103, ptr %2, align 1
  store i32 %.lcssa105, ptr %9, align 1
  %585 = call i32 @dtime(ptr noundef @TimeArray)
  %586 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %587 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %588 = load double, ptr @nulltime, align 8
  %589 = fneg double %588
  %590 = call double @llvm.fmuladd.f64(double %586, double %587, double %589)
  store double %590, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %591 = fdiv double %590, 1.200000e+01
  store double %591, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %592 = load double, ptr @sa, align 8
  store double %592, ptr %6, align 8
  %593 = fmul double %592, %592
  store double %593, ptr %3, align 8
  %594 = load double, ptr %5, align 8
  %595 = fneg double %594
  %596 = fadd double %592, %594
  %597 = fdiv double %594, %596
  %598 = fsub double %595, %597
  %599 = fadd double %593, %594
  %600 = fdiv double %592, %599
  %601 = fsub double %598, %600
  %602 = call double @llvm.fmuladd.f64(double %592, double %593, double %594)
  %603 = fdiv double %593, %602
  %604 = fsub double %601, %603
  store double %604, ptr @sa, align 8
  %605 = fmul double 1.800000e+01, %559
  %606 = load double, ptr @two, align 8
  %607 = call double @llvm.fmuladd.f64(double %606, double %.lcssa1, double %604)
  %608 = fmul double %605, %607
  store double %608, ptr @sa, align 8
  %609 = fptosi double %608 to i32
  %610 = mul nsw i32 -2000, %609
  store i32 %610, ptr %10, align 4
  %611 = sitofp i32 %610 to double
  %612 = load double, ptr @scale, align 8
  %613 = fdiv double %611, %612
  %614 = fptosi double %613 to i32
  store i32 %614, ptr %10, align 4
  %615 = fadd double %608, 5.002000e+02
  store double %615, ptr @sc, align 8
  %616 = load double, ptr @one, align 8
  %617 = fdiv double %616, %591
  store double %617, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %618 = fmul double %615, 1.000000e-30
  %619 = fmul double %590, 1.000000e-30
  %620 = fmul double %617, 1.000000e-30
  %621 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, double noundef %618, double noundef %619, double noundef %620)
  %622 = load double, ptr @piref, align 8
  %623 = load double, ptr @three, align 8
  %624 = sitofp i32 %614 to double
  %625 = fmul double %623, %624
  %626 = fdiv double %622, %625
  store double %626, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %627 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %628 = sub nsw i32 %614, 1
  %629 = load double, ptr @B6, align 8
  %630 = load double, ptr @B5, align 8
  %631 = load double, ptr @B4, align 8
  %632 = load double, ptr @B3, align 8
  %633 = load double, ptr @B2, align 8
  %634 = load double, ptr @B1, align 8
  %635 = load double, ptr @one, align 8
  %636 = load double, ptr @A6, align 8
  %637 = load double, ptr @A5, align 8
  %638 = load double, ptr @A4, align 8
  %639 = load double, ptr @A3, align 8
  %640 = load double, ptr @A2, align 8
  %641 = load double, ptr @A1, align 8
  %.promoted106 = load double, ptr %3, align 1
  %.promoted108 = load double, ptr %5, align 1
  %.promoted110 = load double, ptr %4, align 1
  %.promoted112 = load double, ptr %2, align 1
  %.promoted114 = load i32, ptr %9, align 1
  br label %642

642:                                              ; preds = %651, %584
  %643 = phi i32 [ %670, %651 ], [ %.promoted114, %584 ]
  %644 = phi double [ %669, %651 ], [ %.promoted112, %584 ]
  %645 = phi double [ %660, %651 ], [ %.promoted110, %584 ]
  %646 = phi double [ %654, %651 ], [ %.promoted108, %584 ]
  %647 = phi double [ %653, %651 ], [ %.promoted106, %584 ]
  %648 = phi double [ %669, %651 ], [ 0.000000e+00, %584 ]
  %649 = phi i32 [ %670, %651 ], [ 1, %584 ]
  %650 = icmp sle i32 %649, %628
  br i1 %650, label %651, label %671

651:                                              ; preds = %642
  %652 = sitofp i32 %649 to double
  %653 = fmul double %652, %626
  %654 = fmul double %653, %653
  %655 = call double @llvm.fmuladd.f64(double %629, double %654, double %630)
  %656 = call double @llvm.fmuladd.f64(double %654, double %655, double %631)
  %657 = call double @llvm.fmuladd.f64(double %654, double %656, double %632)
  %658 = call double @llvm.fmuladd.f64(double %654, double %657, double %633)
  %659 = call double @llvm.fmuladd.f64(double %654, double %658, double %634)
  %660 = call double @llvm.fmuladd.f64(double %654, double %659, double %635)
  %661 = fmul double %660, %660
  %662 = fmul double %661, %653
  %663 = call double @llvm.fmuladd.f64(double %636, double %654, double %637)
  %664 = call double @llvm.fmuladd.f64(double %663, double %654, double %638)
  %665 = call double @llvm.fmuladd.f64(double %664, double %654, double %639)
  %666 = call double @llvm.fmuladd.f64(double %665, double %654, double %640)
  %667 = call double @llvm.fmuladd.f64(double %666, double %654, double %641)
  %668 = call double @llvm.fmuladd.f64(double %667, double %654, double %635)
  %669 = call double @llvm.fmuladd.f64(double %662, double %668, double %648)
  %670 = add nsw i32 %649, 1
  br label %642, !llvm.loop !18

671:                                              ; preds = %642
  %.lcssa115 = phi i32 [ %643, %642 ]
  %.lcssa113 = phi double [ %644, %642 ]
  %.lcssa111 = phi double [ %645, %642 ]
  %.lcssa109 = phi double [ %646, %642 ]
  %.lcssa107 = phi double [ %647, %642 ]
  %.lcssa = phi double [ %648, %642 ]
  store double %.lcssa107, ptr %3, align 1
  store double %.lcssa109, ptr %5, align 1
  store double %.lcssa111, ptr %4, align 1
  store double %.lcssa113, ptr %2, align 1
  store i32 %.lcssa115, ptr %9, align 1
  %672 = call i32 @dtime(ptr noundef @TimeArray)
  %673 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %674 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %675 = load double, ptr @nulltime, align 8
  %676 = fneg double %675
  %677 = call double @llvm.fmuladd.f64(double %673, double %674, double %676)
  store double %677, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %678 = load double, ptr @piref, align 8
  %679 = load double, ptr @three, align 8
  %680 = fdiv double %678, %679
  store double %680, ptr %3, align 8
  %681 = fmul double %680, %680
  store double %681, ptr %5, align 8
  %682 = load double, ptr @A6, align 8
  %683 = load double, ptr @A5, align 8
  %684 = call double @llvm.fmuladd.f64(double %682, double %681, double %683)
  %685 = load double, ptr @A4, align 8
  %686 = call double @llvm.fmuladd.f64(double %684, double %681, double %685)
  %687 = load double, ptr @A3, align 8
  %688 = call double @llvm.fmuladd.f64(double %686, double %681, double %687)
  %689 = load double, ptr @A2, align 8
  %690 = call double @llvm.fmuladd.f64(double %688, double %681, double %689)
  %691 = load double, ptr @A1, align 8
  %692 = call double @llvm.fmuladd.f64(double %690, double %681, double %691)
  %693 = load double, ptr @one, align 8
  %694 = call double @llvm.fmuladd.f64(double %692, double %681, double %693)
  %695 = fmul double %680, %694
  store double %695, ptr @sa, align 8
  %696 = load double, ptr @B6, align 8
  %697 = load double, ptr @B5, align 8
  %698 = call double @llvm.fmuladd.f64(double %696, double %681, double %697)
  %699 = load double, ptr @B4, align 8
  %700 = call double @llvm.fmuladd.f64(double %681, double %698, double %699)
  %701 = load double, ptr @B3, align 8
  %702 = call double @llvm.fmuladd.f64(double %681, double %700, double %701)
  %703 = load double, ptr @B2, align 8
  %704 = call double @llvm.fmuladd.f64(double %681, double %702, double %703)
  %705 = load double, ptr @B1, align 8
  %706 = call double @llvm.fmuladd.f64(double %681, double %704, double %705)
  %707 = call double @llvm.fmuladd.f64(double %681, double %706, double %693)
  store double %707, ptr @sb, align 8
  %708 = fmul double %695, %707
  %709 = fmul double %708, %707
  store double %709, ptr @sa, align 8
  %710 = fdiv double %677, 3.000000e+01
  store double %710, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %711 = load double, ptr @two, align 8
  %712 = call double @llvm.fmuladd.f64(double %711, double %.lcssa, double %709)
  %713 = fmul double %626, %712
  %714 = fdiv double %713, %711
  store double %714, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %715 = fsub double %714, f0x3FD2AAAAAAAAAAAB
  store double %715, ptr @sc, align 8
  %716 = fdiv double %693, %710
  store double %716, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %717 = fmul double %715, 1.000000e-30
  %718 = fmul double %677, 1.000000e-30
  %719 = fmul double %716, 1.000000e-30
  %720 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, double noundef %717, double noundef %718, double noundef %719)
  %721 = load double, ptr @five, align 8
  %722 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %723 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %724 = fsub double %722, %723
  %725 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %726 = call double @llvm.fmuladd.f64(double %721, double %724, double %725)
  %727 = fdiv double %726, 5.200000e+01
  store double %727, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %728 = load double, ptr @one, align 8
  %729 = fdiv double %728, %727
  store double %729, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %730 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %731 = fadd double %730, %725
  %732 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %733 = fadd double %731, %732
  %734 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %735 = fadd double %733, %734
  %736 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %737 = fadd double %735, %736
  store double %737, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %738 = load double, ptr @four, align 8
  %739 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %740 = call double @llvm.fmuladd.f64(double %738, double %739, double %737)
  %741 = fdiv double %740, 1.520000e+02
  store double %741, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %742 = fdiv double %728, %741
  store double %742, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %737, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %743 = fadd double %737, %739
  %744 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %745 = fadd double %743, %744
  %746 = fdiv double %745, 1.460000e+02
  store double %746, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %747 = fdiv double %728, %746
  store double %747, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %748 = fadd double %725, %732
  %749 = fadd double %748, %736
  %750 = fadd double %749, %744
  %751 = fdiv double %750, 9.100000e+01
  store double %751, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %752 = fdiv double %728, %751
  store double %752, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %753 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %754 = load i32, ptr %10, align 4
  %755 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %754)
  %756 = load double, ptr @nulltime, align 8
  %757 = fmul double %756, 1.000000e-30
  %758 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, double noundef %757)
  %759 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %760 = fmul double %759, 1.000000e-30
  %761 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, double noundef %760)
  %762 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %763 = fmul double %762, 1.000000e-30
  %764 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, double noundef %763)
  %765 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %766 = fmul double %765, 1.000000e-30
  %767 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, double noundef %766)
  %768 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %769 = fmul double %768, 1.000000e-30
  %770 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, double noundef %769)
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
  store double %8, ptr %4, align 8
  %9 = fsub double %8, %5
  %10 = getelementptr inbounds double, ptr %0, i64 1
  store double %9, ptr %10, align 8
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
