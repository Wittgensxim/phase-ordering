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
  br label %18

18:                                               ; preds = %58, %0
  %19 = phi double [ %55, %58 ], [ 0.000000e+00, %0 ]
  %.lcssa419 = phi double [ %38, %58 ], [ undef, %0 ]
  %.lcssa18 = phi i32 [ %40, %58 ], [ undef, %0 ]
  %.lcssa216 = phi double [ %39, %58 ], [ undef, %0 ]
  %.lcssa614 = phi double [ %37, %58 ], [ undef, %0 ]
  %20 = phi double [ %28, %58 ], [ undef, %0 ]
  %21 = phi i32 [ %25, %58 ], [ 15625, %0 ]
  %22 = load double, ptr @TLimit, align 8
  %23 = fcmp olt double %19, %22
  br i1 %23, label %24, label %.loopexit

24:                                               ; preds = %18
  %25 = mul nsw i32 2, %21
  %26 = load double, ptr @one, align 8
  %27 = sitofp i32 %25 to double
  %28 = fdiv double %26, %27
  store double %26, ptr %5, align 8
  %29 = call i32 @dtime(ptr noundef @TimeArray)
  %30 = sub nsw i32 %25, 1
  %31 = load double, ptr @D1, align 8
  %32 = load double, ptr @D2, align 8
  %33 = load double, ptr @D3, align 8
  %34 = load double, ptr @E2, align 8
  %35 = load double, ptr @E3, align 8
  br label %36

36:                                               ; preds = %42, %24
  %37 = phi double [ %51, %42 ], [ 0.000000e+00, %24 ]
  %38 = phi double [ %44, %42 ], [ %.lcssa419, %24 ]
  %39 = phi double [ %43, %42 ], [ 0.000000e+00, %24 ]
  %40 = phi i32 [ %52, %42 ], [ 1, %24 ]
  %41 = icmp sle i32 %40, %30
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = fadd double %39, %26
  %44 = fmul double %43, %28
  %45 = call double @llvm.fmuladd.f64(double %44, double %33, double %32)
  %46 = call double @llvm.fmuladd.f64(double %44, double %45, double %31)
  %47 = call double @llvm.fmuladd.f64(double %44, double %35, double %34)
  %48 = call double @llvm.fmuladd.f64(double %44, double %47, double %31)
  %49 = call double @llvm.fmuladd.f64(double %44, double %48, double %26)
  %50 = fdiv double %46, %49
  %51 = fadd double %37, %50
  %52 = add nsw i32 %40, 1
  br label %36, !llvm.loop !7

53:                                               ; preds = %36
  %54 = call i32 @dtime(ptr noundef @TimeArray)
  %55 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %55, ptr @sa, align 8
  %56 = icmp eq i32 %25, 512000000
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 512000000, ptr %11, align 4
  store double %28, ptr %6, align 8
  store double %37, ptr %2, align 8
  store double %39, ptr %4, align 8
  store i32 %40, ptr %9, align 4
  store double %38, ptr %3, align 8
  br label %59

58:                                               ; preds = %53
  br label %18, !llvm.loop !9

.loopexit:                                        ; preds = %18
  store i32 %21, ptr %11, align 4
  store double %20, ptr %6, align 8
  store double %.lcssa614, ptr %2, align 8
  store double %.lcssa216, ptr %4, align 8
  store i32 %.lcssa18, ptr %9, align 4
  store double %.lcssa419, ptr %3, align 8
  br label %59

59:                                               ; preds = %.loopexit, %57
  %60 = phi double [ %.lcssa614, %.loopexit ], [ %37, %57 ]
  %61 = phi double [ %20, %.loopexit ], [ %28, %57 ]
  %62 = phi i32 [ %21, %.loopexit ], [ 512000000, %57 ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %63 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %64 = sub nsw i32 %62, 1
  br label %65

65:                                               ; preds = %68, %59
  %66 = phi i32 [ %69, %68 ], [ 1, %59 ]
  %67 = icmp sle i32 %66, %64
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = add nsw i32 %66, 1
  br label %65, !llvm.loop !10

70:                                               ; preds = %65
  store i32 %66, ptr %9, align 4
  %71 = call i32 @dtime(ptr noundef @TimeArray)
  %72 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %73 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %74 = fmul double %72, %73
  store double %74, ptr @nulltime, align 8
  %75 = fcmp olt double %74, 0.000000e+00
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store double 0.000000e+00, ptr @nulltime, align 8
  br label %77

77:                                               ; preds = %76, %70
  %78 = phi double [ 0.000000e+00, %76 ], [ %74, %70 ]
  %79 = load double, ptr @sa, align 8
  %80 = fneg double %78
  %81 = call double @llvm.fmuladd.f64(double %72, double %79, double %80)
  store double %81, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %82 = load double, ptr @D1, align 8
  %83 = load double, ptr @D2, align 8
  %84 = fadd double %82, %83
  %85 = load double, ptr @D3, align 8
  %86 = fadd double %84, %85
  %87 = load double, ptr @one, align 8
  %88 = fadd double %87, %82
  %89 = load double, ptr @E2, align 8
  %90 = fadd double %88, %89
  %91 = load double, ptr @E3, align 8
  %92 = fadd double %90, %91
  %93 = fdiv double %86, %92
  store double %93, ptr @sa, align 8
  store double %82, ptr @sb, align 8
  %94 = fdiv double %81, 1.400000e+01
  store double %94, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %95 = fadd double %93, %82
  %96 = load double, ptr @two, align 8
  %97 = call double @llvm.fmuladd.f64(double %96, double %60, double %95)
  %98 = fmul double %61, %97
  %99 = fdiv double %98, %96
  store double %99, ptr @sa, align 8
  %100 = fdiv double %87, %99
  store double %100, ptr @sb, align 8
  %101 = fptosi double %100 to i32
  %102 = mul nsw i32 40000, %101
  %103 = sitofp i32 %102 to double
  %104 = load double, ptr @scale, align 8
  %105 = fdiv double %103, %104
  %106 = fptosi double %105 to i32
  store i32 %106, ptr %11, align 4
  %107 = fsub double %100, 2.520000e+01
  store double %107, ptr @sc, align 8
  %108 = fdiv double %87, %94
  store double %108, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %109 = fmul double %107, 1.000000e-30
  %110 = fmul double %81, 1.000000e-30
  %111 = fmul double %108, 1.000000e-30
  %112 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %109, double noundef %110, double noundef %111)
  store i32 %106, ptr %10, align 4
  %113 = load double, ptr @five, align 8
  %114 = fneg double %113
  store double %114, ptr %2, align 8
  %115 = load double, ptr @one, align 8
  %116 = fneg double %115
  store double %116, ptr @sa, align 8
  %117 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %sa.promoted = load double, ptr @sa, align 8
  br label %118

118:                                              ; preds = %122, %77
  %119 = phi double [ %124, %122 ], [ %sa.promoted, %77 ]
  %.promoted28 = phi double [ %123, %122 ], [ %114, %77 ]
  %120 = phi i32 [ %125, %122 ], [ 1, %77 ]
  %121 = icmp sle i32 %120, %106
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = fneg double %.promoted28
  %124 = fadd double %119, %123
  store double %124, ptr @sa, align 8
  %125 = add nsw i32 %120, 1
  br label %118, !llvm.loop !11

126:                                              ; preds = %118
  store i32 %120, ptr %9, align 4
  store double %.promoted28, ptr %2, align 8
  %127 = call i32 @dtime(ptr noundef @TimeArray)
  %128 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %129 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %130 = fmul double %128, %129
  store double %130, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %131 = fcmp olt double %130, 0.000000e+00
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  br label %133

133:                                              ; preds = %132, %126
  %134 = sitofp i32 %106 to double
  store double %134, ptr @sc, align 8
  %135 = load double, ptr @sa, align 8
  store double %135, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  store double 0.000000e+00, ptr %6, align 8
  %136 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %137 = load double, ptr @two, align 8
  %sa.promoted30 = load double, ptr @sa, align 8
  br label %138

138:                                              ; preds = %147, %133
  %139 = phi double [ %155, %147 ], [ 0.000000e+00, %133 ]
  %140 = phi double [ %153, %147 ], [ 0.000000e+00, %133 ]
  %141 = phi double [ %152, %147 ], [ 0.000000e+00, %133 ]
  %142 = phi double [ %150, %147 ], [ %135, %133 ]
  %143 = phi double [ %149, %147 ], [ %sa.promoted30, %133 ]
  %144 = phi double [ %148, %147 ], [ %.promoted28, %133 ]
  %145 = phi i32 [ %156, %147 ], [ 1, %133 ]
  %146 = icmp sle i32 %145, %106
  br i1 %146, label %147, label %157

147:                                              ; preds = %138
  %148 = fneg double %144
  %149 = fadd double %143, %148
  store double %149, ptr @sa, align 8
  %150 = fadd double %142, %137
  %151 = fsub double %148, %150
  %152 = fadd double %141, %151
  %153 = call double @llvm.fmuladd.f64(double %144, double %150, double %140)
  %154 = fdiv double %148, %150
  %155 = fadd double %139, %154
  store double %155, ptr %5, align 8
  %156 = add nsw i32 %145, 1
  br label %138, !llvm.loop !12

157:                                              ; preds = %138
  store i32 %145, ptr %9, align 4
  store double %144, ptr %2, align 8
  store double %142, ptr %3, align 8
  store double %141, ptr %6, align 8
  store double %140, ptr %4, align 8
  %158 = call i32 @dtime(ptr noundef @TimeArray)
  %159 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %160 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %161 = fmul double %159, %160
  store double %161, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %162 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %163 = fsub double %161, %162
  %164 = fdiv double %163, 7.000000e+00
  store double %164, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %165 = load double, ptr @sa, align 8
  %166 = fmul double %165, %141
  %167 = load double, ptr @sc, align 8
  %168 = fdiv double %166, %167
  %169 = fptosi double %168 to i32
  store i32 %169, ptr %10, align 4
  %170 = load double, ptr @four, align 8
  %171 = fmul double %170, %139
  %172 = load double, ptr @five, align 8
  %173 = fdiv double %171, %172
  store double %173, ptr @sa, align 8
  %174 = fdiv double %172, %140
  %175 = fadd double %173, %174
  store double %175, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %176 = fmul double %140, %140
  %177 = fmul double %176, %140
  %178 = fdiv double 3.125000e+01, %177
  %179 = fsub double %175, %178
  store double %179, ptr @piprg, align 8
  %180 = load double, ptr @piref, align 8
  %181 = fsub double %179, %180
  store double %181, ptr @pierr, align 8
  %182 = load double, ptr @one, align 8
  %183 = fdiv double %182, %164
  store double %183, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %184 = fmul double %181, 1.000000e-30
  %185 = fmul double %163, 1.000000e-30
  %186 = fmul double %183, 1.000000e-30
  %187 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %184, double noundef %185, double noundef %186)
  %188 = load double, ptr @piref, align 8
  %189 = load double, ptr @three, align 8
  %190 = sitofp i32 %169 to double
  %191 = fmul double %189, %190
  %192 = fdiv double %188, %191
  store double %192, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %193 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %194 = sub nsw i32 %169, 1
  %195 = load double, ptr @one, align 8
  %196 = load double, ptr @A6, align 8
  %197 = load double, ptr @A5, align 8
  %198 = fneg double %197
  %199 = load double, ptr @A4, align 8
  %200 = load double, ptr @A3, align 8
  %201 = fneg double %200
  %202 = load double, ptr @A2, align 8
  %203 = load double, ptr @A1, align 8
  br label %204

204:                                              ; preds = %210, %157
  %205 = phi double [ %220, %210 ], [ 0.000000e+00, %157 ]
  %206 = phi double [ %212, %210 ], [ %142, %157 ]
  %207 = phi double [ %211, %210 ], [ 0.000000e+00, %157 ]
  %208 = phi i32 [ %221, %210 ], [ 1, %157 ]
  %209 = icmp sle i32 %208, %194
  br i1 %209, label %210, label %222

210:                                              ; preds = %204
  %211 = fadd double %207, %195
  %212 = fmul double %211, %192
  %213 = fmul double %212, %212
  store double %213, ptr %5, align 8
  %214 = call double @llvm.fmuladd.f64(double %196, double %213, double %198)
  %215 = call double @llvm.fmuladd.f64(double %214, double %213, double %199)
  %216 = call double @llvm.fmuladd.f64(double %215, double %213, double %201)
  %217 = call double @llvm.fmuladd.f64(double %216, double %213, double %202)
  %218 = call double @llvm.fmuladd.f64(double %217, double %213, double %203)
  %219 = call double @llvm.fmuladd.f64(double %218, double %213, double %195)
  %220 = call double @llvm.fmuladd.f64(double %212, double %219, double %205)
  %221 = add nsw i32 %208, 1
  br label %204, !llvm.loop !13

222:                                              ; preds = %204
  store i32 %208, ptr %9, align 4
  store double %207, ptr %4, align 8
  store double %206, ptr %3, align 8
  store double %205, ptr %2, align 8
  %223 = call i32 @dtime(ptr noundef @TimeArray)
  %224 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %225 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %226 = load double, ptr @nulltime, align 8
  %227 = fneg double %226
  %228 = call double @llvm.fmuladd.f64(double %224, double %225, double %227)
  store double %228, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %229 = load double, ptr @piref, align 8
  %230 = load double, ptr @three, align 8
  %231 = fdiv double %229, %230
  store double %231, ptr %3, align 8
  %232 = fmul double %231, %231
  store double %232, ptr %5, align 8
  %233 = load double, ptr @A6, align 8
  %234 = load double, ptr @A5, align 8
  %235 = fneg double %234
  %236 = call double @llvm.fmuladd.f64(double %233, double %232, double %235)
  %237 = load double, ptr @A4, align 8
  %238 = call double @llvm.fmuladd.f64(double %236, double %232, double %237)
  %239 = load double, ptr @A3, align 8
  %240 = fneg double %239
  %241 = call double @llvm.fmuladd.f64(double %238, double %232, double %240)
  %242 = load double, ptr @A2, align 8
  %243 = call double @llvm.fmuladd.f64(double %241, double %232, double %242)
  %244 = load double, ptr @A1, align 8
  %245 = call double @llvm.fmuladd.f64(double %243, double %232, double %244)
  %246 = load double, ptr @one, align 8
  %247 = call double @llvm.fmuladd.f64(double %245, double %232, double %246)
  %248 = fmul double %231, %247
  store double %248, ptr @sa, align 8
  %249 = fdiv double %228, 1.700000e+01
  store double %249, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %250 = load double, ptr @two, align 8
  %251 = call double @llvm.fmuladd.f64(double %250, double %205, double %248)
  %252 = fmul double %192, %251
  %253 = fdiv double %252, %250
  store double %253, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %254 = fsub double %253, 5.000000e-01
  store double %254, ptr @sc, align 8
  %255 = fdiv double %246, %249
  store double %255, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %256 = fmul double %254, 1.000000e-30
  %257 = fmul double %228, 1.000000e-30
  %258 = fmul double %255, 1.000000e-30
  %259 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %256, double noundef %257, double noundef %258)
  %260 = load double, ptr @A3, align 8
  %261 = fneg double %260
  store double %261, ptr @A3, align 8
  %262 = load double, ptr @A5, align 8
  %263 = fneg double %262
  store double %263, ptr @A5, align 8
  %264 = load double, ptr @piref, align 8
  %265 = load double, ptr @three, align 8
  %266 = fmul double %265, %190
  %267 = fdiv double %264, %266
  store double %267, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %268 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %269 = load double, ptr @B6, align 8
  %270 = load double, ptr @B5, align 8
  %271 = load double, ptr @B4, align 8
  %272 = load double, ptr @B3, align 8
  %273 = load double, ptr @B2, align 8
  %274 = load double, ptr @B1, align 8
  %275 = load double, ptr @one, align 8
  br label %276

276:                                              ; preds = %281, %222
  %277 = phi double [ %291, %281 ], [ 0.000000e+00, %222 ]
  %278 = phi double [ %283, %281 ], [ %231, %222 ]
  %279 = phi i32 [ %292, %281 ], [ 1, %222 ]
  %280 = icmp sle i32 %279, %194
  br i1 %280, label %281, label %293

281:                                              ; preds = %276
  %282 = sitofp i32 %279 to double
  %283 = fmul double %282, %267
  %284 = fmul double %283, %283
  store double %284, ptr %5, align 8
  %285 = call double @llvm.fmuladd.f64(double %269, double %284, double %270)
  %286 = call double @llvm.fmuladd.f64(double %284, double %285, double %271)
  %287 = call double @llvm.fmuladd.f64(double %284, double %286, double %272)
  %288 = call double @llvm.fmuladd.f64(double %284, double %287, double %273)
  %289 = call double @llvm.fmuladd.f64(double %284, double %288, double %274)
  %290 = call double @llvm.fmuladd.f64(double %284, double %289, double %277)
  %291 = fadd double %290, %275
  %292 = add nsw i32 %279, 1
  br label %276, !llvm.loop !14

293:                                              ; preds = %276
  store i32 %279, ptr %9, align 4
  store double %278, ptr %3, align 8
  store double %277, ptr %2, align 8
  %294 = call i32 @dtime(ptr noundef @TimeArray)
  %295 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %296 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %297 = load double, ptr @nulltime, align 8
  %298 = fneg double %297
  %299 = call double @llvm.fmuladd.f64(double %295, double %296, double %298)
  store double %299, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %300 = load double, ptr @piref, align 8
  %301 = load double, ptr @three, align 8
  %302 = fdiv double %300, %301
  store double %302, ptr %3, align 8
  %303 = fmul double %302, %302
  store double %303, ptr %5, align 8
  %304 = load double, ptr @B6, align 8
  %305 = load double, ptr @B5, align 8
  %306 = call double @llvm.fmuladd.f64(double %304, double %303, double %305)
  %307 = load double, ptr @B4, align 8
  %308 = call double @llvm.fmuladd.f64(double %303, double %306, double %307)
  %309 = load double, ptr @B3, align 8
  %310 = call double @llvm.fmuladd.f64(double %303, double %308, double %309)
  %311 = load double, ptr @B2, align 8
  %312 = call double @llvm.fmuladd.f64(double %303, double %310, double %311)
  %313 = load double, ptr @B1, align 8
  %314 = call double @llvm.fmuladd.f64(double %303, double %312, double %313)
  %315 = load double, ptr @one, align 8
  %316 = call double @llvm.fmuladd.f64(double %303, double %314, double %315)
  store double %316, ptr @sa, align 8
  %317 = fdiv double %299, 1.500000e+01
  store double %317, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %318 = fadd double %316, %315
  %319 = load double, ptr @two, align 8
  %320 = call double @llvm.fmuladd.f64(double %319, double %277, double %318)
  %321 = fmul double %267, %320
  %322 = fdiv double %321, %319
  store double %322, ptr @sa, align 8
  store double %302, ptr %3, align 8
  store double %303, ptr %5, align 8
  %323 = load double, ptr @A6, align 8
  %324 = load double, ptr @A5, align 8
  %325 = call double @llvm.fmuladd.f64(double %323, double %303, double %324)
  %326 = load double, ptr @A4, align 8
  %327 = call double @llvm.fmuladd.f64(double %325, double %303, double %326)
  %328 = load double, ptr @A3, align 8
  %329 = call double @llvm.fmuladd.f64(double %327, double %303, double %328)
  %330 = load double, ptr @A2, align 8
  %331 = call double @llvm.fmuladd.f64(double %329, double %303, double %330)
  %332 = load double, ptr @A1, align 8
  %333 = call double @llvm.fmuladd.f64(double %331, double %303, double %332)
  %334 = load double, ptr @A0, align 8
  %335 = call double @llvm.fmuladd.f64(double %333, double %303, double %334)
  %336 = fmul double %302, %335
  store double %336, ptr @sb, align 8
  %337 = fsub double %322, %336
  store double %337, ptr @sc, align 8
  %338 = fdiv double %315, %317
  store double %338, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %339 = fmul double %337, 1.000000e-30
  %340 = fmul double %299, 1.000000e-30
  %341 = fmul double %338, 1.000000e-30
  %342 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %339, double noundef %340, double noundef %341)
  %343 = load double, ptr @piref, align 8
  %344 = load double, ptr @three, align 8
  %345 = fmul double %344, %190
  %346 = fdiv double %343, %345
  store double %346, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %347 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %348 = load double, ptr @A6, align 8
  %349 = load double, ptr @A5, align 8
  %350 = load double, ptr @A4, align 8
  %351 = load double, ptr @A3, align 8
  %352 = load double, ptr @A2, align 8
  %353 = load double, ptr @A1, align 8
  %354 = load double, ptr @one, align 8
  %355 = load double, ptr @B6, align 8
  %356 = load double, ptr @B5, align 8
  %357 = load double, ptr @B4, align 8
  %358 = load double, ptr @B3, align 8
  %359 = load double, ptr @B2, align 8
  %360 = load double, ptr @B1, align 8
  br label %361

361:                                              ; preds = %367, %293
  %362 = phi double [ %385, %367 ], [ 0.000000e+00, %293 ]
  %363 = phi double [ %377, %367 ], [ 0.000000e+00, %293 ]
  %364 = phi double [ %369, %367 ], [ %302, %293 ]
  %365 = phi i32 [ %386, %367 ], [ 1, %293 ]
  %366 = icmp sle i32 %365, %194
  br i1 %366, label %367, label %387

367:                                              ; preds = %361
  %368 = sitofp i32 %365 to double
  %369 = fmul double %368, %346
  %370 = fmul double %369, %369
  store double %370, ptr %5, align 8
  %371 = call double @llvm.fmuladd.f64(double %348, double %370, double %349)
  %372 = call double @llvm.fmuladd.f64(double %371, double %370, double %350)
  %373 = call double @llvm.fmuladd.f64(double %372, double %370, double %351)
  %374 = call double @llvm.fmuladd.f64(double %373, double %370, double %352)
  %375 = call double @llvm.fmuladd.f64(double %374, double %370, double %353)
  %376 = call double @llvm.fmuladd.f64(double %375, double %370, double %354)
  %377 = fmul double %369, %376
  %378 = call double @llvm.fmuladd.f64(double %355, double %370, double %356)
  %379 = call double @llvm.fmuladd.f64(double %370, double %378, double %357)
  %380 = call double @llvm.fmuladd.f64(double %370, double %379, double %358)
  %381 = call double @llvm.fmuladd.f64(double %370, double %380, double %359)
  %382 = call double @llvm.fmuladd.f64(double %370, double %381, double %360)
  %383 = call double @llvm.fmuladd.f64(double %370, double %382, double %354)
  %384 = fdiv double %377, %383
  %385 = fadd double %362, %384
  %386 = add nsw i32 %365, 1
  br label %361, !llvm.loop !15

387:                                              ; preds = %361
  store i32 %365, ptr %9, align 4
  store double %364, ptr %3, align 8
  store double %363, ptr %4, align 8
  store double %362, ptr %2, align 8
  %388 = call i32 @dtime(ptr noundef @TimeArray)
  %389 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %390 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %391 = load double, ptr @nulltime, align 8
  %392 = fneg double %391
  %393 = call double @llvm.fmuladd.f64(double %389, double %390, double %392)
  store double %393, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %394 = load double, ptr @piref, align 8
  %395 = load double, ptr @three, align 8
  %396 = fdiv double %394, %395
  store double %396, ptr %3, align 8
  %397 = fmul double %396, %396
  store double %397, ptr %5, align 8
  %398 = load double, ptr @A6, align 8
  %399 = load double, ptr @A5, align 8
  %400 = call double @llvm.fmuladd.f64(double %398, double %397, double %399)
  %401 = load double, ptr @A4, align 8
  %402 = call double @llvm.fmuladd.f64(double %400, double %397, double %401)
  %403 = load double, ptr @A3, align 8
  %404 = call double @llvm.fmuladd.f64(double %402, double %397, double %403)
  %405 = load double, ptr @A2, align 8
  %406 = call double @llvm.fmuladd.f64(double %404, double %397, double %405)
  %407 = load double, ptr @A1, align 8
  %408 = call double @llvm.fmuladd.f64(double %406, double %397, double %407)
  %409 = load double, ptr @one, align 8
  %410 = call double @llvm.fmuladd.f64(double %408, double %397, double %409)
  %411 = fmul double %396, %410
  store double %411, ptr @sa, align 8
  %412 = load double, ptr @B6, align 8
  %413 = load double, ptr @B5, align 8
  %414 = call double @llvm.fmuladd.f64(double %412, double %397, double %413)
  %415 = load double, ptr @B4, align 8
  %416 = call double @llvm.fmuladd.f64(double %397, double %414, double %415)
  %417 = load double, ptr @B3, align 8
  %418 = call double @llvm.fmuladd.f64(double %397, double %416, double %417)
  %419 = load double, ptr @B2, align 8
  %420 = call double @llvm.fmuladd.f64(double %397, double %418, double %419)
  %421 = load double, ptr @B1, align 8
  %422 = call double @llvm.fmuladd.f64(double %397, double %420, double %421)
  %423 = call double @llvm.fmuladd.f64(double %397, double %422, double %409)
  store double %423, ptr @sb, align 8
  %424 = fdiv double %411, %423
  store double %424, ptr @sa, align 8
  %425 = fdiv double %393, 2.900000e+01
  store double %425, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %426 = load double, ptr @two, align 8
  %427 = call double @llvm.fmuladd.f64(double %426, double %362, double %424)
  %428 = fmul double %346, %427
  %429 = fdiv double %428, %426
  store double %429, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %430 = fsub double %429, f0x3FE62E42FEFA39EF
  store double %430, ptr @sc, align 8
  %431 = fdiv double %409, %425
  store double %431, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %432 = fmul double %430, 1.000000e-30
  %433 = fmul double %393, 1.000000e-30
  %434 = fmul double %431, 1.000000e-30
  %435 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %432, double noundef %433, double noundef %434)
  %436 = load double, ptr @piref, align 8
  %437 = load double, ptr @four, align 8
  %438 = fmul double %437, %190
  %439 = fdiv double %436, %438
  store double %439, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %440 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %441 = load double, ptr @A6, align 8
  %442 = load double, ptr @A5, align 8
  %443 = load double, ptr @A4, align 8
  %444 = load double, ptr @A3, align 8
  %445 = load double, ptr @A2, align 8
  %446 = load double, ptr @A1, align 8
  %447 = load double, ptr @one, align 8
  %448 = load double, ptr @B6, align 8
  %449 = load double, ptr @B5, align 8
  %450 = load double, ptr @B4, align 8
  %451 = load double, ptr @B3, align 8
  %452 = load double, ptr @B2, align 8
  %453 = load double, ptr @B1, align 8
  br label %454

454:                                              ; preds = %461, %387
  %455 = phi double [ %464, %461 ], [ %397, %387 ]
  %456 = phi double [ %478, %461 ], [ 0.000000e+00, %387 ]
  %457 = phi double [ %471, %461 ], [ 0.000000e+00, %387 ]
  %458 = phi double [ %463, %461 ], [ %396, %387 ]
  %459 = phi i32 [ %479, %461 ], [ 1, %387 ]
  %460 = icmp sle i32 %459, %194
  br i1 %460, label %461, label %480

461:                                              ; preds = %454
  %462 = sitofp i32 %459 to double
  %463 = fmul double %462, %439
  %464 = fmul double %463, %463
  %465 = call double @llvm.fmuladd.f64(double %441, double %464, double %442)
  %466 = call double @llvm.fmuladd.f64(double %465, double %464, double %443)
  %467 = call double @llvm.fmuladd.f64(double %466, double %464, double %444)
  %468 = call double @llvm.fmuladd.f64(double %467, double %464, double %445)
  %469 = call double @llvm.fmuladd.f64(double %468, double %464, double %446)
  %470 = call double @llvm.fmuladd.f64(double %469, double %464, double %447)
  %471 = fmul double %463, %470
  %472 = call double @llvm.fmuladd.f64(double %448, double %464, double %449)
  %473 = call double @llvm.fmuladd.f64(double %464, double %472, double %450)
  %474 = call double @llvm.fmuladd.f64(double %464, double %473, double %451)
  %475 = call double @llvm.fmuladd.f64(double %464, double %474, double %452)
  %476 = call double @llvm.fmuladd.f64(double %464, double %475, double %453)
  %477 = call double @llvm.fmuladd.f64(double %464, double %476, double %447)
  %478 = call double @llvm.fmuladd.f64(double %471, double %477, double %456)
  %479 = add nsw i32 %459, 1
  br label %454, !llvm.loop !16

480:                                              ; preds = %454
  store i32 %459, ptr %9, align 4
  store double %458, ptr %3, align 8
  store double %457, ptr %4, align 8
  store double %456, ptr %2, align 8
  store double %455, ptr %5, align 1
  %481 = call i32 @dtime(ptr noundef @TimeArray)
  %482 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %483 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %484 = load double, ptr @nulltime, align 8
  %485 = fneg double %484
  %486 = call double @llvm.fmuladd.f64(double %482, double %483, double %485)
  store double %486, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %487 = load double, ptr @piref, align 8
  %488 = load double, ptr @four, align 8
  %489 = fdiv double %487, %488
  store double %489, ptr %3, align 8
  %490 = fmul double %489, %489
  store double %490, ptr %5, align 8
  %491 = load double, ptr @A6, align 8
  %492 = load double, ptr @A5, align 8
  %493 = call double @llvm.fmuladd.f64(double %491, double %490, double %492)
  %494 = load double, ptr @A4, align 8
  %495 = call double @llvm.fmuladd.f64(double %493, double %490, double %494)
  %496 = load double, ptr @A3, align 8
  %497 = call double @llvm.fmuladd.f64(double %495, double %490, double %496)
  %498 = load double, ptr @A2, align 8
  %499 = call double @llvm.fmuladd.f64(double %497, double %490, double %498)
  %500 = load double, ptr @A1, align 8
  %501 = call double @llvm.fmuladd.f64(double %499, double %490, double %500)
  %502 = load double, ptr @one, align 8
  %503 = call double @llvm.fmuladd.f64(double %501, double %490, double %502)
  %504 = fmul double %489, %503
  store double %504, ptr @sa, align 8
  %505 = load double, ptr @B6, align 8
  %506 = load double, ptr @B5, align 8
  %507 = call double @llvm.fmuladd.f64(double %505, double %490, double %506)
  %508 = load double, ptr @B4, align 8
  %509 = call double @llvm.fmuladd.f64(double %490, double %507, double %508)
  %510 = load double, ptr @B3, align 8
  %511 = call double @llvm.fmuladd.f64(double %490, double %509, double %510)
  %512 = load double, ptr @B2, align 8
  %513 = call double @llvm.fmuladd.f64(double %490, double %511, double %512)
  %514 = load double, ptr @B1, align 8
  %515 = call double @llvm.fmuladd.f64(double %490, double %513, double %514)
  %516 = call double @llvm.fmuladd.f64(double %490, double %515, double %502)
  store double %516, ptr @sb, align 8
  %517 = fmul double %504, %516
  store double %517, ptr @sa, align 8
  %518 = fdiv double %486, 2.900000e+01
  store double %518, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %519 = load double, ptr @two, align 8
  %520 = call double @llvm.fmuladd.f64(double %519, double %456, double %517)
  %521 = fmul double %439, %520
  %522 = fdiv double %521, %519
  store double %522, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %523 = fsub double %522, 2.500000e-01
  store double %523, ptr @sc, align 8
  %524 = fdiv double %502, %518
  store double %524, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %525 = fmul double %523, 1.000000e-30
  %526 = fmul double %486, 1.000000e-30
  %527 = fmul double %524, 1.000000e-30
  %528 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, double noundef %525, double noundef %526, double noundef %527)
  store double 0.000000e+00, ptr %2, align 8
  %529 = load double, ptr @one, align 8
  store double %529, ptr %5, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %530 = fdiv double f0x40599541F7F192A4, %190
  store double %530, ptr %4, align 8
  %531 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %532

532:                                              ; preds = %538, %480
  %533 = phi double [ %550, %538 ], [ 0.000000e+00, %480 ]
  %534 = phi double [ %541, %538 ], [ %489, %480 ]
  %535 = phi double [ %540, %538 ], [ %439, %480 ]
  %536 = phi i32 [ %551, %538 ], [ 1, %480 ]
  %537 = icmp sle i32 %536, %194
  br i1 %537, label %538, label %552

538:                                              ; preds = %532
  %539 = sitofp i32 %536 to double
  %540 = fmul double %539, %530
  %541 = fmul double %540, %540
  %542 = fadd double %540, %529
  %543 = fdiv double %529, %542
  %544 = fsub double %533, %543
  %545 = fadd double %541, %529
  %546 = fdiv double %540, %545
  %547 = fsub double %544, %546
  %548 = call double @llvm.fmuladd.f64(double %540, double %541, double %529)
  %549 = fdiv double %541, %548
  %550 = fsub double %547, %549
  %551 = add nsw i32 %536, 1
  br label %532, !llvm.loop !17

552:                                              ; preds = %532
  store i32 %536, ptr %9, align 4
  store double %535, ptr %6, align 8
  store double %534, ptr %3, align 8
  store double %533, ptr %2, align 8
  %553 = call i32 @dtime(ptr noundef @TimeArray)
  %554 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %555 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %556 = load double, ptr @nulltime, align 8
  %557 = fneg double %556
  %558 = call double @llvm.fmuladd.f64(double %554, double %555, double %557)
  store double %558, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %559 = fdiv double %558, 1.200000e+01
  store double %559, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %560 = load double, ptr @sa, align 8
  store double %560, ptr %6, align 8
  %561 = fmul double %560, %560
  store double %561, ptr %3, align 8
  %562 = fneg double %529
  %563 = fadd double %560, %529
  %564 = fdiv double %529, %563
  %565 = fsub double %562, %564
  %566 = fadd double %561, %529
  %567 = fdiv double %560, %566
  %568 = fsub double %565, %567
  %569 = call double @llvm.fmuladd.f64(double %560, double %561, double %529)
  %570 = fdiv double %561, %569
  %571 = fsub double %568, %570
  store double %571, ptr @sa, align 8
  %572 = fmul double 1.800000e+01, %530
  %573 = load double, ptr @two, align 8
  %574 = call double @llvm.fmuladd.f64(double %573, double %533, double %571)
  %575 = fmul double %572, %574
  store double %575, ptr @sa, align 8
  %576 = fptosi double %575 to i32
  %577 = mul nsw i32 -2000, %576
  store i32 %577, ptr %10, align 4
  %578 = sitofp i32 %577 to double
  %579 = load double, ptr @scale, align 8
  %580 = fdiv double %578, %579
  %581 = fptosi double %580 to i32
  store i32 %581, ptr %10, align 4
  %582 = fadd double %575, 5.002000e+02
  store double %582, ptr @sc, align 8
  %583 = load double, ptr @one, align 8
  %584 = fdiv double %583, %559
  store double %584, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %585 = fmul double %582, 1.000000e-30
  %586 = fmul double %558, 1.000000e-30
  %587 = fmul double %584, 1.000000e-30
  %588 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, double noundef %585, double noundef %586, double noundef %587)
  %589 = load double, ptr @piref, align 8
  %590 = load double, ptr @three, align 8
  %591 = sitofp i32 %581 to double
  %592 = fmul double %590, %591
  %593 = fdiv double %589, %592
  store double %593, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %594 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %595 = sub nsw i32 %581, 1
  %596 = load double, ptr @B6, align 8
  %597 = load double, ptr @B5, align 8
  %598 = load double, ptr @B4, align 8
  %599 = load double, ptr @B3, align 8
  %600 = load double, ptr @B2, align 8
  %601 = load double, ptr @B1, align 8
  %602 = load double, ptr @one, align 8
  %603 = load double, ptr @A6, align 8
  %604 = load double, ptr @A5, align 8
  %605 = load double, ptr @A4, align 8
  %606 = load double, ptr @A3, align 8
  %607 = load double, ptr @A2, align 8
  %608 = load double, ptr @A1, align 8
  br label %609

609:                                              ; preds = %616, %552
  %610 = phi double [ %634, %616 ], [ 0.000000e+00, %552 ]
  %611 = phi double [ %625, %616 ], [ 0.000000e+00, %552 ]
  %612 = phi double [ %619, %616 ], [ %529, %552 ]
  %613 = phi double [ %618, %616 ], [ %561, %552 ]
  %614 = phi i32 [ %635, %616 ], [ 1, %552 ]
  %615 = icmp sle i32 %614, %595
  br i1 %615, label %616, label %636

616:                                              ; preds = %609
  %617 = sitofp i32 %614 to double
  %618 = fmul double %617, %593
  %619 = fmul double %618, %618
  %620 = call double @llvm.fmuladd.f64(double %596, double %619, double %597)
  %621 = call double @llvm.fmuladd.f64(double %619, double %620, double %598)
  %622 = call double @llvm.fmuladd.f64(double %619, double %621, double %599)
  %623 = call double @llvm.fmuladd.f64(double %619, double %622, double %600)
  %624 = call double @llvm.fmuladd.f64(double %619, double %623, double %601)
  %625 = call double @llvm.fmuladd.f64(double %619, double %624, double %602)
  %626 = fmul double %625, %625
  %627 = fmul double %626, %618
  %628 = call double @llvm.fmuladd.f64(double %603, double %619, double %604)
  %629 = call double @llvm.fmuladd.f64(double %628, double %619, double %605)
  %630 = call double @llvm.fmuladd.f64(double %629, double %619, double %606)
  %631 = call double @llvm.fmuladd.f64(double %630, double %619, double %607)
  %632 = call double @llvm.fmuladd.f64(double %631, double %619, double %608)
  %633 = call double @llvm.fmuladd.f64(double %632, double %619, double %602)
  %634 = call double @llvm.fmuladd.f64(double %627, double %633, double %610)
  %635 = add nsw i32 %614, 1
  br label %609, !llvm.loop !18

636:                                              ; preds = %609
  store i32 %614, ptr %9, align 4
  store double %613, ptr %3, align 8
  store double %612, ptr %5, align 8
  store double %611, ptr %4, align 8
  store double %610, ptr %2, align 8
  %637 = call i32 @dtime(ptr noundef @TimeArray)
  %638 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %639 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %640 = load double, ptr @nulltime, align 8
  %641 = fneg double %640
  %642 = call double @llvm.fmuladd.f64(double %638, double %639, double %641)
  store double %642, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %643 = load double, ptr @piref, align 8
  %644 = load double, ptr @three, align 8
  %645 = fdiv double %643, %644
  store double %645, ptr %3, align 8
  %646 = fmul double %645, %645
  store double %646, ptr %5, align 8
  %647 = load double, ptr @A6, align 8
  %648 = load double, ptr @A5, align 8
  %649 = call double @llvm.fmuladd.f64(double %647, double %646, double %648)
  %650 = load double, ptr @A4, align 8
  %651 = call double @llvm.fmuladd.f64(double %649, double %646, double %650)
  %652 = load double, ptr @A3, align 8
  %653 = call double @llvm.fmuladd.f64(double %651, double %646, double %652)
  %654 = load double, ptr @A2, align 8
  %655 = call double @llvm.fmuladd.f64(double %653, double %646, double %654)
  %656 = load double, ptr @A1, align 8
  %657 = call double @llvm.fmuladd.f64(double %655, double %646, double %656)
  %658 = load double, ptr @one, align 8
  %659 = call double @llvm.fmuladd.f64(double %657, double %646, double %658)
  %660 = fmul double %645, %659
  store double %660, ptr @sa, align 8
  %661 = load double, ptr @B6, align 8
  %662 = load double, ptr @B5, align 8
  %663 = call double @llvm.fmuladd.f64(double %661, double %646, double %662)
  %664 = load double, ptr @B4, align 8
  %665 = call double @llvm.fmuladd.f64(double %646, double %663, double %664)
  %666 = load double, ptr @B3, align 8
  %667 = call double @llvm.fmuladd.f64(double %646, double %665, double %666)
  %668 = load double, ptr @B2, align 8
  %669 = call double @llvm.fmuladd.f64(double %646, double %667, double %668)
  %670 = load double, ptr @B1, align 8
  %671 = call double @llvm.fmuladd.f64(double %646, double %669, double %670)
  %672 = call double @llvm.fmuladd.f64(double %646, double %671, double %658)
  store double %672, ptr @sb, align 8
  %673 = fmul double %660, %672
  %674 = fmul double %673, %672
  store double %674, ptr @sa, align 8
  %675 = fdiv double %642, 3.000000e+01
  store double %675, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %676 = load double, ptr @two, align 8
  %677 = call double @llvm.fmuladd.f64(double %676, double %610, double %674)
  %678 = fmul double %593, %677
  %679 = fdiv double %678, %676
  store double %679, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %680 = fsub double %679, f0x3FD2AAAAAAAAAAAB
  store double %680, ptr @sc, align 8
  %681 = fdiv double %658, %675
  store double %681, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %682 = fmul double %680, 1.000000e-30
  %683 = fmul double %642, 1.000000e-30
  %684 = fmul double %681, 1.000000e-30
  %685 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, double noundef %682, double noundef %683, double noundef %684)
  %686 = load double, ptr @five, align 8
  %687 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %688 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %689 = fsub double %687, %688
  %690 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %691 = call double @llvm.fmuladd.f64(double %686, double %689, double %690)
  %692 = fdiv double %691, 5.200000e+01
  store double %692, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %693 = load double, ptr @one, align 8
  %694 = fdiv double %693, %692
  store double %694, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %695 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %696 = fadd double %695, %690
  %697 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %698 = fadd double %696, %697
  %699 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %700 = fadd double %698, %699
  %701 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %702 = fadd double %700, %701
  store double %702, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %703 = load double, ptr @four, align 8
  %704 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %705 = call double @llvm.fmuladd.f64(double %703, double %704, double %702)
  %706 = fdiv double %705, 1.520000e+02
  store double %706, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %707 = fdiv double %693, %706
  store double %707, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %702, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %708 = fadd double %702, %704
  %709 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %710 = fadd double %708, %709
  %711 = fdiv double %710, 1.460000e+02
  store double %711, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %712 = fdiv double %693, %711
  store double %712, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %713 = fadd double %690, %697
  %714 = fadd double %713, %701
  %715 = fadd double %714, %709
  %716 = fdiv double %715, 9.100000e+01
  store double %716, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %717 = fdiv double %693, %716
  store double %717, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %718 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %719 = load i32, ptr %10, align 4
  %720 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %719)
  %721 = load double, ptr @nulltime, align 8
  %722 = fmul double %721, 1.000000e-30
  %723 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, double noundef %722)
  %724 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %725 = fmul double %724, 1.000000e-30
  %726 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, double noundef %725)
  %727 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %728 = fmul double %727, 1.000000e-30
  %729 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, double noundef %728)
  %730 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %731 = fmul double %730, 1.000000e-30
  %732 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, double noundef %731)
  %733 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %734 = fmul double %733, 1.000000e-30
  %735 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, double noundef %734)
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
