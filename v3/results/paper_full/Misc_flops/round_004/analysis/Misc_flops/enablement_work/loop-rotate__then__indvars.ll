; ModuleID = 'results\paper_full\Misc_flops\round_003\output.ll'
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
  %3 = load double, ptr @TLimit, align 8
  %4 = fcmp olt double 0.000000e+00, %3
  br i1 %4, label %.lr.ph20, label %.loopexit

.lr.ph20:                                         ; preds = %0
  br label %12

5:                                                ; preds = %38
  %6 = phi double [ %.lcssa10, %38 ]
  %7 = phi double [ %17, %38 ]
  %8 = phi i32 [ %14, %38 ]
  %9 = phi double [ %40, %38 ]
  %10 = load double, ptr @TLimit, align 8
  %11 = fcmp olt double %9, %10
  br i1 %11, label %12, label %..loopexit_crit_edge, !llvm.loop !7

12:                                               ; preds = %.lr.ph20, %5
  %13 = phi i32 [ 15625, %.lr.ph20 ], [ %8, %5 ]
  %14 = shl i32 %13, 1
  %15 = load double, ptr @one, align 8
  %16 = sitofp i32 %14 to double
  %17 = fdiv double %15, %16
  %18 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not.not18 = icmp slt i32 1, %14
  br i1 %.not.not18, label %.lr.ph, label %38

.lr.ph:                                           ; preds = %12
  br label %19

19:                                               ; preds = %.lr.ph, %19
  %20 = phi i32 [ 1, %.lr.ph ], [ %37, %19 ]
  %21 = phi double [ 0.000000e+00, %.lr.ph ], [ %36, %19 ]
  %22 = phi double [ 0.000000e+00, %.lr.ph ], [ %23, %19 ]
  %23 = fadd double %22, %15
  %24 = fmul double %23, %17
  %25 = load double, ptr @D1, align 8
  %26 = load double, ptr @D2, align 8
  %27 = load double, ptr @D3, align 8
  %28 = call double @llvm.fmuladd.f64(double %24, double %27, double %26)
  %29 = call double @llvm.fmuladd.f64(double %24, double %28, double %25)
  %30 = load double, ptr @E2, align 8
  %31 = load double, ptr @E3, align 8
  %32 = call double @llvm.fmuladd.f64(double %24, double %31, double %30)
  %33 = call double @llvm.fmuladd.f64(double %24, double %32, double %25)
  %34 = call double @llvm.fmuladd.f64(double %24, double %33, double %15)
  %35 = fdiv double %29, %34
  %36 = fadd double %21, %35
  %37 = add nuw nsw i32 %20, 1
  %exitcond = icmp ne i32 %37, %14
  br i1 %exitcond, label %19, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %19
  %split = phi double [ %36, %19 ]
  br label %38

38:                                               ; preds = %._crit_edge, %12
  %.lcssa10 = phi double [ %split, %._crit_edge ], [ 0.000000e+00, %12 ]
  %39 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %40 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %40, ptr @sa, align 8
  %41 = icmp eq i32 %13, 256000000
  br i1 %41, label %42, label %5

42:                                               ; preds = %38
  %.lcssa17 = phi double [ %17, %38 ]
  %.lcssa10.lcssa = phi double [ %.lcssa10, %38 ]
  br label %43

..loopexit_crit_edge:                             ; preds = %5
  %split21 = phi double [ %6, %5 ]
  %split22 = phi double [ %7, %5 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %0
  %.lcssa15 = phi double [ %split21, %..loopexit_crit_edge ], [ undef, %0 ]
  %.lcssa13 = phi double [ %split22, %..loopexit_crit_edge ], [ undef, %0 ]
  br label %43

43:                                               ; preds = %.loopexit, %42
  %44 = phi double [ %.lcssa10.lcssa, %42 ], [ %.lcssa15, %.loopexit ]
  %45 = phi double [ %.lcssa17, %42 ], [ %.lcssa13, %.loopexit ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %46 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %47

47:                                               ; preds = %47, %43
  br i1 false, label %47, label %48, !llvm.loop !10

48:                                               ; preds = %47
  %49 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %50 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %51 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %52 = fmul double %50, %51
  %53 = fcmp olt double %52, 0.000000e+00
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %48
  %56 = phi double [ 0.000000e+00, %54 ], [ %52, %48 ]
  store double %56, ptr @nulltime, align 8
  %57 = load double, ptr @sa, align 8
  %58 = fneg double %56
  %59 = call double @llvm.fmuladd.f64(double %50, double %57, double %58)
  store double %59, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %60 = load double, ptr @D1, align 8
  %61 = load double, ptr @D2, align 8
  %62 = fadd double %60, %61
  %63 = load double, ptr @D3, align 8
  %64 = fadd double %62, %63
  %65 = load double, ptr @one, align 8
  %66 = fadd double %65, %60
  %67 = load double, ptr @E2, align 8
  %68 = fadd double %66, %67
  %69 = load double, ptr @E3, align 8
  %70 = fadd double %68, %69
  %71 = fdiv double %64, %70
  store double %71, ptr @sa, align 8
  store double %60, ptr @sb, align 8
  %72 = fdiv double %59, 1.400000e+01
  store double %72, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %73 = fadd double %71, %60
  %74 = load double, ptr @two, align 8
  %75 = call double @llvm.fmuladd.f64(double %74, double %44, double %73)
  %76 = fmul double %45, %75
  %77 = fdiv double %76, %74
  store double %77, ptr @sa, align 8
  %78 = fdiv double %65, %77
  store double %78, ptr @sb, align 8
  %79 = fptosi double %78 to i32
  %80 = mul nsw i32 %79, 40000
  %81 = sitofp i32 %80 to double
  %82 = load double, ptr @scale, align 8
  %83 = fdiv double %81, %82
  %84 = fptosi double %83 to i32
  %85 = fadd double %78, -2.520000e+01
  store double %85, ptr @sc, align 8
  %86 = fdiv double %65, %72
  store double %86, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %87 = fmul double %85, 1.000000e-30
  %88 = fmul double %59, 1.000000e-30
  %89 = fmul double %86, 1.000000e-30
  %90 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %87, double noundef %88, double noundef %89) #4
  %91 = load double, ptr @five, align 8
  %92 = fneg double %91
  %93 = load double, ptr @one, align 8
  %94 = fneg double %93
  store double %94, ptr @sa, align 8
  %95 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not24 = icmp sgt i32 1, %84
  br i1 %.not24, label %104, label %.lr.ph26

.lr.ph26:                                         ; preds = %55
  %96 = add i32 %84, 1
  br label %97

97:                                               ; preds = %.lr.ph26, %97
  %98 = phi i32 [ 1, %.lr.ph26 ], [ %103, %97 ]
  %99 = phi double [ %92, %.lr.ph26 ], [ %100, %97 ]
  %100 = fneg double %99
  %101 = load double, ptr @sa, align 8
  %102 = fsub double %101, %99
  store double %102, ptr @sa, align 8
  %103 = add nuw nsw i32 %98, 1
  %exitcond66 = icmp eq i32 %103, %96
  br i1 %exitcond66, label %._crit_edge27, label %97, !llvm.loop !11

._crit_edge27:                                    ; preds = %97
  %split28 = phi double [ %100, %97 ]
  br label %104

104:                                              ; preds = %._crit_edge27, %55
  %.lcssa9 = phi double [ %split28, %._crit_edge27 ], [ %92, %55 ]
  %105 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %106 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %107 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %108 = fmul double %106, %107
  %109 = fcmp olt double %108, 0.000000e+00
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  br label %111

111:                                              ; preds = %110, %104
  %storemerge = phi double [ 0.000000e+00, %110 ], [ %108, %104 ]
  store double %storemerge, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %112 = sitofp i32 %84 to double
  store double %112, ptr @sc, align 8
  %113 = load double, ptr @sa, align 8
  %114 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not429 = icmp sgt i32 1, %84
  br i1 %.not429, label %134, label %.lr.ph31

.lr.ph31:                                         ; preds = %111
  %115 = add i32 %84, 1
  br label %116

116:                                              ; preds = %.lr.ph31, %116
  %117 = phi i32 [ 1, %.lr.ph31 ], [ %133, %116 ]
  %118 = phi double [ 0.000000e+00, %.lr.ph31 ], [ %129, %116 ]
  %119 = phi double [ 0.000000e+00, %.lr.ph31 ], [ %130, %116 ]
  %120 = phi double [ %.lcssa9, %.lr.ph31 ], [ %123, %116 ]
  %121 = phi double [ %113, %.lr.ph31 ], [ %127, %116 ]
  %122 = phi double [ 0.000000e+00, %.lr.ph31 ], [ %132, %116 ]
  %123 = fneg double %120
  %124 = load double, ptr @sa, align 8
  %125 = fsub double %124, %120
  store double %125, ptr @sa, align 8
  %126 = load double, ptr @two, align 8
  %127 = fadd double %121, %126
  %128 = fsub double %123, %127
  %129 = fadd double %118, %128
  %130 = call double @llvm.fmuladd.f64(double %120, double %127, double %119)
  %131 = fdiv double %120, %127
  %132 = fsub double %122, %131
  %133 = add nuw nsw i32 %117, 1
  %exitcond67 = icmp eq i32 %133, %115
  br i1 %exitcond67, label %._crit_edge32, label %116, !llvm.loop !12

._crit_edge32:                                    ; preds = %116
  %split33 = phi double [ %132, %116 ]
  %split34 = phi double [ %130, %116 ]
  %split35 = phi double [ %129, %116 ]
  br label %134

134:                                              ; preds = %._crit_edge32, %111
  %.lcssa8 = phi double [ %split33, %._crit_edge32 ], [ 0.000000e+00, %111 ]
  %.lcssa7 = phi double [ %split34, %._crit_edge32 ], [ 0.000000e+00, %111 ]
  %.lcssa6 = phi double [ %split35, %._crit_edge32 ], [ 0.000000e+00, %111 ]
  %135 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %136 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %137 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %138 = fmul double %136, %137
  store double %138, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %139 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %140 = fsub double %138, %139
  %141 = fdiv double %140, 7.000000e+00
  store double %141, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %142 = load double, ptr @sa, align 8
  %143 = fmul double %142, %.lcssa6
  %144 = load double, ptr @sc, align 8
  %145 = fdiv double %143, %144
  %146 = fptosi double %145 to i32
  %147 = load double, ptr @four, align 8
  %148 = fmul double %147, %.lcssa8
  %149 = load double, ptr @five, align 8
  %150 = fdiv double %148, %149
  store double %150, ptr @sa, align 8
  %151 = fdiv double %149, %.lcssa7
  %152 = fadd double %150, %151
  store double %152, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %153 = fmul double %.lcssa7, %.lcssa7
  %154 = fmul double %153, %.lcssa7
  %155 = fdiv double 3.125000e+01, %154
  %156 = fsub double %152, %155
  store double %156, ptr @piprg, align 8
  %157 = load double, ptr @piref, align 8
  %158 = fsub double %156, %157
  store double %158, ptr @pierr, align 8
  %159 = load double, ptr @one, align 8
  %160 = fdiv double %159, %141
  store double %160, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %161 = fmul double %158, 1.000000e-30
  %162 = fmul double %140, 1.000000e-30
  %163 = fmul double %160, 1.000000e-30
  %164 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %161, double noundef %162, double noundef %163) #4
  %165 = load double, ptr @piref, align 8
  %166 = load double, ptr @three, align 8
  %167 = sitofp i32 %146 to double
  %168 = fmul double %166, %167
  %169 = fdiv double %165, %168
  %170 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not5.not36 = icmp slt i32 1, %146
  br i1 %.not5.not36, label %.lr.ph38, label %195

.lr.ph38:                                         ; preds = %134
  br label %171

171:                                              ; preds = %.lr.ph38, %171
  %172 = phi i32 [ 1, %.lr.ph38 ], [ %194, %171 ]
  %173 = phi double [ 0.000000e+00, %.lr.ph38 ], [ %193, %171 ]
  %174 = phi double [ 0.000000e+00, %.lr.ph38 ], [ %176, %171 ]
  %175 = load double, ptr @one, align 8
  %176 = fadd double %174, %175
  %177 = fmul double %176, %169
  %178 = fmul double %177, %177
  %179 = load double, ptr @A6, align 8
  %180 = load double, ptr @A5, align 8
  %181 = fneg double %180
  %182 = call double @llvm.fmuladd.f64(double %179, double %178, double %181)
  %183 = load double, ptr @A4, align 8
  %184 = call double @llvm.fmuladd.f64(double %182, double %178, double %183)
  %185 = load double, ptr @A3, align 8
  %186 = fneg double %185
  %187 = call double @llvm.fmuladd.f64(double %184, double %178, double %186)
  %188 = load double, ptr @A2, align 8
  %189 = call double @llvm.fmuladd.f64(double %187, double %178, double %188)
  %190 = load double, ptr @A1, align 8
  %191 = call double @llvm.fmuladd.f64(double %189, double %178, double %190)
  %192 = call double @llvm.fmuladd.f64(double %191, double %178, double %175)
  %193 = call double @llvm.fmuladd.f64(double %177, double %192, double %173)
  %194 = add nuw nsw i32 %172, 1
  %exitcond68 = icmp ne i32 %194, %146
  br i1 %exitcond68, label %171, label %._crit_edge39, !llvm.loop !13

._crit_edge39:                                    ; preds = %171
  %split40 = phi double [ %193, %171 ]
  br label %195

195:                                              ; preds = %._crit_edge39, %134
  %.lcssa5 = phi double [ %split40, %._crit_edge39 ], [ 0.000000e+00, %134 ]
  %196 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %197 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %198 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %199 = load double, ptr @nulltime, align 8
  %200 = fneg double %199
  %201 = call double @llvm.fmuladd.f64(double %197, double %198, double %200)
  store double %201, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %202 = load double, ptr @piref, align 8
  %203 = load double, ptr @three, align 8
  %204 = fdiv double %202, %203
  %205 = fmul double %204, %204
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
  %219 = load double, ptr @one, align 8
  %220 = call double @llvm.fmuladd.f64(double %218, double %205, double %219)
  %221 = fmul double %204, %220
  store double %221, ptr @sa, align 8
  %222 = fdiv double %201, 1.700000e+01
  store double %222, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %223 = load double, ptr @two, align 8
  %224 = call double @llvm.fmuladd.f64(double %223, double %.lcssa5, double %221)
  %225 = fmul double %169, %224
  %226 = fdiv double %225, %223
  store double %226, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %227 = fadd double %226, -5.000000e-01
  store double %227, ptr @sc, align 8
  %228 = fdiv double %219, %222
  store double %228, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %229 = fmul double %227, 1.000000e-30
  %230 = fmul double %201, 1.000000e-30
  %231 = fmul double %228, 1.000000e-30
  %232 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %229, double noundef %230, double noundef %231) #4
  %233 = load double, ptr @A3, align 8
  %234 = fneg double %233
  store double %234, ptr @A3, align 8
  %235 = load double, ptr @A5, align 8
  %236 = fneg double %235
  store double %236, ptr @A5, align 8
  %237 = load double, ptr @piref, align 8
  %238 = load double, ptr @three, align 8
  %239 = fmul double %238, %167
  %240 = fdiv double %237, %239
  %241 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not6.not41 = icmp slt i32 1, %146
  br i1 %.not6.not41, label %.lr.ph43, label %263

.lr.ph43:                                         ; preds = %195
  br label %242

242:                                              ; preds = %.lr.ph43, %242
  %243 = phi i32 [ 1, %.lr.ph43 ], [ %262, %242 ]
  %244 = phi double [ 0.000000e+00, %.lr.ph43 ], [ %261, %242 ]
  %245 = uitofp nneg i32 %243 to double
  %246 = fmul double %240, %245
  %247 = fmul double %246, %246
  %248 = load double, ptr @B6, align 8
  %249 = load double, ptr @B5, align 8
  %250 = call double @llvm.fmuladd.f64(double %248, double %247, double %249)
  %251 = load double, ptr @B4, align 8
  %252 = call double @llvm.fmuladd.f64(double %247, double %250, double %251)
  %253 = load double, ptr @B3, align 8
  %254 = call double @llvm.fmuladd.f64(double %247, double %252, double %253)
  %255 = load double, ptr @B2, align 8
  %256 = call double @llvm.fmuladd.f64(double %247, double %254, double %255)
  %257 = load double, ptr @B1, align 8
  %258 = call double @llvm.fmuladd.f64(double %247, double %256, double %257)
  %259 = call double @llvm.fmuladd.f64(double %247, double %258, double %244)
  %260 = load double, ptr @one, align 8
  %261 = fadd double %259, %260
  %262 = add nuw nsw i32 %243, 1
  %exitcond69 = icmp ne i32 %262, %146
  br i1 %exitcond69, label %242, label %._crit_edge44, !llvm.loop !14

._crit_edge44:                                    ; preds = %242
  %split45 = phi double [ %261, %242 ]
  br label %263

263:                                              ; preds = %._crit_edge44, %195
  %.lcssa4 = phi double [ %split45, %._crit_edge44 ], [ 0.000000e+00, %195 ]
  %264 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %265 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %266 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %267 = load double, ptr @nulltime, align 8
  %268 = fneg double %267
  %269 = call double @llvm.fmuladd.f64(double %265, double %266, double %268)
  store double %269, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %270 = load double, ptr @piref, align 8
  %271 = load double, ptr @three, align 8
  %272 = fdiv double %270, %271
  %273 = fmul double %272, %272
  %274 = load double, ptr @B6, align 8
  %275 = load double, ptr @B5, align 8
  %276 = call double @llvm.fmuladd.f64(double %274, double %273, double %275)
  %277 = load double, ptr @B4, align 8
  %278 = call double @llvm.fmuladd.f64(double %273, double %276, double %277)
  %279 = load double, ptr @B3, align 8
  %280 = call double @llvm.fmuladd.f64(double %273, double %278, double %279)
  %281 = load double, ptr @B2, align 8
  %282 = call double @llvm.fmuladd.f64(double %273, double %280, double %281)
  %283 = load double, ptr @B1, align 8
  %284 = call double @llvm.fmuladd.f64(double %273, double %282, double %283)
  %285 = load double, ptr @one, align 8
  %286 = call double @llvm.fmuladd.f64(double %273, double %284, double %285)
  store double %286, ptr @sa, align 8
  %287 = fdiv double %269, 1.500000e+01
  store double %287, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %288 = fadd double %286, %285
  %289 = load double, ptr @two, align 8
  %290 = call double @llvm.fmuladd.f64(double %289, double %.lcssa4, double %288)
  %291 = fmul double %240, %290
  %292 = fdiv double %291, %289
  store double %292, ptr @sa, align 8
  %293 = load double, ptr @A6, align 8
  %294 = load double, ptr @A5, align 8
  %295 = call double @llvm.fmuladd.f64(double %293, double %273, double %294)
  %296 = load double, ptr @A4, align 8
  %297 = call double @llvm.fmuladd.f64(double %295, double %273, double %296)
  %298 = load double, ptr @A3, align 8
  %299 = call double @llvm.fmuladd.f64(double %297, double %273, double %298)
  %300 = load double, ptr @A2, align 8
  %301 = call double @llvm.fmuladd.f64(double %299, double %273, double %300)
  %302 = load double, ptr @A1, align 8
  %303 = call double @llvm.fmuladd.f64(double %301, double %273, double %302)
  %304 = load double, ptr @A0, align 8
  %305 = call double @llvm.fmuladd.f64(double %303, double %273, double %304)
  %306 = fmul double %272, %305
  store double %306, ptr @sb, align 8
  %307 = fsub double %292, %306
  store double %307, ptr @sc, align 8
  %308 = fdiv double %285, %287
  store double %308, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %309 = fmul double %307, 1.000000e-30
  %310 = fmul double %269, 1.000000e-30
  %311 = fmul double %308, 1.000000e-30
  %312 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %309, double noundef %310, double noundef %311) #4
  %313 = load double, ptr @piref, align 8
  %314 = load double, ptr @three, align 8
  %315 = fmul double %314, %167
  %316 = fdiv double %313, %315
  %317 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not7.not46 = icmp slt i32 1, %146
  br i1 %.not7.not46, label %.lr.ph48, label %353

.lr.ph48:                                         ; preds = %263
  br label %318

318:                                              ; preds = %.lr.ph48, %318
  %319 = phi i32 [ 1, %.lr.ph48 ], [ %352, %318 ]
  %320 = phi double [ 0.000000e+00, %.lr.ph48 ], [ %351, %318 ]
  %321 = uitofp nneg i32 %319 to double
  %322 = fmul double %316, %321
  %323 = fmul double %322, %322
  %324 = load double, ptr @A6, align 8
  %325 = load double, ptr @A5, align 8
  %326 = call double @llvm.fmuladd.f64(double %324, double %323, double %325)
  %327 = load double, ptr @A4, align 8
  %328 = call double @llvm.fmuladd.f64(double %326, double %323, double %327)
  %329 = load double, ptr @A3, align 8
  %330 = call double @llvm.fmuladd.f64(double %328, double %323, double %329)
  %331 = load double, ptr @A2, align 8
  %332 = call double @llvm.fmuladd.f64(double %330, double %323, double %331)
  %333 = load double, ptr @A1, align 8
  %334 = call double @llvm.fmuladd.f64(double %332, double %323, double %333)
  %335 = load double, ptr @one, align 8
  %336 = call double @llvm.fmuladd.f64(double %334, double %323, double %335)
  %337 = fmul double %322, %336
  %338 = load double, ptr @B6, align 8
  %339 = load double, ptr @B5, align 8
  %340 = call double @llvm.fmuladd.f64(double %338, double %323, double %339)
  %341 = load double, ptr @B4, align 8
  %342 = call double @llvm.fmuladd.f64(double %323, double %340, double %341)
  %343 = load double, ptr @B3, align 8
  %344 = call double @llvm.fmuladd.f64(double %323, double %342, double %343)
  %345 = load double, ptr @B2, align 8
  %346 = call double @llvm.fmuladd.f64(double %323, double %344, double %345)
  %347 = load double, ptr @B1, align 8
  %348 = call double @llvm.fmuladd.f64(double %323, double %346, double %347)
  %349 = call double @llvm.fmuladd.f64(double %323, double %348, double %335)
  %350 = fdiv double %337, %349
  %351 = fadd double %320, %350
  %352 = add nuw nsw i32 %319, 1
  %exitcond70 = icmp ne i32 %352, %146
  br i1 %exitcond70, label %318, label %._crit_edge49, !llvm.loop !15

._crit_edge49:                                    ; preds = %318
  %split50 = phi double [ %351, %318 ]
  br label %353

353:                                              ; preds = %._crit_edge49, %263
  %.lcssa3 = phi double [ %split50, %._crit_edge49 ], [ 0.000000e+00, %263 ]
  %354 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %355 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %356 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %357 = load double, ptr @nulltime, align 8
  %358 = fneg double %357
  %359 = call double @llvm.fmuladd.f64(double %355, double %356, double %358)
  store double %359, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %360 = load double, ptr @piref, align 8
  %361 = load double, ptr @three, align 8
  %362 = fdiv double %360, %361
  %363 = fmul double %362, %362
  %364 = load double, ptr @A6, align 8
  %365 = load double, ptr @A5, align 8
  %366 = call double @llvm.fmuladd.f64(double %364, double %363, double %365)
  %367 = load double, ptr @A4, align 8
  %368 = call double @llvm.fmuladd.f64(double %366, double %363, double %367)
  %369 = load double, ptr @A3, align 8
  %370 = call double @llvm.fmuladd.f64(double %368, double %363, double %369)
  %371 = load double, ptr @A2, align 8
  %372 = call double @llvm.fmuladd.f64(double %370, double %363, double %371)
  %373 = load double, ptr @A1, align 8
  %374 = call double @llvm.fmuladd.f64(double %372, double %363, double %373)
  %375 = load double, ptr @one, align 8
  %376 = call double @llvm.fmuladd.f64(double %374, double %363, double %375)
  %377 = fmul double %362, %376
  store double %377, ptr @sa, align 8
  %378 = load double, ptr @B6, align 8
  %379 = load double, ptr @B5, align 8
  %380 = call double @llvm.fmuladd.f64(double %378, double %363, double %379)
  %381 = load double, ptr @B4, align 8
  %382 = call double @llvm.fmuladd.f64(double %363, double %380, double %381)
  %383 = load double, ptr @B3, align 8
  %384 = call double @llvm.fmuladd.f64(double %363, double %382, double %383)
  %385 = load double, ptr @B2, align 8
  %386 = call double @llvm.fmuladd.f64(double %363, double %384, double %385)
  %387 = load double, ptr @B1, align 8
  %388 = call double @llvm.fmuladd.f64(double %363, double %386, double %387)
  %389 = call double @llvm.fmuladd.f64(double %363, double %388, double %375)
  store double %389, ptr @sb, align 8
  %390 = fdiv double %377, %389
  store double %390, ptr @sa, align 8
  %391 = fdiv double %359, 2.900000e+01
  store double %391, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %392 = load double, ptr @two, align 8
  %393 = call double @llvm.fmuladd.f64(double %392, double %.lcssa3, double %390)
  %394 = fmul double %316, %393
  %395 = fdiv double %394, %392
  store double %395, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %396 = fadd double %395, f0xBFE62E42FEFA39EF
  store double %396, ptr @sc, align 8
  %397 = fdiv double %375, %391
  store double %397, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %398 = fmul double %396, 1.000000e-30
  %399 = fmul double %359, 1.000000e-30
  %400 = fmul double %397, 1.000000e-30
  %401 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %398, double noundef %399, double noundef %400) #4
  %402 = load double, ptr @piref, align 8
  %403 = load double, ptr @four, align 8
  %404 = fmul double %403, %167
  %405 = fdiv double %402, %404
  %406 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not8.not51 = icmp slt i32 1, %146
  br i1 %.not8.not51, label %.lr.ph53, label %441

.lr.ph53:                                         ; preds = %353
  br label %407

407:                                              ; preds = %.lr.ph53, %407
  %408 = phi i32 [ 1, %.lr.ph53 ], [ %440, %407 ]
  %409 = phi double [ 0.000000e+00, %.lr.ph53 ], [ %439, %407 ]
  %410 = uitofp nneg i32 %408 to double
  %411 = fmul double %405, %410
  %412 = fmul double %411, %411
  %413 = load double, ptr @A6, align 8
  %414 = load double, ptr @A5, align 8
  %415 = call double @llvm.fmuladd.f64(double %413, double %412, double %414)
  %416 = load double, ptr @A4, align 8
  %417 = call double @llvm.fmuladd.f64(double %415, double %412, double %416)
  %418 = load double, ptr @A3, align 8
  %419 = call double @llvm.fmuladd.f64(double %417, double %412, double %418)
  %420 = load double, ptr @A2, align 8
  %421 = call double @llvm.fmuladd.f64(double %419, double %412, double %420)
  %422 = load double, ptr @A1, align 8
  %423 = call double @llvm.fmuladd.f64(double %421, double %412, double %422)
  %424 = load double, ptr @one, align 8
  %425 = call double @llvm.fmuladd.f64(double %423, double %412, double %424)
  %426 = fmul double %411, %425
  %427 = load double, ptr @B6, align 8
  %428 = load double, ptr @B5, align 8
  %429 = call double @llvm.fmuladd.f64(double %427, double %412, double %428)
  %430 = load double, ptr @B4, align 8
  %431 = call double @llvm.fmuladd.f64(double %412, double %429, double %430)
  %432 = load double, ptr @B3, align 8
  %433 = call double @llvm.fmuladd.f64(double %412, double %431, double %432)
  %434 = load double, ptr @B2, align 8
  %435 = call double @llvm.fmuladd.f64(double %412, double %433, double %434)
  %436 = load double, ptr @B1, align 8
  %437 = call double @llvm.fmuladd.f64(double %412, double %435, double %436)
  %438 = call double @llvm.fmuladd.f64(double %412, double %437, double %424)
  %439 = call double @llvm.fmuladd.f64(double %426, double %438, double %409)
  %440 = add nuw nsw i32 %408, 1
  %exitcond71 = icmp ne i32 %440, %146
  br i1 %exitcond71, label %407, label %._crit_edge54, !llvm.loop !16

._crit_edge54:                                    ; preds = %407
  %split55 = phi double [ %439, %407 ]
  br label %441

441:                                              ; preds = %._crit_edge54, %353
  %.lcssa2 = phi double [ %split55, %._crit_edge54 ], [ 0.000000e+00, %353 ]
  %442 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %443 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %444 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %445 = load double, ptr @nulltime, align 8
  %446 = fneg double %445
  %447 = call double @llvm.fmuladd.f64(double %443, double %444, double %446)
  store double %447, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %448 = load double, ptr @piref, align 8
  %449 = load double, ptr @four, align 8
  %450 = fdiv double %448, %449
  %451 = fmul double %450, %450
  %452 = load double, ptr @A6, align 8
  %453 = load double, ptr @A5, align 8
  %454 = call double @llvm.fmuladd.f64(double %452, double %451, double %453)
  %455 = load double, ptr @A4, align 8
  %456 = call double @llvm.fmuladd.f64(double %454, double %451, double %455)
  %457 = load double, ptr @A3, align 8
  %458 = call double @llvm.fmuladd.f64(double %456, double %451, double %457)
  %459 = load double, ptr @A2, align 8
  %460 = call double @llvm.fmuladd.f64(double %458, double %451, double %459)
  %461 = load double, ptr @A1, align 8
  %462 = call double @llvm.fmuladd.f64(double %460, double %451, double %461)
  %463 = load double, ptr @one, align 8
  %464 = call double @llvm.fmuladd.f64(double %462, double %451, double %463)
  %465 = fmul double %450, %464
  store double %465, ptr @sa, align 8
  %466 = load double, ptr @B6, align 8
  %467 = load double, ptr @B5, align 8
  %468 = call double @llvm.fmuladd.f64(double %466, double %451, double %467)
  %469 = load double, ptr @B4, align 8
  %470 = call double @llvm.fmuladd.f64(double %451, double %468, double %469)
  %471 = load double, ptr @B3, align 8
  %472 = call double @llvm.fmuladd.f64(double %451, double %470, double %471)
  %473 = load double, ptr @B2, align 8
  %474 = call double @llvm.fmuladd.f64(double %451, double %472, double %473)
  %475 = load double, ptr @B1, align 8
  %476 = call double @llvm.fmuladd.f64(double %451, double %474, double %475)
  %477 = call double @llvm.fmuladd.f64(double %451, double %476, double %463)
  store double %477, ptr @sb, align 8
  %478 = fmul double %465, %477
  store double %478, ptr @sa, align 8
  %479 = fdiv double %447, 2.900000e+01
  store double %479, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %480 = load double, ptr @two, align 8
  %481 = call double @llvm.fmuladd.f64(double %480, double %.lcssa2, double %478)
  %482 = fmul double %405, %481
  %483 = fdiv double %482, %480
  store double %483, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %484 = fadd double %483, -2.500000e-01
  store double %484, ptr @sc, align 8
  %485 = fdiv double %463, %479
  store double %485, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %486 = fmul double %484, 1.000000e-30
  %487 = fmul double %447, 1.000000e-30
  %488 = fmul double %485, 1.000000e-30
  %489 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %486, double noundef %487, double noundef %488) #4
  %490 = load double, ptr @one, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %491 = fdiv double f0x40599541F7F192A4, %167
  %492 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not9.not56 = icmp slt i32 1, %146
  br i1 %.not9.not56, label %.lr.ph58, label %509

.lr.ph58:                                         ; preds = %441
  br label %493

493:                                              ; preds = %.lr.ph58, %493
  %494 = phi i32 [ 1, %.lr.ph58 ], [ %508, %493 ]
  %495 = phi double [ 0.000000e+00, %.lr.ph58 ], [ %507, %493 ]
  %496 = uitofp nneg i32 %494 to double
  %497 = fmul double %491, %496
  %498 = fmul double %497, %497
  %499 = fadd double %497, %490
  %500 = fdiv double %490, %499
  %501 = fsub double %495, %500
  %502 = fadd double %498, %490
  %503 = fdiv double %497, %502
  %504 = fsub double %501, %503
  %505 = call double @llvm.fmuladd.f64(double %497, double %498, double %490)
  %506 = fdiv double %498, %505
  %507 = fsub double %504, %506
  %508 = add nuw nsw i32 %494, 1
  %exitcond72 = icmp ne i32 %508, %146
  br i1 %exitcond72, label %493, label %._crit_edge59, !llvm.loop !17

._crit_edge59:                                    ; preds = %493
  %split60 = phi double [ %507, %493 ]
  br label %509

509:                                              ; preds = %._crit_edge59, %441
  %.lcssa1 = phi double [ %split60, %._crit_edge59 ], [ 0.000000e+00, %441 ]
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
  %519 = fneg double %490
  %520 = fadd double %517, %490
  %521 = fdiv double %490, %520
  %522 = fsub double %519, %521
  %523 = fadd double %518, %490
  %524 = fdiv double %517, %523
  %525 = fsub double %522, %524
  %526 = call double @llvm.fmuladd.f64(double %517, double %518, double %490)
  %527 = fdiv double %518, %526
  %528 = fsub double %525, %527
  store double %528, ptr @sa, align 8
  %529 = fmul nnan double %491, 1.800000e+01
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
  %.not10.not61 = icmp slt i32 1, %538
  br i1 %.not10.not61, label %.lr.ph63, label %587

.lr.ph63:                                         ; preds = %509
  br label %552

552:                                              ; preds = %.lr.ph63, %552
  %553 = phi i32 [ 1, %.lr.ph63 ], [ %586, %552 ]
  %554 = phi double [ 0.000000e+00, %.lr.ph63 ], [ %585, %552 ]
  %555 = uitofp nneg i32 %553 to double
  %556 = fmul double %550, %555
  %557 = fmul double %556, %556
  %558 = load double, ptr @B6, align 8
  %559 = load double, ptr @B5, align 8
  %560 = call double @llvm.fmuladd.f64(double %558, double %557, double %559)
  %561 = load double, ptr @B4, align 8
  %562 = call double @llvm.fmuladd.f64(double %557, double %560, double %561)
  %563 = load double, ptr @B3, align 8
  %564 = call double @llvm.fmuladd.f64(double %557, double %562, double %563)
  %565 = load double, ptr @B2, align 8
  %566 = call double @llvm.fmuladd.f64(double %557, double %564, double %565)
  %567 = load double, ptr @B1, align 8
  %568 = call double @llvm.fmuladd.f64(double %557, double %566, double %567)
  %569 = load double, ptr @one, align 8
  %570 = call double @llvm.fmuladd.f64(double %557, double %568, double %569)
  %571 = fmul double %570, %570
  %572 = fmul double %571, %556
  %573 = load double, ptr @A6, align 8
  %574 = load double, ptr @A5, align 8
  %575 = call double @llvm.fmuladd.f64(double %573, double %557, double %574)
  %576 = load double, ptr @A4, align 8
  %577 = call double @llvm.fmuladd.f64(double %575, double %557, double %576)
  %578 = load double, ptr @A3, align 8
  %579 = call double @llvm.fmuladd.f64(double %577, double %557, double %578)
  %580 = load double, ptr @A2, align 8
  %581 = call double @llvm.fmuladd.f64(double %579, double %557, double %580)
  %582 = load double, ptr @A1, align 8
  %583 = call double @llvm.fmuladd.f64(double %581, double %557, double %582)
  %584 = call double @llvm.fmuladd.f64(double %583, double %557, double %569)
  %585 = call double @llvm.fmuladd.f64(double %572, double %584, double %554)
  %586 = add nuw nsw i32 %553, 1
  %exitcond73 = icmp ne i32 %586, %538
  br i1 %exitcond73, label %552, label %._crit_edge64, !llvm.loop !18

._crit_edge64:                                    ; preds = %552
  %split65 = phi double [ %585, %552 ]
  br label %587

587:                                              ; preds = %._crit_edge64, %509
  %.lcssa = phi double [ %split65, %._crit_edge64 ], [ 0.000000e+00, %509 ]
  %588 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %589 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %590 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %591 = load double, ptr @nulltime, align 8
  %592 = fneg double %591
  %593 = call double @llvm.fmuladd.f64(double %589, double %590, double %592)
  store double %593, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %594 = load double, ptr @piref, align 8
  %595 = load double, ptr @three, align 8
  %596 = fdiv double %594, %595
  %597 = fmul double %596, %596
  %598 = load double, ptr @A6, align 8
  %599 = load double, ptr @A5, align 8
  %600 = call double @llvm.fmuladd.f64(double %598, double %597, double %599)
  %601 = load double, ptr @A4, align 8
  %602 = call double @llvm.fmuladd.f64(double %600, double %597, double %601)
  %603 = load double, ptr @A3, align 8
  %604 = call double @llvm.fmuladd.f64(double %602, double %597, double %603)
  %605 = load double, ptr @A2, align 8
  %606 = call double @llvm.fmuladd.f64(double %604, double %597, double %605)
  %607 = load double, ptr @A1, align 8
  %608 = call double @llvm.fmuladd.f64(double %606, double %597, double %607)
  %609 = load double, ptr @one, align 8
  %610 = call double @llvm.fmuladd.f64(double %608, double %597, double %609)
  %611 = fmul double %596, %610
  store double %611, ptr @sa, align 8
  %612 = load double, ptr @B6, align 8
  %613 = load double, ptr @B5, align 8
  %614 = call double @llvm.fmuladd.f64(double %612, double %597, double %613)
  %615 = load double, ptr @B4, align 8
  %616 = call double @llvm.fmuladd.f64(double %597, double %614, double %615)
  %617 = load double, ptr @B3, align 8
  %618 = call double @llvm.fmuladd.f64(double %597, double %616, double %617)
  %619 = load double, ptr @B2, align 8
  %620 = call double @llvm.fmuladd.f64(double %597, double %618, double %619)
  %621 = load double, ptr @B1, align 8
  %622 = call double @llvm.fmuladd.f64(double %597, double %620, double %621)
  %623 = call double @llvm.fmuladd.f64(double %597, double %622, double %609)
  store double %623, ptr @sb, align 8
  %624 = fmul double %611, %623
  %625 = fmul double %624, %623
  store double %625, ptr @sa, align 8
  %626 = fdiv double %593, 3.000000e+01
  store double %626, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %627 = load double, ptr @two, align 8
  %628 = call double @llvm.fmuladd.f64(double %627, double %.lcssa, double %625)
  %629 = fmul double %550, %628
  %630 = fdiv double %629, %627
  store double %630, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %631 = fadd double %630, f0xBFD2AAAAAAAAAAAB
  store double %631, ptr @sc, align 8
  %632 = fdiv double %609, %626
  store double %632, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %633 = fmul double %631, 1.000000e-30
  %634 = fmul double %593, 1.000000e-30
  %635 = fmul double %632, 1.000000e-30
  %636 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %633, double noundef %634, double noundef %635) #4
  %637 = load double, ptr @five, align 8
  %638 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %639 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %640 = fsub double %638, %639
  %641 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %642 = call double @llvm.fmuladd.f64(double %637, double %640, double %641)
  %643 = fdiv double %642, 5.200000e+01
  store double %643, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %644 = load double, ptr @one, align 8
  %645 = fdiv double %644, %643
  store double %645, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %646 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %647 = fadd double %646, %641
  %648 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %649 = fadd double %647, %648
  %650 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %651 = fadd double %649, %650
  %652 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %653 = fadd double %651, %652
  store double %653, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %654 = load double, ptr @four, align 8
  %655 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %656 = call double @llvm.fmuladd.f64(double %654, double %655, double %653)
  %657 = fdiv double %656, 1.520000e+02
  store double %657, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %658 = fdiv double %644, %657
  store double %658, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %653, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %659 = fadd double %653, %655
  %660 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %661 = fadd double %659, %660
  %662 = fdiv double %661, 1.460000e+02
  store double %662, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %663 = fdiv double %644, %662
  store double %663, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %664 = fadd double %641, %648
  %665 = fadd double %664, %652
  %666 = fadd double %665, %660
  %667 = fdiv double %666, 9.100000e+01
  store double %667, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %668 = fdiv double %644, %667
  store double %668, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar11 = call i32 @putchar(i32 10)
  %669 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %538) #4
  %670 = load double, ptr @nulltime, align 8
  %671 = fmul double %670, 1.000000e-30
  %672 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %671) #4
  %673 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %674 = fmul double %673, 1.000000e-30
  %675 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %674) #4
  %676 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %677 = fmul double %676, 1.000000e-30
  %678 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %677) #4
  %679 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %680 = fmul double %679, 1.000000e-30
  %681 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %680) #4
  %682 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %683 = fmul double %682, 1.000000e-30
  %684 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %683) #4
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
