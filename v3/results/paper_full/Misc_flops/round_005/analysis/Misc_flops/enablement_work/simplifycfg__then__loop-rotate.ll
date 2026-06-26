; ModuleID = 'results\paper_full\Misc_flops\round_004\output.ll'
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
  br i1 %4, label %.lr.ph13, label %.loopexit

.lr.ph13:                                         ; preds = %0
  br label %12

5:                                                ; preds = %38
  %6 = phi double [ %.lcssa10, %38 ]
  %7 = phi double [ %17, %38 ]
  %8 = phi i32 [ %14, %38 ]
  %9 = phi double [ %40, %38 ]
  %10 = load double, ptr @TLimit, align 8
  %11 = fcmp olt double %9, %10
  br i1 %11, label %12, label %..loopexit_crit_edge, !llvm.loop !7

12:                                               ; preds = %.lr.ph13, %5
  %13 = phi i32 [ 15625, %.lr.ph13 ], [ %8, %5 ]
  %14 = shl nsw i32 %13, 1
  %15 = load double, ptr @one, align 8
  %16 = sitofp i32 %14 to double
  %17 = fdiv double %15, %16
  %18 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %19 = load double, ptr @D1, align 8
  %20 = load double, ptr @D2, align 8
  %21 = load double, ptr @D3, align 8
  %22 = load double, ptr @E2, align 8
  %23 = load double, ptr @E3, align 8
  %.not.not11 = icmp slt i32 1, %14
  br i1 %.not.not11, label %.lr.ph, label %38

.lr.ph:                                           ; preds = %12
  br label %24

24:                                               ; preds = %.lr.ph, %24
  %25 = phi i32 [ 1, %.lr.ph ], [ %37, %24 ]
  %26 = phi double [ 0.000000e+00, %.lr.ph ], [ %36, %24 ]
  %27 = phi double [ 0.000000e+00, %.lr.ph ], [ %28, %24 ]
  %28 = fadd double %27, %15
  %29 = fmul double %28, %17
  %30 = call double @llvm.fmuladd.f64(double %29, double %21, double %20)
  %31 = call double @llvm.fmuladd.f64(double %29, double %30, double %19)
  %32 = call double @llvm.fmuladd.f64(double %29, double %23, double %22)
  %33 = call double @llvm.fmuladd.f64(double %29, double %32, double %19)
  %34 = call double @llvm.fmuladd.f64(double %29, double %33, double %15)
  %35 = fdiv double %31, %34
  %36 = fadd double %26, %35
  %37 = add nuw nsw i32 %25, 1
  %.not.not = icmp slt i32 %37, %14
  br i1 %.not.not, label %24, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %24
  %split = phi double [ %36, %24 ]
  br label %38

38:                                               ; preds = %._crit_edge, %12
  %.lcssa10 = phi double [ %split, %._crit_edge ], [ 0.000000e+00, %12 ]
  %39 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %40 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %40, ptr @sa, align 8
  %41 = icmp eq i32 %13, 256000000
  br i1 %41, label %..loopexit_crit_edge17, label %5, !llvm.loop !7

..loopexit_crit_edge:                             ; preds = %5
  %split14 = phi double [ %6, %5 ]
  %split15 = phi double [ %7, %5 ]
  %split16 = phi i32 [ %8, %5 ]
  br label %.loopexit

..loopexit_crit_edge17:                           ; preds = %38
  %split18 = phi double [ %.lcssa10, %38 ]
  %split19 = phi double [ %17, %38 ]
  %split20 = phi i32 [ 512000000, %38 ]
  br label %.loopexit, !llvm.loop !7

.loopexit:                                        ; preds = %..loopexit_crit_edge17, %..loopexit_crit_edge, %0
  %42 = phi double [ %split18, %..loopexit_crit_edge17 ], [ %split14, %..loopexit_crit_edge ], [ undef, %0 ]
  %43 = phi double [ %split19, %..loopexit_crit_edge17 ], [ %split15, %..loopexit_crit_edge ], [ undef, %0 ]
  %44 = phi i32 [ %split20, %..loopexit_crit_edge17 ], [ %split16, %..loopexit_crit_edge ], [ 15625, %0 ]
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
  %90 = load double, ptr @five, align 8
  %91 = fneg double %90
  %92 = load double, ptr @one, align 8
  %93 = fneg double %92
  store double %93, ptr @sa, align 8
  %94 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %sa.promoted = load double, ptr @sa, align 8
  %.not21 = icmp sgt i32 1, %83
  br i1 %.not21, label %102, label %.lr.ph23

.lr.ph23:                                         ; preds = %49
  br label %95

95:                                               ; preds = %.lr.ph23, %95
  %96 = phi i32 [ 1, %.lr.ph23 ], [ %101, %95 ]
  %97 = phi double [ %91, %.lr.ph23 ], [ %99, %95 ]
  %98 = phi double [ %sa.promoted, %.lr.ph23 ], [ %100, %95 ]
  %99 = fneg double %97
  %100 = fsub double %98, %97
  store double %100, ptr @sa, align 8
  %101 = add nuw nsw i32 %96, 1
  %.not = icmp sgt i32 %101, %83
  br i1 %.not, label %._crit_edge24, label %95, !llvm.loop !11

._crit_edge24:                                    ; preds = %95
  %split25 = phi double [ %99, %95 ]
  br label %102

102:                                              ; preds = %._crit_edge24, %49
  %.lcssa9 = phi double [ %split25, %._crit_edge24 ], [ %91, %49 ]
  %103 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %104 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %105 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %106 = fmul double %104, %105
  %107 = fcmp olt double %106, 0.000000e+00
  %storemerge = select i1 %107, double 0.000000e+00, double %106
  store double %storemerge, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %108 = sitofp i32 %83 to double
  store double %108, ptr @sc, align 8
  %109 = load double, ptr @sa, align 8
  %110 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %111 = load double, ptr @two, align 8
  %sa.promoted18 = load double, ptr @sa, align 8
  %.not426 = icmp sgt i32 1, %83
  br i1 %.not426, label %129, label %.lr.ph28

.lr.ph28:                                         ; preds = %102
  br label %112

112:                                              ; preds = %.lr.ph28, %112
  %113 = phi i32 [ 1, %.lr.ph28 ], [ %128, %112 ]
  %114 = phi double [ 0.000000e+00, %.lr.ph28 ], [ %124, %112 ]
  %115 = phi double [ 0.000000e+00, %.lr.ph28 ], [ %125, %112 ]
  %116 = phi double [ %.lcssa9, %.lr.ph28 ], [ %120, %112 ]
  %117 = phi double [ %109, %.lr.ph28 ], [ %122, %112 ]
  %118 = phi double [ 0.000000e+00, %.lr.ph28 ], [ %127, %112 ]
  %119 = phi double [ %sa.promoted18, %.lr.ph28 ], [ %121, %112 ]
  %120 = fneg double %116
  %121 = fsub double %119, %116
  store double %121, ptr @sa, align 8
  %122 = fadd double %117, %111
  %123 = fsub double %120, %122
  %124 = fadd double %114, %123
  %125 = call double @llvm.fmuladd.f64(double %116, double %122, double %115)
  %126 = fdiv double %116, %122
  %127 = fsub double %118, %126
  %128 = add nuw nsw i32 %113, 1
  %.not4 = icmp sgt i32 %128, %83
  br i1 %.not4, label %._crit_edge29, label %112, !llvm.loop !12

._crit_edge29:                                    ; preds = %112
  %split30 = phi double [ %127, %112 ]
  %split31 = phi double [ %125, %112 ]
  %split32 = phi double [ %124, %112 ]
  br label %129

129:                                              ; preds = %._crit_edge29, %102
  %.lcssa8 = phi double [ %split30, %._crit_edge29 ], [ 0.000000e+00, %102 ]
  %.lcssa7 = phi double [ %split31, %._crit_edge29 ], [ 0.000000e+00, %102 ]
  %.lcssa6 = phi double [ %split32, %._crit_edge29 ], [ 0.000000e+00, %102 ]
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
  %166 = load double, ptr @one, align 8
  %167 = load double, ptr @A6, align 8
  %168 = load double, ptr @A5, align 8
  %169 = fneg double %168
  %170 = load double, ptr @A4, align 8
  %171 = load double, ptr @A3, align 8
  %172 = fneg double %171
  %173 = load double, ptr @A2, align 8
  %174 = load double, ptr @A1, align 8
  %.not5.not33 = icmp slt i32 1, %141
  br i1 %.not5.not33, label %.lr.ph35, label %190

.lr.ph35:                                         ; preds = %129
  br label %175

175:                                              ; preds = %.lr.ph35, %175
  %176 = phi i32 [ 1, %.lr.ph35 ], [ %189, %175 ]
  %177 = phi double [ 0.000000e+00, %.lr.ph35 ], [ %188, %175 ]
  %178 = phi double [ 0.000000e+00, %.lr.ph35 ], [ %179, %175 ]
  %179 = fadd double %178, %166
  %180 = fmul double %179, %164
  %181 = fmul double %180, %180
  %182 = call double @llvm.fmuladd.f64(double %167, double %181, double %169)
  %183 = call double @llvm.fmuladd.f64(double %182, double %181, double %170)
  %184 = call double @llvm.fmuladd.f64(double %183, double %181, double %172)
  %185 = call double @llvm.fmuladd.f64(double %184, double %181, double %173)
  %186 = call double @llvm.fmuladd.f64(double %185, double %181, double %174)
  %187 = call double @llvm.fmuladd.f64(double %186, double %181, double %166)
  %188 = call double @llvm.fmuladd.f64(double %180, double %187, double %177)
  %189 = add nuw nsw i32 %176, 1
  %.not5.not = icmp slt i32 %189, %141
  br i1 %.not5.not, label %175, label %._crit_edge36, !llvm.loop !13

._crit_edge36:                                    ; preds = %175
  %split37 = phi double [ %188, %175 ]
  br label %190

190:                                              ; preds = %._crit_edge36, %129
  %.lcssa5 = phi double [ %split37, %._crit_edge36 ], [ 0.000000e+00, %129 ]
  %191 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %192 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %193 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %194 = load double, ptr @nulltime, align 8
  %195 = fneg double %194
  %196 = call double @llvm.fmuladd.f64(double %192, double %193, double %195)
  store double %196, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %197 = load double, ptr @piref, align 8
  %198 = load double, ptr @three, align 8
  %199 = fdiv double %197, %198
  %200 = fmul double %199, %199
  %201 = load double, ptr @A6, align 8
  %202 = load double, ptr @A5, align 8
  %203 = fneg double %202
  %204 = call double @llvm.fmuladd.f64(double %201, double %200, double %203)
  %205 = load double, ptr @A4, align 8
  %206 = call double @llvm.fmuladd.f64(double %204, double %200, double %205)
  %207 = load double, ptr @A3, align 8
  %208 = fneg double %207
  %209 = call double @llvm.fmuladd.f64(double %206, double %200, double %208)
  %210 = load double, ptr @A2, align 8
  %211 = call double @llvm.fmuladd.f64(double %209, double %200, double %210)
  %212 = load double, ptr @A1, align 8
  %213 = call double @llvm.fmuladd.f64(double %211, double %200, double %212)
  %214 = load double, ptr @one, align 8
  %215 = call double @llvm.fmuladd.f64(double %213, double %200, double %214)
  %216 = fmul double %199, %215
  store double %216, ptr @sa, align 8
  %217 = fdiv double %196, 1.700000e+01
  store double %217, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %218 = load double, ptr @two, align 8
  %219 = call double @llvm.fmuladd.f64(double %218, double %.lcssa5, double %216)
  %220 = fmul double %164, %219
  %221 = fdiv double %220, %218
  store double %221, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %222 = fadd double %221, -5.000000e-01
  store double %222, ptr @sc, align 8
  %223 = fdiv double %214, %217
  store double %223, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %224 = fmul double %222, 1.000000e-30
  %225 = fmul double %196, 1.000000e-30
  %226 = fmul double %223, 1.000000e-30
  %227 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %224, double noundef %225, double noundef %226) #4
  %228 = load double, ptr @A3, align 8
  %229 = fneg double %228
  store double %229, ptr @A3, align 8
  %230 = load double, ptr @A5, align 8
  %231 = fneg double %230
  store double %231, ptr @A5, align 8
  %232 = load double, ptr @piref, align 8
  %233 = load double, ptr @three, align 8
  %234 = fmul double %233, %162
  %235 = fdiv double %232, %234
  %236 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %237 = load double, ptr @B6, align 8
  %238 = load double, ptr @B5, align 8
  %239 = load double, ptr @B4, align 8
  %240 = load double, ptr @B3, align 8
  %241 = load double, ptr @B2, align 8
  %242 = load double, ptr @B1, align 8
  %243 = load double, ptr @one, align 8
  %.not6.not38 = icmp slt i32 1, %141
  br i1 %.not6.not38, label %.lr.ph40, label %258

.lr.ph40:                                         ; preds = %190
  br label %244

244:                                              ; preds = %.lr.ph40, %244
  %245 = phi i32 [ 1, %.lr.ph40 ], [ %257, %244 ]
  %246 = phi double [ 0.000000e+00, %.lr.ph40 ], [ %256, %244 ]
  %247 = uitofp nneg i32 %245 to double
  %248 = fmul double %235, %247
  %249 = fmul double %248, %248
  %250 = call double @llvm.fmuladd.f64(double %237, double %249, double %238)
  %251 = call double @llvm.fmuladd.f64(double %249, double %250, double %239)
  %252 = call double @llvm.fmuladd.f64(double %249, double %251, double %240)
  %253 = call double @llvm.fmuladd.f64(double %249, double %252, double %241)
  %254 = call double @llvm.fmuladd.f64(double %249, double %253, double %242)
  %255 = call double @llvm.fmuladd.f64(double %249, double %254, double %246)
  %256 = fadd double %255, %243
  %257 = add nuw nsw i32 %245, 1
  %.not6.not = icmp slt i32 %257, %141
  br i1 %.not6.not, label %244, label %._crit_edge41, !llvm.loop !14

._crit_edge41:                                    ; preds = %244
  %split42 = phi double [ %256, %244 ]
  br label %258

258:                                              ; preds = %._crit_edge41, %190
  %.lcssa4 = phi double [ %split42, %._crit_edge41 ], [ 0.000000e+00, %190 ]
  %259 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %260 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %261 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %262 = load double, ptr @nulltime, align 8
  %263 = fneg double %262
  %264 = call double @llvm.fmuladd.f64(double %260, double %261, double %263)
  store double %264, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %265 = load double, ptr @piref, align 8
  %266 = load double, ptr @three, align 8
  %267 = fdiv double %265, %266
  %268 = fmul double %267, %267
  %269 = load double, ptr @B6, align 8
  %270 = load double, ptr @B5, align 8
  %271 = call double @llvm.fmuladd.f64(double %269, double %268, double %270)
  %272 = load double, ptr @B4, align 8
  %273 = call double @llvm.fmuladd.f64(double %268, double %271, double %272)
  %274 = load double, ptr @B3, align 8
  %275 = call double @llvm.fmuladd.f64(double %268, double %273, double %274)
  %276 = load double, ptr @B2, align 8
  %277 = call double @llvm.fmuladd.f64(double %268, double %275, double %276)
  %278 = load double, ptr @B1, align 8
  %279 = call double @llvm.fmuladd.f64(double %268, double %277, double %278)
  %280 = load double, ptr @one, align 8
  %281 = call double @llvm.fmuladd.f64(double %268, double %279, double %280)
  store double %281, ptr @sa, align 8
  %282 = fdiv double %264, 1.500000e+01
  store double %282, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %283 = fadd double %281, %280
  %284 = load double, ptr @two, align 8
  %285 = call double @llvm.fmuladd.f64(double %284, double %.lcssa4, double %283)
  %286 = fmul double %235, %285
  %287 = fdiv double %286, %284
  store double %287, ptr @sa, align 8
  %288 = load double, ptr @A6, align 8
  %289 = load double, ptr @A5, align 8
  %290 = call double @llvm.fmuladd.f64(double %288, double %268, double %289)
  %291 = load double, ptr @A4, align 8
  %292 = call double @llvm.fmuladd.f64(double %290, double %268, double %291)
  %293 = load double, ptr @A3, align 8
  %294 = call double @llvm.fmuladd.f64(double %292, double %268, double %293)
  %295 = load double, ptr @A2, align 8
  %296 = call double @llvm.fmuladd.f64(double %294, double %268, double %295)
  %297 = load double, ptr @A1, align 8
  %298 = call double @llvm.fmuladd.f64(double %296, double %268, double %297)
  %299 = load double, ptr @A0, align 8
  %300 = call double @llvm.fmuladd.f64(double %298, double %268, double %299)
  %301 = fmul double %267, %300
  store double %301, ptr @sb, align 8
  %302 = fsub double %287, %301
  store double %302, ptr @sc, align 8
  %303 = fdiv double %280, %282
  store double %303, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %304 = fmul double %302, 1.000000e-30
  %305 = fmul double %264, 1.000000e-30
  %306 = fmul double %303, 1.000000e-30
  %307 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %304, double noundef %305, double noundef %306) #4
  %308 = load double, ptr @piref, align 8
  %309 = load double, ptr @three, align 8
  %310 = fmul double %309, %162
  %311 = fdiv double %308, %310
  %312 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %313 = load double, ptr @A6, align 8
  %314 = load double, ptr @A5, align 8
  %315 = load double, ptr @A4, align 8
  %316 = load double, ptr @A3, align 8
  %317 = load double, ptr @A2, align 8
  %318 = load double, ptr @A1, align 8
  %319 = load double, ptr @one, align 8
  %320 = load double, ptr @B6, align 8
  %321 = load double, ptr @B5, align 8
  %322 = load double, ptr @B4, align 8
  %323 = load double, ptr @B3, align 8
  %324 = load double, ptr @B2, align 8
  %325 = load double, ptr @B1, align 8
  %.not7.not43 = icmp slt i32 1, %141
  br i1 %.not7.not43, label %.lr.ph45, label %348

.lr.ph45:                                         ; preds = %258
  br label %326

326:                                              ; preds = %.lr.ph45, %326
  %327 = phi i32 [ 1, %.lr.ph45 ], [ %347, %326 ]
  %328 = phi double [ 0.000000e+00, %.lr.ph45 ], [ %346, %326 ]
  %329 = uitofp nneg i32 %327 to double
  %330 = fmul double %311, %329
  %331 = fmul double %330, %330
  %332 = call double @llvm.fmuladd.f64(double %313, double %331, double %314)
  %333 = call double @llvm.fmuladd.f64(double %332, double %331, double %315)
  %334 = call double @llvm.fmuladd.f64(double %333, double %331, double %316)
  %335 = call double @llvm.fmuladd.f64(double %334, double %331, double %317)
  %336 = call double @llvm.fmuladd.f64(double %335, double %331, double %318)
  %337 = call double @llvm.fmuladd.f64(double %336, double %331, double %319)
  %338 = fmul double %330, %337
  %339 = call double @llvm.fmuladd.f64(double %320, double %331, double %321)
  %340 = call double @llvm.fmuladd.f64(double %331, double %339, double %322)
  %341 = call double @llvm.fmuladd.f64(double %331, double %340, double %323)
  %342 = call double @llvm.fmuladd.f64(double %331, double %341, double %324)
  %343 = call double @llvm.fmuladd.f64(double %331, double %342, double %325)
  %344 = call double @llvm.fmuladd.f64(double %331, double %343, double %319)
  %345 = fdiv double %338, %344
  %346 = fadd double %328, %345
  %347 = add nuw nsw i32 %327, 1
  %.not7.not = icmp slt i32 %347, %141
  br i1 %.not7.not, label %326, label %._crit_edge46, !llvm.loop !15

._crit_edge46:                                    ; preds = %326
  %split47 = phi double [ %346, %326 ]
  br label %348

348:                                              ; preds = %._crit_edge46, %258
  %.lcssa3 = phi double [ %split47, %._crit_edge46 ], [ 0.000000e+00, %258 ]
  %349 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %350 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %351 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %352 = load double, ptr @nulltime, align 8
  %353 = fneg double %352
  %354 = call double @llvm.fmuladd.f64(double %350, double %351, double %353)
  store double %354, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %355 = load double, ptr @piref, align 8
  %356 = load double, ptr @three, align 8
  %357 = fdiv double %355, %356
  %358 = fmul double %357, %357
  %359 = load double, ptr @A6, align 8
  %360 = load double, ptr @A5, align 8
  %361 = call double @llvm.fmuladd.f64(double %359, double %358, double %360)
  %362 = load double, ptr @A4, align 8
  %363 = call double @llvm.fmuladd.f64(double %361, double %358, double %362)
  %364 = load double, ptr @A3, align 8
  %365 = call double @llvm.fmuladd.f64(double %363, double %358, double %364)
  %366 = load double, ptr @A2, align 8
  %367 = call double @llvm.fmuladd.f64(double %365, double %358, double %366)
  %368 = load double, ptr @A1, align 8
  %369 = call double @llvm.fmuladd.f64(double %367, double %358, double %368)
  %370 = load double, ptr @one, align 8
  %371 = call double @llvm.fmuladd.f64(double %369, double %358, double %370)
  %372 = fmul double %357, %371
  store double %372, ptr @sa, align 8
  %373 = load double, ptr @B6, align 8
  %374 = load double, ptr @B5, align 8
  %375 = call double @llvm.fmuladd.f64(double %373, double %358, double %374)
  %376 = load double, ptr @B4, align 8
  %377 = call double @llvm.fmuladd.f64(double %358, double %375, double %376)
  %378 = load double, ptr @B3, align 8
  %379 = call double @llvm.fmuladd.f64(double %358, double %377, double %378)
  %380 = load double, ptr @B2, align 8
  %381 = call double @llvm.fmuladd.f64(double %358, double %379, double %380)
  %382 = load double, ptr @B1, align 8
  %383 = call double @llvm.fmuladd.f64(double %358, double %381, double %382)
  %384 = call double @llvm.fmuladd.f64(double %358, double %383, double %370)
  store double %384, ptr @sb, align 8
  %385 = fdiv double %372, %384
  store double %385, ptr @sa, align 8
  %386 = fdiv double %354, 2.900000e+01
  store double %386, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %387 = load double, ptr @two, align 8
  %388 = call double @llvm.fmuladd.f64(double %387, double %.lcssa3, double %385)
  %389 = fmul double %311, %388
  %390 = fdiv double %389, %387
  store double %390, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %391 = fadd double %390, f0xBFE62E42FEFA39EF
  store double %391, ptr @sc, align 8
  %392 = fdiv double %370, %386
  store double %392, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %393 = fmul double %391, 1.000000e-30
  %394 = fmul double %354, 1.000000e-30
  %395 = fmul double %392, 1.000000e-30
  %396 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %393, double noundef %394, double noundef %395) #4
  %397 = load double, ptr @piref, align 8
  %398 = load double, ptr @four, align 8
  %399 = fmul double %398, %162
  %400 = fdiv double %397, %399
  %401 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %402 = load double, ptr @A6, align 8
  %403 = load double, ptr @A5, align 8
  %404 = load double, ptr @A4, align 8
  %405 = load double, ptr @A3, align 8
  %406 = load double, ptr @A2, align 8
  %407 = load double, ptr @A1, align 8
  %408 = load double, ptr @one, align 8
  %409 = load double, ptr @B6, align 8
  %410 = load double, ptr @B5, align 8
  %411 = load double, ptr @B4, align 8
  %412 = load double, ptr @B3, align 8
  %413 = load double, ptr @B2, align 8
  %414 = load double, ptr @B1, align 8
  %.not8.not48 = icmp slt i32 1, %141
  br i1 %.not8.not48, label %.lr.ph50, label %436

.lr.ph50:                                         ; preds = %348
  br label %415

415:                                              ; preds = %.lr.ph50, %415
  %416 = phi i32 [ 1, %.lr.ph50 ], [ %435, %415 ]
  %417 = phi double [ 0.000000e+00, %.lr.ph50 ], [ %434, %415 ]
  %418 = uitofp nneg i32 %416 to double
  %419 = fmul double %400, %418
  %420 = fmul double %419, %419
  %421 = call double @llvm.fmuladd.f64(double %402, double %420, double %403)
  %422 = call double @llvm.fmuladd.f64(double %421, double %420, double %404)
  %423 = call double @llvm.fmuladd.f64(double %422, double %420, double %405)
  %424 = call double @llvm.fmuladd.f64(double %423, double %420, double %406)
  %425 = call double @llvm.fmuladd.f64(double %424, double %420, double %407)
  %426 = call double @llvm.fmuladd.f64(double %425, double %420, double %408)
  %427 = fmul double %419, %426
  %428 = call double @llvm.fmuladd.f64(double %409, double %420, double %410)
  %429 = call double @llvm.fmuladd.f64(double %420, double %428, double %411)
  %430 = call double @llvm.fmuladd.f64(double %420, double %429, double %412)
  %431 = call double @llvm.fmuladd.f64(double %420, double %430, double %413)
  %432 = call double @llvm.fmuladd.f64(double %420, double %431, double %414)
  %433 = call double @llvm.fmuladd.f64(double %420, double %432, double %408)
  %434 = call double @llvm.fmuladd.f64(double %427, double %433, double %417)
  %435 = add nuw nsw i32 %416, 1
  %.not8.not = icmp slt i32 %435, %141
  br i1 %.not8.not, label %415, label %._crit_edge51, !llvm.loop !16

._crit_edge51:                                    ; preds = %415
  %split52 = phi double [ %434, %415 ]
  br label %436

436:                                              ; preds = %._crit_edge51, %348
  %.lcssa2 = phi double [ %split52, %._crit_edge51 ], [ 0.000000e+00, %348 ]
  %437 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %438 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %439 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %440 = load double, ptr @nulltime, align 8
  %441 = fneg double %440
  %442 = call double @llvm.fmuladd.f64(double %438, double %439, double %441)
  store double %442, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %443 = load double, ptr @piref, align 8
  %444 = load double, ptr @four, align 8
  %445 = fdiv double %443, %444
  %446 = fmul double %445, %445
  %447 = load double, ptr @A6, align 8
  %448 = load double, ptr @A5, align 8
  %449 = call double @llvm.fmuladd.f64(double %447, double %446, double %448)
  %450 = load double, ptr @A4, align 8
  %451 = call double @llvm.fmuladd.f64(double %449, double %446, double %450)
  %452 = load double, ptr @A3, align 8
  %453 = call double @llvm.fmuladd.f64(double %451, double %446, double %452)
  %454 = load double, ptr @A2, align 8
  %455 = call double @llvm.fmuladd.f64(double %453, double %446, double %454)
  %456 = load double, ptr @A1, align 8
  %457 = call double @llvm.fmuladd.f64(double %455, double %446, double %456)
  %458 = load double, ptr @one, align 8
  %459 = call double @llvm.fmuladd.f64(double %457, double %446, double %458)
  %460 = fmul double %445, %459
  store double %460, ptr @sa, align 8
  %461 = load double, ptr @B6, align 8
  %462 = load double, ptr @B5, align 8
  %463 = call double @llvm.fmuladd.f64(double %461, double %446, double %462)
  %464 = load double, ptr @B4, align 8
  %465 = call double @llvm.fmuladd.f64(double %446, double %463, double %464)
  %466 = load double, ptr @B3, align 8
  %467 = call double @llvm.fmuladd.f64(double %446, double %465, double %466)
  %468 = load double, ptr @B2, align 8
  %469 = call double @llvm.fmuladd.f64(double %446, double %467, double %468)
  %470 = load double, ptr @B1, align 8
  %471 = call double @llvm.fmuladd.f64(double %446, double %469, double %470)
  %472 = call double @llvm.fmuladd.f64(double %446, double %471, double %458)
  store double %472, ptr @sb, align 8
  %473 = fmul double %460, %472
  store double %473, ptr @sa, align 8
  %474 = fdiv double %442, 2.900000e+01
  store double %474, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %475 = load double, ptr @two, align 8
  %476 = call double @llvm.fmuladd.f64(double %475, double %.lcssa2, double %473)
  %477 = fmul double %400, %476
  %478 = fdiv double %477, %475
  store double %478, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %479 = fadd double %478, -2.500000e-01
  store double %479, ptr @sc, align 8
  %480 = fdiv double %458, %474
  store double %480, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %481 = fmul double %479, 1.000000e-30
  %482 = fmul double %442, 1.000000e-30
  %483 = fmul double %480, 1.000000e-30
  %484 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %481, double noundef %482, double noundef %483) #4
  %485 = load double, ptr @one, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %486 = fdiv double f0x40599541F7F192A4, %162
  %487 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not9.not53 = icmp slt i32 1, %141
  br i1 %.not9.not53, label %.lr.ph55, label %504

.lr.ph55:                                         ; preds = %436
  br label %488

488:                                              ; preds = %.lr.ph55, %488
  %489 = phi i32 [ 1, %.lr.ph55 ], [ %503, %488 ]
  %490 = phi double [ 0.000000e+00, %.lr.ph55 ], [ %502, %488 ]
  %491 = uitofp nneg i32 %489 to double
  %492 = fmul double %486, %491
  %493 = fmul double %492, %492
  %494 = fadd double %492, %485
  %495 = fdiv double %485, %494
  %496 = fsub double %490, %495
  %497 = fadd double %493, %485
  %498 = fdiv double %492, %497
  %499 = fsub double %496, %498
  %500 = call double @llvm.fmuladd.f64(double %492, double %493, double %485)
  %501 = fdiv double %493, %500
  %502 = fsub double %499, %501
  %503 = add nuw nsw i32 %489, 1
  %.not9.not = icmp slt i32 %503, %141
  br i1 %.not9.not, label %488, label %._crit_edge56, !llvm.loop !17

._crit_edge56:                                    ; preds = %488
  %split57 = phi double [ %502, %488 ]
  br label %504

504:                                              ; preds = %._crit_edge56, %436
  %.lcssa1 = phi double [ %split57, %._crit_edge56 ], [ 0.000000e+00, %436 ]
  %505 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %506 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %507 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %508 = load double, ptr @nulltime, align 8
  %509 = fneg double %508
  %510 = call double @llvm.fmuladd.f64(double %506, double %507, double %509)
  store double %510, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %511 = fdiv double %510, 1.200000e+01
  store double %511, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %512 = load double, ptr @sa, align 8
  %513 = fmul double %512, %512
  %514 = fneg double %485
  %515 = fadd double %512, %485
  %516 = fdiv double %485, %515
  %517 = fsub double %514, %516
  %518 = fadd double %513, %485
  %519 = fdiv double %512, %518
  %520 = fsub double %517, %519
  %521 = call double @llvm.fmuladd.f64(double %512, double %513, double %485)
  %522 = fdiv double %513, %521
  %523 = fsub double %520, %522
  store double %523, ptr @sa, align 8
  %524 = fmul nnan double %486, 1.800000e+01
  %525 = load double, ptr @two, align 8
  %526 = call double @llvm.fmuladd.f64(double %525, double %.lcssa1, double %523)
  %527 = fmul double %524, %526
  store double %527, ptr @sa, align 8
  %528 = fptosi double %527 to i32
  %529 = mul nsw i32 %528, -2000
  %530 = sitofp i32 %529 to double
  %531 = load double, ptr @scale, align 8
  %532 = fdiv double %530, %531
  %533 = fptosi double %532 to i32
  %534 = fadd double %527, 5.002000e+02
  store double %534, ptr @sc, align 8
  %535 = load double, ptr @one, align 8
  %536 = fdiv double %535, %511
  store double %536, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %537 = fmul double %534, 1.000000e-30
  %538 = fmul double %510, 1.000000e-30
  %539 = fmul double %536, 1.000000e-30
  %540 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %537, double noundef %538, double noundef %539) #4
  %541 = load double, ptr @piref, align 8
  %542 = load double, ptr @three, align 8
  %543 = sitofp i32 %533 to double
  %544 = fmul double %542, %543
  %545 = fdiv double %541, %544
  %546 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %547 = load double, ptr @B6, align 8
  %548 = load double, ptr @B5, align 8
  %549 = load double, ptr @B4, align 8
  %550 = load double, ptr @B3, align 8
  %551 = load double, ptr @B2, align 8
  %552 = load double, ptr @B1, align 8
  %553 = load double, ptr @one, align 8
  %554 = load double, ptr @A6, align 8
  %555 = load double, ptr @A5, align 8
  %556 = load double, ptr @A4, align 8
  %557 = load double, ptr @A3, align 8
  %558 = load double, ptr @A2, align 8
  %559 = load double, ptr @A1, align 8
  %.not10.not58 = icmp slt i32 1, %533
  br i1 %.not10.not58, label %.lr.ph60, label %582

.lr.ph60:                                         ; preds = %504
  br label %560

560:                                              ; preds = %.lr.ph60, %560
  %561 = phi i32 [ 1, %.lr.ph60 ], [ %581, %560 ]
  %562 = phi double [ 0.000000e+00, %.lr.ph60 ], [ %580, %560 ]
  %563 = uitofp nneg i32 %561 to double
  %564 = fmul double %545, %563
  %565 = fmul double %564, %564
  %566 = call double @llvm.fmuladd.f64(double %547, double %565, double %548)
  %567 = call double @llvm.fmuladd.f64(double %565, double %566, double %549)
  %568 = call double @llvm.fmuladd.f64(double %565, double %567, double %550)
  %569 = call double @llvm.fmuladd.f64(double %565, double %568, double %551)
  %570 = call double @llvm.fmuladd.f64(double %565, double %569, double %552)
  %571 = call double @llvm.fmuladd.f64(double %565, double %570, double %553)
  %572 = fmul double %571, %571
  %573 = fmul double %572, %564
  %574 = call double @llvm.fmuladd.f64(double %554, double %565, double %555)
  %575 = call double @llvm.fmuladd.f64(double %574, double %565, double %556)
  %576 = call double @llvm.fmuladd.f64(double %575, double %565, double %557)
  %577 = call double @llvm.fmuladd.f64(double %576, double %565, double %558)
  %578 = call double @llvm.fmuladd.f64(double %577, double %565, double %559)
  %579 = call double @llvm.fmuladd.f64(double %578, double %565, double %553)
  %580 = call double @llvm.fmuladd.f64(double %573, double %579, double %562)
  %581 = add nuw nsw i32 %561, 1
  %.not10.not = icmp slt i32 %581, %533
  br i1 %.not10.not, label %560, label %._crit_edge61, !llvm.loop !18

._crit_edge61:                                    ; preds = %560
  %split62 = phi double [ %580, %560 ]
  br label %582

582:                                              ; preds = %._crit_edge61, %504
  %.lcssa = phi double [ %split62, %._crit_edge61 ], [ 0.000000e+00, %504 ]
  %583 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %584 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %585 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %586 = load double, ptr @nulltime, align 8
  %587 = fneg double %586
  %588 = call double @llvm.fmuladd.f64(double %584, double %585, double %587)
  store double %588, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %589 = load double, ptr @piref, align 8
  %590 = load double, ptr @three, align 8
  %591 = fdiv double %589, %590
  %592 = fmul double %591, %591
  %593 = load double, ptr @A6, align 8
  %594 = load double, ptr @A5, align 8
  %595 = call double @llvm.fmuladd.f64(double %593, double %592, double %594)
  %596 = load double, ptr @A4, align 8
  %597 = call double @llvm.fmuladd.f64(double %595, double %592, double %596)
  %598 = load double, ptr @A3, align 8
  %599 = call double @llvm.fmuladd.f64(double %597, double %592, double %598)
  %600 = load double, ptr @A2, align 8
  %601 = call double @llvm.fmuladd.f64(double %599, double %592, double %600)
  %602 = load double, ptr @A1, align 8
  %603 = call double @llvm.fmuladd.f64(double %601, double %592, double %602)
  %604 = load double, ptr @one, align 8
  %605 = call double @llvm.fmuladd.f64(double %603, double %592, double %604)
  %606 = fmul double %591, %605
  store double %606, ptr @sa, align 8
  %607 = load double, ptr @B6, align 8
  %608 = load double, ptr @B5, align 8
  %609 = call double @llvm.fmuladd.f64(double %607, double %592, double %608)
  %610 = load double, ptr @B4, align 8
  %611 = call double @llvm.fmuladd.f64(double %592, double %609, double %610)
  %612 = load double, ptr @B3, align 8
  %613 = call double @llvm.fmuladd.f64(double %592, double %611, double %612)
  %614 = load double, ptr @B2, align 8
  %615 = call double @llvm.fmuladd.f64(double %592, double %613, double %614)
  %616 = load double, ptr @B1, align 8
  %617 = call double @llvm.fmuladd.f64(double %592, double %615, double %616)
  %618 = call double @llvm.fmuladd.f64(double %592, double %617, double %604)
  store double %618, ptr @sb, align 8
  %619 = fmul double %606, %618
  %620 = fmul double %619, %618
  store double %620, ptr @sa, align 8
  %621 = fdiv double %588, 3.000000e+01
  store double %621, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %622 = load double, ptr @two, align 8
  %623 = call double @llvm.fmuladd.f64(double %622, double %.lcssa, double %620)
  %624 = fmul double %545, %623
  %625 = fdiv double %624, %622
  store double %625, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %626 = fadd double %625, f0xBFD2AAAAAAAAAAAB
  store double %626, ptr @sc, align 8
  %627 = fdiv double %604, %621
  store double %627, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %628 = fmul double %626, 1.000000e-30
  %629 = fmul double %588, 1.000000e-30
  %630 = fmul double %627, 1.000000e-30
  %631 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %628, double noundef %629, double noundef %630) #4
  %632 = load double, ptr @five, align 8
  %633 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %634 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %635 = fsub double %633, %634
  %636 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %637 = call double @llvm.fmuladd.f64(double %632, double %635, double %636)
  %638 = fdiv double %637, 5.200000e+01
  store double %638, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %639 = load double, ptr @one, align 8
  %640 = fdiv double %639, %638
  store double %640, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %641 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %642 = fadd double %641, %636
  %643 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %644 = fadd double %642, %643
  %645 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %646 = fadd double %644, %645
  %647 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %648 = fadd double %646, %647
  store double %648, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %649 = load double, ptr @four, align 8
  %650 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %651 = call double @llvm.fmuladd.f64(double %649, double %650, double %648)
  %652 = fdiv double %651, 1.520000e+02
  store double %652, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %653 = fdiv double %639, %652
  store double %653, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %648, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %654 = fadd double %648, %650
  %655 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %656 = fadd double %654, %655
  %657 = fdiv double %656, 1.460000e+02
  store double %657, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %658 = fdiv double %639, %657
  store double %658, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %659 = fadd double %636, %643
  %660 = fadd double %659, %647
  %661 = fadd double %660, %655
  %662 = fdiv double %661, 9.100000e+01
  store double %662, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %663 = fdiv double %639, %662
  store double %663, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar11 = call i32 @putchar(i32 10)
  %664 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %533) #4
  %665 = load double, ptr @nulltime, align 8
  %666 = fmul double %665, 1.000000e-30
  %667 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %666) #4
  %668 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %669 = fmul double %668, 1.000000e-30
  %670 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %669) #4
  %671 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %672 = fmul double %671, 1.000000e-30
  %673 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %672) #4
  %674 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %675 = fmul double %674, 1.000000e-30
  %676 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %675) #4
  %677 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %678 = fmul double %677, 1.000000e-30
  %679 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %678) #4
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
