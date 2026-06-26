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
  br i1 %6, label %.lr.ph12, label %45

.lr.ph12:                                         ; preds = %0
  br label %14

7:                                                ; preds = %41
  %8 = phi double [ %.lcssa9, %41 ]
  %9 = phi double [ %19, %41 ]
  %10 = phi i32 [ %16, %41 ]
  %11 = phi double [ %43, %41 ]
  %12 = load double, ptr @TLimit, align 8
  %13 = fcmp olt double %11, %12
  br i1 %13, label %14, label %._crit_edge17, !llvm.loop !7

14:                                               ; preds = %.lr.ph12, %7
  %15 = phi i32 [ 15625, %.lr.ph12 ], [ %10, %7 ]
  %16 = shl nsw i32 %15, 1
  %17 = load double, ptr @one, align 8
  %18 = sitofp i32 %16 to double
  %19 = fdiv double %17, %18
  store double %17, ptr %1, align 8
  %20 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not.not10 = icmp slt i32 1, %16
  br i1 %.not.not10, label %.lr.ph, label %41

.lr.ph:                                           ; preds = %14
  br label %21

21:                                               ; preds = %.lr.ph, %21
  %22 = phi i32 [ 1, %.lr.ph ], [ %40, %21 ]
  %23 = phi double [ 0.000000e+00, %.lr.ph ], [ %39, %21 ]
  %24 = phi double [ 0.000000e+00, %.lr.ph ], [ %26, %21 ]
  %25 = load double, ptr %1, align 8
  %26 = fadd double %24, %25
  %27 = fmul double %26, %19
  %28 = load double, ptr @D1, align 8
  %29 = load double, ptr @D2, align 8
  %30 = load double, ptr @D3, align 8
  %31 = call double @llvm.fmuladd.f64(double %27, double %30, double %29)
  %32 = call double @llvm.fmuladd.f64(double %27, double %31, double %28)
  %33 = load double, ptr @E2, align 8
  %34 = load double, ptr @E3, align 8
  %35 = call double @llvm.fmuladd.f64(double %27, double %34, double %33)
  %36 = call double @llvm.fmuladd.f64(double %27, double %35, double %28)
  %37 = call double @llvm.fmuladd.f64(double %27, double %36, double %25)
  %38 = fdiv double %32, %37
  %39 = fadd double %23, %38
  %40 = add nuw nsw i32 %22, 1
  %.not.not = icmp slt i32 %40, %16
  br i1 %.not.not, label %21, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %21
  %split = phi double [ %39, %21 ]
  br label %41

41:                                               ; preds = %._crit_edge, %14
  %.lcssa9 = phi double [ %split, %._crit_edge ], [ 0.000000e+00, %14 ]
  %42 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %43 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %43, ptr @sa, align 8
  %44 = icmp eq i32 %15, 256000000
  br i1 %44, label %._crit_edge13, label %7, !llvm.loop !7

._crit_edge13:                                    ; preds = %41
  %split14 = phi double [ %.lcssa9, %41 ]
  %split15 = phi double [ %19, %41 ]
  %split16 = phi i32 [ 512000000, %41 ]
  br label %45, !llvm.loop !7

._crit_edge17:                                    ; preds = %7
  %split18 = phi double [ %8, %7 ]
  %split19 = phi double [ %9, %7 ]
  %split20 = phi i32 [ %10, %7 ]
  br label %45

45:                                               ; preds = %._crit_edge17, %._crit_edge13, %0
  %46 = phi double [ %split18, %._crit_edge17 ], [ %split14, %._crit_edge13 ], [ undef, %0 ]
  %47 = phi double [ %split19, %._crit_edge17 ], [ %split15, %._crit_edge13 ], [ undef, %0 ]
  %48 = phi i32 [ %split20, %._crit_edge17 ], [ %split16, %._crit_edge13 ], [ 15625, %0 ]
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
  %59 = select i1 %58, double 0.000000e+00, double %57
  store double %59, ptr @nulltime, align 8
  %60 = load double, ptr @sa, align 8
  %61 = fneg double %59
  %62 = call double @llvm.fmuladd.f64(double %55, double %60, double %61)
  store double %62, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %63 = load double, ptr @D1, align 8
  %64 = load double, ptr @D2, align 8
  %65 = fadd double %63, %64
  %66 = load double, ptr @D3, align 8
  %67 = fadd double %65, %66
  %68 = load double, ptr @one, align 8
  %69 = fadd double %68, %63
  %70 = load double, ptr @E2, align 8
  %71 = fadd double %69, %70
  %72 = load double, ptr @E3, align 8
  %73 = fadd double %71, %72
  %74 = fdiv double %67, %73
  store double %74, ptr @sa, align 8
  store double %63, ptr @sb, align 8
  %75 = fdiv double %62, 1.400000e+01
  store double %75, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %76 = fadd double %74, %63
  %77 = load double, ptr @two, align 8
  %78 = call double @llvm.fmuladd.f64(double %77, double %46, double %76)
  %79 = fmul double %47, %78
  %80 = fdiv double %79, %77
  store double %80, ptr @sa, align 8
  %81 = fdiv double %68, %80
  store double %81, ptr @sb, align 8
  %82 = fptosi double %81 to i32
  %83 = mul nsw i32 %82, 40000
  %84 = sitofp i32 %83 to double
  %85 = load double, ptr @scale, align 8
  %86 = fdiv double %84, %85
  %87 = fptosi double %86 to i32
  %88 = fadd double %81, -2.520000e+01
  store double %88, ptr @sc, align 8
  %89 = fdiv double %68, %75
  store double %89, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %90 = fmul double %88, 1.000000e-30
  %91 = fmul double %62, 1.000000e-30
  %92 = fmul double %89, 1.000000e-30
  %93 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %90, double noundef %91, double noundef %92) #4
  store i32 %87, ptr %2, align 4
  %94 = load double, ptr @five, align 8
  %95 = fneg double %94
  %96 = load double, ptr @one, align 8
  %97 = fneg double %96
  store double %97, ptr @sa, align 8
  %98 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not21 = icmp sgt i32 1, %87
  br i1 %.not21, label %106, label %.lr.ph23

.lr.ph23:                                         ; preds = %53
  br label %99

99:                                               ; preds = %.lr.ph23, %99
  %100 = phi i32 [ 1, %.lr.ph23 ], [ %105, %99 ]
  %101 = phi double [ %95, %.lr.ph23 ], [ %102, %99 ]
  %102 = fneg double %101
  %103 = load double, ptr @sa, align 8
  %104 = fsub double %103, %101
  store double %104, ptr @sa, align 8
  %105 = add nuw nsw i32 %100, 1
  %.not = icmp sgt i32 %105, %87
  br i1 %.not, label %._crit_edge24, label %99, !llvm.loop !11

._crit_edge24:                                    ; preds = %99
  %split25 = phi double [ %102, %99 ]
  br label %106

106:                                              ; preds = %._crit_edge24, %53
  %.lcssa8 = phi double [ %split25, %._crit_edge24 ], [ %95, %53 ]
  %107 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %108 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %109 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %110 = fmul double %108, %109
  %111 = fcmp olt double %110, 0.000000e+00
  %storemerge = select i1 %111, double 0.000000e+00, double %110
  store double %storemerge, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %112 = sitofp i32 %87 to double
  store double %112, ptr @sc, align 8
  %113 = load double, ptr @sa, align 8
  store double 0.000000e+00, ptr %1, align 8
  %114 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not426 = icmp sgt i32 1, %87
  br i1 %.not426, label %133, label %.lr.ph28

.lr.ph28:                                         ; preds = %106
  br label %115

115:                                              ; preds = %.lr.ph28, %115
  %116 = phi i32 [ 1, %.lr.ph28 ], [ %132, %115 ]
  %117 = phi double [ 0.000000e+00, %.lr.ph28 ], [ %127, %115 ]
  %118 = phi double [ 0.000000e+00, %.lr.ph28 ], [ %128, %115 ]
  %119 = phi double [ %.lcssa8, %.lr.ph28 ], [ %121, %115 ]
  %120 = phi double [ %113, %.lr.ph28 ], [ %125, %115 ]
  %121 = fneg double %119
  %122 = load double, ptr @sa, align 8
  %123 = fsub double %122, %119
  store double %123, ptr @sa, align 8
  %124 = load double, ptr @two, align 8
  %125 = fadd double %120, %124
  %126 = fsub double %121, %125
  %127 = fadd double %117, %126
  %128 = call double @llvm.fmuladd.f64(double %119, double %125, double %118)
  %129 = load double, ptr %1, align 8
  %130 = fdiv double %119, %125
  %131 = fsub double %129, %130
  store double %131, ptr %1, align 8
  %132 = add nuw nsw i32 %116, 1
  %.not4 = icmp sgt i32 %132, %87
  br i1 %.not4, label %._crit_edge29, label %115, !llvm.loop !12

._crit_edge29:                                    ; preds = %115
  %split30 = phi double [ %128, %115 ]
  %split31 = phi double [ %127, %115 ]
  br label %133

133:                                              ; preds = %._crit_edge29, %106
  %.lcssa7 = phi double [ %split30, %._crit_edge29 ], [ 0.000000e+00, %106 ]
  %.lcssa6 = phi double [ %split31, %._crit_edge29 ], [ 0.000000e+00, %106 ]
  %134 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %135 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %136 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %137 = fmul double %135, %136
  store double %137, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %138 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %139 = fsub double %137, %138
  %140 = fdiv double %139, 7.000000e+00
  store double %140, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %141 = load double, ptr @sa, align 8
  %142 = fmul double %141, %.lcssa6
  %143 = load double, ptr @sc, align 8
  %144 = fdiv double %142, %143
  %145 = fptosi double %144 to i32
  store i32 %145, ptr %2, align 4
  %146 = load double, ptr @four, align 8
  %147 = load double, ptr %1, align 8
  %148 = fmul double %146, %147
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
  %160 = fdiv double %159, %140
  store double %160, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %161 = fmul double %158, 1.000000e-30
  %162 = fmul double %139, 1.000000e-30
  %163 = fmul double %160, 1.000000e-30
  %164 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %161, double noundef %162, double noundef %163) #4
  %165 = load double, ptr @piref, align 8
  %166 = load double, ptr @three, align 8
  %167 = sitofp i32 %145 to double
  %168 = fmul double %166, %167
  %169 = fdiv double %165, %168
  %170 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not5.not32 = icmp slt i32 1, %145
  br i1 %.not5.not32, label %.lr.ph34, label %195

.lr.ph34:                                         ; preds = %133
  br label %171

171:                                              ; preds = %.lr.ph34, %171
  %172 = phi i32 [ 1, %.lr.ph34 ], [ %194, %171 ]
  %173 = phi double [ 0.000000e+00, %.lr.ph34 ], [ %193, %171 ]
  %174 = phi double [ 0.000000e+00, %.lr.ph34 ], [ %176, %171 ]
  %175 = load double, ptr @one, align 8
  %176 = fadd double %174, %175
  %177 = fmul double %176, %169
  %178 = fmul double %177, %177
  store double %178, ptr %1, align 8
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
  %.not5.not = icmp slt i32 %194, %145
  br i1 %.not5.not, label %171, label %._crit_edge35, !llvm.loop !13

._crit_edge35:                                    ; preds = %171
  %split36 = phi double [ %193, %171 ]
  br label %195

195:                                              ; preds = %._crit_edge35, %133
  %.lcssa5 = phi double [ %split36, %._crit_edge35 ], [ 0.000000e+00, %133 ]
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
  store double %205, ptr %1, align 8
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
  %.not6.not37 = icmp slt i32 1, %145
  br i1 %.not6.not37, label %.lr.ph39, label %263

.lr.ph39:                                         ; preds = %195
  br label %242

242:                                              ; preds = %.lr.ph39, %242
  %243 = phi i32 [ 1, %.lr.ph39 ], [ %262, %242 ]
  %244 = phi double [ 0.000000e+00, %.lr.ph39 ], [ %261, %242 ]
  %245 = uitofp nneg i32 %243 to double
  %246 = fmul double %240, %245
  %247 = fmul double %246, %246
  store double %247, ptr %1, align 8
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
  %.not6.not = icmp slt i32 %262, %145
  br i1 %.not6.not, label %242, label %._crit_edge40, !llvm.loop !14

._crit_edge40:                                    ; preds = %242
  %split41 = phi double [ %261, %242 ]
  br label %263

263:                                              ; preds = %._crit_edge40, %195
  %.lcssa4 = phi double [ %split41, %._crit_edge40 ], [ 0.000000e+00, %195 ]
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
  store double %273, ptr %1, align 8
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
  store double %273, ptr %1, align 8
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
  %.not7.not42 = icmp slt i32 1, %145
  br i1 %.not7.not42, label %.lr.ph44, label %353

.lr.ph44:                                         ; preds = %263
  br label %318

318:                                              ; preds = %.lr.ph44, %318
  %319 = phi i32 [ 1, %.lr.ph44 ], [ %352, %318 ]
  %320 = phi double [ 0.000000e+00, %.lr.ph44 ], [ %351, %318 ]
  %321 = uitofp nneg i32 %319 to double
  %322 = fmul double %316, %321
  %323 = fmul double %322, %322
  store double %323, ptr %1, align 8
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
  %.not7.not = icmp slt i32 %352, %145
  br i1 %.not7.not, label %318, label %._crit_edge45, !llvm.loop !15

._crit_edge45:                                    ; preds = %318
  %split46 = phi double [ %351, %318 ]
  br label %353

353:                                              ; preds = %._crit_edge45, %263
  %.lcssa3 = phi double [ %split46, %._crit_edge45 ], [ 0.000000e+00, %263 ]
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
  store double %363, ptr %1, align 8
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
  %.not8.not47 = icmp slt i32 1, %145
  br i1 %.not8.not47, label %.lr.ph49, label %441

.lr.ph49:                                         ; preds = %353
  br label %407

407:                                              ; preds = %.lr.ph49, %407
  %408 = phi i32 [ 1, %.lr.ph49 ], [ %440, %407 ]
  %409 = phi double [ 0.000000e+00, %.lr.ph49 ], [ %439, %407 ]
  %410 = uitofp nneg i32 %408 to double
  %411 = fmul double %405, %410
  %412 = fmul double %411, %411
  store double %412, ptr %1, align 8
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
  %.not8.not = icmp slt i32 %440, %145
  br i1 %.not8.not, label %407, label %._crit_edge50, !llvm.loop !16

._crit_edge50:                                    ; preds = %407
  %split51 = phi double [ %439, %407 ]
  br label %441

441:                                              ; preds = %._crit_edge50, %353
  %.lcssa2 = phi double [ %split51, %._crit_edge50 ], [ 0.000000e+00, %353 ]
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
  store double %451, ptr %1, align 8
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
  store double %490, ptr %1, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %491 = fdiv double f0x40599541F7F192A4, %167
  %492 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not9.not52 = icmp slt i32 1, %145
  br i1 %.not9.not52, label %.lr.ph54, label %510

.lr.ph54:                                         ; preds = %441
  br label %493

493:                                              ; preds = %.lr.ph54, %493
  %494 = phi i32 [ 1, %.lr.ph54 ], [ %509, %493 ]
  %495 = phi double [ 0.000000e+00, %.lr.ph54 ], [ %508, %493 ]
  %496 = uitofp nneg i32 %494 to double
  %497 = fmul double %491, %496
  %498 = fmul double %497, %497
  %499 = load double, ptr %1, align 8
  %500 = fadd double %497, %499
  %501 = fdiv double %499, %500
  %502 = fsub double %495, %501
  %503 = fadd double %498, %499
  %504 = fdiv double %497, %503
  %505 = fsub double %502, %504
  %506 = call double @llvm.fmuladd.f64(double %497, double %498, double %499)
  %507 = fdiv double %498, %506
  %508 = fsub double %505, %507
  %509 = add nuw nsw i32 %494, 1
  %.not9.not = icmp slt i32 %509, %145
  br i1 %.not9.not, label %493, label %._crit_edge55, !llvm.loop !17

._crit_edge55:                                    ; preds = %493
  %split56 = phi double [ %508, %493 ]
  br label %510

510:                                              ; preds = %._crit_edge55, %441
  %.lcssa1 = phi double [ %split56, %._crit_edge55 ], [ 0.000000e+00, %441 ]
  %511 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %512 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %513 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %514 = load double, ptr @nulltime, align 8
  %515 = fneg double %514
  %516 = call double @llvm.fmuladd.f64(double %512, double %513, double %515)
  store double %516, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %517 = fdiv double %516, 1.200000e+01
  store double %517, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %518 = load double, ptr @sa, align 8
  %519 = fmul double %518, %518
  %520 = load double, ptr %1, align 8
  %521 = fneg double %520
  %522 = fadd double %518, %520
  %523 = fdiv double %520, %522
  %524 = fsub double %521, %523
  %525 = fadd double %519, %520
  %526 = fdiv double %518, %525
  %527 = fsub double %524, %526
  %528 = call double @llvm.fmuladd.f64(double %518, double %519, double %520)
  %529 = fdiv double %519, %528
  %530 = fsub double %527, %529
  store double %530, ptr @sa, align 8
  %531 = fmul nnan double %491, 1.800000e+01
  %532 = load double, ptr @two, align 8
  %533 = call double @llvm.fmuladd.f64(double %532, double %.lcssa1, double %530)
  %534 = fmul double %531, %533
  store double %534, ptr @sa, align 8
  %535 = fptosi double %534 to i32
  %536 = mul nsw i32 %535, -2000
  store i32 %536, ptr %2, align 4
  %537 = sitofp i32 %536 to double
  %538 = load double, ptr @scale, align 8
  %539 = fdiv double %537, %538
  %540 = fptosi double %539 to i32
  store i32 %540, ptr %2, align 4
  %541 = fadd double %534, 5.002000e+02
  store double %541, ptr @sc, align 8
  %542 = load double, ptr @one, align 8
  %543 = fdiv double %542, %517
  store double %543, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %544 = fmul double %541, 1.000000e-30
  %545 = fmul double %516, 1.000000e-30
  %546 = fmul double %543, 1.000000e-30
  %547 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %544, double noundef %545, double noundef %546) #4
  %548 = load double, ptr @piref, align 8
  %549 = load double, ptr @three, align 8
  %550 = sitofp i32 %540 to double
  %551 = fmul double %549, %550
  %552 = fdiv double %548, %551
  %553 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not10.not57 = icmp slt i32 1, %540
  br i1 %.not10.not57, label %.lr.ph59, label %589

.lr.ph59:                                         ; preds = %510
  br label %554

554:                                              ; preds = %.lr.ph59, %554
  %555 = phi i32 [ 1, %.lr.ph59 ], [ %588, %554 ]
  %556 = phi double [ 0.000000e+00, %.lr.ph59 ], [ %587, %554 ]
  %557 = uitofp nneg i32 %555 to double
  %558 = fmul double %552, %557
  %559 = fmul double %558, %558
  store double %559, ptr %1, align 8
  %560 = load double, ptr @B6, align 8
  %561 = load double, ptr @B5, align 8
  %562 = call double @llvm.fmuladd.f64(double %560, double %559, double %561)
  %563 = load double, ptr @B4, align 8
  %564 = call double @llvm.fmuladd.f64(double %559, double %562, double %563)
  %565 = load double, ptr @B3, align 8
  %566 = call double @llvm.fmuladd.f64(double %559, double %564, double %565)
  %567 = load double, ptr @B2, align 8
  %568 = call double @llvm.fmuladd.f64(double %559, double %566, double %567)
  %569 = load double, ptr @B1, align 8
  %570 = call double @llvm.fmuladd.f64(double %559, double %568, double %569)
  %571 = load double, ptr @one, align 8
  %572 = call double @llvm.fmuladd.f64(double %559, double %570, double %571)
  %573 = fmul double %572, %572
  %574 = fmul double %573, %558
  %575 = load double, ptr @A6, align 8
  %576 = load double, ptr @A5, align 8
  %577 = call double @llvm.fmuladd.f64(double %575, double %559, double %576)
  %578 = load double, ptr @A4, align 8
  %579 = call double @llvm.fmuladd.f64(double %577, double %559, double %578)
  %580 = load double, ptr @A3, align 8
  %581 = call double @llvm.fmuladd.f64(double %579, double %559, double %580)
  %582 = load double, ptr @A2, align 8
  %583 = call double @llvm.fmuladd.f64(double %581, double %559, double %582)
  %584 = load double, ptr @A1, align 8
  %585 = call double @llvm.fmuladd.f64(double %583, double %559, double %584)
  %586 = call double @llvm.fmuladd.f64(double %585, double %559, double %571)
  %587 = call double @llvm.fmuladd.f64(double %574, double %586, double %556)
  %588 = add nuw nsw i32 %555, 1
  %.not10.not = icmp slt i32 %588, %540
  br i1 %.not10.not, label %554, label %._crit_edge60, !llvm.loop !18

._crit_edge60:                                    ; preds = %554
  %split61 = phi double [ %587, %554 ]
  br label %589

589:                                              ; preds = %._crit_edge60, %510
  %.lcssa = phi double [ %split61, %._crit_edge60 ], [ 0.000000e+00, %510 ]
  %590 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %591 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %592 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %593 = load double, ptr @nulltime, align 8
  %594 = fneg double %593
  %595 = call double @llvm.fmuladd.f64(double %591, double %592, double %594)
  store double %595, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %596 = load double, ptr @piref, align 8
  %597 = load double, ptr @three, align 8
  %598 = fdiv double %596, %597
  %599 = fmul double %598, %598
  store double %599, ptr %1, align 8
  %600 = load double, ptr @A6, align 8
  %601 = load double, ptr @A5, align 8
  %602 = call double @llvm.fmuladd.f64(double %600, double %599, double %601)
  %603 = load double, ptr @A4, align 8
  %604 = call double @llvm.fmuladd.f64(double %602, double %599, double %603)
  %605 = load double, ptr @A3, align 8
  %606 = call double @llvm.fmuladd.f64(double %604, double %599, double %605)
  %607 = load double, ptr @A2, align 8
  %608 = call double @llvm.fmuladd.f64(double %606, double %599, double %607)
  %609 = load double, ptr @A1, align 8
  %610 = call double @llvm.fmuladd.f64(double %608, double %599, double %609)
  %611 = load double, ptr @one, align 8
  %612 = call double @llvm.fmuladd.f64(double %610, double %599, double %611)
  %613 = fmul double %598, %612
  store double %613, ptr @sa, align 8
  %614 = load double, ptr @B6, align 8
  %615 = load double, ptr @B5, align 8
  %616 = call double @llvm.fmuladd.f64(double %614, double %599, double %615)
  %617 = load double, ptr @B4, align 8
  %618 = call double @llvm.fmuladd.f64(double %599, double %616, double %617)
  %619 = load double, ptr @B3, align 8
  %620 = call double @llvm.fmuladd.f64(double %599, double %618, double %619)
  %621 = load double, ptr @B2, align 8
  %622 = call double @llvm.fmuladd.f64(double %599, double %620, double %621)
  %623 = load double, ptr @B1, align 8
  %624 = call double @llvm.fmuladd.f64(double %599, double %622, double %623)
  %625 = call double @llvm.fmuladd.f64(double %599, double %624, double %611)
  store double %625, ptr @sb, align 8
  %626 = fmul double %613, %625
  %627 = fmul double %626, %625
  store double %627, ptr @sa, align 8
  %628 = fdiv double %595, 3.000000e+01
  store double %628, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %629 = load double, ptr @two, align 8
  %630 = call double @llvm.fmuladd.f64(double %629, double %.lcssa, double %627)
  %631 = fmul double %552, %630
  %632 = fdiv double %631, %629
  store double %632, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %633 = fadd double %632, f0xBFD2AAAAAAAAAAAB
  store double %633, ptr @sc, align 8
  %634 = fdiv double %611, %628
  store double %634, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %635 = fmul double %633, 1.000000e-30
  %636 = fmul double %595, 1.000000e-30
  %637 = fmul double %634, 1.000000e-30
  %638 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %635, double noundef %636, double noundef %637) #4
  %639 = load double, ptr @five, align 8
  %640 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %641 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %642 = fsub double %640, %641
  %643 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %644 = call double @llvm.fmuladd.f64(double %639, double %642, double %643)
  %645 = fdiv double %644, 5.200000e+01
  store double %645, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %646 = load double, ptr @one, align 8
  %647 = fdiv double %646, %645
  store double %647, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %648 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %649 = fadd double %648, %643
  %650 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %651 = fadd double %649, %650
  %652 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %653 = fadd double %651, %652
  %654 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %655 = fadd double %653, %654
  store double %655, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %656 = load double, ptr @four, align 8
  %657 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %658 = call double @llvm.fmuladd.f64(double %656, double %657, double %655)
  %659 = fdiv double %658, 1.520000e+02
  store double %659, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %660 = fdiv double %646, %659
  store double %660, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %655, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %661 = fadd double %655, %657
  %662 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %663 = fadd double %661, %662
  %664 = fdiv double %663, 1.460000e+02
  store double %664, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %665 = fdiv double %646, %664
  store double %665, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %666 = fadd double %643, %650
  %667 = fadd double %666, %654
  %668 = fadd double %667, %662
  %669 = fdiv double %668, 9.100000e+01
  store double %669, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %670 = fdiv double %646, %669
  store double %670, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar11 = call i32 @putchar(i32 10)
  %671 = load i32, ptr %2, align 4
  %672 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %671) #4
  %673 = load double, ptr @nulltime, align 8
  %674 = fmul double %673, 1.000000e-30
  %675 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %674) #4
  %676 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %677 = fmul double %676, 1.000000e-30
  %678 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %677) #4
  %679 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %680 = fmul double %679, 1.000000e-30
  %681 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %680) #4
  %682 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %683 = fmul double %682, 1.000000e-30
  %684 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %683) #4
  %685 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %686 = fmul double %685, 1.000000e-30
  %687 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %686) #4
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
