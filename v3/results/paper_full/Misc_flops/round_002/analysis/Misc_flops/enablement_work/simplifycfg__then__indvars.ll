; ModuleID = 'results\paper_full\Misc_flops\round_001\output.ll'
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
@str = private unnamed_addr constant [57 x i8] c"   FLOPS C Program (Double Precision), V2.0 18 Dec 1992\0A\00", align 1
@str.1 = private unnamed_addr constant [47 x i8] c"   Module     Error        RunTime      MFLOPS\00", align 1
@str.2 = private unnamed_addr constant [35 x i8] c"                            (usec)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %putchar = call i32 @putchar(i32 10)
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  store double 6.400000e+01, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  store double 1.000000e+00, ptr @TLimit, align 8
  store double f0x400921FB54442D18, ptr @piref, align 8
  store double 1.000000e+00, ptr @one, align 8
  store double 2.000000e+00, ptr @two, align 8
  store double 3.000000e+00, ptr @three, align 8
  store double 4.000000e+00, ptr @four, align 8
  store double 5.000000e+00, ptr @five, align 8
  store double 1.000000e+00, ptr @scale, align 8
  %puts1 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  %1 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %2 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  store double 0.000000e+00, ptr @sa, align 8
  br label %3

3:                                                ; preds = %36, %0
  %4 = phi double [ undef, %0 ], [ %.lcssa10, %36 ]
  %5 = phi double [ undef, %0 ], [ %14, %36 ]
  %6 = phi i32 [ 15625, %0 ], [ %11, %36 ]
  %7 = phi double [ 0.000000e+00, %0 ], [ %38, %36 ]
  %8 = load double, ptr @TLimit, align 8
  %9 = fcmp olt double %7, %8
  br i1 %9, label %10, label %40

10:                                               ; preds = %3
  %11 = shl i32 %6, 1
  %12 = load double, ptr @one, align 8
  %13 = sitofp i32 %11 to double
  %14 = fdiv double %12, %13
  %15 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %16

16:                                               ; preds = %20, %10
  %17 = phi double [ %21, %20 ], [ 0.000000e+00, %10 ]
  %18 = phi double [ %34, %20 ], [ 0.000000e+00, %10 ]
  %19 = phi i32 [ %35, %20 ], [ 1, %10 ]
  %exitcond = icmp ne i32 %19, %11
  br i1 %exitcond, label %20, label %36

20:                                               ; preds = %16
  %21 = fadd double %17, %12
  %22 = fmul double %21, %14
  %23 = load double, ptr @D1, align 8
  %24 = load double, ptr @D2, align 8
  %25 = load double, ptr @D3, align 8
  %26 = call double @llvm.fmuladd.f64(double %22, double %25, double %24)
  %27 = call double @llvm.fmuladd.f64(double %22, double %26, double %23)
  %28 = load double, ptr @E2, align 8
  %29 = load double, ptr @E3, align 8
  %30 = call double @llvm.fmuladd.f64(double %22, double %29, double %28)
  %31 = call double @llvm.fmuladd.f64(double %22, double %30, double %23)
  %32 = call double @llvm.fmuladd.f64(double %22, double %31, double %12)
  %33 = fdiv double %27, %32
  %34 = fadd double %18, %33
  %35 = add nuw nsw i32 %19, 1
  br label %16, !llvm.loop !7

36:                                               ; preds = %16
  %.lcssa10 = phi double [ %18, %16 ]
  %37 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %38 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %38, ptr @sa, align 8
  %39 = icmp eq i32 %6, 256000000
  br i1 %39, label %40, label %3, !llvm.loop !9

40:                                               ; preds = %36, %3
  %41 = phi double [ %4, %3 ], [ %.lcssa10, %36 ]
  %42 = phi double [ %5, %3 ], [ %14, %36 ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %43 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %44

44:                                               ; preds = %45, %40
  br i1 false, label %45, label %46

45:                                               ; preds = %44
  br label %44, !llvm.loop !10

46:                                               ; preds = %44
  %47 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %48 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %49 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %50 = fmul double %48, %49
  %51 = fcmp olt double %50, 0.000000e+00
  %52 = select i1 %51, double 0.000000e+00, double %50
  store double %52, ptr @nulltime, align 8
  %53 = load double, ptr @sa, align 8
  %54 = fneg double %52
  %55 = call double @llvm.fmuladd.f64(double %48, double %53, double %54)
  store double %55, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %56 = load double, ptr @D1, align 8
  %57 = load double, ptr @D2, align 8
  %58 = fadd double %56, %57
  %59 = load double, ptr @D3, align 8
  %60 = fadd double %58, %59
  %61 = load double, ptr @one, align 8
  %62 = fadd double %61, %56
  %63 = load double, ptr @E2, align 8
  %64 = fadd double %62, %63
  %65 = load double, ptr @E3, align 8
  %66 = fadd double %64, %65
  %67 = fdiv double %60, %66
  store double %67, ptr @sa, align 8
  store double %56, ptr @sb, align 8
  %68 = fdiv double %55, 1.400000e+01
  store double %68, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %69 = fadd double %67, %56
  %70 = load double, ptr @two, align 8
  %71 = call double @llvm.fmuladd.f64(double %70, double %41, double %69)
  %72 = fmul double %42, %71
  %73 = fdiv double %72, %70
  store double %73, ptr @sa, align 8
  %74 = fdiv double %61, %73
  store double %74, ptr @sb, align 8
  %75 = fptosi double %74 to i32
  %76 = mul nsw i32 %75, 40000
  %77 = sitofp i32 %76 to double
  %78 = load double, ptr @scale, align 8
  %79 = fdiv double %77, %78
  %80 = fptosi double %79 to i32
  %81 = fadd double %74, -2.520000e+01
  store double %81, ptr @sc, align 8
  %82 = fdiv double %61, %68
  store double %82, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %83 = fmul double %81, 1.000000e-30
  %84 = fmul double %55, 1.000000e-30
  %85 = fmul double %82, 1.000000e-30
  %86 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %83, double noundef %84, double noundef %85) #4
  %87 = load double, ptr @five, align 8
  %88 = fneg double %87
  %89 = load double, ptr @one, align 8
  %90 = fneg double %89
  store double %90, ptr @sa, align 8
  %91 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %smax = call i32 @llvm.smax.i32(i32 %80, i32 0)
  %92 = add nuw i32 %smax, 1
  br label %93

93:                                               ; preds = %96, %46
  %94 = phi double [ %97, %96 ], [ %88, %46 ]
  %95 = phi i32 [ %100, %96 ], [ 1, %46 ]
  %exitcond11 = icmp eq i32 %95, %92
  br i1 %exitcond11, label %101, label %96

96:                                               ; preds = %93
  %97 = fneg double %94
  %98 = load double, ptr @sa, align 8
  %99 = fsub double %98, %94
  store double %99, ptr @sa, align 8
  %100 = add nuw i32 %95, 1
  br label %93, !llvm.loop !11

101:                                              ; preds = %93
  %.lcssa9 = phi double [ %94, %93 ]
  %102 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %103 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %104 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %105 = fmul double %103, %104
  %106 = fcmp olt double %105, 0.000000e+00
  %storemerge = select i1 %106, double 0.000000e+00, double %105
  store double %storemerge, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %107 = sitofp i32 %80 to double
  store double %107, ptr @sc, align 8
  %108 = load double, ptr @sa, align 8
  %109 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %110

110:                                              ; preds = %117, %101
  %111 = phi double [ %127, %117 ], [ 0.000000e+00, %101 ]
  %112 = phi double [ %122, %117 ], [ %108, %101 ]
  %113 = phi double [ %118, %117 ], [ %.lcssa9, %101 ]
  %114 = phi double [ %125, %117 ], [ 0.000000e+00, %101 ]
  %115 = phi double [ %124, %117 ], [ 0.000000e+00, %101 ]
  %116 = phi i32 [ %128, %117 ], [ 1, %101 ]
  %exitcond12 = icmp eq i32 %116, %92
  br i1 %exitcond12, label %129, label %117

117:                                              ; preds = %110
  %118 = fneg double %113
  %119 = load double, ptr @sa, align 8
  %120 = fsub double %119, %113
  store double %120, ptr @sa, align 8
  %121 = load double, ptr @two, align 8
  %122 = fadd double %112, %121
  %123 = fsub double %118, %122
  %124 = fadd double %115, %123
  %125 = call double @llvm.fmuladd.f64(double %113, double %122, double %114)
  %126 = fdiv double %113, %122
  %127 = fsub double %111, %126
  %128 = add nuw i32 %116, 1
  br label %110, !llvm.loop !12

129:                                              ; preds = %110
  %.lcssa8 = phi double [ %111, %110 ]
  %.lcssa7 = phi double [ %114, %110 ]
  %.lcssa6 = phi double [ %115, %110 ]
  %130 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %131 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %132 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %133 = fmul double %131, %132
  store double %133, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %134 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %135 = fsub double %133, %134
  %136 = fdiv double %135, 7.000000e+00
  store double %136, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %137 = load double, ptr @sa, align 8
  %138 = fmul double %137, %.lcssa6
  %139 = load double, ptr @sc, align 8
  %140 = fdiv double %138, %139
  %141 = fptosi double %140 to i32
  %142 = load double, ptr @four, align 8
  %143 = fmul double %142, %.lcssa8
  %144 = load double, ptr @five, align 8
  %145 = fdiv double %143, %144
  store double %145, ptr @sa, align 8
  %146 = fdiv double %144, %.lcssa7
  %147 = fadd double %145, %146
  store double %147, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %148 = fmul double %.lcssa7, %.lcssa7
  %149 = fmul double %148, %.lcssa7
  %150 = fdiv double 3.125000e+01, %149
  %151 = fsub double %147, %150
  store double %151, ptr @piprg, align 8
  %152 = load double, ptr @piref, align 8
  %153 = fsub double %151, %152
  store double %153, ptr @pierr, align 8
  %154 = load double, ptr @one, align 8
  %155 = fdiv double %154, %136
  store double %155, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %156 = fmul double %153, 1.000000e-30
  %157 = fmul double %135, 1.000000e-30
  %158 = fmul double %155, 1.000000e-30
  %159 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %156, double noundef %157, double noundef %158) #4
  %160 = load double, ptr @piref, align 8
  %161 = load double, ptr @three, align 8
  %162 = sitofp i32 %141 to double
  %163 = fmul double %161, %162
  %164 = fdiv double %160, %163
  %165 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %smax13 = call i32 @llvm.smax.i32(i32 %141, i32 1)
  br label %166

166:                                              ; preds = %170, %129
  %167 = phi double [ %172, %170 ], [ 0.000000e+00, %129 ]
  %168 = phi double [ %189, %170 ], [ 0.000000e+00, %129 ]
  %169 = phi i32 [ %190, %170 ], [ 1, %129 ]
  %exitcond14 = icmp ne i32 %169, %smax13
  br i1 %exitcond14, label %170, label %191

170:                                              ; preds = %166
  %171 = load double, ptr @one, align 8
  %172 = fadd double %167, %171
  %173 = fmul double %172, %164
  %174 = fmul double %173, %173
  %175 = load double, ptr @A6, align 8
  %176 = load double, ptr @A5, align 8
  %177 = fneg double %176
  %178 = call double @llvm.fmuladd.f64(double %175, double %174, double %177)
  %179 = load double, ptr @A4, align 8
  %180 = call double @llvm.fmuladd.f64(double %178, double %174, double %179)
  %181 = load double, ptr @A3, align 8
  %182 = fneg double %181
  %183 = call double @llvm.fmuladd.f64(double %180, double %174, double %182)
  %184 = load double, ptr @A2, align 8
  %185 = call double @llvm.fmuladd.f64(double %183, double %174, double %184)
  %186 = load double, ptr @A1, align 8
  %187 = call double @llvm.fmuladd.f64(double %185, double %174, double %186)
  %188 = call double @llvm.fmuladd.f64(double %187, double %174, double %171)
  %189 = call double @llvm.fmuladd.f64(double %173, double %188, double %168)
  %190 = add nuw i32 %169, 1
  br label %166, !llvm.loop !13

191:                                              ; preds = %166
  %.lcssa5 = phi double [ %168, %166 ]
  %192 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %193 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %194 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %195 = load double, ptr @nulltime, align 8
  %196 = fneg double %195
  %197 = call double @llvm.fmuladd.f64(double %193, double %194, double %196)
  store double %197, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %198 = load double, ptr @piref, align 8
  %199 = load double, ptr @three, align 8
  %200 = fdiv double %198, %199
  %201 = fmul double %200, %200
  %202 = load double, ptr @A6, align 8
  %203 = load double, ptr @A5, align 8
  %204 = fneg double %203
  %205 = call double @llvm.fmuladd.f64(double %202, double %201, double %204)
  %206 = load double, ptr @A4, align 8
  %207 = call double @llvm.fmuladd.f64(double %205, double %201, double %206)
  %208 = load double, ptr @A3, align 8
  %209 = fneg double %208
  %210 = call double @llvm.fmuladd.f64(double %207, double %201, double %209)
  %211 = load double, ptr @A2, align 8
  %212 = call double @llvm.fmuladd.f64(double %210, double %201, double %211)
  %213 = load double, ptr @A1, align 8
  %214 = call double @llvm.fmuladd.f64(double %212, double %201, double %213)
  %215 = load double, ptr @one, align 8
  %216 = call double @llvm.fmuladd.f64(double %214, double %201, double %215)
  %217 = fmul double %200, %216
  store double %217, ptr @sa, align 8
  %218 = fdiv double %197, 1.700000e+01
  store double %218, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %219 = load double, ptr @two, align 8
  %220 = call double @llvm.fmuladd.f64(double %219, double %.lcssa5, double %217)
  %221 = fmul double %164, %220
  %222 = fdiv double %221, %219
  store double %222, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %223 = fadd double %222, -5.000000e-01
  store double %223, ptr @sc, align 8
  %224 = fdiv double %215, %218
  store double %224, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %225 = fmul double %223, 1.000000e-30
  %226 = fmul double %197, 1.000000e-30
  %227 = fmul double %224, 1.000000e-30
  %228 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %225, double noundef %226, double noundef %227) #4
  %229 = load double, ptr @A3, align 8
  %230 = fneg double %229
  store double %230, ptr @A3, align 8
  %231 = load double, ptr @A5, align 8
  %232 = fneg double %231
  store double %232, ptr @A5, align 8
  %233 = load double, ptr @piref, align 8
  %234 = load double, ptr @three, align 8
  %235 = fmul double %234, %162
  %236 = fdiv double %233, %235
  %237 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %238

238:                                              ; preds = %241, %191
  %239 = phi double [ %258, %241 ], [ 0.000000e+00, %191 ]
  %240 = phi i32 [ %259, %241 ], [ 1, %191 ]
  %exitcond15 = icmp ne i32 %240, %smax13
  br i1 %exitcond15, label %241, label %260

241:                                              ; preds = %238
  %242 = uitofp nneg i32 %240 to double
  %243 = fmul double %236, %242
  %244 = fmul double %243, %243
  %245 = load double, ptr @B6, align 8
  %246 = load double, ptr @B5, align 8
  %247 = call double @llvm.fmuladd.f64(double %245, double %244, double %246)
  %248 = load double, ptr @B4, align 8
  %249 = call double @llvm.fmuladd.f64(double %244, double %247, double %248)
  %250 = load double, ptr @B3, align 8
  %251 = call double @llvm.fmuladd.f64(double %244, double %249, double %250)
  %252 = load double, ptr @B2, align 8
  %253 = call double @llvm.fmuladd.f64(double %244, double %251, double %252)
  %254 = load double, ptr @B1, align 8
  %255 = call double @llvm.fmuladd.f64(double %244, double %253, double %254)
  %256 = call double @llvm.fmuladd.f64(double %244, double %255, double %239)
  %257 = load double, ptr @one, align 8
  %258 = fadd double %256, %257
  %259 = add nuw i32 %240, 1
  br label %238, !llvm.loop !14

260:                                              ; preds = %238
  %.lcssa4 = phi double [ %239, %238 ]
  %261 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %262 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %263 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %264 = load double, ptr @nulltime, align 8
  %265 = fneg double %264
  %266 = call double @llvm.fmuladd.f64(double %262, double %263, double %265)
  store double %266, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %267 = load double, ptr @piref, align 8
  %268 = load double, ptr @three, align 8
  %269 = fdiv double %267, %268
  %270 = fmul double %269, %269
  %271 = load double, ptr @B6, align 8
  %272 = load double, ptr @B5, align 8
  %273 = call double @llvm.fmuladd.f64(double %271, double %270, double %272)
  %274 = load double, ptr @B4, align 8
  %275 = call double @llvm.fmuladd.f64(double %270, double %273, double %274)
  %276 = load double, ptr @B3, align 8
  %277 = call double @llvm.fmuladd.f64(double %270, double %275, double %276)
  %278 = load double, ptr @B2, align 8
  %279 = call double @llvm.fmuladd.f64(double %270, double %277, double %278)
  %280 = load double, ptr @B1, align 8
  %281 = call double @llvm.fmuladd.f64(double %270, double %279, double %280)
  %282 = load double, ptr @one, align 8
  %283 = call double @llvm.fmuladd.f64(double %270, double %281, double %282)
  store double %283, ptr @sa, align 8
  %284 = fdiv double %266, 1.500000e+01
  store double %284, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %285 = fadd double %283, %282
  %286 = load double, ptr @two, align 8
  %287 = call double @llvm.fmuladd.f64(double %286, double %.lcssa4, double %285)
  %288 = fmul double %236, %287
  %289 = fdiv double %288, %286
  store double %289, ptr @sa, align 8
  %290 = load double, ptr @A6, align 8
  %291 = load double, ptr @A5, align 8
  %292 = call double @llvm.fmuladd.f64(double %290, double %270, double %291)
  %293 = load double, ptr @A4, align 8
  %294 = call double @llvm.fmuladd.f64(double %292, double %270, double %293)
  %295 = load double, ptr @A3, align 8
  %296 = call double @llvm.fmuladd.f64(double %294, double %270, double %295)
  %297 = load double, ptr @A2, align 8
  %298 = call double @llvm.fmuladd.f64(double %296, double %270, double %297)
  %299 = load double, ptr @A1, align 8
  %300 = call double @llvm.fmuladd.f64(double %298, double %270, double %299)
  %301 = load double, ptr @A0, align 8
  %302 = call double @llvm.fmuladd.f64(double %300, double %270, double %301)
  %303 = fmul double %269, %302
  store double %303, ptr @sb, align 8
  %304 = fsub double %289, %303
  store double %304, ptr @sc, align 8
  %305 = fdiv double %282, %284
  store double %305, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %306 = fmul double %304, 1.000000e-30
  %307 = fmul double %266, 1.000000e-30
  %308 = fmul double %305, 1.000000e-30
  %309 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %306, double noundef %307, double noundef %308) #4
  %310 = load double, ptr @piref, align 8
  %311 = load double, ptr @three, align 8
  %312 = fmul double %311, %162
  %313 = fdiv double %310, %312
  %314 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %315

315:                                              ; preds = %318, %260
  %316 = phi double [ %349, %318 ], [ 0.000000e+00, %260 ]
  %317 = phi i32 [ %350, %318 ], [ 1, %260 ]
  %exitcond16 = icmp ne i32 %317, %smax13
  br i1 %exitcond16, label %318, label %351

318:                                              ; preds = %315
  %319 = uitofp nneg i32 %317 to double
  %320 = fmul double %313, %319
  %321 = fmul double %320, %320
  %322 = load double, ptr @A6, align 8
  %323 = load double, ptr @A5, align 8
  %324 = call double @llvm.fmuladd.f64(double %322, double %321, double %323)
  %325 = load double, ptr @A4, align 8
  %326 = call double @llvm.fmuladd.f64(double %324, double %321, double %325)
  %327 = load double, ptr @A3, align 8
  %328 = call double @llvm.fmuladd.f64(double %326, double %321, double %327)
  %329 = load double, ptr @A2, align 8
  %330 = call double @llvm.fmuladd.f64(double %328, double %321, double %329)
  %331 = load double, ptr @A1, align 8
  %332 = call double @llvm.fmuladd.f64(double %330, double %321, double %331)
  %333 = load double, ptr @one, align 8
  %334 = call double @llvm.fmuladd.f64(double %332, double %321, double %333)
  %335 = fmul double %320, %334
  %336 = load double, ptr @B6, align 8
  %337 = load double, ptr @B5, align 8
  %338 = call double @llvm.fmuladd.f64(double %336, double %321, double %337)
  %339 = load double, ptr @B4, align 8
  %340 = call double @llvm.fmuladd.f64(double %321, double %338, double %339)
  %341 = load double, ptr @B3, align 8
  %342 = call double @llvm.fmuladd.f64(double %321, double %340, double %341)
  %343 = load double, ptr @B2, align 8
  %344 = call double @llvm.fmuladd.f64(double %321, double %342, double %343)
  %345 = load double, ptr @B1, align 8
  %346 = call double @llvm.fmuladd.f64(double %321, double %344, double %345)
  %347 = call double @llvm.fmuladd.f64(double %321, double %346, double %333)
  %348 = fdiv double %335, %347
  %349 = fadd double %316, %348
  %350 = add nuw i32 %317, 1
  br label %315, !llvm.loop !15

351:                                              ; preds = %315
  %.lcssa3 = phi double [ %316, %315 ]
  %352 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %353 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %354 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %355 = load double, ptr @nulltime, align 8
  %356 = fneg double %355
  %357 = call double @llvm.fmuladd.f64(double %353, double %354, double %356)
  store double %357, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %358 = load double, ptr @piref, align 8
  %359 = load double, ptr @three, align 8
  %360 = fdiv double %358, %359
  %361 = fmul double %360, %360
  %362 = load double, ptr @A6, align 8
  %363 = load double, ptr @A5, align 8
  %364 = call double @llvm.fmuladd.f64(double %362, double %361, double %363)
  %365 = load double, ptr @A4, align 8
  %366 = call double @llvm.fmuladd.f64(double %364, double %361, double %365)
  %367 = load double, ptr @A3, align 8
  %368 = call double @llvm.fmuladd.f64(double %366, double %361, double %367)
  %369 = load double, ptr @A2, align 8
  %370 = call double @llvm.fmuladd.f64(double %368, double %361, double %369)
  %371 = load double, ptr @A1, align 8
  %372 = call double @llvm.fmuladd.f64(double %370, double %361, double %371)
  %373 = load double, ptr @one, align 8
  %374 = call double @llvm.fmuladd.f64(double %372, double %361, double %373)
  %375 = fmul double %360, %374
  store double %375, ptr @sa, align 8
  %376 = load double, ptr @B6, align 8
  %377 = load double, ptr @B5, align 8
  %378 = call double @llvm.fmuladd.f64(double %376, double %361, double %377)
  %379 = load double, ptr @B4, align 8
  %380 = call double @llvm.fmuladd.f64(double %361, double %378, double %379)
  %381 = load double, ptr @B3, align 8
  %382 = call double @llvm.fmuladd.f64(double %361, double %380, double %381)
  %383 = load double, ptr @B2, align 8
  %384 = call double @llvm.fmuladd.f64(double %361, double %382, double %383)
  %385 = load double, ptr @B1, align 8
  %386 = call double @llvm.fmuladd.f64(double %361, double %384, double %385)
  %387 = call double @llvm.fmuladd.f64(double %361, double %386, double %373)
  store double %387, ptr @sb, align 8
  %388 = fdiv double %375, %387
  store double %388, ptr @sa, align 8
  %389 = fdiv double %357, 2.900000e+01
  store double %389, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %390 = load double, ptr @two, align 8
  %391 = call double @llvm.fmuladd.f64(double %390, double %.lcssa3, double %388)
  %392 = fmul double %313, %391
  %393 = fdiv double %392, %390
  store double %393, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %394 = fadd double %393, f0xBFE62E42FEFA39EF
  store double %394, ptr @sc, align 8
  %395 = fdiv double %373, %389
  store double %395, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %396 = fmul double %394, 1.000000e-30
  %397 = fmul double %357, 1.000000e-30
  %398 = fmul double %395, 1.000000e-30
  %399 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %396, double noundef %397, double noundef %398) #4
  %400 = load double, ptr @piref, align 8
  %401 = load double, ptr @four, align 8
  %402 = fmul double %401, %162
  %403 = fdiv double %400, %402
  %404 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %405

405:                                              ; preds = %408, %351
  %406 = phi double [ %438, %408 ], [ 0.000000e+00, %351 ]
  %407 = phi i32 [ %439, %408 ], [ 1, %351 ]
  %exitcond17 = icmp ne i32 %407, %smax13
  br i1 %exitcond17, label %408, label %440

408:                                              ; preds = %405
  %409 = uitofp nneg i32 %407 to double
  %410 = fmul double %403, %409
  %411 = fmul double %410, %410
  %412 = load double, ptr @A6, align 8
  %413 = load double, ptr @A5, align 8
  %414 = call double @llvm.fmuladd.f64(double %412, double %411, double %413)
  %415 = load double, ptr @A4, align 8
  %416 = call double @llvm.fmuladd.f64(double %414, double %411, double %415)
  %417 = load double, ptr @A3, align 8
  %418 = call double @llvm.fmuladd.f64(double %416, double %411, double %417)
  %419 = load double, ptr @A2, align 8
  %420 = call double @llvm.fmuladd.f64(double %418, double %411, double %419)
  %421 = load double, ptr @A1, align 8
  %422 = call double @llvm.fmuladd.f64(double %420, double %411, double %421)
  %423 = load double, ptr @one, align 8
  %424 = call double @llvm.fmuladd.f64(double %422, double %411, double %423)
  %425 = fmul double %410, %424
  %426 = load double, ptr @B6, align 8
  %427 = load double, ptr @B5, align 8
  %428 = call double @llvm.fmuladd.f64(double %426, double %411, double %427)
  %429 = load double, ptr @B4, align 8
  %430 = call double @llvm.fmuladd.f64(double %411, double %428, double %429)
  %431 = load double, ptr @B3, align 8
  %432 = call double @llvm.fmuladd.f64(double %411, double %430, double %431)
  %433 = load double, ptr @B2, align 8
  %434 = call double @llvm.fmuladd.f64(double %411, double %432, double %433)
  %435 = load double, ptr @B1, align 8
  %436 = call double @llvm.fmuladd.f64(double %411, double %434, double %435)
  %437 = call double @llvm.fmuladd.f64(double %411, double %436, double %423)
  %438 = call double @llvm.fmuladd.f64(double %425, double %437, double %406)
  %439 = add nuw i32 %407, 1
  br label %405, !llvm.loop !16

440:                                              ; preds = %405
  %.lcssa2 = phi double [ %406, %405 ]
  %441 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %442 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %443 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %444 = load double, ptr @nulltime, align 8
  %445 = fneg double %444
  %446 = call double @llvm.fmuladd.f64(double %442, double %443, double %445)
  store double %446, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %447 = load double, ptr @piref, align 8
  %448 = load double, ptr @four, align 8
  %449 = fdiv double %447, %448
  %450 = fmul double %449, %449
  %451 = load double, ptr @A6, align 8
  %452 = load double, ptr @A5, align 8
  %453 = call double @llvm.fmuladd.f64(double %451, double %450, double %452)
  %454 = load double, ptr @A4, align 8
  %455 = call double @llvm.fmuladd.f64(double %453, double %450, double %454)
  %456 = load double, ptr @A3, align 8
  %457 = call double @llvm.fmuladd.f64(double %455, double %450, double %456)
  %458 = load double, ptr @A2, align 8
  %459 = call double @llvm.fmuladd.f64(double %457, double %450, double %458)
  %460 = load double, ptr @A1, align 8
  %461 = call double @llvm.fmuladd.f64(double %459, double %450, double %460)
  %462 = load double, ptr @one, align 8
  %463 = call double @llvm.fmuladd.f64(double %461, double %450, double %462)
  %464 = fmul double %449, %463
  store double %464, ptr @sa, align 8
  %465 = load double, ptr @B6, align 8
  %466 = load double, ptr @B5, align 8
  %467 = call double @llvm.fmuladd.f64(double %465, double %450, double %466)
  %468 = load double, ptr @B4, align 8
  %469 = call double @llvm.fmuladd.f64(double %450, double %467, double %468)
  %470 = load double, ptr @B3, align 8
  %471 = call double @llvm.fmuladd.f64(double %450, double %469, double %470)
  %472 = load double, ptr @B2, align 8
  %473 = call double @llvm.fmuladd.f64(double %450, double %471, double %472)
  %474 = load double, ptr @B1, align 8
  %475 = call double @llvm.fmuladd.f64(double %450, double %473, double %474)
  %476 = call double @llvm.fmuladd.f64(double %450, double %475, double %462)
  store double %476, ptr @sb, align 8
  %477 = fmul double %464, %476
  store double %477, ptr @sa, align 8
  %478 = fdiv double %446, 2.900000e+01
  store double %478, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %479 = load double, ptr @two, align 8
  %480 = call double @llvm.fmuladd.f64(double %479, double %.lcssa2, double %477)
  %481 = fmul double %403, %480
  %482 = fdiv double %481, %479
  store double %482, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %483 = fadd double %482, -2.500000e-01
  store double %483, ptr @sc, align 8
  %484 = fdiv double %462, %478
  store double %484, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %485 = fmul double %483, 1.000000e-30
  %486 = fmul double %446, 1.000000e-30
  %487 = fmul double %484, 1.000000e-30
  %488 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %485, double noundef %486, double noundef %487) #4
  %489 = load double, ptr @one, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %490 = fdiv double f0x40599541F7F192A4, %162
  %491 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %492

492:                                              ; preds = %495, %440
  %493 = phi double [ %507, %495 ], [ 0.000000e+00, %440 ]
  %494 = phi i32 [ %508, %495 ], [ 1, %440 ]
  %exitcond18 = icmp ne i32 %494, %smax13
  br i1 %exitcond18, label %495, label %509

495:                                              ; preds = %492
  %496 = uitofp nneg i32 %494 to double
  %497 = fmul double %490, %496
  %498 = fmul double %497, %497
  %499 = fadd double %497, %489
  %500 = fdiv double %489, %499
  %501 = fsub double %493, %500
  %502 = fadd double %498, %489
  %503 = fdiv double %497, %502
  %504 = fsub double %501, %503
  %505 = call double @llvm.fmuladd.f64(double %497, double %498, double %489)
  %506 = fdiv double %498, %505
  %507 = fsub double %504, %506
  %508 = add nuw i32 %494, 1
  br label %492, !llvm.loop !17

509:                                              ; preds = %492
  %.lcssa1 = phi double [ %493, %492 ]
  %510 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %511 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %512 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %513 = load double, ptr @nulltime, align 8
  %514 = fneg double %513
  %515 = call double @llvm.fmuladd.f64(double %511, double %512, double %514)
  store double %515, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %516 = fdiv double %515, 1.200000e+01
  store double %516, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %517 = load double, ptr @sa, align 8
  %518 = fmul double %517, %517
  %519 = fneg double %489
  %520 = fadd double %517, %489
  %521 = fdiv double %489, %520
  %522 = fsub double %519, %521
  %523 = fadd double %518, %489
  %524 = fdiv double %517, %523
  %525 = fsub double %522, %524
  %526 = call double @llvm.fmuladd.f64(double %517, double %518, double %489)
  %527 = fdiv double %518, %526
  %528 = fsub double %525, %527
  store double %528, ptr @sa, align 8
  %529 = fmul nnan double %490, 1.800000e+01
  %530 = load double, ptr @two, align 8
  %531 = call double @llvm.fmuladd.f64(double %530, double %.lcssa1, double %528)
  %532 = fmul double %529, %531
  store double %532, ptr @sa, align 8
  %533 = fptosi double %532 to i32
  %534 = mul nsw i32 %533, -2000
  %535 = sitofp i32 %534 to double
  %536 = load double, ptr @scale, align 8
  %537 = fdiv double %535, %536
  %538 = fptosi double %537 to i32
  %539 = fadd double %532, 5.002000e+02
  store double %539, ptr @sc, align 8
  %540 = load double, ptr @one, align 8
  %541 = fdiv double %540, %516
  store double %541, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %542 = fmul double %539, 1.000000e-30
  %543 = fmul double %515, 1.000000e-30
  %544 = fmul double %541, 1.000000e-30
  %545 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %542, double noundef %543, double noundef %544) #4
  %546 = load double, ptr @piref, align 8
  %547 = load double, ptr @three, align 8
  %548 = sitofp i32 %538 to double
  %549 = fmul double %547, %548
  %550 = fdiv double %546, %549
  %551 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %smax19 = call i32 @llvm.smax.i32(i32 %538, i32 1)
  br label %552

552:                                              ; preds = %555, %509
  %553 = phi double [ %586, %555 ], [ 0.000000e+00, %509 ]
  %554 = phi i32 [ %587, %555 ], [ 1, %509 ]
  %exitcond20 = icmp ne i32 %554, %smax19
  br i1 %exitcond20, label %555, label %588

555:                                              ; preds = %552
  %556 = uitofp nneg i32 %554 to double
  %557 = fmul double %550, %556
  %558 = fmul double %557, %557
  %559 = load double, ptr @B6, align 8
  %560 = load double, ptr @B5, align 8
  %561 = call double @llvm.fmuladd.f64(double %559, double %558, double %560)
  %562 = load double, ptr @B4, align 8
  %563 = call double @llvm.fmuladd.f64(double %558, double %561, double %562)
  %564 = load double, ptr @B3, align 8
  %565 = call double @llvm.fmuladd.f64(double %558, double %563, double %564)
  %566 = load double, ptr @B2, align 8
  %567 = call double @llvm.fmuladd.f64(double %558, double %565, double %566)
  %568 = load double, ptr @B1, align 8
  %569 = call double @llvm.fmuladd.f64(double %558, double %567, double %568)
  %570 = load double, ptr @one, align 8
  %571 = call double @llvm.fmuladd.f64(double %558, double %569, double %570)
  %572 = fmul double %571, %571
  %573 = fmul double %572, %557
  %574 = load double, ptr @A6, align 8
  %575 = load double, ptr @A5, align 8
  %576 = call double @llvm.fmuladd.f64(double %574, double %558, double %575)
  %577 = load double, ptr @A4, align 8
  %578 = call double @llvm.fmuladd.f64(double %576, double %558, double %577)
  %579 = load double, ptr @A3, align 8
  %580 = call double @llvm.fmuladd.f64(double %578, double %558, double %579)
  %581 = load double, ptr @A2, align 8
  %582 = call double @llvm.fmuladd.f64(double %580, double %558, double %581)
  %583 = load double, ptr @A1, align 8
  %584 = call double @llvm.fmuladd.f64(double %582, double %558, double %583)
  %585 = call double @llvm.fmuladd.f64(double %584, double %558, double %570)
  %586 = call double @llvm.fmuladd.f64(double %573, double %585, double %553)
  %587 = add nuw i32 %554, 1
  br label %552, !llvm.loop !18

588:                                              ; preds = %552
  %.lcssa = phi double [ %553, %552 ]
  %589 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %590 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %591 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %592 = load double, ptr @nulltime, align 8
  %593 = fneg double %592
  %594 = call double @llvm.fmuladd.f64(double %590, double %591, double %593)
  store double %594, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %595 = load double, ptr @piref, align 8
  %596 = load double, ptr @three, align 8
  %597 = fdiv double %595, %596
  %598 = fmul double %597, %597
  %599 = load double, ptr @A6, align 8
  %600 = load double, ptr @A5, align 8
  %601 = call double @llvm.fmuladd.f64(double %599, double %598, double %600)
  %602 = load double, ptr @A4, align 8
  %603 = call double @llvm.fmuladd.f64(double %601, double %598, double %602)
  %604 = load double, ptr @A3, align 8
  %605 = call double @llvm.fmuladd.f64(double %603, double %598, double %604)
  %606 = load double, ptr @A2, align 8
  %607 = call double @llvm.fmuladd.f64(double %605, double %598, double %606)
  %608 = load double, ptr @A1, align 8
  %609 = call double @llvm.fmuladd.f64(double %607, double %598, double %608)
  %610 = load double, ptr @one, align 8
  %611 = call double @llvm.fmuladd.f64(double %609, double %598, double %610)
  %612 = fmul double %597, %611
  store double %612, ptr @sa, align 8
  %613 = load double, ptr @B6, align 8
  %614 = load double, ptr @B5, align 8
  %615 = call double @llvm.fmuladd.f64(double %613, double %598, double %614)
  %616 = load double, ptr @B4, align 8
  %617 = call double @llvm.fmuladd.f64(double %598, double %615, double %616)
  %618 = load double, ptr @B3, align 8
  %619 = call double @llvm.fmuladd.f64(double %598, double %617, double %618)
  %620 = load double, ptr @B2, align 8
  %621 = call double @llvm.fmuladd.f64(double %598, double %619, double %620)
  %622 = load double, ptr @B1, align 8
  %623 = call double @llvm.fmuladd.f64(double %598, double %621, double %622)
  %624 = call double @llvm.fmuladd.f64(double %598, double %623, double %610)
  store double %624, ptr @sb, align 8
  %625 = fmul double %612, %624
  %626 = fmul double %625, %624
  store double %626, ptr @sa, align 8
  %627 = fdiv double %594, 3.000000e+01
  store double %627, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %628 = load double, ptr @two, align 8
  %629 = call double @llvm.fmuladd.f64(double %628, double %.lcssa, double %626)
  %630 = fmul double %550, %629
  %631 = fdiv double %630, %628
  store double %631, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %632 = fadd double %631, f0xBFD2AAAAAAAAAAAB
  store double %632, ptr @sc, align 8
  %633 = fdiv double %610, %627
  store double %633, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %634 = fmul double %632, 1.000000e-30
  %635 = fmul double %594, 1.000000e-30
  %636 = fmul double %633, 1.000000e-30
  %637 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %634, double noundef %635, double noundef %636) #4
  %638 = load double, ptr @five, align 8
  %639 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %640 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %641 = fsub double %639, %640
  %642 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %643 = call double @llvm.fmuladd.f64(double %638, double %641, double %642)
  %644 = fdiv double %643, 5.200000e+01
  store double %644, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %645 = load double, ptr @one, align 8
  %646 = fdiv double %645, %644
  store double %646, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %647 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %648 = fadd double %647, %642
  %649 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %650 = fadd double %648, %649
  %651 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %652 = fadd double %650, %651
  %653 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %654 = fadd double %652, %653
  store double %654, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %655 = load double, ptr @four, align 8
  %656 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %657 = call double @llvm.fmuladd.f64(double %655, double %656, double %654)
  %658 = fdiv double %657, 1.520000e+02
  store double %658, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %659 = fdiv double %645, %658
  store double %659, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %654, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %660 = fadd double %654, %656
  %661 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %662 = fadd double %660, %661
  %663 = fdiv double %662, 1.460000e+02
  store double %663, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %664 = fdiv double %645, %663
  store double %664, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %665 = fadd double %642, %649
  %666 = fadd double %665, %653
  %667 = fadd double %666, %661
  %668 = fdiv double %667, 9.100000e+01
  store double %668, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %669 = fdiv double %645, %668
  store double %669, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar11 = call i32 @putchar(i32 10)
  %670 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %538) #4
  %671 = load double, ptr @nulltime, align 8
  %672 = fmul double %671, 1.000000e-30
  %673 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %672) #4
  %674 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %675 = fmul double %674, 1.000000e-30
  %676 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %675) #4
  %677 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %678 = fmul double %677, 1.000000e-30
  %679 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %678) #4
  %680 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %681 = fmul double %680, 1.000000e-30
  %682 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %681) #4
  %683 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %684 = fmul double %683, 1.000000e-30
  %685 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %684) #4
  ret i32 0
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dtime(ptr noundef %0) #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = load double, ptr %2, align 8
  %4 = call i32 @GetTickCount() #4
  %5 = uitofp i32 %4 to double
  %6 = fmul nnan double %5, 1.000000e-03
  store double %6, ptr %2, align 8
  %7 = fsub double %6, %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %7, ptr %8, align 8
  ret i32 0
}

declare dllimport i32 @GetTickCount() #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }

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
