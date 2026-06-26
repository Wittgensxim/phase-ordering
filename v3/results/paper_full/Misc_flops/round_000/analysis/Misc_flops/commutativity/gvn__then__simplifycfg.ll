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

18:                                               ; preds = %54, %0
  %19 = phi double [ undef, %0 ], [ %33, %54 ]
  %20 = phi double [ undef, %0 ], [ %29, %54 ]
  %21 = phi i32 [ 15625, %0 ], [ %26, %54 ]
  %22 = phi double [ 0.000000e+00, %0 ], [ %56, %54 ]
  %23 = load double, ptr @TLimit, align 8
  %24 = fcmp olt double %22, %23
  br i1 %24, label %25, label %58

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
  br i1 %57, label %58, label %18, !llvm.loop !9

58:                                               ; preds = %54, %18
  %59 = phi double [ %19, %18 ], [ %33, %54 ]
  %60 = phi double [ %20, %18 ], [ %29, %54 ]
  %61 = phi i32 [ %21, %18 ], [ 512000000, %54 ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %62 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %63

63:                                               ; preds = %67, %58
  %64 = phi i32 [ %68, %67 ], [ 1, %58 ]
  %65 = sub nsw i32 %61, 1
  %66 = icmp sle i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = add nsw i32 %64, 1
  store i32 %68, ptr %9, align 4
  br label %63, !llvm.loop !10

69:                                               ; preds = %63
  %70 = call i32 @dtime(ptr noundef @TimeArray)
  %71 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %72 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %73 = fmul double %71, %72
  store double %73, ptr @nulltime, align 8
  %74 = fcmp olt double %73, 0.000000e+00
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store double 0.000000e+00, ptr @nulltime, align 8
  br label %76

76:                                               ; preds = %75, %69
  %77 = phi double [ 0.000000e+00, %75 ], [ %73, %69 ]
  %78 = load double, ptr @sa, align 8
  %79 = fneg double %77
  %80 = call double @llvm.fmuladd.f64(double %71, double %78, double %79)
  store double %80, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %81 = load double, ptr @D1, align 8
  %82 = load double, ptr @D2, align 8
  %83 = fadd double %81, %82
  %84 = load double, ptr @D3, align 8
  %85 = fadd double %83, %84
  %86 = load double, ptr @one, align 8
  %87 = fadd double %86, %81
  %88 = load double, ptr @E2, align 8
  %89 = fadd double %87, %88
  %90 = load double, ptr @E3, align 8
  %91 = fadd double %89, %90
  %92 = fdiv double %85, %91
  store double %92, ptr @sa, align 8
  store double %81, ptr @sb, align 8
  %93 = fdiv double %80, 1.400000e+01
  store double %93, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %94 = fadd double %92, %81
  %95 = load double, ptr @two, align 8
  %96 = call double @llvm.fmuladd.f64(double %95, double %59, double %94)
  %97 = fmul double %60, %96
  %98 = fdiv double %97, %95
  store double %98, ptr @sa, align 8
  %99 = fdiv double %86, %98
  store double %99, ptr @sb, align 8
  %100 = fptosi double %99 to i32
  %101 = mul nsw i32 40000, %100
  %102 = sitofp i32 %101 to double
  %103 = load double, ptr @scale, align 8
  %104 = fdiv double %102, %103
  %105 = fptosi double %104 to i32
  store i32 %105, ptr %11, align 4
  %106 = fsub double %99, 2.520000e+01
  store double %106, ptr @sc, align 8
  %107 = fdiv double %86, %93
  store double %107, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %108 = fmul double %106, 1.000000e-30
  %109 = fmul double %80, 1.000000e-30
  %110 = fmul double %107, 1.000000e-30
  %111 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %108, double noundef %109, double noundef %110)
  store i32 %105, ptr %10, align 4
  %112 = load double, ptr @five, align 8
  %113 = fneg double %112
  store double %113, ptr %2, align 8
  %114 = load double, ptr @one, align 8
  %115 = fneg double %114
  store double %115, ptr @sa, align 8
  %116 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %117

117:                                              ; preds = %121, %76
  %118 = phi double [ %122, %121 ], [ %113, %76 ]
  %119 = phi i32 [ %125, %121 ], [ 1, %76 ]
  %120 = icmp sle i32 %119, %105
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = fneg double %118
  store double %122, ptr %2, align 8
  %123 = load double, ptr @sa, align 8
  %124 = fadd double %123, %122
  store double %124, ptr @sa, align 8
  %125 = add nsw i32 %119, 1
  store i32 %125, ptr %9, align 4
  br label %117, !llvm.loop !11

126:                                              ; preds = %117
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
  %134 = sitofp i32 %105 to double
  store double %134, ptr @sc, align 8
  %135 = load double, ptr @sa, align 8
  store double %135, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  store double 0.000000e+00, ptr %6, align 8
  %136 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %137

137:                                              ; preds = %144, %133
  %138 = phi double [ %149, %144 ], [ %135, %133 ]
  %139 = phi double [ %145, %144 ], [ %118, %133 ]
  %140 = phi double [ %152, %144 ], [ 0.000000e+00, %133 ]
  %141 = phi double [ %151, %144 ], [ 0.000000e+00, %133 ]
  %142 = phi i32 [ %156, %144 ], [ 1, %133 ]
  %143 = icmp sle i32 %142, %105
  br i1 %143, label %144, label %157

144:                                              ; preds = %137
  %145 = fneg double %139
  store double %145, ptr %2, align 8
  %146 = load double, ptr @sa, align 8
  %147 = fadd double %146, %145
  store double %147, ptr @sa, align 8
  %148 = load double, ptr @two, align 8
  %149 = fadd double %138, %148
  store double %149, ptr %3, align 8
  %150 = fsub double %145, %149
  %151 = fadd double %141, %150
  store double %151, ptr %6, align 8
  %152 = call double @llvm.fmuladd.f64(double %139, double %149, double %140)
  store double %152, ptr %4, align 8
  %153 = load double, ptr %5, align 8
  %154 = fdiv double %145, %149
  %155 = fadd double %153, %154
  store double %155, ptr %5, align 8
  %156 = add nsw i32 %142, 1
  store i32 %156, ptr %9, align 4
  br label %137, !llvm.loop !12

157:                                              ; preds = %137
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
  %171 = load double, ptr %5, align 8
  %172 = fmul double %170, %171
  %173 = load double, ptr @five, align 8
  %174 = fdiv double %172, %173
  store double %174, ptr @sa, align 8
  %175 = fdiv double %173, %140
  %176 = fadd double %174, %175
  store double %176, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %177 = fmul double %140, %140
  %178 = fmul double %177, %140
  %179 = fdiv double 3.125000e+01, %178
  %180 = fsub double %176, %179
  store double %180, ptr @piprg, align 8
  %181 = load double, ptr @piref, align 8
  %182 = fsub double %180, %181
  store double %182, ptr @pierr, align 8
  %183 = load double, ptr @one, align 8
  %184 = fdiv double %183, %164
  store double %184, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %185 = fmul double %182, 1.000000e-30
  %186 = fmul double %163, 1.000000e-30
  %187 = fmul double %184, 1.000000e-30
  %188 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %185, double noundef %186, double noundef %187)
  %189 = load double, ptr @piref, align 8
  %190 = load double, ptr @three, align 8
  %191 = sitofp i32 %169 to double
  %192 = fmul double %190, %191
  %193 = fdiv double %189, %192
  store double %193, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %194 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %195

195:                                              ; preds = %201, %157
  %196 = phi double [ %203, %201 ], [ 0.000000e+00, %157 ]
  %197 = phi double [ %220, %201 ], [ 0.000000e+00, %157 ]
  %198 = phi i32 [ %221, %201 ], [ 1, %157 ]
  %199 = sub nsw i32 %169, 1
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
  %527 = phi double [ %543, %530 ], [ 0.000000e+00, %474 ]
  %528 = phi i32 [ %544, %530 ], [ 1, %474 ]
  %529 = icmp sle i32 %528, %199
  br i1 %529, label %530, label %545

530:                                              ; preds = %526
  %531 = sitofp i32 %528 to double
  %532 = fmul double %531, %524
  store double %532, ptr %6, align 8
  %533 = fmul double %532, %532
  store double %533, ptr %3, align 8
  %534 = load double, ptr %5, align 8
  %535 = fadd double %532, %534
  %536 = fdiv double %534, %535
  %537 = fsub double %527, %536
  %538 = fadd double %533, %534
  %539 = fdiv double %532, %538
  %540 = fsub double %537, %539
  %541 = call double @llvm.fmuladd.f64(double %532, double %533, double %534)
  %542 = fdiv double %533, %541
  %543 = fsub double %540, %542
  store double %543, ptr %2, align 8
  %544 = add nsw i32 %528, 1
  store i32 %544, ptr %9, align 4
  br label %526, !llvm.loop !17

545:                                              ; preds = %526
  %546 = call i32 @dtime(ptr noundef @TimeArray)
  %547 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %548 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %549 = load double, ptr @nulltime, align 8
  %550 = fneg double %549
  %551 = call double @llvm.fmuladd.f64(double %547, double %548, double %550)
  store double %551, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %552 = fdiv double %551, 1.200000e+01
  store double %552, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %553 = load double, ptr @sa, align 8
  store double %553, ptr %6, align 8
  %554 = fmul double %553, %553
  store double %554, ptr %3, align 8
  %555 = load double, ptr %5, align 8
  %556 = fneg double %555
  %557 = fadd double %553, %555
  %558 = fdiv double %555, %557
  %559 = fsub double %556, %558
  %560 = fadd double %554, %555
  %561 = fdiv double %553, %560
  %562 = fsub double %559, %561
  %563 = call double @llvm.fmuladd.f64(double %553, double %554, double %555)
  %564 = fdiv double %554, %563
  %565 = fsub double %562, %564
  store double %565, ptr @sa, align 8
  %566 = fmul double 1.800000e+01, %524
  %567 = load double, ptr @two, align 8
  %568 = call double @llvm.fmuladd.f64(double %567, double %527, double %565)
  %569 = fmul double %566, %568
  store double %569, ptr @sa, align 8
  %570 = fptosi double %569 to i32
  %571 = mul nsw i32 -2000, %570
  store i32 %571, ptr %10, align 4
  %572 = sitofp i32 %571 to double
  %573 = load double, ptr @scale, align 8
  %574 = fdiv double %572, %573
  %575 = fptosi double %574 to i32
  store i32 %575, ptr %10, align 4
  %576 = fadd double %569, 5.002000e+02
  store double %576, ptr @sc, align 8
  %577 = load double, ptr @one, align 8
  %578 = fdiv double %577, %552
  store double %578, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %579 = fmul double %576, 1.000000e-30
  %580 = fmul double %551, 1.000000e-30
  %581 = fmul double %578, 1.000000e-30
  %582 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, double noundef %579, double noundef %580, double noundef %581)
  %583 = load double, ptr @piref, align 8
  %584 = load double, ptr @three, align 8
  %585 = sitofp i32 %575 to double
  %586 = fmul double %584, %585
  %587 = fdiv double %583, %586
  store double %587, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %588 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %589

589:                                              ; preds = %594, %545
  %590 = phi double [ %625, %594 ], [ 0.000000e+00, %545 ]
  %591 = phi i32 [ %626, %594 ], [ 1, %545 ]
  %592 = sub nsw i32 %575, 1
  %593 = icmp sle i32 %591, %592
  br i1 %593, label %594, label %627

594:                                              ; preds = %589
  %595 = sitofp i32 %591 to double
  %596 = fmul double %595, %587
  store double %596, ptr %3, align 8
  %597 = fmul double %596, %596
  store double %597, ptr %5, align 8
  %598 = load double, ptr @B6, align 8
  %599 = load double, ptr @B5, align 8
  %600 = call double @llvm.fmuladd.f64(double %598, double %597, double %599)
  %601 = load double, ptr @B4, align 8
  %602 = call double @llvm.fmuladd.f64(double %597, double %600, double %601)
  %603 = load double, ptr @B3, align 8
  %604 = call double @llvm.fmuladd.f64(double %597, double %602, double %603)
  %605 = load double, ptr @B2, align 8
  %606 = call double @llvm.fmuladd.f64(double %597, double %604, double %605)
  %607 = load double, ptr @B1, align 8
  %608 = call double @llvm.fmuladd.f64(double %597, double %606, double %607)
  %609 = load double, ptr @one, align 8
  %610 = call double @llvm.fmuladd.f64(double %597, double %608, double %609)
  store double %610, ptr %4, align 8
  %611 = fmul double %610, %610
  %612 = fmul double %611, %596
  %613 = load double, ptr @A6, align 8
  %614 = load double, ptr @A5, align 8
  %615 = call double @llvm.fmuladd.f64(double %613, double %597, double %614)
  %616 = load double, ptr @A4, align 8
  %617 = call double @llvm.fmuladd.f64(double %615, double %597, double %616)
  %618 = load double, ptr @A3, align 8
  %619 = call double @llvm.fmuladd.f64(double %617, double %597, double %618)
  %620 = load double, ptr @A2, align 8
  %621 = call double @llvm.fmuladd.f64(double %619, double %597, double %620)
  %622 = load double, ptr @A1, align 8
  %623 = call double @llvm.fmuladd.f64(double %621, double %597, double %622)
  %624 = call double @llvm.fmuladd.f64(double %623, double %597, double %609)
  %625 = call double @llvm.fmuladd.f64(double %612, double %624, double %590)
  store double %625, ptr %2, align 8
  %626 = add nsw i32 %591, 1
  store i32 %626, ptr %9, align 4
  br label %589, !llvm.loop !18

627:                                              ; preds = %589
  %628 = call i32 @dtime(ptr noundef @TimeArray)
  %629 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %630 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %631 = load double, ptr @nulltime, align 8
  %632 = fneg double %631
  %633 = call double @llvm.fmuladd.f64(double %629, double %630, double %632)
  store double %633, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %634 = load double, ptr @piref, align 8
  %635 = load double, ptr @three, align 8
  %636 = fdiv double %634, %635
  store double %636, ptr %3, align 8
  %637 = fmul double %636, %636
  store double %637, ptr %5, align 8
  %638 = load double, ptr @A6, align 8
  %639 = load double, ptr @A5, align 8
  %640 = call double @llvm.fmuladd.f64(double %638, double %637, double %639)
  %641 = load double, ptr @A4, align 8
  %642 = call double @llvm.fmuladd.f64(double %640, double %637, double %641)
  %643 = load double, ptr @A3, align 8
  %644 = call double @llvm.fmuladd.f64(double %642, double %637, double %643)
  %645 = load double, ptr @A2, align 8
  %646 = call double @llvm.fmuladd.f64(double %644, double %637, double %645)
  %647 = load double, ptr @A1, align 8
  %648 = call double @llvm.fmuladd.f64(double %646, double %637, double %647)
  %649 = load double, ptr @one, align 8
  %650 = call double @llvm.fmuladd.f64(double %648, double %637, double %649)
  %651 = fmul double %636, %650
  store double %651, ptr @sa, align 8
  %652 = load double, ptr @B6, align 8
  %653 = load double, ptr @B5, align 8
  %654 = call double @llvm.fmuladd.f64(double %652, double %637, double %653)
  %655 = load double, ptr @B4, align 8
  %656 = call double @llvm.fmuladd.f64(double %637, double %654, double %655)
  %657 = load double, ptr @B3, align 8
  %658 = call double @llvm.fmuladd.f64(double %637, double %656, double %657)
  %659 = load double, ptr @B2, align 8
  %660 = call double @llvm.fmuladd.f64(double %637, double %658, double %659)
  %661 = load double, ptr @B1, align 8
  %662 = call double @llvm.fmuladd.f64(double %637, double %660, double %661)
  %663 = call double @llvm.fmuladd.f64(double %637, double %662, double %649)
  store double %663, ptr @sb, align 8
  %664 = fmul double %651, %663
  %665 = fmul double %664, %663
  store double %665, ptr @sa, align 8
  %666 = fdiv double %633, 3.000000e+01
  store double %666, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %667 = load double, ptr @two, align 8
  %668 = call double @llvm.fmuladd.f64(double %667, double %590, double %665)
  %669 = fmul double %587, %668
  %670 = fdiv double %669, %667
  store double %670, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %671 = fsub double %670, f0x3FD2AAAAAAAAAAAB
  store double %671, ptr @sc, align 8
  %672 = fdiv double %649, %666
  store double %672, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %673 = fmul double %671, 1.000000e-30
  %674 = fmul double %633, 1.000000e-30
  %675 = fmul double %672, 1.000000e-30
  %676 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, double noundef %673, double noundef %674, double noundef %675)
  %677 = load double, ptr @five, align 8
  %678 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %679 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %680 = fsub double %678, %679
  %681 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %682 = call double @llvm.fmuladd.f64(double %677, double %680, double %681)
  %683 = fdiv double %682, 5.200000e+01
  store double %683, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %684 = load double, ptr @one, align 8
  %685 = fdiv double %684, %683
  store double %685, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %686 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %687 = fadd double %686, %681
  %688 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %689 = fadd double %687, %688
  %690 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %691 = fadd double %689, %690
  %692 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %693 = fadd double %691, %692
  store double %693, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %694 = load double, ptr @four, align 8
  %695 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %696 = call double @llvm.fmuladd.f64(double %694, double %695, double %693)
  %697 = fdiv double %696, 1.520000e+02
  store double %697, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %698 = fdiv double %684, %697
  store double %698, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %693, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %699 = fadd double %693, %695
  %700 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %701 = fadd double %699, %700
  %702 = fdiv double %701, 1.460000e+02
  store double %702, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %703 = fdiv double %684, %702
  store double %703, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %704 = fadd double %681, %688
  %705 = fadd double %704, %692
  %706 = fadd double %705, %700
  %707 = fdiv double %706, 9.100000e+01
  store double %707, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %708 = fdiv double %684, %707
  store double %708, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %709 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %710 = load i32, ptr %10, align 4
  %711 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %710)
  %712 = load double, ptr @nulltime, align 8
  %713 = fmul double %712, 1.000000e-30
  %714 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, double noundef %713)
  %715 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %716 = fmul double %715, 1.000000e-30
  %717 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, double noundef %716)
  %718 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %719 = fmul double %718, 1.000000e-30
  %720 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, double noundef %719)
  %721 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %722 = fmul double %721, 1.000000e-30
  %723 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, double noundef %722)
  %724 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %725 = fmul double %724, 1.000000e-30
  %726 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, double noundef %725)
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
