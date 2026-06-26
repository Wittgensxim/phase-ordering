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
  %10 = load double, ptr @sa, align 8
  %11 = load double, ptr @TLimit, align 8
  %12 = fcmp olt double %10, %11
  br i1 %12, label %.lr.ph2, label %.loopexit

.lr.ph2:                                          ; preds = %0
  br label %17

13:                                               ; preds = %46
  %14 = load double, ptr @sa, align 8
  %15 = load double, ptr @TLimit, align 8
  %16 = fcmp olt double %14, %15
  br i1 %16, label %17, label %..loopexit_crit_edge, !llvm.loop !7

17:                                               ; preds = %.lr.ph2, %13
  %.0 = phi i32 [ 15625, %.lr.ph2 ], [ %18, %13 ]
  %18 = mul nsw i32 2, %.0
  %19 = load double, ptr @one, align 8
  %20 = sitofp i32 %18 to double
  %21 = fdiv double %19, %20
  %22 = load double, ptr @one, align 8
  %23 = call i32 @dtime(ptr noundef @TimeArray)
  %24 = sub nsw i32 %18, 1
  %25 = icmp sle i32 1, %24
  br i1 %25, label %.lr.ph, label %46

.lr.ph:                                           ; preds = %17
  br label %26

26:                                               ; preds = %.lr.ph, %42
  %.044 = phi i32 [ 1, %.lr.ph ], [ %43, %42 ]
  %.034 = phi double [ 0.000000e+00, %.lr.ph ], [ %27, %42 ]
  %.131 = phi double [ 0.000000e+00, %.lr.ph ], [ %41, %42 ]
  %27 = fadd double %.034, %22
  %28 = fmul double %27, %21
  %29 = load double, ptr @D1, align 8
  %30 = load double, ptr @D2, align 8
  %31 = load double, ptr @D3, align 8
  %32 = call double @llvm.fmuladd.f64(double %28, double %31, double %30)
  %33 = call double @llvm.fmuladd.f64(double %28, double %32, double %29)
  %34 = load double, ptr @D1, align 8
  %35 = load double, ptr @E2, align 8
  %36 = load double, ptr @E3, align 8
  %37 = call double @llvm.fmuladd.f64(double %28, double %36, double %35)
  %38 = call double @llvm.fmuladd.f64(double %28, double %37, double %34)
  %39 = call double @llvm.fmuladd.f64(double %28, double %38, double %22)
  %40 = fdiv double %33, %39
  %41 = fadd double %.131, %40
  br label %42

42:                                               ; preds = %26
  %43 = add nsw i32 %.044, 1
  %44 = sub nsw i32 %18, 1
  %45 = icmp sle i32 %43, %44
  br i1 %45, label %26, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %42
  br label %46

46:                                               ; preds = %._crit_edge, %17
  %.232 = phi double [ %41, %._crit_edge ], [ 0.000000e+00, %17 ]
  %47 = call i32 @dtime(ptr noundef @TimeArray)
  %48 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %48, ptr @sa, align 8
  %49 = icmp eq i32 %18, 512000000
  br i1 %49, label %50, label %13

50:                                               ; preds = %46
  br label %51

..loopexit_crit_edge:                             ; preds = %13
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %0
  %.343 = phi double [ %21, %..loopexit_crit_edge ], [ undef, %0 ]
  %.18 = phi double [ %.232, %..loopexit_crit_edge ], [ undef, %0 ]
  %.2 = phi i32 [ %18, %..loopexit_crit_edge ], [ 15625, %0 ]
  br label %51

51:                                               ; preds = %.loopexit, %50
  %.040 = phi double [ %21, %50 ], [ %.343, %.loopexit ]
  %.030 = phi double [ %.232, %50 ], [ %.18, %.loopexit ]
  %.1 = phi i32 [ %18, %50 ], [ %.2, %.loopexit ]
  store double 1.589500e-02, ptr @scale, align 8
  %52 = load double, ptr @scale, align 8
  store double %52, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %53 = call i32 @dtime(ptr noundef @TimeArray)
  %54 = sub nsw i32 %.1, 1
  %55 = icmp sle i32 1, %54
  br i1 %55, label %.lr.ph4, label %61

.lr.ph4:                                          ; preds = %51
  br label %56

56:                                               ; preds = %.lr.ph4, %57
  %.145 = phi i32 [ 1, %.lr.ph4 ], [ %58, %57 ]
  br label %57

57:                                               ; preds = %56
  %58 = add nsw i32 %.145, 1
  %59 = sub nsw i32 %.1, 1
  %60 = icmp sle i32 %58, %59
  br i1 %60, label %56, label %._crit_edge5, !llvm.loop !10

._crit_edge5:                                     ; preds = %57
  br label %61

61:                                               ; preds = %._crit_edge5, %51
  %62 = call i32 @dtime(ptr noundef @TimeArray)
  %63 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %64 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %65 = fmul double %63, %64
  store double %65, ptr @nulltime, align 8
  %66 = load double, ptr @nulltime, align 8
  %67 = fcmp olt double %66, 0.000000e+00
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  store double 0.000000e+00, ptr @nulltime, align 8
  br label %69

69:                                               ; preds = %68, %61
  %70 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %71 = load double, ptr @sa, align 8
  %72 = load double, ptr @nulltime, align 8
  %73 = fneg double %72
  %74 = call double @llvm.fmuladd.f64(double %70, double %71, double %73)
  store double %74, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %75 = load double, ptr @D1, align 8
  %76 = load double, ptr @D2, align 8
  %77 = fadd double %75, %76
  %78 = load double, ptr @D3, align 8
  %79 = fadd double %77, %78
  %80 = load double, ptr @one, align 8
  %81 = load double, ptr @D1, align 8
  %82 = fadd double %80, %81
  %83 = load double, ptr @E2, align 8
  %84 = fadd double %82, %83
  %85 = load double, ptr @E3, align 8
  %86 = fadd double %84, %85
  %87 = fdiv double %79, %86
  store double %87, ptr @sa, align 8
  %88 = load double, ptr @D1, align 8
  store double %88, ptr @sb, align 8
  %89 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %90 = fdiv double %89, 1.400000e+01
  store double %90, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %91 = load double, ptr @sa, align 8
  %92 = load double, ptr @sb, align 8
  %93 = fadd double %91, %92
  %94 = load double, ptr @two, align 8
  %95 = call double @llvm.fmuladd.f64(double %94, double %.030, double %93)
  %96 = fmul double %.040, %95
  %97 = load double, ptr @two, align 8
  %98 = fdiv double %96, %97
  store double %98, ptr @sa, align 8
  %99 = load double, ptr @one, align 8
  %100 = load double, ptr @sa, align 8
  %101 = fdiv double %99, %100
  store double %101, ptr @sb, align 8
  %102 = load double, ptr @sb, align 8
  %103 = fptosi double %102 to i32
  %104 = mul nsw i32 40000, %103
  %105 = sitofp i32 %104 to double
  %106 = load double, ptr @scale, align 8
  %107 = fdiv double %105, %106
  %108 = fptosi double %107 to i32
  %109 = load double, ptr @sb, align 8
  %110 = fsub double %109, 2.520000e+01
  store double %110, ptr @sc, align 8
  %111 = load double, ptr @one, align 8
  %112 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %113 = fdiv double %111, %112
  store double %113, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %114 = load double, ptr @sc, align 8
  %115 = fmul double %114, 1.000000e-30
  %116 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %117 = fmul double %116, 1.000000e-30
  %118 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %119 = fmul double %118, 1.000000e-30
  %120 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %115, double noundef %117, double noundef %119)
  %121 = load double, ptr @five, align 8
  %122 = fneg double %121
  %123 = load double, ptr @one, align 8
  %124 = fneg double %123
  store double %124, ptr @sa, align 8
  %125 = call i32 @dtime(ptr noundef @TimeArray)
  %126 = icmp sle i32 1, %108
  br i1 %126, label %.lr.ph7, label %134

.lr.ph7:                                          ; preds = %69
  br label %127

127:                                              ; preds = %.lr.ph7, %131
  %.246 = phi i32 [ 1, %.lr.ph7 ], [ %132, %131 ]
  %.3 = phi double [ %122, %.lr.ph7 ], [ %128, %131 ]
  %128 = fneg double %.3
  %129 = load double, ptr @sa, align 8
  %130 = fadd double %129, %128
  store double %130, ptr @sa, align 8
  br label %131

131:                                              ; preds = %127
  %132 = add nsw i32 %.246, 1
  %133 = icmp sle i32 %132, %108
  br i1 %133, label %127, label %._crit_edge8, !llvm.loop !11

._crit_edge8:                                     ; preds = %131
  br label %134

134:                                              ; preds = %._crit_edge8, %69
  %.4 = phi double [ %128, %._crit_edge8 ], [ %122, %69 ]
  %135 = call i32 @dtime(ptr noundef @TimeArray)
  %136 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %137 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %138 = fmul double %136, %137
  store double %138, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %139 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %140 = fcmp olt double %139, 0.000000e+00
  br i1 %140, label %141, label %142

141:                                              ; preds = %134
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  br label %142

142:                                              ; preds = %141, %134
  %143 = sitofp i32 %108 to double
  store double %143, ptr @sc, align 8
  %144 = load double, ptr @sa, align 8
  %145 = call i32 @dtime(ptr noundef @TimeArray)
  %146 = icmp sle i32 1, %108
  br i1 %146, label %.lr.ph10, label %162

.lr.ph10:                                         ; preds = %142
  br label %147

147:                                              ; preds = %.lr.ph10, %159
  %.347 = phi i32 [ 1, %.lr.ph10 ], [ %160, %159 ]
  %.141 = phi double [ 0.000000e+00, %.lr.ph10 ], [ %154, %159 ]
  %.038 = phi double [ 0.000000e+00, %.lr.ph10 ], [ %158, %159 ]
  %.135 = phi double [ 0.000000e+00, %.lr.ph10 ], [ %156, %159 ]
  %.033 = phi double [ %144, %.lr.ph10 ], [ %152, %159 ]
  %.5 = phi double [ %.4, %.lr.ph10 ], [ %148, %159 ]
  %148 = fneg double %.5
  %149 = load double, ptr @sa, align 8
  %150 = fadd double %149, %148
  store double %150, ptr @sa, align 8
  %151 = load double, ptr @two, align 8
  %152 = fadd double %.033, %151
  %153 = fsub double %148, %152
  %154 = fadd double %.141, %153
  %155 = fneg double %148
  %156 = call double @llvm.fmuladd.f64(double %155, double %152, double %.135)
  %157 = fdiv double %148, %152
  %158 = fadd double %.038, %157
  br label %159

159:                                              ; preds = %147
  %160 = add nsw i32 %.347, 1
  %161 = icmp sle i32 %160, %108
  br i1 %161, label %147, label %._crit_edge11, !llvm.loop !12

._crit_edge11:                                    ; preds = %159
  br label %162

162:                                              ; preds = %._crit_edge11, %142
  %.242 = phi double [ %154, %._crit_edge11 ], [ 0.000000e+00, %142 ]
  %.139 = phi double [ %158, %._crit_edge11 ], [ 0.000000e+00, %142 ]
  %.236 = phi double [ %156, %._crit_edge11 ], [ 0.000000e+00, %142 ]
  %163 = call i32 @dtime(ptr noundef @TimeArray)
  %164 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %165 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %166 = fmul double %164, %165
  store double %166, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %167 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %168 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %169 = fsub double %167, %168
  %170 = fdiv double %169, 7.000000e+00
  store double %170, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %171 = load double, ptr @sa, align 8
  %172 = fmul double %171, %.242
  %173 = load double, ptr @sc, align 8
  %174 = fdiv double %172, %173
  %175 = fptosi double %174 to i32
  %176 = load double, ptr @four, align 8
  %177 = fmul double %176, %.139
  %178 = load double, ptr @five, align 8
  %179 = fdiv double %177, %178
  store double %179, ptr @sa, align 8
  %180 = load double, ptr @sa, align 8
  %181 = load double, ptr @five, align 8
  %182 = fdiv double %181, %.236
  %183 = fadd double %180, %182
  store double %183, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %184 = load double, ptr @sb, align 8
  %185 = load double, ptr @sc, align 8
  %186 = fmul double %.236, %.236
  %187 = fmul double %186, %.236
  %188 = fdiv double %185, %187
  %189 = fsub double %184, %188
  store double %189, ptr @piprg, align 8
  %190 = load double, ptr @piprg, align 8
  %191 = load double, ptr @piref, align 8
  %192 = fsub double %190, %191
  store double %192, ptr @pierr, align 8
  %193 = load double, ptr @one, align 8
  %194 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %195 = fdiv double %193, %194
  store double %195, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %196 = load double, ptr @pierr, align 8
  %197 = fmul double %196, 1.000000e-30
  %198 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %199 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %200 = fsub double %198, %199
  %201 = fmul double %200, 1.000000e-30
  %202 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %203 = fmul double %202, 1.000000e-30
  %204 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %197, double noundef %201, double noundef %203)
  %205 = load double, ptr @piref, align 8
  %206 = load double, ptr @three, align 8
  %207 = sitofp i32 %175 to double
  %208 = fmul double %206, %207
  %209 = fdiv double %205, %208
  %210 = call i32 @dtime(ptr noundef @TimeArray)
  %211 = sub nsw i32 %175, 1
  %212 = icmp sle i32 1, %211
  br i1 %212, label %.lr.ph13, label %238

.lr.ph13:                                         ; preds = %162
  br label %213

213:                                              ; preds = %.lr.ph13, %234
  %.448 = phi i32 [ 1, %.lr.ph13 ], [ %235, %234 ]
  %.337 = phi double [ 0.000000e+00, %.lr.ph13 ], [ %215, %234 ]
  %.6 = phi double [ 0.000000e+00, %.lr.ph13 ], [ %233, %234 ]
  %214 = load double, ptr @one, align 8
  %215 = fadd double %.337, %214
  %216 = fmul double %215, %209
  %217 = fmul double %216, %216
  %218 = load double, ptr @A6, align 8
  %219 = load double, ptr @A5, align 8
  %220 = fneg double %219
  %221 = call double @llvm.fmuladd.f64(double %218, double %217, double %220)
  %222 = load double, ptr @A4, align 8
  %223 = call double @llvm.fmuladd.f64(double %221, double %217, double %222)
  %224 = load double, ptr @A3, align 8
  %225 = fneg double %224
  %226 = call double @llvm.fmuladd.f64(double %223, double %217, double %225)
  %227 = load double, ptr @A2, align 8
  %228 = call double @llvm.fmuladd.f64(double %226, double %217, double %227)
  %229 = load double, ptr @A1, align 8
  %230 = call double @llvm.fmuladd.f64(double %228, double %217, double %229)
  %231 = load double, ptr @one, align 8
  %232 = call double @llvm.fmuladd.f64(double %230, double %217, double %231)
  %233 = call double @llvm.fmuladd.f64(double %216, double %232, double %.6)
  br label %234

234:                                              ; preds = %213
  %235 = add nsw i32 %.448, 1
  %236 = sub nsw i32 %175, 1
  %237 = icmp sle i32 %235, %236
  br i1 %237, label %213, label %._crit_edge14, !llvm.loop !13

._crit_edge14:                                    ; preds = %234
  br label %238

238:                                              ; preds = %._crit_edge14, %162
  %.7 = phi double [ %233, %._crit_edge14 ], [ 0.000000e+00, %162 ]
  %239 = call i32 @dtime(ptr noundef @TimeArray)
  %240 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %241 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %242 = load double, ptr @nulltime, align 8
  %243 = fneg double %242
  %244 = call double @llvm.fmuladd.f64(double %240, double %241, double %243)
  store double %244, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %245 = load double, ptr @piref, align 8
  %246 = load double, ptr @three, align 8
  %247 = fdiv double %245, %246
  %248 = fmul double %247, %247
  %249 = load double, ptr @A6, align 8
  %250 = load double, ptr @A5, align 8
  %251 = fneg double %250
  %252 = call double @llvm.fmuladd.f64(double %249, double %248, double %251)
  %253 = load double, ptr @A4, align 8
  %254 = call double @llvm.fmuladd.f64(double %252, double %248, double %253)
  %255 = load double, ptr @A3, align 8
  %256 = fneg double %255
  %257 = call double @llvm.fmuladd.f64(double %254, double %248, double %256)
  %258 = load double, ptr @A2, align 8
  %259 = call double @llvm.fmuladd.f64(double %257, double %248, double %258)
  %260 = load double, ptr @A1, align 8
  %261 = call double @llvm.fmuladd.f64(double %259, double %248, double %260)
  %262 = load double, ptr @one, align 8
  %263 = call double @llvm.fmuladd.f64(double %261, double %248, double %262)
  %264 = fmul double %247, %263
  store double %264, ptr @sa, align 8
  %265 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %266 = fdiv double %265, 1.700000e+01
  store double %266, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %267 = load double, ptr @sa, align 8
  %268 = load double, ptr @two, align 8
  %269 = call double @llvm.fmuladd.f64(double %268, double %.7, double %267)
  %270 = fmul double %209, %269
  %271 = load double, ptr @two, align 8
  %272 = fdiv double %270, %271
  store double %272, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %273 = load double, ptr @sa, align 8
  %274 = load double, ptr @sb, align 8
  %275 = fsub double %273, %274
  store double %275, ptr @sc, align 8
  %276 = load double, ptr @one, align 8
  %277 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %278 = fdiv double %276, %277
  store double %278, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %279 = load double, ptr @sc, align 8
  %280 = fmul double %279, 1.000000e-30
  %281 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %282 = fmul double %281, 1.000000e-30
  %283 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %284 = fmul double %283, 1.000000e-30
  %285 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %280, double noundef %282, double noundef %284)
  %286 = load double, ptr @A3, align 8
  %287 = fneg double %286
  store double %287, ptr @A3, align 8
  %288 = load double, ptr @A5, align 8
  %289 = fneg double %288
  store double %289, ptr @A5, align 8
  %290 = load double, ptr @piref, align 8
  %291 = load double, ptr @three, align 8
  %292 = sitofp i32 %175 to double
  %293 = fmul double %291, %292
  %294 = fdiv double %290, %293
  %295 = call i32 @dtime(ptr noundef @TimeArray)
  %296 = sub nsw i32 %175, 1
  %297 = icmp sle i32 1, %296
  br i1 %297, label %.lr.ph16, label %320

.lr.ph16:                                         ; preds = %238
  br label %298

298:                                              ; preds = %.lr.ph16, %316
  %.549 = phi i32 [ 1, %.lr.ph16 ], [ %317, %316 ]
  %.8 = phi double [ 0.000000e+00, %.lr.ph16 ], [ %315, %316 ]
  %299 = sitofp i32 %.549 to double
  %300 = fmul double %299, %294
  %301 = fmul double %300, %300
  %302 = load double, ptr @B6, align 8
  %303 = load double, ptr @B5, align 8
  %304 = call double @llvm.fmuladd.f64(double %302, double %301, double %303)
  %305 = load double, ptr @B4, align 8
  %306 = call double @llvm.fmuladd.f64(double %301, double %304, double %305)
  %307 = load double, ptr @B3, align 8
  %308 = call double @llvm.fmuladd.f64(double %301, double %306, double %307)
  %309 = load double, ptr @B2, align 8
  %310 = call double @llvm.fmuladd.f64(double %301, double %308, double %309)
  %311 = load double, ptr @B1, align 8
  %312 = call double @llvm.fmuladd.f64(double %301, double %310, double %311)
  %313 = call double @llvm.fmuladd.f64(double %301, double %312, double %.8)
  %314 = load double, ptr @one, align 8
  %315 = fadd double %313, %314
  br label %316

316:                                              ; preds = %298
  %317 = add nsw i32 %.549, 1
  %318 = sub nsw i32 %175, 1
  %319 = icmp sle i32 %317, %318
  br i1 %319, label %298, label %._crit_edge17, !llvm.loop !14

._crit_edge17:                                    ; preds = %316
  br label %320

320:                                              ; preds = %._crit_edge17, %238
  %.9 = phi double [ %315, %._crit_edge17 ], [ 0.000000e+00, %238 ]
  %321 = call i32 @dtime(ptr noundef @TimeArray)
  %322 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %323 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %324 = load double, ptr @nulltime, align 8
  %325 = fneg double %324
  %326 = call double @llvm.fmuladd.f64(double %322, double %323, double %325)
  store double %326, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %327 = load double, ptr @piref, align 8
  %328 = load double, ptr @three, align 8
  %329 = fdiv double %327, %328
  %330 = fmul double %329, %329
  %331 = load double, ptr @B6, align 8
  %332 = load double, ptr @B5, align 8
  %333 = call double @llvm.fmuladd.f64(double %331, double %330, double %332)
  %334 = load double, ptr @B4, align 8
  %335 = call double @llvm.fmuladd.f64(double %330, double %333, double %334)
  %336 = load double, ptr @B3, align 8
  %337 = call double @llvm.fmuladd.f64(double %330, double %335, double %336)
  %338 = load double, ptr @B2, align 8
  %339 = call double @llvm.fmuladd.f64(double %330, double %337, double %338)
  %340 = load double, ptr @B1, align 8
  %341 = call double @llvm.fmuladd.f64(double %330, double %339, double %340)
  %342 = load double, ptr @one, align 8
  %343 = call double @llvm.fmuladd.f64(double %330, double %341, double %342)
  store double %343, ptr @sa, align 8
  %344 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %345 = fdiv double %344, 1.500000e+01
  store double %345, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %346 = load double, ptr @sa, align 8
  %347 = load double, ptr @one, align 8
  %348 = fadd double %346, %347
  %349 = load double, ptr @two, align 8
  %350 = call double @llvm.fmuladd.f64(double %349, double %.9, double %348)
  %351 = fmul double %294, %350
  %352 = load double, ptr @two, align 8
  %353 = fdiv double %351, %352
  store double %353, ptr @sa, align 8
  %354 = load double, ptr @piref, align 8
  %355 = load double, ptr @three, align 8
  %356 = fdiv double %354, %355
  %357 = fmul double %356, %356
  %358 = load double, ptr @A6, align 8
  %359 = load double, ptr @A5, align 8
  %360 = call double @llvm.fmuladd.f64(double %358, double %357, double %359)
  %361 = load double, ptr @A4, align 8
  %362 = call double @llvm.fmuladd.f64(double %360, double %357, double %361)
  %363 = load double, ptr @A3, align 8
  %364 = call double @llvm.fmuladd.f64(double %362, double %357, double %363)
  %365 = load double, ptr @A2, align 8
  %366 = call double @llvm.fmuladd.f64(double %364, double %357, double %365)
  %367 = load double, ptr @A1, align 8
  %368 = call double @llvm.fmuladd.f64(double %366, double %357, double %367)
  %369 = load double, ptr @A0, align 8
  %370 = call double @llvm.fmuladd.f64(double %368, double %357, double %369)
  %371 = fmul double %356, %370
  store double %371, ptr @sb, align 8
  %372 = load double, ptr @sa, align 8
  %373 = load double, ptr @sb, align 8
  %374 = fsub double %372, %373
  store double %374, ptr @sc, align 8
  %375 = load double, ptr @one, align 8
  %376 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %377 = fdiv double %375, %376
  store double %377, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %378 = load double, ptr @sc, align 8
  %379 = fmul double %378, 1.000000e-30
  %380 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %381 = fmul double %380, 1.000000e-30
  %382 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %383 = fmul double %382, 1.000000e-30
  %384 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %379, double noundef %381, double noundef %383)
  %385 = load double, ptr @piref, align 8
  %386 = load double, ptr @three, align 8
  %387 = sitofp i32 %175 to double
  %388 = fmul double %386, %387
  %389 = fdiv double %385, %388
  %390 = call i32 @dtime(ptr noundef @TimeArray)
  %391 = sub nsw i32 %175, 1
  %392 = icmp sle i32 1, %391
  br i1 %392, label %.lr.ph19, label %430

.lr.ph19:                                         ; preds = %320
  br label %393

393:                                              ; preds = %.lr.ph19, %426
  %.650 = phi i32 [ 1, %.lr.ph19 ], [ %427, %426 ]
  %.10 = phi double [ 0.000000e+00, %.lr.ph19 ], [ %425, %426 ]
  %394 = sitofp i32 %.650 to double
  %395 = fmul double %394, %389
  %396 = fmul double %395, %395
  %397 = load double, ptr @A6, align 8
  %398 = load double, ptr @A5, align 8
  %399 = call double @llvm.fmuladd.f64(double %397, double %396, double %398)
  %400 = load double, ptr @A4, align 8
  %401 = call double @llvm.fmuladd.f64(double %399, double %396, double %400)
  %402 = load double, ptr @A3, align 8
  %403 = call double @llvm.fmuladd.f64(double %401, double %396, double %402)
  %404 = load double, ptr @A2, align 8
  %405 = call double @llvm.fmuladd.f64(double %403, double %396, double %404)
  %406 = load double, ptr @A1, align 8
  %407 = call double @llvm.fmuladd.f64(double %405, double %396, double %406)
  %408 = load double, ptr @one, align 8
  %409 = call double @llvm.fmuladd.f64(double %407, double %396, double %408)
  %410 = fmul double %395, %409
  %411 = load double, ptr @B6, align 8
  %412 = load double, ptr @B5, align 8
  %413 = call double @llvm.fmuladd.f64(double %411, double %396, double %412)
  %414 = load double, ptr @B4, align 8
  %415 = call double @llvm.fmuladd.f64(double %396, double %413, double %414)
  %416 = load double, ptr @B3, align 8
  %417 = call double @llvm.fmuladd.f64(double %396, double %415, double %416)
  %418 = load double, ptr @B2, align 8
  %419 = call double @llvm.fmuladd.f64(double %396, double %417, double %418)
  %420 = load double, ptr @B1, align 8
  %421 = call double @llvm.fmuladd.f64(double %396, double %419, double %420)
  %422 = load double, ptr @one, align 8
  %423 = call double @llvm.fmuladd.f64(double %396, double %421, double %422)
  %424 = fdiv double %410, %423
  %425 = fadd double %.10, %424
  br label %426

426:                                              ; preds = %393
  %427 = add nsw i32 %.650, 1
  %428 = sub nsw i32 %175, 1
  %429 = icmp sle i32 %427, %428
  br i1 %429, label %393, label %._crit_edge20, !llvm.loop !15

._crit_edge20:                                    ; preds = %426
  br label %430

430:                                              ; preds = %._crit_edge20, %320
  %.11 = phi double [ %425, %._crit_edge20 ], [ 0.000000e+00, %320 ]
  %431 = call i32 @dtime(ptr noundef @TimeArray)
  %432 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %433 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %434 = load double, ptr @nulltime, align 8
  %435 = fneg double %434
  %436 = call double @llvm.fmuladd.f64(double %432, double %433, double %435)
  store double %436, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %437 = load double, ptr @piref, align 8
  %438 = load double, ptr @three, align 8
  %439 = fdiv double %437, %438
  %440 = fmul double %439, %439
  %441 = load double, ptr @A6, align 8
  %442 = load double, ptr @A5, align 8
  %443 = call double @llvm.fmuladd.f64(double %441, double %440, double %442)
  %444 = load double, ptr @A4, align 8
  %445 = call double @llvm.fmuladd.f64(double %443, double %440, double %444)
  %446 = load double, ptr @A3, align 8
  %447 = call double @llvm.fmuladd.f64(double %445, double %440, double %446)
  %448 = load double, ptr @A2, align 8
  %449 = call double @llvm.fmuladd.f64(double %447, double %440, double %448)
  %450 = load double, ptr @A1, align 8
  %451 = call double @llvm.fmuladd.f64(double %449, double %440, double %450)
  %452 = load double, ptr @one, align 8
  %453 = call double @llvm.fmuladd.f64(double %451, double %440, double %452)
  %454 = fmul double %439, %453
  store double %454, ptr @sa, align 8
  %455 = load double, ptr @B6, align 8
  %456 = load double, ptr @B5, align 8
  %457 = call double @llvm.fmuladd.f64(double %455, double %440, double %456)
  %458 = load double, ptr @B4, align 8
  %459 = call double @llvm.fmuladd.f64(double %440, double %457, double %458)
  %460 = load double, ptr @B3, align 8
  %461 = call double @llvm.fmuladd.f64(double %440, double %459, double %460)
  %462 = load double, ptr @B2, align 8
  %463 = call double @llvm.fmuladd.f64(double %440, double %461, double %462)
  %464 = load double, ptr @B1, align 8
  %465 = call double @llvm.fmuladd.f64(double %440, double %463, double %464)
  %466 = load double, ptr @one, align 8
  %467 = call double @llvm.fmuladd.f64(double %440, double %465, double %466)
  store double %467, ptr @sb, align 8
  %468 = load double, ptr @sa, align 8
  %469 = load double, ptr @sb, align 8
  %470 = fdiv double %468, %469
  store double %470, ptr @sa, align 8
  %471 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %472 = fdiv double %471, 2.900000e+01
  store double %472, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %473 = load double, ptr @sa, align 8
  %474 = load double, ptr @two, align 8
  %475 = call double @llvm.fmuladd.f64(double %474, double %.11, double %473)
  %476 = fmul double %389, %475
  %477 = load double, ptr @two, align 8
  %478 = fdiv double %476, %477
  store double %478, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %479 = load double, ptr @sa, align 8
  %480 = load double, ptr @sb, align 8
  %481 = fsub double %479, %480
  store double %481, ptr @sc, align 8
  %482 = load double, ptr @one, align 8
  %483 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %484 = fdiv double %482, %483
  store double %484, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %485 = load double, ptr @sc, align 8
  %486 = fmul double %485, 1.000000e-30
  %487 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %488 = fmul double %487, 1.000000e-30
  %489 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %490 = fmul double %489, 1.000000e-30
  %491 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %486, double noundef %488, double noundef %490)
  %492 = load double, ptr @piref, align 8
  %493 = load double, ptr @four, align 8
  %494 = sitofp i32 %175 to double
  %495 = fmul double %493, %494
  %496 = fdiv double %492, %495
  %497 = call i32 @dtime(ptr noundef @TimeArray)
  %498 = sub nsw i32 %175, 1
  %499 = icmp sle i32 1, %498
  br i1 %499, label %.lr.ph22, label %536

.lr.ph22:                                         ; preds = %430
  br label %500

500:                                              ; preds = %.lr.ph22, %532
  %.751 = phi i32 [ 1, %.lr.ph22 ], [ %533, %532 ]
  %.12 = phi double [ 0.000000e+00, %.lr.ph22 ], [ %531, %532 ]
  %501 = sitofp i32 %.751 to double
  %502 = fmul double %501, %496
  %503 = fmul double %502, %502
  %504 = load double, ptr @A6, align 8
  %505 = load double, ptr @A5, align 8
  %506 = call double @llvm.fmuladd.f64(double %504, double %503, double %505)
  %507 = load double, ptr @A4, align 8
  %508 = call double @llvm.fmuladd.f64(double %506, double %503, double %507)
  %509 = load double, ptr @A3, align 8
  %510 = call double @llvm.fmuladd.f64(double %508, double %503, double %509)
  %511 = load double, ptr @A2, align 8
  %512 = call double @llvm.fmuladd.f64(double %510, double %503, double %511)
  %513 = load double, ptr @A1, align 8
  %514 = call double @llvm.fmuladd.f64(double %512, double %503, double %513)
  %515 = load double, ptr @one, align 8
  %516 = call double @llvm.fmuladd.f64(double %514, double %503, double %515)
  %517 = fmul double %502, %516
  %518 = load double, ptr @B6, align 8
  %519 = load double, ptr @B5, align 8
  %520 = call double @llvm.fmuladd.f64(double %518, double %503, double %519)
  %521 = load double, ptr @B4, align 8
  %522 = call double @llvm.fmuladd.f64(double %503, double %520, double %521)
  %523 = load double, ptr @B3, align 8
  %524 = call double @llvm.fmuladd.f64(double %503, double %522, double %523)
  %525 = load double, ptr @B2, align 8
  %526 = call double @llvm.fmuladd.f64(double %503, double %524, double %525)
  %527 = load double, ptr @B1, align 8
  %528 = call double @llvm.fmuladd.f64(double %503, double %526, double %527)
  %529 = load double, ptr @one, align 8
  %530 = call double @llvm.fmuladd.f64(double %503, double %528, double %529)
  %531 = call double @llvm.fmuladd.f64(double %517, double %530, double %.12)
  br label %532

532:                                              ; preds = %500
  %533 = add nsw i32 %.751, 1
  %534 = sub nsw i32 %175, 1
  %535 = icmp sle i32 %533, %534
  br i1 %535, label %500, label %._crit_edge23, !llvm.loop !16

._crit_edge23:                                    ; preds = %532
  br label %536

536:                                              ; preds = %._crit_edge23, %430
  %.13 = phi double [ %531, %._crit_edge23 ], [ 0.000000e+00, %430 ]
  %537 = call i32 @dtime(ptr noundef @TimeArray)
  %538 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %539 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %540 = load double, ptr @nulltime, align 8
  %541 = fneg double %540
  %542 = call double @llvm.fmuladd.f64(double %538, double %539, double %541)
  store double %542, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %543 = load double, ptr @piref, align 8
  %544 = load double, ptr @four, align 8
  %545 = fdiv double %543, %544
  %546 = fmul double %545, %545
  %547 = load double, ptr @A6, align 8
  %548 = load double, ptr @A5, align 8
  %549 = call double @llvm.fmuladd.f64(double %547, double %546, double %548)
  %550 = load double, ptr @A4, align 8
  %551 = call double @llvm.fmuladd.f64(double %549, double %546, double %550)
  %552 = load double, ptr @A3, align 8
  %553 = call double @llvm.fmuladd.f64(double %551, double %546, double %552)
  %554 = load double, ptr @A2, align 8
  %555 = call double @llvm.fmuladd.f64(double %553, double %546, double %554)
  %556 = load double, ptr @A1, align 8
  %557 = call double @llvm.fmuladd.f64(double %555, double %546, double %556)
  %558 = load double, ptr @one, align 8
  %559 = call double @llvm.fmuladd.f64(double %557, double %546, double %558)
  %560 = fmul double %545, %559
  store double %560, ptr @sa, align 8
  %561 = load double, ptr @B6, align 8
  %562 = load double, ptr @B5, align 8
  %563 = call double @llvm.fmuladd.f64(double %561, double %546, double %562)
  %564 = load double, ptr @B4, align 8
  %565 = call double @llvm.fmuladd.f64(double %546, double %563, double %564)
  %566 = load double, ptr @B3, align 8
  %567 = call double @llvm.fmuladd.f64(double %546, double %565, double %566)
  %568 = load double, ptr @B2, align 8
  %569 = call double @llvm.fmuladd.f64(double %546, double %567, double %568)
  %570 = load double, ptr @B1, align 8
  %571 = call double @llvm.fmuladd.f64(double %546, double %569, double %570)
  %572 = load double, ptr @one, align 8
  %573 = call double @llvm.fmuladd.f64(double %546, double %571, double %572)
  store double %573, ptr @sb, align 8
  %574 = load double, ptr @sa, align 8
  %575 = load double, ptr @sb, align 8
  %576 = fmul double %574, %575
  store double %576, ptr @sa, align 8
  %577 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %578 = fdiv double %577, 2.900000e+01
  store double %578, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %579 = load double, ptr @sa, align 8
  %580 = load double, ptr @two, align 8
  %581 = call double @llvm.fmuladd.f64(double %580, double %.13, double %579)
  %582 = fmul double %496, %581
  %583 = load double, ptr @two, align 8
  %584 = fdiv double %582, %583
  store double %584, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %585 = load double, ptr @sa, align 8
  %586 = load double, ptr @sb, align 8
  %587 = fsub double %585, %586
  store double %587, ptr @sc, align 8
  %588 = load double, ptr @one, align 8
  %589 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %590 = fdiv double %588, %589
  store double %590, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %591 = load double, ptr @sc, align 8
  %592 = fmul double %591, 1.000000e-30
  %593 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %594 = fmul double %593, 1.000000e-30
  %595 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %596 = fmul double %595, 1.000000e-30
  %597 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, double noundef %592, double noundef %594, double noundef %596)
  %598 = load double, ptr @one, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %599 = load double, ptr @sa, align 8
  %600 = sitofp i32 %175 to double
  %601 = fdiv double %599, %600
  %602 = call i32 @dtime(ptr noundef @TimeArray)
  %603 = sub nsw i32 %175, 1
  %604 = icmp sle i32 1, %603
  br i1 %604, label %.lr.ph25, label %622

.lr.ph25:                                         ; preds = %536
  br label %605

605:                                              ; preds = %.lr.ph25, %618
  %.852 = phi i32 [ 1, %.lr.ph25 ], [ %619, %618 ]
  %.14 = phi double [ 0.000000e+00, %.lr.ph25 ], [ %617, %618 ]
  %606 = sitofp i32 %.852 to double
  %607 = fmul double %606, %601
  %608 = fmul double %607, %607
  %609 = fadd double %607, %598
  %610 = fdiv double %598, %609
  %611 = fsub double %.14, %610
  %612 = fadd double %608, %598
  %613 = fdiv double %607, %612
  %614 = fsub double %611, %613
  %615 = call double @llvm.fmuladd.f64(double %607, double %608, double %598)
  %616 = fdiv double %608, %615
  %617 = fsub double %614, %616
  br label %618

618:                                              ; preds = %605
  %619 = add nsw i32 %.852, 1
  %620 = sub nsw i32 %175, 1
  %621 = icmp sle i32 %619, %620
  br i1 %621, label %605, label %._crit_edge26, !llvm.loop !17

._crit_edge26:                                    ; preds = %618
  br label %622

622:                                              ; preds = %._crit_edge26, %536
  %.15 = phi double [ %617, %._crit_edge26 ], [ 0.000000e+00, %536 ]
  %623 = call i32 @dtime(ptr noundef @TimeArray)
  %624 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %625 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %626 = load double, ptr @nulltime, align 8
  %627 = fneg double %626
  %628 = call double @llvm.fmuladd.f64(double %624, double %625, double %627)
  store double %628, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %629 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %630 = fdiv double %629, 1.200000e+01
  store double %630, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %631 = load double, ptr @sa, align 8
  %632 = fmul double %631, %631
  %633 = fneg double %598
  %634 = fadd double %631, %598
  %635 = fdiv double %598, %634
  %636 = fsub double %633, %635
  %637 = fadd double %632, %598
  %638 = fdiv double %631, %637
  %639 = fsub double %636, %638
  %640 = call double @llvm.fmuladd.f64(double %631, double %632, double %598)
  %641 = fdiv double %632, %640
  %642 = fsub double %639, %641
  store double %642, ptr @sa, align 8
  %643 = fmul double 1.800000e+01, %601
  %644 = load double, ptr @sa, align 8
  %645 = load double, ptr @two, align 8
  %646 = call double @llvm.fmuladd.f64(double %645, double %.15, double %644)
  %647 = fmul double %643, %646
  store double %647, ptr @sa, align 8
  %648 = load double, ptr @sa, align 8
  %649 = fptosi double %648 to i32
  %650 = mul nsw i32 -2000, %649
  %651 = sitofp i32 %650 to double
  %652 = load double, ptr @scale, align 8
  %653 = fdiv double %651, %652
  %654 = fptosi double %653 to i32
  %655 = load double, ptr @sa, align 8
  %656 = fadd double %655, 5.002000e+02
  store double %656, ptr @sc, align 8
  %657 = load double, ptr @one, align 8
  %658 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %659 = fdiv double %657, %658
  store double %659, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %660 = load double, ptr @sc, align 8
  %661 = fmul double %660, 1.000000e-30
  %662 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %663 = fmul double %662, 1.000000e-30
  %664 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %665 = fmul double %664, 1.000000e-30
  %666 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, double noundef %661, double noundef %663, double noundef %665)
  %667 = load double, ptr @piref, align 8
  %668 = load double, ptr @three, align 8
  %669 = sitofp i32 %654 to double
  %670 = fmul double %668, %669
  %671 = fdiv double %667, %670
  %672 = call i32 @dtime(ptr noundef @TimeArray)
  %673 = sub nsw i32 %654, 1
  %674 = icmp sle i32 1, %673
  br i1 %674, label %.lr.ph28, label %712

.lr.ph28:                                         ; preds = %622
  br label %675

675:                                              ; preds = %.lr.ph28, %708
  %.953 = phi i32 [ 1, %.lr.ph28 ], [ %709, %708 ]
  %.16 = phi double [ 0.000000e+00, %.lr.ph28 ], [ %707, %708 ]
  %676 = sitofp i32 %.953 to double
  %677 = fmul double %676, %671
  %678 = fmul double %677, %677
  %679 = load double, ptr @B6, align 8
  %680 = load double, ptr @B5, align 8
  %681 = call double @llvm.fmuladd.f64(double %679, double %678, double %680)
  %682 = load double, ptr @B4, align 8
  %683 = call double @llvm.fmuladd.f64(double %678, double %681, double %682)
  %684 = load double, ptr @B3, align 8
  %685 = call double @llvm.fmuladd.f64(double %678, double %683, double %684)
  %686 = load double, ptr @B2, align 8
  %687 = call double @llvm.fmuladd.f64(double %678, double %685, double %686)
  %688 = load double, ptr @B1, align 8
  %689 = call double @llvm.fmuladd.f64(double %678, double %687, double %688)
  %690 = load double, ptr @one, align 8
  %691 = call double @llvm.fmuladd.f64(double %678, double %689, double %690)
  %692 = fmul double %691, %691
  %693 = fmul double %692, %677
  %694 = load double, ptr @A6, align 8
  %695 = load double, ptr @A5, align 8
  %696 = call double @llvm.fmuladd.f64(double %694, double %678, double %695)
  %697 = load double, ptr @A4, align 8
  %698 = call double @llvm.fmuladd.f64(double %696, double %678, double %697)
  %699 = load double, ptr @A3, align 8
  %700 = call double @llvm.fmuladd.f64(double %698, double %678, double %699)
  %701 = load double, ptr @A2, align 8
  %702 = call double @llvm.fmuladd.f64(double %700, double %678, double %701)
  %703 = load double, ptr @A1, align 8
  %704 = call double @llvm.fmuladd.f64(double %702, double %678, double %703)
  %705 = load double, ptr @one, align 8
  %706 = call double @llvm.fmuladd.f64(double %704, double %678, double %705)
  %707 = call double @llvm.fmuladd.f64(double %693, double %706, double %.16)
  br label %708

708:                                              ; preds = %675
  %709 = add nsw i32 %.953, 1
  %710 = sub nsw i32 %654, 1
  %711 = icmp sle i32 %709, %710
  br i1 %711, label %675, label %._crit_edge29, !llvm.loop !18

._crit_edge29:                                    ; preds = %708
  br label %712

712:                                              ; preds = %._crit_edge29, %622
  %.17 = phi double [ %707, %._crit_edge29 ], [ 0.000000e+00, %622 ]
  %713 = call i32 @dtime(ptr noundef @TimeArray)
  %714 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %715 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %716 = load double, ptr @nulltime, align 8
  %717 = fneg double %716
  %718 = call double @llvm.fmuladd.f64(double %714, double %715, double %717)
  store double %718, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %719 = load double, ptr @piref, align 8
  %720 = load double, ptr @three, align 8
  %721 = fdiv double %719, %720
  %722 = fmul double %721, %721
  %723 = load double, ptr @A6, align 8
  %724 = load double, ptr @A5, align 8
  %725 = call double @llvm.fmuladd.f64(double %723, double %722, double %724)
  %726 = load double, ptr @A4, align 8
  %727 = call double @llvm.fmuladd.f64(double %725, double %722, double %726)
  %728 = load double, ptr @A3, align 8
  %729 = call double @llvm.fmuladd.f64(double %727, double %722, double %728)
  %730 = load double, ptr @A2, align 8
  %731 = call double @llvm.fmuladd.f64(double %729, double %722, double %730)
  %732 = load double, ptr @A1, align 8
  %733 = call double @llvm.fmuladd.f64(double %731, double %722, double %732)
  %734 = load double, ptr @one, align 8
  %735 = call double @llvm.fmuladd.f64(double %733, double %722, double %734)
  %736 = fmul double %721, %735
  store double %736, ptr @sa, align 8
  %737 = load double, ptr @B6, align 8
  %738 = load double, ptr @B5, align 8
  %739 = call double @llvm.fmuladd.f64(double %737, double %722, double %738)
  %740 = load double, ptr @B4, align 8
  %741 = call double @llvm.fmuladd.f64(double %722, double %739, double %740)
  %742 = load double, ptr @B3, align 8
  %743 = call double @llvm.fmuladd.f64(double %722, double %741, double %742)
  %744 = load double, ptr @B2, align 8
  %745 = call double @llvm.fmuladd.f64(double %722, double %743, double %744)
  %746 = load double, ptr @B1, align 8
  %747 = call double @llvm.fmuladd.f64(double %722, double %745, double %746)
  %748 = load double, ptr @one, align 8
  %749 = call double @llvm.fmuladd.f64(double %722, double %747, double %748)
  store double %749, ptr @sb, align 8
  %750 = load double, ptr @sa, align 8
  %751 = load double, ptr @sb, align 8
  %752 = fmul double %750, %751
  %753 = load double, ptr @sb, align 8
  %754 = fmul double %752, %753
  store double %754, ptr @sa, align 8
  %755 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %756 = fdiv double %755, 3.000000e+01
  store double %756, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %757 = load double, ptr @sa, align 8
  %758 = load double, ptr @two, align 8
  %759 = call double @llvm.fmuladd.f64(double %758, double %.17, double %757)
  %760 = fmul double %671, %759
  %761 = load double, ptr @two, align 8
  %762 = fdiv double %760, %761
  store double %762, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %763 = load double, ptr @sa, align 8
  %764 = load double, ptr @sb, align 8
  %765 = fsub double %763, %764
  store double %765, ptr @sc, align 8
  %766 = load double, ptr @one, align 8
  %767 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %768 = fdiv double %766, %767
  store double %768, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %769 = load double, ptr @sc, align 8
  %770 = fmul double %769, 1.000000e-30
  %771 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %772 = fmul double %771, 1.000000e-30
  %773 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %774 = fmul double %773, 1.000000e-30
  %775 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, double noundef %770, double noundef %772, double noundef %774)
  %776 = load double, ptr @five, align 8
  %777 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %778 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %779 = fsub double %777, %778
  %780 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %781 = call double @llvm.fmuladd.f64(double %776, double %779, double %780)
  %782 = fdiv double %781, 5.200000e+01
  store double %782, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %783 = load double, ptr @one, align 8
  %784 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %785 = fdiv double %783, %784
  store double %785, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %786 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %787 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %788 = fadd double %786, %787
  %789 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %790 = fadd double %788, %789
  %791 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %792 = fadd double %790, %791
  %793 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %794 = fadd double %792, %793
  store double %794, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %795 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %796 = load double, ptr @four, align 8
  %797 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %798 = call double @llvm.fmuladd.f64(double %796, double %797, double %795)
  %799 = fdiv double %798, 1.520000e+02
  store double %799, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %800 = load double, ptr @one, align 8
  %801 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %802 = fdiv double %800, %801
  store double %802, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %803 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %804 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %805 = fadd double %803, %804
  %806 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %807 = fadd double %805, %806
  %808 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %809 = fadd double %807, %808
  %810 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %811 = fadd double %809, %810
  store double %811, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %812 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %813 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %814 = fadd double %812, %813
  %815 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %816 = fadd double %814, %815
  %817 = fdiv double %816, 1.460000e+02
  store double %817, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %818 = load double, ptr @one, align 8
  %819 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %820 = fdiv double %818, %819
  store double %820, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %821 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %822 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %823 = fadd double %821, %822
  %824 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %825 = fadd double %823, %824
  %826 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %827 = fadd double %825, %826
  %828 = fdiv double %827, 9.100000e+01
  store double %828, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %829 = load double, ptr @one, align 8
  %830 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %831 = fdiv double %829, %830
  store double %831, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %832 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %833 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %654)
  %834 = load double, ptr @nulltime, align 8
  %835 = fmul double %834, 1.000000e-30
  %836 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, double noundef %835)
  %837 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %838 = fmul double %837, 1.000000e-30
  %839 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, double noundef %838)
  %840 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %841 = fmul double %840, 1.000000e-30
  %842 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, double noundef %841)
  %843 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %844 = fmul double %843, 1.000000e-30
  %845 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, double noundef %844)
  %846 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %847 = fmul double %846, 1.000000e-30
  %848 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, double noundef %847)
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
