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

.lr.ph19:                                         ; preds = %0
  br label %10

7:                                                ; preds = %31
  %8 = load double, ptr @TLimit, align 8
  %9 = fcmp olt double %33, %8
  br i1 %9, label %10, label %..loopexit_crit_edge, !llvm.loop !7

10:                                               ; preds = %.lr.ph19, %7
  %11 = phi i32 [ 15625, %.lr.ph19 ], [ %12, %7 ]
  %12 = shl nsw i32 %11, 1
  %13 = load double, ptr @one, align 8
  %14 = sitofp i32 %12 to double
  %15 = fdiv double %13, %14
  store double %13, ptr %1, align 8
  %16 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not.not17 = icmp slt i32 1, %12
  br i1 %.not.not17, label %.lr.ph, label %31

.lr.ph:                                           ; preds = %10
  %.pre = load double, ptr @D1, align 8
  %.pre64 = load double, ptr @D2, align 8
  %.pre65 = load double, ptr @D3, align 8
  %.pre66 = load double, ptr @E2, align 8
  %.pre67 = load double, ptr @E3, align 8
  br label %17

17:                                               ; preds = %.lr.ph, %17
  %18 = phi i32 [ 1, %.lr.ph ], [ %30, %17 ]
  %19 = phi double [ 0.000000e+00, %.lr.ph ], [ %29, %17 ]
  %20 = phi double [ 0.000000e+00, %.lr.ph ], [ %21, %17 ]
  %21 = fadd double %20, %13
  %22 = fmul double %21, %15
  %23 = call double @llvm.fmuladd.f64(double %22, double %.pre65, double %.pre64)
  %24 = call double @llvm.fmuladd.f64(double %22, double %23, double %.pre)
  %25 = call double @llvm.fmuladd.f64(double %22, double %.pre67, double %.pre66)
  %26 = call double @llvm.fmuladd.f64(double %22, double %25, double %.pre)
  %27 = call double @llvm.fmuladd.f64(double %22, double %26, double %13)
  %28 = fdiv double %24, %27
  %29 = fadd double %19, %28
  %30 = add nuw nsw i32 %18, 1
  %.not.not = icmp slt i32 %30, %12
  br i1 %.not.not, label %17, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %17
  br label %31

31:                                               ; preds = %._crit_edge, %10
  %.lcssa9 = phi double [ %29, %._crit_edge ], [ 0.000000e+00, %10 ]
  %32 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %33 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %33, ptr @sa, align 8
  %34 = icmp eq i32 %11, 256000000
  br i1 %34, label %35, label %7

35:                                               ; preds = %31
  br label %36

..loopexit_crit_edge:                             ; preds = %7
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %0
  %.lcssa14 = phi double [ %.lcssa9, %..loopexit_crit_edge ], [ undef, %0 ]
  %.lcssa12 = phi double [ %15, %..loopexit_crit_edge ], [ undef, %0 ]
  %.lcssa10 = phi i32 [ %12, %..loopexit_crit_edge ], [ 15625, %0 ]
  br label %36

36:                                               ; preds = %.loopexit, %35
  %37 = phi double [ %.lcssa9, %35 ], [ %.lcssa14, %.loopexit ]
  %38 = phi double [ %15, %35 ], [ %.lcssa12, %.loopexit ]
  %39 = phi i32 [ 512000000, %35 ], [ %.lcssa10, %.loopexit ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %40 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %41

41:                                               ; preds = %41, %36
  %42 = phi i32 [ %43, %41 ], [ 1, %36 ]
  %.not.not3 = icmp slt i32 %42, %39
  %43 = add nuw nsw i32 %42, 1
  br i1 %.not.not3, label %41, label %44, !llvm.loop !10

44:                                               ; preds = %41
  %45 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %46 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %47 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %48 = fmul double %46, %47
  %49 = fcmp olt double %48, 0.000000e+00
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %44
  %52 = phi double [ 0.000000e+00, %50 ], [ %48, %44 ]
  store double %52, ptr @nulltime, align 8
  %53 = load double, ptr @sa, align 8
  %54 = fneg double %52
  %55 = call double @llvm.fmuladd.f64(double %46, double %53, double %54)
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
  %71 = call double @llvm.fmuladd.f64(double %70, double %37, double %69)
  %72 = fmul double %38, %71
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
  store i32 %80, ptr %2, align 4
  %87 = load double, ptr @five, align 8
  %88 = fneg double %87
  %89 = load double, ptr @one, align 8
  %90 = fneg double %89
  store double %90, ptr @sa, align 8
  %91 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not23 = icmp sgt i32 1, %80
  br i1 %.not23, label %99, label %.lr.ph25

.lr.ph25:                                         ; preds = %51
  %.pre68 = load double, ptr @sa, align 8
  br label %92

92:                                               ; preds = %.lr.ph25, %92
  %93 = phi double [ %.pre68, %.lr.ph25 ], [ %97, %92 ]
  %94 = phi i32 [ 1, %.lr.ph25 ], [ %98, %92 ]
  %95 = phi double [ %88, %.lr.ph25 ], [ %96, %92 ]
  %96 = fneg double %95
  %97 = fsub double %93, %95
  store double %97, ptr @sa, align 8
  %98 = add nuw nsw i32 %94, 1
  %.not = icmp sgt i32 %98, %80
  br i1 %.not, label %._crit_edge26, label %92, !llvm.loop !11

._crit_edge26:                                    ; preds = %92
  br label %99

99:                                               ; preds = %._crit_edge26, %51
  %.lcssa8 = phi double [ %96, %._crit_edge26 ], [ %88, %51 ]
  %100 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %101 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %102 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %103 = fmul double %101, %102
  %104 = fcmp olt double %103, 0.000000e+00
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  br label %106

106:                                              ; preds = %105, %99
  %storemerge = phi double [ 0.000000e+00, %105 ], [ %103, %99 ]
  store double %storemerge, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %107 = sitofp i32 %80 to double
  store double %107, ptr @sc, align 8
  %108 = load double, ptr @sa, align 8
  store double 0.000000e+00, ptr %1, align 8
  %109 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br i1 %.not23, label %127, label %.lr.ph30

.lr.ph30:                                         ; preds = %106
  %.pre69 = load double, ptr @sa, align 8
  %.pre70 = load double, ptr @two, align 8
  br label %110

110:                                              ; preds = %.lr.ph30, %110
  %111 = phi double [ 0.000000e+00, %.lr.ph30 ], [ %125, %110 ]
  %112 = phi double [ %.pre69, %.lr.ph30 ], [ %119, %110 ]
  %113 = phi i32 [ 1, %.lr.ph30 ], [ %126, %110 ]
  %114 = phi double [ 0.000000e+00, %.lr.ph30 ], [ %122, %110 ]
  %115 = phi double [ 0.000000e+00, %.lr.ph30 ], [ %123, %110 ]
  %116 = phi double [ %.lcssa8, %.lr.ph30 ], [ %118, %110 ]
  %117 = phi double [ %108, %.lr.ph30 ], [ %120, %110 ]
  %118 = fneg double %116
  %119 = fsub double %112, %116
  store double %119, ptr @sa, align 8
  %120 = fadd double %117, %.pre70
  %121 = fsub double %118, %120
  %122 = fadd double %114, %121
  %123 = call double @llvm.fmuladd.f64(double %116, double %120, double %115)
  %124 = fdiv double %116, %120
  %125 = fsub double %111, %124
  store double %125, ptr %1, align 8
  %126 = add nuw nsw i32 %113, 1
  %.not4 = icmp sgt i32 %126, %80
  br i1 %.not4, label %._crit_edge31, label %110, !llvm.loop !12

._crit_edge31:                                    ; preds = %110
  br label %127

127:                                              ; preds = %._crit_edge31, %106
  %128 = phi double [ %125, %._crit_edge31 ], [ 0.000000e+00, %106 ]
  %.lcssa7 = phi double [ %123, %._crit_edge31 ], [ 0.000000e+00, %106 ]
  %.lcssa6 = phi double [ %122, %._crit_edge31 ], [ 0.000000e+00, %106 ]
  %129 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %130 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %131 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %132 = fmul double %130, %131
  store double %132, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %133 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %134 = fsub double %132, %133
  %135 = fdiv double %134, 7.000000e+00
  store double %135, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %136 = load double, ptr @sa, align 8
  %137 = fmul double %136, %.lcssa6
  %138 = load double, ptr @sc, align 8
  %139 = fdiv double %137, %138
  %140 = fptosi double %139 to i32
  store i32 %140, ptr %2, align 4
  %141 = load double, ptr @four, align 8
  %142 = fmul double %141, %128
  %143 = load double, ptr @five, align 8
  %144 = fdiv double %142, %143
  store double %144, ptr @sa, align 8
  %145 = fdiv double %143, %.lcssa7
  %146 = fadd double %144, %145
  store double %146, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %147 = fmul double %.lcssa7, %.lcssa7
  %148 = fmul double %147, %.lcssa7
  %149 = fdiv double 3.125000e+01, %148
  %150 = fsub double %146, %149
  store double %150, ptr @piprg, align 8
  %151 = load double, ptr @piref, align 8
  %152 = fsub double %150, %151
  store double %152, ptr @pierr, align 8
  %153 = load double, ptr @one, align 8
  %154 = fdiv double %153, %135
  store double %154, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %155 = fmul double %152, 1.000000e-30
  %156 = fmul double %134, 1.000000e-30
  %157 = fmul double %154, 1.000000e-30
  %158 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %155, double noundef %156, double noundef %157) #4
  %159 = load double, ptr @piref, align 8
  %160 = load double, ptr @three, align 8
  %161 = sitofp i32 %140 to double
  %162 = fmul double %160, %161
  %163 = fdiv double %159, %162
  %164 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not5.not34 = icmp slt i32 1, %140
  br i1 %.not5.not34, label %.lr.ph36, label %182

.lr.ph36:                                         ; preds = %127
  %.pre71 = load double, ptr @one, align 8
  %.pre72 = load double, ptr @A6, align 8
  %.pre73 = load double, ptr @A5, align 8
  %.pre74 = load double, ptr @A4, align 8
  %.pre75 = load double, ptr @A3, align 8
  %.pre76 = load double, ptr @A2, align 8
  %.pre77 = load double, ptr @A1, align 8
  br label %165

165:                                              ; preds = %.lr.ph36, %165
  %166 = phi i32 [ 1, %.lr.ph36 ], [ %181, %165 ]
  %167 = phi double [ 0.000000e+00, %.lr.ph36 ], [ %180, %165 ]
  %168 = phi double [ 0.000000e+00, %.lr.ph36 ], [ %169, %165 ]
  %169 = fadd double %168, %.pre71
  %170 = fmul double %169, %163
  %171 = fmul double %170, %170
  store double %171, ptr %1, align 8
  %172 = fneg double %.pre73
  %173 = call double @llvm.fmuladd.f64(double %.pre72, double %171, double %172)
  %174 = call double @llvm.fmuladd.f64(double %173, double %171, double %.pre74)
  %175 = fneg double %.pre75
  %176 = call double @llvm.fmuladd.f64(double %174, double %171, double %175)
  %177 = call double @llvm.fmuladd.f64(double %176, double %171, double %.pre76)
  %178 = call double @llvm.fmuladd.f64(double %177, double %171, double %.pre77)
  %179 = call double @llvm.fmuladd.f64(double %178, double %171, double %.pre71)
  %180 = call double @llvm.fmuladd.f64(double %170, double %179, double %167)
  %181 = add nuw nsw i32 %166, 1
  %.not5.not = icmp slt i32 %181, %140
  br i1 %.not5.not, label %165, label %._crit_edge37, !llvm.loop !13

._crit_edge37:                                    ; preds = %165
  br label %182

182:                                              ; preds = %._crit_edge37, %127
  %.lcssa5 = phi double [ %180, %._crit_edge37 ], [ 0.000000e+00, %127 ]
  %183 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %184 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %185 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %186 = load double, ptr @nulltime, align 8
  %187 = fneg double %186
  %188 = call double @llvm.fmuladd.f64(double %184, double %185, double %187)
  store double %188, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %189 = load double, ptr @piref, align 8
  %190 = load double, ptr @three, align 8
  %191 = fdiv double %189, %190
  %192 = fmul double %191, %191
  store double %192, ptr %1, align 8
  %193 = load double, ptr @A6, align 8
  %194 = load double, ptr @A5, align 8
  %195 = fneg double %194
  %196 = call double @llvm.fmuladd.f64(double %193, double %192, double %195)
  %197 = load double, ptr @A4, align 8
  %198 = call double @llvm.fmuladd.f64(double %196, double %192, double %197)
  %199 = load double, ptr @A3, align 8
  %200 = fneg double %199
  %201 = call double @llvm.fmuladd.f64(double %198, double %192, double %200)
  %202 = load double, ptr @A2, align 8
  %203 = call double @llvm.fmuladd.f64(double %201, double %192, double %202)
  %204 = load double, ptr @A1, align 8
  %205 = call double @llvm.fmuladd.f64(double %203, double %192, double %204)
  %206 = load double, ptr @one, align 8
  %207 = call double @llvm.fmuladd.f64(double %205, double %192, double %206)
  %208 = fmul double %191, %207
  store double %208, ptr @sa, align 8
  %209 = fdiv double %188, 1.700000e+01
  store double %209, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %210 = load double, ptr @two, align 8
  %211 = call double @llvm.fmuladd.f64(double %210, double %.lcssa5, double %208)
  %212 = fmul double %163, %211
  %213 = fdiv double %212, %210
  store double %213, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %214 = fadd double %213, -5.000000e-01
  store double %214, ptr @sc, align 8
  %215 = fdiv double %206, %209
  store double %215, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %216 = fmul double %214, 1.000000e-30
  %217 = fmul double %188, 1.000000e-30
  %218 = fmul double %215, 1.000000e-30
  %219 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %216, double noundef %217, double noundef %218) #4
  %220 = load double, ptr @A3, align 8
  %221 = fneg double %220
  store double %221, ptr @A3, align 8
  %222 = load double, ptr @A5, align 8
  %223 = fneg double %222
  store double %223, ptr @A5, align 8
  %224 = load double, ptr @piref, align 8
  %225 = load double, ptr @three, align 8
  %226 = fmul double %225, %161
  %227 = fdiv double %224, %226
  %228 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br i1 %.not5.not34, label %.lr.ph41, label %243

.lr.ph41:                                         ; preds = %182
  %.pre78 = load double, ptr @B6, align 8
  %.pre79 = load double, ptr @B5, align 8
  %.pre80 = load double, ptr @B4, align 8
  %.pre81 = load double, ptr @B3, align 8
  %.pre82 = load double, ptr @B2, align 8
  %.pre83 = load double, ptr @B1, align 8
  %.pre84 = load double, ptr @one, align 8
  br label %229

229:                                              ; preds = %.lr.ph41, %229
  %230 = phi i32 [ 1, %.lr.ph41 ], [ %242, %229 ]
  %231 = phi double [ 0.000000e+00, %.lr.ph41 ], [ %241, %229 ]
  %232 = uitofp nneg i32 %230 to double
  %233 = fmul double %227, %232
  %234 = fmul double %233, %233
  store double %234, ptr %1, align 8
  %235 = call double @llvm.fmuladd.f64(double %.pre78, double %234, double %.pre79)
  %236 = call double @llvm.fmuladd.f64(double %234, double %235, double %.pre80)
  %237 = call double @llvm.fmuladd.f64(double %234, double %236, double %.pre81)
  %238 = call double @llvm.fmuladd.f64(double %234, double %237, double %.pre82)
  %239 = call double @llvm.fmuladd.f64(double %234, double %238, double %.pre83)
  %240 = call double @llvm.fmuladd.f64(double %234, double %239, double %231)
  %241 = fadd double %240, %.pre84
  %242 = add nuw nsw i32 %230, 1
  %.not6.not = icmp slt i32 %242, %140
  br i1 %.not6.not, label %229, label %._crit_edge42, !llvm.loop !14

._crit_edge42:                                    ; preds = %229
  br label %243

243:                                              ; preds = %._crit_edge42, %182
  %.lcssa4 = phi double [ %241, %._crit_edge42 ], [ 0.000000e+00, %182 ]
  %244 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %245 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %246 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %247 = load double, ptr @nulltime, align 8
  %248 = fneg double %247
  %249 = call double @llvm.fmuladd.f64(double %245, double %246, double %248)
  store double %249, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %250 = load double, ptr @piref, align 8
  %251 = load double, ptr @three, align 8
  %252 = fdiv double %250, %251
  %253 = fmul double %252, %252
  store double %253, ptr %1, align 8
  %254 = load double, ptr @B6, align 8
  %255 = load double, ptr @B5, align 8
  %256 = call double @llvm.fmuladd.f64(double %254, double %253, double %255)
  %257 = load double, ptr @B4, align 8
  %258 = call double @llvm.fmuladd.f64(double %253, double %256, double %257)
  %259 = load double, ptr @B3, align 8
  %260 = call double @llvm.fmuladd.f64(double %253, double %258, double %259)
  %261 = load double, ptr @B2, align 8
  %262 = call double @llvm.fmuladd.f64(double %253, double %260, double %261)
  %263 = load double, ptr @B1, align 8
  %264 = call double @llvm.fmuladd.f64(double %253, double %262, double %263)
  %265 = load double, ptr @one, align 8
  %266 = call double @llvm.fmuladd.f64(double %253, double %264, double %265)
  store double %266, ptr @sa, align 8
  %267 = fdiv double %249, 1.500000e+01
  store double %267, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %268 = fadd double %266, %265
  %269 = load double, ptr @two, align 8
  %270 = call double @llvm.fmuladd.f64(double %269, double %.lcssa4, double %268)
  %271 = fmul double %227, %270
  %272 = fdiv double %271, %269
  store double %272, ptr @sa, align 8
  store double %253, ptr %1, align 8
  %273 = load double, ptr @A6, align 8
  %274 = load double, ptr @A5, align 8
  %275 = call double @llvm.fmuladd.f64(double %273, double %253, double %274)
  %276 = load double, ptr @A4, align 8
  %277 = call double @llvm.fmuladd.f64(double %275, double %253, double %276)
  %278 = load double, ptr @A3, align 8
  %279 = call double @llvm.fmuladd.f64(double %277, double %253, double %278)
  %280 = load double, ptr @A2, align 8
  %281 = call double @llvm.fmuladd.f64(double %279, double %253, double %280)
  %282 = load double, ptr @A1, align 8
  %283 = call double @llvm.fmuladd.f64(double %281, double %253, double %282)
  %284 = load double, ptr @A0, align 8
  %285 = call double @llvm.fmuladd.f64(double %283, double %253, double %284)
  %286 = fmul double %252, %285
  store double %286, ptr @sb, align 8
  %287 = fsub double %272, %286
  store double %287, ptr @sc, align 8
  %288 = fdiv double %265, %267
  store double %288, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %289 = fmul double %287, 1.000000e-30
  %290 = fmul double %249, 1.000000e-30
  %291 = fmul double %288, 1.000000e-30
  %292 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %289, double noundef %290, double noundef %291) #4
  %293 = load double, ptr @piref, align 8
  %294 = load double, ptr @three, align 8
  %295 = fmul double %294, %161
  %296 = fdiv double %293, %295
  %297 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br i1 %.not5.not34, label %.lr.ph46, label %320

.lr.ph46:                                         ; preds = %243
  %.pre85 = load double, ptr @A6, align 8
  %.pre86 = load double, ptr @A5, align 8
  %.pre87 = load double, ptr @A4, align 8
  %.pre88 = load double, ptr @A3, align 8
  %.pre89 = load double, ptr @A2, align 8
  %.pre90 = load double, ptr @A1, align 8
  %.pre91 = load double, ptr @one, align 8
  %.pre92 = load double, ptr @B6, align 8
  %.pre93 = load double, ptr @B5, align 8
  %.pre94 = load double, ptr @B4, align 8
  %.pre95 = load double, ptr @B3, align 8
  %.pre96 = load double, ptr @B2, align 8
  %.pre97 = load double, ptr @B1, align 8
  br label %298

298:                                              ; preds = %.lr.ph46, %298
  %299 = phi i32 [ 1, %.lr.ph46 ], [ %319, %298 ]
  %300 = phi double [ 0.000000e+00, %.lr.ph46 ], [ %318, %298 ]
  %301 = uitofp nneg i32 %299 to double
  %302 = fmul double %296, %301
  %303 = fmul double %302, %302
  store double %303, ptr %1, align 8
  %304 = call double @llvm.fmuladd.f64(double %.pre85, double %303, double %.pre86)
  %305 = call double @llvm.fmuladd.f64(double %304, double %303, double %.pre87)
  %306 = call double @llvm.fmuladd.f64(double %305, double %303, double %.pre88)
  %307 = call double @llvm.fmuladd.f64(double %306, double %303, double %.pre89)
  %308 = call double @llvm.fmuladd.f64(double %307, double %303, double %.pre90)
  %309 = call double @llvm.fmuladd.f64(double %308, double %303, double %.pre91)
  %310 = fmul double %302, %309
  %311 = call double @llvm.fmuladd.f64(double %.pre92, double %303, double %.pre93)
  %312 = call double @llvm.fmuladd.f64(double %303, double %311, double %.pre94)
  %313 = call double @llvm.fmuladd.f64(double %303, double %312, double %.pre95)
  %314 = call double @llvm.fmuladd.f64(double %303, double %313, double %.pre96)
  %315 = call double @llvm.fmuladd.f64(double %303, double %314, double %.pre97)
  %316 = call double @llvm.fmuladd.f64(double %303, double %315, double %.pre91)
  %317 = fdiv double %310, %316
  %318 = fadd double %300, %317
  %319 = add nuw nsw i32 %299, 1
  %.not7.not = icmp slt i32 %319, %140
  br i1 %.not7.not, label %298, label %._crit_edge47, !llvm.loop !15

._crit_edge47:                                    ; preds = %298
  br label %320

320:                                              ; preds = %._crit_edge47, %243
  %.lcssa3 = phi double [ %318, %._crit_edge47 ], [ 0.000000e+00, %243 ]
  %321 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %322 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %323 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %324 = load double, ptr @nulltime, align 8
  %325 = fneg double %324
  %326 = call double @llvm.fmuladd.f64(double %322, double %323, double %325)
  store double %326, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %327 = load double, ptr @piref, align 8
  %328 = load double, ptr @three, align 8
  %329 = fdiv double %327, %328
  %330 = fmul double %329, %329
  store double %330, ptr %1, align 8
  %331 = load double, ptr @A6, align 8
  %332 = load double, ptr @A5, align 8
  %333 = call double @llvm.fmuladd.f64(double %331, double %330, double %332)
  %334 = load double, ptr @A4, align 8
  %335 = call double @llvm.fmuladd.f64(double %333, double %330, double %334)
  %336 = load double, ptr @A3, align 8
  %337 = call double @llvm.fmuladd.f64(double %335, double %330, double %336)
  %338 = load double, ptr @A2, align 8
  %339 = call double @llvm.fmuladd.f64(double %337, double %330, double %338)
  %340 = load double, ptr @A1, align 8
  %341 = call double @llvm.fmuladd.f64(double %339, double %330, double %340)
  %342 = load double, ptr @one, align 8
  %343 = call double @llvm.fmuladd.f64(double %341, double %330, double %342)
  %344 = fmul double %329, %343
  store double %344, ptr @sa, align 8
  %345 = load double, ptr @B6, align 8
  %346 = load double, ptr @B5, align 8
  %347 = call double @llvm.fmuladd.f64(double %345, double %330, double %346)
  %348 = load double, ptr @B4, align 8
  %349 = call double @llvm.fmuladd.f64(double %330, double %347, double %348)
  %350 = load double, ptr @B3, align 8
  %351 = call double @llvm.fmuladd.f64(double %330, double %349, double %350)
  %352 = load double, ptr @B2, align 8
  %353 = call double @llvm.fmuladd.f64(double %330, double %351, double %352)
  %354 = load double, ptr @B1, align 8
  %355 = call double @llvm.fmuladd.f64(double %330, double %353, double %354)
  %356 = call double @llvm.fmuladd.f64(double %330, double %355, double %342)
  store double %356, ptr @sb, align 8
  %357 = fdiv double %344, %356
  store double %357, ptr @sa, align 8
  %358 = fdiv double %326, 2.900000e+01
  store double %358, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %359 = load double, ptr @two, align 8
  %360 = call double @llvm.fmuladd.f64(double %359, double %.lcssa3, double %357)
  %361 = fmul double %296, %360
  %362 = fdiv double %361, %359
  store double %362, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %363 = fadd double %362, f0xBFE62E42FEFA39EF
  store double %363, ptr @sc, align 8
  %364 = fdiv double %342, %358
  store double %364, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %365 = fmul double %363, 1.000000e-30
  %366 = fmul double %326, 1.000000e-30
  %367 = fmul double %364, 1.000000e-30
  %368 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %365, double noundef %366, double noundef %367) #4
  %369 = load double, ptr @piref, align 8
  %370 = load double, ptr @four, align 8
  %371 = fmul double %370, %161
  %372 = fdiv double %369, %371
  %373 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br i1 %.not5.not34, label %.lr.ph51, label %395

.lr.ph51:                                         ; preds = %320
  %.pre98 = load double, ptr @A6, align 8
  %.pre99 = load double, ptr @A5, align 8
  %.pre100 = load double, ptr @A4, align 8
  %.pre101 = load double, ptr @A3, align 8
  %.pre102 = load double, ptr @A2, align 8
  %.pre103 = load double, ptr @A1, align 8
  %.pre104 = load double, ptr @one, align 8
  %.pre105 = load double, ptr @B6, align 8
  %.pre106 = load double, ptr @B5, align 8
  %.pre107 = load double, ptr @B4, align 8
  %.pre108 = load double, ptr @B3, align 8
  %.pre109 = load double, ptr @B2, align 8
  %.pre110 = load double, ptr @B1, align 8
  br label %374

374:                                              ; preds = %.lr.ph51, %374
  %375 = phi i32 [ 1, %.lr.ph51 ], [ %394, %374 ]
  %376 = phi double [ 0.000000e+00, %.lr.ph51 ], [ %393, %374 ]
  %377 = uitofp nneg i32 %375 to double
  %378 = fmul double %372, %377
  %379 = fmul double %378, %378
  store double %379, ptr %1, align 8
  %380 = call double @llvm.fmuladd.f64(double %.pre98, double %379, double %.pre99)
  %381 = call double @llvm.fmuladd.f64(double %380, double %379, double %.pre100)
  %382 = call double @llvm.fmuladd.f64(double %381, double %379, double %.pre101)
  %383 = call double @llvm.fmuladd.f64(double %382, double %379, double %.pre102)
  %384 = call double @llvm.fmuladd.f64(double %383, double %379, double %.pre103)
  %385 = call double @llvm.fmuladd.f64(double %384, double %379, double %.pre104)
  %386 = fmul double %378, %385
  %387 = call double @llvm.fmuladd.f64(double %.pre105, double %379, double %.pre106)
  %388 = call double @llvm.fmuladd.f64(double %379, double %387, double %.pre107)
  %389 = call double @llvm.fmuladd.f64(double %379, double %388, double %.pre108)
  %390 = call double @llvm.fmuladd.f64(double %379, double %389, double %.pre109)
  %391 = call double @llvm.fmuladd.f64(double %379, double %390, double %.pre110)
  %392 = call double @llvm.fmuladd.f64(double %379, double %391, double %.pre104)
  %393 = call double @llvm.fmuladd.f64(double %386, double %392, double %376)
  %394 = add nuw nsw i32 %375, 1
  %.not8.not = icmp slt i32 %394, %140
  br i1 %.not8.not, label %374, label %._crit_edge52, !llvm.loop !16

._crit_edge52:                                    ; preds = %374
  br label %395

395:                                              ; preds = %._crit_edge52, %320
  %.lcssa2 = phi double [ %393, %._crit_edge52 ], [ 0.000000e+00, %320 ]
  %396 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %397 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %398 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %399 = load double, ptr @nulltime, align 8
  %400 = fneg double %399
  %401 = call double @llvm.fmuladd.f64(double %397, double %398, double %400)
  store double %401, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %402 = load double, ptr @piref, align 8
  %403 = load double, ptr @four, align 8
  %404 = fdiv double %402, %403
  %405 = fmul double %404, %404
  store double %405, ptr %1, align 8
  %406 = load double, ptr @A6, align 8
  %407 = load double, ptr @A5, align 8
  %408 = call double @llvm.fmuladd.f64(double %406, double %405, double %407)
  %409 = load double, ptr @A4, align 8
  %410 = call double @llvm.fmuladd.f64(double %408, double %405, double %409)
  %411 = load double, ptr @A3, align 8
  %412 = call double @llvm.fmuladd.f64(double %410, double %405, double %411)
  %413 = load double, ptr @A2, align 8
  %414 = call double @llvm.fmuladd.f64(double %412, double %405, double %413)
  %415 = load double, ptr @A1, align 8
  %416 = call double @llvm.fmuladd.f64(double %414, double %405, double %415)
  %417 = load double, ptr @one, align 8
  %418 = call double @llvm.fmuladd.f64(double %416, double %405, double %417)
  %419 = fmul double %404, %418
  store double %419, ptr @sa, align 8
  %420 = load double, ptr @B6, align 8
  %421 = load double, ptr @B5, align 8
  %422 = call double @llvm.fmuladd.f64(double %420, double %405, double %421)
  %423 = load double, ptr @B4, align 8
  %424 = call double @llvm.fmuladd.f64(double %405, double %422, double %423)
  %425 = load double, ptr @B3, align 8
  %426 = call double @llvm.fmuladd.f64(double %405, double %424, double %425)
  %427 = load double, ptr @B2, align 8
  %428 = call double @llvm.fmuladd.f64(double %405, double %426, double %427)
  %429 = load double, ptr @B1, align 8
  %430 = call double @llvm.fmuladd.f64(double %405, double %428, double %429)
  %431 = call double @llvm.fmuladd.f64(double %405, double %430, double %417)
  store double %431, ptr @sb, align 8
  %432 = fmul double %419, %431
  store double %432, ptr @sa, align 8
  %433 = fdiv double %401, 2.900000e+01
  store double %433, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %434 = load double, ptr @two, align 8
  %435 = call double @llvm.fmuladd.f64(double %434, double %.lcssa2, double %432)
  %436 = fmul double %372, %435
  %437 = fdiv double %436, %434
  store double %437, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %438 = fadd double %437, -2.500000e-01
  store double %438, ptr @sc, align 8
  %439 = fdiv double %417, %433
  store double %439, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %440 = fmul double %438, 1.000000e-30
  %441 = fmul double %401, 1.000000e-30
  %442 = fmul double %439, 1.000000e-30
  %443 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %440, double noundef %441, double noundef %442) #4
  %444 = load double, ptr @one, align 8
  store double %444, ptr %1, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %445 = fdiv double f0x40599541F7F192A4, %161
  %446 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br i1 %.not5.not34, label %.lr.ph56, label %463

.lr.ph56:                                         ; preds = %395
  br label %447

447:                                              ; preds = %.lr.ph56, %447
  %448 = phi i32 [ 1, %.lr.ph56 ], [ %462, %447 ]
  %449 = phi double [ 0.000000e+00, %.lr.ph56 ], [ %461, %447 ]
  %450 = uitofp nneg i32 %448 to double
  %451 = fmul double %445, %450
  %452 = fmul double %451, %451
  %453 = fadd double %451, %444
  %454 = fdiv double %444, %453
  %455 = fsub double %449, %454
  %456 = fadd double %452, %444
  %457 = fdiv double %451, %456
  %458 = fsub double %455, %457
  %459 = call double @llvm.fmuladd.f64(double %451, double %452, double %444)
  %460 = fdiv double %452, %459
  %461 = fsub double %458, %460
  %462 = add nuw nsw i32 %448, 1
  %.not9.not = icmp slt i32 %462, %140
  br i1 %.not9.not, label %447, label %._crit_edge57, !llvm.loop !17

._crit_edge57:                                    ; preds = %447
  br label %463

463:                                              ; preds = %._crit_edge57, %395
  %.lcssa1 = phi double [ %461, %._crit_edge57 ], [ 0.000000e+00, %395 ]
  %464 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %465 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %466 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %467 = load double, ptr @nulltime, align 8
  %468 = fneg double %467
  %469 = call double @llvm.fmuladd.f64(double %465, double %466, double %468)
  store double %469, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %470 = fdiv double %469, 1.200000e+01
  store double %470, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %471 = load double, ptr @sa, align 8
  %472 = fmul double %471, %471
  %473 = fneg double %444
  %474 = fadd double %471, %444
  %475 = fdiv double %444, %474
  %476 = fsub double %473, %475
  %477 = fadd double %472, %444
  %478 = fdiv double %471, %477
  %479 = fsub double %476, %478
  %480 = call double @llvm.fmuladd.f64(double %471, double %472, double %444)
  %481 = fdiv double %472, %480
  %482 = fsub double %479, %481
  store double %482, ptr @sa, align 8
  %483 = fmul nnan double %445, 1.800000e+01
  %484 = load double, ptr @two, align 8
  %485 = call double @llvm.fmuladd.f64(double %484, double %.lcssa1, double %482)
  %486 = fmul double %483, %485
  store double %486, ptr @sa, align 8
  %487 = fptosi double %486 to i32
  %488 = mul nsw i32 %487, -2000
  store i32 %488, ptr %2, align 4
  %489 = sitofp i32 %488 to double
  %490 = load double, ptr @scale, align 8
  %491 = fdiv double %489, %490
  %492 = fptosi double %491 to i32
  store i32 %492, ptr %2, align 4
  %493 = fadd double %486, 5.002000e+02
  store double %493, ptr @sc, align 8
  %494 = load double, ptr @one, align 8
  %495 = fdiv double %494, %470
  store double %495, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %496 = fmul double %493, 1.000000e-30
  %497 = fmul double %469, 1.000000e-30
  %498 = fmul double %495, 1.000000e-30
  %499 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %496, double noundef %497, double noundef %498) #4
  %500 = load double, ptr @piref, align 8
  %501 = load double, ptr @three, align 8
  %502 = sitofp i32 %492 to double
  %503 = fmul double %501, %502
  %504 = fdiv double %500, %503
  %505 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not10.not59 = icmp slt i32 1, %492
  br i1 %.not10.not59, label %.lr.ph61, label %528

.lr.ph61:                                         ; preds = %463
  %.pre111 = load double, ptr @B6, align 8
  %.pre112 = load double, ptr @B5, align 8
  %.pre113 = load double, ptr @B4, align 8
  %.pre114 = load double, ptr @B3, align 8
  %.pre115 = load double, ptr @B2, align 8
  %.pre116 = load double, ptr @B1, align 8
  %.pre117 = load double, ptr @one, align 8
  %.pre118 = load double, ptr @A6, align 8
  %.pre119 = load double, ptr @A5, align 8
  %.pre120 = load double, ptr @A4, align 8
  %.pre121 = load double, ptr @A3, align 8
  %.pre122 = load double, ptr @A2, align 8
  %.pre123 = load double, ptr @A1, align 8
  br label %506

506:                                              ; preds = %.lr.ph61, %506
  %507 = phi i32 [ 1, %.lr.ph61 ], [ %527, %506 ]
  %508 = phi double [ 0.000000e+00, %.lr.ph61 ], [ %526, %506 ]
  %509 = uitofp nneg i32 %507 to double
  %510 = fmul double %504, %509
  %511 = fmul double %510, %510
  store double %511, ptr %1, align 8
  %512 = call double @llvm.fmuladd.f64(double %.pre111, double %511, double %.pre112)
  %513 = call double @llvm.fmuladd.f64(double %511, double %512, double %.pre113)
  %514 = call double @llvm.fmuladd.f64(double %511, double %513, double %.pre114)
  %515 = call double @llvm.fmuladd.f64(double %511, double %514, double %.pre115)
  %516 = call double @llvm.fmuladd.f64(double %511, double %515, double %.pre116)
  %517 = call double @llvm.fmuladd.f64(double %511, double %516, double %.pre117)
  %518 = fmul double %517, %517
  %519 = fmul double %518, %510
  %520 = call double @llvm.fmuladd.f64(double %.pre118, double %511, double %.pre119)
  %521 = call double @llvm.fmuladd.f64(double %520, double %511, double %.pre120)
  %522 = call double @llvm.fmuladd.f64(double %521, double %511, double %.pre121)
  %523 = call double @llvm.fmuladd.f64(double %522, double %511, double %.pre122)
  %524 = call double @llvm.fmuladd.f64(double %523, double %511, double %.pre123)
  %525 = call double @llvm.fmuladd.f64(double %524, double %511, double %.pre117)
  %526 = call double @llvm.fmuladd.f64(double %519, double %525, double %508)
  %527 = add nuw nsw i32 %507, 1
  %.not10.not = icmp slt i32 %527, %492
  br i1 %.not10.not, label %506, label %._crit_edge62, !llvm.loop !18

._crit_edge62:                                    ; preds = %506
  br label %528

528:                                              ; preds = %._crit_edge62, %463
  %.lcssa = phi double [ %526, %._crit_edge62 ], [ 0.000000e+00, %463 ]
  %529 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %530 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %531 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %532 = load double, ptr @nulltime, align 8
  %533 = fneg double %532
  %534 = call double @llvm.fmuladd.f64(double %530, double %531, double %533)
  store double %534, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %535 = load double, ptr @piref, align 8
  %536 = load double, ptr @three, align 8
  %537 = fdiv double %535, %536
  %538 = fmul double %537, %537
  store double %538, ptr %1, align 8
  %539 = load double, ptr @A6, align 8
  %540 = load double, ptr @A5, align 8
  %541 = call double @llvm.fmuladd.f64(double %539, double %538, double %540)
  %542 = load double, ptr @A4, align 8
  %543 = call double @llvm.fmuladd.f64(double %541, double %538, double %542)
  %544 = load double, ptr @A3, align 8
  %545 = call double @llvm.fmuladd.f64(double %543, double %538, double %544)
  %546 = load double, ptr @A2, align 8
  %547 = call double @llvm.fmuladd.f64(double %545, double %538, double %546)
  %548 = load double, ptr @A1, align 8
  %549 = call double @llvm.fmuladd.f64(double %547, double %538, double %548)
  %550 = load double, ptr @one, align 8
  %551 = call double @llvm.fmuladd.f64(double %549, double %538, double %550)
  %552 = fmul double %537, %551
  store double %552, ptr @sa, align 8
  %553 = load double, ptr @B6, align 8
  %554 = load double, ptr @B5, align 8
  %555 = call double @llvm.fmuladd.f64(double %553, double %538, double %554)
  %556 = load double, ptr @B4, align 8
  %557 = call double @llvm.fmuladd.f64(double %538, double %555, double %556)
  %558 = load double, ptr @B3, align 8
  %559 = call double @llvm.fmuladd.f64(double %538, double %557, double %558)
  %560 = load double, ptr @B2, align 8
  %561 = call double @llvm.fmuladd.f64(double %538, double %559, double %560)
  %562 = load double, ptr @B1, align 8
  %563 = call double @llvm.fmuladd.f64(double %538, double %561, double %562)
  %564 = call double @llvm.fmuladd.f64(double %538, double %563, double %550)
  store double %564, ptr @sb, align 8
  %565 = fmul double %552, %564
  %566 = fmul double %565, %564
  store double %566, ptr @sa, align 8
  %567 = fdiv double %534, 3.000000e+01
  store double %567, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %568 = load double, ptr @two, align 8
  %569 = call double @llvm.fmuladd.f64(double %568, double %.lcssa, double %566)
  %570 = fmul double %504, %569
  %571 = fdiv double %570, %568
  store double %571, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %572 = fadd double %571, f0xBFD2AAAAAAAAAAAB
  store double %572, ptr @sc, align 8
  %573 = fdiv double %550, %567
  store double %573, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %574 = fmul double %572, 1.000000e-30
  %575 = fmul double %534, 1.000000e-30
  %576 = fmul double %573, 1.000000e-30
  %577 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %574, double noundef %575, double noundef %576) #4
  %578 = load double, ptr @five, align 8
  %579 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %580 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %581 = fsub double %579, %580
  %582 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %583 = call double @llvm.fmuladd.f64(double %578, double %581, double %582)
  %584 = fdiv double %583, 5.200000e+01
  store double %584, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %585 = load double, ptr @one, align 8
  %586 = fdiv double %585, %584
  store double %586, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %587 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %588 = fadd double %587, %582
  %589 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %590 = fadd double %588, %589
  %591 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %592 = fadd double %590, %591
  %593 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %594 = fadd double %592, %593
  store double %594, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %595 = load double, ptr @four, align 8
  %596 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %597 = call double @llvm.fmuladd.f64(double %595, double %596, double %594)
  %598 = fdiv double %597, 1.520000e+02
  store double %598, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %599 = fdiv double %585, %598
  store double %599, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %594, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %600 = fadd double %594, %596
  %601 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %602 = fadd double %600, %601
  %603 = fdiv double %602, 1.460000e+02
  store double %603, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %604 = fdiv double %585, %603
  store double %604, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %605 = fadd double %582, %589
  %606 = fadd double %605, %593
  %607 = fadd double %606, %601
  %608 = fdiv double %607, 9.100000e+01
  store double %608, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %609 = fdiv double %585, %608
  store double %609, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar11 = call i32 @putchar(i32 10)
  %610 = load i32, ptr %2, align 4
  %611 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %610) #4
  %612 = load double, ptr @nulltime, align 8
  %613 = fmul double %612, 1.000000e-30
  %614 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %613) #4
  %615 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %616 = fmul double %615, 1.000000e-30
  %617 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %616) #4
  %618 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %619 = fmul double %618, 1.000000e-30
  %620 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %619) #4
  %621 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %622 = fmul double %621, 1.000000e-30
  %623 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %622) #4
  %624 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %625 = fmul double %624, 1.000000e-30
  %626 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %625) #4
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
