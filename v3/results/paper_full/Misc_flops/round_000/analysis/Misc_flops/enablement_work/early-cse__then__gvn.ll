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
  %19 = phi double [ %33, %58 ], [ undef, %0 ]
  %20 = phi double [ %29, %58 ], [ undef, %0 ]
  %21 = phi i32 [ %26, %58 ], [ 15625, %0 ]
  %22 = phi double [ %55, %58 ], [ 0.000000e+00, %0 ]
  %23 = load double, ptr @TLimit, align 8
  %24 = fcmp olt double %22, %23
  br i1 %24, label %25, label %59

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
  %32 = phi double [ %38, %37 ], [ 0.000000e+00, %25 ]
  %33 = phi double [ %51, %37 ], [ 0.000000e+00, %25 ]
  %34 = phi i32 [ %52, %37 ], [ 1, %25 ]
  %35 = sub nsw i32 %26, 1
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %31
  %38 = fadd double %32, %27
  store double %38, ptr %4, align 8
  %39 = fmul double %38, %29
  store double %39, ptr %3, align 8
  %40 = load double, ptr @D1, align 8
  %41 = load double, ptr @D2, align 8
  %42 = load double, ptr @D3, align 8
  %43 = call double @llvm.fmuladd.f64(double %39, double %42, double %41)
  %44 = call double @llvm.fmuladd.f64(double %39, double %43, double %40)
  %45 = load double, ptr @E2, align 8
  %46 = load double, ptr @E3, align 8
  %47 = call double @llvm.fmuladd.f64(double %39, double %46, double %45)
  %48 = call double @llvm.fmuladd.f64(double %39, double %47, double %40)
  %49 = call double @llvm.fmuladd.f64(double %39, double %48, double %27)
  %50 = fdiv double %44, %49
  %51 = fadd double %33, %50
  store double %51, ptr %2, align 8
  %52 = add nsw i32 %34, 1
  store i32 %52, ptr %9, align 4
  br label %31, !llvm.loop !7

53:                                               ; preds = %31
  %54 = call i32 @dtime(ptr noundef @TimeArray)
  %55 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %55, ptr @sa, align 8
  %56 = icmp eq i32 %26, 512000000
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %59

58:                                               ; preds = %53
  br label %18, !llvm.loop !9

59:                                               ; preds = %57, %18
  %60 = phi double [ %33, %57 ], [ %19, %18 ]
  %61 = phi double [ %29, %57 ], [ %20, %18 ]
  %62 = phi i32 [ 512000000, %57 ], [ %21, %18 ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %63 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %64

64:                                               ; preds = %68, %59
  %65 = phi i32 [ %69, %68 ], [ 1, %59 ]
  %66 = sub nsw i32 %62, 1
  %67 = icmp sle i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = add nsw i32 %65, 1
  store i32 %69, ptr %9, align 4
  br label %64, !llvm.loop !10

70:                                               ; preds = %64
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
  br label %118

118:                                              ; preds = %122, %77
  %119 = phi double [ %123, %122 ], [ %114, %77 ]
  %120 = phi i32 [ %126, %122 ], [ 1, %77 ]
  %121 = icmp sle i32 %120, %106
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = fneg double %119
  store double %123, ptr %2, align 8
  %124 = load double, ptr @sa, align 8
  %125 = fadd double %124, %123
  store double %125, ptr @sa, align 8
  %126 = add nsw i32 %120, 1
  store i32 %126, ptr %9, align 4
  br label %118, !llvm.loop !11

127:                                              ; preds = %118
  %128 = call i32 @dtime(ptr noundef @TimeArray)
  %129 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %130 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %131 = fmul double %129, %130
  store double %131, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %132 = fcmp olt double %131, 0.000000e+00
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  br label %134

134:                                              ; preds = %133, %127
  %135 = sitofp i32 %106 to double
  store double %135, ptr @sc, align 8
  %136 = load double, ptr @sa, align 8
  store double %136, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  store double 0.000000e+00, ptr %6, align 8
  %137 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %138

138:                                              ; preds = %146, %134
  %139 = phi double [ %151, %146 ], [ %136, %134 ]
  %140 = phi double [ %147, %146 ], [ %119, %134 ]
  %141 = phi double [ %154, %146 ], [ 0.000000e+00, %134 ]
  %142 = phi double [ %156, %146 ], [ 0.000000e+00, %134 ]
  %143 = phi double [ %153, %146 ], [ 0.000000e+00, %134 ]
  %144 = phi i32 [ %157, %146 ], [ 1, %134 ]
  %145 = icmp sle i32 %144, %106
  br i1 %145, label %146, label %158

146:                                              ; preds = %138
  %147 = fneg double %140
  store double %147, ptr %2, align 8
  %148 = load double, ptr @sa, align 8
  %149 = fadd double %148, %147
  store double %149, ptr @sa, align 8
  %150 = load double, ptr @two, align 8
  %151 = fadd double %139, %150
  store double %151, ptr %3, align 8
  %152 = fsub double %147, %151
  %153 = fadd double %143, %152
  store double %153, ptr %6, align 8
  %154 = call double @llvm.fmuladd.f64(double %140, double %151, double %141)
  store double %154, ptr %4, align 8
  %155 = fdiv double %147, %151
  %156 = fadd double %142, %155
  store double %156, ptr %5, align 8
  %157 = add nsw i32 %144, 1
  store i32 %157, ptr %9, align 4
  br label %138, !llvm.loop !12

158:                                              ; preds = %138
  %159 = call i32 @dtime(ptr noundef @TimeArray)
  %160 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %161 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %162 = fmul double %160, %161
  store double %162, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %163 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %164 = fsub double %162, %163
  %165 = fdiv double %164, 7.000000e+00
  store double %165, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %166 = load double, ptr @sa, align 8
  %167 = fmul double %166, %143
  %168 = load double, ptr @sc, align 8
  %169 = fdiv double %167, %168
  %170 = fptosi double %169 to i32
  store i32 %170, ptr %10, align 4
  %171 = load double, ptr @four, align 8
  %172 = fmul double %171, %142
  %173 = load double, ptr @five, align 8
  %174 = fdiv double %172, %173
  store double %174, ptr @sa, align 8
  %175 = fdiv double %173, %141
  %176 = fadd double %174, %175
  store double %176, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %177 = fmul double %141, %141
  %178 = fmul double %177, %141
  %179 = fdiv double 3.125000e+01, %178
  %180 = fsub double %176, %179
  store double %180, ptr @piprg, align 8
  %181 = load double, ptr @piref, align 8
  %182 = fsub double %180, %181
  store double %182, ptr @pierr, align 8
  %183 = load double, ptr @one, align 8
  %184 = fdiv double %183, %165
  store double %184, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %185 = fmul double %182, 1.000000e-30
  %186 = fmul double %164, 1.000000e-30
  %187 = fmul double %184, 1.000000e-30
  %188 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %185, double noundef %186, double noundef %187)
  %189 = load double, ptr @piref, align 8
  %190 = load double, ptr @three, align 8
  %191 = sitofp i32 %170 to double
  %192 = fmul double %190, %191
  %193 = fdiv double %189, %192
  store double %193, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %194 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %195

195:                                              ; preds = %201, %158
  %196 = phi double [ %203, %201 ], [ 0.000000e+00, %158 ]
  %197 = phi double [ %220, %201 ], [ 0.000000e+00, %158 ]
  %198 = phi i32 [ %221, %201 ], [ 1, %158 ]
  %199 = sub nsw i32 %170, 1
  %200 = icmp sle i32 %198, %199
  br i1 %200, label %201, label %222

201:                                              ; preds = %195
  %202 = load double, ptr @one, align 8
  %203 = fadd double %196, %202
  store double %203, ptr %4, align 8
  %204 = fmul double %203, %193
  store double %204, ptr %3, align 8
  %205 = fmul double %204, %204
  store double %205, ptr %5, align 8
  %206 = load double, ptr @A6, align 8
  %207 = load double, ptr @A5, align 8
  %208 = fneg double %207
  %209 = call double @llvm.fmuladd.f64(double %206, double %205, double %208)
  %210 = load double, ptr @A4, align 8
  %211 = call double @llvm.fmuladd.f64(double %209, double %205, double %210)
  %212 = load double, ptr @A3, align 8
  %213 = fneg double %212
  %214 = call double @llvm.fmuladd.f64(double %211, double %205, double %213)
  %215 = load double, ptr @A2, align 8
  %216 = call double @llvm.fmuladd.f64(double %214, double %205, double %215)
  %217 = load double, ptr @A1, align 8
  %218 = call double @llvm.fmuladd.f64(double %216, double %205, double %217)
  %219 = call double @llvm.fmuladd.f64(double %218, double %205, double %202)
  %220 = call double @llvm.fmuladd.f64(double %204, double %219, double %197)
  store double %220, ptr %2, align 8
  %221 = add nsw i32 %198, 1
  store i32 %221, ptr %9, align 4
  br label %195, !llvm.loop !13

222:                                              ; preds = %195
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
  %251 = call double @llvm.fmuladd.f64(double %250, double %197, double %248)
  %252 = fmul double %193, %251
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
  %266 = fmul double %265, %191
  %267 = fdiv double %264, %266
  store double %267, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %268 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %269

269:                                              ; preds = %273, %222
  %270 = phi double [ %290, %273 ], [ 0.000000e+00, %222 ]
  %271 = phi i32 [ %291, %273 ], [ 1, %222 ]
  %272 = icmp sle i32 %271, %199
  br i1 %272, label %273, label %292

273:                                              ; preds = %269
  %274 = sitofp i32 %271 to double
  %275 = fmul double %274, %267
  store double %275, ptr %3, align 8
  %276 = fmul double %275, %275
  store double %276, ptr %5, align 8
  %277 = load double, ptr @B6, align 8
  %278 = load double, ptr @B5, align 8
  %279 = call double @llvm.fmuladd.f64(double %277, double %276, double %278)
  %280 = load double, ptr @B4, align 8
  %281 = call double @llvm.fmuladd.f64(double %276, double %279, double %280)
  %282 = load double, ptr @B3, align 8
  %283 = call double @llvm.fmuladd.f64(double %276, double %281, double %282)
  %284 = load double, ptr @B2, align 8
  %285 = call double @llvm.fmuladd.f64(double %276, double %283, double %284)
  %286 = load double, ptr @B1, align 8
  %287 = call double @llvm.fmuladd.f64(double %276, double %285, double %286)
  %288 = call double @llvm.fmuladd.f64(double %276, double %287, double %270)
  %289 = load double, ptr @one, align 8
  %290 = fadd double %288, %289
  store double %290, ptr %2, align 8
  %291 = add nsw i32 %271, 1
  store i32 %291, ptr %9, align 4
  br label %269, !llvm.loop !14

292:                                              ; preds = %269
  %293 = call i32 @dtime(ptr noundef @TimeArray)
  %294 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %295 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %296 = load double, ptr @nulltime, align 8
  %297 = fneg double %296
  %298 = call double @llvm.fmuladd.f64(double %294, double %295, double %297)
  store double %298, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %299 = load double, ptr @piref, align 8
  %300 = load double, ptr @three, align 8
  %301 = fdiv double %299, %300
  store double %301, ptr %3, align 8
  %302 = fmul double %301, %301
  store double %302, ptr %5, align 8
  %303 = load double, ptr @B6, align 8
  %304 = load double, ptr @B5, align 8
  %305 = call double @llvm.fmuladd.f64(double %303, double %302, double %304)
  %306 = load double, ptr @B4, align 8
  %307 = call double @llvm.fmuladd.f64(double %302, double %305, double %306)
  %308 = load double, ptr @B3, align 8
  %309 = call double @llvm.fmuladd.f64(double %302, double %307, double %308)
  %310 = load double, ptr @B2, align 8
  %311 = call double @llvm.fmuladd.f64(double %302, double %309, double %310)
  %312 = load double, ptr @B1, align 8
  %313 = call double @llvm.fmuladd.f64(double %302, double %311, double %312)
  %314 = load double, ptr @one, align 8
  %315 = call double @llvm.fmuladd.f64(double %302, double %313, double %314)
  store double %315, ptr @sa, align 8
  %316 = fdiv double %298, 1.500000e+01
  store double %316, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %317 = fadd double %315, %314
  %318 = load double, ptr @two, align 8
  %319 = call double @llvm.fmuladd.f64(double %318, double %270, double %317)
  %320 = fmul double %267, %319
  %321 = fdiv double %320, %318
  store double %321, ptr @sa, align 8
  store double %301, ptr %3, align 8
  store double %302, ptr %5, align 8
  %322 = load double, ptr @A6, align 8
  %323 = load double, ptr @A5, align 8
  %324 = call double @llvm.fmuladd.f64(double %322, double %302, double %323)
  %325 = load double, ptr @A4, align 8
  %326 = call double @llvm.fmuladd.f64(double %324, double %302, double %325)
  %327 = load double, ptr @A3, align 8
  %328 = call double @llvm.fmuladd.f64(double %326, double %302, double %327)
  %329 = load double, ptr @A2, align 8
  %330 = call double @llvm.fmuladd.f64(double %328, double %302, double %329)
  %331 = load double, ptr @A1, align 8
  %332 = call double @llvm.fmuladd.f64(double %330, double %302, double %331)
  %333 = load double, ptr @A0, align 8
  %334 = call double @llvm.fmuladd.f64(double %332, double %302, double %333)
  %335 = fmul double %301, %334
  store double %335, ptr @sb, align 8
  %336 = fsub double %321, %335
  store double %336, ptr @sc, align 8
  %337 = fdiv double %314, %316
  store double %337, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %338 = fmul double %336, 1.000000e-30
  %339 = fmul double %298, 1.000000e-30
  %340 = fmul double %337, 1.000000e-30
  %341 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %338, double noundef %339, double noundef %340)
  %342 = load double, ptr @piref, align 8
  %343 = load double, ptr @three, align 8
  %344 = fmul double %343, %191
  %345 = fdiv double %342, %344
  store double %345, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %346 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %347

347:                                              ; preds = %351, %292
  %348 = phi double [ %382, %351 ], [ 0.000000e+00, %292 ]
  %349 = phi i32 [ %383, %351 ], [ 1, %292 ]
  %350 = icmp sle i32 %349, %199
  br i1 %350, label %351, label %384

351:                                              ; preds = %347
  %352 = sitofp i32 %349 to double
  %353 = fmul double %352, %345
  store double %353, ptr %3, align 8
  %354 = fmul double %353, %353
  store double %354, ptr %5, align 8
  %355 = load double, ptr @A6, align 8
  %356 = load double, ptr @A5, align 8
  %357 = call double @llvm.fmuladd.f64(double %355, double %354, double %356)
  %358 = load double, ptr @A4, align 8
  %359 = call double @llvm.fmuladd.f64(double %357, double %354, double %358)
  %360 = load double, ptr @A3, align 8
  %361 = call double @llvm.fmuladd.f64(double %359, double %354, double %360)
  %362 = load double, ptr @A2, align 8
  %363 = call double @llvm.fmuladd.f64(double %361, double %354, double %362)
  %364 = load double, ptr @A1, align 8
  %365 = call double @llvm.fmuladd.f64(double %363, double %354, double %364)
  %366 = load double, ptr @one, align 8
  %367 = call double @llvm.fmuladd.f64(double %365, double %354, double %366)
  %368 = fmul double %353, %367
  store double %368, ptr %4, align 8
  %369 = load double, ptr @B6, align 8
  %370 = load double, ptr @B5, align 8
  %371 = call double @llvm.fmuladd.f64(double %369, double %354, double %370)
  %372 = load double, ptr @B4, align 8
  %373 = call double @llvm.fmuladd.f64(double %354, double %371, double %372)
  %374 = load double, ptr @B3, align 8
  %375 = call double @llvm.fmuladd.f64(double %354, double %373, double %374)
  %376 = load double, ptr @B2, align 8
  %377 = call double @llvm.fmuladd.f64(double %354, double %375, double %376)
  %378 = load double, ptr @B1, align 8
  %379 = call double @llvm.fmuladd.f64(double %354, double %377, double %378)
  %380 = call double @llvm.fmuladd.f64(double %354, double %379, double %366)
  %381 = fdiv double %368, %380
  %382 = fadd double %348, %381
  store double %382, ptr %2, align 8
  %383 = add nsw i32 %349, 1
  store i32 %383, ptr %9, align 4
  br label %347, !llvm.loop !15

384:                                              ; preds = %347
  %385 = call i32 @dtime(ptr noundef @TimeArray)
  %386 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %387 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %388 = load double, ptr @nulltime, align 8
  %389 = fneg double %388
  %390 = call double @llvm.fmuladd.f64(double %386, double %387, double %389)
  store double %390, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %391 = load double, ptr @piref, align 8
  %392 = load double, ptr @three, align 8
  %393 = fdiv double %391, %392
  store double %393, ptr %3, align 8
  %394 = fmul double %393, %393
  store double %394, ptr %5, align 8
  %395 = load double, ptr @A6, align 8
  %396 = load double, ptr @A5, align 8
  %397 = call double @llvm.fmuladd.f64(double %395, double %394, double %396)
  %398 = load double, ptr @A4, align 8
  %399 = call double @llvm.fmuladd.f64(double %397, double %394, double %398)
  %400 = load double, ptr @A3, align 8
  %401 = call double @llvm.fmuladd.f64(double %399, double %394, double %400)
  %402 = load double, ptr @A2, align 8
  %403 = call double @llvm.fmuladd.f64(double %401, double %394, double %402)
  %404 = load double, ptr @A1, align 8
  %405 = call double @llvm.fmuladd.f64(double %403, double %394, double %404)
  %406 = load double, ptr @one, align 8
  %407 = call double @llvm.fmuladd.f64(double %405, double %394, double %406)
  %408 = fmul double %393, %407
  store double %408, ptr @sa, align 8
  %409 = load double, ptr @B6, align 8
  %410 = load double, ptr @B5, align 8
  %411 = call double @llvm.fmuladd.f64(double %409, double %394, double %410)
  %412 = load double, ptr @B4, align 8
  %413 = call double @llvm.fmuladd.f64(double %394, double %411, double %412)
  %414 = load double, ptr @B3, align 8
  %415 = call double @llvm.fmuladd.f64(double %394, double %413, double %414)
  %416 = load double, ptr @B2, align 8
  %417 = call double @llvm.fmuladd.f64(double %394, double %415, double %416)
  %418 = load double, ptr @B1, align 8
  %419 = call double @llvm.fmuladd.f64(double %394, double %417, double %418)
  %420 = call double @llvm.fmuladd.f64(double %394, double %419, double %406)
  store double %420, ptr @sb, align 8
  %421 = fdiv double %408, %420
  store double %421, ptr @sa, align 8
  %422 = fdiv double %390, 2.900000e+01
  store double %422, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %423 = load double, ptr @two, align 8
  %424 = call double @llvm.fmuladd.f64(double %423, double %348, double %421)
  %425 = fmul double %345, %424
  %426 = fdiv double %425, %423
  store double %426, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %427 = fsub double %426, f0x3FE62E42FEFA39EF
  store double %427, ptr @sc, align 8
  %428 = fdiv double %406, %422
  store double %428, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %429 = fmul double %427, 1.000000e-30
  %430 = fmul double %390, 1.000000e-30
  %431 = fmul double %428, 1.000000e-30
  %432 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %429, double noundef %430, double noundef %431)
  %433 = load double, ptr @piref, align 8
  %434 = load double, ptr @four, align 8
  %435 = fmul double %434, %191
  %436 = fdiv double %433, %435
  store double %436, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %437 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %438

438:                                              ; preds = %442, %384
  %439 = phi double [ %472, %442 ], [ 0.000000e+00, %384 ]
  %440 = phi i32 [ %473, %442 ], [ 1, %384 ]
  %441 = icmp sle i32 %440, %199
  br i1 %441, label %442, label %474

442:                                              ; preds = %438
  %443 = sitofp i32 %440 to double
  %444 = fmul double %443, %436
  store double %444, ptr %3, align 8
  %445 = fmul double %444, %444
  store double %445, ptr %5, align 8
  %446 = load double, ptr @A6, align 8
  %447 = load double, ptr @A5, align 8
  %448 = call double @llvm.fmuladd.f64(double %446, double %445, double %447)
  %449 = load double, ptr @A4, align 8
  %450 = call double @llvm.fmuladd.f64(double %448, double %445, double %449)
  %451 = load double, ptr @A3, align 8
  %452 = call double @llvm.fmuladd.f64(double %450, double %445, double %451)
  %453 = load double, ptr @A2, align 8
  %454 = call double @llvm.fmuladd.f64(double %452, double %445, double %453)
  %455 = load double, ptr @A1, align 8
  %456 = call double @llvm.fmuladd.f64(double %454, double %445, double %455)
  %457 = load double, ptr @one, align 8
  %458 = call double @llvm.fmuladd.f64(double %456, double %445, double %457)
  %459 = fmul double %444, %458
  store double %459, ptr %4, align 8
  %460 = load double, ptr @B6, align 8
  %461 = load double, ptr @B5, align 8
  %462 = call double @llvm.fmuladd.f64(double %460, double %445, double %461)
  %463 = load double, ptr @B4, align 8
  %464 = call double @llvm.fmuladd.f64(double %445, double %462, double %463)
  %465 = load double, ptr @B3, align 8
  %466 = call double @llvm.fmuladd.f64(double %445, double %464, double %465)
  %467 = load double, ptr @B2, align 8
  %468 = call double @llvm.fmuladd.f64(double %445, double %466, double %467)
  %469 = load double, ptr @B1, align 8
  %470 = call double @llvm.fmuladd.f64(double %445, double %468, double %469)
  %471 = call double @llvm.fmuladd.f64(double %445, double %470, double %457)
  %472 = call double @llvm.fmuladd.f64(double %459, double %471, double %439)
  store double %472, ptr %2, align 8
  %473 = add nsw i32 %440, 1
  store i32 %473, ptr %9, align 4
  br label %438, !llvm.loop !16

474:                                              ; preds = %438
  %475 = call i32 @dtime(ptr noundef @TimeArray)
  %476 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %477 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %478 = load double, ptr @nulltime, align 8
  %479 = fneg double %478
  %480 = call double @llvm.fmuladd.f64(double %476, double %477, double %479)
  store double %480, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %481 = load double, ptr @piref, align 8
  %482 = load double, ptr @four, align 8
  %483 = fdiv double %481, %482
  store double %483, ptr %3, align 8
  %484 = fmul double %483, %483
  store double %484, ptr %5, align 8
  %485 = load double, ptr @A6, align 8
  %486 = load double, ptr @A5, align 8
  %487 = call double @llvm.fmuladd.f64(double %485, double %484, double %486)
  %488 = load double, ptr @A4, align 8
  %489 = call double @llvm.fmuladd.f64(double %487, double %484, double %488)
  %490 = load double, ptr @A3, align 8
  %491 = call double @llvm.fmuladd.f64(double %489, double %484, double %490)
  %492 = load double, ptr @A2, align 8
  %493 = call double @llvm.fmuladd.f64(double %491, double %484, double %492)
  %494 = load double, ptr @A1, align 8
  %495 = call double @llvm.fmuladd.f64(double %493, double %484, double %494)
  %496 = load double, ptr @one, align 8
  %497 = call double @llvm.fmuladd.f64(double %495, double %484, double %496)
  %498 = fmul double %483, %497
  store double %498, ptr @sa, align 8
  %499 = load double, ptr @B6, align 8
  %500 = load double, ptr @B5, align 8
  %501 = call double @llvm.fmuladd.f64(double %499, double %484, double %500)
  %502 = load double, ptr @B4, align 8
  %503 = call double @llvm.fmuladd.f64(double %484, double %501, double %502)
  %504 = load double, ptr @B3, align 8
  %505 = call double @llvm.fmuladd.f64(double %484, double %503, double %504)
  %506 = load double, ptr @B2, align 8
  %507 = call double @llvm.fmuladd.f64(double %484, double %505, double %506)
  %508 = load double, ptr @B1, align 8
  %509 = call double @llvm.fmuladd.f64(double %484, double %507, double %508)
  %510 = call double @llvm.fmuladd.f64(double %484, double %509, double %496)
  store double %510, ptr @sb, align 8
  %511 = fmul double %498, %510
  store double %511, ptr @sa, align 8
  %512 = fdiv double %480, 2.900000e+01
  store double %512, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %513 = load double, ptr @two, align 8
  %514 = call double @llvm.fmuladd.f64(double %513, double %439, double %511)
  %515 = fmul double %436, %514
  %516 = fdiv double %515, %513
  store double %516, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %517 = fsub double %516, 2.500000e-01
  store double %517, ptr @sc, align 8
  %518 = fdiv double %496, %512
  store double %518, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %519 = fmul double %517, 1.000000e-30
  %520 = fmul double %480, 1.000000e-30
  %521 = fmul double %518, 1.000000e-30
  %522 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, double noundef %519, double noundef %520, double noundef %521)
  store double 0.000000e+00, ptr %2, align 8
  %523 = load double, ptr @one, align 8
  store double %523, ptr %5, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %524 = fdiv double f0x40599541F7F192A4, %191
  store double %524, ptr %4, align 8
  %525 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %526

526:                                              ; preds = %530, %474
  %527 = phi double [ %542, %530 ], [ 0.000000e+00, %474 ]
  %528 = phi i32 [ %543, %530 ], [ 1, %474 ]
  %529 = icmp sle i32 %528, %199
  br i1 %529, label %530, label %544

530:                                              ; preds = %526
  %531 = sitofp i32 %528 to double
  %532 = fmul double %531, %524
  store double %532, ptr %6, align 8
  %533 = fmul double %532, %532
  store double %533, ptr %3, align 8
  %534 = fadd double %532, %523
  %535 = fdiv double %523, %534
  %536 = fsub double %527, %535
  %537 = fadd double %533, %523
  %538 = fdiv double %532, %537
  %539 = fsub double %536, %538
  %540 = call double @llvm.fmuladd.f64(double %532, double %533, double %523)
  %541 = fdiv double %533, %540
  %542 = fsub double %539, %541
  store double %542, ptr %2, align 8
  %543 = add nsw i32 %528, 1
  store i32 %543, ptr %9, align 4
  br label %526, !llvm.loop !17

544:                                              ; preds = %526
  %545 = call i32 @dtime(ptr noundef @TimeArray)
  %546 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %547 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %548 = load double, ptr @nulltime, align 8
  %549 = fneg double %548
  %550 = call double @llvm.fmuladd.f64(double %546, double %547, double %549)
  store double %550, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %551 = fdiv double %550, 1.200000e+01
  store double %551, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %552 = load double, ptr @sa, align 8
  store double %552, ptr %6, align 8
  %553 = fmul double %552, %552
  store double %553, ptr %3, align 8
  %554 = fneg double %523
  %555 = fadd double %552, %523
  %556 = fdiv double %523, %555
  %557 = fsub double %554, %556
  %558 = fadd double %553, %523
  %559 = fdiv double %552, %558
  %560 = fsub double %557, %559
  %561 = call double @llvm.fmuladd.f64(double %552, double %553, double %523)
  %562 = fdiv double %553, %561
  %563 = fsub double %560, %562
  store double %563, ptr @sa, align 8
  %564 = fmul double 1.800000e+01, %524
  %565 = load double, ptr @two, align 8
  %566 = call double @llvm.fmuladd.f64(double %565, double %527, double %563)
  %567 = fmul double %564, %566
  store double %567, ptr @sa, align 8
  %568 = fptosi double %567 to i32
  %569 = mul nsw i32 -2000, %568
  store i32 %569, ptr %10, align 4
  %570 = sitofp i32 %569 to double
  %571 = load double, ptr @scale, align 8
  %572 = fdiv double %570, %571
  %573 = fptosi double %572 to i32
  store i32 %573, ptr %10, align 4
  %574 = fadd double %567, 5.002000e+02
  store double %574, ptr @sc, align 8
  %575 = load double, ptr @one, align 8
  %576 = fdiv double %575, %551
  store double %576, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %577 = fmul double %574, 1.000000e-30
  %578 = fmul double %550, 1.000000e-30
  %579 = fmul double %576, 1.000000e-30
  %580 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, double noundef %577, double noundef %578, double noundef %579)
  %581 = load double, ptr @piref, align 8
  %582 = load double, ptr @three, align 8
  %583 = sitofp i32 %573 to double
  %584 = fmul double %582, %583
  %585 = fdiv double %581, %584
  store double %585, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %586 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %587

587:                                              ; preds = %592, %544
  %588 = phi double [ %623, %592 ], [ 0.000000e+00, %544 ]
  %589 = phi i32 [ %624, %592 ], [ 1, %544 ]
  %590 = sub nsw i32 %573, 1
  %591 = icmp sle i32 %589, %590
  br i1 %591, label %592, label %625

592:                                              ; preds = %587
  %593 = sitofp i32 %589 to double
  %594 = fmul double %593, %585
  store double %594, ptr %3, align 8
  %595 = fmul double %594, %594
  store double %595, ptr %5, align 8
  %596 = load double, ptr @B6, align 8
  %597 = load double, ptr @B5, align 8
  %598 = call double @llvm.fmuladd.f64(double %596, double %595, double %597)
  %599 = load double, ptr @B4, align 8
  %600 = call double @llvm.fmuladd.f64(double %595, double %598, double %599)
  %601 = load double, ptr @B3, align 8
  %602 = call double @llvm.fmuladd.f64(double %595, double %600, double %601)
  %603 = load double, ptr @B2, align 8
  %604 = call double @llvm.fmuladd.f64(double %595, double %602, double %603)
  %605 = load double, ptr @B1, align 8
  %606 = call double @llvm.fmuladd.f64(double %595, double %604, double %605)
  %607 = load double, ptr @one, align 8
  %608 = call double @llvm.fmuladd.f64(double %595, double %606, double %607)
  store double %608, ptr %4, align 8
  %609 = fmul double %608, %608
  %610 = fmul double %609, %594
  %611 = load double, ptr @A6, align 8
  %612 = load double, ptr @A5, align 8
  %613 = call double @llvm.fmuladd.f64(double %611, double %595, double %612)
  %614 = load double, ptr @A4, align 8
  %615 = call double @llvm.fmuladd.f64(double %613, double %595, double %614)
  %616 = load double, ptr @A3, align 8
  %617 = call double @llvm.fmuladd.f64(double %615, double %595, double %616)
  %618 = load double, ptr @A2, align 8
  %619 = call double @llvm.fmuladd.f64(double %617, double %595, double %618)
  %620 = load double, ptr @A1, align 8
  %621 = call double @llvm.fmuladd.f64(double %619, double %595, double %620)
  %622 = call double @llvm.fmuladd.f64(double %621, double %595, double %607)
  %623 = call double @llvm.fmuladd.f64(double %610, double %622, double %588)
  store double %623, ptr %2, align 8
  %624 = add nsw i32 %589, 1
  store i32 %624, ptr %9, align 4
  br label %587, !llvm.loop !18

625:                                              ; preds = %587
  %626 = call i32 @dtime(ptr noundef @TimeArray)
  %627 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %628 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %629 = load double, ptr @nulltime, align 8
  %630 = fneg double %629
  %631 = call double @llvm.fmuladd.f64(double %627, double %628, double %630)
  store double %631, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %632 = load double, ptr @piref, align 8
  %633 = load double, ptr @three, align 8
  %634 = fdiv double %632, %633
  store double %634, ptr %3, align 8
  %635 = fmul double %634, %634
  store double %635, ptr %5, align 8
  %636 = load double, ptr @A6, align 8
  %637 = load double, ptr @A5, align 8
  %638 = call double @llvm.fmuladd.f64(double %636, double %635, double %637)
  %639 = load double, ptr @A4, align 8
  %640 = call double @llvm.fmuladd.f64(double %638, double %635, double %639)
  %641 = load double, ptr @A3, align 8
  %642 = call double @llvm.fmuladd.f64(double %640, double %635, double %641)
  %643 = load double, ptr @A2, align 8
  %644 = call double @llvm.fmuladd.f64(double %642, double %635, double %643)
  %645 = load double, ptr @A1, align 8
  %646 = call double @llvm.fmuladd.f64(double %644, double %635, double %645)
  %647 = load double, ptr @one, align 8
  %648 = call double @llvm.fmuladd.f64(double %646, double %635, double %647)
  %649 = fmul double %634, %648
  store double %649, ptr @sa, align 8
  %650 = load double, ptr @B6, align 8
  %651 = load double, ptr @B5, align 8
  %652 = call double @llvm.fmuladd.f64(double %650, double %635, double %651)
  %653 = load double, ptr @B4, align 8
  %654 = call double @llvm.fmuladd.f64(double %635, double %652, double %653)
  %655 = load double, ptr @B3, align 8
  %656 = call double @llvm.fmuladd.f64(double %635, double %654, double %655)
  %657 = load double, ptr @B2, align 8
  %658 = call double @llvm.fmuladd.f64(double %635, double %656, double %657)
  %659 = load double, ptr @B1, align 8
  %660 = call double @llvm.fmuladd.f64(double %635, double %658, double %659)
  %661 = call double @llvm.fmuladd.f64(double %635, double %660, double %647)
  store double %661, ptr @sb, align 8
  %662 = fmul double %649, %661
  %663 = fmul double %662, %661
  store double %663, ptr @sa, align 8
  %664 = fdiv double %631, 3.000000e+01
  store double %664, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %665 = load double, ptr @two, align 8
  %666 = call double @llvm.fmuladd.f64(double %665, double %588, double %663)
  %667 = fmul double %585, %666
  %668 = fdiv double %667, %665
  store double %668, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %669 = fsub double %668, f0x3FD2AAAAAAAAAAAB
  store double %669, ptr @sc, align 8
  %670 = fdiv double %647, %664
  store double %670, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %671 = fmul double %669, 1.000000e-30
  %672 = fmul double %631, 1.000000e-30
  %673 = fmul double %670, 1.000000e-30
  %674 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, double noundef %671, double noundef %672, double noundef %673)
  %675 = load double, ptr @five, align 8
  %676 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %677 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %678 = fsub double %676, %677
  %679 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %680 = call double @llvm.fmuladd.f64(double %675, double %678, double %679)
  %681 = fdiv double %680, 5.200000e+01
  store double %681, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %682 = load double, ptr @one, align 8
  %683 = fdiv double %682, %681
  store double %683, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %684 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %685 = fadd double %684, %679
  %686 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %687 = fadd double %685, %686
  %688 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %689 = fadd double %687, %688
  %690 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %691 = fadd double %689, %690
  store double %691, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %692 = load double, ptr @four, align 8
  %693 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %694 = call double @llvm.fmuladd.f64(double %692, double %693, double %691)
  %695 = fdiv double %694, 1.520000e+02
  store double %695, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %696 = fdiv double %682, %695
  store double %696, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %691, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %697 = fadd double %691, %693
  %698 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %699 = fadd double %697, %698
  %700 = fdiv double %699, 1.460000e+02
  store double %700, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %701 = fdiv double %682, %700
  store double %701, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %702 = fadd double %679, %686
  %703 = fadd double %702, %690
  %704 = fadd double %703, %698
  %705 = fdiv double %704, 9.100000e+01
  store double %705, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %706 = fdiv double %682, %705
  store double %706, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %707 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %708 = load i32, ptr %10, align 4
  %709 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %708)
  %710 = load double, ptr @nulltime, align 8
  %711 = fmul double %710, 1.000000e-30
  %712 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, double noundef %711)
  %713 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %714 = fmul double %713, 1.000000e-30
  %715 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, double noundef %714)
  %716 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %717 = fmul double %716, 1.000000e-30
  %718 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, double noundef %717)
  %719 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %720 = fmul double %719, 1.000000e-30
  %721 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, double noundef %720)
  %722 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %723 = fmul double %722, 1.000000e-30
  %724 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, double noundef %723)
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
