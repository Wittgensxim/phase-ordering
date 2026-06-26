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
  %6 = fcmp ogt double %5, 0.000000e+00
  br i1 %6, label %.lr.ph19, label %.loopexit

.lr.ph19:                                         ; preds = %0
  br label %10

7:                                                ; preds = %37
  %8 = load double, ptr @TLimit, align 8
  %9 = fcmp olt double %39, %8
  br i1 %9, label %10, label %..loopexit_crit_edge, !llvm.loop !7

10:                                               ; preds = %.lr.ph19, %7
  %11 = phi i32 [ 15625, %.lr.ph19 ], [ %12, %7 ]
  %12 = shl nsw i32 %11, 1
  %13 = load double, ptr @one, align 8
  %14 = sitofp i32 %12 to double
  %15 = fdiv double %13, %14
  store double %13, ptr %1, align 8
  %16 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not.not17 = icmp sgt i32 %11, 0
  br i1 %.not.not17, label %.lr.ph, label %37

.lr.ph:                                           ; preds = %10
  br label %17

17:                                               ; preds = %.lr.ph, %17
  %18 = phi i32 [ 1, %.lr.ph ], [ %36, %17 ]
  %19 = phi double [ 0.000000e+00, %.lr.ph ], [ %35, %17 ]
  %20 = phi double [ 0.000000e+00, %.lr.ph ], [ %22, %17 ]
  %21 = load double, ptr %1, align 8
  %22 = fadd double %20, %21
  %23 = fmul double %22, %15
  %24 = load double, ptr @D1, align 8
  %25 = load double, ptr @D2, align 8
  %26 = load double, ptr @D3, align 8
  %27 = call double @llvm.fmuladd.f64(double %23, double %26, double %25)
  %28 = call double @llvm.fmuladd.f64(double %23, double %27, double %24)
  %29 = load double, ptr @E2, align 8
  %30 = load double, ptr @E3, align 8
  %31 = call double @llvm.fmuladd.f64(double %23, double %30, double %29)
  %32 = call double @llvm.fmuladd.f64(double %23, double %31, double %24)
  %33 = call double @llvm.fmuladd.f64(double %23, double %32, double %21)
  %34 = fdiv double %28, %33
  %35 = fadd double %19, %34
  %36 = add nuw nsw i32 %18, 1
  %.not.not = icmp slt i32 %36, %12
  br i1 %.not.not, label %17, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %17
  br label %37

37:                                               ; preds = %._crit_edge, %10
  %.lcssa9 = phi double [ %35, %._crit_edge ], [ 0.000000e+00, %10 ]
  %38 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %39 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %39, ptr @sa, align 8
  %40 = icmp eq i32 %11, 256000000
  br i1 %40, label %41, label %7

41:                                               ; preds = %37
  br label %42

..loopexit_crit_edge:                             ; preds = %7
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %0
  %.lcssa14 = phi double [ %.lcssa9, %..loopexit_crit_edge ], [ undef, %0 ]
  %.lcssa12 = phi double [ %15, %..loopexit_crit_edge ], [ undef, %0 ]
  %.lcssa10 = phi i32 [ %12, %..loopexit_crit_edge ], [ 15625, %0 ]
  br label %42

42:                                               ; preds = %.loopexit, %41
  %43 = phi double [ %.lcssa9, %41 ], [ %.lcssa14, %.loopexit ]
  %44 = phi double [ %15, %41 ], [ %.lcssa12, %.loopexit ]
  %45 = phi i32 [ 512000000, %41 ], [ %.lcssa10, %.loopexit ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %46 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %47

47:                                               ; preds = %47, %42
  %48 = phi i32 [ %49, %47 ], [ 1, %42 ]
  %.not.not3 = icmp slt i32 %48, %45
  %49 = add nuw nsw i32 %48, 1
  br i1 %.not.not3, label %47, label %50, !llvm.loop !10

50:                                               ; preds = %47
  %51 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %52 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %53 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %54 = fmul double %52, %53
  %55 = fcmp olt double %54, 0.000000e+00
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %50
  %58 = phi double [ 0.000000e+00, %56 ], [ %54, %50 ]
  store double %58, ptr @nulltime, align 8
  %59 = load double, ptr @sa, align 8
  %60 = fneg double %58
  %61 = call double @llvm.fmuladd.f64(double %52, double %59, double %60)
  store double %61, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %62 = load double, ptr @D1, align 8
  %63 = load double, ptr @D2, align 8
  %64 = fadd double %62, %63
  %65 = load double, ptr @D3, align 8
  %66 = fadd double %64, %65
  %67 = load double, ptr @one, align 8
  %68 = fadd double %67, %62
  %69 = load double, ptr @E2, align 8
  %70 = fadd double %68, %69
  %71 = load double, ptr @E3, align 8
  %72 = fadd double %70, %71
  %73 = fdiv double %66, %72
  store double %73, ptr @sa, align 8
  store double %62, ptr @sb, align 8
  %74 = fdiv double %61, 1.400000e+01
  store double %74, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %75 = fadd double %73, %62
  %76 = load double, ptr @two, align 8
  %77 = call double @llvm.fmuladd.f64(double %76, double %43, double %75)
  %78 = fmul double %44, %77
  %79 = fdiv double %78, %76
  store double %79, ptr @sa, align 8
  %80 = fdiv double %67, %79
  store double %80, ptr @sb, align 8
  %81 = fptosi double %80 to i32
  %82 = mul nsw i32 %81, 40000
  %83 = sitofp i32 %82 to double
  %84 = load double, ptr @scale, align 8
  %85 = fdiv double %83, %84
  %86 = fptosi double %85 to i32
  %87 = fadd double %80, -2.520000e+01
  store double %87, ptr @sc, align 8
  %88 = fdiv double %67, %74
  store double %88, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %89 = fmul double %87, 1.000000e-30
  %90 = fmul double %61, 1.000000e-30
  %91 = fmul double %88, 1.000000e-30
  %92 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %89, double noundef %90, double noundef %91) #4
  store i32 %86, ptr %2, align 4
  %93 = load double, ptr @five, align 8
  %94 = fneg double %93
  %95 = load double, ptr @one, align 8
  %96 = fneg double %95
  store double %96, ptr @sa, align 8
  %97 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not23 = icmp slt i32 %86, 1
  br i1 %.not23, label %105, label %.lr.ph25

.lr.ph25:                                         ; preds = %57
  br label %98

98:                                               ; preds = %.lr.ph25, %98
  %99 = phi i32 [ 1, %.lr.ph25 ], [ %104, %98 ]
  %100 = phi double [ %94, %.lr.ph25 ], [ %101, %98 ]
  %101 = fneg double %100
  %102 = load double, ptr @sa, align 8
  %103 = fsub double %102, %100
  store double %103, ptr @sa, align 8
  %104 = add nuw nsw i32 %99, 1
  %.not.not64 = icmp slt i32 %99, %86
  br i1 %.not.not64, label %98, label %._crit_edge26, !llvm.loop !11

._crit_edge26:                                    ; preds = %98
  br label %105

105:                                              ; preds = %._crit_edge26, %57
  %.lcssa8 = phi double [ %101, %._crit_edge26 ], [ %94, %57 ]
  %106 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %107 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %108 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %109 = fmul double %107, %108
  %110 = fcmp olt double %109, 0.000000e+00
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %112

112:                                              ; preds = %111, %105
  %storemerge = phi double [ 0.000000e+00, %111 ], [ %109, %105 ]
  store double %storemerge, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %113 = sitofp i32 %86 to double
  store double %113, ptr @sc, align 8
  %114 = load double, ptr @sa, align 8
  store double 0.000000e+00, ptr %1, align 8
  %115 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not428 = icmp slt i32 %86, 1
  br i1 %.not428, label %134, label %.lr.ph30

.lr.ph30:                                         ; preds = %112
  br label %116

116:                                              ; preds = %.lr.ph30, %116
  %117 = phi i32 [ 1, %.lr.ph30 ], [ %133, %116 ]
  %118 = phi double [ 0.000000e+00, %.lr.ph30 ], [ %128, %116 ]
  %119 = phi double [ 0.000000e+00, %.lr.ph30 ], [ %129, %116 ]
  %120 = phi double [ %.lcssa8, %.lr.ph30 ], [ %122, %116 ]
  %121 = phi double [ %114, %.lr.ph30 ], [ %126, %116 ]
  %122 = fneg double %120
  %123 = load double, ptr @sa, align 8
  %124 = fsub double %123, %120
  store double %124, ptr @sa, align 8
  %125 = load double, ptr @two, align 8
  %126 = fadd double %121, %125
  %127 = fsub double %122, %126
  %128 = fadd double %118, %127
  %129 = call double @llvm.fmuladd.f64(double %120, double %126, double %119)
  %130 = load double, ptr %1, align 8
  %131 = fdiv double %120, %126
  %132 = fsub double %130, %131
  store double %132, ptr %1, align 8
  %133 = add nuw nsw i32 %117, 1
  %.not4.not = icmp slt i32 %117, %86
  br i1 %.not4.not, label %116, label %._crit_edge31, !llvm.loop !12

._crit_edge31:                                    ; preds = %116
  br label %134

134:                                              ; preds = %._crit_edge31, %112
  %.lcssa7 = phi double [ %129, %._crit_edge31 ], [ 0.000000e+00, %112 ]
  %.lcssa6 = phi double [ %128, %._crit_edge31 ], [ 0.000000e+00, %112 ]
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
  store i32 %146, ptr %2, align 4
  %147 = load double, ptr @four, align 8
  %148 = load double, ptr %1, align 8
  %149 = fmul double %147, %148
  %150 = load double, ptr @five, align 8
  %151 = fdiv double %149, %150
  store double %151, ptr @sa, align 8
  %152 = fdiv double %150, %.lcssa7
  %153 = fadd double %151, %152
  store double %153, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %154 = fmul double %.lcssa7, %.lcssa7
  %155 = fmul double %154, %.lcssa7
  %156 = fdiv double 3.125000e+01, %155
  %157 = fsub double %153, %156
  store double %157, ptr @piprg, align 8
  %158 = load double, ptr @piref, align 8
  %159 = fsub double %157, %158
  store double %159, ptr @pierr, align 8
  %160 = load double, ptr @one, align 8
  %161 = fdiv double %160, %141
  store double %161, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %162 = fmul double %159, 1.000000e-30
  %163 = fmul double %140, 1.000000e-30
  %164 = fmul double %161, 1.000000e-30
  %165 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %162, double noundef %163, double noundef %164) #4
  %166 = load double, ptr @piref, align 8
  %167 = load double, ptr @three, align 8
  %168 = sitofp i32 %146 to double
  %169 = fmul double %167, %168
  %170 = fdiv double %166, %169
  %171 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not5.not34 = icmp sgt i32 %146, 1
  br i1 %.not5.not34, label %.lr.ph36, label %196

.lr.ph36:                                         ; preds = %134
  br label %172

172:                                              ; preds = %.lr.ph36, %172
  %173 = phi i32 [ 1, %.lr.ph36 ], [ %195, %172 ]
  %174 = phi double [ 0.000000e+00, %.lr.ph36 ], [ %194, %172 ]
  %175 = phi double [ 0.000000e+00, %.lr.ph36 ], [ %177, %172 ]
  %176 = load double, ptr @one, align 8
  %177 = fadd double %175, %176
  %178 = fmul double %177, %170
  %179 = fmul double %178, %178
  store double %179, ptr %1, align 8
  %180 = load double, ptr @A6, align 8
  %181 = load double, ptr @A5, align 8
  %182 = fneg double %181
  %183 = call double @llvm.fmuladd.f64(double %180, double %179, double %182)
  %184 = load double, ptr @A4, align 8
  %185 = call double @llvm.fmuladd.f64(double %183, double %179, double %184)
  %186 = load double, ptr @A3, align 8
  %187 = fneg double %186
  %188 = call double @llvm.fmuladd.f64(double %185, double %179, double %187)
  %189 = load double, ptr @A2, align 8
  %190 = call double @llvm.fmuladd.f64(double %188, double %179, double %189)
  %191 = load double, ptr @A1, align 8
  %192 = call double @llvm.fmuladd.f64(double %190, double %179, double %191)
  %193 = call double @llvm.fmuladd.f64(double %192, double %179, double %176)
  %194 = call double @llvm.fmuladd.f64(double %178, double %193, double %174)
  %195 = add nuw nsw i32 %173, 1
  %.not5.not = icmp slt i32 %195, %146
  br i1 %.not5.not, label %172, label %._crit_edge37, !llvm.loop !13

._crit_edge37:                                    ; preds = %172
  br label %196

196:                                              ; preds = %._crit_edge37, %134
  %.lcssa5 = phi double [ %194, %._crit_edge37 ], [ 0.000000e+00, %134 ]
  %197 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %198 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %199 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %200 = load double, ptr @nulltime, align 8
  %201 = fneg double %200
  %202 = call double @llvm.fmuladd.f64(double %198, double %199, double %201)
  store double %202, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %203 = load double, ptr @piref, align 8
  %204 = load double, ptr @three, align 8
  %205 = fdiv double %203, %204
  %206 = fmul double %205, %205
  store double %206, ptr %1, align 8
  %207 = load double, ptr @A6, align 8
  %208 = load double, ptr @A5, align 8
  %209 = fneg double %208
  %210 = call double @llvm.fmuladd.f64(double %207, double %206, double %209)
  %211 = load double, ptr @A4, align 8
  %212 = call double @llvm.fmuladd.f64(double %210, double %206, double %211)
  %213 = load double, ptr @A3, align 8
  %214 = fneg double %213
  %215 = call double @llvm.fmuladd.f64(double %212, double %206, double %214)
  %216 = load double, ptr @A2, align 8
  %217 = call double @llvm.fmuladd.f64(double %215, double %206, double %216)
  %218 = load double, ptr @A1, align 8
  %219 = call double @llvm.fmuladd.f64(double %217, double %206, double %218)
  %220 = load double, ptr @one, align 8
  %221 = call double @llvm.fmuladd.f64(double %219, double %206, double %220)
  %222 = fmul double %205, %221
  store double %222, ptr @sa, align 8
  %223 = fdiv double %202, 1.700000e+01
  store double %223, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %224 = load double, ptr @two, align 8
  %225 = call double @llvm.fmuladd.f64(double %224, double %.lcssa5, double %222)
  %226 = fmul double %170, %225
  %227 = fdiv double %226, %224
  store double %227, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %228 = fadd double %227, -5.000000e-01
  store double %228, ptr @sc, align 8
  %229 = fdiv double %220, %223
  store double %229, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %230 = fmul double %228, 1.000000e-30
  %231 = fmul double %202, 1.000000e-30
  %232 = fmul double %229, 1.000000e-30
  %233 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %230, double noundef %231, double noundef %232) #4
  %234 = load double, ptr @A3, align 8
  %235 = fneg double %234
  store double %235, ptr @A3, align 8
  %236 = load double, ptr @A5, align 8
  %237 = fneg double %236
  store double %237, ptr @A5, align 8
  %238 = load double, ptr @piref, align 8
  %239 = load double, ptr @three, align 8
  %240 = fmul double %239, %168
  %241 = fdiv double %238, %240
  %242 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not6.not39 = icmp sgt i32 %146, 1
  br i1 %.not6.not39, label %.lr.ph41, label %264

.lr.ph41:                                         ; preds = %196
  br label %243

243:                                              ; preds = %.lr.ph41, %243
  %244 = phi i32 [ 1, %.lr.ph41 ], [ %263, %243 ]
  %245 = phi double [ 0.000000e+00, %.lr.ph41 ], [ %262, %243 ]
  %246 = uitofp nneg i32 %244 to double
  %247 = fmul double %241, %246
  %248 = fmul double %247, %247
  store double %248, ptr %1, align 8
  %249 = load double, ptr @B6, align 8
  %250 = load double, ptr @B5, align 8
  %251 = call double @llvm.fmuladd.f64(double %249, double %248, double %250)
  %252 = load double, ptr @B4, align 8
  %253 = call double @llvm.fmuladd.f64(double %248, double %251, double %252)
  %254 = load double, ptr @B3, align 8
  %255 = call double @llvm.fmuladd.f64(double %248, double %253, double %254)
  %256 = load double, ptr @B2, align 8
  %257 = call double @llvm.fmuladd.f64(double %248, double %255, double %256)
  %258 = load double, ptr @B1, align 8
  %259 = call double @llvm.fmuladd.f64(double %248, double %257, double %258)
  %260 = call double @llvm.fmuladd.f64(double %248, double %259, double %245)
  %261 = load double, ptr @one, align 8
  %262 = fadd double %260, %261
  %263 = add nuw nsw i32 %244, 1
  %.not6.not = icmp slt i32 %263, %146
  br i1 %.not6.not, label %243, label %._crit_edge42, !llvm.loop !14

._crit_edge42:                                    ; preds = %243
  br label %264

264:                                              ; preds = %._crit_edge42, %196
  %.lcssa4 = phi double [ %262, %._crit_edge42 ], [ 0.000000e+00, %196 ]
  %265 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %266 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %267 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %268 = load double, ptr @nulltime, align 8
  %269 = fneg double %268
  %270 = call double @llvm.fmuladd.f64(double %266, double %267, double %269)
  store double %270, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %271 = load double, ptr @piref, align 8
  %272 = load double, ptr @three, align 8
  %273 = fdiv double %271, %272
  %274 = fmul double %273, %273
  store double %274, ptr %1, align 8
  %275 = load double, ptr @B6, align 8
  %276 = load double, ptr @B5, align 8
  %277 = call double @llvm.fmuladd.f64(double %275, double %274, double %276)
  %278 = load double, ptr @B4, align 8
  %279 = call double @llvm.fmuladd.f64(double %274, double %277, double %278)
  %280 = load double, ptr @B3, align 8
  %281 = call double @llvm.fmuladd.f64(double %274, double %279, double %280)
  %282 = load double, ptr @B2, align 8
  %283 = call double @llvm.fmuladd.f64(double %274, double %281, double %282)
  %284 = load double, ptr @B1, align 8
  %285 = call double @llvm.fmuladd.f64(double %274, double %283, double %284)
  %286 = load double, ptr @one, align 8
  %287 = call double @llvm.fmuladd.f64(double %274, double %285, double %286)
  store double %287, ptr @sa, align 8
  %288 = fdiv double %270, 1.500000e+01
  store double %288, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %289 = fadd double %287, %286
  %290 = load double, ptr @two, align 8
  %291 = call double @llvm.fmuladd.f64(double %290, double %.lcssa4, double %289)
  %292 = fmul double %241, %291
  %293 = fdiv double %292, %290
  store double %293, ptr @sa, align 8
  store double %274, ptr %1, align 8
  %294 = load double, ptr @A6, align 8
  %295 = load double, ptr @A5, align 8
  %296 = call double @llvm.fmuladd.f64(double %294, double %274, double %295)
  %297 = load double, ptr @A4, align 8
  %298 = call double @llvm.fmuladd.f64(double %296, double %274, double %297)
  %299 = load double, ptr @A3, align 8
  %300 = call double @llvm.fmuladd.f64(double %298, double %274, double %299)
  %301 = load double, ptr @A2, align 8
  %302 = call double @llvm.fmuladd.f64(double %300, double %274, double %301)
  %303 = load double, ptr @A1, align 8
  %304 = call double @llvm.fmuladd.f64(double %302, double %274, double %303)
  %305 = load double, ptr @A0, align 8
  %306 = call double @llvm.fmuladd.f64(double %304, double %274, double %305)
  %307 = fmul double %273, %306
  store double %307, ptr @sb, align 8
  %308 = fsub double %293, %307
  store double %308, ptr @sc, align 8
  %309 = fdiv double %286, %288
  store double %309, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %310 = fmul double %308, 1.000000e-30
  %311 = fmul double %270, 1.000000e-30
  %312 = fmul double %309, 1.000000e-30
  %313 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %310, double noundef %311, double noundef %312) #4
  %314 = load double, ptr @piref, align 8
  %315 = load double, ptr @three, align 8
  %316 = fmul double %315, %168
  %317 = fdiv double %314, %316
  %318 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not7.not44 = icmp sgt i32 %146, 1
  br i1 %.not7.not44, label %.lr.ph46, label %354

.lr.ph46:                                         ; preds = %264
  br label %319

319:                                              ; preds = %.lr.ph46, %319
  %320 = phi i32 [ 1, %.lr.ph46 ], [ %353, %319 ]
  %321 = phi double [ 0.000000e+00, %.lr.ph46 ], [ %352, %319 ]
  %322 = uitofp nneg i32 %320 to double
  %323 = fmul double %317, %322
  %324 = fmul double %323, %323
  store double %324, ptr %1, align 8
  %325 = load double, ptr @A6, align 8
  %326 = load double, ptr @A5, align 8
  %327 = call double @llvm.fmuladd.f64(double %325, double %324, double %326)
  %328 = load double, ptr @A4, align 8
  %329 = call double @llvm.fmuladd.f64(double %327, double %324, double %328)
  %330 = load double, ptr @A3, align 8
  %331 = call double @llvm.fmuladd.f64(double %329, double %324, double %330)
  %332 = load double, ptr @A2, align 8
  %333 = call double @llvm.fmuladd.f64(double %331, double %324, double %332)
  %334 = load double, ptr @A1, align 8
  %335 = call double @llvm.fmuladd.f64(double %333, double %324, double %334)
  %336 = load double, ptr @one, align 8
  %337 = call double @llvm.fmuladd.f64(double %335, double %324, double %336)
  %338 = fmul double %323, %337
  %339 = load double, ptr @B6, align 8
  %340 = load double, ptr @B5, align 8
  %341 = call double @llvm.fmuladd.f64(double %339, double %324, double %340)
  %342 = load double, ptr @B4, align 8
  %343 = call double @llvm.fmuladd.f64(double %324, double %341, double %342)
  %344 = load double, ptr @B3, align 8
  %345 = call double @llvm.fmuladd.f64(double %324, double %343, double %344)
  %346 = load double, ptr @B2, align 8
  %347 = call double @llvm.fmuladd.f64(double %324, double %345, double %346)
  %348 = load double, ptr @B1, align 8
  %349 = call double @llvm.fmuladd.f64(double %324, double %347, double %348)
  %350 = call double @llvm.fmuladd.f64(double %324, double %349, double %336)
  %351 = fdiv double %338, %350
  %352 = fadd double %321, %351
  %353 = add nuw nsw i32 %320, 1
  %.not7.not = icmp slt i32 %353, %146
  br i1 %.not7.not, label %319, label %._crit_edge47, !llvm.loop !15

._crit_edge47:                                    ; preds = %319
  br label %354

354:                                              ; preds = %._crit_edge47, %264
  %.lcssa3 = phi double [ %352, %._crit_edge47 ], [ 0.000000e+00, %264 ]
  %355 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %356 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %357 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %358 = load double, ptr @nulltime, align 8
  %359 = fneg double %358
  %360 = call double @llvm.fmuladd.f64(double %356, double %357, double %359)
  store double %360, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %361 = load double, ptr @piref, align 8
  %362 = load double, ptr @three, align 8
  %363 = fdiv double %361, %362
  %364 = fmul double %363, %363
  store double %364, ptr %1, align 8
  %365 = load double, ptr @A6, align 8
  %366 = load double, ptr @A5, align 8
  %367 = call double @llvm.fmuladd.f64(double %365, double %364, double %366)
  %368 = load double, ptr @A4, align 8
  %369 = call double @llvm.fmuladd.f64(double %367, double %364, double %368)
  %370 = load double, ptr @A3, align 8
  %371 = call double @llvm.fmuladd.f64(double %369, double %364, double %370)
  %372 = load double, ptr @A2, align 8
  %373 = call double @llvm.fmuladd.f64(double %371, double %364, double %372)
  %374 = load double, ptr @A1, align 8
  %375 = call double @llvm.fmuladd.f64(double %373, double %364, double %374)
  %376 = load double, ptr @one, align 8
  %377 = call double @llvm.fmuladd.f64(double %375, double %364, double %376)
  %378 = fmul double %363, %377
  store double %378, ptr @sa, align 8
  %379 = load double, ptr @B6, align 8
  %380 = load double, ptr @B5, align 8
  %381 = call double @llvm.fmuladd.f64(double %379, double %364, double %380)
  %382 = load double, ptr @B4, align 8
  %383 = call double @llvm.fmuladd.f64(double %364, double %381, double %382)
  %384 = load double, ptr @B3, align 8
  %385 = call double @llvm.fmuladd.f64(double %364, double %383, double %384)
  %386 = load double, ptr @B2, align 8
  %387 = call double @llvm.fmuladd.f64(double %364, double %385, double %386)
  %388 = load double, ptr @B1, align 8
  %389 = call double @llvm.fmuladd.f64(double %364, double %387, double %388)
  %390 = call double @llvm.fmuladd.f64(double %364, double %389, double %376)
  store double %390, ptr @sb, align 8
  %391 = fdiv double %378, %390
  store double %391, ptr @sa, align 8
  %392 = fdiv double %360, 2.900000e+01
  store double %392, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %393 = load double, ptr @two, align 8
  %394 = call double @llvm.fmuladd.f64(double %393, double %.lcssa3, double %391)
  %395 = fmul double %317, %394
  %396 = fdiv double %395, %393
  store double %396, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %397 = fadd double %396, f0xBFE62E42FEFA39EF
  store double %397, ptr @sc, align 8
  %398 = fdiv double %376, %392
  store double %398, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %399 = fmul double %397, 1.000000e-30
  %400 = fmul double %360, 1.000000e-30
  %401 = fmul double %398, 1.000000e-30
  %402 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %399, double noundef %400, double noundef %401) #4
  %403 = load double, ptr @piref, align 8
  %404 = load double, ptr @four, align 8
  %405 = fmul double %404, %168
  %406 = fdiv double %403, %405
  %407 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not8.not49 = icmp sgt i32 %146, 1
  br i1 %.not8.not49, label %.lr.ph51, label %442

.lr.ph51:                                         ; preds = %354
  br label %408

408:                                              ; preds = %.lr.ph51, %408
  %409 = phi i32 [ 1, %.lr.ph51 ], [ %441, %408 ]
  %410 = phi double [ 0.000000e+00, %.lr.ph51 ], [ %440, %408 ]
  %411 = uitofp nneg i32 %409 to double
  %412 = fmul double %406, %411
  %413 = fmul double %412, %412
  store double %413, ptr %1, align 8
  %414 = load double, ptr @A6, align 8
  %415 = load double, ptr @A5, align 8
  %416 = call double @llvm.fmuladd.f64(double %414, double %413, double %415)
  %417 = load double, ptr @A4, align 8
  %418 = call double @llvm.fmuladd.f64(double %416, double %413, double %417)
  %419 = load double, ptr @A3, align 8
  %420 = call double @llvm.fmuladd.f64(double %418, double %413, double %419)
  %421 = load double, ptr @A2, align 8
  %422 = call double @llvm.fmuladd.f64(double %420, double %413, double %421)
  %423 = load double, ptr @A1, align 8
  %424 = call double @llvm.fmuladd.f64(double %422, double %413, double %423)
  %425 = load double, ptr @one, align 8
  %426 = call double @llvm.fmuladd.f64(double %424, double %413, double %425)
  %427 = fmul double %412, %426
  %428 = load double, ptr @B6, align 8
  %429 = load double, ptr @B5, align 8
  %430 = call double @llvm.fmuladd.f64(double %428, double %413, double %429)
  %431 = load double, ptr @B4, align 8
  %432 = call double @llvm.fmuladd.f64(double %413, double %430, double %431)
  %433 = load double, ptr @B3, align 8
  %434 = call double @llvm.fmuladd.f64(double %413, double %432, double %433)
  %435 = load double, ptr @B2, align 8
  %436 = call double @llvm.fmuladd.f64(double %413, double %434, double %435)
  %437 = load double, ptr @B1, align 8
  %438 = call double @llvm.fmuladd.f64(double %413, double %436, double %437)
  %439 = call double @llvm.fmuladd.f64(double %413, double %438, double %425)
  %440 = call double @llvm.fmuladd.f64(double %427, double %439, double %410)
  %441 = add nuw nsw i32 %409, 1
  %.not8.not = icmp slt i32 %441, %146
  br i1 %.not8.not, label %408, label %._crit_edge52, !llvm.loop !16

._crit_edge52:                                    ; preds = %408
  br label %442

442:                                              ; preds = %._crit_edge52, %354
  %.lcssa2 = phi double [ %440, %._crit_edge52 ], [ 0.000000e+00, %354 ]
  %443 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %444 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %445 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %446 = load double, ptr @nulltime, align 8
  %447 = fneg double %446
  %448 = call double @llvm.fmuladd.f64(double %444, double %445, double %447)
  store double %448, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %449 = load double, ptr @piref, align 8
  %450 = load double, ptr @four, align 8
  %451 = fdiv double %449, %450
  %452 = fmul double %451, %451
  store double %452, ptr %1, align 8
  %453 = load double, ptr @A6, align 8
  %454 = load double, ptr @A5, align 8
  %455 = call double @llvm.fmuladd.f64(double %453, double %452, double %454)
  %456 = load double, ptr @A4, align 8
  %457 = call double @llvm.fmuladd.f64(double %455, double %452, double %456)
  %458 = load double, ptr @A3, align 8
  %459 = call double @llvm.fmuladd.f64(double %457, double %452, double %458)
  %460 = load double, ptr @A2, align 8
  %461 = call double @llvm.fmuladd.f64(double %459, double %452, double %460)
  %462 = load double, ptr @A1, align 8
  %463 = call double @llvm.fmuladd.f64(double %461, double %452, double %462)
  %464 = load double, ptr @one, align 8
  %465 = call double @llvm.fmuladd.f64(double %463, double %452, double %464)
  %466 = fmul double %451, %465
  store double %466, ptr @sa, align 8
  %467 = load double, ptr @B6, align 8
  %468 = load double, ptr @B5, align 8
  %469 = call double @llvm.fmuladd.f64(double %467, double %452, double %468)
  %470 = load double, ptr @B4, align 8
  %471 = call double @llvm.fmuladd.f64(double %452, double %469, double %470)
  %472 = load double, ptr @B3, align 8
  %473 = call double @llvm.fmuladd.f64(double %452, double %471, double %472)
  %474 = load double, ptr @B2, align 8
  %475 = call double @llvm.fmuladd.f64(double %452, double %473, double %474)
  %476 = load double, ptr @B1, align 8
  %477 = call double @llvm.fmuladd.f64(double %452, double %475, double %476)
  %478 = call double @llvm.fmuladd.f64(double %452, double %477, double %464)
  store double %478, ptr @sb, align 8
  %479 = fmul double %466, %478
  store double %479, ptr @sa, align 8
  %480 = fdiv double %448, 2.900000e+01
  store double %480, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %481 = load double, ptr @two, align 8
  %482 = call double @llvm.fmuladd.f64(double %481, double %.lcssa2, double %479)
  %483 = fmul double %406, %482
  %484 = fdiv double %483, %481
  store double %484, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %485 = fadd double %484, -2.500000e-01
  store double %485, ptr @sc, align 8
  %486 = fdiv double %464, %480
  store double %486, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %487 = fmul double %485, 1.000000e-30
  %488 = fmul double %448, 1.000000e-30
  %489 = fmul double %486, 1.000000e-30
  %490 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %487, double noundef %488, double noundef %489) #4
  %491 = load double, ptr @one, align 8
  store double %491, ptr %1, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %492 = fdiv double f0x40599541F7F192A4, %168
  %493 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not9.not54 = icmp sgt i32 %146, 1
  br i1 %.not9.not54, label %.lr.ph56, label %511

.lr.ph56:                                         ; preds = %442
  br label %494

494:                                              ; preds = %.lr.ph56, %494
  %495 = phi i32 [ 1, %.lr.ph56 ], [ %510, %494 ]
  %496 = phi double [ 0.000000e+00, %.lr.ph56 ], [ %509, %494 ]
  %497 = uitofp nneg i32 %495 to double
  %498 = fmul double %492, %497
  %499 = fmul double %498, %498
  %500 = load double, ptr %1, align 8
  %501 = fadd double %498, %500
  %502 = fdiv double %500, %501
  %503 = fsub double %496, %502
  %504 = fadd double %499, %500
  %505 = fdiv double %498, %504
  %506 = fsub double %503, %505
  %507 = call double @llvm.fmuladd.f64(double %498, double %499, double %500)
  %508 = fdiv double %499, %507
  %509 = fsub double %506, %508
  %510 = add nuw nsw i32 %495, 1
  %.not9.not = icmp slt i32 %510, %146
  br i1 %.not9.not, label %494, label %._crit_edge57, !llvm.loop !17

._crit_edge57:                                    ; preds = %494
  br label %511

511:                                              ; preds = %._crit_edge57, %442
  %.lcssa1 = phi double [ %509, %._crit_edge57 ], [ 0.000000e+00, %442 ]
  %512 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %513 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %514 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %515 = load double, ptr @nulltime, align 8
  %516 = fneg double %515
  %517 = call double @llvm.fmuladd.f64(double %513, double %514, double %516)
  store double %517, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %518 = fdiv double %517, 1.200000e+01
  store double %518, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %519 = load double, ptr @sa, align 8
  %520 = fmul double %519, %519
  %521 = load double, ptr %1, align 8
  %522 = fneg double %521
  %523 = fadd double %519, %521
  %524 = fdiv double %521, %523
  %525 = fsub double %522, %524
  %526 = fadd double %520, %521
  %527 = fdiv double %519, %526
  %528 = fsub double %525, %527
  %529 = call double @llvm.fmuladd.f64(double %519, double %520, double %521)
  %530 = fdiv double %520, %529
  %531 = fsub double %528, %530
  store double %531, ptr @sa, align 8
  %532 = fmul nnan double %492, 1.800000e+01
  %533 = load double, ptr @two, align 8
  %534 = call double @llvm.fmuladd.f64(double %533, double %.lcssa1, double %531)
  %535 = fmul double %532, %534
  store double %535, ptr @sa, align 8
  %536 = fptosi double %535 to i32
  %537 = mul nsw i32 %536, -2000
  store i32 %537, ptr %2, align 4
  %538 = sitofp i32 %537 to double
  %539 = load double, ptr @scale, align 8
  %540 = fdiv double %538, %539
  %541 = fptosi double %540 to i32
  store i32 %541, ptr %2, align 4
  %542 = fadd double %535, 5.002000e+02
  store double %542, ptr @sc, align 8
  %543 = load double, ptr @one, align 8
  %544 = fdiv double %543, %518
  store double %544, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %545 = fmul double %542, 1.000000e-30
  %546 = fmul double %517, 1.000000e-30
  %547 = fmul double %544, 1.000000e-30
  %548 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %545, double noundef %546, double noundef %547) #4
  %549 = load double, ptr @piref, align 8
  %550 = load double, ptr @three, align 8
  %551 = sitofp i32 %541 to double
  %552 = fmul double %550, %551
  %553 = fdiv double %549, %552
  %554 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not10.not59 = icmp sgt i32 %541, 1
  br i1 %.not10.not59, label %.lr.ph61, label %590

.lr.ph61:                                         ; preds = %511
  br label %555

555:                                              ; preds = %.lr.ph61, %555
  %556 = phi i32 [ 1, %.lr.ph61 ], [ %589, %555 ]
  %557 = phi double [ 0.000000e+00, %.lr.ph61 ], [ %588, %555 ]
  %558 = uitofp nneg i32 %556 to double
  %559 = fmul double %553, %558
  %560 = fmul double %559, %559
  store double %560, ptr %1, align 8
  %561 = load double, ptr @B6, align 8
  %562 = load double, ptr @B5, align 8
  %563 = call double @llvm.fmuladd.f64(double %561, double %560, double %562)
  %564 = load double, ptr @B4, align 8
  %565 = call double @llvm.fmuladd.f64(double %560, double %563, double %564)
  %566 = load double, ptr @B3, align 8
  %567 = call double @llvm.fmuladd.f64(double %560, double %565, double %566)
  %568 = load double, ptr @B2, align 8
  %569 = call double @llvm.fmuladd.f64(double %560, double %567, double %568)
  %570 = load double, ptr @B1, align 8
  %571 = call double @llvm.fmuladd.f64(double %560, double %569, double %570)
  %572 = load double, ptr @one, align 8
  %573 = call double @llvm.fmuladd.f64(double %560, double %571, double %572)
  %574 = fmul double %573, %573
  %575 = fmul double %574, %559
  %576 = load double, ptr @A6, align 8
  %577 = load double, ptr @A5, align 8
  %578 = call double @llvm.fmuladd.f64(double %576, double %560, double %577)
  %579 = load double, ptr @A4, align 8
  %580 = call double @llvm.fmuladd.f64(double %578, double %560, double %579)
  %581 = load double, ptr @A3, align 8
  %582 = call double @llvm.fmuladd.f64(double %580, double %560, double %581)
  %583 = load double, ptr @A2, align 8
  %584 = call double @llvm.fmuladd.f64(double %582, double %560, double %583)
  %585 = load double, ptr @A1, align 8
  %586 = call double @llvm.fmuladd.f64(double %584, double %560, double %585)
  %587 = call double @llvm.fmuladd.f64(double %586, double %560, double %572)
  %588 = call double @llvm.fmuladd.f64(double %575, double %587, double %557)
  %589 = add nuw nsw i32 %556, 1
  %.not10.not = icmp slt i32 %589, %541
  br i1 %.not10.not, label %555, label %._crit_edge62, !llvm.loop !18

._crit_edge62:                                    ; preds = %555
  br label %590

590:                                              ; preds = %._crit_edge62, %511
  %.lcssa = phi double [ %588, %._crit_edge62 ], [ 0.000000e+00, %511 ]
  %591 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %592 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %593 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %594 = load double, ptr @nulltime, align 8
  %595 = fneg double %594
  %596 = call double @llvm.fmuladd.f64(double %592, double %593, double %595)
  store double %596, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %597 = load double, ptr @piref, align 8
  %598 = load double, ptr @three, align 8
  %599 = fdiv double %597, %598
  %600 = fmul double %599, %599
  store double %600, ptr %1, align 8
  %601 = load double, ptr @A6, align 8
  %602 = load double, ptr @A5, align 8
  %603 = call double @llvm.fmuladd.f64(double %601, double %600, double %602)
  %604 = load double, ptr @A4, align 8
  %605 = call double @llvm.fmuladd.f64(double %603, double %600, double %604)
  %606 = load double, ptr @A3, align 8
  %607 = call double @llvm.fmuladd.f64(double %605, double %600, double %606)
  %608 = load double, ptr @A2, align 8
  %609 = call double @llvm.fmuladd.f64(double %607, double %600, double %608)
  %610 = load double, ptr @A1, align 8
  %611 = call double @llvm.fmuladd.f64(double %609, double %600, double %610)
  %612 = load double, ptr @one, align 8
  %613 = call double @llvm.fmuladd.f64(double %611, double %600, double %612)
  %614 = fmul double %599, %613
  store double %614, ptr @sa, align 8
  %615 = load double, ptr @B6, align 8
  %616 = load double, ptr @B5, align 8
  %617 = call double @llvm.fmuladd.f64(double %615, double %600, double %616)
  %618 = load double, ptr @B4, align 8
  %619 = call double @llvm.fmuladd.f64(double %600, double %617, double %618)
  %620 = load double, ptr @B3, align 8
  %621 = call double @llvm.fmuladd.f64(double %600, double %619, double %620)
  %622 = load double, ptr @B2, align 8
  %623 = call double @llvm.fmuladd.f64(double %600, double %621, double %622)
  %624 = load double, ptr @B1, align 8
  %625 = call double @llvm.fmuladd.f64(double %600, double %623, double %624)
  %626 = call double @llvm.fmuladd.f64(double %600, double %625, double %612)
  store double %626, ptr @sb, align 8
  %627 = fmul double %614, %626
  %628 = fmul double %627, %626
  store double %628, ptr @sa, align 8
  %629 = fdiv double %596, 3.000000e+01
  store double %629, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %630 = load double, ptr @two, align 8
  %631 = call double @llvm.fmuladd.f64(double %630, double %.lcssa, double %628)
  %632 = fmul double %553, %631
  %633 = fdiv double %632, %630
  store double %633, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %634 = fadd double %633, f0xBFD2AAAAAAAAAAAB
  store double %634, ptr @sc, align 8
  %635 = fdiv double %612, %629
  store double %635, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %636 = fmul double %634, 1.000000e-30
  %637 = fmul double %596, 1.000000e-30
  %638 = fmul double %635, 1.000000e-30
  %639 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %636, double noundef %637, double noundef %638) #4
  %640 = load double, ptr @five, align 8
  %641 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %642 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %643 = fsub double %641, %642
  %644 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %645 = call double @llvm.fmuladd.f64(double %640, double %643, double %644)
  %646 = fdiv double %645, 5.200000e+01
  store double %646, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %647 = load double, ptr @one, align 8
  %648 = fdiv double %647, %646
  store double %648, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %649 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %650 = fadd double %649, %644
  %651 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %652 = fadd double %650, %651
  %653 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %654 = fadd double %652, %653
  %655 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %656 = fadd double %654, %655
  store double %656, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %657 = load double, ptr @four, align 8
  %658 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %659 = call double @llvm.fmuladd.f64(double %657, double %658, double %656)
  %660 = fdiv double %659, 1.520000e+02
  store double %660, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %661 = fdiv double %647, %660
  store double %661, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %656, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %662 = fadd double %656, %658
  %663 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %664 = fadd double %662, %663
  %665 = fdiv double %664, 1.460000e+02
  store double %665, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %666 = fdiv double %647, %665
  store double %666, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %667 = fadd double %644, %651
  %668 = fadd double %667, %655
  %669 = fadd double %668, %663
  %670 = fdiv double %669, 9.100000e+01
  store double %670, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %671 = fdiv double %647, %670
  store double %671, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar11 = call i32 @putchar(i32 10)
  %672 = load i32, ptr %2, align 4
  %673 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %672) #4
  %674 = load double, ptr @nulltime, align 8
  %675 = fmul double %674, 1.000000e-30
  %676 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %675) #4
  %677 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %678 = fmul double %677, 1.000000e-30
  %679 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %678) #4
  %680 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %681 = fmul double %680, 1.000000e-30
  %682 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %681) #4
  %683 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %684 = fmul double %683, 1.000000e-30
  %685 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %684) #4
  %686 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %687 = fmul double %686, 1.000000e-30
  %688 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %687) #4
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
