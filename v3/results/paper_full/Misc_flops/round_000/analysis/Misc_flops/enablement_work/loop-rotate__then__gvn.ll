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
  %18 = load double, ptr @TLimit, align 8
  %19 = fcmp olt double 0.000000e+00, %18
  br i1 %19, label %.lr.ph2, label %.loopexit

.lr.ph2:                                          ; preds = %0
  br label %23

20:                                               ; preds = %47
  %21 = load double, ptr @TLimit, align 8
  %22 = fcmp olt double %50, %21
  br i1 %22, label %23, label %..loopexit_crit_edge, !llvm.loop !7

23:                                               ; preds = %.lr.ph2, %20
  %24 = phi i32 [ 15625, %.lr.ph2 ], [ %25, %20 ]
  %25 = mul nsw i32 2, %24
  store i32 %25, ptr %11, align 4
  %26 = load double, ptr @one, align 8
  %27 = sitofp i32 %25 to double
  %28 = fdiv double %26, %27
  store double %28, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double %26, ptr %5, align 8
  %29 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %30 = sub nsw i32 %25, 1
  %31 = icmp sle i32 1, %30
  br i1 %31, label %.lr.ph, label %47

.lr.ph:                                           ; preds = %23
  %.pre = load double, ptr %5, align 8
  %.pre30 = load double, ptr @D1, align 8
  %.pre31 = load double, ptr @D2, align 8
  %.pre32 = load double, ptr @D3, align 8
  %.pre33 = load double, ptr @E2, align 8
  %.pre34 = load double, ptr @E3, align 8
  br label %32

32:                                               ; preds = %.lr.ph, %32
  %33 = phi i32 [ 1, %.lr.ph ], [ %45, %32 ]
  %34 = phi double [ 0.000000e+00, %.lr.ph ], [ %44, %32 ]
  %35 = phi double [ 0.000000e+00, %.lr.ph ], [ %36, %32 ]
  %36 = fadd double %35, %.pre
  store double %36, ptr %4, align 8
  %37 = fmul double %36, %28
  store double %37, ptr %3, align 8
  %38 = call double @llvm.fmuladd.f64(double %37, double %.pre32, double %.pre31)
  %39 = call double @llvm.fmuladd.f64(double %37, double %38, double %.pre30)
  %40 = call double @llvm.fmuladd.f64(double %37, double %.pre34, double %.pre33)
  %41 = call double @llvm.fmuladd.f64(double %37, double %40, double %.pre30)
  %42 = call double @llvm.fmuladd.f64(double %37, double %41, double %.pre)
  %43 = fdiv double %39, %42
  %44 = fadd double %34, %43
  store double %44, ptr %2, align 8
  %45 = add nsw i32 %33, 1
  store i32 %45, ptr %9, align 4
  %46 = icmp sle i32 %45, %30
  br i1 %46, label %32, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %32
  br label %47

47:                                               ; preds = %._crit_edge, %23
  %48 = phi double [ %44, %._crit_edge ], [ 0.000000e+00, %23 ]
  %49 = call i32 @dtime(ptr noundef @TimeArray)
  %50 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %50, ptr @sa, align 8
  %51 = icmp eq i32 %25, 512000000
  br i1 %51, label %52, label %20

52:                                               ; preds = %47
  br label %56

..loopexit_crit_edge:                             ; preds = %20
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %0
  %53 = phi double [ %48, %..loopexit_crit_edge ], [ undef, %0 ]
  %54 = phi double [ %28, %..loopexit_crit_edge ], [ undef, %0 ]
  %55 = phi i32 [ %25, %..loopexit_crit_edge ], [ 15625, %0 ]
  br label %56

56:                                               ; preds = %.loopexit, %52
  %57 = phi double [ %53, %.loopexit ], [ %48, %52 ]
  %58 = phi double [ %54, %.loopexit ], [ %28, %52 ]
  %59 = phi i32 [ %55, %.loopexit ], [ 512000000, %52 ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %60 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %61 = sub nsw i32 %59, 1
  %62 = icmp sle i32 1, %61
  br i1 %62, label %.lr.ph4, label %67

.lr.ph4:                                          ; preds = %56
  br label %63

63:                                               ; preds = %.lr.ph4, %63
  %64 = phi i32 [ 1, %.lr.ph4 ], [ %65, %63 ]
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %9, align 4
  %66 = icmp sle i32 %65, %61
  br i1 %66, label %63, label %._crit_edge5, !llvm.loop !10

._crit_edge5:                                     ; preds = %63
  br label %67

67:                                               ; preds = %._crit_edge5, %56
  %68 = call i32 @dtime(ptr noundef @TimeArray)
  %69 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %70 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %71 = fmul double %69, %70
  store double %71, ptr @nulltime, align 8
  %72 = fcmp olt double %71, 0.000000e+00
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store double 0.000000e+00, ptr @nulltime, align 8
  br label %74

74:                                               ; preds = %73, %67
  %75 = phi double [ 0.000000e+00, %73 ], [ %71, %67 ]
  %76 = load double, ptr @sa, align 8
  %77 = fneg double %75
  %78 = call double @llvm.fmuladd.f64(double %69, double %76, double %77)
  store double %78, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %79 = load double, ptr @D1, align 8
  %80 = load double, ptr @D2, align 8
  %81 = fadd double %79, %80
  %82 = load double, ptr @D3, align 8
  %83 = fadd double %81, %82
  %84 = load double, ptr @one, align 8
  %85 = fadd double %84, %79
  %86 = load double, ptr @E2, align 8
  %87 = fadd double %85, %86
  %88 = load double, ptr @E3, align 8
  %89 = fadd double %87, %88
  %90 = fdiv double %83, %89
  store double %90, ptr @sa, align 8
  store double %79, ptr @sb, align 8
  %91 = fdiv double %78, 1.400000e+01
  store double %91, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %92 = fadd double %90, %79
  %93 = load double, ptr @two, align 8
  %94 = call double @llvm.fmuladd.f64(double %93, double %57, double %92)
  %95 = fmul double %58, %94
  %96 = fdiv double %95, %93
  store double %96, ptr @sa, align 8
  %97 = fdiv double %84, %96
  store double %97, ptr @sb, align 8
  %98 = fptosi double %97 to i32
  %99 = mul nsw i32 40000, %98
  %100 = sitofp i32 %99 to double
  %101 = load double, ptr @scale, align 8
  %102 = fdiv double %100, %101
  %103 = fptosi double %102 to i32
  store i32 %103, ptr %11, align 4
  %104 = fsub double %97, 2.520000e+01
  store double %104, ptr @sc, align 8
  %105 = fdiv double %84, %91
  store double %105, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %106 = fmul double %104, 1.000000e-30
  %107 = fmul double %78, 1.000000e-30
  %108 = fmul double %105, 1.000000e-30
  %109 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %106, double noundef %107, double noundef %108)
  store i32 %103, ptr %10, align 4
  %110 = load double, ptr @five, align 8
  %111 = fneg double %110
  store double %111, ptr %2, align 8
  %112 = load double, ptr @one, align 8
  %113 = fneg double %112
  store double %113, ptr @sa, align 8
  %114 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %115 = icmp sle i32 1, %103
  br i1 %115, label %.lr.ph7, label %124

.lr.ph7:                                          ; preds = %74
  %.pre35 = load double, ptr @sa, align 8
  br label %116

116:                                              ; preds = %.lr.ph7, %116
  %117 = phi i32 [ 1, %.lr.ph7 ], [ %122, %116 ]
  %118 = phi double [ %.pre35, %.lr.ph7 ], [ %121, %116 ]
  %119 = phi double [ %111, %.lr.ph7 ], [ %120, %116 ]
  %120 = fneg double %119
  store double %120, ptr %2, align 8
  %121 = fadd double %118, %120
  store double %121, ptr @sa, align 8
  %122 = add nsw i32 %117, 1
  store i32 %122, ptr %9, align 4
  %123 = icmp sle i32 %122, %103
  br i1 %123, label %116, label %._crit_edge8, !llvm.loop !11

._crit_edge8:                                     ; preds = %116
  br label %124

124:                                              ; preds = %._crit_edge8, %74
  %125 = phi double [ %120, %._crit_edge8 ], [ %111, %74 ]
  %126 = call i32 @dtime(ptr noundef @TimeArray)
  %127 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %128 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %129 = fmul double %127, %128
  store double %129, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %130 = fcmp olt double %129, 0.000000e+00
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  br label %132

132:                                              ; preds = %131, %124
  %133 = sitofp i32 %103 to double
  store double %133, ptr @sc, align 8
  %134 = load double, ptr @sa, align 8
  store double %134, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  store double 0.000000e+00, ptr %6, align 8
  %135 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br i1 %115, label %.lr.ph10, label %154

.lr.ph10:                                         ; preds = %132
  %.pre36 = load double, ptr @sa, align 8
  %.pre37 = load double, ptr @two, align 8
  %.pre38 = load double, ptr %5, align 8
  br label %136

136:                                              ; preds = %.lr.ph10, %136
  %137 = phi i32 [ 1, %.lr.ph10 ], [ %152, %136 ]
  %138 = phi double [ %.pre38, %.lr.ph10 ], [ %151, %136 ]
  %139 = phi double [ 0.000000e+00, %.lr.ph10 ], [ %149, %136 ]
  %140 = phi double [ 0.000000e+00, %.lr.ph10 ], [ %148, %136 ]
  %141 = phi double [ %134, %.lr.ph10 ], [ %146, %136 ]
  %142 = phi double [ %.pre36, %.lr.ph10 ], [ %145, %136 ]
  %143 = phi double [ %125, %.lr.ph10 ], [ %144, %136 ]
  %144 = fneg double %143
  store double %144, ptr %2, align 8
  %145 = fadd double %142, %144
  store double %145, ptr @sa, align 8
  %146 = fadd double %141, %.pre37
  store double %146, ptr %3, align 8
  %147 = fsub double %144, %146
  %148 = fadd double %140, %147
  store double %148, ptr %6, align 8
  %149 = call double @llvm.fmuladd.f64(double %143, double %146, double %139)
  store double %149, ptr %4, align 8
  %150 = fdiv double %144, %146
  %151 = fadd double %138, %150
  store double %151, ptr %5, align 8
  %152 = add nsw i32 %137, 1
  store i32 %152, ptr %9, align 4
  %153 = icmp sle i32 %152, %103
  br i1 %153, label %136, label %._crit_edge11, !llvm.loop !12

._crit_edge11:                                    ; preds = %136
  br label %154

154:                                              ; preds = %._crit_edge11, %132
  %155 = phi double [ %149, %._crit_edge11 ], [ 0.000000e+00, %132 ]
  %156 = phi double [ %148, %._crit_edge11 ], [ 0.000000e+00, %132 ]
  %157 = call i32 @dtime(ptr noundef @TimeArray)
  %158 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %159 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %160 = fmul double %158, %159
  store double %160, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %161 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %162 = fsub double %160, %161
  %163 = fdiv double %162, 7.000000e+00
  store double %163, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %164 = load double, ptr @sa, align 8
  %165 = fmul double %164, %156
  %166 = load double, ptr @sc, align 8
  %167 = fdiv double %165, %166
  %168 = fptosi double %167 to i32
  store i32 %168, ptr %10, align 4
  %169 = load double, ptr @four, align 8
  %170 = load double, ptr %5, align 8
  %171 = fmul double %169, %170
  %172 = load double, ptr @five, align 8
  %173 = fdiv double %171, %172
  store double %173, ptr @sa, align 8
  %174 = fdiv double %172, %155
  %175 = fadd double %173, %174
  store double %175, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %176 = fmul double %155, %155
  %177 = fmul double %176, %155
  %178 = fdiv double 3.125000e+01, %177
  %179 = fsub double %175, %178
  store double %179, ptr @piprg, align 8
  %180 = load double, ptr @piref, align 8
  %181 = fsub double %179, %180
  store double %181, ptr @pierr, align 8
  %182 = load double, ptr @one, align 8
  %183 = fdiv double %182, %163
  store double %183, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %184 = fmul double %181, 1.000000e-30
  %185 = fmul double %162, 1.000000e-30
  %186 = fmul double %183, 1.000000e-30
  %187 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %184, double noundef %185, double noundef %186)
  %188 = load double, ptr @piref, align 8
  %189 = load double, ptr @three, align 8
  %190 = sitofp i32 %168 to double
  %191 = fmul double %189, %190
  %192 = fdiv double %188, %191
  store double %192, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %193 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %194 = sub nsw i32 %168, 1
  %195 = icmp sle i32 1, %194
  br i1 %195, label %.lr.ph13, label %214

.lr.ph13:                                         ; preds = %154
  %.pre39 = load double, ptr @one, align 8
  %.pre40 = load double, ptr @A6, align 8
  %.pre41 = load double, ptr @A5, align 8
  %.pre42 = load double, ptr @A4, align 8
  %.pre43 = load double, ptr @A3, align 8
  %.pre44 = load double, ptr @A2, align 8
  %.pre45 = load double, ptr @A1, align 8
  br label %196

196:                                              ; preds = %.lr.ph13, %196
  %197 = phi i32 [ 1, %.lr.ph13 ], [ %212, %196 ]
  %198 = phi double [ 0.000000e+00, %.lr.ph13 ], [ %211, %196 ]
  %199 = phi double [ 0.000000e+00, %.lr.ph13 ], [ %200, %196 ]
  %200 = fadd double %199, %.pre39
  store double %200, ptr %4, align 8
  %201 = fmul double %200, %192
  store double %201, ptr %3, align 8
  %202 = fmul double %201, %201
  store double %202, ptr %5, align 8
  %203 = fneg double %.pre41
  %204 = call double @llvm.fmuladd.f64(double %.pre40, double %202, double %203)
  %205 = call double @llvm.fmuladd.f64(double %204, double %202, double %.pre42)
  %206 = fneg double %.pre43
  %207 = call double @llvm.fmuladd.f64(double %205, double %202, double %206)
  %208 = call double @llvm.fmuladd.f64(double %207, double %202, double %.pre44)
  %209 = call double @llvm.fmuladd.f64(double %208, double %202, double %.pre45)
  %210 = call double @llvm.fmuladd.f64(double %209, double %202, double %.pre39)
  %211 = call double @llvm.fmuladd.f64(double %201, double %210, double %198)
  store double %211, ptr %2, align 8
  %212 = add nsw i32 %197, 1
  store i32 %212, ptr %9, align 4
  %213 = icmp sle i32 %212, %194
  br i1 %213, label %196, label %._crit_edge14, !llvm.loop !13

._crit_edge14:                                    ; preds = %196
  br label %214

214:                                              ; preds = %._crit_edge14, %154
  %215 = phi double [ %211, %._crit_edge14 ], [ 0.000000e+00, %154 ]
  %216 = call i32 @dtime(ptr noundef @TimeArray)
  %217 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %218 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %219 = load double, ptr @nulltime, align 8
  %220 = fneg double %219
  %221 = call double @llvm.fmuladd.f64(double %217, double %218, double %220)
  store double %221, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %222 = load double, ptr @piref, align 8
  %223 = load double, ptr @three, align 8
  %224 = fdiv double %222, %223
  store double %224, ptr %3, align 8
  %225 = fmul double %224, %224
  store double %225, ptr %5, align 8
  %226 = load double, ptr @A6, align 8
  %227 = load double, ptr @A5, align 8
  %228 = fneg double %227
  %229 = call double @llvm.fmuladd.f64(double %226, double %225, double %228)
  %230 = load double, ptr @A4, align 8
  %231 = call double @llvm.fmuladd.f64(double %229, double %225, double %230)
  %232 = load double, ptr @A3, align 8
  %233 = fneg double %232
  %234 = call double @llvm.fmuladd.f64(double %231, double %225, double %233)
  %235 = load double, ptr @A2, align 8
  %236 = call double @llvm.fmuladd.f64(double %234, double %225, double %235)
  %237 = load double, ptr @A1, align 8
  %238 = call double @llvm.fmuladd.f64(double %236, double %225, double %237)
  %239 = load double, ptr @one, align 8
  %240 = call double @llvm.fmuladd.f64(double %238, double %225, double %239)
  %241 = fmul double %224, %240
  store double %241, ptr @sa, align 8
  %242 = fdiv double %221, 1.700000e+01
  store double %242, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %243 = load double, ptr @two, align 8
  %244 = call double @llvm.fmuladd.f64(double %243, double %215, double %241)
  %245 = fmul double %192, %244
  %246 = fdiv double %245, %243
  store double %246, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %247 = fsub double %246, 5.000000e-01
  store double %247, ptr @sc, align 8
  %248 = fdiv double %239, %242
  store double %248, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %249 = fmul double %247, 1.000000e-30
  %250 = fmul double %221, 1.000000e-30
  %251 = fmul double %248, 1.000000e-30
  %252 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %249, double noundef %250, double noundef %251)
  %253 = load double, ptr @A3, align 8
  %254 = fneg double %253
  store double %254, ptr @A3, align 8
  %255 = load double, ptr @A5, align 8
  %256 = fneg double %255
  store double %256, ptr @A5, align 8
  %257 = load double, ptr @piref, align 8
  %258 = load double, ptr @three, align 8
  %259 = fmul double %258, %190
  %260 = fdiv double %257, %259
  store double %260, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %261 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br i1 %195, label %.lr.ph16, label %277

.lr.ph16:                                         ; preds = %214
  %.pre46 = load double, ptr @B6, align 8
  %.pre47 = load double, ptr @B5, align 8
  %.pre48 = load double, ptr @B4, align 8
  %.pre49 = load double, ptr @B3, align 8
  %.pre50 = load double, ptr @B2, align 8
  %.pre51 = load double, ptr @B1, align 8
  %.pre52 = load double, ptr @one, align 8
  br label %262

262:                                              ; preds = %.lr.ph16, %262
  %263 = phi double [ 0.000000e+00, %.lr.ph16 ], [ %274, %262 ]
  %264 = phi i32 [ 1, %.lr.ph16 ], [ %275, %262 ]
  %265 = sitofp i32 %264 to double
  %266 = fmul double %265, %260
  store double %266, ptr %3, align 8
  %267 = fmul double %266, %266
  store double %267, ptr %5, align 8
  %268 = call double @llvm.fmuladd.f64(double %.pre46, double %267, double %.pre47)
  %269 = call double @llvm.fmuladd.f64(double %267, double %268, double %.pre48)
  %270 = call double @llvm.fmuladd.f64(double %267, double %269, double %.pre49)
  %271 = call double @llvm.fmuladd.f64(double %267, double %270, double %.pre50)
  %272 = call double @llvm.fmuladd.f64(double %267, double %271, double %.pre51)
  %273 = call double @llvm.fmuladd.f64(double %267, double %272, double %263)
  %274 = fadd double %273, %.pre52
  store double %274, ptr %2, align 8
  %275 = add nsw i32 %264, 1
  store i32 %275, ptr %9, align 4
  %276 = icmp sle i32 %275, %194
  br i1 %276, label %262, label %._crit_edge17, !llvm.loop !14

._crit_edge17:                                    ; preds = %262
  br label %277

277:                                              ; preds = %._crit_edge17, %214
  %278 = phi double [ %274, %._crit_edge17 ], [ 0.000000e+00, %214 ]
  %279 = call i32 @dtime(ptr noundef @TimeArray)
  %280 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %281 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %282 = load double, ptr @nulltime, align 8
  %283 = fneg double %282
  %284 = call double @llvm.fmuladd.f64(double %280, double %281, double %283)
  store double %284, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %285 = load double, ptr @piref, align 8
  %286 = load double, ptr @three, align 8
  %287 = fdiv double %285, %286
  store double %287, ptr %3, align 8
  %288 = fmul double %287, %287
  store double %288, ptr %5, align 8
  %289 = load double, ptr @B6, align 8
  %290 = load double, ptr @B5, align 8
  %291 = call double @llvm.fmuladd.f64(double %289, double %288, double %290)
  %292 = load double, ptr @B4, align 8
  %293 = call double @llvm.fmuladd.f64(double %288, double %291, double %292)
  %294 = load double, ptr @B3, align 8
  %295 = call double @llvm.fmuladd.f64(double %288, double %293, double %294)
  %296 = load double, ptr @B2, align 8
  %297 = call double @llvm.fmuladd.f64(double %288, double %295, double %296)
  %298 = load double, ptr @B1, align 8
  %299 = call double @llvm.fmuladd.f64(double %288, double %297, double %298)
  %300 = load double, ptr @one, align 8
  %301 = call double @llvm.fmuladd.f64(double %288, double %299, double %300)
  store double %301, ptr @sa, align 8
  %302 = fdiv double %284, 1.500000e+01
  store double %302, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %303 = fadd double %301, %300
  %304 = load double, ptr @two, align 8
  %305 = call double @llvm.fmuladd.f64(double %304, double %278, double %303)
  %306 = fmul double %260, %305
  %307 = fdiv double %306, %304
  store double %307, ptr @sa, align 8
  store double %287, ptr %3, align 8
  store double %288, ptr %5, align 8
  %308 = load double, ptr @A6, align 8
  %309 = load double, ptr @A5, align 8
  %310 = call double @llvm.fmuladd.f64(double %308, double %288, double %309)
  %311 = load double, ptr @A4, align 8
  %312 = call double @llvm.fmuladd.f64(double %310, double %288, double %311)
  %313 = load double, ptr @A3, align 8
  %314 = call double @llvm.fmuladd.f64(double %312, double %288, double %313)
  %315 = load double, ptr @A2, align 8
  %316 = call double @llvm.fmuladd.f64(double %314, double %288, double %315)
  %317 = load double, ptr @A1, align 8
  %318 = call double @llvm.fmuladd.f64(double %316, double %288, double %317)
  %319 = load double, ptr @A0, align 8
  %320 = call double @llvm.fmuladd.f64(double %318, double %288, double %319)
  %321 = fmul double %287, %320
  store double %321, ptr @sb, align 8
  %322 = fsub double %307, %321
  store double %322, ptr @sc, align 8
  %323 = fdiv double %300, %302
  store double %323, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %324 = fmul double %322, 1.000000e-30
  %325 = fmul double %284, 1.000000e-30
  %326 = fmul double %323, 1.000000e-30
  %327 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %324, double noundef %325, double noundef %326)
  %328 = load double, ptr @piref, align 8
  %329 = load double, ptr @three, align 8
  %330 = fmul double %329, %190
  %331 = fdiv double %328, %330
  store double %331, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %332 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br i1 %195, label %.lr.ph19, label %356

.lr.ph19:                                         ; preds = %277
  %.pre53 = load double, ptr @A6, align 8
  %.pre54 = load double, ptr @A5, align 8
  %.pre55 = load double, ptr @A4, align 8
  %.pre56 = load double, ptr @A3, align 8
  %.pre57 = load double, ptr @A2, align 8
  %.pre58 = load double, ptr @A1, align 8
  %.pre59 = load double, ptr @one, align 8
  %.pre60 = load double, ptr @B6, align 8
  %.pre61 = load double, ptr @B5, align 8
  %.pre62 = load double, ptr @B4, align 8
  %.pre63 = load double, ptr @B3, align 8
  %.pre64 = load double, ptr @B2, align 8
  %.pre65 = load double, ptr @B1, align 8
  br label %333

333:                                              ; preds = %.lr.ph19, %333
  %334 = phi double [ 0.000000e+00, %.lr.ph19 ], [ %353, %333 ]
  %335 = phi i32 [ 1, %.lr.ph19 ], [ %354, %333 ]
  %336 = sitofp i32 %335 to double
  %337 = fmul double %336, %331
  store double %337, ptr %3, align 8
  %338 = fmul double %337, %337
  store double %338, ptr %5, align 8
  %339 = call double @llvm.fmuladd.f64(double %.pre53, double %338, double %.pre54)
  %340 = call double @llvm.fmuladd.f64(double %339, double %338, double %.pre55)
  %341 = call double @llvm.fmuladd.f64(double %340, double %338, double %.pre56)
  %342 = call double @llvm.fmuladd.f64(double %341, double %338, double %.pre57)
  %343 = call double @llvm.fmuladd.f64(double %342, double %338, double %.pre58)
  %344 = call double @llvm.fmuladd.f64(double %343, double %338, double %.pre59)
  %345 = fmul double %337, %344
  store double %345, ptr %4, align 8
  %346 = call double @llvm.fmuladd.f64(double %.pre60, double %338, double %.pre61)
  %347 = call double @llvm.fmuladd.f64(double %338, double %346, double %.pre62)
  %348 = call double @llvm.fmuladd.f64(double %338, double %347, double %.pre63)
  %349 = call double @llvm.fmuladd.f64(double %338, double %348, double %.pre64)
  %350 = call double @llvm.fmuladd.f64(double %338, double %349, double %.pre65)
  %351 = call double @llvm.fmuladd.f64(double %338, double %350, double %.pre59)
  %352 = fdiv double %345, %351
  %353 = fadd double %334, %352
  store double %353, ptr %2, align 8
  %354 = add nsw i32 %335, 1
  store i32 %354, ptr %9, align 4
  %355 = icmp sle i32 %354, %194
  br i1 %355, label %333, label %._crit_edge20, !llvm.loop !15

._crit_edge20:                                    ; preds = %333
  br label %356

356:                                              ; preds = %._crit_edge20, %277
  %357 = phi double [ %353, %._crit_edge20 ], [ 0.000000e+00, %277 ]
  %358 = call i32 @dtime(ptr noundef @TimeArray)
  %359 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %360 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %361 = load double, ptr @nulltime, align 8
  %362 = fneg double %361
  %363 = call double @llvm.fmuladd.f64(double %359, double %360, double %362)
  store double %363, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %364 = load double, ptr @piref, align 8
  %365 = load double, ptr @three, align 8
  %366 = fdiv double %364, %365
  store double %366, ptr %3, align 8
  %367 = fmul double %366, %366
  store double %367, ptr %5, align 8
  %368 = load double, ptr @A6, align 8
  %369 = load double, ptr @A5, align 8
  %370 = call double @llvm.fmuladd.f64(double %368, double %367, double %369)
  %371 = load double, ptr @A4, align 8
  %372 = call double @llvm.fmuladd.f64(double %370, double %367, double %371)
  %373 = load double, ptr @A3, align 8
  %374 = call double @llvm.fmuladd.f64(double %372, double %367, double %373)
  %375 = load double, ptr @A2, align 8
  %376 = call double @llvm.fmuladd.f64(double %374, double %367, double %375)
  %377 = load double, ptr @A1, align 8
  %378 = call double @llvm.fmuladd.f64(double %376, double %367, double %377)
  %379 = load double, ptr @one, align 8
  %380 = call double @llvm.fmuladd.f64(double %378, double %367, double %379)
  %381 = fmul double %366, %380
  store double %381, ptr @sa, align 8
  %382 = load double, ptr @B6, align 8
  %383 = load double, ptr @B5, align 8
  %384 = call double @llvm.fmuladd.f64(double %382, double %367, double %383)
  %385 = load double, ptr @B4, align 8
  %386 = call double @llvm.fmuladd.f64(double %367, double %384, double %385)
  %387 = load double, ptr @B3, align 8
  %388 = call double @llvm.fmuladd.f64(double %367, double %386, double %387)
  %389 = load double, ptr @B2, align 8
  %390 = call double @llvm.fmuladd.f64(double %367, double %388, double %389)
  %391 = load double, ptr @B1, align 8
  %392 = call double @llvm.fmuladd.f64(double %367, double %390, double %391)
  %393 = call double @llvm.fmuladd.f64(double %367, double %392, double %379)
  store double %393, ptr @sb, align 8
  %394 = fdiv double %381, %393
  store double %394, ptr @sa, align 8
  %395 = fdiv double %363, 2.900000e+01
  store double %395, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %396 = load double, ptr @two, align 8
  %397 = call double @llvm.fmuladd.f64(double %396, double %357, double %394)
  %398 = fmul double %331, %397
  %399 = fdiv double %398, %396
  store double %399, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %400 = fsub double %399, f0x3FE62E42FEFA39EF
  store double %400, ptr @sc, align 8
  %401 = fdiv double %379, %395
  store double %401, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %402 = fmul double %400, 1.000000e-30
  %403 = fmul double %363, 1.000000e-30
  %404 = fmul double %401, 1.000000e-30
  %405 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %402, double noundef %403, double noundef %404)
  %406 = load double, ptr @piref, align 8
  %407 = load double, ptr @four, align 8
  %408 = fmul double %407, %190
  %409 = fdiv double %406, %408
  store double %409, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %410 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br i1 %195, label %.lr.ph22, label %433

.lr.ph22:                                         ; preds = %356
  %.pre66 = load double, ptr @A6, align 8
  %.pre67 = load double, ptr @A5, align 8
  %.pre68 = load double, ptr @A4, align 8
  %.pre69 = load double, ptr @A3, align 8
  %.pre70 = load double, ptr @A2, align 8
  %.pre71 = load double, ptr @A1, align 8
  %.pre72 = load double, ptr @one, align 8
  %.pre73 = load double, ptr @B6, align 8
  %.pre74 = load double, ptr @B5, align 8
  %.pre75 = load double, ptr @B4, align 8
  %.pre76 = load double, ptr @B3, align 8
  %.pre77 = load double, ptr @B2, align 8
  %.pre78 = load double, ptr @B1, align 8
  br label %411

411:                                              ; preds = %.lr.ph22, %411
  %412 = phi double [ 0.000000e+00, %.lr.ph22 ], [ %430, %411 ]
  %413 = phi i32 [ 1, %.lr.ph22 ], [ %431, %411 ]
  %414 = sitofp i32 %413 to double
  %415 = fmul double %414, %409
  store double %415, ptr %3, align 8
  %416 = fmul double %415, %415
  store double %416, ptr %5, align 8
  %417 = call double @llvm.fmuladd.f64(double %.pre66, double %416, double %.pre67)
  %418 = call double @llvm.fmuladd.f64(double %417, double %416, double %.pre68)
  %419 = call double @llvm.fmuladd.f64(double %418, double %416, double %.pre69)
  %420 = call double @llvm.fmuladd.f64(double %419, double %416, double %.pre70)
  %421 = call double @llvm.fmuladd.f64(double %420, double %416, double %.pre71)
  %422 = call double @llvm.fmuladd.f64(double %421, double %416, double %.pre72)
  %423 = fmul double %415, %422
  store double %423, ptr %4, align 8
  %424 = call double @llvm.fmuladd.f64(double %.pre73, double %416, double %.pre74)
  %425 = call double @llvm.fmuladd.f64(double %416, double %424, double %.pre75)
  %426 = call double @llvm.fmuladd.f64(double %416, double %425, double %.pre76)
  %427 = call double @llvm.fmuladd.f64(double %416, double %426, double %.pre77)
  %428 = call double @llvm.fmuladd.f64(double %416, double %427, double %.pre78)
  %429 = call double @llvm.fmuladd.f64(double %416, double %428, double %.pre72)
  %430 = call double @llvm.fmuladd.f64(double %423, double %429, double %412)
  store double %430, ptr %2, align 8
  %431 = add nsw i32 %413, 1
  store i32 %431, ptr %9, align 4
  %432 = icmp sle i32 %431, %194
  br i1 %432, label %411, label %._crit_edge23, !llvm.loop !16

._crit_edge23:                                    ; preds = %411
  br label %433

433:                                              ; preds = %._crit_edge23, %356
  %434 = phi double [ %430, %._crit_edge23 ], [ 0.000000e+00, %356 ]
  %435 = call i32 @dtime(ptr noundef @TimeArray)
  %436 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %437 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %438 = load double, ptr @nulltime, align 8
  %439 = fneg double %438
  %440 = call double @llvm.fmuladd.f64(double %436, double %437, double %439)
  store double %440, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %441 = load double, ptr @piref, align 8
  %442 = load double, ptr @four, align 8
  %443 = fdiv double %441, %442
  store double %443, ptr %3, align 8
  %444 = fmul double %443, %443
  store double %444, ptr %5, align 8
  %445 = load double, ptr @A6, align 8
  %446 = load double, ptr @A5, align 8
  %447 = call double @llvm.fmuladd.f64(double %445, double %444, double %446)
  %448 = load double, ptr @A4, align 8
  %449 = call double @llvm.fmuladd.f64(double %447, double %444, double %448)
  %450 = load double, ptr @A3, align 8
  %451 = call double @llvm.fmuladd.f64(double %449, double %444, double %450)
  %452 = load double, ptr @A2, align 8
  %453 = call double @llvm.fmuladd.f64(double %451, double %444, double %452)
  %454 = load double, ptr @A1, align 8
  %455 = call double @llvm.fmuladd.f64(double %453, double %444, double %454)
  %456 = load double, ptr @one, align 8
  %457 = call double @llvm.fmuladd.f64(double %455, double %444, double %456)
  %458 = fmul double %443, %457
  store double %458, ptr @sa, align 8
  %459 = load double, ptr @B6, align 8
  %460 = load double, ptr @B5, align 8
  %461 = call double @llvm.fmuladd.f64(double %459, double %444, double %460)
  %462 = load double, ptr @B4, align 8
  %463 = call double @llvm.fmuladd.f64(double %444, double %461, double %462)
  %464 = load double, ptr @B3, align 8
  %465 = call double @llvm.fmuladd.f64(double %444, double %463, double %464)
  %466 = load double, ptr @B2, align 8
  %467 = call double @llvm.fmuladd.f64(double %444, double %465, double %466)
  %468 = load double, ptr @B1, align 8
  %469 = call double @llvm.fmuladd.f64(double %444, double %467, double %468)
  %470 = call double @llvm.fmuladd.f64(double %444, double %469, double %456)
  store double %470, ptr @sb, align 8
  %471 = fmul double %458, %470
  store double %471, ptr @sa, align 8
  %472 = fdiv double %440, 2.900000e+01
  store double %472, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %473 = load double, ptr @two, align 8
  %474 = call double @llvm.fmuladd.f64(double %473, double %434, double %471)
  %475 = fmul double %409, %474
  %476 = fdiv double %475, %473
  store double %476, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %477 = fsub double %476, 2.500000e-01
  store double %477, ptr @sc, align 8
  %478 = fdiv double %456, %472
  store double %478, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %479 = fmul double %477, 1.000000e-30
  %480 = fmul double %440, 1.000000e-30
  %481 = fmul double %478, 1.000000e-30
  %482 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, double noundef %479, double noundef %480, double noundef %481)
  store double 0.000000e+00, ptr %2, align 8
  %483 = load double, ptr @one, align 8
  store double %483, ptr %5, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %484 = fdiv double f0x40599541F7F192A4, %190
  store double %484, ptr %4, align 8
  %485 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br i1 %195, label %.lr.ph25, label %503

.lr.ph25:                                         ; preds = %433
  %.pre79 = load double, ptr %5, align 8
  br label %486

486:                                              ; preds = %.lr.ph25, %486
  %487 = phi double [ 0.000000e+00, %.lr.ph25 ], [ %500, %486 ]
  %488 = phi i32 [ 1, %.lr.ph25 ], [ %501, %486 ]
  %489 = sitofp i32 %488 to double
  %490 = fmul double %489, %484
  store double %490, ptr %6, align 8
  %491 = fmul double %490, %490
  store double %491, ptr %3, align 8
  %492 = fadd double %490, %.pre79
  %493 = fdiv double %.pre79, %492
  %494 = fsub double %487, %493
  %495 = fadd double %491, %.pre79
  %496 = fdiv double %490, %495
  %497 = fsub double %494, %496
  %498 = call double @llvm.fmuladd.f64(double %490, double %491, double %.pre79)
  %499 = fdiv double %491, %498
  %500 = fsub double %497, %499
  store double %500, ptr %2, align 8
  %501 = add nsw i32 %488, 1
  store i32 %501, ptr %9, align 4
  %502 = icmp sle i32 %501, %194
  br i1 %502, label %486, label %._crit_edge26, !llvm.loop !17

._crit_edge26:                                    ; preds = %486
  br label %503

503:                                              ; preds = %._crit_edge26, %433
  %504 = phi double [ %500, %._crit_edge26 ], [ 0.000000e+00, %433 ]
  %505 = call i32 @dtime(ptr noundef @TimeArray)
  %506 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %507 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %508 = load double, ptr @nulltime, align 8
  %509 = fneg double %508
  %510 = call double @llvm.fmuladd.f64(double %506, double %507, double %509)
  store double %510, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %511 = fdiv double %510, 1.200000e+01
  store double %511, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %512 = load double, ptr @sa, align 8
  store double %512, ptr %6, align 8
  %513 = fmul double %512, %512
  store double %513, ptr %3, align 8
  %514 = load double, ptr %5, align 8
  %515 = fneg double %514
  %516 = fadd double %512, %514
  %517 = fdiv double %514, %516
  %518 = fsub double %515, %517
  %519 = fadd double %513, %514
  %520 = fdiv double %512, %519
  %521 = fsub double %518, %520
  %522 = call double @llvm.fmuladd.f64(double %512, double %513, double %514)
  %523 = fdiv double %513, %522
  %524 = fsub double %521, %523
  store double %524, ptr @sa, align 8
  %525 = fmul double 1.800000e+01, %484
  %526 = load double, ptr @two, align 8
  %527 = call double @llvm.fmuladd.f64(double %526, double %504, double %524)
  %528 = fmul double %525, %527
  store double %528, ptr @sa, align 8
  %529 = fptosi double %528 to i32
  %530 = mul nsw i32 -2000, %529
  store i32 %530, ptr %10, align 4
  %531 = sitofp i32 %530 to double
  %532 = load double, ptr @scale, align 8
  %533 = fdiv double %531, %532
  %534 = fptosi double %533 to i32
  store i32 %534, ptr %10, align 4
  %535 = fadd double %528, 5.002000e+02
  store double %535, ptr @sc, align 8
  %536 = load double, ptr @one, align 8
  %537 = fdiv double %536, %511
  store double %537, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %538 = fmul double %535, 1.000000e-30
  %539 = fmul double %510, 1.000000e-30
  %540 = fmul double %537, 1.000000e-30
  %541 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, double noundef %538, double noundef %539, double noundef %540)
  %542 = load double, ptr @piref, align 8
  %543 = load double, ptr @three, align 8
  %544 = sitofp i32 %534 to double
  %545 = fmul double %543, %544
  %546 = fdiv double %542, %545
  store double %546, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %547 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %548 = sub nsw i32 %534, 1
  %549 = icmp sle i32 1, %548
  br i1 %549, label %.lr.ph28, label %573

.lr.ph28:                                         ; preds = %503
  %.pre80 = load double, ptr @B6, align 8
  %.pre81 = load double, ptr @B5, align 8
  %.pre82 = load double, ptr @B4, align 8
  %.pre83 = load double, ptr @B3, align 8
  %.pre84 = load double, ptr @B2, align 8
  %.pre85 = load double, ptr @B1, align 8
  %.pre86 = load double, ptr @one, align 8
  %.pre87 = load double, ptr @A6, align 8
  %.pre88 = load double, ptr @A5, align 8
  %.pre89 = load double, ptr @A4, align 8
  %.pre90 = load double, ptr @A3, align 8
  %.pre91 = load double, ptr @A2, align 8
  %.pre92 = load double, ptr @A1, align 8
  br label %550

550:                                              ; preds = %.lr.ph28, %550
  %551 = phi double [ 0.000000e+00, %.lr.ph28 ], [ %570, %550 ]
  %552 = phi i32 [ 1, %.lr.ph28 ], [ %571, %550 ]
  %553 = sitofp i32 %552 to double
  %554 = fmul double %553, %546
  store double %554, ptr %3, align 8
  %555 = fmul double %554, %554
  store double %555, ptr %5, align 8
  %556 = call double @llvm.fmuladd.f64(double %.pre80, double %555, double %.pre81)
  %557 = call double @llvm.fmuladd.f64(double %555, double %556, double %.pre82)
  %558 = call double @llvm.fmuladd.f64(double %555, double %557, double %.pre83)
  %559 = call double @llvm.fmuladd.f64(double %555, double %558, double %.pre84)
  %560 = call double @llvm.fmuladd.f64(double %555, double %559, double %.pre85)
  %561 = call double @llvm.fmuladd.f64(double %555, double %560, double %.pre86)
  store double %561, ptr %4, align 8
  %562 = fmul double %561, %561
  %563 = fmul double %562, %554
  %564 = call double @llvm.fmuladd.f64(double %.pre87, double %555, double %.pre88)
  %565 = call double @llvm.fmuladd.f64(double %564, double %555, double %.pre89)
  %566 = call double @llvm.fmuladd.f64(double %565, double %555, double %.pre90)
  %567 = call double @llvm.fmuladd.f64(double %566, double %555, double %.pre91)
  %568 = call double @llvm.fmuladd.f64(double %567, double %555, double %.pre92)
  %569 = call double @llvm.fmuladd.f64(double %568, double %555, double %.pre86)
  %570 = call double @llvm.fmuladd.f64(double %563, double %569, double %551)
  store double %570, ptr %2, align 8
  %571 = add nsw i32 %552, 1
  store i32 %571, ptr %9, align 4
  %572 = icmp sle i32 %571, %548
  br i1 %572, label %550, label %._crit_edge29, !llvm.loop !18

._crit_edge29:                                    ; preds = %550
  br label %573

573:                                              ; preds = %._crit_edge29, %503
  %574 = phi double [ %570, %._crit_edge29 ], [ 0.000000e+00, %503 ]
  %575 = call i32 @dtime(ptr noundef @TimeArray)
  %576 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %577 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %578 = load double, ptr @nulltime, align 8
  %579 = fneg double %578
  %580 = call double @llvm.fmuladd.f64(double %576, double %577, double %579)
  store double %580, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %581 = load double, ptr @piref, align 8
  %582 = load double, ptr @three, align 8
  %583 = fdiv double %581, %582
  store double %583, ptr %3, align 8
  %584 = fmul double %583, %583
  store double %584, ptr %5, align 8
  %585 = load double, ptr @A6, align 8
  %586 = load double, ptr @A5, align 8
  %587 = call double @llvm.fmuladd.f64(double %585, double %584, double %586)
  %588 = load double, ptr @A4, align 8
  %589 = call double @llvm.fmuladd.f64(double %587, double %584, double %588)
  %590 = load double, ptr @A3, align 8
  %591 = call double @llvm.fmuladd.f64(double %589, double %584, double %590)
  %592 = load double, ptr @A2, align 8
  %593 = call double @llvm.fmuladd.f64(double %591, double %584, double %592)
  %594 = load double, ptr @A1, align 8
  %595 = call double @llvm.fmuladd.f64(double %593, double %584, double %594)
  %596 = load double, ptr @one, align 8
  %597 = call double @llvm.fmuladd.f64(double %595, double %584, double %596)
  %598 = fmul double %583, %597
  store double %598, ptr @sa, align 8
  %599 = load double, ptr @B6, align 8
  %600 = load double, ptr @B5, align 8
  %601 = call double @llvm.fmuladd.f64(double %599, double %584, double %600)
  %602 = load double, ptr @B4, align 8
  %603 = call double @llvm.fmuladd.f64(double %584, double %601, double %602)
  %604 = load double, ptr @B3, align 8
  %605 = call double @llvm.fmuladd.f64(double %584, double %603, double %604)
  %606 = load double, ptr @B2, align 8
  %607 = call double @llvm.fmuladd.f64(double %584, double %605, double %606)
  %608 = load double, ptr @B1, align 8
  %609 = call double @llvm.fmuladd.f64(double %584, double %607, double %608)
  %610 = call double @llvm.fmuladd.f64(double %584, double %609, double %596)
  store double %610, ptr @sb, align 8
  %611 = fmul double %598, %610
  %612 = fmul double %611, %610
  store double %612, ptr @sa, align 8
  %613 = fdiv double %580, 3.000000e+01
  store double %613, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %614 = load double, ptr @two, align 8
  %615 = call double @llvm.fmuladd.f64(double %614, double %574, double %612)
  %616 = fmul double %546, %615
  %617 = fdiv double %616, %614
  store double %617, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %618 = fsub double %617, f0x3FD2AAAAAAAAAAAB
  store double %618, ptr @sc, align 8
  %619 = fdiv double %596, %613
  store double %619, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %620 = fmul double %618, 1.000000e-30
  %621 = fmul double %580, 1.000000e-30
  %622 = fmul double %619, 1.000000e-30
  %623 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, double noundef %620, double noundef %621, double noundef %622)
  %624 = load double, ptr @five, align 8
  %625 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %626 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %627 = fsub double %625, %626
  %628 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %629 = call double @llvm.fmuladd.f64(double %624, double %627, double %628)
  %630 = fdiv double %629, 5.200000e+01
  store double %630, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %631 = load double, ptr @one, align 8
  %632 = fdiv double %631, %630
  store double %632, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %633 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %634 = fadd double %633, %628
  %635 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %636 = fadd double %634, %635
  %637 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %638 = fadd double %636, %637
  %639 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %640 = fadd double %638, %639
  store double %640, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %641 = load double, ptr @four, align 8
  %642 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %643 = call double @llvm.fmuladd.f64(double %641, double %642, double %640)
  %644 = fdiv double %643, 1.520000e+02
  store double %644, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %645 = fdiv double %631, %644
  store double %645, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %640, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %646 = fadd double %640, %642
  %647 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %648 = fadd double %646, %647
  %649 = fdiv double %648, 1.460000e+02
  store double %649, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %650 = fdiv double %631, %649
  store double %650, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %651 = fadd double %628, %635
  %652 = fadd double %651, %639
  %653 = fadd double %652, %647
  %654 = fdiv double %653, 9.100000e+01
  store double %654, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %655 = fdiv double %631, %654
  store double %655, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %656 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %657 = load i32, ptr %10, align 4
  %658 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %657)
  %659 = load double, ptr @nulltime, align 8
  %660 = fmul double %659, 1.000000e-30
  %661 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, double noundef %660)
  %662 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %663 = fmul double %662, 1.000000e-30
  %664 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, double noundef %663)
  %665 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %666 = fmul double %665, 1.000000e-30
  %667 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, double noundef %666)
  %668 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %669 = fmul double %668, 1.000000e-30
  %670 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, double noundef %669)
  %671 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %672 = fmul double %671, 1.000000e-30
  %673 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, double noundef %672)
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
