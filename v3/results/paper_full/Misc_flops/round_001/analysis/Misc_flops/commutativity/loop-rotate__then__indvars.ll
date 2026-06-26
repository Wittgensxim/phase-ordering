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

7:                                                ; preds = %41
  %8 = phi double [ %.lcssa9, %41 ]
  %9 = phi double [ %19, %41 ]
  %10 = phi i32 [ %16, %41 ]
  %11 = phi double [ %43, %41 ]
  %12 = load double, ptr @TLimit, align 8
  %13 = fcmp olt double %11, %12
  br i1 %13, label %14, label %..loopexit_crit_edge, !llvm.loop !7

14:                                               ; preds = %.lr.ph19, %7
  %15 = phi i32 [ 15625, %.lr.ph19 ], [ %10, %7 ]
  %16 = shl i32 %15, 1
  %17 = load double, ptr @one, align 8
  %18 = sitofp i32 %16 to double
  %19 = fdiv double %17, %18
  store double %17, ptr %1, align 8
  %20 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not.not17 = icmp slt i32 1, %16
  br i1 %.not.not17, label %.lr.ph, label %41

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
  %exitcond = icmp ne i32 %40, %16
  br i1 %exitcond, label %21, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %21
  %split = phi double [ %39, %21 ]
  br label %41

41:                                               ; preds = %._crit_edge, %14
  %.lcssa9 = phi double [ %split, %._crit_edge ], [ 0.000000e+00, %14 ]
  %42 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %43 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %43, ptr @sa, align 8
  %44 = icmp eq i32 %15, 256000000
  br i1 %44, label %45, label %7

45:                                               ; preds = %41
  %.lcssa16 = phi double [ %19, %41 ]
  %.lcssa9.lcssa = phi double [ %.lcssa9, %41 ]
  br label %46

..loopexit_crit_edge:                             ; preds = %7
  %split20 = phi double [ %8, %7 ]
  %split21 = phi double [ %9, %7 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %0
  %.lcssa14 = phi double [ %split20, %..loopexit_crit_edge ], [ undef, %0 ]
  %.lcssa12 = phi double [ %split21, %..loopexit_crit_edge ], [ undef, %0 ]
  br label %46

46:                                               ; preds = %.loopexit, %45
  %47 = phi double [ %.lcssa9.lcssa, %45 ], [ %.lcssa14, %.loopexit ]
  %48 = phi double [ %.lcssa16, %45 ], [ %.lcssa12, %.loopexit ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %49 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %50

50:                                               ; preds = %50, %46
  br i1 false, label %50, label %51, !llvm.loop !10

51:                                               ; preds = %50
  %52 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %53 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %54 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %55 = fmul double %53, %54
  %56 = fcmp olt double %55, 0.000000e+00
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57, %51
  %59 = phi double [ 0.000000e+00, %57 ], [ %55, %51 ]
  store double %59, ptr @nulltime, align 8
  %60 = load double, ptr @sa, align 8
  %61 = fneg double %59
  %62 = call double @llvm.fmuladd.f64(double %53, double %60, double %61)
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
  %78 = call double @llvm.fmuladd.f64(double %77, double %47, double %76)
  %79 = fmul double %48, %78
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
  %.not23 = icmp sgt i32 1, %87
  br i1 %.not23, label %107, label %.lr.ph25

.lr.ph25:                                         ; preds = %58
  %99 = add i32 %87, 1
  br label %100

100:                                              ; preds = %.lr.ph25, %100
  %101 = phi i32 [ 1, %.lr.ph25 ], [ %106, %100 ]
  %102 = phi double [ %95, %.lr.ph25 ], [ %103, %100 ]
  %103 = fneg double %102
  %104 = load double, ptr @sa, align 8
  %105 = fsub double %104, %102
  store double %105, ptr @sa, align 8
  %106 = add nuw nsw i32 %101, 1
  %exitcond64 = icmp eq i32 %106, %99
  br i1 %exitcond64, label %._crit_edge26, label %100, !llvm.loop !11

._crit_edge26:                                    ; preds = %100
  %split27 = phi double [ %103, %100 ]
  br label %107

107:                                              ; preds = %._crit_edge26, %58
  %.lcssa8 = phi double [ %split27, %._crit_edge26 ], [ %95, %58 ]
  %108 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %109 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %110 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %111 = fmul double %109, %110
  %112 = fcmp olt double %111, 0.000000e+00
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  br label %114

114:                                              ; preds = %113, %107
  %storemerge = phi double [ 0.000000e+00, %113 ], [ %111, %107 ]
  store double %storemerge, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %115 = sitofp i32 %87 to double
  store double %115, ptr @sc, align 8
  %116 = load double, ptr @sa, align 8
  store double 0.000000e+00, ptr %1, align 8
  %117 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not428 = icmp sgt i32 1, %87
  br i1 %.not428, label %137, label %.lr.ph30

.lr.ph30:                                         ; preds = %114
  %118 = add i32 %87, 1
  br label %119

119:                                              ; preds = %.lr.ph30, %119
  %120 = phi i32 [ 1, %.lr.ph30 ], [ %136, %119 ]
  %121 = phi double [ 0.000000e+00, %.lr.ph30 ], [ %131, %119 ]
  %122 = phi double [ 0.000000e+00, %.lr.ph30 ], [ %132, %119 ]
  %123 = phi double [ %.lcssa8, %.lr.ph30 ], [ %125, %119 ]
  %124 = phi double [ %116, %.lr.ph30 ], [ %129, %119 ]
  %125 = fneg double %123
  %126 = load double, ptr @sa, align 8
  %127 = fsub double %126, %123
  store double %127, ptr @sa, align 8
  %128 = load double, ptr @two, align 8
  %129 = fadd double %124, %128
  %130 = fsub double %125, %129
  %131 = fadd double %121, %130
  %132 = call double @llvm.fmuladd.f64(double %123, double %129, double %122)
  %133 = load double, ptr %1, align 8
  %134 = fdiv double %123, %129
  %135 = fsub double %133, %134
  store double %135, ptr %1, align 8
  %136 = add nuw nsw i32 %120, 1
  %exitcond65 = icmp eq i32 %136, %118
  br i1 %exitcond65, label %._crit_edge31, label %119, !llvm.loop !12

._crit_edge31:                                    ; preds = %119
  %split32 = phi double [ %132, %119 ]
  %split33 = phi double [ %131, %119 ]
  br label %137

137:                                              ; preds = %._crit_edge31, %114
  %.lcssa7 = phi double [ %split32, %._crit_edge31 ], [ 0.000000e+00, %114 ]
  %.lcssa6 = phi double [ %split33, %._crit_edge31 ], [ 0.000000e+00, %114 ]
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
  br label %175

175:                                              ; preds = %.lr.ph36, %175
  %176 = phi i32 [ 1, %.lr.ph36 ], [ %198, %175 ]
  %177 = phi double [ 0.000000e+00, %.lr.ph36 ], [ %197, %175 ]
  %178 = phi double [ 0.000000e+00, %.lr.ph36 ], [ %180, %175 ]
  %179 = load double, ptr @one, align 8
  %180 = fadd double %178, %179
  %181 = fmul double %180, %173
  %182 = fmul double %181, %181
  store double %182, ptr %1, align 8
  %183 = load double, ptr @A6, align 8
  %184 = load double, ptr @A5, align 8
  %185 = fneg double %184
  %186 = call double @llvm.fmuladd.f64(double %183, double %182, double %185)
  %187 = load double, ptr @A4, align 8
  %188 = call double @llvm.fmuladd.f64(double %186, double %182, double %187)
  %189 = load double, ptr @A3, align 8
  %190 = fneg double %189
  %191 = call double @llvm.fmuladd.f64(double %188, double %182, double %190)
  %192 = load double, ptr @A2, align 8
  %193 = call double @llvm.fmuladd.f64(double %191, double %182, double %192)
  %194 = load double, ptr @A1, align 8
  %195 = call double @llvm.fmuladd.f64(double %193, double %182, double %194)
  %196 = call double @llvm.fmuladd.f64(double %195, double %182, double %179)
  %197 = call double @llvm.fmuladd.f64(double %181, double %196, double %177)
  %198 = add nuw nsw i32 %176, 1
  %exitcond66 = icmp ne i32 %198, %149
  br i1 %exitcond66, label %175, label %._crit_edge37, !llvm.loop !13

._crit_edge37:                                    ; preds = %175
  %split38 = phi double [ %197, %175 ]
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
  br label %246

246:                                              ; preds = %.lr.ph41, %246
  %247 = phi i32 [ 1, %.lr.ph41 ], [ %266, %246 ]
  %248 = phi double [ 0.000000e+00, %.lr.ph41 ], [ %265, %246 ]
  %249 = uitofp nneg i32 %247 to double
  %250 = fmul double %244, %249
  %251 = fmul double %250, %250
  store double %251, ptr %1, align 8
  %252 = load double, ptr @B6, align 8
  %253 = load double, ptr @B5, align 8
  %254 = call double @llvm.fmuladd.f64(double %252, double %251, double %253)
  %255 = load double, ptr @B4, align 8
  %256 = call double @llvm.fmuladd.f64(double %251, double %254, double %255)
  %257 = load double, ptr @B3, align 8
  %258 = call double @llvm.fmuladd.f64(double %251, double %256, double %257)
  %259 = load double, ptr @B2, align 8
  %260 = call double @llvm.fmuladd.f64(double %251, double %258, double %259)
  %261 = load double, ptr @B1, align 8
  %262 = call double @llvm.fmuladd.f64(double %251, double %260, double %261)
  %263 = call double @llvm.fmuladd.f64(double %251, double %262, double %248)
  %264 = load double, ptr @one, align 8
  %265 = fadd double %263, %264
  %266 = add nuw nsw i32 %247, 1
  %exitcond67 = icmp ne i32 %266, %149
  br i1 %exitcond67, label %246, label %._crit_edge42, !llvm.loop !14

._crit_edge42:                                    ; preds = %246
  %split43 = phi double [ %265, %246 ]
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
  br label %322

322:                                              ; preds = %.lr.ph46, %322
  %323 = phi i32 [ 1, %.lr.ph46 ], [ %356, %322 ]
  %324 = phi double [ 0.000000e+00, %.lr.ph46 ], [ %355, %322 ]
  %325 = uitofp nneg i32 %323 to double
  %326 = fmul double %320, %325
  %327 = fmul double %326, %326
  store double %327, ptr %1, align 8
  %328 = load double, ptr @A6, align 8
  %329 = load double, ptr @A5, align 8
  %330 = call double @llvm.fmuladd.f64(double %328, double %327, double %329)
  %331 = load double, ptr @A4, align 8
  %332 = call double @llvm.fmuladd.f64(double %330, double %327, double %331)
  %333 = load double, ptr @A3, align 8
  %334 = call double @llvm.fmuladd.f64(double %332, double %327, double %333)
  %335 = load double, ptr @A2, align 8
  %336 = call double @llvm.fmuladd.f64(double %334, double %327, double %335)
  %337 = load double, ptr @A1, align 8
  %338 = call double @llvm.fmuladd.f64(double %336, double %327, double %337)
  %339 = load double, ptr @one, align 8
  %340 = call double @llvm.fmuladd.f64(double %338, double %327, double %339)
  %341 = fmul double %326, %340
  %342 = load double, ptr @B6, align 8
  %343 = load double, ptr @B5, align 8
  %344 = call double @llvm.fmuladd.f64(double %342, double %327, double %343)
  %345 = load double, ptr @B4, align 8
  %346 = call double @llvm.fmuladd.f64(double %327, double %344, double %345)
  %347 = load double, ptr @B3, align 8
  %348 = call double @llvm.fmuladd.f64(double %327, double %346, double %347)
  %349 = load double, ptr @B2, align 8
  %350 = call double @llvm.fmuladd.f64(double %327, double %348, double %349)
  %351 = load double, ptr @B1, align 8
  %352 = call double @llvm.fmuladd.f64(double %327, double %350, double %351)
  %353 = call double @llvm.fmuladd.f64(double %327, double %352, double %339)
  %354 = fdiv double %341, %353
  %355 = fadd double %324, %354
  %356 = add nuw nsw i32 %323, 1
  %exitcond68 = icmp ne i32 %356, %149
  br i1 %exitcond68, label %322, label %._crit_edge47, !llvm.loop !15

._crit_edge47:                                    ; preds = %322
  %split48 = phi double [ %355, %322 ]
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
  br label %411

411:                                              ; preds = %.lr.ph51, %411
  %412 = phi i32 [ 1, %.lr.ph51 ], [ %444, %411 ]
  %413 = phi double [ 0.000000e+00, %.lr.ph51 ], [ %443, %411 ]
  %414 = uitofp nneg i32 %412 to double
  %415 = fmul double %409, %414
  %416 = fmul double %415, %415
  store double %416, ptr %1, align 8
  %417 = load double, ptr @A6, align 8
  %418 = load double, ptr @A5, align 8
  %419 = call double @llvm.fmuladd.f64(double %417, double %416, double %418)
  %420 = load double, ptr @A4, align 8
  %421 = call double @llvm.fmuladd.f64(double %419, double %416, double %420)
  %422 = load double, ptr @A3, align 8
  %423 = call double @llvm.fmuladd.f64(double %421, double %416, double %422)
  %424 = load double, ptr @A2, align 8
  %425 = call double @llvm.fmuladd.f64(double %423, double %416, double %424)
  %426 = load double, ptr @A1, align 8
  %427 = call double @llvm.fmuladd.f64(double %425, double %416, double %426)
  %428 = load double, ptr @one, align 8
  %429 = call double @llvm.fmuladd.f64(double %427, double %416, double %428)
  %430 = fmul double %415, %429
  %431 = load double, ptr @B6, align 8
  %432 = load double, ptr @B5, align 8
  %433 = call double @llvm.fmuladd.f64(double %431, double %416, double %432)
  %434 = load double, ptr @B4, align 8
  %435 = call double @llvm.fmuladd.f64(double %416, double %433, double %434)
  %436 = load double, ptr @B3, align 8
  %437 = call double @llvm.fmuladd.f64(double %416, double %435, double %436)
  %438 = load double, ptr @B2, align 8
  %439 = call double @llvm.fmuladd.f64(double %416, double %437, double %438)
  %440 = load double, ptr @B1, align 8
  %441 = call double @llvm.fmuladd.f64(double %416, double %439, double %440)
  %442 = call double @llvm.fmuladd.f64(double %416, double %441, double %428)
  %443 = call double @llvm.fmuladd.f64(double %430, double %442, double %413)
  %444 = add nuw nsw i32 %412, 1
  %exitcond69 = icmp ne i32 %444, %149
  br i1 %exitcond69, label %411, label %._crit_edge52, !llvm.loop !16

._crit_edge52:                                    ; preds = %411
  %split53 = phi double [ %443, %411 ]
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
  br label %497

497:                                              ; preds = %.lr.ph56, %497
  %498 = phi i32 [ 1, %.lr.ph56 ], [ %513, %497 ]
  %499 = phi double [ 0.000000e+00, %.lr.ph56 ], [ %512, %497 ]
  %500 = uitofp nneg i32 %498 to double
  %501 = fmul double %495, %500
  %502 = fmul double %501, %501
  %503 = load double, ptr %1, align 8
  %504 = fadd double %501, %503
  %505 = fdiv double %503, %504
  %506 = fsub double %499, %505
  %507 = fadd double %502, %503
  %508 = fdiv double %501, %507
  %509 = fsub double %506, %508
  %510 = call double @llvm.fmuladd.f64(double %501, double %502, double %503)
  %511 = fdiv double %502, %510
  %512 = fsub double %509, %511
  %513 = add nuw nsw i32 %498, 1
  %exitcond70 = icmp ne i32 %513, %149
  br i1 %exitcond70, label %497, label %._crit_edge57, !llvm.loop !17

._crit_edge57:                                    ; preds = %497
  %split58 = phi double [ %512, %497 ]
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
  br label %558

558:                                              ; preds = %.lr.ph61, %558
  %559 = phi i32 [ 1, %.lr.ph61 ], [ %592, %558 ]
  %560 = phi double [ 0.000000e+00, %.lr.ph61 ], [ %591, %558 ]
  %561 = uitofp nneg i32 %559 to double
  %562 = fmul double %556, %561
  %563 = fmul double %562, %562
  store double %563, ptr %1, align 8
  %564 = load double, ptr @B6, align 8
  %565 = load double, ptr @B5, align 8
  %566 = call double @llvm.fmuladd.f64(double %564, double %563, double %565)
  %567 = load double, ptr @B4, align 8
  %568 = call double @llvm.fmuladd.f64(double %563, double %566, double %567)
  %569 = load double, ptr @B3, align 8
  %570 = call double @llvm.fmuladd.f64(double %563, double %568, double %569)
  %571 = load double, ptr @B2, align 8
  %572 = call double @llvm.fmuladd.f64(double %563, double %570, double %571)
  %573 = load double, ptr @B1, align 8
  %574 = call double @llvm.fmuladd.f64(double %563, double %572, double %573)
  %575 = load double, ptr @one, align 8
  %576 = call double @llvm.fmuladd.f64(double %563, double %574, double %575)
  %577 = fmul double %576, %576
  %578 = fmul double %577, %562
  %579 = load double, ptr @A6, align 8
  %580 = load double, ptr @A5, align 8
  %581 = call double @llvm.fmuladd.f64(double %579, double %563, double %580)
  %582 = load double, ptr @A4, align 8
  %583 = call double @llvm.fmuladd.f64(double %581, double %563, double %582)
  %584 = load double, ptr @A3, align 8
  %585 = call double @llvm.fmuladd.f64(double %583, double %563, double %584)
  %586 = load double, ptr @A2, align 8
  %587 = call double @llvm.fmuladd.f64(double %585, double %563, double %586)
  %588 = load double, ptr @A1, align 8
  %589 = call double @llvm.fmuladd.f64(double %587, double %563, double %588)
  %590 = call double @llvm.fmuladd.f64(double %589, double %563, double %575)
  %591 = call double @llvm.fmuladd.f64(double %578, double %590, double %560)
  %592 = add nuw nsw i32 %559, 1
  %exitcond71 = icmp ne i32 %592, %544
  br i1 %exitcond71, label %558, label %._crit_edge62, !llvm.loop !18

._crit_edge62:                                    ; preds = %558
  %split63 = phi double [ %591, %558 ]
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
