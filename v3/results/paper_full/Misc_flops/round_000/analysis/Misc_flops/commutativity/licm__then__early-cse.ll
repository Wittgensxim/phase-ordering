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
  %.promoted17 = load i32, ptr %9, align 4
  %.promoted = load double, ptr %3, align 8
  br label %21

21:                                               ; preds = %63, %0
  %.lcssa419 = phi double [ %42, %63 ], [ %.promoted, %0 ]
  %.lcssa18 = phi i32 [ %44, %63 ], [ %.promoted17, %0 ]
  %.lcssa216 = phi double [ %43, %63 ], [ %.promoted15, %0 ]
  %.lcssa614 = phi double [ %41, %63 ], [ %.promoted13, %0 ]
  %22 = phi double [ %31, %63 ], [ %.promoted10, %0 ]
  %23 = phi i32 [ %28, %63 ], [ %.promoted7, %0 ]
  %24 = load double, ptr @sa, align 8
  %25 = load double, ptr @TLimit, align 8
  %26 = fcmp olt double %24, %25
  br i1 %26, label %27, label %.loopexit

27:                                               ; preds = %21
  %28 = mul nsw i32 2, %23
  %29 = load double, ptr @one, align 8
  %30 = sitofp i32 %28 to double
  %31 = fdiv double %29, %30
  store double %29, ptr %5, align 8
  %32 = call i32 @dtime(ptr noundef @TimeArray)
  %33 = sub nsw i32 %28, 1
  %34 = load double, ptr %5, align 8
  %35 = load double, ptr @D1, align 8
  %36 = load double, ptr @D2, align 8
  %37 = load double, ptr @D3, align 8
  %38 = load double, ptr @E2, align 8
  %39 = load double, ptr @E3, align 8
  br label %40

40:                                               ; preds = %56, %27
  %41 = phi double [ %55, %56 ], [ 0.000000e+00, %27 ]
  %42 = phi double [ %48, %56 ], [ %.lcssa419, %27 ]
  %43 = phi double [ %47, %56 ], [ 0.000000e+00, %27 ]
  %44 = phi i32 [ %57, %56 ], [ 1, %27 ]
  %45 = icmp sle i32 %44, %33
  br i1 %45, label %46, label %58

46:                                               ; preds = %40
  %47 = fadd double %43, %34
  %48 = fmul double %47, %31
  %49 = call double @llvm.fmuladd.f64(double %48, double %37, double %36)
  %50 = call double @llvm.fmuladd.f64(double %48, double %49, double %35)
  %51 = call double @llvm.fmuladd.f64(double %48, double %39, double %38)
  %52 = call double @llvm.fmuladd.f64(double %48, double %51, double %35)
  %53 = call double @llvm.fmuladd.f64(double %48, double %52, double %34)
  %54 = fdiv double %50, %53
  %55 = fadd double %41, %54
  br label %56

56:                                               ; preds = %46
  %57 = add nsw i32 %44, 1
  br label %40, !llvm.loop !7

58:                                               ; preds = %40
  %59 = call i32 @dtime(ptr noundef @TimeArray)
  %60 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %60, ptr @sa, align 8
  %61 = icmp eq i32 %28, %20
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 %28, ptr %11, align 4
  store double %31, ptr %6, align 8
  store double %41, ptr %2, align 8
  store double %43, ptr %4, align 8
  store i32 %44, ptr %9, align 4
  store double %42, ptr %3, align 8
  br label %64

63:                                               ; preds = %58
  br label %21, !llvm.loop !9

.loopexit:                                        ; preds = %21
  store i32 %23, ptr %11, align 4
  store double %22, ptr %6, align 8
  store double %.lcssa614, ptr %2, align 8
  store double %.lcssa216, ptr %4, align 8
  store i32 %.lcssa18, ptr %9, align 4
  store double %.lcssa419, ptr %3, align 8
  br label %64

64:                                               ; preds = %.loopexit, %62
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %65 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %66 = load i32, ptr %11, align 4
  %67 = sub nsw i32 %66, 1
  br label %68

68:                                               ; preds = %72, %64
  %69 = phi i32 [ %73, %72 ], [ 1, %64 ]
  %70 = icmp sle i32 %69, %67
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  br label %72

72:                                               ; preds = %71
  %73 = add nsw i32 %69, 1
  br label %68, !llvm.loop !10

74:                                               ; preds = %68
  store i32 %69, ptr %9, align 4
  %75 = call i32 @dtime(ptr noundef @TimeArray)
  %76 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %77 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %78 = fmul double %76, %77
  store double %78, ptr @nulltime, align 8
  %79 = fcmp olt double %78, 0.000000e+00
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store double 0.000000e+00, ptr @nulltime, align 8
  br label %81

81:                                               ; preds = %80, %74
  %82 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %83 = load double, ptr @sa, align 8
  %84 = load double, ptr @nulltime, align 8
  %85 = fneg double %84
  %86 = call double @llvm.fmuladd.f64(double %82, double %83, double %85)
  store double %86, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %87 = load double, ptr @D1, align 8
  %88 = load double, ptr @D2, align 8
  %89 = fadd double %87, %88
  %90 = load double, ptr @D3, align 8
  %91 = fadd double %89, %90
  %92 = load double, ptr @one, align 8
  %93 = fadd double %92, %87
  %94 = load double, ptr @E2, align 8
  %95 = fadd double %93, %94
  %96 = load double, ptr @E3, align 8
  %97 = fadd double %95, %96
  %98 = fdiv double %91, %97
  store double %98, ptr @sa, align 8
  %99 = load double, ptr @D1, align 8
  store double %99, ptr @sb, align 8
  %100 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %101 = fdiv double %100, 1.400000e+01
  store double %101, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %102 = load double, ptr %6, align 8
  %103 = load double, ptr @sa, align 8
  %104 = load double, ptr @sb, align 8
  %105 = fadd double %103, %104
  %106 = load double, ptr @two, align 8
  %107 = load double, ptr %2, align 8
  %108 = call double @llvm.fmuladd.f64(double %106, double %107, double %105)
  %109 = fmul double %102, %108
  %110 = fdiv double %109, %106
  store double %110, ptr @sa, align 8
  %111 = load double, ptr @one, align 8
  %112 = fdiv double %111, %110
  store double %112, ptr @sb, align 8
  %113 = fptosi double %112 to i32
  %114 = mul nsw i32 40000, %113
  %115 = sitofp i32 %114 to double
  %116 = load double, ptr @scale, align 8
  %117 = fdiv double %115, %116
  %118 = fptosi double %117 to i32
  store i32 %118, ptr %11, align 4
  %119 = load double, ptr @sb, align 8
  %120 = fsub double %119, 2.520000e+01
  store double %120, ptr @sc, align 8
  %121 = load double, ptr @one, align 8
  %122 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %123 = fdiv double %121, %122
  store double %123, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %124 = load double, ptr @sc, align 8
  %125 = fmul double %124, 1.000000e-30
  %126 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %127 = fmul double %126, 1.000000e-30
  %128 = fmul double %123, 1.000000e-30
  %129 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %125, double noundef %127, double noundef %128)
  %130 = load i32, ptr %11, align 4
  store i32 %130, ptr %10, align 4
  %131 = load double, ptr @five, align 8
  %132 = fneg double %131
  store double %132, ptr %2, align 8
  %133 = load double, ptr @one, align 8
  %134 = fneg double %133
  store double %134, ptr @sa, align 8
  %135 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %136 = load i32, ptr %10, align 4
  %.promoted24 = load double, ptr %2, align 8
  %sa.promoted = load double, ptr @sa, align 8
  br label %137

137:                                              ; preds = %145, %81
  %138 = phi double [ %144, %145 ], [ %sa.promoted, %81 ]
  %139 = phi double [ %143, %145 ], [ %.promoted24, %81 ]
  %140 = phi i32 [ %146, %145 ], [ 1, %81 ]
  %141 = icmp sle i32 %140, %136
  br i1 %141, label %142, label %147

142:                                              ; preds = %137
  %143 = fneg double %139
  %144 = fadd double %138, %143
  store double %144, ptr @sa, align 8
  br label %145

145:                                              ; preds = %142
  %146 = add nsw i32 %140, 1
  br label %137, !llvm.loop !11

147:                                              ; preds = %137
  store i32 %140, ptr %9, align 4
  store double %139, ptr %2, align 8
  %148 = call i32 @dtime(ptr noundef @TimeArray)
  %149 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %150 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %151 = fmul double %149, %150
  store double %151, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %152 = fcmp olt double %151, 0.000000e+00
  br i1 %152, label %153, label %154

153:                                              ; preds = %147
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  br label %154

154:                                              ; preds = %153, %147
  %155 = load i32, ptr %10, align 4
  %156 = sitofp i32 %155 to double
  store double %156, ptr @sc, align 8
  %157 = load double, ptr @sa, align 8
  store double %157, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  store double 0.000000e+00, ptr %6, align 8
  %158 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %159 = load i32, ptr %10, align 4
  %160 = load double, ptr @two, align 8
  %.promoted28 = load double, ptr %2, align 8
  %sa.promoted30 = load double, ptr @sa, align 8
  %.promoted31 = load double, ptr %3, align 8
  %.promoted33 = load double, ptr %6, align 8
  %.promoted35 = load double, ptr %4, align 8
  %.promoted37 = load double, ptr %5, align 8
  br label %161

161:                                              ; preds = %179, %154
  %162 = phi double [ %178, %179 ], [ %.promoted37, %154 ]
  %163 = phi double [ %176, %179 ], [ %.promoted35, %154 ]
  %164 = phi double [ %175, %179 ], [ %.promoted33, %154 ]
  %165 = phi double [ %173, %179 ], [ %.promoted31, %154 ]
  %166 = phi double [ %172, %179 ], [ %sa.promoted30, %154 ]
  %167 = phi double [ %171, %179 ], [ %.promoted28, %154 ]
  %168 = phi i32 [ %180, %179 ], [ 1, %154 ]
  %169 = icmp sle i32 %168, %159
  br i1 %169, label %170, label %181

170:                                              ; preds = %161
  %171 = fneg double %167
  %172 = fadd double %166, %171
  store double %172, ptr @sa, align 8
  %173 = fadd double %165, %160
  %174 = fsub double %171, %173
  %175 = fadd double %164, %174
  %176 = call double @llvm.fmuladd.f64(double %167, double %173, double %163)
  %177 = fdiv double %171, %173
  %178 = fadd double %162, %177
  store double %178, ptr %5, align 8
  br label %179

179:                                              ; preds = %170
  %180 = add nsw i32 %168, 1
  br label %161, !llvm.loop !12

181:                                              ; preds = %161
  store i32 %168, ptr %9, align 4
  store double %167, ptr %2, align 8
  store double %165, ptr %3, align 8
  store double %164, ptr %6, align 8
  store double %163, ptr %4, align 8
  %182 = call i32 @dtime(ptr noundef @TimeArray)
  %183 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %184 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %185 = fmul double %183, %184
  store double %185, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %186 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %187 = fsub double %185, %186
  %188 = fdiv double %187, 7.000000e+00
  store double %188, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %189 = load double, ptr @sa, align 8
  %190 = load double, ptr %6, align 8
  %191 = fmul double %189, %190
  %192 = load double, ptr @sc, align 8
  %193 = fdiv double %191, %192
  %194 = fptosi double %193 to i32
  store i32 %194, ptr %10, align 4
  %195 = load double, ptr @four, align 8
  %196 = load double, ptr %5, align 8
  %197 = fmul double %195, %196
  %198 = load double, ptr @five, align 8
  %199 = fdiv double %197, %198
  store double %199, ptr @sa, align 8
  %200 = load double, ptr @five, align 8
  %201 = load double, ptr %4, align 8
  %202 = fdiv double %200, %201
  %203 = fadd double %199, %202
  store double %203, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %204 = load double, ptr @sb, align 8
  %205 = load double, ptr %4, align 8
  %206 = fmul double %205, %205
  %207 = fmul double %206, %205
  %208 = fdiv double 3.125000e+01, %207
  %209 = fsub double %204, %208
  store double %209, ptr @piprg, align 8
  %210 = load double, ptr @piref, align 8
  %211 = fsub double %209, %210
  store double %211, ptr @pierr, align 8
  %212 = load double, ptr @one, align 8
  %213 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %214 = fdiv double %212, %213
  store double %214, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %215 = load double, ptr @pierr, align 8
  %216 = fmul double %215, 1.000000e-30
  %217 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %218 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %219 = fsub double %217, %218
  %220 = fmul double %219, 1.000000e-30
  %221 = fmul double %214, 1.000000e-30
  %222 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %216, double noundef %220, double noundef %221)
  %223 = load double, ptr @piref, align 8
  %224 = load double, ptr @three, align 8
  %225 = load i32, ptr %10, align 4
  %226 = sitofp i32 %225 to double
  %227 = fmul double %224, %226
  %228 = fdiv double %223, %227
  store double %228, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %229 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %230 = load i32, ptr %10, align 4
  %231 = sub nsw i32 %230, 1
  %232 = load double, ptr @one, align 8
  %233 = load double, ptr %6, align 8
  %234 = load double, ptr @A6, align 8
  %235 = load double, ptr @A5, align 8
  %236 = fneg double %235
  %237 = load double, ptr @A4, align 8
  %238 = load double, ptr @A3, align 8
  %239 = fneg double %238
  %240 = load double, ptr @A2, align 8
  %241 = load double, ptr @A1, align 8
  %.promoted40 = load double, ptr %4, align 8
  %.promoted42 = load double, ptr %3, align 8
  %.promoted45 = load double, ptr %2, align 8
  br label %242

242:                                              ; preds = %259, %181
  %243 = phi double [ %258, %259 ], [ %.promoted45, %181 ]
  %244 = phi double [ %250, %259 ], [ %.promoted42, %181 ]
  %245 = phi double [ %249, %259 ], [ %.promoted40, %181 ]
  %246 = phi i32 [ %260, %259 ], [ 1, %181 ]
  %247 = icmp sle i32 %246, %231
  br i1 %247, label %248, label %261

248:                                              ; preds = %242
  %249 = fadd double %245, %232
  %250 = fmul double %249, %233
  %251 = fmul double %250, %250
  store double %251, ptr %5, align 8
  %252 = call double @llvm.fmuladd.f64(double %234, double %251, double %236)
  %253 = call double @llvm.fmuladd.f64(double %252, double %251, double %237)
  %254 = call double @llvm.fmuladd.f64(double %253, double %251, double %239)
  %255 = call double @llvm.fmuladd.f64(double %254, double %251, double %240)
  %256 = call double @llvm.fmuladd.f64(double %255, double %251, double %241)
  %257 = call double @llvm.fmuladd.f64(double %256, double %251, double %232)
  %258 = call double @llvm.fmuladd.f64(double %250, double %257, double %243)
  br label %259

259:                                              ; preds = %248
  %260 = add nsw i32 %246, 1
  br label %242, !llvm.loop !13

261:                                              ; preds = %242
  store i32 %246, ptr %9, align 4
  store double %245, ptr %4, align 8
  store double %244, ptr %3, align 8
  store double %243, ptr %2, align 8
  %262 = call i32 @dtime(ptr noundef @TimeArray)
  %263 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %264 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %265 = load double, ptr @nulltime, align 8
  %266 = fneg double %265
  %267 = call double @llvm.fmuladd.f64(double %263, double %264, double %266)
  store double %267, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %268 = load double, ptr @piref, align 8
  %269 = load double, ptr @three, align 8
  %270 = fdiv double %268, %269
  store double %270, ptr %3, align 8
  %271 = fmul double %270, %270
  store double %271, ptr %5, align 8
  %272 = load double, ptr %3, align 8
  %273 = load double, ptr @A6, align 8
  %274 = load double, ptr @A5, align 8
  %275 = fneg double %274
  %276 = call double @llvm.fmuladd.f64(double %273, double %271, double %275)
  %277 = load double, ptr @A4, align 8
  %278 = call double @llvm.fmuladd.f64(double %276, double %271, double %277)
  %279 = load double, ptr @A3, align 8
  %280 = fneg double %279
  %281 = call double @llvm.fmuladd.f64(double %278, double %271, double %280)
  %282 = load double, ptr @A2, align 8
  %283 = call double @llvm.fmuladd.f64(double %281, double %271, double %282)
  %284 = load double, ptr @A1, align 8
  %285 = call double @llvm.fmuladd.f64(double %283, double %271, double %284)
  %286 = load double, ptr @one, align 8
  %287 = call double @llvm.fmuladd.f64(double %285, double %271, double %286)
  %288 = fmul double %272, %287
  store double %288, ptr @sa, align 8
  %289 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %290 = fdiv double %289, 1.700000e+01
  store double %290, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %291 = load double, ptr %6, align 8
  %292 = load double, ptr @sa, align 8
  %293 = load double, ptr @two, align 8
  %294 = load double, ptr %2, align 8
  %295 = call double @llvm.fmuladd.f64(double %293, double %294, double %292)
  %296 = fmul double %291, %295
  %297 = fdiv double %296, %293
  store double %297, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %298 = load double, ptr @sa, align 8
  %299 = fsub double %298, 5.000000e-01
  store double %299, ptr @sc, align 8
  %300 = load double, ptr @one, align 8
  %301 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %302 = fdiv double %300, %301
  store double %302, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %303 = load double, ptr @sc, align 8
  %304 = fmul double %303, 1.000000e-30
  %305 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %306 = fmul double %305, 1.000000e-30
  %307 = fmul double %302, 1.000000e-30
  %308 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %304, double noundef %306, double noundef %307)
  %309 = load double, ptr @A3, align 8
  %310 = fneg double %309
  store double %310, ptr @A3, align 8
  %311 = load double, ptr @A5, align 8
  %312 = fneg double %311
  store double %312, ptr @A5, align 8
  %313 = load double, ptr @piref, align 8
  %314 = load double, ptr @three, align 8
  %315 = load i32, ptr %10, align 4
  %316 = sitofp i32 %315 to double
  %317 = fmul double %314, %316
  %318 = fdiv double %313, %317
  store double %318, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %319 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %320 = load i32, ptr %10, align 4
  %321 = sub nsw i32 %320, 1
  %322 = load double, ptr %6, align 8
  %323 = load double, ptr @B6, align 8
  %324 = load double, ptr @B5, align 8
  %325 = load double, ptr @B4, align 8
  %326 = load double, ptr @B3, align 8
  %327 = load double, ptr @B2, align 8
  %328 = load double, ptr @B1, align 8
  %329 = load double, ptr @one, align 8
  %.promoted49 = load double, ptr %3, align 8
  %.promoted52 = load double, ptr %2, align 8
  br label %330

330:                                              ; preds = %346, %261
  %331 = phi double [ %345, %346 ], [ %.promoted52, %261 ]
  %332 = phi double [ %337, %346 ], [ %.promoted49, %261 ]
  %333 = phi i32 [ %347, %346 ], [ 1, %261 ]
  %334 = icmp sle i32 %333, %321
  br i1 %334, label %335, label %348

335:                                              ; preds = %330
  %336 = sitofp i32 %333 to double
  %337 = fmul double %336, %322
  %338 = fmul double %337, %337
  store double %338, ptr %5, align 8
  %339 = call double @llvm.fmuladd.f64(double %323, double %338, double %324)
  %340 = call double @llvm.fmuladd.f64(double %338, double %339, double %325)
  %341 = call double @llvm.fmuladd.f64(double %338, double %340, double %326)
  %342 = call double @llvm.fmuladd.f64(double %338, double %341, double %327)
  %343 = call double @llvm.fmuladd.f64(double %338, double %342, double %328)
  %344 = call double @llvm.fmuladd.f64(double %338, double %343, double %331)
  %345 = fadd double %344, %329
  br label %346

346:                                              ; preds = %335
  %347 = add nsw i32 %333, 1
  br label %330, !llvm.loop !14

348:                                              ; preds = %330
  store i32 %333, ptr %9, align 4
  store double %332, ptr %3, align 8
  store double %331, ptr %2, align 8
  %349 = call i32 @dtime(ptr noundef @TimeArray)
  %350 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %351 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %352 = load double, ptr @nulltime, align 8
  %353 = fneg double %352
  %354 = call double @llvm.fmuladd.f64(double %350, double %351, double %353)
  store double %354, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %355 = load double, ptr @piref, align 8
  %356 = load double, ptr @three, align 8
  %357 = fdiv double %355, %356
  store double %357, ptr %3, align 8
  %358 = fmul double %357, %357
  store double %358, ptr %5, align 8
  %359 = load double, ptr @B6, align 8
  %360 = load double, ptr @B5, align 8
  %361 = call double @llvm.fmuladd.f64(double %359, double %358, double %360)
  %362 = load double, ptr @B4, align 8
  %363 = call double @llvm.fmuladd.f64(double %358, double %361, double %362)
  %364 = load double, ptr @B3, align 8
  %365 = call double @llvm.fmuladd.f64(double %358, double %363, double %364)
  %366 = load double, ptr @B2, align 8
  %367 = call double @llvm.fmuladd.f64(double %358, double %365, double %366)
  %368 = load double, ptr @B1, align 8
  %369 = call double @llvm.fmuladd.f64(double %358, double %367, double %368)
  %370 = load double, ptr @one, align 8
  %371 = call double @llvm.fmuladd.f64(double %358, double %369, double %370)
  store double %371, ptr @sa, align 8
  %372 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %373 = fdiv double %372, 1.500000e+01
  store double %373, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %374 = load double, ptr %6, align 8
  %375 = load double, ptr @sa, align 8
  %376 = load double, ptr @one, align 8
  %377 = fadd double %375, %376
  %378 = load double, ptr @two, align 8
  %379 = load double, ptr %2, align 8
  %380 = call double @llvm.fmuladd.f64(double %378, double %379, double %377)
  %381 = fmul double %374, %380
  %382 = fdiv double %381, %378
  store double %382, ptr @sa, align 8
  %383 = load double, ptr @piref, align 8
  %384 = load double, ptr @three, align 8
  %385 = fdiv double %383, %384
  store double %385, ptr %3, align 8
  %386 = fmul double %385, %385
  store double %386, ptr %5, align 8
  %387 = load double, ptr %3, align 8
  %388 = load double, ptr @A6, align 8
  %389 = load double, ptr @A5, align 8
  %390 = call double @llvm.fmuladd.f64(double %388, double %386, double %389)
  %391 = load double, ptr @A4, align 8
  %392 = call double @llvm.fmuladd.f64(double %390, double %386, double %391)
  %393 = load double, ptr @A3, align 8
  %394 = call double @llvm.fmuladd.f64(double %392, double %386, double %393)
  %395 = load double, ptr @A2, align 8
  %396 = call double @llvm.fmuladd.f64(double %394, double %386, double %395)
  %397 = load double, ptr @A1, align 8
  %398 = call double @llvm.fmuladd.f64(double %396, double %386, double %397)
  %399 = load double, ptr @A0, align 8
  %400 = call double @llvm.fmuladd.f64(double %398, double %386, double %399)
  %401 = fmul double %387, %400
  store double %401, ptr @sb, align 8
  %402 = load double, ptr @sa, align 8
  %403 = fsub double %402, %401
  store double %403, ptr @sc, align 8
  %404 = load double, ptr @one, align 8
  %405 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %406 = fdiv double %404, %405
  store double %406, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %407 = load double, ptr @sc, align 8
  %408 = fmul double %407, 1.000000e-30
  %409 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %410 = fmul double %409, 1.000000e-30
  %411 = fmul double %406, 1.000000e-30
  %412 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %408, double noundef %410, double noundef %411)
  %413 = load double, ptr @piref, align 8
  %414 = load double, ptr @three, align 8
  %415 = load i32, ptr %10, align 4
  %416 = sitofp i32 %415 to double
  %417 = fmul double %414, %416
  %418 = fdiv double %413, %417
  store double %418, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %419 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %420 = load i32, ptr %10, align 4
  %421 = sub nsw i32 %420, 1
  %422 = load double, ptr %6, align 8
  %423 = load double, ptr @A6, align 8
  %424 = load double, ptr @A5, align 8
  %425 = load double, ptr @A4, align 8
  %426 = load double, ptr @A3, align 8
  %427 = load double, ptr @A2, align 8
  %428 = load double, ptr @A1, align 8
  %429 = load double, ptr @one, align 8
  %430 = load double, ptr @B6, align 8
  %431 = load double, ptr @B5, align 8
  %432 = load double, ptr @B4, align 8
  %433 = load double, ptr @B3, align 8
  %434 = load double, ptr @B2, align 8
  %435 = load double, ptr @B1, align 8
  %.promoted56 = load double, ptr %3, align 8
  %.promoted59 = load double, ptr %4, align 8
  %.promoted61 = load double, ptr %2, align 8
  br label %436

436:                                              ; preds = %461, %348
  %437 = phi double [ %460, %461 ], [ %.promoted61, %348 ]
  %438 = phi double [ %452, %461 ], [ %.promoted59, %348 ]
  %439 = phi double [ %444, %461 ], [ %.promoted56, %348 ]
  %440 = phi i32 [ %462, %461 ], [ 1, %348 ]
  %441 = icmp sle i32 %440, %421
  br i1 %441, label %442, label %463

442:                                              ; preds = %436
  %443 = sitofp i32 %440 to double
  %444 = fmul double %443, %422
  %445 = fmul double %444, %444
  store double %445, ptr %5, align 8
  %446 = call double @llvm.fmuladd.f64(double %423, double %445, double %424)
  %447 = call double @llvm.fmuladd.f64(double %446, double %445, double %425)
  %448 = call double @llvm.fmuladd.f64(double %447, double %445, double %426)
  %449 = call double @llvm.fmuladd.f64(double %448, double %445, double %427)
  %450 = call double @llvm.fmuladd.f64(double %449, double %445, double %428)
  %451 = call double @llvm.fmuladd.f64(double %450, double %445, double %429)
  %452 = fmul double %444, %451
  %453 = call double @llvm.fmuladd.f64(double %430, double %445, double %431)
  %454 = call double @llvm.fmuladd.f64(double %445, double %453, double %432)
  %455 = call double @llvm.fmuladd.f64(double %445, double %454, double %433)
  %456 = call double @llvm.fmuladd.f64(double %445, double %455, double %434)
  %457 = call double @llvm.fmuladd.f64(double %445, double %456, double %435)
  %458 = call double @llvm.fmuladd.f64(double %445, double %457, double %429)
  %459 = fdiv double %452, %458
  %460 = fadd double %437, %459
  br label %461

461:                                              ; preds = %442
  %462 = add nsw i32 %440, 1
  br label %436, !llvm.loop !15

463:                                              ; preds = %436
  store i32 %440, ptr %9, align 4
  store double %439, ptr %3, align 8
  store double %438, ptr %4, align 8
  store double %437, ptr %2, align 8
  %464 = call i32 @dtime(ptr noundef @TimeArray)
  %465 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %466 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %467 = load double, ptr @nulltime, align 8
  %468 = fneg double %467
  %469 = call double @llvm.fmuladd.f64(double %465, double %466, double %468)
  store double %469, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %470 = load double, ptr @piref, align 8
  %471 = load double, ptr @three, align 8
  %472 = fdiv double %470, %471
  store double %472, ptr %3, align 8
  %473 = fmul double %472, %472
  store double %473, ptr %5, align 8
  %474 = load double, ptr %3, align 8
  %475 = load double, ptr @A6, align 8
  %476 = load double, ptr @A5, align 8
  %477 = call double @llvm.fmuladd.f64(double %475, double %473, double %476)
  %478 = load double, ptr @A4, align 8
  %479 = call double @llvm.fmuladd.f64(double %477, double %473, double %478)
  %480 = load double, ptr @A3, align 8
  %481 = call double @llvm.fmuladd.f64(double %479, double %473, double %480)
  %482 = load double, ptr @A2, align 8
  %483 = call double @llvm.fmuladd.f64(double %481, double %473, double %482)
  %484 = load double, ptr @A1, align 8
  %485 = call double @llvm.fmuladd.f64(double %483, double %473, double %484)
  %486 = load double, ptr @one, align 8
  %487 = call double @llvm.fmuladd.f64(double %485, double %473, double %486)
  %488 = fmul double %474, %487
  store double %488, ptr @sa, align 8
  %489 = load double, ptr %5, align 8
  %490 = load double, ptr @B6, align 8
  %491 = load double, ptr @B5, align 8
  %492 = call double @llvm.fmuladd.f64(double %490, double %489, double %491)
  %493 = load double, ptr @B4, align 8
  %494 = call double @llvm.fmuladd.f64(double %489, double %492, double %493)
  %495 = load double, ptr @B3, align 8
  %496 = call double @llvm.fmuladd.f64(double %489, double %494, double %495)
  %497 = load double, ptr @B2, align 8
  %498 = call double @llvm.fmuladd.f64(double %489, double %496, double %497)
  %499 = load double, ptr @B1, align 8
  %500 = call double @llvm.fmuladd.f64(double %489, double %498, double %499)
  %501 = load double, ptr @one, align 8
  %502 = call double @llvm.fmuladd.f64(double %489, double %500, double %501)
  store double %502, ptr @sb, align 8
  %503 = load double, ptr @sa, align 8
  %504 = fdiv double %503, %502
  store double %504, ptr @sa, align 8
  %505 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %506 = fdiv double %505, 2.900000e+01
  store double %506, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %507 = load double, ptr %6, align 8
  %508 = load double, ptr @sa, align 8
  %509 = load double, ptr @two, align 8
  %510 = load double, ptr %2, align 8
  %511 = call double @llvm.fmuladd.f64(double %509, double %510, double %508)
  %512 = fmul double %507, %511
  %513 = fdiv double %512, %509
  store double %513, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %514 = load double, ptr @sa, align 8
  %515 = fsub double %514, f0x3FE62E42FEFA39EF
  store double %515, ptr @sc, align 8
  %516 = load double, ptr @one, align 8
  %517 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %518 = fdiv double %516, %517
  store double %518, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %519 = load double, ptr @sc, align 8
  %520 = fmul double %519, 1.000000e-30
  %521 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %522 = fmul double %521, 1.000000e-30
  %523 = fmul double %518, 1.000000e-30
  %524 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %520, double noundef %522, double noundef %523)
  %525 = load double, ptr @piref, align 8
  %526 = load double, ptr @four, align 8
  %527 = load i32, ptr %10, align 4
  %528 = sitofp i32 %527 to double
  %529 = fmul double %526, %528
  %530 = fdiv double %525, %529
  store double %530, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %531 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %532 = load i32, ptr %10, align 4
  %533 = sub nsw i32 %532, 1
  %534 = load double, ptr %6, align 8
  %535 = load double, ptr @A6, align 8
  %536 = load double, ptr @A5, align 8
  %537 = load double, ptr @A4, align 8
  %538 = load double, ptr @A3, align 8
  %539 = load double, ptr @A2, align 8
  %540 = load double, ptr @A1, align 8
  %541 = load double, ptr @one, align 8
  %542 = load double, ptr @B6, align 8
  %543 = load double, ptr @B5, align 8
  %544 = load double, ptr @B4, align 8
  %545 = load double, ptr @B3, align 8
  %546 = load double, ptr @B2, align 8
  %547 = load double, ptr @B1, align 8
  %.promoted65 = load double, ptr %3, align 8
  %.promoted68 = load double, ptr %4, align 8
  %.promoted70 = load double, ptr %2, align 8
  %.promoted72 = load double, ptr %5, align 1
  br label %548

548:                                              ; preds = %573, %463
  %549 = phi double [ %558, %573 ], [ %.promoted72, %463 ]
  %550 = phi double [ %572, %573 ], [ %.promoted70, %463 ]
  %551 = phi double [ %565, %573 ], [ %.promoted68, %463 ]
  %552 = phi double [ %557, %573 ], [ %.promoted65, %463 ]
  %553 = phi i32 [ %574, %573 ], [ 1, %463 ]
  %554 = icmp sle i32 %553, %533
  br i1 %554, label %555, label %575

555:                                              ; preds = %548
  %556 = sitofp i32 %553 to double
  %557 = fmul double %556, %534
  %558 = fmul double %557, %557
  %559 = call double @llvm.fmuladd.f64(double %535, double %558, double %536)
  %560 = call double @llvm.fmuladd.f64(double %559, double %558, double %537)
  %561 = call double @llvm.fmuladd.f64(double %560, double %558, double %538)
  %562 = call double @llvm.fmuladd.f64(double %561, double %558, double %539)
  %563 = call double @llvm.fmuladd.f64(double %562, double %558, double %540)
  %564 = call double @llvm.fmuladd.f64(double %563, double %558, double %541)
  %565 = fmul double %557, %564
  %566 = call double @llvm.fmuladd.f64(double %542, double %558, double %543)
  %567 = call double @llvm.fmuladd.f64(double %558, double %566, double %544)
  %568 = call double @llvm.fmuladd.f64(double %558, double %567, double %545)
  %569 = call double @llvm.fmuladd.f64(double %558, double %568, double %546)
  %570 = call double @llvm.fmuladd.f64(double %558, double %569, double %547)
  %571 = call double @llvm.fmuladd.f64(double %558, double %570, double %541)
  %572 = call double @llvm.fmuladd.f64(double %565, double %571, double %550)
  br label %573

573:                                              ; preds = %555
  %574 = add nsw i32 %553, 1
  br label %548, !llvm.loop !16

575:                                              ; preds = %548
  store i32 %553, ptr %9, align 4
  store double %552, ptr %3, align 8
  store double %551, ptr %4, align 8
  store double %550, ptr %2, align 8
  store double %549, ptr %5, align 1
  %576 = call i32 @dtime(ptr noundef @TimeArray)
  %577 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %578 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %579 = load double, ptr @nulltime, align 8
  %580 = fneg double %579
  %581 = call double @llvm.fmuladd.f64(double %577, double %578, double %580)
  store double %581, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %582 = load double, ptr @piref, align 8
  %583 = load double, ptr @four, align 8
  %584 = fdiv double %582, %583
  store double %584, ptr %3, align 8
  %585 = fmul double %584, %584
  store double %585, ptr %5, align 8
  %586 = load double, ptr %3, align 8
  %587 = load double, ptr @A6, align 8
  %588 = load double, ptr @A5, align 8
  %589 = call double @llvm.fmuladd.f64(double %587, double %585, double %588)
  %590 = load double, ptr @A4, align 8
  %591 = call double @llvm.fmuladd.f64(double %589, double %585, double %590)
  %592 = load double, ptr @A3, align 8
  %593 = call double @llvm.fmuladd.f64(double %591, double %585, double %592)
  %594 = load double, ptr @A2, align 8
  %595 = call double @llvm.fmuladd.f64(double %593, double %585, double %594)
  %596 = load double, ptr @A1, align 8
  %597 = call double @llvm.fmuladd.f64(double %595, double %585, double %596)
  %598 = load double, ptr @one, align 8
  %599 = call double @llvm.fmuladd.f64(double %597, double %585, double %598)
  %600 = fmul double %586, %599
  store double %600, ptr @sa, align 8
  %601 = load double, ptr %5, align 8
  %602 = load double, ptr @B6, align 8
  %603 = load double, ptr @B5, align 8
  %604 = call double @llvm.fmuladd.f64(double %602, double %601, double %603)
  %605 = load double, ptr @B4, align 8
  %606 = call double @llvm.fmuladd.f64(double %601, double %604, double %605)
  %607 = load double, ptr @B3, align 8
  %608 = call double @llvm.fmuladd.f64(double %601, double %606, double %607)
  %609 = load double, ptr @B2, align 8
  %610 = call double @llvm.fmuladd.f64(double %601, double %608, double %609)
  %611 = load double, ptr @B1, align 8
  %612 = call double @llvm.fmuladd.f64(double %601, double %610, double %611)
  %613 = load double, ptr @one, align 8
  %614 = call double @llvm.fmuladd.f64(double %601, double %612, double %613)
  store double %614, ptr @sb, align 8
  %615 = load double, ptr @sa, align 8
  %616 = fmul double %615, %614
  store double %616, ptr @sa, align 8
  %617 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %618 = fdiv double %617, 2.900000e+01
  store double %618, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %619 = load double, ptr %6, align 8
  %620 = load double, ptr @sa, align 8
  %621 = load double, ptr @two, align 8
  %622 = load double, ptr %2, align 8
  %623 = call double @llvm.fmuladd.f64(double %621, double %622, double %620)
  %624 = fmul double %619, %623
  %625 = fdiv double %624, %621
  store double %625, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %626 = load double, ptr @sa, align 8
  %627 = fsub double %626, 2.500000e-01
  store double %627, ptr @sc, align 8
  %628 = load double, ptr @one, align 8
  %629 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %630 = fdiv double %628, %629
  store double %630, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %631 = load double, ptr @sc, align 8
  %632 = fmul double %631, 1.000000e-30
  %633 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %634 = fmul double %633, 1.000000e-30
  %635 = fmul double %630, 1.000000e-30
  %636 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, double noundef %632, double noundef %634, double noundef %635)
  store double 0.000000e+00, ptr %2, align 8
  %637 = load double, ptr @one, align 8
  store double %637, ptr %5, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %638 = load i32, ptr %10, align 4
  %639 = sitofp i32 %638 to double
  %640 = fdiv double f0x40599541F7F192A4, %639
  store double %640, ptr %4, align 8
  %641 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %642 = load i32, ptr %10, align 4
  %643 = sub nsw i32 %642, 1
  %644 = load double, ptr %4, align 8
  %645 = load double, ptr %5, align 8
  %.promoted76 = load double, ptr %6, align 8
  %.promoted78 = load double, ptr %3, align 8
  %.promoted80 = load double, ptr %2, align 8
  br label %646

646:                                              ; preds = %665, %575
  %647 = phi double [ %664, %665 ], [ %.promoted80, %575 ]
  %648 = phi double [ %655, %665 ], [ %.promoted78, %575 ]
  %649 = phi double [ %654, %665 ], [ %.promoted76, %575 ]
  %650 = phi i32 [ %666, %665 ], [ 1, %575 ]
  %651 = icmp sle i32 %650, %643
  br i1 %651, label %652, label %667

652:                                              ; preds = %646
  %653 = sitofp i32 %650 to double
  %654 = fmul double %653, %644
  %655 = fmul double %654, %654
  %656 = fadd double %654, %645
  %657 = fdiv double %645, %656
  %658 = fsub double %647, %657
  %659 = fadd double %655, %645
  %660 = fdiv double %654, %659
  %661 = fsub double %658, %660
  %662 = call double @llvm.fmuladd.f64(double %654, double %655, double %645)
  %663 = fdiv double %655, %662
  %664 = fsub double %661, %663
  br label %665

665:                                              ; preds = %652
  %666 = add nsw i32 %650, 1
  br label %646, !llvm.loop !17

667:                                              ; preds = %646
  store i32 %650, ptr %9, align 4
  store double %649, ptr %6, align 8
  store double %648, ptr %3, align 8
  store double %647, ptr %2, align 8
  %668 = call i32 @dtime(ptr noundef @TimeArray)
  %669 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %670 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %671 = load double, ptr @nulltime, align 8
  %672 = fneg double %671
  %673 = call double @llvm.fmuladd.f64(double %669, double %670, double %672)
  store double %673, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %674 = fdiv double %673, 1.200000e+01
  store double %674, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %675 = load double, ptr @sa, align 8
  store double %675, ptr %6, align 8
  %676 = fmul double %675, %675
  store double %676, ptr %3, align 8
  %677 = load double, ptr %5, align 8
  %678 = fneg double %677
  %679 = load double, ptr %6, align 8
  %680 = fadd double %679, %677
  %681 = fdiv double %677, %680
  %682 = fsub double %678, %681
  %683 = fadd double %676, %677
  %684 = fdiv double %679, %683
  %685 = fsub double %682, %684
  %686 = call double @llvm.fmuladd.f64(double %679, double %676, double %677)
  %687 = fdiv double %676, %686
  %688 = fsub double %685, %687
  store double %688, ptr @sa, align 8
  %689 = load double, ptr %4, align 8
  %690 = fmul double 1.800000e+01, %689
  %691 = load double, ptr @two, align 8
  %692 = load double, ptr %2, align 8
  %693 = call double @llvm.fmuladd.f64(double %691, double %692, double %688)
  %694 = fmul double %690, %693
  store double %694, ptr @sa, align 8
  %695 = fptosi double %694 to i32
  %696 = mul nsw i32 -2000, %695
  store i32 %696, ptr %10, align 4
  %697 = sitofp i32 %696 to double
  %698 = load double, ptr @scale, align 8
  %699 = fdiv double %697, %698
  %700 = fptosi double %699 to i32
  store i32 %700, ptr %10, align 4
  %701 = load double, ptr @sa, align 8
  %702 = fadd double %701, 5.002000e+02
  store double %702, ptr @sc, align 8
  %703 = load double, ptr @one, align 8
  %704 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %705 = fdiv double %703, %704
  store double %705, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %706 = load double, ptr @sc, align 8
  %707 = fmul double %706, 1.000000e-30
  %708 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %709 = fmul double %708, 1.000000e-30
  %710 = fmul double %705, 1.000000e-30
  %711 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, double noundef %707, double noundef %709, double noundef %710)
  %712 = load double, ptr @piref, align 8
  %713 = load double, ptr @three, align 8
  %714 = load i32, ptr %10, align 4
  %715 = sitofp i32 %714 to double
  %716 = fmul double %713, %715
  %717 = fdiv double %712, %716
  store double %717, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %718 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %719 = load i32, ptr %10, align 4
  %720 = sub nsw i32 %719, 1
  %721 = load double, ptr %6, align 8
  %722 = load double, ptr @B6, align 8
  %723 = load double, ptr @B5, align 8
  %724 = load double, ptr @B4, align 8
  %725 = load double, ptr @B3, align 8
  %726 = load double, ptr @B2, align 8
  %727 = load double, ptr @B1, align 8
  %728 = load double, ptr @one, align 8
  %729 = load double, ptr @A6, align 8
  %730 = load double, ptr @A5, align 8
  %731 = load double, ptr @A4, align 8
  %732 = load double, ptr @A3, align 8
  %733 = load double, ptr @A2, align 8
  %734 = load double, ptr @A1, align 8
  %.promoted84 = load double, ptr %3, align 8
  %.promoted86 = load double, ptr %5, align 8
  %.promoted88 = load double, ptr %4, align 8
  %.promoted90 = load double, ptr %2, align 8
  br label %735

735:                                              ; preds = %761, %667
  %736 = phi double [ %760, %761 ], [ %.promoted90, %667 ]
  %737 = phi double [ %751, %761 ], [ %.promoted88, %667 ]
  %738 = phi double [ %745, %761 ], [ %.promoted86, %667 ]
  %739 = phi double [ %744, %761 ], [ %.promoted84, %667 ]
  %740 = phi i32 [ %762, %761 ], [ 1, %667 ]
  %741 = icmp sle i32 %740, %720
  br i1 %741, label %742, label %763

742:                                              ; preds = %735
  %743 = sitofp i32 %740 to double
  %744 = fmul double %743, %721
  %745 = fmul double %744, %744
  %746 = call double @llvm.fmuladd.f64(double %722, double %745, double %723)
  %747 = call double @llvm.fmuladd.f64(double %745, double %746, double %724)
  %748 = call double @llvm.fmuladd.f64(double %745, double %747, double %725)
  %749 = call double @llvm.fmuladd.f64(double %745, double %748, double %726)
  %750 = call double @llvm.fmuladd.f64(double %745, double %749, double %727)
  %751 = call double @llvm.fmuladd.f64(double %745, double %750, double %728)
  %752 = fmul double %751, %751
  %753 = fmul double %752, %744
  %754 = call double @llvm.fmuladd.f64(double %729, double %745, double %730)
  %755 = call double @llvm.fmuladd.f64(double %754, double %745, double %731)
  %756 = call double @llvm.fmuladd.f64(double %755, double %745, double %732)
  %757 = call double @llvm.fmuladd.f64(double %756, double %745, double %733)
  %758 = call double @llvm.fmuladd.f64(double %757, double %745, double %734)
  %759 = call double @llvm.fmuladd.f64(double %758, double %745, double %728)
  %760 = call double @llvm.fmuladd.f64(double %753, double %759, double %736)
  br label %761

761:                                              ; preds = %742
  %762 = add nsw i32 %740, 1
  br label %735, !llvm.loop !18

763:                                              ; preds = %735
  store i32 %740, ptr %9, align 4
  store double %739, ptr %3, align 8
  store double %738, ptr %5, align 8
  store double %737, ptr %4, align 8
  store double %736, ptr %2, align 8
  %764 = call i32 @dtime(ptr noundef @TimeArray)
  %765 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %766 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %767 = load double, ptr @nulltime, align 8
  %768 = fneg double %767
  %769 = call double @llvm.fmuladd.f64(double %765, double %766, double %768)
  store double %769, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %770 = load double, ptr @piref, align 8
  %771 = load double, ptr @three, align 8
  %772 = fdiv double %770, %771
  store double %772, ptr %3, align 8
  %773 = fmul double %772, %772
  store double %773, ptr %5, align 8
  %774 = load double, ptr %3, align 8
  %775 = load double, ptr @A6, align 8
  %776 = load double, ptr @A5, align 8
  %777 = call double @llvm.fmuladd.f64(double %775, double %773, double %776)
  %778 = load double, ptr @A4, align 8
  %779 = call double @llvm.fmuladd.f64(double %777, double %773, double %778)
  %780 = load double, ptr @A3, align 8
  %781 = call double @llvm.fmuladd.f64(double %779, double %773, double %780)
  %782 = load double, ptr @A2, align 8
  %783 = call double @llvm.fmuladd.f64(double %781, double %773, double %782)
  %784 = load double, ptr @A1, align 8
  %785 = call double @llvm.fmuladd.f64(double %783, double %773, double %784)
  %786 = load double, ptr @one, align 8
  %787 = call double @llvm.fmuladd.f64(double %785, double %773, double %786)
  %788 = fmul double %774, %787
  store double %788, ptr @sa, align 8
  %789 = load double, ptr %5, align 8
  %790 = load double, ptr @B6, align 8
  %791 = load double, ptr @B5, align 8
  %792 = call double @llvm.fmuladd.f64(double %790, double %789, double %791)
  %793 = load double, ptr @B4, align 8
  %794 = call double @llvm.fmuladd.f64(double %789, double %792, double %793)
  %795 = load double, ptr @B3, align 8
  %796 = call double @llvm.fmuladd.f64(double %789, double %794, double %795)
  %797 = load double, ptr @B2, align 8
  %798 = call double @llvm.fmuladd.f64(double %789, double %796, double %797)
  %799 = load double, ptr @B1, align 8
  %800 = call double @llvm.fmuladd.f64(double %789, double %798, double %799)
  %801 = load double, ptr @one, align 8
  %802 = call double @llvm.fmuladd.f64(double %789, double %800, double %801)
  store double %802, ptr @sb, align 8
  %803 = load double, ptr @sa, align 8
  %804 = fmul double %803, %802
  %805 = fmul double %804, %802
  store double %805, ptr @sa, align 8
  %806 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %807 = fdiv double %806, 3.000000e+01
  store double %807, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %808 = load double, ptr %6, align 8
  %809 = load double, ptr @sa, align 8
  %810 = load double, ptr @two, align 8
  %811 = load double, ptr %2, align 8
  %812 = call double @llvm.fmuladd.f64(double %810, double %811, double %809)
  %813 = fmul double %808, %812
  %814 = fdiv double %813, %810
  store double %814, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %815 = load double, ptr @sa, align 8
  %816 = fsub double %815, f0x3FD2AAAAAAAAAAAB
  store double %816, ptr @sc, align 8
  %817 = load double, ptr @one, align 8
  %818 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %819 = fdiv double %817, %818
  store double %819, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %820 = load double, ptr @sc, align 8
  %821 = fmul double %820, 1.000000e-30
  %822 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %823 = fmul double %822, 1.000000e-30
  %824 = fmul double %819, 1.000000e-30
  %825 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, double noundef %821, double noundef %823, double noundef %824)
  %826 = load double, ptr @five, align 8
  %827 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %828 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %829 = fsub double %827, %828
  %830 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %831 = call double @llvm.fmuladd.f64(double %826, double %829, double %830)
  %832 = fdiv double %831, 5.200000e+01
  store double %832, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %833 = load double, ptr @one, align 8
  %834 = fdiv double %833, %832
  store double %834, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %835 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %836 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %837 = fadd double %835, %836
  %838 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %839 = fadd double %837, %838
  %840 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %841 = fadd double %839, %840
  %842 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %843 = fadd double %841, %842
  store double %843, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %844 = load double, ptr @four, align 8
  %845 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %846 = call double @llvm.fmuladd.f64(double %844, double %845, double %843)
  %847 = fdiv double %846, 1.520000e+02
  store double %847, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %848 = load double, ptr @one, align 8
  %849 = fdiv double %848, %847
  store double %849, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %850 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %851 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %852 = fadd double %850, %851
  %853 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %854 = fadd double %852, %853
  %855 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %856 = fadd double %854, %855
  %857 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %858 = fadd double %856, %857
  store double %858, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %859 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %860 = fadd double %858, %859
  %861 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %862 = fadd double %860, %861
  %863 = fdiv double %862, 1.460000e+02
  store double %863, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %864 = load double, ptr @one, align 8
  %865 = fdiv double %864, %863
  store double %865, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %866 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %867 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %868 = fadd double %866, %867
  %869 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %870 = fadd double %868, %869
  %871 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %872 = fadd double %870, %871
  %873 = fdiv double %872, 9.100000e+01
  store double %873, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %874 = load double, ptr @one, align 8
  %875 = fdiv double %874, %873
  store double %875, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %876 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %877 = load i32, ptr %10, align 4
  %878 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %877)
  %879 = load double, ptr @nulltime, align 8
  %880 = fmul double %879, 1.000000e-30
  %881 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, double noundef %880)
  %882 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %883 = fmul double %882, 1.000000e-30
  %884 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, double noundef %883)
  %885 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %886 = fmul double %885, 1.000000e-30
  %887 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, double noundef %886)
  %888 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %889 = fmul double %888, 1.000000e-30
  %890 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, double noundef %889)
  %891 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %892 = fmul double %891, 1.000000e-30
  %893 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, double noundef %892)
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
