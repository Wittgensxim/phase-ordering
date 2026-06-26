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
  %19 = phi double [ %.lcssa10, %59 ], [ undef, %0 ]
  %20 = phi double [ %29, %59 ], [ undef, %0 ]
  %21 = phi i32 [ %26, %59 ], [ 15625, %0 ]
  %22 = phi double [ %56, %59 ], [ 0.000000e+00, %0 ]
  %23 = load double, ptr @TLimit, align 8
  %24 = fcmp olt double %22, %23
  br i1 %24, label %25, label %.loopexit

25:                                               ; preds = %18
  %26 = mul nuw i32 2, %21
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
  %31 = add i32 %26, -1
  %smax = call i32 @llvm.smax.i32(i32 %31, i32 0)
  %32 = add nuw i32 %smax, 1
  br label %33

33:                                               ; preds = %37, %25
  %34 = phi double [ %39, %37 ], [ 0.000000e+00, %25 ]
  %35 = phi double [ %52, %37 ], [ 0.000000e+00, %25 ]
  %36 = phi i32 [ %53, %37 ], [ 1, %25 ]
  %exitcond = icmp ne i32 %36, %32
  br i1 %exitcond, label %37, label %54

37:                                               ; preds = %33
  %38 = load double, ptr %5, align 8
  %39 = fadd double %34, %38
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
  %52 = fadd double %35, %51
  store double %52, ptr %2, align 8
  %53 = add nuw i32 %36, 1
  store i32 %53, ptr %9, align 4
  br label %33, !llvm.loop !7

54:                                               ; preds = %33
  %.lcssa10 = phi double [ %35, %33 ]
  %55 = call i32 @dtime(ptr noundef @TimeArray)
  %56 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %56, ptr @sa, align 8
  %57 = icmp eq i32 %26, 512000000
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  %.lcssa17 = phi double [ %29, %54 ]
  %.lcssa10.lcssa = phi double [ %.lcssa10, %54 ]
  br label %60

59:                                               ; preds = %54
  br label %18, !llvm.loop !9

.loopexit:                                        ; preds = %18
  %.lcssa15 = phi double [ %19, %18 ]
  %.lcssa13 = phi double [ %20, %18 ]
  %.lcssa11 = phi i32 [ %21, %18 ]
  br label %60

60:                                               ; preds = %.loopexit, %58
  %61 = phi double [ %.lcssa10.lcssa, %58 ], [ %.lcssa15, %.loopexit ]
  %62 = phi double [ %.lcssa17, %58 ], [ %.lcssa13, %.loopexit ]
  %63 = phi i32 [ 512000000, %58 ], [ %.lcssa11, %.loopexit ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %64 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %smax18 = call i32 @llvm.smax.i32(i32 %63, i32 1)
  br label %65

65:                                               ; preds = %67, %60
  %66 = phi i32 [ %68, %67 ], [ 1, %60 ]
  %exitcond19 = icmp ne i32 %66, %smax18
  br i1 %exitcond19, label %67, label %69

67:                                               ; preds = %65
  %68 = add nuw i32 %66, 1
  store i32 %68, ptr %9, align 4
  br label %65, !llvm.loop !10

69:                                               ; preds = %65
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
  %96 = call double @llvm.fmuladd.f64(double %95, double %61, double %94)
  %97 = fmul double %62, %96
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
  %smax20 = call i32 @llvm.smax.i32(i32 %105, i32 0)
  %117 = add nuw i32 %smax20, 1
  br label %118

118:                                              ; preds = %121, %76
  %119 = phi double [ %122, %121 ], [ %113, %76 ]
  %120 = phi i32 [ %125, %121 ], [ 1, %76 ]
  %exitcond21 = icmp ne i32 %120, %117
  br i1 %exitcond21, label %121, label %126

121:                                              ; preds = %118
  %122 = fneg double %119
  store double %122, ptr %2, align 8
  %123 = load double, ptr @sa, align 8
  %124 = fadd double %123, %122
  store double %124, ptr @sa, align 8
  %125 = add nuw i32 %120, 1
  store i32 %125, ptr %9, align 4
  br label %118, !llvm.loop !11

126:                                              ; preds = %118
  %.lcssa9 = phi double [ %119, %118 ]
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
  %smax22 = call i32 @llvm.smax.i32(i32 %105, i32 0)
  %137 = add nuw i32 %smax22, 1
  br label %138

138:                                              ; preds = %144, %133
  %139 = phi double [ %149, %144 ], [ %135, %133 ]
  %140 = phi double [ %145, %144 ], [ %.lcssa9, %133 ]
  %141 = phi double [ %152, %144 ], [ 0.000000e+00, %133 ]
  %142 = phi double [ %151, %144 ], [ 0.000000e+00, %133 ]
  %143 = phi i32 [ %156, %144 ], [ 1, %133 ]
  %exitcond23 = icmp ne i32 %143, %137
  br i1 %exitcond23, label %144, label %157

144:                                              ; preds = %138
  %145 = fneg double %140
  store double %145, ptr %2, align 8
  %146 = load double, ptr @sa, align 8
  %147 = fadd double %146, %145
  store double %147, ptr @sa, align 8
  %148 = load double, ptr @two, align 8
  %149 = fadd double %139, %148
  store double %149, ptr %3, align 8
  %150 = fsub double %145, %149
  %151 = fadd double %142, %150
  store double %151, ptr %6, align 8
  %152 = call double @llvm.fmuladd.f64(double %140, double %149, double %141)
  store double %152, ptr %4, align 8
  %153 = load double, ptr %5, align 8
  %154 = fdiv double %145, %149
  %155 = fadd double %153, %154
  store double %155, ptr %5, align 8
  %156 = add nuw i32 %143, 1
  store i32 %156, ptr %9, align 4
  br label %138, !llvm.loop !12

157:                                              ; preds = %138
  %.lcssa8 = phi double [ %141, %138 ]
  %.lcssa7 = phi double [ %142, %138 ]
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
  %166 = fmul double %165, %.lcssa7
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
  %175 = fdiv double %173, %.lcssa8
  %176 = fadd double %174, %175
  store double %176, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %177 = fmul double %.lcssa8, %.lcssa8
  %178 = fmul double %177, %.lcssa8
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
  %195 = add i32 %169, -1
  %smax24 = call i32 @llvm.smax.i32(i32 %195, i32 0)
  %196 = add nuw i32 %smax24, 1
  br label %197

197:                                              ; preds = %201, %157
  %198 = phi double [ %203, %201 ], [ 0.000000e+00, %157 ]
  %199 = phi double [ %220, %201 ], [ 0.000000e+00, %157 ]
  %200 = phi i32 [ %221, %201 ], [ 1, %157 ]
  %exitcond25 = icmp ne i32 %200, %196
  br i1 %exitcond25, label %201, label %222

201:                                              ; preds = %197
  %202 = load double, ptr @one, align 8
  %203 = fadd double %198, %202
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
  %220 = call double @llvm.fmuladd.f64(double %204, double %219, double %199)
  store double %220, ptr %2, align 8
  %221 = add nuw i32 %200, 1
  store i32 %221, ptr %9, align 4
  br label %197, !llvm.loop !13

222:                                              ; preds = %197
  %.lcssa6 = phi double [ %199, %197 ]
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
  %251 = call double @llvm.fmuladd.f64(double %250, double %.lcssa6, double %248)
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

269:                                              ; preds = %272, %222
  %270 = phi double [ %289, %272 ], [ 0.000000e+00, %222 ]
  %271 = phi i32 [ %290, %272 ], [ 1, %222 ]
  %exitcond26 = icmp ne i32 %271, %196
  br i1 %exitcond26, label %272, label %291

272:                                              ; preds = %269
  %273 = sitofp i32 %271 to double
  %274 = fmul double %273, %267
  store double %274, ptr %3, align 8
  %275 = fmul double %274, %274
  store double %275, ptr %5, align 8
  %276 = load double, ptr @B6, align 8
  %277 = load double, ptr @B5, align 8
  %278 = call double @llvm.fmuladd.f64(double %276, double %275, double %277)
  %279 = load double, ptr @B4, align 8
  %280 = call double @llvm.fmuladd.f64(double %275, double %278, double %279)
  %281 = load double, ptr @B3, align 8
  %282 = call double @llvm.fmuladd.f64(double %275, double %280, double %281)
  %283 = load double, ptr @B2, align 8
  %284 = call double @llvm.fmuladd.f64(double %275, double %282, double %283)
  %285 = load double, ptr @B1, align 8
  %286 = call double @llvm.fmuladd.f64(double %275, double %284, double %285)
  %287 = call double @llvm.fmuladd.f64(double %275, double %286, double %270)
  %288 = load double, ptr @one, align 8
  %289 = fadd double %287, %288
  store double %289, ptr %2, align 8
  %290 = add nuw i32 %271, 1
  store i32 %290, ptr %9, align 4
  br label %269, !llvm.loop !14

291:                                              ; preds = %269
  %.lcssa4 = phi double [ %270, %269 ]
  %292 = call i32 @dtime(ptr noundef @TimeArray)
  %293 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %294 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %295 = load double, ptr @nulltime, align 8
  %296 = fneg double %295
  %297 = call double @llvm.fmuladd.f64(double %293, double %294, double %296)
  store double %297, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %298 = load double, ptr @piref, align 8
  %299 = load double, ptr @three, align 8
  %300 = fdiv double %298, %299
  store double %300, ptr %3, align 8
  %301 = fmul double %300, %300
  store double %301, ptr %5, align 8
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
  %313 = load double, ptr @one, align 8
  %314 = call double @llvm.fmuladd.f64(double %301, double %312, double %313)
  store double %314, ptr @sa, align 8
  %315 = fdiv double %297, 1.500000e+01
  store double %315, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %316 = fadd double %314, %313
  %317 = load double, ptr @two, align 8
  %318 = call double @llvm.fmuladd.f64(double %317, double %.lcssa4, double %316)
  %319 = fmul double %267, %318
  %320 = fdiv double %319, %317
  store double %320, ptr @sa, align 8
  store double %300, ptr %3, align 8
  store double %301, ptr %5, align 8
  %321 = load double, ptr @A6, align 8
  %322 = load double, ptr @A5, align 8
  %323 = call double @llvm.fmuladd.f64(double %321, double %301, double %322)
  %324 = load double, ptr @A4, align 8
  %325 = call double @llvm.fmuladd.f64(double %323, double %301, double %324)
  %326 = load double, ptr @A3, align 8
  %327 = call double @llvm.fmuladd.f64(double %325, double %301, double %326)
  %328 = load double, ptr @A2, align 8
  %329 = call double @llvm.fmuladd.f64(double %327, double %301, double %328)
  %330 = load double, ptr @A1, align 8
  %331 = call double @llvm.fmuladd.f64(double %329, double %301, double %330)
  %332 = load double, ptr @A0, align 8
  %333 = call double @llvm.fmuladd.f64(double %331, double %301, double %332)
  %334 = fmul double %300, %333
  store double %334, ptr @sb, align 8
  %335 = fsub double %320, %334
  store double %335, ptr @sc, align 8
  %336 = fdiv double %313, %315
  store double %336, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %337 = fmul double %335, 1.000000e-30
  %338 = fmul double %297, 1.000000e-30
  %339 = fmul double %336, 1.000000e-30
  %340 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %337, double noundef %338, double noundef %339)
  %341 = load double, ptr @piref, align 8
  %342 = load double, ptr @three, align 8
  %343 = fmul double %342, %191
  %344 = fdiv double %341, %343
  store double %344, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %345 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %346

346:                                              ; preds = %349, %291
  %347 = phi double [ %380, %349 ], [ 0.000000e+00, %291 ]
  %348 = phi i32 [ %381, %349 ], [ 1, %291 ]
  %exitcond27 = icmp ne i32 %348, %196
  br i1 %exitcond27, label %349, label %382

349:                                              ; preds = %346
  %350 = sitofp i32 %348 to double
  %351 = fmul double %350, %344
  store double %351, ptr %3, align 8
  %352 = fmul double %351, %351
  store double %352, ptr %5, align 8
  %353 = load double, ptr @A6, align 8
  %354 = load double, ptr @A5, align 8
  %355 = call double @llvm.fmuladd.f64(double %353, double %352, double %354)
  %356 = load double, ptr @A4, align 8
  %357 = call double @llvm.fmuladd.f64(double %355, double %352, double %356)
  %358 = load double, ptr @A3, align 8
  %359 = call double @llvm.fmuladd.f64(double %357, double %352, double %358)
  %360 = load double, ptr @A2, align 8
  %361 = call double @llvm.fmuladd.f64(double %359, double %352, double %360)
  %362 = load double, ptr @A1, align 8
  %363 = call double @llvm.fmuladd.f64(double %361, double %352, double %362)
  %364 = load double, ptr @one, align 8
  %365 = call double @llvm.fmuladd.f64(double %363, double %352, double %364)
  %366 = fmul double %351, %365
  store double %366, ptr %4, align 8
  %367 = load double, ptr @B6, align 8
  %368 = load double, ptr @B5, align 8
  %369 = call double @llvm.fmuladd.f64(double %367, double %352, double %368)
  %370 = load double, ptr @B4, align 8
  %371 = call double @llvm.fmuladd.f64(double %352, double %369, double %370)
  %372 = load double, ptr @B3, align 8
  %373 = call double @llvm.fmuladd.f64(double %352, double %371, double %372)
  %374 = load double, ptr @B2, align 8
  %375 = call double @llvm.fmuladd.f64(double %352, double %373, double %374)
  %376 = load double, ptr @B1, align 8
  %377 = call double @llvm.fmuladd.f64(double %352, double %375, double %376)
  %378 = call double @llvm.fmuladd.f64(double %352, double %377, double %364)
  %379 = fdiv double %366, %378
  %380 = fadd double %347, %379
  store double %380, ptr %2, align 8
  %381 = add nuw i32 %348, 1
  store i32 %381, ptr %9, align 4
  br label %346, !llvm.loop !15

382:                                              ; preds = %346
  %.lcssa3 = phi double [ %347, %346 ]
  %383 = call i32 @dtime(ptr noundef @TimeArray)
  %384 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %385 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %386 = load double, ptr @nulltime, align 8
  %387 = fneg double %386
  %388 = call double @llvm.fmuladd.f64(double %384, double %385, double %387)
  store double %388, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %389 = load double, ptr @piref, align 8
  %390 = load double, ptr @three, align 8
  %391 = fdiv double %389, %390
  store double %391, ptr %3, align 8
  %392 = fmul double %391, %391
  store double %392, ptr %5, align 8
  %393 = load double, ptr @A6, align 8
  %394 = load double, ptr @A5, align 8
  %395 = call double @llvm.fmuladd.f64(double %393, double %392, double %394)
  %396 = load double, ptr @A4, align 8
  %397 = call double @llvm.fmuladd.f64(double %395, double %392, double %396)
  %398 = load double, ptr @A3, align 8
  %399 = call double @llvm.fmuladd.f64(double %397, double %392, double %398)
  %400 = load double, ptr @A2, align 8
  %401 = call double @llvm.fmuladd.f64(double %399, double %392, double %400)
  %402 = load double, ptr @A1, align 8
  %403 = call double @llvm.fmuladd.f64(double %401, double %392, double %402)
  %404 = load double, ptr @one, align 8
  %405 = call double @llvm.fmuladd.f64(double %403, double %392, double %404)
  %406 = fmul double %391, %405
  store double %406, ptr @sa, align 8
  %407 = load double, ptr @B6, align 8
  %408 = load double, ptr @B5, align 8
  %409 = call double @llvm.fmuladd.f64(double %407, double %392, double %408)
  %410 = load double, ptr @B4, align 8
  %411 = call double @llvm.fmuladd.f64(double %392, double %409, double %410)
  %412 = load double, ptr @B3, align 8
  %413 = call double @llvm.fmuladd.f64(double %392, double %411, double %412)
  %414 = load double, ptr @B2, align 8
  %415 = call double @llvm.fmuladd.f64(double %392, double %413, double %414)
  %416 = load double, ptr @B1, align 8
  %417 = call double @llvm.fmuladd.f64(double %392, double %415, double %416)
  %418 = call double @llvm.fmuladd.f64(double %392, double %417, double %404)
  store double %418, ptr @sb, align 8
  %419 = fdiv double %406, %418
  store double %419, ptr @sa, align 8
  %420 = fdiv double %388, 2.900000e+01
  store double %420, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %421 = load double, ptr @two, align 8
  %422 = call double @llvm.fmuladd.f64(double %421, double %.lcssa3, double %419)
  %423 = fmul double %344, %422
  %424 = fdiv double %423, %421
  store double %424, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %425 = fsub double %424, f0x3FE62E42FEFA39EF
  store double %425, ptr @sc, align 8
  %426 = fdiv double %404, %420
  store double %426, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %427 = fmul double %425, 1.000000e-30
  %428 = fmul double %388, 1.000000e-30
  %429 = fmul double %426, 1.000000e-30
  %430 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %427, double noundef %428, double noundef %429)
  %431 = load double, ptr @piref, align 8
  %432 = load double, ptr @four, align 8
  %433 = fmul double %432, %191
  %434 = fdiv double %431, %433
  store double %434, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %435 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %436

436:                                              ; preds = %439, %382
  %437 = phi double [ %469, %439 ], [ 0.000000e+00, %382 ]
  %438 = phi i32 [ %470, %439 ], [ 1, %382 ]
  %exitcond28 = icmp ne i32 %438, %196
  br i1 %exitcond28, label %439, label %471

439:                                              ; preds = %436
  %440 = sitofp i32 %438 to double
  %441 = fmul double %440, %434
  store double %441, ptr %3, align 8
  %442 = fmul double %441, %441
  store double %442, ptr %5, align 8
  %443 = load double, ptr @A6, align 8
  %444 = load double, ptr @A5, align 8
  %445 = call double @llvm.fmuladd.f64(double %443, double %442, double %444)
  %446 = load double, ptr @A4, align 8
  %447 = call double @llvm.fmuladd.f64(double %445, double %442, double %446)
  %448 = load double, ptr @A3, align 8
  %449 = call double @llvm.fmuladd.f64(double %447, double %442, double %448)
  %450 = load double, ptr @A2, align 8
  %451 = call double @llvm.fmuladd.f64(double %449, double %442, double %450)
  %452 = load double, ptr @A1, align 8
  %453 = call double @llvm.fmuladd.f64(double %451, double %442, double %452)
  %454 = load double, ptr @one, align 8
  %455 = call double @llvm.fmuladd.f64(double %453, double %442, double %454)
  %456 = fmul double %441, %455
  store double %456, ptr %4, align 8
  %457 = load double, ptr @B6, align 8
  %458 = load double, ptr @B5, align 8
  %459 = call double @llvm.fmuladd.f64(double %457, double %442, double %458)
  %460 = load double, ptr @B4, align 8
  %461 = call double @llvm.fmuladd.f64(double %442, double %459, double %460)
  %462 = load double, ptr @B3, align 8
  %463 = call double @llvm.fmuladd.f64(double %442, double %461, double %462)
  %464 = load double, ptr @B2, align 8
  %465 = call double @llvm.fmuladd.f64(double %442, double %463, double %464)
  %466 = load double, ptr @B1, align 8
  %467 = call double @llvm.fmuladd.f64(double %442, double %465, double %466)
  %468 = call double @llvm.fmuladd.f64(double %442, double %467, double %454)
  %469 = call double @llvm.fmuladd.f64(double %456, double %468, double %437)
  store double %469, ptr %2, align 8
  %470 = add nuw i32 %438, 1
  store i32 %470, ptr %9, align 4
  br label %436, !llvm.loop !16

471:                                              ; preds = %436
  %.lcssa2 = phi double [ %437, %436 ]
  %472 = call i32 @dtime(ptr noundef @TimeArray)
  %473 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %474 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %475 = load double, ptr @nulltime, align 8
  %476 = fneg double %475
  %477 = call double @llvm.fmuladd.f64(double %473, double %474, double %476)
  store double %477, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %478 = load double, ptr @piref, align 8
  %479 = load double, ptr @four, align 8
  %480 = fdiv double %478, %479
  store double %480, ptr %3, align 8
  %481 = fmul double %480, %480
  store double %481, ptr %5, align 8
  %482 = load double, ptr @A6, align 8
  %483 = load double, ptr @A5, align 8
  %484 = call double @llvm.fmuladd.f64(double %482, double %481, double %483)
  %485 = load double, ptr @A4, align 8
  %486 = call double @llvm.fmuladd.f64(double %484, double %481, double %485)
  %487 = load double, ptr @A3, align 8
  %488 = call double @llvm.fmuladd.f64(double %486, double %481, double %487)
  %489 = load double, ptr @A2, align 8
  %490 = call double @llvm.fmuladd.f64(double %488, double %481, double %489)
  %491 = load double, ptr @A1, align 8
  %492 = call double @llvm.fmuladd.f64(double %490, double %481, double %491)
  %493 = load double, ptr @one, align 8
  %494 = call double @llvm.fmuladd.f64(double %492, double %481, double %493)
  %495 = fmul double %480, %494
  store double %495, ptr @sa, align 8
  %496 = load double, ptr @B6, align 8
  %497 = load double, ptr @B5, align 8
  %498 = call double @llvm.fmuladd.f64(double %496, double %481, double %497)
  %499 = load double, ptr @B4, align 8
  %500 = call double @llvm.fmuladd.f64(double %481, double %498, double %499)
  %501 = load double, ptr @B3, align 8
  %502 = call double @llvm.fmuladd.f64(double %481, double %500, double %501)
  %503 = load double, ptr @B2, align 8
  %504 = call double @llvm.fmuladd.f64(double %481, double %502, double %503)
  %505 = load double, ptr @B1, align 8
  %506 = call double @llvm.fmuladd.f64(double %481, double %504, double %505)
  %507 = call double @llvm.fmuladd.f64(double %481, double %506, double %493)
  store double %507, ptr @sb, align 8
  %508 = fmul double %495, %507
  store double %508, ptr @sa, align 8
  %509 = fdiv double %477, 2.900000e+01
  store double %509, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %510 = load double, ptr @two, align 8
  %511 = call double @llvm.fmuladd.f64(double %510, double %.lcssa2, double %508)
  %512 = fmul double %434, %511
  %513 = fdiv double %512, %510
  store double %513, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %514 = fsub double %513, 2.500000e-01
  store double %514, ptr @sc, align 8
  %515 = fdiv double %493, %509
  store double %515, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %516 = fmul double %514, 1.000000e-30
  %517 = fmul double %477, 1.000000e-30
  %518 = fmul double %515, 1.000000e-30
  %519 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, double noundef %516, double noundef %517, double noundef %518)
  store double 0.000000e+00, ptr %2, align 8
  %520 = load double, ptr @one, align 8
  store double %520, ptr %5, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %521 = fdiv double f0x40599541F7F192A4, %191
  store double %521, ptr %4, align 8
  %522 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %523

523:                                              ; preds = %526, %471
  %524 = phi double [ %539, %526 ], [ 0.000000e+00, %471 ]
  %525 = phi i32 [ %540, %526 ], [ 1, %471 ]
  %exitcond29 = icmp ne i32 %525, %196
  br i1 %exitcond29, label %526, label %541

526:                                              ; preds = %523
  %527 = sitofp i32 %525 to double
  %528 = fmul double %527, %521
  store double %528, ptr %6, align 8
  %529 = fmul double %528, %528
  store double %529, ptr %3, align 8
  %530 = load double, ptr %5, align 8
  %531 = fadd double %528, %530
  %532 = fdiv double %530, %531
  %533 = fsub double %524, %532
  %534 = fadd double %529, %530
  %535 = fdiv double %528, %534
  %536 = fsub double %533, %535
  %537 = call double @llvm.fmuladd.f64(double %528, double %529, double %530)
  %538 = fdiv double %529, %537
  %539 = fsub double %536, %538
  store double %539, ptr %2, align 8
  %540 = add nuw i32 %525, 1
  store i32 %540, ptr %9, align 4
  br label %523, !llvm.loop !17

541:                                              ; preds = %523
  %.lcssa1 = phi double [ %524, %523 ]
  %542 = call i32 @dtime(ptr noundef @TimeArray)
  %543 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %544 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %545 = load double, ptr @nulltime, align 8
  %546 = fneg double %545
  %547 = call double @llvm.fmuladd.f64(double %543, double %544, double %546)
  store double %547, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %548 = fdiv double %547, 1.200000e+01
  store double %548, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %549 = load double, ptr @sa, align 8
  store double %549, ptr %6, align 8
  %550 = fmul double %549, %549
  store double %550, ptr %3, align 8
  %551 = load double, ptr %5, align 8
  %552 = fneg double %551
  %553 = fadd double %549, %551
  %554 = fdiv double %551, %553
  %555 = fsub double %552, %554
  %556 = fadd double %550, %551
  %557 = fdiv double %549, %556
  %558 = fsub double %555, %557
  %559 = call double @llvm.fmuladd.f64(double %549, double %550, double %551)
  %560 = fdiv double %550, %559
  %561 = fsub double %558, %560
  store double %561, ptr @sa, align 8
  %562 = fmul double 1.800000e+01, %521
  %563 = load double, ptr @two, align 8
  %564 = call double @llvm.fmuladd.f64(double %563, double %.lcssa1, double %561)
  %565 = fmul double %562, %564
  store double %565, ptr @sa, align 8
  %566 = fptosi double %565 to i32
  %567 = mul nsw i32 -2000, %566
  store i32 %567, ptr %10, align 4
  %568 = sitofp i32 %567 to double
  %569 = load double, ptr @scale, align 8
  %570 = fdiv double %568, %569
  %571 = fptosi double %570 to i32
  store i32 %571, ptr %10, align 4
  %572 = fadd double %565, 5.002000e+02
  store double %572, ptr @sc, align 8
  %573 = load double, ptr @one, align 8
  %574 = fdiv double %573, %548
  store double %574, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %575 = fmul double %572, 1.000000e-30
  %576 = fmul double %547, 1.000000e-30
  %577 = fmul double %574, 1.000000e-30
  %578 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, double noundef %575, double noundef %576, double noundef %577)
  %579 = load double, ptr @piref, align 8
  %580 = load double, ptr @three, align 8
  %581 = sitofp i32 %571 to double
  %582 = fmul double %580, %581
  %583 = fdiv double %579, %582
  store double %583, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %584 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %585 = add i32 %571, -1
  %smax30 = call i32 @llvm.smax.i32(i32 %585, i32 0)
  %586 = add nuw i32 %smax30, 1
  br label %587

587:                                              ; preds = %590, %541
  %588 = phi double [ %621, %590 ], [ 0.000000e+00, %541 ]
  %589 = phi i32 [ %622, %590 ], [ 1, %541 ]
  %exitcond31 = icmp ne i32 %589, %586
  br i1 %exitcond31, label %590, label %623

590:                                              ; preds = %587
  %591 = sitofp i32 %589 to double
  %592 = fmul double %591, %583
  store double %592, ptr %3, align 8
  %593 = fmul double %592, %592
  store double %593, ptr %5, align 8
  %594 = load double, ptr @B6, align 8
  %595 = load double, ptr @B5, align 8
  %596 = call double @llvm.fmuladd.f64(double %594, double %593, double %595)
  %597 = load double, ptr @B4, align 8
  %598 = call double @llvm.fmuladd.f64(double %593, double %596, double %597)
  %599 = load double, ptr @B3, align 8
  %600 = call double @llvm.fmuladd.f64(double %593, double %598, double %599)
  %601 = load double, ptr @B2, align 8
  %602 = call double @llvm.fmuladd.f64(double %593, double %600, double %601)
  %603 = load double, ptr @B1, align 8
  %604 = call double @llvm.fmuladd.f64(double %593, double %602, double %603)
  %605 = load double, ptr @one, align 8
  %606 = call double @llvm.fmuladd.f64(double %593, double %604, double %605)
  store double %606, ptr %4, align 8
  %607 = fmul double %606, %606
  %608 = fmul double %607, %592
  %609 = load double, ptr @A6, align 8
  %610 = load double, ptr @A5, align 8
  %611 = call double @llvm.fmuladd.f64(double %609, double %593, double %610)
  %612 = load double, ptr @A4, align 8
  %613 = call double @llvm.fmuladd.f64(double %611, double %593, double %612)
  %614 = load double, ptr @A3, align 8
  %615 = call double @llvm.fmuladd.f64(double %613, double %593, double %614)
  %616 = load double, ptr @A2, align 8
  %617 = call double @llvm.fmuladd.f64(double %615, double %593, double %616)
  %618 = load double, ptr @A1, align 8
  %619 = call double @llvm.fmuladd.f64(double %617, double %593, double %618)
  %620 = call double @llvm.fmuladd.f64(double %619, double %593, double %605)
  %621 = call double @llvm.fmuladd.f64(double %608, double %620, double %588)
  store double %621, ptr %2, align 8
  %622 = add nuw i32 %589, 1
  store i32 %622, ptr %9, align 4
  br label %587, !llvm.loop !18

623:                                              ; preds = %587
  %.lcssa = phi double [ %588, %587 ]
  %624 = call i32 @dtime(ptr noundef @TimeArray)
  %625 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %626 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %627 = load double, ptr @nulltime, align 8
  %628 = fneg double %627
  %629 = call double @llvm.fmuladd.f64(double %625, double %626, double %628)
  store double %629, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %630 = load double, ptr @piref, align 8
  %631 = load double, ptr @three, align 8
  %632 = fdiv double %630, %631
  store double %632, ptr %3, align 8
  %633 = fmul double %632, %632
  store double %633, ptr %5, align 8
  %634 = load double, ptr @A6, align 8
  %635 = load double, ptr @A5, align 8
  %636 = call double @llvm.fmuladd.f64(double %634, double %633, double %635)
  %637 = load double, ptr @A4, align 8
  %638 = call double @llvm.fmuladd.f64(double %636, double %633, double %637)
  %639 = load double, ptr @A3, align 8
  %640 = call double @llvm.fmuladd.f64(double %638, double %633, double %639)
  %641 = load double, ptr @A2, align 8
  %642 = call double @llvm.fmuladd.f64(double %640, double %633, double %641)
  %643 = load double, ptr @A1, align 8
  %644 = call double @llvm.fmuladd.f64(double %642, double %633, double %643)
  %645 = load double, ptr @one, align 8
  %646 = call double @llvm.fmuladd.f64(double %644, double %633, double %645)
  %647 = fmul double %632, %646
  store double %647, ptr @sa, align 8
  %648 = load double, ptr @B6, align 8
  %649 = load double, ptr @B5, align 8
  %650 = call double @llvm.fmuladd.f64(double %648, double %633, double %649)
  %651 = load double, ptr @B4, align 8
  %652 = call double @llvm.fmuladd.f64(double %633, double %650, double %651)
  %653 = load double, ptr @B3, align 8
  %654 = call double @llvm.fmuladd.f64(double %633, double %652, double %653)
  %655 = load double, ptr @B2, align 8
  %656 = call double @llvm.fmuladd.f64(double %633, double %654, double %655)
  %657 = load double, ptr @B1, align 8
  %658 = call double @llvm.fmuladd.f64(double %633, double %656, double %657)
  %659 = call double @llvm.fmuladd.f64(double %633, double %658, double %645)
  store double %659, ptr @sb, align 8
  %660 = fmul double %647, %659
  %661 = fmul double %660, %659
  store double %661, ptr @sa, align 8
  %662 = fdiv double %629, 3.000000e+01
  store double %662, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %663 = load double, ptr @two, align 8
  %664 = call double @llvm.fmuladd.f64(double %663, double %.lcssa, double %661)
  %665 = fmul double %583, %664
  %666 = fdiv double %665, %663
  store double %666, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %667 = fsub double %666, f0x3FD2AAAAAAAAAAAB
  store double %667, ptr @sc, align 8
  %668 = fdiv double %645, %662
  store double %668, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %669 = fmul double %667, 1.000000e-30
  %670 = fmul double %629, 1.000000e-30
  %671 = fmul double %668, 1.000000e-30
  %672 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, double noundef %669, double noundef %670, double noundef %671)
  %673 = load double, ptr @five, align 8
  %674 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %675 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %676 = fsub double %674, %675
  %677 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %678 = call double @llvm.fmuladd.f64(double %673, double %676, double %677)
  %679 = fdiv double %678, 5.200000e+01
  store double %679, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %680 = load double, ptr @one, align 8
  %681 = fdiv double %680, %679
  store double %681, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %682 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %683 = fadd double %682, %677
  %684 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %685 = fadd double %683, %684
  %686 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %687 = fadd double %685, %686
  %688 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %689 = fadd double %687, %688
  store double %689, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %690 = load double, ptr @four, align 8
  %691 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %692 = call double @llvm.fmuladd.f64(double %690, double %691, double %689)
  %693 = fdiv double %692, 1.520000e+02
  store double %693, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %694 = fdiv double %680, %693
  store double %694, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %689, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %695 = fadd double %689, %691
  %696 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %697 = fadd double %695, %696
  %698 = fdiv double %697, 1.460000e+02
  store double %698, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %699 = fdiv double %680, %698
  store double %699, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %700 = fadd double %677, %684
  %701 = fadd double %700, %688
  %702 = fadd double %701, %696
  %703 = fdiv double %702, 9.100000e+01
  store double %703, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %704 = fdiv double %680, %703
  store double %704, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %705 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %706 = load i32, ptr %10, align 4
  %707 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %706)
  %708 = load double, ptr @nulltime, align 8
  %709 = fmul double %708, 1.000000e-30
  %710 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, double noundef %709)
  %711 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %712 = fmul double %711, 1.000000e-30
  %713 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, double noundef %712)
  %714 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %715 = fmul double %714, 1.000000e-30
  %716 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, double noundef %715)
  %717 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %718 = fmul double %717, 1.000000e-30
  %719 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, double noundef %718)
  %720 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %721 = fmul double %720, 1.000000e-30
  %722 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, double noundef %721)
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

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
