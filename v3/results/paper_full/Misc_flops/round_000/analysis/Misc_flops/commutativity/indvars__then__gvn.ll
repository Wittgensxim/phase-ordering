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

18:                                               ; preds = %59, %0
  %19 = phi double [ %33, %59 ], [ undef, %0 ]
  %20 = phi double [ %29, %59 ], [ undef, %0 ]
  %21 = phi i32 [ %26, %59 ], [ 15625, %0 ]
  %22 = phi double [ %56, %59 ], [ 0.000000e+00, %0 ]
  %23 = load double, ptr @TLimit, align 8
  %24 = fcmp olt double %22, %23
  br i1 %24, label %25, label %.loopexit

25:                                               ; preds = %18
  %26 = mul nsw i32 2, %21
  store i32 %26, ptr %11, align 4
  %27 = load double, ptr @one, align 8
  %28 = sitofp i32 %26 to double
  %29 = fdiv double %27, %28
  store double %29, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double %27, ptr %5, align 8
  %30 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %31

31:                                               ; preds = %37, %25
  %32 = phi double [ %39, %37 ], [ 0.000000e+00, %25 ]
  %33 = phi double [ %52, %37 ], [ 0.000000e+00, %25 ]
  %34 = phi i32 [ %53, %37 ], [ 1, %25 ]
  %35 = sub nsw i32 %26, 1
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %31
  %38 = load double, ptr %5, align 8
  %39 = fadd double %32, %38
  store double %39, ptr %4, align 8
  %40 = fmul double %39, %29
  store double %40, ptr %3, align 8
  %41 = load double, ptr @D1, align 8
  %42 = load double, ptr @D2, align 8
  %43 = load double, ptr @D3, align 8
  %44 = call double @llvm.fmuladd.f64(double %40, double %43, double %42)
  %45 = call double @llvm.fmuladd.f64(double %40, double %44, double %41)
  %46 = load double, ptr @E2, align 8
  %47 = load double, ptr @E3, align 8
  %48 = call double @llvm.fmuladd.f64(double %40, double %47, double %46)
  %49 = call double @llvm.fmuladd.f64(double %40, double %48, double %41)
  %50 = call double @llvm.fmuladd.f64(double %40, double %49, double %38)
  %51 = fdiv double %45, %50
  %52 = fadd double %33, %51
  store double %52, ptr %2, align 8
  %53 = add nsw i32 %34, 1
  store i32 %53, ptr %9, align 4
  br label %31, !llvm.loop !7

54:                                               ; preds = %31
  %55 = call i32 @dtime(ptr noundef @TimeArray)
  %56 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %56, ptr @sa, align 8
  %57 = icmp eq i32 %26, 512000000
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %60

59:                                               ; preds = %54
  br label %18, !llvm.loop !9

.loopexit:                                        ; preds = %18
  br label %60

60:                                               ; preds = %.loopexit, %58
  %61 = phi double [ %19, %.loopexit ], [ %33, %58 ]
  %62 = phi double [ %20, %.loopexit ], [ %29, %58 ]
  %63 = phi i32 [ %21, %.loopexit ], [ 512000000, %58 ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %64 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %65

65:                                               ; preds = %69, %60
  %66 = phi i32 [ %70, %69 ], [ 1, %60 ]
  %67 = sub nsw i32 %63, 1
  %68 = icmp sle i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = add nsw i32 %66, 1
  store i32 %70, ptr %9, align 4
  br label %65, !llvm.loop !10

71:                                               ; preds = %65
  %72 = call i32 @dtime(ptr noundef @TimeArray)
  %73 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %74 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %75 = fmul double %73, %74
  store double %75, ptr @nulltime, align 8
  %76 = fcmp olt double %75, 0.000000e+00
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  store double 0.000000e+00, ptr @nulltime, align 8
  br label %78

78:                                               ; preds = %77, %71
  %79 = phi double [ 0.000000e+00, %77 ], [ %75, %71 ]
  %80 = load double, ptr @sa, align 8
  %81 = fneg double %79
  %82 = call double @llvm.fmuladd.f64(double %73, double %80, double %81)
  store double %82, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %83 = load double, ptr @D1, align 8
  %84 = load double, ptr @D2, align 8
  %85 = fadd double %83, %84
  %86 = load double, ptr @D3, align 8
  %87 = fadd double %85, %86
  %88 = load double, ptr @one, align 8
  %89 = fadd double %88, %83
  %90 = load double, ptr @E2, align 8
  %91 = fadd double %89, %90
  %92 = load double, ptr @E3, align 8
  %93 = fadd double %91, %92
  %94 = fdiv double %87, %93
  store double %94, ptr @sa, align 8
  store double %83, ptr @sb, align 8
  %95 = fdiv double %82, 1.400000e+01
  store double %95, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %96 = fadd double %94, %83
  %97 = load double, ptr @two, align 8
  %98 = call double @llvm.fmuladd.f64(double %97, double %61, double %96)
  %99 = fmul double %62, %98
  %100 = fdiv double %99, %97
  store double %100, ptr @sa, align 8
  %101 = fdiv double %88, %100
  store double %101, ptr @sb, align 8
  %102 = fptosi double %101 to i32
  %103 = mul nsw i32 40000, %102
  %104 = sitofp i32 %103 to double
  %105 = load double, ptr @scale, align 8
  %106 = fdiv double %104, %105
  %107 = fptosi double %106 to i32
  store i32 %107, ptr %11, align 4
  %108 = fsub double %101, 2.520000e+01
  store double %108, ptr @sc, align 8
  %109 = fdiv double %88, %95
  store double %109, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %110 = fmul double %108, 1.000000e-30
  %111 = fmul double %82, 1.000000e-30
  %112 = fmul double %109, 1.000000e-30
  %113 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %110, double noundef %111, double noundef %112)
  store i32 %107, ptr %10, align 4
  %114 = load double, ptr @five, align 8
  %115 = fneg double %114
  store double %115, ptr %2, align 8
  %116 = load double, ptr @one, align 8
  %117 = fneg double %116
  store double %117, ptr @sa, align 8
  %118 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %119

119:                                              ; preds = %123, %78
  %120 = phi double [ %124, %123 ], [ %115, %78 ]
  %121 = phi i32 [ %127, %123 ], [ 1, %78 ]
  %122 = icmp sle i32 %121, %107
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = fneg double %120
  store double %124, ptr %2, align 8
  %125 = load double, ptr @sa, align 8
  %126 = fadd double %125, %124
  store double %126, ptr @sa, align 8
  %127 = add nsw i32 %121, 1
  store i32 %127, ptr %9, align 4
  br label %119, !llvm.loop !11

128:                                              ; preds = %119
  %129 = call i32 @dtime(ptr noundef @TimeArray)
  %130 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %131 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %132 = fmul double %130, %131
  store double %132, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %133 = fcmp olt double %132, 0.000000e+00
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  br label %135

135:                                              ; preds = %134, %128
  %136 = sitofp i32 %107 to double
  store double %136, ptr @sc, align 8
  %137 = load double, ptr @sa, align 8
  store double %137, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  store double 0.000000e+00, ptr %6, align 8
  %138 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %139

139:                                              ; preds = %146, %135
  %140 = phi double [ %151, %146 ], [ %137, %135 ]
  %141 = phi double [ %147, %146 ], [ %120, %135 ]
  %142 = phi double [ %154, %146 ], [ 0.000000e+00, %135 ]
  %143 = phi double [ %153, %146 ], [ 0.000000e+00, %135 ]
  %144 = phi i32 [ %158, %146 ], [ 1, %135 ]
  %145 = icmp sle i32 %144, %107
  br i1 %145, label %146, label %159

146:                                              ; preds = %139
  %147 = fneg double %141
  store double %147, ptr %2, align 8
  %148 = load double, ptr @sa, align 8
  %149 = fadd double %148, %147
  store double %149, ptr @sa, align 8
  %150 = load double, ptr @two, align 8
  %151 = fadd double %140, %150
  store double %151, ptr %3, align 8
  %152 = fsub double %147, %151
  %153 = fadd double %143, %152
  store double %153, ptr %6, align 8
  %154 = call double @llvm.fmuladd.f64(double %141, double %151, double %142)
  store double %154, ptr %4, align 8
  %155 = load double, ptr %5, align 8
  %156 = fdiv double %147, %151
  %157 = fadd double %155, %156
  store double %157, ptr %5, align 8
  %158 = add nsw i32 %144, 1
  store i32 %158, ptr %9, align 4
  br label %139, !llvm.loop !12

159:                                              ; preds = %139
  %160 = call i32 @dtime(ptr noundef @TimeArray)
  %161 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %162 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %163 = fmul double %161, %162
  store double %163, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %164 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %165 = fsub double %163, %164
  %166 = fdiv double %165, 7.000000e+00
  store double %166, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %167 = load double, ptr @sa, align 8
  %168 = fmul double %167, %143
  %169 = load double, ptr @sc, align 8
  %170 = fdiv double %168, %169
  %171 = fptosi double %170 to i32
  store i32 %171, ptr %10, align 4
  %172 = load double, ptr @four, align 8
  %173 = load double, ptr %5, align 8
  %174 = fmul double %172, %173
  %175 = load double, ptr @five, align 8
  %176 = fdiv double %174, %175
  store double %176, ptr @sa, align 8
  %177 = fdiv double %175, %142
  %178 = fadd double %176, %177
  store double %178, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %179 = fmul double %142, %142
  %180 = fmul double %179, %142
  %181 = fdiv double 3.125000e+01, %180
  %182 = fsub double %178, %181
  store double %182, ptr @piprg, align 8
  %183 = load double, ptr @piref, align 8
  %184 = fsub double %182, %183
  store double %184, ptr @pierr, align 8
  %185 = load double, ptr @one, align 8
  %186 = fdiv double %185, %166
  store double %186, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %187 = fmul double %184, 1.000000e-30
  %188 = fmul double %165, 1.000000e-30
  %189 = fmul double %186, 1.000000e-30
  %190 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %187, double noundef %188, double noundef %189)
  %191 = load double, ptr @piref, align 8
  %192 = load double, ptr @three, align 8
  %193 = sitofp i32 %171 to double
  %194 = fmul double %192, %193
  %195 = fdiv double %191, %194
  store double %195, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %196 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %197

197:                                              ; preds = %203, %159
  %198 = phi double [ %205, %203 ], [ 0.000000e+00, %159 ]
  %199 = phi double [ %222, %203 ], [ 0.000000e+00, %159 ]
  %200 = phi i32 [ %223, %203 ], [ 1, %159 ]
  %201 = sub nsw i32 %171, 1
  %202 = icmp sle i32 %200, %201
  br i1 %202, label %203, label %224

203:                                              ; preds = %197
  %204 = load double, ptr @one, align 8
  %205 = fadd double %198, %204
  store double %205, ptr %4, align 8
  %206 = fmul double %205, %195
  store double %206, ptr %3, align 8
  %207 = fmul double %206, %206
  store double %207, ptr %5, align 8
  %208 = load double, ptr @A6, align 8
  %209 = load double, ptr @A5, align 8
  %210 = fneg double %209
  %211 = call double @llvm.fmuladd.f64(double %208, double %207, double %210)
  %212 = load double, ptr @A4, align 8
  %213 = call double @llvm.fmuladd.f64(double %211, double %207, double %212)
  %214 = load double, ptr @A3, align 8
  %215 = fneg double %214
  %216 = call double @llvm.fmuladd.f64(double %213, double %207, double %215)
  %217 = load double, ptr @A2, align 8
  %218 = call double @llvm.fmuladd.f64(double %216, double %207, double %217)
  %219 = load double, ptr @A1, align 8
  %220 = call double @llvm.fmuladd.f64(double %218, double %207, double %219)
  %221 = call double @llvm.fmuladd.f64(double %220, double %207, double %204)
  %222 = call double @llvm.fmuladd.f64(double %206, double %221, double %199)
  store double %222, ptr %2, align 8
  %223 = add nsw i32 %200, 1
  store i32 %223, ptr %9, align 4
  br label %197, !llvm.loop !13

224:                                              ; preds = %197
  %225 = call i32 @dtime(ptr noundef @TimeArray)
  %226 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %227 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %228 = load double, ptr @nulltime, align 8
  %229 = fneg double %228
  %230 = call double @llvm.fmuladd.f64(double %226, double %227, double %229)
  store double %230, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %231 = load double, ptr @piref, align 8
  %232 = load double, ptr @three, align 8
  %233 = fdiv double %231, %232
  store double %233, ptr %3, align 8
  %234 = fmul double %233, %233
  store double %234, ptr %5, align 8
  %235 = load double, ptr @A6, align 8
  %236 = load double, ptr @A5, align 8
  %237 = fneg double %236
  %238 = call double @llvm.fmuladd.f64(double %235, double %234, double %237)
  %239 = load double, ptr @A4, align 8
  %240 = call double @llvm.fmuladd.f64(double %238, double %234, double %239)
  %241 = load double, ptr @A3, align 8
  %242 = fneg double %241
  %243 = call double @llvm.fmuladd.f64(double %240, double %234, double %242)
  %244 = load double, ptr @A2, align 8
  %245 = call double @llvm.fmuladd.f64(double %243, double %234, double %244)
  %246 = load double, ptr @A1, align 8
  %247 = call double @llvm.fmuladd.f64(double %245, double %234, double %246)
  %248 = load double, ptr @one, align 8
  %249 = call double @llvm.fmuladd.f64(double %247, double %234, double %248)
  %250 = fmul double %233, %249
  store double %250, ptr @sa, align 8
  %251 = fdiv double %230, 1.700000e+01
  store double %251, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %252 = load double, ptr @two, align 8
  %253 = call double @llvm.fmuladd.f64(double %252, double %199, double %250)
  %254 = fmul double %195, %253
  %255 = fdiv double %254, %252
  store double %255, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %256 = fsub double %255, 5.000000e-01
  store double %256, ptr @sc, align 8
  %257 = fdiv double %248, %251
  store double %257, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %258 = fmul double %256, 1.000000e-30
  %259 = fmul double %230, 1.000000e-30
  %260 = fmul double %257, 1.000000e-30
  %261 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %258, double noundef %259, double noundef %260)
  %262 = load double, ptr @A3, align 8
  %263 = fneg double %262
  store double %263, ptr @A3, align 8
  %264 = load double, ptr @A5, align 8
  %265 = fneg double %264
  store double %265, ptr @A5, align 8
  %266 = load double, ptr @piref, align 8
  %267 = load double, ptr @three, align 8
  %268 = fmul double %267, %193
  %269 = fdiv double %266, %268
  store double %269, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %270 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %271

271:                                              ; preds = %275, %224
  %272 = phi double [ %292, %275 ], [ 0.000000e+00, %224 ]
  %273 = phi i32 [ %293, %275 ], [ 1, %224 ]
  %274 = icmp sle i32 %273, %201
  br i1 %274, label %275, label %294

275:                                              ; preds = %271
  %276 = sitofp i32 %273 to double
  %277 = fmul double %276, %269
  store double %277, ptr %3, align 8
  %278 = fmul double %277, %277
  store double %278, ptr %5, align 8
  %279 = load double, ptr @B6, align 8
  %280 = load double, ptr @B5, align 8
  %281 = call double @llvm.fmuladd.f64(double %279, double %278, double %280)
  %282 = load double, ptr @B4, align 8
  %283 = call double @llvm.fmuladd.f64(double %278, double %281, double %282)
  %284 = load double, ptr @B3, align 8
  %285 = call double @llvm.fmuladd.f64(double %278, double %283, double %284)
  %286 = load double, ptr @B2, align 8
  %287 = call double @llvm.fmuladd.f64(double %278, double %285, double %286)
  %288 = load double, ptr @B1, align 8
  %289 = call double @llvm.fmuladd.f64(double %278, double %287, double %288)
  %290 = call double @llvm.fmuladd.f64(double %278, double %289, double %272)
  %291 = load double, ptr @one, align 8
  %292 = fadd double %290, %291
  store double %292, ptr %2, align 8
  %293 = add nsw i32 %273, 1
  store i32 %293, ptr %9, align 4
  br label %271, !llvm.loop !14

294:                                              ; preds = %271
  %295 = call i32 @dtime(ptr noundef @TimeArray)
  %296 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %297 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %298 = load double, ptr @nulltime, align 8
  %299 = fneg double %298
  %300 = call double @llvm.fmuladd.f64(double %296, double %297, double %299)
  store double %300, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %301 = load double, ptr @piref, align 8
  %302 = load double, ptr @three, align 8
  %303 = fdiv double %301, %302
  store double %303, ptr %3, align 8
  %304 = fmul double %303, %303
  store double %304, ptr %5, align 8
  %305 = load double, ptr @B6, align 8
  %306 = load double, ptr @B5, align 8
  %307 = call double @llvm.fmuladd.f64(double %305, double %304, double %306)
  %308 = load double, ptr @B4, align 8
  %309 = call double @llvm.fmuladd.f64(double %304, double %307, double %308)
  %310 = load double, ptr @B3, align 8
  %311 = call double @llvm.fmuladd.f64(double %304, double %309, double %310)
  %312 = load double, ptr @B2, align 8
  %313 = call double @llvm.fmuladd.f64(double %304, double %311, double %312)
  %314 = load double, ptr @B1, align 8
  %315 = call double @llvm.fmuladd.f64(double %304, double %313, double %314)
  %316 = load double, ptr @one, align 8
  %317 = call double @llvm.fmuladd.f64(double %304, double %315, double %316)
  store double %317, ptr @sa, align 8
  %318 = fdiv double %300, 1.500000e+01
  store double %318, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %319 = fadd double %317, %316
  %320 = load double, ptr @two, align 8
  %321 = call double @llvm.fmuladd.f64(double %320, double %272, double %319)
  %322 = fmul double %269, %321
  %323 = fdiv double %322, %320
  store double %323, ptr @sa, align 8
  store double %303, ptr %3, align 8
  store double %304, ptr %5, align 8
  %324 = load double, ptr @A6, align 8
  %325 = load double, ptr @A5, align 8
  %326 = call double @llvm.fmuladd.f64(double %324, double %304, double %325)
  %327 = load double, ptr @A4, align 8
  %328 = call double @llvm.fmuladd.f64(double %326, double %304, double %327)
  %329 = load double, ptr @A3, align 8
  %330 = call double @llvm.fmuladd.f64(double %328, double %304, double %329)
  %331 = load double, ptr @A2, align 8
  %332 = call double @llvm.fmuladd.f64(double %330, double %304, double %331)
  %333 = load double, ptr @A1, align 8
  %334 = call double @llvm.fmuladd.f64(double %332, double %304, double %333)
  %335 = load double, ptr @A0, align 8
  %336 = call double @llvm.fmuladd.f64(double %334, double %304, double %335)
  %337 = fmul double %303, %336
  store double %337, ptr @sb, align 8
  %338 = fsub double %323, %337
  store double %338, ptr @sc, align 8
  %339 = fdiv double %316, %318
  store double %339, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %340 = fmul double %338, 1.000000e-30
  %341 = fmul double %300, 1.000000e-30
  %342 = fmul double %339, 1.000000e-30
  %343 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %340, double noundef %341, double noundef %342)
  %344 = load double, ptr @piref, align 8
  %345 = load double, ptr @three, align 8
  %346 = fmul double %345, %193
  %347 = fdiv double %344, %346
  store double %347, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %348 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %349

349:                                              ; preds = %353, %294
  %350 = phi double [ %384, %353 ], [ 0.000000e+00, %294 ]
  %351 = phi i32 [ %385, %353 ], [ 1, %294 ]
  %352 = icmp sle i32 %351, %201
  br i1 %352, label %353, label %386

353:                                              ; preds = %349
  %354 = sitofp i32 %351 to double
  %355 = fmul double %354, %347
  store double %355, ptr %3, align 8
  %356 = fmul double %355, %355
  store double %356, ptr %5, align 8
  %357 = load double, ptr @A6, align 8
  %358 = load double, ptr @A5, align 8
  %359 = call double @llvm.fmuladd.f64(double %357, double %356, double %358)
  %360 = load double, ptr @A4, align 8
  %361 = call double @llvm.fmuladd.f64(double %359, double %356, double %360)
  %362 = load double, ptr @A3, align 8
  %363 = call double @llvm.fmuladd.f64(double %361, double %356, double %362)
  %364 = load double, ptr @A2, align 8
  %365 = call double @llvm.fmuladd.f64(double %363, double %356, double %364)
  %366 = load double, ptr @A1, align 8
  %367 = call double @llvm.fmuladd.f64(double %365, double %356, double %366)
  %368 = load double, ptr @one, align 8
  %369 = call double @llvm.fmuladd.f64(double %367, double %356, double %368)
  %370 = fmul double %355, %369
  store double %370, ptr %4, align 8
  %371 = load double, ptr @B6, align 8
  %372 = load double, ptr @B5, align 8
  %373 = call double @llvm.fmuladd.f64(double %371, double %356, double %372)
  %374 = load double, ptr @B4, align 8
  %375 = call double @llvm.fmuladd.f64(double %356, double %373, double %374)
  %376 = load double, ptr @B3, align 8
  %377 = call double @llvm.fmuladd.f64(double %356, double %375, double %376)
  %378 = load double, ptr @B2, align 8
  %379 = call double @llvm.fmuladd.f64(double %356, double %377, double %378)
  %380 = load double, ptr @B1, align 8
  %381 = call double @llvm.fmuladd.f64(double %356, double %379, double %380)
  %382 = call double @llvm.fmuladd.f64(double %356, double %381, double %368)
  %383 = fdiv double %370, %382
  %384 = fadd double %350, %383
  store double %384, ptr %2, align 8
  %385 = add nsw i32 %351, 1
  store i32 %385, ptr %9, align 4
  br label %349, !llvm.loop !15

386:                                              ; preds = %349
  %387 = call i32 @dtime(ptr noundef @TimeArray)
  %388 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %389 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %390 = load double, ptr @nulltime, align 8
  %391 = fneg double %390
  %392 = call double @llvm.fmuladd.f64(double %388, double %389, double %391)
  store double %392, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %393 = load double, ptr @piref, align 8
  %394 = load double, ptr @three, align 8
  %395 = fdiv double %393, %394
  store double %395, ptr %3, align 8
  %396 = fmul double %395, %395
  store double %396, ptr %5, align 8
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
  store double %410, ptr @sa, align 8
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
  %422 = call double @llvm.fmuladd.f64(double %396, double %421, double %408)
  store double %422, ptr @sb, align 8
  %423 = fdiv double %410, %422
  store double %423, ptr @sa, align 8
  %424 = fdiv double %392, 2.900000e+01
  store double %424, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %425 = load double, ptr @two, align 8
  %426 = call double @llvm.fmuladd.f64(double %425, double %350, double %423)
  %427 = fmul double %347, %426
  %428 = fdiv double %427, %425
  store double %428, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %429 = fsub double %428, f0x3FE62E42FEFA39EF
  store double %429, ptr @sc, align 8
  %430 = fdiv double %408, %424
  store double %430, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %431 = fmul double %429, 1.000000e-30
  %432 = fmul double %392, 1.000000e-30
  %433 = fmul double %430, 1.000000e-30
  %434 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %431, double noundef %432, double noundef %433)
  %435 = load double, ptr @piref, align 8
  %436 = load double, ptr @four, align 8
  %437 = fmul double %436, %193
  %438 = fdiv double %435, %437
  store double %438, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %439 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %440

440:                                              ; preds = %444, %386
  %441 = phi double [ %474, %444 ], [ 0.000000e+00, %386 ]
  %442 = phi i32 [ %475, %444 ], [ 1, %386 ]
  %443 = icmp sle i32 %442, %201
  br i1 %443, label %444, label %476

444:                                              ; preds = %440
  %445 = sitofp i32 %442 to double
  %446 = fmul double %445, %438
  store double %446, ptr %3, align 8
  %447 = fmul double %446, %446
  store double %447, ptr %5, align 8
  %448 = load double, ptr @A6, align 8
  %449 = load double, ptr @A5, align 8
  %450 = call double @llvm.fmuladd.f64(double %448, double %447, double %449)
  %451 = load double, ptr @A4, align 8
  %452 = call double @llvm.fmuladd.f64(double %450, double %447, double %451)
  %453 = load double, ptr @A3, align 8
  %454 = call double @llvm.fmuladd.f64(double %452, double %447, double %453)
  %455 = load double, ptr @A2, align 8
  %456 = call double @llvm.fmuladd.f64(double %454, double %447, double %455)
  %457 = load double, ptr @A1, align 8
  %458 = call double @llvm.fmuladd.f64(double %456, double %447, double %457)
  %459 = load double, ptr @one, align 8
  %460 = call double @llvm.fmuladd.f64(double %458, double %447, double %459)
  %461 = fmul double %446, %460
  store double %461, ptr %4, align 8
  %462 = load double, ptr @B6, align 8
  %463 = load double, ptr @B5, align 8
  %464 = call double @llvm.fmuladd.f64(double %462, double %447, double %463)
  %465 = load double, ptr @B4, align 8
  %466 = call double @llvm.fmuladd.f64(double %447, double %464, double %465)
  %467 = load double, ptr @B3, align 8
  %468 = call double @llvm.fmuladd.f64(double %447, double %466, double %467)
  %469 = load double, ptr @B2, align 8
  %470 = call double @llvm.fmuladd.f64(double %447, double %468, double %469)
  %471 = load double, ptr @B1, align 8
  %472 = call double @llvm.fmuladd.f64(double %447, double %470, double %471)
  %473 = call double @llvm.fmuladd.f64(double %447, double %472, double %459)
  %474 = call double @llvm.fmuladd.f64(double %461, double %473, double %441)
  store double %474, ptr %2, align 8
  %475 = add nsw i32 %442, 1
  store i32 %475, ptr %9, align 4
  br label %440, !llvm.loop !16

476:                                              ; preds = %440
  %477 = call i32 @dtime(ptr noundef @TimeArray)
  %478 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %479 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %480 = load double, ptr @nulltime, align 8
  %481 = fneg double %480
  %482 = call double @llvm.fmuladd.f64(double %478, double %479, double %481)
  store double %482, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %483 = load double, ptr @piref, align 8
  %484 = load double, ptr @four, align 8
  %485 = fdiv double %483, %484
  store double %485, ptr %3, align 8
  %486 = fmul double %485, %485
  store double %486, ptr %5, align 8
  %487 = load double, ptr @A6, align 8
  %488 = load double, ptr @A5, align 8
  %489 = call double @llvm.fmuladd.f64(double %487, double %486, double %488)
  %490 = load double, ptr @A4, align 8
  %491 = call double @llvm.fmuladd.f64(double %489, double %486, double %490)
  %492 = load double, ptr @A3, align 8
  %493 = call double @llvm.fmuladd.f64(double %491, double %486, double %492)
  %494 = load double, ptr @A2, align 8
  %495 = call double @llvm.fmuladd.f64(double %493, double %486, double %494)
  %496 = load double, ptr @A1, align 8
  %497 = call double @llvm.fmuladd.f64(double %495, double %486, double %496)
  %498 = load double, ptr @one, align 8
  %499 = call double @llvm.fmuladd.f64(double %497, double %486, double %498)
  %500 = fmul double %485, %499
  store double %500, ptr @sa, align 8
  %501 = load double, ptr @B6, align 8
  %502 = load double, ptr @B5, align 8
  %503 = call double @llvm.fmuladd.f64(double %501, double %486, double %502)
  %504 = load double, ptr @B4, align 8
  %505 = call double @llvm.fmuladd.f64(double %486, double %503, double %504)
  %506 = load double, ptr @B3, align 8
  %507 = call double @llvm.fmuladd.f64(double %486, double %505, double %506)
  %508 = load double, ptr @B2, align 8
  %509 = call double @llvm.fmuladd.f64(double %486, double %507, double %508)
  %510 = load double, ptr @B1, align 8
  %511 = call double @llvm.fmuladd.f64(double %486, double %509, double %510)
  %512 = call double @llvm.fmuladd.f64(double %486, double %511, double %498)
  store double %512, ptr @sb, align 8
  %513 = fmul double %500, %512
  store double %513, ptr @sa, align 8
  %514 = fdiv double %482, 2.900000e+01
  store double %514, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %515 = load double, ptr @two, align 8
  %516 = call double @llvm.fmuladd.f64(double %515, double %441, double %513)
  %517 = fmul double %438, %516
  %518 = fdiv double %517, %515
  store double %518, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %519 = fsub double %518, 2.500000e-01
  store double %519, ptr @sc, align 8
  %520 = fdiv double %498, %514
  store double %520, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %521 = fmul double %519, 1.000000e-30
  %522 = fmul double %482, 1.000000e-30
  %523 = fmul double %520, 1.000000e-30
  %524 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, double noundef %521, double noundef %522, double noundef %523)
  store double 0.000000e+00, ptr %2, align 8
  %525 = load double, ptr @one, align 8
  store double %525, ptr %5, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %526 = fdiv double f0x40599541F7F192A4, %193
  store double %526, ptr %4, align 8
  %527 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %528

528:                                              ; preds = %532, %476
  %529 = phi double [ %545, %532 ], [ 0.000000e+00, %476 ]
  %530 = phi i32 [ %546, %532 ], [ 1, %476 ]
  %531 = icmp sle i32 %530, %201
  br i1 %531, label %532, label %547

532:                                              ; preds = %528
  %533 = sitofp i32 %530 to double
  %534 = fmul double %533, %526
  store double %534, ptr %6, align 8
  %535 = fmul double %534, %534
  store double %535, ptr %3, align 8
  %536 = load double, ptr %5, align 8
  %537 = fadd double %534, %536
  %538 = fdiv double %536, %537
  %539 = fsub double %529, %538
  %540 = fadd double %535, %536
  %541 = fdiv double %534, %540
  %542 = fsub double %539, %541
  %543 = call double @llvm.fmuladd.f64(double %534, double %535, double %536)
  %544 = fdiv double %535, %543
  %545 = fsub double %542, %544
  store double %545, ptr %2, align 8
  %546 = add nsw i32 %530, 1
  store i32 %546, ptr %9, align 4
  br label %528, !llvm.loop !17

547:                                              ; preds = %528
  %548 = call i32 @dtime(ptr noundef @TimeArray)
  %549 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %550 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %551 = load double, ptr @nulltime, align 8
  %552 = fneg double %551
  %553 = call double @llvm.fmuladd.f64(double %549, double %550, double %552)
  store double %553, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %554 = fdiv double %553, 1.200000e+01
  store double %554, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %555 = load double, ptr @sa, align 8
  store double %555, ptr %6, align 8
  %556 = fmul double %555, %555
  store double %556, ptr %3, align 8
  %557 = load double, ptr %5, align 8
  %558 = fneg double %557
  %559 = fadd double %555, %557
  %560 = fdiv double %557, %559
  %561 = fsub double %558, %560
  %562 = fadd double %556, %557
  %563 = fdiv double %555, %562
  %564 = fsub double %561, %563
  %565 = call double @llvm.fmuladd.f64(double %555, double %556, double %557)
  %566 = fdiv double %556, %565
  %567 = fsub double %564, %566
  store double %567, ptr @sa, align 8
  %568 = fmul double 1.800000e+01, %526
  %569 = load double, ptr @two, align 8
  %570 = call double @llvm.fmuladd.f64(double %569, double %529, double %567)
  %571 = fmul double %568, %570
  store double %571, ptr @sa, align 8
  %572 = fptosi double %571 to i32
  %573 = mul nsw i32 -2000, %572
  store i32 %573, ptr %10, align 4
  %574 = sitofp i32 %573 to double
  %575 = load double, ptr @scale, align 8
  %576 = fdiv double %574, %575
  %577 = fptosi double %576 to i32
  store i32 %577, ptr %10, align 4
  %578 = fadd double %571, 5.002000e+02
  store double %578, ptr @sc, align 8
  %579 = load double, ptr @one, align 8
  %580 = fdiv double %579, %554
  store double %580, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %581 = fmul double %578, 1.000000e-30
  %582 = fmul double %553, 1.000000e-30
  %583 = fmul double %580, 1.000000e-30
  %584 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, double noundef %581, double noundef %582, double noundef %583)
  %585 = load double, ptr @piref, align 8
  %586 = load double, ptr @three, align 8
  %587 = sitofp i32 %577 to double
  %588 = fmul double %586, %587
  %589 = fdiv double %585, %588
  store double %589, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %590 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %591

591:                                              ; preds = %596, %547
  %592 = phi double [ %627, %596 ], [ 0.000000e+00, %547 ]
  %593 = phi i32 [ %628, %596 ], [ 1, %547 ]
  %594 = sub nsw i32 %577, 1
  %595 = icmp sle i32 %593, %594
  br i1 %595, label %596, label %629

596:                                              ; preds = %591
  %597 = sitofp i32 %593 to double
  %598 = fmul double %597, %589
  store double %598, ptr %3, align 8
  %599 = fmul double %598, %598
  store double %599, ptr %5, align 8
  %600 = load double, ptr @B6, align 8
  %601 = load double, ptr @B5, align 8
  %602 = call double @llvm.fmuladd.f64(double %600, double %599, double %601)
  %603 = load double, ptr @B4, align 8
  %604 = call double @llvm.fmuladd.f64(double %599, double %602, double %603)
  %605 = load double, ptr @B3, align 8
  %606 = call double @llvm.fmuladd.f64(double %599, double %604, double %605)
  %607 = load double, ptr @B2, align 8
  %608 = call double @llvm.fmuladd.f64(double %599, double %606, double %607)
  %609 = load double, ptr @B1, align 8
  %610 = call double @llvm.fmuladd.f64(double %599, double %608, double %609)
  %611 = load double, ptr @one, align 8
  %612 = call double @llvm.fmuladd.f64(double %599, double %610, double %611)
  store double %612, ptr %4, align 8
  %613 = fmul double %612, %612
  %614 = fmul double %613, %598
  %615 = load double, ptr @A6, align 8
  %616 = load double, ptr @A5, align 8
  %617 = call double @llvm.fmuladd.f64(double %615, double %599, double %616)
  %618 = load double, ptr @A4, align 8
  %619 = call double @llvm.fmuladd.f64(double %617, double %599, double %618)
  %620 = load double, ptr @A3, align 8
  %621 = call double @llvm.fmuladd.f64(double %619, double %599, double %620)
  %622 = load double, ptr @A2, align 8
  %623 = call double @llvm.fmuladd.f64(double %621, double %599, double %622)
  %624 = load double, ptr @A1, align 8
  %625 = call double @llvm.fmuladd.f64(double %623, double %599, double %624)
  %626 = call double @llvm.fmuladd.f64(double %625, double %599, double %611)
  %627 = call double @llvm.fmuladd.f64(double %614, double %626, double %592)
  store double %627, ptr %2, align 8
  %628 = add nsw i32 %593, 1
  store i32 %628, ptr %9, align 4
  br label %591, !llvm.loop !18

629:                                              ; preds = %591
  %630 = call i32 @dtime(ptr noundef @TimeArray)
  %631 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %632 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %633 = load double, ptr @nulltime, align 8
  %634 = fneg double %633
  %635 = call double @llvm.fmuladd.f64(double %631, double %632, double %634)
  store double %635, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %636 = load double, ptr @piref, align 8
  %637 = load double, ptr @three, align 8
  %638 = fdiv double %636, %637
  store double %638, ptr %3, align 8
  %639 = fmul double %638, %638
  store double %639, ptr %5, align 8
  %640 = load double, ptr @A6, align 8
  %641 = load double, ptr @A5, align 8
  %642 = call double @llvm.fmuladd.f64(double %640, double %639, double %641)
  %643 = load double, ptr @A4, align 8
  %644 = call double @llvm.fmuladd.f64(double %642, double %639, double %643)
  %645 = load double, ptr @A3, align 8
  %646 = call double @llvm.fmuladd.f64(double %644, double %639, double %645)
  %647 = load double, ptr @A2, align 8
  %648 = call double @llvm.fmuladd.f64(double %646, double %639, double %647)
  %649 = load double, ptr @A1, align 8
  %650 = call double @llvm.fmuladd.f64(double %648, double %639, double %649)
  %651 = load double, ptr @one, align 8
  %652 = call double @llvm.fmuladd.f64(double %650, double %639, double %651)
  %653 = fmul double %638, %652
  store double %653, ptr @sa, align 8
  %654 = load double, ptr @B6, align 8
  %655 = load double, ptr @B5, align 8
  %656 = call double @llvm.fmuladd.f64(double %654, double %639, double %655)
  %657 = load double, ptr @B4, align 8
  %658 = call double @llvm.fmuladd.f64(double %639, double %656, double %657)
  %659 = load double, ptr @B3, align 8
  %660 = call double @llvm.fmuladd.f64(double %639, double %658, double %659)
  %661 = load double, ptr @B2, align 8
  %662 = call double @llvm.fmuladd.f64(double %639, double %660, double %661)
  %663 = load double, ptr @B1, align 8
  %664 = call double @llvm.fmuladd.f64(double %639, double %662, double %663)
  %665 = call double @llvm.fmuladd.f64(double %639, double %664, double %651)
  store double %665, ptr @sb, align 8
  %666 = fmul double %653, %665
  %667 = fmul double %666, %665
  store double %667, ptr @sa, align 8
  %668 = fdiv double %635, 3.000000e+01
  store double %668, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %669 = load double, ptr @two, align 8
  %670 = call double @llvm.fmuladd.f64(double %669, double %592, double %667)
  %671 = fmul double %589, %670
  %672 = fdiv double %671, %669
  store double %672, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %673 = fsub double %672, f0x3FD2AAAAAAAAAAAB
  store double %673, ptr @sc, align 8
  %674 = fdiv double %651, %668
  store double %674, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %675 = fmul double %673, 1.000000e-30
  %676 = fmul double %635, 1.000000e-30
  %677 = fmul double %674, 1.000000e-30
  %678 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, double noundef %675, double noundef %676, double noundef %677)
  %679 = load double, ptr @five, align 8
  %680 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %681 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %682 = fsub double %680, %681
  %683 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %684 = call double @llvm.fmuladd.f64(double %679, double %682, double %683)
  %685 = fdiv double %684, 5.200000e+01
  store double %685, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %686 = load double, ptr @one, align 8
  %687 = fdiv double %686, %685
  store double %687, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %688 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %689 = fadd double %688, %683
  %690 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %691 = fadd double %689, %690
  %692 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %693 = fadd double %691, %692
  %694 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %695 = fadd double %693, %694
  store double %695, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %696 = load double, ptr @four, align 8
  %697 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %698 = call double @llvm.fmuladd.f64(double %696, double %697, double %695)
  %699 = fdiv double %698, 1.520000e+02
  store double %699, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %700 = fdiv double %686, %699
  store double %700, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %695, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %701 = fadd double %695, %697
  %702 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %703 = fadd double %701, %702
  %704 = fdiv double %703, 1.460000e+02
  store double %704, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %705 = fdiv double %686, %704
  store double %705, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %706 = fadd double %683, %690
  %707 = fadd double %706, %694
  %708 = fadd double %707, %702
  %709 = fdiv double %708, 9.100000e+01
  store double %709, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %710 = fdiv double %686, %709
  store double %710, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %711 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %712 = load i32, ptr %10, align 4
  %713 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %712)
  %714 = load double, ptr @nulltime, align 8
  %715 = fmul double %714, 1.000000e-30
  %716 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, double noundef %715)
  %717 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %718 = fmul double %717, 1.000000e-30
  %719 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, double noundef %718)
  %720 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %721 = fmul double %720, 1.000000e-30
  %722 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, double noundef %721)
  %723 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %724 = fmul double %723, 1.000000e-30
  %725 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, double noundef %724)
  %726 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %727 = fmul double %726, 1.000000e-30
  %728 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, double noundef %727)
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
