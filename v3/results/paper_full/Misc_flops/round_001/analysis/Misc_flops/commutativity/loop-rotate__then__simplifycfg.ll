; ModuleID = 'results\paper_full\Misc_flops\round_000\output.ll'
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
  %1 = alloca double, align 8
  %2 = alloca i32, align 4
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
  %3 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %4 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  store double 0.000000e+00, ptr @sa, align 8
  %5 = load double, ptr @TLimit, align 8
  %6 = fcmp olt double 0.000000e+00, %5
  br i1 %6, label %.lr.ph19, label %.loopexit

7:                                                ; preds = %._crit_edge
  %8 = phi double [ %.lcssa9, %._crit_edge ]
  %9 = phi double [ %18, %._crit_edge ]
  %10 = phi i32 [ %15, %._crit_edge ]
  %11 = phi double [ %40, %._crit_edge ]
  %12 = load double, ptr @TLimit, align 8
  %13 = fcmp olt double %11, %12
  br i1 %13, label %.lr.ph19, label %.loopexit, !llvm.loop !7

.lr.ph19:                                         ; preds = %0, %7
  %14 = phi i32 [ %10, %7 ], [ 15625, %0 ]
  %15 = shl nsw i32 %14, 1
  %16 = load double, ptr @one, align 8
  %17 = sitofp i32 %15 to double
  %18 = fdiv double %16, %17
  store double %16, ptr %1, align 8
  %19 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not.not17 = icmp slt i32 1, %15
  br i1 %.not.not17, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph19, %.lr.ph
  %20 = phi i32 [ %38, %.lr.ph ], [ 1, %.lr.ph19 ]
  %21 = phi double [ %37, %.lr.ph ], [ 0.000000e+00, %.lr.ph19 ]
  %22 = phi double [ %24, %.lr.ph ], [ 0.000000e+00, %.lr.ph19 ]
  %23 = load double, ptr %1, align 8
  %24 = fadd double %22, %23
  %25 = fmul double %24, %18
  %26 = load double, ptr @D1, align 8
  %27 = load double, ptr @D2, align 8
  %28 = load double, ptr @D3, align 8
  %29 = call double @llvm.fmuladd.f64(double %25, double %28, double %27)
  %30 = call double @llvm.fmuladd.f64(double %25, double %29, double %26)
  %31 = load double, ptr @E2, align 8
  %32 = load double, ptr @E3, align 8
  %33 = call double @llvm.fmuladd.f64(double %25, double %32, double %31)
  %34 = call double @llvm.fmuladd.f64(double %25, double %33, double %26)
  %35 = call double @llvm.fmuladd.f64(double %25, double %34, double %23)
  %36 = fdiv double %30, %35
  %37 = fadd double %21, %36
  %38 = add nuw nsw i32 %20, 1
  %.not.not = icmp slt i32 %38, %15
  br i1 %.not.not, label %.lr.ph, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph19
  %.lcssa9 = phi double [ 0.000000e+00, %.lr.ph19 ], [ %37, %.lr.ph ]
  %39 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %40 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %40, ptr @sa, align 8
  %41 = icmp eq i32 %14, 256000000
  br i1 %41, label %.loopexit, label %7

.loopexit:                                        ; preds = %0, %7, %._crit_edge
  %42 = phi double [ %.lcssa9, %._crit_edge ], [ undef, %0 ], [ %8, %7 ]
  %43 = phi double [ %18, %._crit_edge ], [ undef, %0 ], [ %9, %7 ]
  %44 = phi i32 [ 512000000, %._crit_edge ], [ 15625, %0 ], [ %10, %7 ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %45 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %46

46:                                               ; preds = %46, %.loopexit
  %47 = phi i32 [ %48, %46 ], [ 1, %.loopexit ]
  %.not.not3 = icmp slt i32 %47, %44
  %48 = add nuw nsw i32 %47, 1
  br i1 %.not.not3, label %46, label %49, !llvm.loop !10

49:                                               ; preds = %46
  %50 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %51 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %52 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %53 = fmul double %51, %52
  %54 = fcmp olt double %53, 0.000000e+00
  %55 = select i1 %54, double 0.000000e+00, double %53
  store double %55, ptr @nulltime, align 8
  %56 = load double, ptr @sa, align 8
  %57 = fneg double %55
  %58 = call double @llvm.fmuladd.f64(double %51, double %56, double %57)
  store double %58, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %59 = load double, ptr @D1, align 8
  %60 = load double, ptr @D2, align 8
  %61 = fadd double %59, %60
  %62 = load double, ptr @D3, align 8
  %63 = fadd double %61, %62
  %64 = load double, ptr @one, align 8
  %65 = fadd double %64, %59
  %66 = load double, ptr @E2, align 8
  %67 = fadd double %65, %66
  %68 = load double, ptr @E3, align 8
  %69 = fadd double %67, %68
  %70 = fdiv double %63, %69
  store double %70, ptr @sa, align 8
  store double %59, ptr @sb, align 8
  %71 = fdiv double %58, 1.400000e+01
  store double %71, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %72 = fadd double %70, %59
  %73 = load double, ptr @two, align 8
  %74 = call double @llvm.fmuladd.f64(double %73, double %42, double %72)
  %75 = fmul double %43, %74
  %76 = fdiv double %75, %73
  store double %76, ptr @sa, align 8
  %77 = fdiv double %64, %76
  store double %77, ptr @sb, align 8
  %78 = fptosi double %77 to i32
  %79 = mul nsw i32 %78, 40000
  %80 = sitofp i32 %79 to double
  %81 = load double, ptr @scale, align 8
  %82 = fdiv double %80, %81
  %83 = fptosi double %82 to i32
  %84 = fadd double %77, -2.520000e+01
  store double %84, ptr @sc, align 8
  %85 = fdiv double %64, %71
  store double %85, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %86 = fmul double %84, 1.000000e-30
  %87 = fmul double %58, 1.000000e-30
  %88 = fmul double %85, 1.000000e-30
  %89 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %86, double noundef %87, double noundef %88) #4
  store i32 %83, ptr %2, align 4
  %90 = load double, ptr @five, align 8
  %91 = fneg double %90
  %92 = load double, ptr @one, align 8
  %93 = fneg double %92
  store double %93, ptr @sa, align 8
  %94 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not23 = icmp sgt i32 1, %83
  br i1 %.not23, label %._crit_edge26, label %.lr.ph25

.lr.ph25:                                         ; preds = %49, %.lr.ph25
  %95 = phi i32 [ %100, %.lr.ph25 ], [ 1, %49 ]
  %96 = phi double [ %97, %.lr.ph25 ], [ %91, %49 ]
  %97 = fneg double %96
  %98 = load double, ptr @sa, align 8
  %99 = fsub double %98, %96
  store double %99, ptr @sa, align 8
  %100 = add nuw nsw i32 %95, 1
  %.not = icmp sgt i32 %100, %83
  br i1 %.not, label %._crit_edge26, label %.lr.ph25, !llvm.loop !11

._crit_edge26:                                    ; preds = %.lr.ph25, %49
  %.lcssa8 = phi double [ %91, %49 ], [ %97, %.lr.ph25 ]
  %101 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %102 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %103 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %104 = fmul double %102, %103
  %105 = fcmp olt double %104, 0.000000e+00
  %storemerge = select i1 %105, double 0.000000e+00, double %104
  store double %storemerge, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %106 = sitofp i32 %83 to double
  store double %106, ptr @sc, align 8
  %107 = load double, ptr @sa, align 8
  store double 0.000000e+00, ptr %1, align 8
  %108 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not428 = icmp sgt i32 1, %83
  br i1 %.not428, label %._crit_edge31, label %.lr.ph30

.lr.ph30:                                         ; preds = %._crit_edge26, %.lr.ph30
  %109 = phi i32 [ %125, %.lr.ph30 ], [ 1, %._crit_edge26 ]
  %110 = phi double [ %120, %.lr.ph30 ], [ 0.000000e+00, %._crit_edge26 ]
  %111 = phi double [ %121, %.lr.ph30 ], [ 0.000000e+00, %._crit_edge26 ]
  %112 = phi double [ %114, %.lr.ph30 ], [ %.lcssa8, %._crit_edge26 ]
  %113 = phi double [ %118, %.lr.ph30 ], [ %107, %._crit_edge26 ]
  %114 = fneg double %112
  %115 = load double, ptr @sa, align 8
  %116 = fsub double %115, %112
  store double %116, ptr @sa, align 8
  %117 = load double, ptr @two, align 8
  %118 = fadd double %113, %117
  %119 = fsub double %114, %118
  %120 = fadd double %110, %119
  %121 = call double @llvm.fmuladd.f64(double %112, double %118, double %111)
  %122 = load double, ptr %1, align 8
  %123 = fdiv double %112, %118
  %124 = fsub double %122, %123
  store double %124, ptr %1, align 8
  %125 = add nuw nsw i32 %109, 1
  %.not4 = icmp sgt i32 %125, %83
  br i1 %.not4, label %._crit_edge31, label %.lr.ph30, !llvm.loop !12

._crit_edge31:                                    ; preds = %.lr.ph30, %._crit_edge26
  %.lcssa7 = phi double [ 0.000000e+00, %._crit_edge26 ], [ %121, %.lr.ph30 ]
  %.lcssa6 = phi double [ 0.000000e+00, %._crit_edge26 ], [ %120, %.lr.ph30 ]
  %126 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %127 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %128 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %129 = fmul double %127, %128
  store double %129, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %130 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %131 = fsub double %129, %130
  %132 = fdiv double %131, 7.000000e+00
  store double %132, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %133 = load double, ptr @sa, align 8
  %134 = fmul double %133, %.lcssa6
  %135 = load double, ptr @sc, align 8
  %136 = fdiv double %134, %135
  %137 = fptosi double %136 to i32
  store i32 %137, ptr %2, align 4
  %138 = load double, ptr @four, align 8
  %139 = load double, ptr %1, align 8
  %140 = fmul double %138, %139
  %141 = load double, ptr @five, align 8
  %142 = fdiv double %140, %141
  store double %142, ptr @sa, align 8
  %143 = fdiv double %141, %.lcssa7
  %144 = fadd double %142, %143
  store double %144, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %145 = fmul double %.lcssa7, %.lcssa7
  %146 = fmul double %145, %.lcssa7
  %147 = fdiv double 3.125000e+01, %146
  %148 = fsub double %144, %147
  store double %148, ptr @piprg, align 8
  %149 = load double, ptr @piref, align 8
  %150 = fsub double %148, %149
  store double %150, ptr @pierr, align 8
  %151 = load double, ptr @one, align 8
  %152 = fdiv double %151, %132
  store double %152, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %153 = fmul double %150, 1.000000e-30
  %154 = fmul double %131, 1.000000e-30
  %155 = fmul double %152, 1.000000e-30
  %156 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %153, double noundef %154, double noundef %155) #4
  %157 = load double, ptr @piref, align 8
  %158 = load double, ptr @three, align 8
  %159 = sitofp i32 %137 to double
  %160 = fmul double %158, %159
  %161 = fdiv double %157, %160
  %162 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not5.not34 = icmp slt i32 1, %137
  br i1 %.not5.not34, label %.lr.ph36, label %._crit_edge37

.lr.ph36:                                         ; preds = %._crit_edge31, %.lr.ph36
  %163 = phi i32 [ %185, %.lr.ph36 ], [ 1, %._crit_edge31 ]
  %164 = phi double [ %184, %.lr.ph36 ], [ 0.000000e+00, %._crit_edge31 ]
  %165 = phi double [ %167, %.lr.ph36 ], [ 0.000000e+00, %._crit_edge31 ]
  %166 = load double, ptr @one, align 8
  %167 = fadd double %165, %166
  %168 = fmul double %167, %161
  %169 = fmul double %168, %168
  store double %169, ptr %1, align 8
  %170 = load double, ptr @A6, align 8
  %171 = load double, ptr @A5, align 8
  %172 = fneg double %171
  %173 = call double @llvm.fmuladd.f64(double %170, double %169, double %172)
  %174 = load double, ptr @A4, align 8
  %175 = call double @llvm.fmuladd.f64(double %173, double %169, double %174)
  %176 = load double, ptr @A3, align 8
  %177 = fneg double %176
  %178 = call double @llvm.fmuladd.f64(double %175, double %169, double %177)
  %179 = load double, ptr @A2, align 8
  %180 = call double @llvm.fmuladd.f64(double %178, double %169, double %179)
  %181 = load double, ptr @A1, align 8
  %182 = call double @llvm.fmuladd.f64(double %180, double %169, double %181)
  %183 = call double @llvm.fmuladd.f64(double %182, double %169, double %166)
  %184 = call double @llvm.fmuladd.f64(double %168, double %183, double %164)
  %185 = add nuw nsw i32 %163, 1
  %.not5.not = icmp slt i32 %185, %137
  br i1 %.not5.not, label %.lr.ph36, label %._crit_edge37, !llvm.loop !13

._crit_edge37:                                    ; preds = %.lr.ph36, %._crit_edge31
  %.lcssa5 = phi double [ 0.000000e+00, %._crit_edge31 ], [ %184, %.lr.ph36 ]
  %186 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %187 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %188 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %189 = load double, ptr @nulltime, align 8
  %190 = fneg double %189
  %191 = call double @llvm.fmuladd.f64(double %187, double %188, double %190)
  store double %191, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %192 = load double, ptr @piref, align 8
  %193 = load double, ptr @three, align 8
  %194 = fdiv double %192, %193
  %195 = fmul double %194, %194
  store double %195, ptr %1, align 8
  %196 = load double, ptr @A6, align 8
  %197 = load double, ptr @A5, align 8
  %198 = fneg double %197
  %199 = call double @llvm.fmuladd.f64(double %196, double %195, double %198)
  %200 = load double, ptr @A4, align 8
  %201 = call double @llvm.fmuladd.f64(double %199, double %195, double %200)
  %202 = load double, ptr @A3, align 8
  %203 = fneg double %202
  %204 = call double @llvm.fmuladd.f64(double %201, double %195, double %203)
  %205 = load double, ptr @A2, align 8
  %206 = call double @llvm.fmuladd.f64(double %204, double %195, double %205)
  %207 = load double, ptr @A1, align 8
  %208 = call double @llvm.fmuladd.f64(double %206, double %195, double %207)
  %209 = load double, ptr @one, align 8
  %210 = call double @llvm.fmuladd.f64(double %208, double %195, double %209)
  %211 = fmul double %194, %210
  store double %211, ptr @sa, align 8
  %212 = fdiv double %191, 1.700000e+01
  store double %212, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %213 = load double, ptr @two, align 8
  %214 = call double @llvm.fmuladd.f64(double %213, double %.lcssa5, double %211)
  %215 = fmul double %161, %214
  %216 = fdiv double %215, %213
  store double %216, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %217 = fadd double %216, -5.000000e-01
  store double %217, ptr @sc, align 8
  %218 = fdiv double %209, %212
  store double %218, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %219 = fmul double %217, 1.000000e-30
  %220 = fmul double %191, 1.000000e-30
  %221 = fmul double %218, 1.000000e-30
  %222 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %219, double noundef %220, double noundef %221) #4
  %223 = load double, ptr @A3, align 8
  %224 = fneg double %223
  store double %224, ptr @A3, align 8
  %225 = load double, ptr @A5, align 8
  %226 = fneg double %225
  store double %226, ptr @A5, align 8
  %227 = load double, ptr @piref, align 8
  %228 = load double, ptr @three, align 8
  %229 = fmul double %228, %159
  %230 = fdiv double %227, %229
  %231 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not6.not39 = icmp slt i32 1, %137
  br i1 %.not6.not39, label %.lr.ph41, label %._crit_edge42

.lr.ph41:                                         ; preds = %._crit_edge37, %.lr.ph41
  %232 = phi i32 [ %251, %.lr.ph41 ], [ 1, %._crit_edge37 ]
  %233 = phi double [ %250, %.lr.ph41 ], [ 0.000000e+00, %._crit_edge37 ]
  %234 = uitofp nneg i32 %232 to double
  %235 = fmul double %230, %234
  %236 = fmul double %235, %235
  store double %236, ptr %1, align 8
  %237 = load double, ptr @B6, align 8
  %238 = load double, ptr @B5, align 8
  %239 = call double @llvm.fmuladd.f64(double %237, double %236, double %238)
  %240 = load double, ptr @B4, align 8
  %241 = call double @llvm.fmuladd.f64(double %236, double %239, double %240)
  %242 = load double, ptr @B3, align 8
  %243 = call double @llvm.fmuladd.f64(double %236, double %241, double %242)
  %244 = load double, ptr @B2, align 8
  %245 = call double @llvm.fmuladd.f64(double %236, double %243, double %244)
  %246 = load double, ptr @B1, align 8
  %247 = call double @llvm.fmuladd.f64(double %236, double %245, double %246)
  %248 = call double @llvm.fmuladd.f64(double %236, double %247, double %233)
  %249 = load double, ptr @one, align 8
  %250 = fadd double %248, %249
  %251 = add nuw nsw i32 %232, 1
  %.not6.not = icmp slt i32 %251, %137
  br i1 %.not6.not, label %.lr.ph41, label %._crit_edge42, !llvm.loop !14

._crit_edge42:                                    ; preds = %.lr.ph41, %._crit_edge37
  %.lcssa4 = phi double [ 0.000000e+00, %._crit_edge37 ], [ %250, %.lr.ph41 ]
  %252 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %253 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %254 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %255 = load double, ptr @nulltime, align 8
  %256 = fneg double %255
  %257 = call double @llvm.fmuladd.f64(double %253, double %254, double %256)
  store double %257, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %258 = load double, ptr @piref, align 8
  %259 = load double, ptr @three, align 8
  %260 = fdiv double %258, %259
  %261 = fmul double %260, %260
  store double %261, ptr %1, align 8
  %262 = load double, ptr @B6, align 8
  %263 = load double, ptr @B5, align 8
  %264 = call double @llvm.fmuladd.f64(double %262, double %261, double %263)
  %265 = load double, ptr @B4, align 8
  %266 = call double @llvm.fmuladd.f64(double %261, double %264, double %265)
  %267 = load double, ptr @B3, align 8
  %268 = call double @llvm.fmuladd.f64(double %261, double %266, double %267)
  %269 = load double, ptr @B2, align 8
  %270 = call double @llvm.fmuladd.f64(double %261, double %268, double %269)
  %271 = load double, ptr @B1, align 8
  %272 = call double @llvm.fmuladd.f64(double %261, double %270, double %271)
  %273 = load double, ptr @one, align 8
  %274 = call double @llvm.fmuladd.f64(double %261, double %272, double %273)
  store double %274, ptr @sa, align 8
  %275 = fdiv double %257, 1.500000e+01
  store double %275, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %276 = fadd double %274, %273
  %277 = load double, ptr @two, align 8
  %278 = call double @llvm.fmuladd.f64(double %277, double %.lcssa4, double %276)
  %279 = fmul double %230, %278
  %280 = fdiv double %279, %277
  store double %280, ptr @sa, align 8
  store double %261, ptr %1, align 8
  %281 = load double, ptr @A6, align 8
  %282 = load double, ptr @A5, align 8
  %283 = call double @llvm.fmuladd.f64(double %281, double %261, double %282)
  %284 = load double, ptr @A4, align 8
  %285 = call double @llvm.fmuladd.f64(double %283, double %261, double %284)
  %286 = load double, ptr @A3, align 8
  %287 = call double @llvm.fmuladd.f64(double %285, double %261, double %286)
  %288 = load double, ptr @A2, align 8
  %289 = call double @llvm.fmuladd.f64(double %287, double %261, double %288)
  %290 = load double, ptr @A1, align 8
  %291 = call double @llvm.fmuladd.f64(double %289, double %261, double %290)
  %292 = load double, ptr @A0, align 8
  %293 = call double @llvm.fmuladd.f64(double %291, double %261, double %292)
  %294 = fmul double %260, %293
  store double %294, ptr @sb, align 8
  %295 = fsub double %280, %294
  store double %295, ptr @sc, align 8
  %296 = fdiv double %273, %275
  store double %296, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %297 = fmul double %295, 1.000000e-30
  %298 = fmul double %257, 1.000000e-30
  %299 = fmul double %296, 1.000000e-30
  %300 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %297, double noundef %298, double noundef %299) #4
  %301 = load double, ptr @piref, align 8
  %302 = load double, ptr @three, align 8
  %303 = fmul double %302, %159
  %304 = fdiv double %301, %303
  %305 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not7.not44 = icmp slt i32 1, %137
  br i1 %.not7.not44, label %.lr.ph46, label %._crit_edge47

.lr.ph46:                                         ; preds = %._crit_edge42, %.lr.ph46
  %306 = phi i32 [ %339, %.lr.ph46 ], [ 1, %._crit_edge42 ]
  %307 = phi double [ %338, %.lr.ph46 ], [ 0.000000e+00, %._crit_edge42 ]
  %308 = uitofp nneg i32 %306 to double
  %309 = fmul double %304, %308
  %310 = fmul double %309, %309
  store double %310, ptr %1, align 8
  %311 = load double, ptr @A6, align 8
  %312 = load double, ptr @A5, align 8
  %313 = call double @llvm.fmuladd.f64(double %311, double %310, double %312)
  %314 = load double, ptr @A4, align 8
  %315 = call double @llvm.fmuladd.f64(double %313, double %310, double %314)
  %316 = load double, ptr @A3, align 8
  %317 = call double @llvm.fmuladd.f64(double %315, double %310, double %316)
  %318 = load double, ptr @A2, align 8
  %319 = call double @llvm.fmuladd.f64(double %317, double %310, double %318)
  %320 = load double, ptr @A1, align 8
  %321 = call double @llvm.fmuladd.f64(double %319, double %310, double %320)
  %322 = load double, ptr @one, align 8
  %323 = call double @llvm.fmuladd.f64(double %321, double %310, double %322)
  %324 = fmul double %309, %323
  %325 = load double, ptr @B6, align 8
  %326 = load double, ptr @B5, align 8
  %327 = call double @llvm.fmuladd.f64(double %325, double %310, double %326)
  %328 = load double, ptr @B4, align 8
  %329 = call double @llvm.fmuladd.f64(double %310, double %327, double %328)
  %330 = load double, ptr @B3, align 8
  %331 = call double @llvm.fmuladd.f64(double %310, double %329, double %330)
  %332 = load double, ptr @B2, align 8
  %333 = call double @llvm.fmuladd.f64(double %310, double %331, double %332)
  %334 = load double, ptr @B1, align 8
  %335 = call double @llvm.fmuladd.f64(double %310, double %333, double %334)
  %336 = call double @llvm.fmuladd.f64(double %310, double %335, double %322)
  %337 = fdiv double %324, %336
  %338 = fadd double %307, %337
  %339 = add nuw nsw i32 %306, 1
  %.not7.not = icmp slt i32 %339, %137
  br i1 %.not7.not, label %.lr.ph46, label %._crit_edge47, !llvm.loop !15

._crit_edge47:                                    ; preds = %.lr.ph46, %._crit_edge42
  %.lcssa3 = phi double [ 0.000000e+00, %._crit_edge42 ], [ %338, %.lr.ph46 ]
  %340 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %341 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %342 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %343 = load double, ptr @nulltime, align 8
  %344 = fneg double %343
  %345 = call double @llvm.fmuladd.f64(double %341, double %342, double %344)
  store double %345, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %346 = load double, ptr @piref, align 8
  %347 = load double, ptr @three, align 8
  %348 = fdiv double %346, %347
  %349 = fmul double %348, %348
  store double %349, ptr %1, align 8
  %350 = load double, ptr @A6, align 8
  %351 = load double, ptr @A5, align 8
  %352 = call double @llvm.fmuladd.f64(double %350, double %349, double %351)
  %353 = load double, ptr @A4, align 8
  %354 = call double @llvm.fmuladd.f64(double %352, double %349, double %353)
  %355 = load double, ptr @A3, align 8
  %356 = call double @llvm.fmuladd.f64(double %354, double %349, double %355)
  %357 = load double, ptr @A2, align 8
  %358 = call double @llvm.fmuladd.f64(double %356, double %349, double %357)
  %359 = load double, ptr @A1, align 8
  %360 = call double @llvm.fmuladd.f64(double %358, double %349, double %359)
  %361 = load double, ptr @one, align 8
  %362 = call double @llvm.fmuladd.f64(double %360, double %349, double %361)
  %363 = fmul double %348, %362
  store double %363, ptr @sa, align 8
  %364 = load double, ptr @B6, align 8
  %365 = load double, ptr @B5, align 8
  %366 = call double @llvm.fmuladd.f64(double %364, double %349, double %365)
  %367 = load double, ptr @B4, align 8
  %368 = call double @llvm.fmuladd.f64(double %349, double %366, double %367)
  %369 = load double, ptr @B3, align 8
  %370 = call double @llvm.fmuladd.f64(double %349, double %368, double %369)
  %371 = load double, ptr @B2, align 8
  %372 = call double @llvm.fmuladd.f64(double %349, double %370, double %371)
  %373 = load double, ptr @B1, align 8
  %374 = call double @llvm.fmuladd.f64(double %349, double %372, double %373)
  %375 = call double @llvm.fmuladd.f64(double %349, double %374, double %361)
  store double %375, ptr @sb, align 8
  %376 = fdiv double %363, %375
  store double %376, ptr @sa, align 8
  %377 = fdiv double %345, 2.900000e+01
  store double %377, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %378 = load double, ptr @two, align 8
  %379 = call double @llvm.fmuladd.f64(double %378, double %.lcssa3, double %376)
  %380 = fmul double %304, %379
  %381 = fdiv double %380, %378
  store double %381, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %382 = fadd double %381, f0xBFE62E42FEFA39EF
  store double %382, ptr @sc, align 8
  %383 = fdiv double %361, %377
  store double %383, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %384 = fmul double %382, 1.000000e-30
  %385 = fmul double %345, 1.000000e-30
  %386 = fmul double %383, 1.000000e-30
  %387 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %384, double noundef %385, double noundef %386) #4
  %388 = load double, ptr @piref, align 8
  %389 = load double, ptr @four, align 8
  %390 = fmul double %389, %159
  %391 = fdiv double %388, %390
  %392 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not8.not49 = icmp slt i32 1, %137
  br i1 %.not8.not49, label %.lr.ph51, label %._crit_edge52

.lr.ph51:                                         ; preds = %._crit_edge47, %.lr.ph51
  %393 = phi i32 [ %425, %.lr.ph51 ], [ 1, %._crit_edge47 ]
  %394 = phi double [ %424, %.lr.ph51 ], [ 0.000000e+00, %._crit_edge47 ]
  %395 = uitofp nneg i32 %393 to double
  %396 = fmul double %391, %395
  %397 = fmul double %396, %396
  store double %397, ptr %1, align 8
  %398 = load double, ptr @A6, align 8
  %399 = load double, ptr @A5, align 8
  %400 = call double @llvm.fmuladd.f64(double %398, double %397, double %399)
  %401 = load double, ptr @A4, align 8
  %402 = call double @llvm.fmuladd.f64(double %400, double %397, double %401)
  %403 = load double, ptr @A3, align 8
  %404 = call double @llvm.fmuladd.f64(double %402, double %397, double %403)
  %405 = load double, ptr @A2, align 8
  %406 = call double @llvm.fmuladd.f64(double %404, double %397, double %405)
  %407 = load double, ptr @A1, align 8
  %408 = call double @llvm.fmuladd.f64(double %406, double %397, double %407)
  %409 = load double, ptr @one, align 8
  %410 = call double @llvm.fmuladd.f64(double %408, double %397, double %409)
  %411 = fmul double %396, %410
  %412 = load double, ptr @B6, align 8
  %413 = load double, ptr @B5, align 8
  %414 = call double @llvm.fmuladd.f64(double %412, double %397, double %413)
  %415 = load double, ptr @B4, align 8
  %416 = call double @llvm.fmuladd.f64(double %397, double %414, double %415)
  %417 = load double, ptr @B3, align 8
  %418 = call double @llvm.fmuladd.f64(double %397, double %416, double %417)
  %419 = load double, ptr @B2, align 8
  %420 = call double @llvm.fmuladd.f64(double %397, double %418, double %419)
  %421 = load double, ptr @B1, align 8
  %422 = call double @llvm.fmuladd.f64(double %397, double %420, double %421)
  %423 = call double @llvm.fmuladd.f64(double %397, double %422, double %409)
  %424 = call double @llvm.fmuladd.f64(double %411, double %423, double %394)
  %425 = add nuw nsw i32 %393, 1
  %.not8.not = icmp slt i32 %425, %137
  br i1 %.not8.not, label %.lr.ph51, label %._crit_edge52, !llvm.loop !16

._crit_edge52:                                    ; preds = %.lr.ph51, %._crit_edge47
  %.lcssa2 = phi double [ 0.000000e+00, %._crit_edge47 ], [ %424, %.lr.ph51 ]
  %426 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %427 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %428 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %429 = load double, ptr @nulltime, align 8
  %430 = fneg double %429
  %431 = call double @llvm.fmuladd.f64(double %427, double %428, double %430)
  store double %431, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %432 = load double, ptr @piref, align 8
  %433 = load double, ptr @four, align 8
  %434 = fdiv double %432, %433
  %435 = fmul double %434, %434
  store double %435, ptr %1, align 8
  %436 = load double, ptr @A6, align 8
  %437 = load double, ptr @A5, align 8
  %438 = call double @llvm.fmuladd.f64(double %436, double %435, double %437)
  %439 = load double, ptr @A4, align 8
  %440 = call double @llvm.fmuladd.f64(double %438, double %435, double %439)
  %441 = load double, ptr @A3, align 8
  %442 = call double @llvm.fmuladd.f64(double %440, double %435, double %441)
  %443 = load double, ptr @A2, align 8
  %444 = call double @llvm.fmuladd.f64(double %442, double %435, double %443)
  %445 = load double, ptr @A1, align 8
  %446 = call double @llvm.fmuladd.f64(double %444, double %435, double %445)
  %447 = load double, ptr @one, align 8
  %448 = call double @llvm.fmuladd.f64(double %446, double %435, double %447)
  %449 = fmul double %434, %448
  store double %449, ptr @sa, align 8
  %450 = load double, ptr @B6, align 8
  %451 = load double, ptr @B5, align 8
  %452 = call double @llvm.fmuladd.f64(double %450, double %435, double %451)
  %453 = load double, ptr @B4, align 8
  %454 = call double @llvm.fmuladd.f64(double %435, double %452, double %453)
  %455 = load double, ptr @B3, align 8
  %456 = call double @llvm.fmuladd.f64(double %435, double %454, double %455)
  %457 = load double, ptr @B2, align 8
  %458 = call double @llvm.fmuladd.f64(double %435, double %456, double %457)
  %459 = load double, ptr @B1, align 8
  %460 = call double @llvm.fmuladd.f64(double %435, double %458, double %459)
  %461 = call double @llvm.fmuladd.f64(double %435, double %460, double %447)
  store double %461, ptr @sb, align 8
  %462 = fmul double %449, %461
  store double %462, ptr @sa, align 8
  %463 = fdiv double %431, 2.900000e+01
  store double %463, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %464 = load double, ptr @two, align 8
  %465 = call double @llvm.fmuladd.f64(double %464, double %.lcssa2, double %462)
  %466 = fmul double %391, %465
  %467 = fdiv double %466, %464
  store double %467, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %468 = fadd double %467, -2.500000e-01
  store double %468, ptr @sc, align 8
  %469 = fdiv double %447, %463
  store double %469, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %470 = fmul double %468, 1.000000e-30
  %471 = fmul double %431, 1.000000e-30
  %472 = fmul double %469, 1.000000e-30
  %473 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %470, double noundef %471, double noundef %472) #4
  %474 = load double, ptr @one, align 8
  store double %474, ptr %1, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %475 = fdiv double f0x40599541F7F192A4, %159
  %476 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not9.not54 = icmp slt i32 1, %137
  br i1 %.not9.not54, label %.lr.ph56, label %._crit_edge57

.lr.ph56:                                         ; preds = %._crit_edge52, %.lr.ph56
  %477 = phi i32 [ %492, %.lr.ph56 ], [ 1, %._crit_edge52 ]
  %478 = phi double [ %491, %.lr.ph56 ], [ 0.000000e+00, %._crit_edge52 ]
  %479 = uitofp nneg i32 %477 to double
  %480 = fmul double %475, %479
  %481 = fmul double %480, %480
  %482 = load double, ptr %1, align 8
  %483 = fadd double %480, %482
  %484 = fdiv double %482, %483
  %485 = fsub double %478, %484
  %486 = fadd double %481, %482
  %487 = fdiv double %480, %486
  %488 = fsub double %485, %487
  %489 = call double @llvm.fmuladd.f64(double %480, double %481, double %482)
  %490 = fdiv double %481, %489
  %491 = fsub double %488, %490
  %492 = add nuw nsw i32 %477, 1
  %.not9.not = icmp slt i32 %492, %137
  br i1 %.not9.not, label %.lr.ph56, label %._crit_edge57, !llvm.loop !17

._crit_edge57:                                    ; preds = %.lr.ph56, %._crit_edge52
  %.lcssa1 = phi double [ 0.000000e+00, %._crit_edge52 ], [ %491, %.lr.ph56 ]
  %493 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %494 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %495 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %496 = load double, ptr @nulltime, align 8
  %497 = fneg double %496
  %498 = call double @llvm.fmuladd.f64(double %494, double %495, double %497)
  store double %498, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %499 = fdiv double %498, 1.200000e+01
  store double %499, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %500 = load double, ptr @sa, align 8
  %501 = fmul double %500, %500
  %502 = load double, ptr %1, align 8
  %503 = fneg double %502
  %504 = fadd double %500, %502
  %505 = fdiv double %502, %504
  %506 = fsub double %503, %505
  %507 = fadd double %501, %502
  %508 = fdiv double %500, %507
  %509 = fsub double %506, %508
  %510 = call double @llvm.fmuladd.f64(double %500, double %501, double %502)
  %511 = fdiv double %501, %510
  %512 = fsub double %509, %511
  store double %512, ptr @sa, align 8
  %513 = fmul nnan double %475, 1.800000e+01
  %514 = load double, ptr @two, align 8
  %515 = call double @llvm.fmuladd.f64(double %514, double %.lcssa1, double %512)
  %516 = fmul double %513, %515
  store double %516, ptr @sa, align 8
  %517 = fptosi double %516 to i32
  %518 = mul nsw i32 %517, -2000
  store i32 %518, ptr %2, align 4
  %519 = sitofp i32 %518 to double
  %520 = load double, ptr @scale, align 8
  %521 = fdiv double %519, %520
  %522 = fptosi double %521 to i32
  store i32 %522, ptr %2, align 4
  %523 = fadd double %516, 5.002000e+02
  store double %523, ptr @sc, align 8
  %524 = load double, ptr @one, align 8
  %525 = fdiv double %524, %499
  store double %525, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %526 = fmul double %523, 1.000000e-30
  %527 = fmul double %498, 1.000000e-30
  %528 = fmul double %525, 1.000000e-30
  %529 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %526, double noundef %527, double noundef %528) #4
  %530 = load double, ptr @piref, align 8
  %531 = load double, ptr @three, align 8
  %532 = sitofp i32 %522 to double
  %533 = fmul double %531, %532
  %534 = fdiv double %530, %533
  %535 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not10.not59 = icmp slt i32 1, %522
  br i1 %.not10.not59, label %.lr.ph61, label %._crit_edge62

.lr.ph61:                                         ; preds = %._crit_edge57, %.lr.ph61
  %536 = phi i32 [ %569, %.lr.ph61 ], [ 1, %._crit_edge57 ]
  %537 = phi double [ %568, %.lr.ph61 ], [ 0.000000e+00, %._crit_edge57 ]
  %538 = uitofp nneg i32 %536 to double
  %539 = fmul double %534, %538
  %540 = fmul double %539, %539
  store double %540, ptr %1, align 8
  %541 = load double, ptr @B6, align 8
  %542 = load double, ptr @B5, align 8
  %543 = call double @llvm.fmuladd.f64(double %541, double %540, double %542)
  %544 = load double, ptr @B4, align 8
  %545 = call double @llvm.fmuladd.f64(double %540, double %543, double %544)
  %546 = load double, ptr @B3, align 8
  %547 = call double @llvm.fmuladd.f64(double %540, double %545, double %546)
  %548 = load double, ptr @B2, align 8
  %549 = call double @llvm.fmuladd.f64(double %540, double %547, double %548)
  %550 = load double, ptr @B1, align 8
  %551 = call double @llvm.fmuladd.f64(double %540, double %549, double %550)
  %552 = load double, ptr @one, align 8
  %553 = call double @llvm.fmuladd.f64(double %540, double %551, double %552)
  %554 = fmul double %553, %553
  %555 = fmul double %554, %539
  %556 = load double, ptr @A6, align 8
  %557 = load double, ptr @A5, align 8
  %558 = call double @llvm.fmuladd.f64(double %556, double %540, double %557)
  %559 = load double, ptr @A4, align 8
  %560 = call double @llvm.fmuladd.f64(double %558, double %540, double %559)
  %561 = load double, ptr @A3, align 8
  %562 = call double @llvm.fmuladd.f64(double %560, double %540, double %561)
  %563 = load double, ptr @A2, align 8
  %564 = call double @llvm.fmuladd.f64(double %562, double %540, double %563)
  %565 = load double, ptr @A1, align 8
  %566 = call double @llvm.fmuladd.f64(double %564, double %540, double %565)
  %567 = call double @llvm.fmuladd.f64(double %566, double %540, double %552)
  %568 = call double @llvm.fmuladd.f64(double %555, double %567, double %537)
  %569 = add nuw nsw i32 %536, 1
  %.not10.not = icmp slt i32 %569, %522
  br i1 %.not10.not, label %.lr.ph61, label %._crit_edge62, !llvm.loop !18

._crit_edge62:                                    ; preds = %.lr.ph61, %._crit_edge57
  %.lcssa = phi double [ 0.000000e+00, %._crit_edge57 ], [ %568, %.lr.ph61 ]
  %570 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %571 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %572 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %573 = load double, ptr @nulltime, align 8
  %574 = fneg double %573
  %575 = call double @llvm.fmuladd.f64(double %571, double %572, double %574)
  store double %575, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %576 = load double, ptr @piref, align 8
  %577 = load double, ptr @three, align 8
  %578 = fdiv double %576, %577
  %579 = fmul double %578, %578
  store double %579, ptr %1, align 8
  %580 = load double, ptr @A6, align 8
  %581 = load double, ptr @A5, align 8
  %582 = call double @llvm.fmuladd.f64(double %580, double %579, double %581)
  %583 = load double, ptr @A4, align 8
  %584 = call double @llvm.fmuladd.f64(double %582, double %579, double %583)
  %585 = load double, ptr @A3, align 8
  %586 = call double @llvm.fmuladd.f64(double %584, double %579, double %585)
  %587 = load double, ptr @A2, align 8
  %588 = call double @llvm.fmuladd.f64(double %586, double %579, double %587)
  %589 = load double, ptr @A1, align 8
  %590 = call double @llvm.fmuladd.f64(double %588, double %579, double %589)
  %591 = load double, ptr @one, align 8
  %592 = call double @llvm.fmuladd.f64(double %590, double %579, double %591)
  %593 = fmul double %578, %592
  store double %593, ptr @sa, align 8
  %594 = load double, ptr @B6, align 8
  %595 = load double, ptr @B5, align 8
  %596 = call double @llvm.fmuladd.f64(double %594, double %579, double %595)
  %597 = load double, ptr @B4, align 8
  %598 = call double @llvm.fmuladd.f64(double %579, double %596, double %597)
  %599 = load double, ptr @B3, align 8
  %600 = call double @llvm.fmuladd.f64(double %579, double %598, double %599)
  %601 = load double, ptr @B2, align 8
  %602 = call double @llvm.fmuladd.f64(double %579, double %600, double %601)
  %603 = load double, ptr @B1, align 8
  %604 = call double @llvm.fmuladd.f64(double %579, double %602, double %603)
  %605 = call double @llvm.fmuladd.f64(double %579, double %604, double %591)
  store double %605, ptr @sb, align 8
  %606 = fmul double %593, %605
  %607 = fmul double %606, %605
  store double %607, ptr @sa, align 8
  %608 = fdiv double %575, 3.000000e+01
  store double %608, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %609 = load double, ptr @two, align 8
  %610 = call double @llvm.fmuladd.f64(double %609, double %.lcssa, double %607)
  %611 = fmul double %534, %610
  %612 = fdiv double %611, %609
  store double %612, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %613 = fadd double %612, f0xBFD2AAAAAAAAAAAB
  store double %613, ptr @sc, align 8
  %614 = fdiv double %591, %608
  store double %614, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %615 = fmul double %613, 1.000000e-30
  %616 = fmul double %575, 1.000000e-30
  %617 = fmul double %614, 1.000000e-30
  %618 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %615, double noundef %616, double noundef %617) #4
  %619 = load double, ptr @five, align 8
  %620 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %621 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %622 = fsub double %620, %621
  %623 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %624 = call double @llvm.fmuladd.f64(double %619, double %622, double %623)
  %625 = fdiv double %624, 5.200000e+01
  store double %625, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %626 = load double, ptr @one, align 8
  %627 = fdiv double %626, %625
  store double %627, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %628 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %629 = fadd double %628, %623
  %630 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %631 = fadd double %629, %630
  %632 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %633 = fadd double %631, %632
  %634 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %635 = fadd double %633, %634
  store double %635, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %636 = load double, ptr @four, align 8
  %637 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %638 = call double @llvm.fmuladd.f64(double %636, double %637, double %635)
  %639 = fdiv double %638, 1.520000e+02
  store double %639, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %640 = fdiv double %626, %639
  store double %640, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %635, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %641 = fadd double %635, %637
  %642 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %643 = fadd double %641, %642
  %644 = fdiv double %643, 1.460000e+02
  store double %644, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %645 = fdiv double %626, %644
  store double %645, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %646 = fadd double %623, %630
  %647 = fadd double %646, %634
  %648 = fadd double %647, %642
  %649 = fdiv double %648, 9.100000e+01
  store double %649, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %650 = fdiv double %626, %649
  store double %650, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar11 = call i32 @putchar(i32 10)
  %651 = load i32, ptr %2, align 4
  %652 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %651) #4
  %653 = load double, ptr @nulltime, align 8
  %654 = fmul double %653, 1.000000e-30
  %655 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %654) #4
  %656 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %657 = fmul double %656, 1.000000e-30
  %658 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %657) #4
  %659 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %660 = fmul double %659, 1.000000e-30
  %661 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %660) #4
  %662 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %663 = fmul double %662, 1.000000e-30
  %664 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %663) #4
  %665 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %666 = fmul double %665, 1.000000e-30
  %667 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %666) #4
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
