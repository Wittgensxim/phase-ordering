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
  %3 = load double, ptr @TLimit, align 8
  %4 = fcmp olt double 0.000000e+00, %3
  br i1 %4, label %.lr.ph13, label %42

.lr.ph13:                                         ; preds = %0
  br label %12

5:                                                ; preds = %38
  %6 = phi double [ %.lcssa10, %38 ]
  %7 = phi double [ %17, %38 ]
  %8 = phi i32 [ %14, %38 ]
  %9 = phi double [ %40, %38 ]
  %10 = load double, ptr @TLimit, align 8
  %11 = fcmp olt double %9, %10
  br i1 %11, label %12, label %._crit_edge18, !llvm.loop !7

12:                                               ; preds = %.lr.ph13, %5
  %13 = phi i32 [ 15625, %.lr.ph13 ], [ %8, %5 ]
  %14 = shl nsw i32 %13, 1
  %15 = load double, ptr @one, align 8
  %16 = sitofp i32 %14 to double
  %17 = fdiv double %15, %16
  %18 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not.not11 = icmp slt i32 1, %14
  br i1 %.not.not11, label %.lr.ph, label %38

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
  %.not.not = icmp slt i32 %37, %14
  br i1 %.not.not, label %19, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %19
  %split = phi double [ %36, %19 ]
  br label %38

38:                                               ; preds = %._crit_edge, %12
  %.lcssa10 = phi double [ %split, %._crit_edge ], [ 0.000000e+00, %12 ]
  %39 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %40 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %40, ptr @sa, align 8
  %41 = icmp eq i32 %13, 256000000
  br i1 %41, label %._crit_edge14, label %5, !llvm.loop !7

._crit_edge14:                                    ; preds = %38
  %split15 = phi double [ %.lcssa10, %38 ]
  %split16 = phi double [ %17, %38 ]
  %split17 = phi i32 [ 512000000, %38 ]
  br label %42, !llvm.loop !7

._crit_edge18:                                    ; preds = %5
  %split19 = phi double [ %6, %5 ]
  %split20 = phi double [ %7, %5 ]
  %split21 = phi i32 [ %8, %5 ]
  br label %42

42:                                               ; preds = %._crit_edge18, %._crit_edge14, %0
  %43 = phi double [ %split19, %._crit_edge18 ], [ %split15, %._crit_edge14 ], [ undef, %0 ]
  %44 = phi double [ %split20, %._crit_edge18 ], [ %split16, %._crit_edge14 ], [ undef, %0 ]
  %45 = phi i32 [ %split21, %._crit_edge18 ], [ %split17, %._crit_edge14 ], [ 15625, %0 ]
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
  %56 = select i1 %55, double 0.000000e+00, double %54
  store double %56, ptr @nulltime, align 8
  %57 = load double, ptr @sa, align 8
  %58 = fneg double %56
  %59 = call double @llvm.fmuladd.f64(double %52, double %57, double %58)
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
  %75 = call double @llvm.fmuladd.f64(double %74, double %43, double %73)
  %76 = fmul double %44, %75
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
  %.not22 = icmp sgt i32 1, %84
  br i1 %.not22, label %103, label %.lr.ph24

.lr.ph24:                                         ; preds = %50
  br label %96

96:                                               ; preds = %.lr.ph24, %96
  %97 = phi i32 [ 1, %.lr.ph24 ], [ %102, %96 ]
  %98 = phi double [ %92, %.lr.ph24 ], [ %99, %96 ]
  %99 = fneg double %98
  %100 = load double, ptr @sa, align 8
  %101 = fsub double %100, %98
  store double %101, ptr @sa, align 8
  %102 = add nuw nsw i32 %97, 1
  %.not = icmp sgt i32 %102, %84
  br i1 %.not, label %._crit_edge25, label %96, !llvm.loop !11

._crit_edge25:                                    ; preds = %96
  %split26 = phi double [ %99, %96 ]
  br label %103

103:                                              ; preds = %._crit_edge25, %50
  %.lcssa9 = phi double [ %split26, %._crit_edge25 ], [ %92, %50 ]
  %104 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %105 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %106 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %107 = fmul double %105, %106
  %108 = fcmp olt double %107, 0.000000e+00
  %storemerge = select i1 %108, double 0.000000e+00, double %107
  store double %storemerge, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %109 = sitofp i32 %84 to double
  store double %109, ptr @sc, align 8
  %110 = load double, ptr @sa, align 8
  %111 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not427 = icmp sgt i32 1, %84
  br i1 %.not427, label %130, label %.lr.ph29

.lr.ph29:                                         ; preds = %103
  br label %112

112:                                              ; preds = %.lr.ph29, %112
  %113 = phi i32 [ 1, %.lr.ph29 ], [ %129, %112 ]
  %114 = phi double [ 0.000000e+00, %.lr.ph29 ], [ %125, %112 ]
  %115 = phi double [ 0.000000e+00, %.lr.ph29 ], [ %126, %112 ]
  %116 = phi double [ %.lcssa9, %.lr.ph29 ], [ %119, %112 ]
  %117 = phi double [ %110, %.lr.ph29 ], [ %123, %112 ]
  %118 = phi double [ 0.000000e+00, %.lr.ph29 ], [ %128, %112 ]
  %119 = fneg double %116
  %120 = load double, ptr @sa, align 8
  %121 = fsub double %120, %116
  store double %121, ptr @sa, align 8
  %122 = load double, ptr @two, align 8
  %123 = fadd double %117, %122
  %124 = fsub double %119, %123
  %125 = fadd double %114, %124
  %126 = call double @llvm.fmuladd.f64(double %116, double %123, double %115)
  %127 = fdiv double %116, %123
  %128 = fsub double %118, %127
  %129 = add nuw nsw i32 %113, 1
  %.not4 = icmp sgt i32 %129, %84
  br i1 %.not4, label %._crit_edge30, label %112, !llvm.loop !12

._crit_edge30:                                    ; preds = %112
  %split31 = phi double [ %128, %112 ]
  %split32 = phi double [ %126, %112 ]
  %split33 = phi double [ %125, %112 ]
  br label %130

130:                                              ; preds = %._crit_edge30, %103
  %.lcssa8 = phi double [ %split31, %._crit_edge30 ], [ 0.000000e+00, %103 ]
  %.lcssa7 = phi double [ %split32, %._crit_edge30 ], [ 0.000000e+00, %103 ]
  %.lcssa6 = phi double [ %split33, %._crit_edge30 ], [ 0.000000e+00, %103 ]
  %131 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %132 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %133 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %134 = fmul double %132, %133
  store double %134, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %135 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %136 = fsub double %134, %135
  %137 = fdiv double %136, 7.000000e+00
  store double %137, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %138 = load double, ptr @sa, align 8
  %139 = fmul double %138, %.lcssa6
  %140 = load double, ptr @sc, align 8
  %141 = fdiv double %139, %140
  %142 = fptosi double %141 to i32
  %143 = load double, ptr @four, align 8
  %144 = fmul double %143, %.lcssa8
  %145 = load double, ptr @five, align 8
  %146 = fdiv double %144, %145
  store double %146, ptr @sa, align 8
  %147 = fdiv double %145, %.lcssa7
  %148 = fadd double %146, %147
  store double %148, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %149 = fmul double %.lcssa7, %.lcssa7
  %150 = fmul double %149, %.lcssa7
  %151 = fdiv double 3.125000e+01, %150
  %152 = fsub double %148, %151
  store double %152, ptr @piprg, align 8
  %153 = load double, ptr @piref, align 8
  %154 = fsub double %152, %153
  store double %154, ptr @pierr, align 8
  %155 = load double, ptr @one, align 8
  %156 = fdiv double %155, %137
  store double %156, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %157 = fmul double %154, 1.000000e-30
  %158 = fmul double %136, 1.000000e-30
  %159 = fmul double %156, 1.000000e-30
  %160 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %157, double noundef %158, double noundef %159) #4
  %161 = load double, ptr @piref, align 8
  %162 = load double, ptr @three, align 8
  %163 = sitofp i32 %142 to double
  %164 = fmul double %162, %163
  %165 = fdiv double %161, %164
  %166 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not5.not34 = icmp slt i32 1, %142
  br i1 %.not5.not34, label %.lr.ph36, label %191

.lr.ph36:                                         ; preds = %130
  br label %167

167:                                              ; preds = %.lr.ph36, %167
  %168 = phi i32 [ 1, %.lr.ph36 ], [ %190, %167 ]
  %169 = phi double [ 0.000000e+00, %.lr.ph36 ], [ %189, %167 ]
  %170 = phi double [ 0.000000e+00, %.lr.ph36 ], [ %172, %167 ]
  %171 = load double, ptr @one, align 8
  %172 = fadd double %170, %171
  %173 = fmul double %172, %165
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
  %189 = call double @llvm.fmuladd.f64(double %173, double %188, double %169)
  %190 = add nuw nsw i32 %168, 1
  %.not5.not = icmp slt i32 %190, %142
  br i1 %.not5.not, label %167, label %._crit_edge37, !llvm.loop !13

._crit_edge37:                                    ; preds = %167
  %split38 = phi double [ %189, %167 ]
  br label %191

191:                                              ; preds = %._crit_edge37, %130
  %.lcssa5 = phi double [ %split38, %._crit_edge37 ], [ 0.000000e+00, %130 ]
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
  %221 = fmul double %165, %220
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
  %235 = fmul double %234, %163
  %236 = fdiv double %233, %235
  %237 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not6.not39 = icmp slt i32 1, %142
  br i1 %.not6.not39, label %.lr.ph41, label %259

.lr.ph41:                                         ; preds = %191
  br label %238

238:                                              ; preds = %.lr.ph41, %238
  %239 = phi i32 [ 1, %.lr.ph41 ], [ %258, %238 ]
  %240 = phi double [ 0.000000e+00, %.lr.ph41 ], [ %257, %238 ]
  %241 = uitofp nneg i32 %239 to double
  %242 = fmul double %236, %241
  %243 = fmul double %242, %242
  %244 = load double, ptr @B6, align 8
  %245 = load double, ptr @B5, align 8
  %246 = call double @llvm.fmuladd.f64(double %244, double %243, double %245)
  %247 = load double, ptr @B4, align 8
  %248 = call double @llvm.fmuladd.f64(double %243, double %246, double %247)
  %249 = load double, ptr @B3, align 8
  %250 = call double @llvm.fmuladd.f64(double %243, double %248, double %249)
  %251 = load double, ptr @B2, align 8
  %252 = call double @llvm.fmuladd.f64(double %243, double %250, double %251)
  %253 = load double, ptr @B1, align 8
  %254 = call double @llvm.fmuladd.f64(double %243, double %252, double %253)
  %255 = call double @llvm.fmuladd.f64(double %243, double %254, double %240)
  %256 = load double, ptr @one, align 8
  %257 = fadd double %255, %256
  %258 = add nuw nsw i32 %239, 1
  %.not6.not = icmp slt i32 %258, %142
  br i1 %.not6.not, label %238, label %._crit_edge42, !llvm.loop !14

._crit_edge42:                                    ; preds = %238
  %split43 = phi double [ %257, %238 ]
  br label %259

259:                                              ; preds = %._crit_edge42, %191
  %.lcssa4 = phi double [ %split43, %._crit_edge42 ], [ 0.000000e+00, %191 ]
  %260 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %261 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %262 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %263 = load double, ptr @nulltime, align 8
  %264 = fneg double %263
  %265 = call double @llvm.fmuladd.f64(double %261, double %262, double %264)
  store double %265, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %266 = load double, ptr @piref, align 8
  %267 = load double, ptr @three, align 8
  %268 = fdiv double %266, %267
  %269 = fmul double %268, %268
  %270 = load double, ptr @B6, align 8
  %271 = load double, ptr @B5, align 8
  %272 = call double @llvm.fmuladd.f64(double %270, double %269, double %271)
  %273 = load double, ptr @B4, align 8
  %274 = call double @llvm.fmuladd.f64(double %269, double %272, double %273)
  %275 = load double, ptr @B3, align 8
  %276 = call double @llvm.fmuladd.f64(double %269, double %274, double %275)
  %277 = load double, ptr @B2, align 8
  %278 = call double @llvm.fmuladd.f64(double %269, double %276, double %277)
  %279 = load double, ptr @B1, align 8
  %280 = call double @llvm.fmuladd.f64(double %269, double %278, double %279)
  %281 = load double, ptr @one, align 8
  %282 = call double @llvm.fmuladd.f64(double %269, double %280, double %281)
  store double %282, ptr @sa, align 8
  %283 = fdiv double %265, 1.500000e+01
  store double %283, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %284 = fadd double %282, %281
  %285 = load double, ptr @two, align 8
  %286 = call double @llvm.fmuladd.f64(double %285, double %.lcssa4, double %284)
  %287 = fmul double %236, %286
  %288 = fdiv double %287, %285
  store double %288, ptr @sa, align 8
  %289 = load double, ptr @A6, align 8
  %290 = load double, ptr @A5, align 8
  %291 = call double @llvm.fmuladd.f64(double %289, double %269, double %290)
  %292 = load double, ptr @A4, align 8
  %293 = call double @llvm.fmuladd.f64(double %291, double %269, double %292)
  %294 = load double, ptr @A3, align 8
  %295 = call double @llvm.fmuladd.f64(double %293, double %269, double %294)
  %296 = load double, ptr @A2, align 8
  %297 = call double @llvm.fmuladd.f64(double %295, double %269, double %296)
  %298 = load double, ptr @A1, align 8
  %299 = call double @llvm.fmuladd.f64(double %297, double %269, double %298)
  %300 = load double, ptr @A0, align 8
  %301 = call double @llvm.fmuladd.f64(double %299, double %269, double %300)
  %302 = fmul double %268, %301
  store double %302, ptr @sb, align 8
  %303 = fsub double %288, %302
  store double %303, ptr @sc, align 8
  %304 = fdiv double %281, %283
  store double %304, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %305 = fmul double %303, 1.000000e-30
  %306 = fmul double %265, 1.000000e-30
  %307 = fmul double %304, 1.000000e-30
  %308 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %305, double noundef %306, double noundef %307) #4
  %309 = load double, ptr @piref, align 8
  %310 = load double, ptr @three, align 8
  %311 = fmul double %310, %163
  %312 = fdiv double %309, %311
  %313 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not7.not44 = icmp slt i32 1, %142
  br i1 %.not7.not44, label %.lr.ph46, label %349

.lr.ph46:                                         ; preds = %259
  br label %314

314:                                              ; preds = %.lr.ph46, %314
  %315 = phi i32 [ 1, %.lr.ph46 ], [ %348, %314 ]
  %316 = phi double [ 0.000000e+00, %.lr.ph46 ], [ %347, %314 ]
  %317 = uitofp nneg i32 %315 to double
  %318 = fmul double %312, %317
  %319 = fmul double %318, %318
  %320 = load double, ptr @A6, align 8
  %321 = load double, ptr @A5, align 8
  %322 = call double @llvm.fmuladd.f64(double %320, double %319, double %321)
  %323 = load double, ptr @A4, align 8
  %324 = call double @llvm.fmuladd.f64(double %322, double %319, double %323)
  %325 = load double, ptr @A3, align 8
  %326 = call double @llvm.fmuladd.f64(double %324, double %319, double %325)
  %327 = load double, ptr @A2, align 8
  %328 = call double @llvm.fmuladd.f64(double %326, double %319, double %327)
  %329 = load double, ptr @A1, align 8
  %330 = call double @llvm.fmuladd.f64(double %328, double %319, double %329)
  %331 = load double, ptr @one, align 8
  %332 = call double @llvm.fmuladd.f64(double %330, double %319, double %331)
  %333 = fmul double %318, %332
  %334 = load double, ptr @B6, align 8
  %335 = load double, ptr @B5, align 8
  %336 = call double @llvm.fmuladd.f64(double %334, double %319, double %335)
  %337 = load double, ptr @B4, align 8
  %338 = call double @llvm.fmuladd.f64(double %319, double %336, double %337)
  %339 = load double, ptr @B3, align 8
  %340 = call double @llvm.fmuladd.f64(double %319, double %338, double %339)
  %341 = load double, ptr @B2, align 8
  %342 = call double @llvm.fmuladd.f64(double %319, double %340, double %341)
  %343 = load double, ptr @B1, align 8
  %344 = call double @llvm.fmuladd.f64(double %319, double %342, double %343)
  %345 = call double @llvm.fmuladd.f64(double %319, double %344, double %331)
  %346 = fdiv double %333, %345
  %347 = fadd double %316, %346
  %348 = add nuw nsw i32 %315, 1
  %.not7.not = icmp slt i32 %348, %142
  br i1 %.not7.not, label %314, label %._crit_edge47, !llvm.loop !15

._crit_edge47:                                    ; preds = %314
  %split48 = phi double [ %347, %314 ]
  br label %349

349:                                              ; preds = %._crit_edge47, %259
  %.lcssa3 = phi double [ %split48, %._crit_edge47 ], [ 0.000000e+00, %259 ]
  %350 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %351 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %352 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %353 = load double, ptr @nulltime, align 8
  %354 = fneg double %353
  %355 = call double @llvm.fmuladd.f64(double %351, double %352, double %354)
  store double %355, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %356 = load double, ptr @piref, align 8
  %357 = load double, ptr @three, align 8
  %358 = fdiv double %356, %357
  %359 = fmul double %358, %358
  %360 = load double, ptr @A6, align 8
  %361 = load double, ptr @A5, align 8
  %362 = call double @llvm.fmuladd.f64(double %360, double %359, double %361)
  %363 = load double, ptr @A4, align 8
  %364 = call double @llvm.fmuladd.f64(double %362, double %359, double %363)
  %365 = load double, ptr @A3, align 8
  %366 = call double @llvm.fmuladd.f64(double %364, double %359, double %365)
  %367 = load double, ptr @A2, align 8
  %368 = call double @llvm.fmuladd.f64(double %366, double %359, double %367)
  %369 = load double, ptr @A1, align 8
  %370 = call double @llvm.fmuladd.f64(double %368, double %359, double %369)
  %371 = load double, ptr @one, align 8
  %372 = call double @llvm.fmuladd.f64(double %370, double %359, double %371)
  %373 = fmul double %358, %372
  store double %373, ptr @sa, align 8
  %374 = load double, ptr @B6, align 8
  %375 = load double, ptr @B5, align 8
  %376 = call double @llvm.fmuladd.f64(double %374, double %359, double %375)
  %377 = load double, ptr @B4, align 8
  %378 = call double @llvm.fmuladd.f64(double %359, double %376, double %377)
  %379 = load double, ptr @B3, align 8
  %380 = call double @llvm.fmuladd.f64(double %359, double %378, double %379)
  %381 = load double, ptr @B2, align 8
  %382 = call double @llvm.fmuladd.f64(double %359, double %380, double %381)
  %383 = load double, ptr @B1, align 8
  %384 = call double @llvm.fmuladd.f64(double %359, double %382, double %383)
  %385 = call double @llvm.fmuladd.f64(double %359, double %384, double %371)
  store double %385, ptr @sb, align 8
  %386 = fdiv double %373, %385
  store double %386, ptr @sa, align 8
  %387 = fdiv double %355, 2.900000e+01
  store double %387, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %388 = load double, ptr @two, align 8
  %389 = call double @llvm.fmuladd.f64(double %388, double %.lcssa3, double %386)
  %390 = fmul double %312, %389
  %391 = fdiv double %390, %388
  store double %391, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %392 = fadd double %391, f0xBFE62E42FEFA39EF
  store double %392, ptr @sc, align 8
  %393 = fdiv double %371, %387
  store double %393, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %394 = fmul double %392, 1.000000e-30
  %395 = fmul double %355, 1.000000e-30
  %396 = fmul double %393, 1.000000e-30
  %397 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %394, double noundef %395, double noundef %396) #4
  %398 = load double, ptr @piref, align 8
  %399 = load double, ptr @four, align 8
  %400 = fmul double %399, %163
  %401 = fdiv double %398, %400
  %402 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not8.not49 = icmp slt i32 1, %142
  br i1 %.not8.not49, label %.lr.ph51, label %437

.lr.ph51:                                         ; preds = %349
  br label %403

403:                                              ; preds = %.lr.ph51, %403
  %404 = phi i32 [ 1, %.lr.ph51 ], [ %436, %403 ]
  %405 = phi double [ 0.000000e+00, %.lr.ph51 ], [ %435, %403 ]
  %406 = uitofp nneg i32 %404 to double
  %407 = fmul double %401, %406
  %408 = fmul double %407, %407
  %409 = load double, ptr @A6, align 8
  %410 = load double, ptr @A5, align 8
  %411 = call double @llvm.fmuladd.f64(double %409, double %408, double %410)
  %412 = load double, ptr @A4, align 8
  %413 = call double @llvm.fmuladd.f64(double %411, double %408, double %412)
  %414 = load double, ptr @A3, align 8
  %415 = call double @llvm.fmuladd.f64(double %413, double %408, double %414)
  %416 = load double, ptr @A2, align 8
  %417 = call double @llvm.fmuladd.f64(double %415, double %408, double %416)
  %418 = load double, ptr @A1, align 8
  %419 = call double @llvm.fmuladd.f64(double %417, double %408, double %418)
  %420 = load double, ptr @one, align 8
  %421 = call double @llvm.fmuladd.f64(double %419, double %408, double %420)
  %422 = fmul double %407, %421
  %423 = load double, ptr @B6, align 8
  %424 = load double, ptr @B5, align 8
  %425 = call double @llvm.fmuladd.f64(double %423, double %408, double %424)
  %426 = load double, ptr @B4, align 8
  %427 = call double @llvm.fmuladd.f64(double %408, double %425, double %426)
  %428 = load double, ptr @B3, align 8
  %429 = call double @llvm.fmuladd.f64(double %408, double %427, double %428)
  %430 = load double, ptr @B2, align 8
  %431 = call double @llvm.fmuladd.f64(double %408, double %429, double %430)
  %432 = load double, ptr @B1, align 8
  %433 = call double @llvm.fmuladd.f64(double %408, double %431, double %432)
  %434 = call double @llvm.fmuladd.f64(double %408, double %433, double %420)
  %435 = call double @llvm.fmuladd.f64(double %422, double %434, double %405)
  %436 = add nuw nsw i32 %404, 1
  %.not8.not = icmp slt i32 %436, %142
  br i1 %.not8.not, label %403, label %._crit_edge52, !llvm.loop !16

._crit_edge52:                                    ; preds = %403
  %split53 = phi double [ %435, %403 ]
  br label %437

437:                                              ; preds = %._crit_edge52, %349
  %.lcssa2 = phi double [ %split53, %._crit_edge52 ], [ 0.000000e+00, %349 ]
  %438 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %439 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %440 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %441 = load double, ptr @nulltime, align 8
  %442 = fneg double %441
  %443 = call double @llvm.fmuladd.f64(double %439, double %440, double %442)
  store double %443, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %444 = load double, ptr @piref, align 8
  %445 = load double, ptr @four, align 8
  %446 = fdiv double %444, %445
  %447 = fmul double %446, %446
  %448 = load double, ptr @A6, align 8
  %449 = load double, ptr @A5, align 8
  %450 = call double @llvm.fmuladd.f64(double %448, double %447, double %449)
  %451 = load double, ptr @A4, align 8
  %452 = call double @llvm.fmuladd.f64(double %450, double %447, double %451)
  %453 = load double, ptr @A3, align 8
  %454 = call double @llvm.fmuladd.f64(double %452, double %447, double %453)
  %455 = load double, ptr @A2, align 8
  %456 = call double @llvm.fmuladd.f64(double %454, double %447, double %455)
  %457 = load double, ptr @A1, align 8
  %458 = call double @llvm.fmuladd.f64(double %456, double %447, double %457)
  %459 = load double, ptr @one, align 8
  %460 = call double @llvm.fmuladd.f64(double %458, double %447, double %459)
  %461 = fmul double %446, %460
  store double %461, ptr @sa, align 8
  %462 = load double, ptr @B6, align 8
  %463 = load double, ptr @B5, align 8
  %464 = call double @llvm.fmuladd.f64(double %462, double %447, double %463)
  %465 = load double, ptr @B4, align 8
  %466 = call double @llvm.fmuladd.f64(double %447, double %464, double %465)
  %467 = load double, ptr @B3, align 8
  %468 = call double @llvm.fmuladd.f64(double %447, double %466, double %467)
  %469 = load double, ptr @B2, align 8
  %470 = call double @llvm.fmuladd.f64(double %447, double %468, double %469)
  %471 = load double, ptr @B1, align 8
  %472 = call double @llvm.fmuladd.f64(double %447, double %470, double %471)
  %473 = call double @llvm.fmuladd.f64(double %447, double %472, double %459)
  store double %473, ptr @sb, align 8
  %474 = fmul double %461, %473
  store double %474, ptr @sa, align 8
  %475 = fdiv double %443, 2.900000e+01
  store double %475, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %476 = load double, ptr @two, align 8
  %477 = call double @llvm.fmuladd.f64(double %476, double %.lcssa2, double %474)
  %478 = fmul double %401, %477
  %479 = fdiv double %478, %476
  store double %479, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %480 = fadd double %479, -2.500000e-01
  store double %480, ptr @sc, align 8
  %481 = fdiv double %459, %475
  store double %481, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %482 = fmul double %480, 1.000000e-30
  %483 = fmul double %443, 1.000000e-30
  %484 = fmul double %481, 1.000000e-30
  %485 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %482, double noundef %483, double noundef %484) #4
  %486 = load double, ptr @one, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %487 = fdiv double f0x40599541F7F192A4, %163
  %488 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not9.not54 = icmp slt i32 1, %142
  br i1 %.not9.not54, label %.lr.ph56, label %505

.lr.ph56:                                         ; preds = %437
  br label %489

489:                                              ; preds = %.lr.ph56, %489
  %490 = phi i32 [ 1, %.lr.ph56 ], [ %504, %489 ]
  %491 = phi double [ 0.000000e+00, %.lr.ph56 ], [ %503, %489 ]
  %492 = uitofp nneg i32 %490 to double
  %493 = fmul double %487, %492
  %494 = fmul double %493, %493
  %495 = fadd double %493, %486
  %496 = fdiv double %486, %495
  %497 = fsub double %491, %496
  %498 = fadd double %494, %486
  %499 = fdiv double %493, %498
  %500 = fsub double %497, %499
  %501 = call double @llvm.fmuladd.f64(double %493, double %494, double %486)
  %502 = fdiv double %494, %501
  %503 = fsub double %500, %502
  %504 = add nuw nsw i32 %490, 1
  %.not9.not = icmp slt i32 %504, %142
  br i1 %.not9.not, label %489, label %._crit_edge57, !llvm.loop !17

._crit_edge57:                                    ; preds = %489
  %split58 = phi double [ %503, %489 ]
  br label %505

505:                                              ; preds = %._crit_edge57, %437
  %.lcssa1 = phi double [ %split58, %._crit_edge57 ], [ 0.000000e+00, %437 ]
  %506 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %507 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %508 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %509 = load double, ptr @nulltime, align 8
  %510 = fneg double %509
  %511 = call double @llvm.fmuladd.f64(double %507, double %508, double %510)
  store double %511, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %512 = fdiv double %511, 1.200000e+01
  store double %512, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %513 = load double, ptr @sa, align 8
  %514 = fmul double %513, %513
  %515 = fneg double %486
  %516 = fadd double %513, %486
  %517 = fdiv double %486, %516
  %518 = fsub double %515, %517
  %519 = fadd double %514, %486
  %520 = fdiv double %513, %519
  %521 = fsub double %518, %520
  %522 = call double @llvm.fmuladd.f64(double %513, double %514, double %486)
  %523 = fdiv double %514, %522
  %524 = fsub double %521, %523
  store double %524, ptr @sa, align 8
  %525 = fmul nnan double %487, 1.800000e+01
  %526 = load double, ptr @two, align 8
  %527 = call double @llvm.fmuladd.f64(double %526, double %.lcssa1, double %524)
  %528 = fmul double %525, %527
  store double %528, ptr @sa, align 8
  %529 = fptosi double %528 to i32
  %530 = mul nsw i32 %529, -2000
  %531 = sitofp i32 %530 to double
  %532 = load double, ptr @scale, align 8
  %533 = fdiv double %531, %532
  %534 = fptosi double %533 to i32
  %535 = fadd double %528, 5.002000e+02
  store double %535, ptr @sc, align 8
  %536 = load double, ptr @one, align 8
  %537 = fdiv double %536, %512
  store double %537, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %538 = fmul double %535, 1.000000e-30
  %539 = fmul double %511, 1.000000e-30
  %540 = fmul double %537, 1.000000e-30
  %541 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %538, double noundef %539, double noundef %540) #4
  %542 = load double, ptr @piref, align 8
  %543 = load double, ptr @three, align 8
  %544 = sitofp i32 %534 to double
  %545 = fmul double %543, %544
  %546 = fdiv double %542, %545
  %547 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not10.not59 = icmp slt i32 1, %534
  br i1 %.not10.not59, label %.lr.ph61, label %583

.lr.ph61:                                         ; preds = %505
  br label %548

548:                                              ; preds = %.lr.ph61, %548
  %549 = phi i32 [ 1, %.lr.ph61 ], [ %582, %548 ]
  %550 = phi double [ 0.000000e+00, %.lr.ph61 ], [ %581, %548 ]
  %551 = uitofp nneg i32 %549 to double
  %552 = fmul double %546, %551
  %553 = fmul double %552, %552
  %554 = load double, ptr @B6, align 8
  %555 = load double, ptr @B5, align 8
  %556 = call double @llvm.fmuladd.f64(double %554, double %553, double %555)
  %557 = load double, ptr @B4, align 8
  %558 = call double @llvm.fmuladd.f64(double %553, double %556, double %557)
  %559 = load double, ptr @B3, align 8
  %560 = call double @llvm.fmuladd.f64(double %553, double %558, double %559)
  %561 = load double, ptr @B2, align 8
  %562 = call double @llvm.fmuladd.f64(double %553, double %560, double %561)
  %563 = load double, ptr @B1, align 8
  %564 = call double @llvm.fmuladd.f64(double %553, double %562, double %563)
  %565 = load double, ptr @one, align 8
  %566 = call double @llvm.fmuladd.f64(double %553, double %564, double %565)
  %567 = fmul double %566, %566
  %568 = fmul double %567, %552
  %569 = load double, ptr @A6, align 8
  %570 = load double, ptr @A5, align 8
  %571 = call double @llvm.fmuladd.f64(double %569, double %553, double %570)
  %572 = load double, ptr @A4, align 8
  %573 = call double @llvm.fmuladd.f64(double %571, double %553, double %572)
  %574 = load double, ptr @A3, align 8
  %575 = call double @llvm.fmuladd.f64(double %573, double %553, double %574)
  %576 = load double, ptr @A2, align 8
  %577 = call double @llvm.fmuladd.f64(double %575, double %553, double %576)
  %578 = load double, ptr @A1, align 8
  %579 = call double @llvm.fmuladd.f64(double %577, double %553, double %578)
  %580 = call double @llvm.fmuladd.f64(double %579, double %553, double %565)
  %581 = call double @llvm.fmuladd.f64(double %568, double %580, double %550)
  %582 = add nuw nsw i32 %549, 1
  %.not10.not = icmp slt i32 %582, %534
  br i1 %.not10.not, label %548, label %._crit_edge62, !llvm.loop !18

._crit_edge62:                                    ; preds = %548
  %split63 = phi double [ %581, %548 ]
  br label %583

583:                                              ; preds = %._crit_edge62, %505
  %.lcssa = phi double [ %split63, %._crit_edge62 ], [ 0.000000e+00, %505 ]
  %584 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %585 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %586 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %587 = load double, ptr @nulltime, align 8
  %588 = fneg double %587
  %589 = call double @llvm.fmuladd.f64(double %585, double %586, double %588)
  store double %589, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %590 = load double, ptr @piref, align 8
  %591 = load double, ptr @three, align 8
  %592 = fdiv double %590, %591
  %593 = fmul double %592, %592
  %594 = load double, ptr @A6, align 8
  %595 = load double, ptr @A5, align 8
  %596 = call double @llvm.fmuladd.f64(double %594, double %593, double %595)
  %597 = load double, ptr @A4, align 8
  %598 = call double @llvm.fmuladd.f64(double %596, double %593, double %597)
  %599 = load double, ptr @A3, align 8
  %600 = call double @llvm.fmuladd.f64(double %598, double %593, double %599)
  %601 = load double, ptr @A2, align 8
  %602 = call double @llvm.fmuladd.f64(double %600, double %593, double %601)
  %603 = load double, ptr @A1, align 8
  %604 = call double @llvm.fmuladd.f64(double %602, double %593, double %603)
  %605 = load double, ptr @one, align 8
  %606 = call double @llvm.fmuladd.f64(double %604, double %593, double %605)
  %607 = fmul double %592, %606
  store double %607, ptr @sa, align 8
  %608 = load double, ptr @B6, align 8
  %609 = load double, ptr @B5, align 8
  %610 = call double @llvm.fmuladd.f64(double %608, double %593, double %609)
  %611 = load double, ptr @B4, align 8
  %612 = call double @llvm.fmuladd.f64(double %593, double %610, double %611)
  %613 = load double, ptr @B3, align 8
  %614 = call double @llvm.fmuladd.f64(double %593, double %612, double %613)
  %615 = load double, ptr @B2, align 8
  %616 = call double @llvm.fmuladd.f64(double %593, double %614, double %615)
  %617 = load double, ptr @B1, align 8
  %618 = call double @llvm.fmuladd.f64(double %593, double %616, double %617)
  %619 = call double @llvm.fmuladd.f64(double %593, double %618, double %605)
  store double %619, ptr @sb, align 8
  %620 = fmul double %607, %619
  %621 = fmul double %620, %619
  store double %621, ptr @sa, align 8
  %622 = fdiv double %589, 3.000000e+01
  store double %622, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %623 = load double, ptr @two, align 8
  %624 = call double @llvm.fmuladd.f64(double %623, double %.lcssa, double %621)
  %625 = fmul double %546, %624
  %626 = fdiv double %625, %623
  store double %626, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %627 = fadd double %626, f0xBFD2AAAAAAAAAAAB
  store double %627, ptr @sc, align 8
  %628 = fdiv double %605, %622
  store double %628, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %629 = fmul double %627, 1.000000e-30
  %630 = fmul double %589, 1.000000e-30
  %631 = fmul double %628, 1.000000e-30
  %632 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %629, double noundef %630, double noundef %631) #4
  %633 = load double, ptr @five, align 8
  %634 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %635 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %636 = fsub double %634, %635
  %637 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %638 = call double @llvm.fmuladd.f64(double %633, double %636, double %637)
  %639 = fdiv double %638, 5.200000e+01
  store double %639, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %640 = load double, ptr @one, align 8
  %641 = fdiv double %640, %639
  store double %641, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %642 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %643 = fadd double %642, %637
  %644 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %645 = fadd double %643, %644
  %646 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %647 = fadd double %645, %646
  %648 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %649 = fadd double %647, %648
  store double %649, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %650 = load double, ptr @four, align 8
  %651 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %652 = call double @llvm.fmuladd.f64(double %650, double %651, double %649)
  %653 = fdiv double %652, 1.520000e+02
  store double %653, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %654 = fdiv double %640, %653
  store double %654, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %649, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %655 = fadd double %649, %651
  %656 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %657 = fadd double %655, %656
  %658 = fdiv double %657, 1.460000e+02
  store double %658, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %659 = fdiv double %640, %658
  store double %659, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %660 = fadd double %637, %644
  %661 = fadd double %660, %648
  %662 = fadd double %661, %656
  %663 = fdiv double %662, 9.100000e+01
  store double %663, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %664 = fdiv double %640, %663
  store double %664, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar11 = call i32 @putchar(i32 10)
  %665 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %534) #4
  %666 = load double, ptr @nulltime, align 8
  %667 = fmul double %666, 1.000000e-30
  %668 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %667) #4
  %669 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %670 = fmul double %669, 1.000000e-30
  %671 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %670) #4
  %672 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %673 = fmul double %672, 1.000000e-30
  %674 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %673) #4
  %675 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %676 = fmul double %675, 1.000000e-30
  %677 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %676) #4
  %678 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %679 = fmul double %678, 1.000000e-30
  %680 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %679) #4
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
