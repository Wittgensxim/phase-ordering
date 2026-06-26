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

10:                                               ; preds = %53, %0
  %.lcssa419 = phi double [ %.lcssa4, %53 ], [ undef, %0 ]
  %.lcssa18 = phi i32 [ %.lcssa, %53 ], [ undef, %0 ]
  %.lcssa216 = phi double [ %.lcssa2, %53 ], [ undef, %0 ]
  %.lcssa614 = phi double [ %.lcssa6, %53 ], [ undef, %0 ]
  %11 = phi double [ %20, %53 ], [ undef, %0 ]
  %12 = phi i32 [ %17, %53 ], [ 15625, %0 ]
  %13 = load double, ptr @sa, align 8
  %14 = load double, ptr @TLimit, align 8
  %15 = fcmp olt double %13, %14
  br i1 %15, label %16, label %.loopexit

16:                                               ; preds = %10
  %17 = mul nsw i32 2, %12
  %18 = load double, ptr @one, align 8
  %19 = sitofp i32 %17 to double
  %20 = fdiv double %18, %19
  %21 = load double, ptr @one, align 8
  %22 = call i32 @dtime(ptr noundef @TimeArray)
  %23 = sub nsw i32 %17, 1
  %24 = load double, ptr @D1, align 8
  %25 = load double, ptr @D2, align 8
  %26 = load double, ptr @D3, align 8
  %27 = load double, ptr @D1, align 8
  %28 = load double, ptr @E2, align 8
  %29 = load double, ptr @E3, align 8
  br label %30

30:                                               ; preds = %46, %16
  %31 = phi double [ %45, %46 ], [ 0.000000e+00, %16 ]
  %32 = phi double [ %38, %46 ], [ %.lcssa419, %16 ]
  %33 = phi double [ %37, %46 ], [ 0.000000e+00, %16 ]
  %34 = phi i32 [ %47, %46 ], [ 1, %16 ]
  %35 = icmp sle i32 %34, %23
  br i1 %35, label %36, label %48

36:                                               ; preds = %30
  %37 = fadd double %33, %21
  %38 = fmul double %37, %20
  %39 = call double @llvm.fmuladd.f64(double %38, double %26, double %25)
  %40 = call double @llvm.fmuladd.f64(double %38, double %39, double %24)
  %41 = call double @llvm.fmuladd.f64(double %38, double %29, double %28)
  %42 = call double @llvm.fmuladd.f64(double %38, double %41, double %27)
  %43 = call double @llvm.fmuladd.f64(double %38, double %42, double %21)
  %44 = fdiv double %40, %43
  %45 = fadd double %31, %44
  br label %46

46:                                               ; preds = %36
  %47 = add nsw i32 %34, 1
  br label %30, !llvm.loop !7

48:                                               ; preds = %30
  %.lcssa6 = phi double [ %31, %30 ]
  %.lcssa4 = phi double [ %32, %30 ]
  %.lcssa2 = phi double [ %33, %30 ]
  %.lcssa = phi i32 [ %34, %30 ]
  %49 = call i32 @dtime(ptr noundef @TimeArray)
  %50 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %50, ptr @sa, align 8
  %51 = icmp eq i32 %17, 512000000
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  %.lcssa4.lcssa = phi double [ %.lcssa4, %48 ]
  %.lcssa.lcssa = phi i32 [ %.lcssa, %48 ]
  %.lcssa2.lcssa = phi double [ %.lcssa2, %48 ]
  %.lcssa6.lcssa = phi double [ %.lcssa6, %48 ]
  %.lcssa12 = phi double [ %20, %48 ]
  %.lcssa9 = phi i32 [ %17, %48 ]
  br label %54

53:                                               ; preds = %48
  br label %10, !llvm.loop !9

.loopexit:                                        ; preds = %10
  %.lcssa419.lcssa = phi double [ %.lcssa419, %10 ]
  %.lcssa18.lcssa = phi i32 [ %.lcssa18, %10 ]
  %.lcssa216.lcssa = phi double [ %.lcssa216, %10 ]
  %.lcssa614.lcssa = phi double [ %.lcssa614, %10 ]
  %.lcssa11 = phi double [ %11, %10 ]
  %.lcssa8 = phi i32 [ %12, %10 ]
  br label %54

54:                                               ; preds = %.loopexit, %52
  %.094 = phi double [ %.lcssa12, %52 ], [ %.lcssa11, %.loopexit ]
  %.092 = phi double [ %.lcssa6.lcssa, %52 ], [ %.lcssa614.lcssa, %.loopexit ]
  %.0 = phi i32 [ %.lcssa9, %52 ], [ %.lcssa8, %.loopexit ]
  store double 1.589500e-02, ptr @scale, align 8
  %55 = load double, ptr @scale, align 8
  store double %55, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %56 = call i32 @dtime(ptr noundef @TimeArray)
  %57 = sub nsw i32 %.0, 1
  br label %58

58:                                               ; preds = %62, %54
  %59 = phi i32 [ %63, %62 ], [ 1, %54 ]
  %60 = icmp sle i32 %59, %57
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  br label %62

62:                                               ; preds = %61
  %63 = add nsw i32 %59, 1
  br label %58, !llvm.loop !10

64:                                               ; preds = %58
  %.lcssa21 = phi i32 [ %59, %58 ]
  %65 = call i32 @dtime(ptr noundef @TimeArray)
  %66 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %67 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %68 = fmul double %66, %67
  store double %68, ptr @nulltime, align 8
  %69 = load double, ptr @nulltime, align 8
  %70 = fcmp olt double %69, 0.000000e+00
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  store double 0.000000e+00, ptr @nulltime, align 8
  br label %72

72:                                               ; preds = %71, %64
  %73 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %74 = load double, ptr @sa, align 8
  %75 = load double, ptr @nulltime, align 8
  %76 = fneg double %75
  %77 = call double @llvm.fmuladd.f64(double %73, double %74, double %76)
  store double %77, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %78 = load double, ptr @D1, align 8
  %79 = load double, ptr @D2, align 8
  %80 = fadd double %78, %79
  %81 = load double, ptr @D3, align 8
  %82 = fadd double %80, %81
  %83 = load double, ptr @one, align 8
  %84 = load double, ptr @D1, align 8
  %85 = fadd double %83, %84
  %86 = load double, ptr @E2, align 8
  %87 = fadd double %85, %86
  %88 = load double, ptr @E3, align 8
  %89 = fadd double %87, %88
  %90 = fdiv double %82, %89
  store double %90, ptr @sa, align 8
  %91 = load double, ptr @D1, align 8
  store double %91, ptr @sb, align 8
  %92 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %93 = fdiv double %92, 1.400000e+01
  store double %93, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %94 = load double, ptr @sa, align 8
  %95 = load double, ptr @sb, align 8
  %96 = fadd double %94, %95
  %97 = load double, ptr @two, align 8
  %98 = call double @llvm.fmuladd.f64(double %97, double %.092, double %96)
  %99 = fmul double %.094, %98
  %100 = load double, ptr @two, align 8
  %101 = fdiv double %99, %100
  store double %101, ptr @sa, align 8
  %102 = load double, ptr @one, align 8
  %103 = load double, ptr @sa, align 8
  %104 = fdiv double %102, %103
  store double %104, ptr @sb, align 8
  %105 = load double, ptr @sb, align 8
  %106 = fptosi double %105 to i32
  %107 = mul nsw i32 40000, %106
  %108 = sitofp i32 %107 to double
  %109 = load double, ptr @scale, align 8
  %110 = fdiv double %108, %109
  %111 = fptosi double %110 to i32
  %112 = load double, ptr @sb, align 8
  %113 = fsub double %112, 2.520000e+01
  store double %113, ptr @sc, align 8
  %114 = load double, ptr @one, align 8
  %115 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %116 = fdiv double %114, %115
  store double %116, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %117 = load double, ptr @sc, align 8
  %118 = fmul double %117, 1.000000e-30
  %119 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %120 = fmul double %119, 1.000000e-30
  %121 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %122 = fmul double %121, 1.000000e-30
  %123 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %118, double noundef %120, double noundef %122)
  %124 = load double, ptr @five, align 8
  %125 = fneg double %124
  %126 = load double, ptr @one, align 8
  %127 = fneg double %126
  store double %127, ptr @sa, align 8
  %128 = call i32 @dtime(ptr noundef @TimeArray)
  %sa.promoted = load double, ptr @sa, align 8
  br label %129

129:                                              ; preds = %137, %72
  %130 = phi double [ %136, %137 ], [ %sa.promoted, %72 ]
  %131 = phi double [ %135, %137 ], [ %125, %72 ]
  %132 = phi i32 [ %138, %137 ], [ 1, %72 ]
  %133 = icmp sle i32 %132, %111
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = fneg double %131
  %136 = fadd double %130, %135
  store double %136, ptr @sa, align 8
  br label %137

137:                                              ; preds = %134
  %138 = add nsw i32 %132, 1
  br label %129, !llvm.loop !11

139:                                              ; preds = %129
  %.lcssa25 = phi double [ %131, %129 ]
  %.lcssa23 = phi i32 [ %132, %129 ]
  %140 = call i32 @dtime(ptr noundef @TimeArray)
  %141 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %142 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %143 = fmul double %141, %142
  store double %143, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %144 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %145 = fcmp olt double %144, 0.000000e+00
  br i1 %145, label %146, label %147

146:                                              ; preds = %139
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  br label %147

147:                                              ; preds = %146, %139
  %148 = sitofp i32 %111 to double
  store double %148, ptr @sc, align 8
  %149 = load double, ptr @sa, align 8
  %150 = call i32 @dtime(ptr noundef @TimeArray)
  %151 = load double, ptr @two, align 8
  %sa.promoted30 = load double, ptr @sa, align 8
  br label %152

152:                                              ; preds = %171, %147
  %.093 = phi double [ 0.000000e+00, %147 ], [ %170, %171 ]
  %153 = phi double [ %170, %171 ], [ 0.000000e+00, %147 ]
  %154 = phi double [ %168, %171 ], [ 0.000000e+00, %147 ]
  %155 = phi double [ %166, %171 ], [ 0.000000e+00, %147 ]
  %156 = phi double [ %164, %171 ], [ %149, %147 ]
  %157 = phi double [ %163, %171 ], [ %sa.promoted30, %147 ]
  %158 = phi double [ %162, %171 ], [ %.lcssa25, %147 ]
  %159 = phi i32 [ %172, %171 ], [ 1, %147 ]
  %160 = icmp sle i32 %159, %111
  br i1 %160, label %161, label %173

161:                                              ; preds = %152
  %162 = fneg double %158
  %163 = fadd double %157, %162
  store double %163, ptr @sa, align 8
  %164 = fadd double %156, %151
  %165 = fsub double %162, %164
  %166 = fadd double %155, %165
  %167 = fneg double %162
  %168 = call double @llvm.fmuladd.f64(double %167, double %164, double %154)
  %169 = fdiv double %162, %164
  %170 = fadd double %153, %169
  br label %171

171:                                              ; preds = %161
  %172 = add nsw i32 %159, 1
  br label %152, !llvm.loop !12

173:                                              ; preds = %152
  %.lcssa36 = phi double [ %154, %152 ]
  %.lcssa34 = phi double [ %155, %152 ]
  %.lcssa32 = phi double [ %156, %152 ]
  %.lcssa29 = phi double [ %158, %152 ]
  %.lcssa27 = phi i32 [ %159, %152 ]
  %174 = call i32 @dtime(ptr noundef @TimeArray)
  %175 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %176 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %177 = fmul double %175, %176
  store double %177, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %178 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %179 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %180 = fsub double %178, %179
  %181 = fdiv double %180, 7.000000e+00
  store double %181, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %182 = load double, ptr @sa, align 8
  %183 = fmul double %182, %.lcssa34
  %184 = load double, ptr @sc, align 8
  %185 = fdiv double %183, %184
  %186 = fptosi double %185 to i32
  %187 = load double, ptr @four, align 8
  %188 = fmul double %187, %.093
  %189 = load double, ptr @five, align 8
  %190 = fdiv double %188, %189
  store double %190, ptr @sa, align 8
  %191 = load double, ptr @sa, align 8
  %192 = load double, ptr @five, align 8
  %193 = fdiv double %192, %.lcssa36
  %194 = fadd double %191, %193
  store double %194, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %195 = load double, ptr @sb, align 8
  %196 = load double, ptr @sc, align 8
  %197 = fmul double %.lcssa36, %.lcssa36
  %198 = fmul double %197, %.lcssa36
  %199 = fdiv double %196, %198
  %200 = fsub double %195, %199
  store double %200, ptr @piprg, align 8
  %201 = load double, ptr @piprg, align 8
  %202 = load double, ptr @piref, align 8
  %203 = fsub double %201, %202
  store double %203, ptr @pierr, align 8
  %204 = load double, ptr @one, align 8
  %205 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %206 = fdiv double %204, %205
  store double %206, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %207 = load double, ptr @pierr, align 8
  %208 = fmul double %207, 1.000000e-30
  %209 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %210 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %211 = fsub double %209, %210
  %212 = fmul double %211, 1.000000e-30
  %213 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %214 = fmul double %213, 1.000000e-30
  %215 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %208, double noundef %212, double noundef %214)
  %216 = load double, ptr @piref, align 8
  %217 = load double, ptr @three, align 8
  %218 = sitofp i32 %186 to double
  %219 = fmul double %217, %218
  %220 = fdiv double %216, %219
  %221 = call i32 @dtime(ptr noundef @TimeArray)
  %222 = sub nsw i32 %186, 1
  %223 = load double, ptr @one, align 8
  %224 = load double, ptr @A6, align 8
  %225 = load double, ptr @A5, align 8
  %226 = fneg double %225
  %227 = load double, ptr @A4, align 8
  %228 = load double, ptr @A3, align 8
  %229 = fneg double %228
  %230 = load double, ptr @A2, align 8
  %231 = load double, ptr @A1, align 8
  %232 = load double, ptr @one, align 8
  br label %233

233:                                              ; preds = %250, %173
  %234 = phi double [ %249, %250 ], [ 0.000000e+00, %173 ]
  %235 = phi double [ %241, %250 ], [ %.lcssa32, %173 ]
  %236 = phi double [ %240, %250 ], [ 0.000000e+00, %173 ]
  %237 = phi i32 [ %251, %250 ], [ 1, %173 ]
  %238 = icmp sle i32 %237, %222
  br i1 %238, label %239, label %252

239:                                              ; preds = %233
  %240 = fadd double %236, %223
  %241 = fmul double %240, %220
  %242 = fmul double %241, %241
  %243 = call double @llvm.fmuladd.f64(double %224, double %242, double %226)
  %244 = call double @llvm.fmuladd.f64(double %243, double %242, double %227)
  %245 = call double @llvm.fmuladd.f64(double %244, double %242, double %229)
  %246 = call double @llvm.fmuladd.f64(double %245, double %242, double %230)
  %247 = call double @llvm.fmuladd.f64(double %246, double %242, double %231)
  %248 = call double @llvm.fmuladd.f64(double %247, double %242, double %232)
  %249 = call double @llvm.fmuladd.f64(double %241, double %248, double %234)
  br label %250

250:                                              ; preds = %239
  %251 = add nsw i32 %237, 1
  br label %233, !llvm.loop !13

252:                                              ; preds = %233
  %.lcssa46 = phi double [ %234, %233 ]
  %.lcssa43 = phi double [ %235, %233 ]
  %.lcssa41 = phi double [ %236, %233 ]
  %.lcssa39 = phi i32 [ %237, %233 ]
  %253 = call i32 @dtime(ptr noundef @TimeArray)
  %254 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %255 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %256 = load double, ptr @nulltime, align 8
  %257 = fneg double %256
  %258 = call double @llvm.fmuladd.f64(double %254, double %255, double %257)
  store double %258, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %259 = load double, ptr @piref, align 8
  %260 = load double, ptr @three, align 8
  %261 = fdiv double %259, %260
  %262 = fmul double %261, %261
  %263 = load double, ptr @A6, align 8
  %264 = load double, ptr @A5, align 8
  %265 = fneg double %264
  %266 = call double @llvm.fmuladd.f64(double %263, double %262, double %265)
  %267 = load double, ptr @A4, align 8
  %268 = call double @llvm.fmuladd.f64(double %266, double %262, double %267)
  %269 = load double, ptr @A3, align 8
  %270 = fneg double %269
  %271 = call double @llvm.fmuladd.f64(double %268, double %262, double %270)
  %272 = load double, ptr @A2, align 8
  %273 = call double @llvm.fmuladd.f64(double %271, double %262, double %272)
  %274 = load double, ptr @A1, align 8
  %275 = call double @llvm.fmuladd.f64(double %273, double %262, double %274)
  %276 = load double, ptr @one, align 8
  %277 = call double @llvm.fmuladd.f64(double %275, double %262, double %276)
  %278 = fmul double %261, %277
  store double %278, ptr @sa, align 8
  %279 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %280 = fdiv double %279, 1.700000e+01
  store double %280, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %281 = load double, ptr @sa, align 8
  %282 = load double, ptr @two, align 8
  %283 = call double @llvm.fmuladd.f64(double %282, double %.lcssa46, double %281)
  %284 = fmul double %220, %283
  %285 = load double, ptr @two, align 8
  %286 = fdiv double %284, %285
  store double %286, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %287 = load double, ptr @sa, align 8
  %288 = load double, ptr @sb, align 8
  %289 = fsub double %287, %288
  store double %289, ptr @sc, align 8
  %290 = load double, ptr @one, align 8
  %291 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %292 = fdiv double %290, %291
  store double %292, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %293 = load double, ptr @sc, align 8
  %294 = fmul double %293, 1.000000e-30
  %295 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %296 = fmul double %295, 1.000000e-30
  %297 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %298 = fmul double %297, 1.000000e-30
  %299 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %294, double noundef %296, double noundef %298)
  %300 = load double, ptr @A3, align 8
  %301 = fneg double %300
  store double %301, ptr @A3, align 8
  %302 = load double, ptr @A5, align 8
  %303 = fneg double %302
  store double %303, ptr @A5, align 8
  %304 = load double, ptr @piref, align 8
  %305 = load double, ptr @three, align 8
  %306 = sitofp i32 %186 to double
  %307 = fmul double %305, %306
  %308 = fdiv double %304, %307
  %309 = call i32 @dtime(ptr noundef @TimeArray)
  %310 = sub nsw i32 %186, 1
  %311 = load double, ptr @B6, align 8
  %312 = load double, ptr @B5, align 8
  %313 = load double, ptr @B4, align 8
  %314 = load double, ptr @B3, align 8
  %315 = load double, ptr @B2, align 8
  %316 = load double, ptr @B1, align 8
  %317 = load double, ptr @one, align 8
  br label %318

318:                                              ; preds = %334, %252
  %319 = phi double [ %333, %334 ], [ 0.000000e+00, %252 ]
  %320 = phi double [ %325, %334 ], [ %261, %252 ]
  %321 = phi i32 [ %335, %334 ], [ 1, %252 ]
  %322 = icmp sle i32 %321, %310
  br i1 %322, label %323, label %336

323:                                              ; preds = %318
  %324 = sitofp i32 %321 to double
  %325 = fmul double %324, %308
  %326 = fmul double %325, %325
  %327 = call double @llvm.fmuladd.f64(double %311, double %326, double %312)
  %328 = call double @llvm.fmuladd.f64(double %326, double %327, double %313)
  %329 = call double @llvm.fmuladd.f64(double %326, double %328, double %314)
  %330 = call double @llvm.fmuladd.f64(double %326, double %329, double %315)
  %331 = call double @llvm.fmuladd.f64(double %326, double %330, double %316)
  %332 = call double @llvm.fmuladd.f64(double %326, double %331, double %319)
  %333 = fadd double %332, %317
  br label %334

334:                                              ; preds = %323
  %335 = add nsw i32 %321, 1
  br label %318, !llvm.loop !14

336:                                              ; preds = %318
  %.lcssa53 = phi double [ %319, %318 ]
  %.lcssa50 = phi double [ %320, %318 ]
  %.lcssa48 = phi i32 [ %321, %318 ]
  %337 = call i32 @dtime(ptr noundef @TimeArray)
  %338 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %339 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %340 = load double, ptr @nulltime, align 8
  %341 = fneg double %340
  %342 = call double @llvm.fmuladd.f64(double %338, double %339, double %341)
  store double %342, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %343 = load double, ptr @piref, align 8
  %344 = load double, ptr @three, align 8
  %345 = fdiv double %343, %344
  %346 = fmul double %345, %345
  %347 = load double, ptr @B6, align 8
  %348 = load double, ptr @B5, align 8
  %349 = call double @llvm.fmuladd.f64(double %347, double %346, double %348)
  %350 = load double, ptr @B4, align 8
  %351 = call double @llvm.fmuladd.f64(double %346, double %349, double %350)
  %352 = load double, ptr @B3, align 8
  %353 = call double @llvm.fmuladd.f64(double %346, double %351, double %352)
  %354 = load double, ptr @B2, align 8
  %355 = call double @llvm.fmuladd.f64(double %346, double %353, double %354)
  %356 = load double, ptr @B1, align 8
  %357 = call double @llvm.fmuladd.f64(double %346, double %355, double %356)
  %358 = load double, ptr @one, align 8
  %359 = call double @llvm.fmuladd.f64(double %346, double %357, double %358)
  store double %359, ptr @sa, align 8
  %360 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %361 = fdiv double %360, 1.500000e+01
  store double %361, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %362 = load double, ptr @sa, align 8
  %363 = load double, ptr @one, align 8
  %364 = fadd double %362, %363
  %365 = load double, ptr @two, align 8
  %366 = call double @llvm.fmuladd.f64(double %365, double %.lcssa53, double %364)
  %367 = fmul double %308, %366
  %368 = load double, ptr @two, align 8
  %369 = fdiv double %367, %368
  store double %369, ptr @sa, align 8
  %370 = load double, ptr @piref, align 8
  %371 = load double, ptr @three, align 8
  %372 = fdiv double %370, %371
  %373 = fmul double %372, %372
  %374 = load double, ptr @A6, align 8
  %375 = load double, ptr @A5, align 8
  %376 = call double @llvm.fmuladd.f64(double %374, double %373, double %375)
  %377 = load double, ptr @A4, align 8
  %378 = call double @llvm.fmuladd.f64(double %376, double %373, double %377)
  %379 = load double, ptr @A3, align 8
  %380 = call double @llvm.fmuladd.f64(double %378, double %373, double %379)
  %381 = load double, ptr @A2, align 8
  %382 = call double @llvm.fmuladd.f64(double %380, double %373, double %381)
  %383 = load double, ptr @A1, align 8
  %384 = call double @llvm.fmuladd.f64(double %382, double %373, double %383)
  %385 = load double, ptr @A0, align 8
  %386 = call double @llvm.fmuladd.f64(double %384, double %373, double %385)
  %387 = fmul double %372, %386
  store double %387, ptr @sb, align 8
  %388 = load double, ptr @sa, align 8
  %389 = load double, ptr @sb, align 8
  %390 = fsub double %388, %389
  store double %390, ptr @sc, align 8
  %391 = load double, ptr @one, align 8
  %392 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %393 = fdiv double %391, %392
  store double %393, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %394 = load double, ptr @sc, align 8
  %395 = fmul double %394, 1.000000e-30
  %396 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %397 = fmul double %396, 1.000000e-30
  %398 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %399 = fmul double %398, 1.000000e-30
  %400 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %395, double noundef %397, double noundef %399)
  %401 = load double, ptr @piref, align 8
  %402 = load double, ptr @three, align 8
  %403 = sitofp i32 %186 to double
  %404 = fmul double %402, %403
  %405 = fdiv double %401, %404
  %406 = call i32 @dtime(ptr noundef @TimeArray)
  %407 = sub nsw i32 %186, 1
  %408 = load double, ptr @A6, align 8
  %409 = load double, ptr @A5, align 8
  %410 = load double, ptr @A4, align 8
  %411 = load double, ptr @A3, align 8
  %412 = load double, ptr @A2, align 8
  %413 = load double, ptr @A1, align 8
  %414 = load double, ptr @one, align 8
  %415 = load double, ptr @B6, align 8
  %416 = load double, ptr @B5, align 8
  %417 = load double, ptr @B4, align 8
  %418 = load double, ptr @B3, align 8
  %419 = load double, ptr @B2, align 8
  %420 = load double, ptr @B1, align 8
  %421 = load double, ptr @one, align 8
  br label %422

422:                                              ; preds = %447, %336
  %423 = phi double [ %446, %447 ], [ 0.000000e+00, %336 ]
  %424 = phi double [ %438, %447 ], [ 0.000000e+00, %336 ]
  %425 = phi double [ %430, %447 ], [ %372, %336 ]
  %426 = phi i32 [ %448, %447 ], [ 1, %336 ]
  %427 = icmp sle i32 %426, %407
  br i1 %427, label %428, label %449

428:                                              ; preds = %422
  %429 = sitofp i32 %426 to double
  %430 = fmul double %429, %405
  %431 = fmul double %430, %430
  %432 = call double @llvm.fmuladd.f64(double %408, double %431, double %409)
  %433 = call double @llvm.fmuladd.f64(double %432, double %431, double %410)
  %434 = call double @llvm.fmuladd.f64(double %433, double %431, double %411)
  %435 = call double @llvm.fmuladd.f64(double %434, double %431, double %412)
  %436 = call double @llvm.fmuladd.f64(double %435, double %431, double %413)
  %437 = call double @llvm.fmuladd.f64(double %436, double %431, double %414)
  %438 = fmul double %430, %437
  %439 = call double @llvm.fmuladd.f64(double %415, double %431, double %416)
  %440 = call double @llvm.fmuladd.f64(double %431, double %439, double %417)
  %441 = call double @llvm.fmuladd.f64(double %431, double %440, double %418)
  %442 = call double @llvm.fmuladd.f64(double %431, double %441, double %419)
  %443 = call double @llvm.fmuladd.f64(double %431, double %442, double %420)
  %444 = call double @llvm.fmuladd.f64(double %431, double %443, double %421)
  %445 = fdiv double %438, %444
  %446 = fadd double %423, %445
  br label %447

447:                                              ; preds = %428
  %448 = add nsw i32 %426, 1
  br label %422, !llvm.loop !15

449:                                              ; preds = %422
  %.lcssa62 = phi double [ %423, %422 ]
  %.lcssa60 = phi double [ %424, %422 ]
  %.lcssa57 = phi double [ %425, %422 ]
  %.lcssa55 = phi i32 [ %426, %422 ]
  %450 = call i32 @dtime(ptr noundef @TimeArray)
  %451 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %452 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %453 = load double, ptr @nulltime, align 8
  %454 = fneg double %453
  %455 = call double @llvm.fmuladd.f64(double %451, double %452, double %454)
  store double %455, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %456 = load double, ptr @piref, align 8
  %457 = load double, ptr @three, align 8
  %458 = fdiv double %456, %457
  %459 = fmul double %458, %458
  %460 = load double, ptr @A6, align 8
  %461 = load double, ptr @A5, align 8
  %462 = call double @llvm.fmuladd.f64(double %460, double %459, double %461)
  %463 = load double, ptr @A4, align 8
  %464 = call double @llvm.fmuladd.f64(double %462, double %459, double %463)
  %465 = load double, ptr @A3, align 8
  %466 = call double @llvm.fmuladd.f64(double %464, double %459, double %465)
  %467 = load double, ptr @A2, align 8
  %468 = call double @llvm.fmuladd.f64(double %466, double %459, double %467)
  %469 = load double, ptr @A1, align 8
  %470 = call double @llvm.fmuladd.f64(double %468, double %459, double %469)
  %471 = load double, ptr @one, align 8
  %472 = call double @llvm.fmuladd.f64(double %470, double %459, double %471)
  %473 = fmul double %458, %472
  store double %473, ptr @sa, align 8
  %474 = load double, ptr @B6, align 8
  %475 = load double, ptr @B5, align 8
  %476 = call double @llvm.fmuladd.f64(double %474, double %459, double %475)
  %477 = load double, ptr @B4, align 8
  %478 = call double @llvm.fmuladd.f64(double %459, double %476, double %477)
  %479 = load double, ptr @B3, align 8
  %480 = call double @llvm.fmuladd.f64(double %459, double %478, double %479)
  %481 = load double, ptr @B2, align 8
  %482 = call double @llvm.fmuladd.f64(double %459, double %480, double %481)
  %483 = load double, ptr @B1, align 8
  %484 = call double @llvm.fmuladd.f64(double %459, double %482, double %483)
  %485 = load double, ptr @one, align 8
  %486 = call double @llvm.fmuladd.f64(double %459, double %484, double %485)
  store double %486, ptr @sb, align 8
  %487 = load double, ptr @sa, align 8
  %488 = load double, ptr @sb, align 8
  %489 = fdiv double %487, %488
  store double %489, ptr @sa, align 8
  %490 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %491 = fdiv double %490, 2.900000e+01
  store double %491, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %492 = load double, ptr @sa, align 8
  %493 = load double, ptr @two, align 8
  %494 = call double @llvm.fmuladd.f64(double %493, double %.lcssa62, double %492)
  %495 = fmul double %405, %494
  %496 = load double, ptr @two, align 8
  %497 = fdiv double %495, %496
  store double %497, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %498 = load double, ptr @sa, align 8
  %499 = load double, ptr @sb, align 8
  %500 = fsub double %498, %499
  store double %500, ptr @sc, align 8
  %501 = load double, ptr @one, align 8
  %502 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %503 = fdiv double %501, %502
  store double %503, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %504 = load double, ptr @sc, align 8
  %505 = fmul double %504, 1.000000e-30
  %506 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %507 = fmul double %506, 1.000000e-30
  %508 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %509 = fmul double %508, 1.000000e-30
  %510 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %505, double noundef %507, double noundef %509)
  %511 = load double, ptr @piref, align 8
  %512 = load double, ptr @four, align 8
  %513 = sitofp i32 %186 to double
  %514 = fmul double %512, %513
  %515 = fdiv double %511, %514
  %516 = call i32 @dtime(ptr noundef @TimeArray)
  %517 = sub nsw i32 %186, 1
  %518 = load double, ptr @A6, align 8
  %519 = load double, ptr @A5, align 8
  %520 = load double, ptr @A4, align 8
  %521 = load double, ptr @A3, align 8
  %522 = load double, ptr @A2, align 8
  %523 = load double, ptr @A1, align 8
  %524 = load double, ptr @one, align 8
  %525 = load double, ptr @B6, align 8
  %526 = load double, ptr @B5, align 8
  %527 = load double, ptr @B4, align 8
  %528 = load double, ptr @B3, align 8
  %529 = load double, ptr @B2, align 8
  %530 = load double, ptr @B1, align 8
  %531 = load double, ptr @one, align 8
  br label %532

532:                                              ; preds = %557, %449
  %533 = phi double [ %542, %557 ], [ %459, %449 ]
  %534 = phi double [ %556, %557 ], [ 0.000000e+00, %449 ]
  %535 = phi double [ %549, %557 ], [ 0.000000e+00, %449 ]
  %536 = phi double [ %541, %557 ], [ %458, %449 ]
  %537 = phi i32 [ %558, %557 ], [ 1, %449 ]
  %538 = icmp sle i32 %537, %517
  br i1 %538, label %539, label %559

539:                                              ; preds = %532
  %540 = sitofp i32 %537 to double
  %541 = fmul double %540, %515
  %542 = fmul double %541, %541
  %543 = call double @llvm.fmuladd.f64(double %518, double %542, double %519)
  %544 = call double @llvm.fmuladd.f64(double %543, double %542, double %520)
  %545 = call double @llvm.fmuladd.f64(double %544, double %542, double %521)
  %546 = call double @llvm.fmuladd.f64(double %545, double %542, double %522)
  %547 = call double @llvm.fmuladd.f64(double %546, double %542, double %523)
  %548 = call double @llvm.fmuladd.f64(double %547, double %542, double %524)
  %549 = fmul double %541, %548
  %550 = call double @llvm.fmuladd.f64(double %525, double %542, double %526)
  %551 = call double @llvm.fmuladd.f64(double %542, double %550, double %527)
  %552 = call double @llvm.fmuladd.f64(double %542, double %551, double %528)
  %553 = call double @llvm.fmuladd.f64(double %542, double %552, double %529)
  %554 = call double @llvm.fmuladd.f64(double %542, double %553, double %530)
  %555 = call double @llvm.fmuladd.f64(double %542, double %554, double %531)
  %556 = call double @llvm.fmuladd.f64(double %549, double %555, double %534)
  br label %557

557:                                              ; preds = %539
  %558 = add nsw i32 %537, 1
  br label %532, !llvm.loop !16

559:                                              ; preds = %532
  %.lcssa73 = phi double [ %533, %532 ]
  %.lcssa71 = phi double [ %534, %532 ]
  %.lcssa69 = phi double [ %535, %532 ]
  %.lcssa66 = phi double [ %536, %532 ]
  %.lcssa64 = phi i32 [ %537, %532 ]
  %560 = call i32 @dtime(ptr noundef @TimeArray)
  %561 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %562 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %563 = load double, ptr @nulltime, align 8
  %564 = fneg double %563
  %565 = call double @llvm.fmuladd.f64(double %561, double %562, double %564)
  store double %565, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %566 = load double, ptr @piref, align 8
  %567 = load double, ptr @four, align 8
  %568 = fdiv double %566, %567
  %569 = fmul double %568, %568
  %570 = load double, ptr @A6, align 8
  %571 = load double, ptr @A5, align 8
  %572 = call double @llvm.fmuladd.f64(double %570, double %569, double %571)
  %573 = load double, ptr @A4, align 8
  %574 = call double @llvm.fmuladd.f64(double %572, double %569, double %573)
  %575 = load double, ptr @A3, align 8
  %576 = call double @llvm.fmuladd.f64(double %574, double %569, double %575)
  %577 = load double, ptr @A2, align 8
  %578 = call double @llvm.fmuladd.f64(double %576, double %569, double %577)
  %579 = load double, ptr @A1, align 8
  %580 = call double @llvm.fmuladd.f64(double %578, double %569, double %579)
  %581 = load double, ptr @one, align 8
  %582 = call double @llvm.fmuladd.f64(double %580, double %569, double %581)
  %583 = fmul double %568, %582
  store double %583, ptr @sa, align 8
  %584 = load double, ptr @B6, align 8
  %585 = load double, ptr @B5, align 8
  %586 = call double @llvm.fmuladd.f64(double %584, double %569, double %585)
  %587 = load double, ptr @B4, align 8
  %588 = call double @llvm.fmuladd.f64(double %569, double %586, double %587)
  %589 = load double, ptr @B3, align 8
  %590 = call double @llvm.fmuladd.f64(double %569, double %588, double %589)
  %591 = load double, ptr @B2, align 8
  %592 = call double @llvm.fmuladd.f64(double %569, double %590, double %591)
  %593 = load double, ptr @B1, align 8
  %594 = call double @llvm.fmuladd.f64(double %569, double %592, double %593)
  %595 = load double, ptr @one, align 8
  %596 = call double @llvm.fmuladd.f64(double %569, double %594, double %595)
  store double %596, ptr @sb, align 8
  %597 = load double, ptr @sa, align 8
  %598 = load double, ptr @sb, align 8
  %599 = fmul double %597, %598
  store double %599, ptr @sa, align 8
  %600 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %601 = fdiv double %600, 2.900000e+01
  store double %601, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %602 = load double, ptr @sa, align 8
  %603 = load double, ptr @two, align 8
  %604 = call double @llvm.fmuladd.f64(double %603, double %.lcssa71, double %602)
  %605 = fmul double %515, %604
  %606 = load double, ptr @two, align 8
  %607 = fdiv double %605, %606
  store double %607, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %608 = load double, ptr @sa, align 8
  %609 = load double, ptr @sb, align 8
  %610 = fsub double %608, %609
  store double %610, ptr @sc, align 8
  %611 = load double, ptr @one, align 8
  %612 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %613 = fdiv double %611, %612
  store double %613, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %614 = load double, ptr @sc, align 8
  %615 = fmul double %614, 1.000000e-30
  %616 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %617 = fmul double %616, 1.000000e-30
  %618 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %619 = fmul double %618, 1.000000e-30
  %620 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, double noundef %615, double noundef %617, double noundef %619)
  %621 = load double, ptr @one, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %622 = load double, ptr @sa, align 8
  %623 = sitofp i32 %186 to double
  %624 = fdiv double %622, %623
  %625 = call i32 @dtime(ptr noundef @TimeArray)
  %626 = sub nsw i32 %186, 1
  br label %627

627:                                              ; preds = %646, %559
  %628 = phi double [ %645, %646 ], [ 0.000000e+00, %559 ]
  %629 = phi double [ %636, %646 ], [ %568, %559 ]
  %630 = phi double [ %635, %646 ], [ %515, %559 ]
  %631 = phi i32 [ %647, %646 ], [ 1, %559 ]
  %632 = icmp sle i32 %631, %626
  br i1 %632, label %633, label %648

633:                                              ; preds = %627
  %634 = sitofp i32 %631 to double
  %635 = fmul double %634, %624
  %636 = fmul double %635, %635
  %637 = fadd double %635, %621
  %638 = fdiv double %621, %637
  %639 = fsub double %628, %638
  %640 = fadd double %636, %621
  %641 = fdiv double %635, %640
  %642 = fsub double %639, %641
  %643 = call double @llvm.fmuladd.f64(double %635, double %636, double %621)
  %644 = fdiv double %636, %643
  %645 = fsub double %642, %644
  br label %646

646:                                              ; preds = %633
  %647 = add nsw i32 %631, 1
  br label %627, !llvm.loop !17

648:                                              ; preds = %627
  %.lcssa81 = phi double [ %628, %627 ]
  %.lcssa79 = phi double [ %629, %627 ]
  %.lcssa77 = phi double [ %630, %627 ]
  %.lcssa75 = phi i32 [ %631, %627 ]
  %649 = call i32 @dtime(ptr noundef @TimeArray)
  %650 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %651 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %652 = load double, ptr @nulltime, align 8
  %653 = fneg double %652
  %654 = call double @llvm.fmuladd.f64(double %650, double %651, double %653)
  store double %654, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %655 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %656 = fdiv double %655, 1.200000e+01
  store double %656, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %657 = load double, ptr @sa, align 8
  %658 = fmul double %657, %657
  %659 = fneg double %621
  %660 = fadd double %657, %621
  %661 = fdiv double %621, %660
  %662 = fsub double %659, %661
  %663 = fadd double %658, %621
  %664 = fdiv double %657, %663
  %665 = fsub double %662, %664
  %666 = call double @llvm.fmuladd.f64(double %657, double %658, double %621)
  %667 = fdiv double %658, %666
  %668 = fsub double %665, %667
  store double %668, ptr @sa, align 8
  %669 = fmul double 1.800000e+01, %624
  %670 = load double, ptr @sa, align 8
  %671 = load double, ptr @two, align 8
  %672 = call double @llvm.fmuladd.f64(double %671, double %.lcssa81, double %670)
  %673 = fmul double %669, %672
  store double %673, ptr @sa, align 8
  %674 = load double, ptr @sa, align 8
  %675 = fptosi double %674 to i32
  %676 = mul nsw i32 -2000, %675
  %677 = sitofp i32 %676 to double
  %678 = load double, ptr @scale, align 8
  %679 = fdiv double %677, %678
  %680 = fptosi double %679 to i32
  %681 = load double, ptr @sa, align 8
  %682 = fadd double %681, 5.002000e+02
  store double %682, ptr @sc, align 8
  %683 = load double, ptr @one, align 8
  %684 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %685 = fdiv double %683, %684
  store double %685, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %686 = load double, ptr @sc, align 8
  %687 = fmul double %686, 1.000000e-30
  %688 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %689 = fmul double %688, 1.000000e-30
  %690 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %691 = fmul double %690, 1.000000e-30
  %692 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, double noundef %687, double noundef %689, double noundef %691)
  %693 = load double, ptr @piref, align 8
  %694 = load double, ptr @three, align 8
  %695 = sitofp i32 %680 to double
  %696 = fmul double %694, %695
  %697 = fdiv double %693, %696
  %698 = call i32 @dtime(ptr noundef @TimeArray)
  %699 = sub nsw i32 %680, 1
  %700 = load double, ptr @B6, align 8
  %701 = load double, ptr @B5, align 8
  %702 = load double, ptr @B4, align 8
  %703 = load double, ptr @B3, align 8
  %704 = load double, ptr @B2, align 8
  %705 = load double, ptr @B1, align 8
  %706 = load double, ptr @one, align 8
  %707 = load double, ptr @A6, align 8
  %708 = load double, ptr @A5, align 8
  %709 = load double, ptr @A4, align 8
  %710 = load double, ptr @A3, align 8
  %711 = load double, ptr @A2, align 8
  %712 = load double, ptr @A1, align 8
  %713 = load double, ptr @one, align 8
  br label %714

714:                                              ; preds = %740, %648
  %715 = phi double [ %739, %740 ], [ 0.000000e+00, %648 ]
  %716 = phi double [ %730, %740 ], [ 0.000000e+00, %648 ]
  %717 = phi double [ %724, %740 ], [ %621, %648 ]
  %718 = phi double [ %723, %740 ], [ %658, %648 ]
  %719 = phi i32 [ %741, %740 ], [ 1, %648 ]
  %720 = icmp sle i32 %719, %699
  br i1 %720, label %721, label %742

721:                                              ; preds = %714
  %722 = sitofp i32 %719 to double
  %723 = fmul double %722, %697
  %724 = fmul double %723, %723
  %725 = call double @llvm.fmuladd.f64(double %700, double %724, double %701)
  %726 = call double @llvm.fmuladd.f64(double %724, double %725, double %702)
  %727 = call double @llvm.fmuladd.f64(double %724, double %726, double %703)
  %728 = call double @llvm.fmuladd.f64(double %724, double %727, double %704)
  %729 = call double @llvm.fmuladd.f64(double %724, double %728, double %705)
  %730 = call double @llvm.fmuladd.f64(double %724, double %729, double %706)
  %731 = fmul double %730, %730
  %732 = fmul double %731, %723
  %733 = call double @llvm.fmuladd.f64(double %707, double %724, double %708)
  %734 = call double @llvm.fmuladd.f64(double %733, double %724, double %709)
  %735 = call double @llvm.fmuladd.f64(double %734, double %724, double %710)
  %736 = call double @llvm.fmuladd.f64(double %735, double %724, double %711)
  %737 = call double @llvm.fmuladd.f64(double %736, double %724, double %712)
  %738 = call double @llvm.fmuladd.f64(double %737, double %724, double %713)
  %739 = call double @llvm.fmuladd.f64(double %732, double %738, double %715)
  br label %740

740:                                              ; preds = %721
  %741 = add nsw i32 %719, 1
  br label %714, !llvm.loop !18

742:                                              ; preds = %714
  %.lcssa91 = phi double [ %715, %714 ]
  %.lcssa89 = phi double [ %716, %714 ]
  %.lcssa87 = phi double [ %717, %714 ]
  %.lcssa85 = phi double [ %718, %714 ]
  %.lcssa83 = phi i32 [ %719, %714 ]
  %743 = call i32 @dtime(ptr noundef @TimeArray)
  %744 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %745 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %746 = load double, ptr @nulltime, align 8
  %747 = fneg double %746
  %748 = call double @llvm.fmuladd.f64(double %744, double %745, double %747)
  store double %748, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %749 = load double, ptr @piref, align 8
  %750 = load double, ptr @three, align 8
  %751 = fdiv double %749, %750
  %752 = fmul double %751, %751
  %753 = load double, ptr @A6, align 8
  %754 = load double, ptr @A5, align 8
  %755 = call double @llvm.fmuladd.f64(double %753, double %752, double %754)
  %756 = load double, ptr @A4, align 8
  %757 = call double @llvm.fmuladd.f64(double %755, double %752, double %756)
  %758 = load double, ptr @A3, align 8
  %759 = call double @llvm.fmuladd.f64(double %757, double %752, double %758)
  %760 = load double, ptr @A2, align 8
  %761 = call double @llvm.fmuladd.f64(double %759, double %752, double %760)
  %762 = load double, ptr @A1, align 8
  %763 = call double @llvm.fmuladd.f64(double %761, double %752, double %762)
  %764 = load double, ptr @one, align 8
  %765 = call double @llvm.fmuladd.f64(double %763, double %752, double %764)
  %766 = fmul double %751, %765
  store double %766, ptr @sa, align 8
  %767 = load double, ptr @B6, align 8
  %768 = load double, ptr @B5, align 8
  %769 = call double @llvm.fmuladd.f64(double %767, double %752, double %768)
  %770 = load double, ptr @B4, align 8
  %771 = call double @llvm.fmuladd.f64(double %752, double %769, double %770)
  %772 = load double, ptr @B3, align 8
  %773 = call double @llvm.fmuladd.f64(double %752, double %771, double %772)
  %774 = load double, ptr @B2, align 8
  %775 = call double @llvm.fmuladd.f64(double %752, double %773, double %774)
  %776 = load double, ptr @B1, align 8
  %777 = call double @llvm.fmuladd.f64(double %752, double %775, double %776)
  %778 = load double, ptr @one, align 8
  %779 = call double @llvm.fmuladd.f64(double %752, double %777, double %778)
  store double %779, ptr @sb, align 8
  %780 = load double, ptr @sa, align 8
  %781 = load double, ptr @sb, align 8
  %782 = fmul double %780, %781
  %783 = load double, ptr @sb, align 8
  %784 = fmul double %782, %783
  store double %784, ptr @sa, align 8
  %785 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %786 = fdiv double %785, 3.000000e+01
  store double %786, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %787 = load double, ptr @sa, align 8
  %788 = load double, ptr @two, align 8
  %789 = call double @llvm.fmuladd.f64(double %788, double %.lcssa91, double %787)
  %790 = fmul double %697, %789
  %791 = load double, ptr @two, align 8
  %792 = fdiv double %790, %791
  store double %792, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %793 = load double, ptr @sa, align 8
  %794 = load double, ptr @sb, align 8
  %795 = fsub double %793, %794
  store double %795, ptr @sc, align 8
  %796 = load double, ptr @one, align 8
  %797 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %798 = fdiv double %796, %797
  store double %798, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %799 = load double, ptr @sc, align 8
  %800 = fmul double %799, 1.000000e-30
  %801 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %802 = fmul double %801, 1.000000e-30
  %803 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %804 = fmul double %803, 1.000000e-30
  %805 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, double noundef %800, double noundef %802, double noundef %804)
  %806 = load double, ptr @five, align 8
  %807 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %808 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %809 = fsub double %807, %808
  %810 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %811 = call double @llvm.fmuladd.f64(double %806, double %809, double %810)
  %812 = fdiv double %811, 5.200000e+01
  store double %812, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %813 = load double, ptr @one, align 8
  %814 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %815 = fdiv double %813, %814
  store double %815, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %816 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %817 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %818 = fadd double %816, %817
  %819 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %820 = fadd double %818, %819
  %821 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %822 = fadd double %820, %821
  %823 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %824 = fadd double %822, %823
  store double %824, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %825 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %826 = load double, ptr @four, align 8
  %827 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %828 = call double @llvm.fmuladd.f64(double %826, double %827, double %825)
  %829 = fdiv double %828, 1.520000e+02
  store double %829, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %830 = load double, ptr @one, align 8
  %831 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %832 = fdiv double %830, %831
  store double %832, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %833 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %834 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %835 = fadd double %833, %834
  %836 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %837 = fadd double %835, %836
  %838 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %839 = fadd double %837, %838
  %840 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %841 = fadd double %839, %840
  store double %841, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %842 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %843 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %844 = fadd double %842, %843
  %845 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %846 = fadd double %844, %845
  %847 = fdiv double %846, 1.460000e+02
  store double %847, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %848 = load double, ptr @one, align 8
  %849 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %850 = fdiv double %848, %849
  store double %850, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %851 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %852 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %853 = fadd double %851, %852
  %854 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %855 = fadd double %853, %854
  %856 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %857 = fadd double %855, %856
  %858 = fdiv double %857, 9.100000e+01
  store double %858, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %859 = load double, ptr @one, align 8
  %860 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %861 = fdiv double %859, %860
  store double %861, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %862 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %863 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %680)
  %864 = load double, ptr @nulltime, align 8
  %865 = fmul double %864, 1.000000e-30
  %866 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, double noundef %865)
  %867 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %868 = fmul double %867, 1.000000e-30
  %869 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, double noundef %868)
  %870 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %871 = fmul double %870, 1.000000e-30
  %872 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, double noundef %871)
  %873 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %874 = fmul double %873, 1.000000e-30
  %875 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, double noundef %874)
  %876 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %877 = fmul double %876, 1.000000e-30
  %878 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, double noundef %877)
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
  %7 = getelementptr inbounds double, ptr %0, i64 2
  store double %6, ptr %7, align 8
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8
  %10 = fsub double %9, %3
  %11 = getelementptr inbounds double, ptr %0, i64 1
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
