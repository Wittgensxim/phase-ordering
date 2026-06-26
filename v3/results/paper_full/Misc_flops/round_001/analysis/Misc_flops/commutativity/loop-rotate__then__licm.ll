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
  br label %14

7:                                                ; preds = %40
  %8 = phi double [ %.lcssa9, %40 ]
  %9 = phi double [ %19, %40 ]
  %10 = phi i32 [ %16, %40 ]
  %11 = phi double [ %42, %40 ]
  %12 = load double, ptr @TLimit, align 8
  %13 = fcmp olt double %11, %12
  br i1 %13, label %14, label %..loopexit_crit_edge, !llvm.loop !7

14:                                               ; preds = %.lr.ph19, %7
  %15 = phi i32 [ 15625, %.lr.ph19 ], [ %10, %7 ]
  %16 = shl nsw i32 %15, 1
  %17 = load double, ptr @one, align 8
  %18 = sitofp i32 %16 to double
  %19 = fdiv double %17, %18
  %20 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not.not17 = icmp slt i32 1, %16
  br i1 %.not.not17, label %.lr.ph, label %40

.lr.ph:                                           ; preds = %14
  %21 = load double, ptr @D1, align 8
  %22 = load double, ptr @D2, align 8
  %23 = load double, ptr @D3, align 8
  %24 = load double, ptr @E2, align 8
  %25 = load double, ptr @E3, align 8
  br label %26

26:                                               ; preds = %.lr.ph, %26
  %27 = phi i32 [ 1, %.lr.ph ], [ %39, %26 ]
  %28 = phi double [ 0.000000e+00, %.lr.ph ], [ %38, %26 ]
  %29 = phi double [ 0.000000e+00, %.lr.ph ], [ %30, %26 ]
  %30 = fadd double %29, %17
  %31 = fmul double %30, %19
  %32 = call double @llvm.fmuladd.f64(double %31, double %23, double %22)
  %33 = call double @llvm.fmuladd.f64(double %31, double %32, double %21)
  %34 = call double @llvm.fmuladd.f64(double %31, double %25, double %24)
  %35 = call double @llvm.fmuladd.f64(double %31, double %34, double %21)
  %36 = call double @llvm.fmuladd.f64(double %31, double %35, double %17)
  %37 = fdiv double %33, %36
  %38 = fadd double %28, %37
  %39 = add nuw nsw i32 %27, 1
  %.not.not = icmp slt i32 %39, %16
  br i1 %.not.not, label %26, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %26
  %split = phi double [ %38, %26 ]
  br label %40

40:                                               ; preds = %._crit_edge, %14
  %.lcssa9 = phi double [ %split, %._crit_edge ], [ 0.000000e+00, %14 ]
  %41 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %42 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %42, ptr @sa, align 8
  %43 = icmp eq i32 %15, 256000000
  br i1 %43, label %44, label %7

44:                                               ; preds = %40
  %.lcssa65 = phi double [ %17, %40 ]
  %.lcssa16 = phi double [ %19, %40 ]
  %.lcssa9.lcssa = phi double [ %.lcssa9, %40 ]
  store double %.lcssa65, ptr %1, align 8
  br label %45

..loopexit_crit_edge:                             ; preds = %7
  %.lcssa64 = phi double [ %17, %7 ]
  %split20 = phi double [ %8, %7 ]
  %split21 = phi double [ %9, %7 ]
  %split22 = phi i32 [ %10, %7 ]
  store double %.lcssa64, ptr %1, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %0
  %.lcssa14 = phi double [ %split20, %..loopexit_crit_edge ], [ undef, %0 ]
  %.lcssa12 = phi double [ %split21, %..loopexit_crit_edge ], [ undef, %0 ]
  %.lcssa10 = phi i32 [ %split22, %..loopexit_crit_edge ], [ 15625, %0 ]
  br label %45

45:                                               ; preds = %.loopexit, %44
  %46 = phi double [ %.lcssa9.lcssa, %44 ], [ %.lcssa14, %.loopexit ]
  %47 = phi double [ %.lcssa16, %44 ], [ %.lcssa12, %.loopexit ]
  %48 = phi i32 [ 512000000, %44 ], [ %.lcssa10, %.loopexit ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %49 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %50

50:                                               ; preds = %50, %45
  %51 = phi i32 [ %52, %50 ], [ 1, %45 ]
  %.not.not3 = icmp slt i32 %51, %48
  %52 = add nuw nsw i32 %51, 1
  br i1 %.not.not3, label %50, label %53, !llvm.loop !10

53:                                               ; preds = %50
  %54 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %55 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %56 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %57 = fmul double %55, %56
  %58 = fcmp olt double %57, 0.000000e+00
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %53
  %61 = phi double [ 0.000000e+00, %59 ], [ %57, %53 ]
  store double %61, ptr @nulltime, align 8
  %62 = load double, ptr @sa, align 8
  %63 = fneg double %61
  %64 = call double @llvm.fmuladd.f64(double %55, double %62, double %63)
  store double %64, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %65 = load double, ptr @D1, align 8
  %66 = load double, ptr @D2, align 8
  %67 = fadd double %65, %66
  %68 = load double, ptr @D3, align 8
  %69 = fadd double %67, %68
  %70 = load double, ptr @one, align 8
  %71 = fadd double %70, %65
  %72 = load double, ptr @E2, align 8
  %73 = fadd double %71, %72
  %74 = load double, ptr @E3, align 8
  %75 = fadd double %73, %74
  %76 = fdiv double %69, %75
  store double %76, ptr @sa, align 8
  store double %65, ptr @sb, align 8
  %77 = fdiv double %64, 1.400000e+01
  store double %77, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %78 = fadd double %76, %65
  %79 = load double, ptr @two, align 8
  %80 = call double @llvm.fmuladd.f64(double %79, double %46, double %78)
  %81 = fmul double %47, %80
  %82 = fdiv double %81, %79
  store double %82, ptr @sa, align 8
  %83 = fdiv double %70, %82
  store double %83, ptr @sb, align 8
  %84 = fptosi double %83 to i32
  %85 = mul nsw i32 %84, 40000
  %86 = sitofp i32 %85 to double
  %87 = load double, ptr @scale, align 8
  %88 = fdiv double %86, %87
  %89 = fptosi double %88 to i32
  %90 = fadd double %83, -2.520000e+01
  store double %90, ptr @sc, align 8
  %91 = fdiv double %70, %77
  store double %91, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %92 = fmul double %90, 1.000000e-30
  %93 = fmul double %64, 1.000000e-30
  %94 = fmul double %91, 1.000000e-30
  %95 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %92, double noundef %93, double noundef %94) #4
  store i32 %89, ptr %2, align 4
  %96 = load double, ptr @five, align 8
  %97 = fneg double %96
  %98 = load double, ptr @one, align 8
  %99 = fneg double %98
  store double %99, ptr @sa, align 8
  %100 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not23 = icmp sgt i32 1, %89
  br i1 %.not23, label %108, label %.lr.ph25

.lr.ph25:                                         ; preds = %60
  %sa.promoted = load double, ptr @sa, align 8
  br label %101

101:                                              ; preds = %.lr.ph25, %101
  %102 = phi double [ %sa.promoted, %.lr.ph25 ], [ %106, %101 ]
  %103 = phi i32 [ 1, %.lr.ph25 ], [ %107, %101 ]
  %104 = phi double [ %97, %.lr.ph25 ], [ %105, %101 ]
  %105 = fneg double %104
  %106 = fsub double %102, %104
  %107 = add nuw nsw i32 %103, 1
  %.not = icmp sgt i32 %107, %89
  br i1 %.not, label %._crit_edge26, label %101, !llvm.loop !11

._crit_edge26:                                    ; preds = %101
  %.lcssa66 = phi double [ %106, %101 ]
  %split27 = phi double [ %105, %101 ]
  store double %.lcssa66, ptr @sa, align 8
  br label %108

108:                                              ; preds = %._crit_edge26, %60
  %.lcssa8 = phi double [ %split27, %._crit_edge26 ], [ %97, %60 ]
  %109 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %110 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %111 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %112 = fmul double %110, %111
  %113 = fcmp olt double %112, 0.000000e+00
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %115

115:                                              ; preds = %114, %108
  %storemerge = phi double [ 0.000000e+00, %114 ], [ %112, %108 ]
  store double %storemerge, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %116 = sitofp i32 %89 to double
  store double %116, ptr @sc, align 8
  %117 = load double, ptr @sa, align 8
  store double 0.000000e+00, ptr %1, align 8
  %118 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not428 = icmp sgt i32 1, %89
  br i1 %.not428, label %137, label %.lr.ph30

.lr.ph30:                                         ; preds = %115
  %119 = load double, ptr @two, align 8
  %sa.promoted67 = load double, ptr @sa, align 8
  %.promoted = load double, ptr %1, align 8
  br label %120

120:                                              ; preds = %.lr.ph30, %120
  %121 = phi double [ %.promoted, %.lr.ph30 ], [ %135, %120 ]
  %122 = phi double [ %sa.promoted67, %.lr.ph30 ], [ %129, %120 ]
  %123 = phi i32 [ 1, %.lr.ph30 ], [ %136, %120 ]
  %124 = phi double [ 0.000000e+00, %.lr.ph30 ], [ %132, %120 ]
  %125 = phi double [ 0.000000e+00, %.lr.ph30 ], [ %133, %120 ]
  %126 = phi double [ %.lcssa8, %.lr.ph30 ], [ %128, %120 ]
  %127 = phi double [ %117, %.lr.ph30 ], [ %130, %120 ]
  %128 = fneg double %126
  %129 = fsub double %122, %126
  %130 = fadd double %127, %119
  %131 = fsub double %128, %130
  %132 = fadd double %124, %131
  %133 = call double @llvm.fmuladd.f64(double %126, double %130, double %125)
  %134 = fdiv double %126, %130
  %135 = fsub double %121, %134
  %136 = add nuw nsw i32 %123, 1
  %.not4 = icmp sgt i32 %136, %89
  br i1 %.not4, label %._crit_edge31, label %120, !llvm.loop !12

._crit_edge31:                                    ; preds = %120
  %.lcssa69 = phi double [ %135, %120 ]
  %.lcssa68 = phi double [ %129, %120 ]
  %split32 = phi double [ %133, %120 ]
  %split33 = phi double [ %132, %120 ]
  store double %.lcssa68, ptr @sa, align 8
  store double %.lcssa69, ptr %1, align 8
  br label %137

137:                                              ; preds = %._crit_edge31, %115
  %.lcssa7 = phi double [ %split32, %._crit_edge31 ], [ 0.000000e+00, %115 ]
  %.lcssa6 = phi double [ %split33, %._crit_edge31 ], [ 0.000000e+00, %115 ]
  %138 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %139 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %140 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %141 = fmul double %139, %140
  store double %141, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %142 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %143 = fsub double %141, %142
  %144 = fdiv double %143, 7.000000e+00
  store double %144, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %145 = load double, ptr @sa, align 8
  %146 = fmul double %145, %.lcssa6
  %147 = load double, ptr @sc, align 8
  %148 = fdiv double %146, %147
  %149 = fptosi double %148 to i32
  store i32 %149, ptr %2, align 4
  %150 = load double, ptr @four, align 8
  %151 = load double, ptr %1, align 8
  %152 = fmul double %150, %151
  %153 = load double, ptr @five, align 8
  %154 = fdiv double %152, %153
  store double %154, ptr @sa, align 8
  %155 = fdiv double %153, %.lcssa7
  %156 = fadd double %154, %155
  store double %156, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %157 = fmul double %.lcssa7, %.lcssa7
  %158 = fmul double %157, %.lcssa7
  %159 = fdiv double 3.125000e+01, %158
  %160 = fsub double %156, %159
  store double %160, ptr @piprg, align 8
  %161 = load double, ptr @piref, align 8
  %162 = fsub double %160, %161
  store double %162, ptr @pierr, align 8
  %163 = load double, ptr @one, align 8
  %164 = fdiv double %163, %144
  store double %164, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %165 = fmul double %162, 1.000000e-30
  %166 = fmul double %143, 1.000000e-30
  %167 = fmul double %164, 1.000000e-30
  %168 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %165, double noundef %166, double noundef %167) #4
  %169 = load double, ptr @piref, align 8
  %170 = load double, ptr @three, align 8
  %171 = sitofp i32 %149 to double
  %172 = fmul double %170, %171
  %173 = fdiv double %169, %172
  %174 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not5.not34 = icmp slt i32 1, %149
  br i1 %.not5.not34, label %.lr.ph36, label %199

.lr.ph36:                                         ; preds = %137
  %175 = load double, ptr @one, align 8
  %176 = load double, ptr @A6, align 8
  %177 = load double, ptr @A5, align 8
  %178 = fneg double %177
  %179 = load double, ptr @A4, align 8
  %180 = load double, ptr @A3, align 8
  %181 = fneg double %180
  %182 = load double, ptr @A2, align 8
  %183 = load double, ptr @A1, align 8
  br label %184

184:                                              ; preds = %.lr.ph36, %184
  %185 = phi i32 [ 1, %.lr.ph36 ], [ %198, %184 ]
  %186 = phi double [ 0.000000e+00, %.lr.ph36 ], [ %197, %184 ]
  %187 = phi double [ 0.000000e+00, %.lr.ph36 ], [ %188, %184 ]
  %188 = fadd double %187, %175
  %189 = fmul double %188, %173
  %190 = fmul double %189, %189
  %191 = call double @llvm.fmuladd.f64(double %176, double %190, double %178)
  %192 = call double @llvm.fmuladd.f64(double %191, double %190, double %179)
  %193 = call double @llvm.fmuladd.f64(double %192, double %190, double %181)
  %194 = call double @llvm.fmuladd.f64(double %193, double %190, double %182)
  %195 = call double @llvm.fmuladd.f64(double %194, double %190, double %183)
  %196 = call double @llvm.fmuladd.f64(double %195, double %190, double %175)
  %197 = call double @llvm.fmuladd.f64(double %189, double %196, double %186)
  %198 = add nuw nsw i32 %185, 1
  %.not5.not = icmp slt i32 %198, %149
  br i1 %.not5.not, label %184, label %._crit_edge37, !llvm.loop !13

._crit_edge37:                                    ; preds = %184
  %.lcssa70 = phi double [ %190, %184 ]
  %split38 = phi double [ %197, %184 ]
  store double %.lcssa70, ptr %1, align 8
  br label %199

199:                                              ; preds = %._crit_edge37, %137
  %.lcssa5 = phi double [ %split38, %._crit_edge37 ], [ 0.000000e+00, %137 ]
  %200 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %201 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %202 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %203 = load double, ptr @nulltime, align 8
  %204 = fneg double %203
  %205 = call double @llvm.fmuladd.f64(double %201, double %202, double %204)
  store double %205, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %206 = load double, ptr @piref, align 8
  %207 = load double, ptr @three, align 8
  %208 = fdiv double %206, %207
  %209 = fmul double %208, %208
  store double %209, ptr %1, align 8
  %210 = load double, ptr @A6, align 8
  %211 = load double, ptr @A5, align 8
  %212 = fneg double %211
  %213 = call double @llvm.fmuladd.f64(double %210, double %209, double %212)
  %214 = load double, ptr @A4, align 8
  %215 = call double @llvm.fmuladd.f64(double %213, double %209, double %214)
  %216 = load double, ptr @A3, align 8
  %217 = fneg double %216
  %218 = call double @llvm.fmuladd.f64(double %215, double %209, double %217)
  %219 = load double, ptr @A2, align 8
  %220 = call double @llvm.fmuladd.f64(double %218, double %209, double %219)
  %221 = load double, ptr @A1, align 8
  %222 = call double @llvm.fmuladd.f64(double %220, double %209, double %221)
  %223 = load double, ptr @one, align 8
  %224 = call double @llvm.fmuladd.f64(double %222, double %209, double %223)
  %225 = fmul double %208, %224
  store double %225, ptr @sa, align 8
  %226 = fdiv double %205, 1.700000e+01
  store double %226, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %227 = load double, ptr @two, align 8
  %228 = call double @llvm.fmuladd.f64(double %227, double %.lcssa5, double %225)
  %229 = fmul double %173, %228
  %230 = fdiv double %229, %227
  store double %230, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %231 = fadd double %230, -5.000000e-01
  store double %231, ptr @sc, align 8
  %232 = fdiv double %223, %226
  store double %232, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %233 = fmul double %231, 1.000000e-30
  %234 = fmul double %205, 1.000000e-30
  %235 = fmul double %232, 1.000000e-30
  %236 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %233, double noundef %234, double noundef %235) #4
  %237 = load double, ptr @A3, align 8
  %238 = fneg double %237
  store double %238, ptr @A3, align 8
  %239 = load double, ptr @A5, align 8
  %240 = fneg double %239
  store double %240, ptr @A5, align 8
  %241 = load double, ptr @piref, align 8
  %242 = load double, ptr @three, align 8
  %243 = fmul double %242, %171
  %244 = fdiv double %241, %243
  %245 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not6.not39 = icmp slt i32 1, %149
  br i1 %.not6.not39, label %.lr.ph41, label %267

.lr.ph41:                                         ; preds = %199
  %246 = load double, ptr @B6, align 8
  %247 = load double, ptr @B5, align 8
  %248 = load double, ptr @B4, align 8
  %249 = load double, ptr @B3, align 8
  %250 = load double, ptr @B2, align 8
  %251 = load double, ptr @B1, align 8
  %252 = load double, ptr @one, align 8
  br label %253

253:                                              ; preds = %.lr.ph41, %253
  %254 = phi i32 [ 1, %.lr.ph41 ], [ %266, %253 ]
  %255 = phi double [ 0.000000e+00, %.lr.ph41 ], [ %265, %253 ]
  %256 = uitofp nneg i32 %254 to double
  %257 = fmul double %244, %256
  %258 = fmul double %257, %257
  %259 = call double @llvm.fmuladd.f64(double %246, double %258, double %247)
  %260 = call double @llvm.fmuladd.f64(double %258, double %259, double %248)
  %261 = call double @llvm.fmuladd.f64(double %258, double %260, double %249)
  %262 = call double @llvm.fmuladd.f64(double %258, double %261, double %250)
  %263 = call double @llvm.fmuladd.f64(double %258, double %262, double %251)
  %264 = call double @llvm.fmuladd.f64(double %258, double %263, double %255)
  %265 = fadd double %264, %252
  %266 = add nuw nsw i32 %254, 1
  %.not6.not = icmp slt i32 %266, %149
  br i1 %.not6.not, label %253, label %._crit_edge42, !llvm.loop !14

._crit_edge42:                                    ; preds = %253
  %.lcssa71 = phi double [ %258, %253 ]
  %split43 = phi double [ %265, %253 ]
  store double %.lcssa71, ptr %1, align 8
  br label %267

267:                                              ; preds = %._crit_edge42, %199
  %.lcssa4 = phi double [ %split43, %._crit_edge42 ], [ 0.000000e+00, %199 ]
  %268 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %269 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %270 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %271 = load double, ptr @nulltime, align 8
  %272 = fneg double %271
  %273 = call double @llvm.fmuladd.f64(double %269, double %270, double %272)
  store double %273, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %274 = load double, ptr @piref, align 8
  %275 = load double, ptr @three, align 8
  %276 = fdiv double %274, %275
  %277 = fmul double %276, %276
  store double %277, ptr %1, align 8
  %278 = load double, ptr @B6, align 8
  %279 = load double, ptr @B5, align 8
  %280 = call double @llvm.fmuladd.f64(double %278, double %277, double %279)
  %281 = load double, ptr @B4, align 8
  %282 = call double @llvm.fmuladd.f64(double %277, double %280, double %281)
  %283 = load double, ptr @B3, align 8
  %284 = call double @llvm.fmuladd.f64(double %277, double %282, double %283)
  %285 = load double, ptr @B2, align 8
  %286 = call double @llvm.fmuladd.f64(double %277, double %284, double %285)
  %287 = load double, ptr @B1, align 8
  %288 = call double @llvm.fmuladd.f64(double %277, double %286, double %287)
  %289 = load double, ptr @one, align 8
  %290 = call double @llvm.fmuladd.f64(double %277, double %288, double %289)
  store double %290, ptr @sa, align 8
  %291 = fdiv double %273, 1.500000e+01
  store double %291, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %292 = fadd double %290, %289
  %293 = load double, ptr @two, align 8
  %294 = call double @llvm.fmuladd.f64(double %293, double %.lcssa4, double %292)
  %295 = fmul double %244, %294
  %296 = fdiv double %295, %293
  store double %296, ptr @sa, align 8
  store double %277, ptr %1, align 8
  %297 = load double, ptr @A6, align 8
  %298 = load double, ptr @A5, align 8
  %299 = call double @llvm.fmuladd.f64(double %297, double %277, double %298)
  %300 = load double, ptr @A4, align 8
  %301 = call double @llvm.fmuladd.f64(double %299, double %277, double %300)
  %302 = load double, ptr @A3, align 8
  %303 = call double @llvm.fmuladd.f64(double %301, double %277, double %302)
  %304 = load double, ptr @A2, align 8
  %305 = call double @llvm.fmuladd.f64(double %303, double %277, double %304)
  %306 = load double, ptr @A1, align 8
  %307 = call double @llvm.fmuladd.f64(double %305, double %277, double %306)
  %308 = load double, ptr @A0, align 8
  %309 = call double @llvm.fmuladd.f64(double %307, double %277, double %308)
  %310 = fmul double %276, %309
  store double %310, ptr @sb, align 8
  %311 = fsub double %296, %310
  store double %311, ptr @sc, align 8
  %312 = fdiv double %289, %291
  store double %312, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %313 = fmul double %311, 1.000000e-30
  %314 = fmul double %273, 1.000000e-30
  %315 = fmul double %312, 1.000000e-30
  %316 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %313, double noundef %314, double noundef %315) #4
  %317 = load double, ptr @piref, align 8
  %318 = load double, ptr @three, align 8
  %319 = fmul double %318, %171
  %320 = fdiv double %317, %319
  %321 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not7.not44 = icmp slt i32 1, %149
  br i1 %.not7.not44, label %.lr.ph46, label %357

.lr.ph46:                                         ; preds = %267
  %322 = load double, ptr @A6, align 8
  %323 = load double, ptr @A5, align 8
  %324 = load double, ptr @A4, align 8
  %325 = load double, ptr @A3, align 8
  %326 = load double, ptr @A2, align 8
  %327 = load double, ptr @A1, align 8
  %328 = load double, ptr @one, align 8
  %329 = load double, ptr @B6, align 8
  %330 = load double, ptr @B5, align 8
  %331 = load double, ptr @B4, align 8
  %332 = load double, ptr @B3, align 8
  %333 = load double, ptr @B2, align 8
  %334 = load double, ptr @B1, align 8
  br label %335

335:                                              ; preds = %.lr.ph46, %335
  %336 = phi i32 [ 1, %.lr.ph46 ], [ %356, %335 ]
  %337 = phi double [ 0.000000e+00, %.lr.ph46 ], [ %355, %335 ]
  %338 = uitofp nneg i32 %336 to double
  %339 = fmul double %320, %338
  %340 = fmul double %339, %339
  %341 = call double @llvm.fmuladd.f64(double %322, double %340, double %323)
  %342 = call double @llvm.fmuladd.f64(double %341, double %340, double %324)
  %343 = call double @llvm.fmuladd.f64(double %342, double %340, double %325)
  %344 = call double @llvm.fmuladd.f64(double %343, double %340, double %326)
  %345 = call double @llvm.fmuladd.f64(double %344, double %340, double %327)
  %346 = call double @llvm.fmuladd.f64(double %345, double %340, double %328)
  %347 = fmul double %339, %346
  %348 = call double @llvm.fmuladd.f64(double %329, double %340, double %330)
  %349 = call double @llvm.fmuladd.f64(double %340, double %348, double %331)
  %350 = call double @llvm.fmuladd.f64(double %340, double %349, double %332)
  %351 = call double @llvm.fmuladd.f64(double %340, double %350, double %333)
  %352 = call double @llvm.fmuladd.f64(double %340, double %351, double %334)
  %353 = call double @llvm.fmuladd.f64(double %340, double %352, double %328)
  %354 = fdiv double %347, %353
  %355 = fadd double %337, %354
  %356 = add nuw nsw i32 %336, 1
  %.not7.not = icmp slt i32 %356, %149
  br i1 %.not7.not, label %335, label %._crit_edge47, !llvm.loop !15

._crit_edge47:                                    ; preds = %335
  %.lcssa72 = phi double [ %340, %335 ]
  %split48 = phi double [ %355, %335 ]
  store double %.lcssa72, ptr %1, align 8
  br label %357

357:                                              ; preds = %._crit_edge47, %267
  %.lcssa3 = phi double [ %split48, %._crit_edge47 ], [ 0.000000e+00, %267 ]
  %358 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %359 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %360 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %361 = load double, ptr @nulltime, align 8
  %362 = fneg double %361
  %363 = call double @llvm.fmuladd.f64(double %359, double %360, double %362)
  store double %363, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %364 = load double, ptr @piref, align 8
  %365 = load double, ptr @three, align 8
  %366 = fdiv double %364, %365
  %367 = fmul double %366, %366
  store double %367, ptr %1, align 8
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
  %397 = call double @llvm.fmuladd.f64(double %396, double %.lcssa3, double %394)
  %398 = fmul double %320, %397
  %399 = fdiv double %398, %396
  store double %399, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %400 = fadd double %399, f0xBFE62E42FEFA39EF
  store double %400, ptr @sc, align 8
  %401 = fdiv double %379, %395
  store double %401, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %402 = fmul double %400, 1.000000e-30
  %403 = fmul double %363, 1.000000e-30
  %404 = fmul double %401, 1.000000e-30
  %405 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %402, double noundef %403, double noundef %404) #4
  %406 = load double, ptr @piref, align 8
  %407 = load double, ptr @four, align 8
  %408 = fmul double %407, %171
  %409 = fdiv double %406, %408
  %410 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not8.not49 = icmp slt i32 1, %149
  br i1 %.not8.not49, label %.lr.ph51, label %445

.lr.ph51:                                         ; preds = %357
  %411 = load double, ptr @A6, align 8
  %412 = load double, ptr @A5, align 8
  %413 = load double, ptr @A4, align 8
  %414 = load double, ptr @A3, align 8
  %415 = load double, ptr @A2, align 8
  %416 = load double, ptr @A1, align 8
  %417 = load double, ptr @one, align 8
  %418 = load double, ptr @B6, align 8
  %419 = load double, ptr @B5, align 8
  %420 = load double, ptr @B4, align 8
  %421 = load double, ptr @B3, align 8
  %422 = load double, ptr @B2, align 8
  %423 = load double, ptr @B1, align 8
  br label %424

424:                                              ; preds = %.lr.ph51, %424
  %425 = phi i32 [ 1, %.lr.ph51 ], [ %444, %424 ]
  %426 = phi double [ 0.000000e+00, %.lr.ph51 ], [ %443, %424 ]
  %427 = uitofp nneg i32 %425 to double
  %428 = fmul double %409, %427
  %429 = fmul double %428, %428
  %430 = call double @llvm.fmuladd.f64(double %411, double %429, double %412)
  %431 = call double @llvm.fmuladd.f64(double %430, double %429, double %413)
  %432 = call double @llvm.fmuladd.f64(double %431, double %429, double %414)
  %433 = call double @llvm.fmuladd.f64(double %432, double %429, double %415)
  %434 = call double @llvm.fmuladd.f64(double %433, double %429, double %416)
  %435 = call double @llvm.fmuladd.f64(double %434, double %429, double %417)
  %436 = fmul double %428, %435
  %437 = call double @llvm.fmuladd.f64(double %418, double %429, double %419)
  %438 = call double @llvm.fmuladd.f64(double %429, double %437, double %420)
  %439 = call double @llvm.fmuladd.f64(double %429, double %438, double %421)
  %440 = call double @llvm.fmuladd.f64(double %429, double %439, double %422)
  %441 = call double @llvm.fmuladd.f64(double %429, double %440, double %423)
  %442 = call double @llvm.fmuladd.f64(double %429, double %441, double %417)
  %443 = call double @llvm.fmuladd.f64(double %436, double %442, double %426)
  %444 = add nuw nsw i32 %425, 1
  %.not8.not = icmp slt i32 %444, %149
  br i1 %.not8.not, label %424, label %._crit_edge52, !llvm.loop !16

._crit_edge52:                                    ; preds = %424
  %.lcssa73 = phi double [ %429, %424 ]
  %split53 = phi double [ %443, %424 ]
  store double %.lcssa73, ptr %1, align 8
  br label %445

445:                                              ; preds = %._crit_edge52, %357
  %.lcssa2 = phi double [ %split53, %._crit_edge52 ], [ 0.000000e+00, %357 ]
  %446 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %447 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %448 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %449 = load double, ptr @nulltime, align 8
  %450 = fneg double %449
  %451 = call double @llvm.fmuladd.f64(double %447, double %448, double %450)
  store double %451, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %452 = load double, ptr @piref, align 8
  %453 = load double, ptr @four, align 8
  %454 = fdiv double %452, %453
  %455 = fmul double %454, %454
  store double %455, ptr %1, align 8
  %456 = load double, ptr @A6, align 8
  %457 = load double, ptr @A5, align 8
  %458 = call double @llvm.fmuladd.f64(double %456, double %455, double %457)
  %459 = load double, ptr @A4, align 8
  %460 = call double @llvm.fmuladd.f64(double %458, double %455, double %459)
  %461 = load double, ptr @A3, align 8
  %462 = call double @llvm.fmuladd.f64(double %460, double %455, double %461)
  %463 = load double, ptr @A2, align 8
  %464 = call double @llvm.fmuladd.f64(double %462, double %455, double %463)
  %465 = load double, ptr @A1, align 8
  %466 = call double @llvm.fmuladd.f64(double %464, double %455, double %465)
  %467 = load double, ptr @one, align 8
  %468 = call double @llvm.fmuladd.f64(double %466, double %455, double %467)
  %469 = fmul double %454, %468
  store double %469, ptr @sa, align 8
  %470 = load double, ptr @B6, align 8
  %471 = load double, ptr @B5, align 8
  %472 = call double @llvm.fmuladd.f64(double %470, double %455, double %471)
  %473 = load double, ptr @B4, align 8
  %474 = call double @llvm.fmuladd.f64(double %455, double %472, double %473)
  %475 = load double, ptr @B3, align 8
  %476 = call double @llvm.fmuladd.f64(double %455, double %474, double %475)
  %477 = load double, ptr @B2, align 8
  %478 = call double @llvm.fmuladd.f64(double %455, double %476, double %477)
  %479 = load double, ptr @B1, align 8
  %480 = call double @llvm.fmuladd.f64(double %455, double %478, double %479)
  %481 = call double @llvm.fmuladd.f64(double %455, double %480, double %467)
  store double %481, ptr @sb, align 8
  %482 = fmul double %469, %481
  store double %482, ptr @sa, align 8
  %483 = fdiv double %451, 2.900000e+01
  store double %483, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %484 = load double, ptr @two, align 8
  %485 = call double @llvm.fmuladd.f64(double %484, double %.lcssa2, double %482)
  %486 = fmul double %409, %485
  %487 = fdiv double %486, %484
  store double %487, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %488 = fadd double %487, -2.500000e-01
  store double %488, ptr @sc, align 8
  %489 = fdiv double %467, %483
  store double %489, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %490 = fmul double %488, 1.000000e-30
  %491 = fmul double %451, 1.000000e-30
  %492 = fmul double %489, 1.000000e-30
  %493 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %490, double noundef %491, double noundef %492) #4
  %494 = load double, ptr @one, align 8
  store double %494, ptr %1, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %495 = fdiv double f0x40599541F7F192A4, %171
  %496 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not9.not54 = icmp slt i32 1, %149
  br i1 %.not9.not54, label %.lr.ph56, label %514

.lr.ph56:                                         ; preds = %445
  %497 = load double, ptr %1, align 8
  br label %498

498:                                              ; preds = %.lr.ph56, %498
  %499 = phi i32 [ 1, %.lr.ph56 ], [ %513, %498 ]
  %500 = phi double [ 0.000000e+00, %.lr.ph56 ], [ %512, %498 ]
  %501 = uitofp nneg i32 %499 to double
  %502 = fmul double %495, %501
  %503 = fmul double %502, %502
  %504 = fadd double %502, %497
  %505 = fdiv double %497, %504
  %506 = fsub double %500, %505
  %507 = fadd double %503, %497
  %508 = fdiv double %502, %507
  %509 = fsub double %506, %508
  %510 = call double @llvm.fmuladd.f64(double %502, double %503, double %497)
  %511 = fdiv double %503, %510
  %512 = fsub double %509, %511
  %513 = add nuw nsw i32 %499, 1
  %.not9.not = icmp slt i32 %513, %149
  br i1 %.not9.not, label %498, label %._crit_edge57, !llvm.loop !17

._crit_edge57:                                    ; preds = %498
  %split58 = phi double [ %512, %498 ]
  br label %514

514:                                              ; preds = %._crit_edge57, %445
  %.lcssa1 = phi double [ %split58, %._crit_edge57 ], [ 0.000000e+00, %445 ]
  %515 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %516 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %517 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %518 = load double, ptr @nulltime, align 8
  %519 = fneg double %518
  %520 = call double @llvm.fmuladd.f64(double %516, double %517, double %519)
  store double %520, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %521 = fdiv double %520, 1.200000e+01
  store double %521, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %522 = load double, ptr @sa, align 8
  %523 = fmul double %522, %522
  %524 = load double, ptr %1, align 8
  %525 = fneg double %524
  %526 = fadd double %522, %524
  %527 = fdiv double %524, %526
  %528 = fsub double %525, %527
  %529 = fadd double %523, %524
  %530 = fdiv double %522, %529
  %531 = fsub double %528, %530
  %532 = call double @llvm.fmuladd.f64(double %522, double %523, double %524)
  %533 = fdiv double %523, %532
  %534 = fsub double %531, %533
  store double %534, ptr @sa, align 8
  %535 = fmul nnan double %495, 1.800000e+01
  %536 = load double, ptr @two, align 8
  %537 = call double @llvm.fmuladd.f64(double %536, double %.lcssa1, double %534)
  %538 = fmul double %535, %537
  store double %538, ptr @sa, align 8
  %539 = fptosi double %538 to i32
  %540 = mul nsw i32 %539, -2000
  store i32 %540, ptr %2, align 4
  %541 = sitofp i32 %540 to double
  %542 = load double, ptr @scale, align 8
  %543 = fdiv double %541, %542
  %544 = fptosi double %543 to i32
  store i32 %544, ptr %2, align 4
  %545 = fadd double %538, 5.002000e+02
  store double %545, ptr @sc, align 8
  %546 = load double, ptr @one, align 8
  %547 = fdiv double %546, %521
  store double %547, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %548 = fmul double %545, 1.000000e-30
  %549 = fmul double %520, 1.000000e-30
  %550 = fmul double %547, 1.000000e-30
  %551 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %548, double noundef %549, double noundef %550) #4
  %552 = load double, ptr @piref, align 8
  %553 = load double, ptr @three, align 8
  %554 = sitofp i32 %544 to double
  %555 = fmul double %553, %554
  %556 = fdiv double %552, %555
  %557 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not10.not59 = icmp slt i32 1, %544
  br i1 %.not10.not59, label %.lr.ph61, label %593

.lr.ph61:                                         ; preds = %514
  %558 = load double, ptr @B6, align 8
  %559 = load double, ptr @B5, align 8
  %560 = load double, ptr @B4, align 8
  %561 = load double, ptr @B3, align 8
  %562 = load double, ptr @B2, align 8
  %563 = load double, ptr @B1, align 8
  %564 = load double, ptr @one, align 8
  %565 = load double, ptr @A6, align 8
  %566 = load double, ptr @A5, align 8
  %567 = load double, ptr @A4, align 8
  %568 = load double, ptr @A3, align 8
  %569 = load double, ptr @A2, align 8
  %570 = load double, ptr @A1, align 8
  br label %571

571:                                              ; preds = %.lr.ph61, %571
  %572 = phi i32 [ 1, %.lr.ph61 ], [ %592, %571 ]
  %573 = phi double [ 0.000000e+00, %.lr.ph61 ], [ %591, %571 ]
  %574 = uitofp nneg i32 %572 to double
  %575 = fmul double %556, %574
  %576 = fmul double %575, %575
  %577 = call double @llvm.fmuladd.f64(double %558, double %576, double %559)
  %578 = call double @llvm.fmuladd.f64(double %576, double %577, double %560)
  %579 = call double @llvm.fmuladd.f64(double %576, double %578, double %561)
  %580 = call double @llvm.fmuladd.f64(double %576, double %579, double %562)
  %581 = call double @llvm.fmuladd.f64(double %576, double %580, double %563)
  %582 = call double @llvm.fmuladd.f64(double %576, double %581, double %564)
  %583 = fmul double %582, %582
  %584 = fmul double %583, %575
  %585 = call double @llvm.fmuladd.f64(double %565, double %576, double %566)
  %586 = call double @llvm.fmuladd.f64(double %585, double %576, double %567)
  %587 = call double @llvm.fmuladd.f64(double %586, double %576, double %568)
  %588 = call double @llvm.fmuladd.f64(double %587, double %576, double %569)
  %589 = call double @llvm.fmuladd.f64(double %588, double %576, double %570)
  %590 = call double @llvm.fmuladd.f64(double %589, double %576, double %564)
  %591 = call double @llvm.fmuladd.f64(double %584, double %590, double %573)
  %592 = add nuw nsw i32 %572, 1
  %.not10.not = icmp slt i32 %592, %544
  br i1 %.not10.not, label %571, label %._crit_edge62, !llvm.loop !18

._crit_edge62:                                    ; preds = %571
  %.lcssa74 = phi double [ %576, %571 ]
  %split63 = phi double [ %591, %571 ]
  store double %.lcssa74, ptr %1, align 8
  br label %593

593:                                              ; preds = %._crit_edge62, %514
  %.lcssa = phi double [ %split63, %._crit_edge62 ], [ 0.000000e+00, %514 ]
  %594 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %595 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %596 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %597 = load double, ptr @nulltime, align 8
  %598 = fneg double %597
  %599 = call double @llvm.fmuladd.f64(double %595, double %596, double %598)
  store double %599, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %600 = load double, ptr @piref, align 8
  %601 = load double, ptr @three, align 8
  %602 = fdiv double %600, %601
  %603 = fmul double %602, %602
  store double %603, ptr %1, align 8
  %604 = load double, ptr @A6, align 8
  %605 = load double, ptr @A5, align 8
  %606 = call double @llvm.fmuladd.f64(double %604, double %603, double %605)
  %607 = load double, ptr @A4, align 8
  %608 = call double @llvm.fmuladd.f64(double %606, double %603, double %607)
  %609 = load double, ptr @A3, align 8
  %610 = call double @llvm.fmuladd.f64(double %608, double %603, double %609)
  %611 = load double, ptr @A2, align 8
  %612 = call double @llvm.fmuladd.f64(double %610, double %603, double %611)
  %613 = load double, ptr @A1, align 8
  %614 = call double @llvm.fmuladd.f64(double %612, double %603, double %613)
  %615 = load double, ptr @one, align 8
  %616 = call double @llvm.fmuladd.f64(double %614, double %603, double %615)
  %617 = fmul double %602, %616
  store double %617, ptr @sa, align 8
  %618 = load double, ptr @B6, align 8
  %619 = load double, ptr @B5, align 8
  %620 = call double @llvm.fmuladd.f64(double %618, double %603, double %619)
  %621 = load double, ptr @B4, align 8
  %622 = call double @llvm.fmuladd.f64(double %603, double %620, double %621)
  %623 = load double, ptr @B3, align 8
  %624 = call double @llvm.fmuladd.f64(double %603, double %622, double %623)
  %625 = load double, ptr @B2, align 8
  %626 = call double @llvm.fmuladd.f64(double %603, double %624, double %625)
  %627 = load double, ptr @B1, align 8
  %628 = call double @llvm.fmuladd.f64(double %603, double %626, double %627)
  %629 = call double @llvm.fmuladd.f64(double %603, double %628, double %615)
  store double %629, ptr @sb, align 8
  %630 = fmul double %617, %629
  %631 = fmul double %630, %629
  store double %631, ptr @sa, align 8
  %632 = fdiv double %599, 3.000000e+01
  store double %632, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %633 = load double, ptr @two, align 8
  %634 = call double @llvm.fmuladd.f64(double %633, double %.lcssa, double %631)
  %635 = fmul double %556, %634
  %636 = fdiv double %635, %633
  store double %636, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %637 = fadd double %636, f0xBFD2AAAAAAAAAAAB
  store double %637, ptr @sc, align 8
  %638 = fdiv double %615, %632
  store double %638, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %639 = fmul double %637, 1.000000e-30
  %640 = fmul double %599, 1.000000e-30
  %641 = fmul double %638, 1.000000e-30
  %642 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %639, double noundef %640, double noundef %641) #4
  %643 = load double, ptr @five, align 8
  %644 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %645 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %646 = fsub double %644, %645
  %647 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %648 = call double @llvm.fmuladd.f64(double %643, double %646, double %647)
  %649 = fdiv double %648, 5.200000e+01
  store double %649, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %650 = load double, ptr @one, align 8
  %651 = fdiv double %650, %649
  store double %651, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %652 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %653 = fadd double %652, %647
  %654 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %655 = fadd double %653, %654
  %656 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %657 = fadd double %655, %656
  %658 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %659 = fadd double %657, %658
  store double %659, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %660 = load double, ptr @four, align 8
  %661 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %662 = call double @llvm.fmuladd.f64(double %660, double %661, double %659)
  %663 = fdiv double %662, 1.520000e+02
  store double %663, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %664 = fdiv double %650, %663
  store double %664, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %659, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %665 = fadd double %659, %661
  %666 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %667 = fadd double %665, %666
  %668 = fdiv double %667, 1.460000e+02
  store double %668, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %669 = fdiv double %650, %668
  store double %669, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %670 = fadd double %647, %654
  %671 = fadd double %670, %658
  %672 = fadd double %671, %666
  %673 = fdiv double %672, 9.100000e+01
  store double %673, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %674 = fdiv double %650, %673
  store double %674, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar11 = call i32 @putchar(i32 10)
  %675 = load i32, ptr %2, align 4
  %676 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %675) #4
  %677 = load double, ptr @nulltime, align 8
  %678 = fmul double %677, 1.000000e-30
  %679 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %678) #4
  %680 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %681 = fmul double %680, 1.000000e-30
  %682 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %681) #4
  %683 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %684 = fmul double %683, 1.000000e-30
  %685 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %684) #4
  %686 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %687 = fmul double %686, 1.000000e-30
  %688 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %687) #4
  %689 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %690 = fmul double %689, 1.000000e-30
  %691 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %690) #4
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
