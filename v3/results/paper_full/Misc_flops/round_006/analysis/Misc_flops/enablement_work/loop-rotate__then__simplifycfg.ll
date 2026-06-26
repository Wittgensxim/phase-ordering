; ModuleID = 'results\paper_full\Misc_flops\round_005\output.ll'
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

5:                                                ; preds = %._crit_edge
  %6 = phi double [ %.lcssa10, %._crit_edge ]
  %7 = phi double [ %16, %._crit_edge ]
  %8 = phi i32 [ %13, %._crit_edge ]
  %9 = phi double [ %37, %._crit_edge ]
  %10 = load double, ptr @TLimit, align 8
  %11 = fcmp olt double %9, %10
  br i1 %11, label %.lr.ph20, label %.loopexit, !llvm.loop !7

.lr.ph20:                                         ; preds = %0, %5
  %12 = phi i32 [ %8, %5 ], [ 15625, %0 ]
  %13 = shl nsw i32 %12, 1
  %14 = load double, ptr @one, align 8
  %15 = sitofp i32 %13 to double
  %16 = fdiv double %14, %15
  %17 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %18 = load double, ptr @D1, align 8
  %19 = load double, ptr @D2, align 8
  %20 = load double, ptr @D3, align 8
  %21 = load double, ptr @E2, align 8
  %22 = load double, ptr @E3, align 8
  %.not.not18 = icmp slt i32 1, %13
  br i1 %.not.not18, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph20, %.lr.ph
  %23 = phi i32 [ %35, %.lr.ph ], [ 1, %.lr.ph20 ]
  %24 = phi double [ %34, %.lr.ph ], [ 0.000000e+00, %.lr.ph20 ]
  %25 = phi double [ %26, %.lr.ph ], [ 0.000000e+00, %.lr.ph20 ]
  %26 = fadd double %25, %14
  %27 = fmul double %26, %16
  %28 = call double @llvm.fmuladd.f64(double %27, double %20, double %19)
  %29 = call double @llvm.fmuladd.f64(double %27, double %28, double %18)
  %30 = call double @llvm.fmuladd.f64(double %27, double %22, double %21)
  %31 = call double @llvm.fmuladd.f64(double %27, double %30, double %18)
  %32 = call double @llvm.fmuladd.f64(double %27, double %31, double %14)
  %33 = fdiv double %29, %32
  %34 = fadd double %24, %33
  %35 = add nuw nsw i32 %23, 1
  %.not.not = icmp slt i32 %35, %13
  br i1 %.not.not, label %.lr.ph, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph20
  %.lcssa10 = phi double [ 0.000000e+00, %.lr.ph20 ], [ %34, %.lr.ph ]
  %36 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %37 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %37, ptr @sa, align 8
  %38 = icmp eq i32 %12, 256000000
  br i1 %38, label %.loopexit, label %5

.loopexit:                                        ; preds = %0, %5, %._crit_edge
  %39 = phi double [ %.lcssa10, %._crit_edge ], [ undef, %0 ], [ %6, %5 ]
  %40 = phi double [ %16, %._crit_edge ], [ undef, %0 ], [ %7, %5 ]
  %41 = phi i32 [ 512000000, %._crit_edge ], [ 15625, %0 ], [ %8, %5 ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %42 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %43

43:                                               ; preds = %43, %.loopexit
  %44 = phi i32 [ %45, %43 ], [ 1, %.loopexit ]
  %.not.not3 = icmp slt i32 %44, %41
  %45 = add nuw nsw i32 %44, 1
  br i1 %.not.not3, label %43, label %46, !llvm.loop !10

46:                                               ; preds = %43
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
  %71 = call double @llvm.fmuladd.f64(double %70, double %39, double %69)
  %72 = fmul double %40, %71
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
  %sa.promoted = load double, ptr @sa, align 8
  %.not24 = icmp sgt i32 1, %80
  br i1 %.not24, label %._crit_edge27, label %.lr.ph26

.lr.ph26:                                         ; preds = %46, %.lr.ph26
  %92 = phi i32 [ %97, %.lr.ph26 ], [ 1, %46 ]
  %93 = phi double [ %95, %.lr.ph26 ], [ %88, %46 ]
  %94 = phi double [ %96, %.lr.ph26 ], [ %sa.promoted, %46 ]
  %95 = fneg double %93
  %96 = fsub double %94, %93
  store double %96, ptr @sa, align 8
  %97 = add nuw nsw i32 %92, 1
  %.not = icmp sgt i32 %97, %80
  br i1 %.not, label %._crit_edge27, label %.lr.ph26, !llvm.loop !11

._crit_edge27:                                    ; preds = %.lr.ph26, %46
  %.lcssa9 = phi double [ %88, %46 ], [ %95, %.lr.ph26 ]
  %98 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %99 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %100 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %101 = fmul double %99, %100
  %102 = fcmp olt double %101, 0.000000e+00
  %storemerge = select i1 %102, double 0.000000e+00, double %101
  store double %storemerge, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %103 = sitofp i32 %80 to double
  store double %103, ptr @sc, align 8
  %104 = load double, ptr @sa, align 8
  %105 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %106 = load double, ptr @two, align 8
  %sa.promoted18 = load double, ptr @sa, align 8
  %.not429 = icmp sgt i32 1, %80
  br i1 %.not429, label %._crit_edge32, label %.lr.ph31

.lr.ph31:                                         ; preds = %._crit_edge27, %.lr.ph31
  %107 = phi i32 [ %122, %.lr.ph31 ], [ 1, %._crit_edge27 ]
  %108 = phi double [ %118, %.lr.ph31 ], [ 0.000000e+00, %._crit_edge27 ]
  %109 = phi double [ %119, %.lr.ph31 ], [ 0.000000e+00, %._crit_edge27 ]
  %110 = phi double [ %114, %.lr.ph31 ], [ %.lcssa9, %._crit_edge27 ]
  %111 = phi double [ %116, %.lr.ph31 ], [ %104, %._crit_edge27 ]
  %112 = phi double [ %121, %.lr.ph31 ], [ 0.000000e+00, %._crit_edge27 ]
  %113 = phi double [ %115, %.lr.ph31 ], [ %sa.promoted18, %._crit_edge27 ]
  %114 = fneg double %110
  %115 = fsub double %113, %110
  store double %115, ptr @sa, align 8
  %116 = fadd double %111, %106
  %117 = fsub double %114, %116
  %118 = fadd double %108, %117
  %119 = call double @llvm.fmuladd.f64(double %110, double %116, double %109)
  %120 = fdiv double %110, %116
  %121 = fsub double %112, %120
  %122 = add nuw nsw i32 %107, 1
  %.not4 = icmp sgt i32 %122, %80
  br i1 %.not4, label %._crit_edge32, label %.lr.ph31, !llvm.loop !12

._crit_edge32:                                    ; preds = %.lr.ph31, %._crit_edge27
  %.lcssa8 = phi double [ 0.000000e+00, %._crit_edge27 ], [ %121, %.lr.ph31 ]
  %.lcssa7 = phi double [ 0.000000e+00, %._crit_edge27 ], [ %119, %.lr.ph31 ]
  %.lcssa6 = phi double [ 0.000000e+00, %._crit_edge27 ], [ %118, %.lr.ph31 ]
  %123 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %124 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %125 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %126 = fmul double %124, %125
  store double %126, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %127 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %128 = fsub double %126, %127
  %129 = fdiv double %128, 7.000000e+00
  store double %129, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %130 = load double, ptr @sa, align 8
  %131 = fmul double %130, %.lcssa6
  %132 = load double, ptr @sc, align 8
  %133 = fdiv double %131, %132
  %134 = fptosi double %133 to i32
  %135 = load double, ptr @four, align 8
  %136 = fmul double %135, %.lcssa8
  %137 = load double, ptr @five, align 8
  %138 = fdiv double %136, %137
  store double %138, ptr @sa, align 8
  %139 = fdiv double %137, %.lcssa7
  %140 = fadd double %138, %139
  store double %140, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %141 = fmul double %.lcssa7, %.lcssa7
  %142 = fmul double %141, %.lcssa7
  %143 = fdiv double 3.125000e+01, %142
  %144 = fsub double %140, %143
  store double %144, ptr @piprg, align 8
  %145 = load double, ptr @piref, align 8
  %146 = fsub double %144, %145
  store double %146, ptr @pierr, align 8
  %147 = load double, ptr @one, align 8
  %148 = fdiv double %147, %129
  store double %148, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %149 = fmul double %146, 1.000000e-30
  %150 = fmul double %128, 1.000000e-30
  %151 = fmul double %148, 1.000000e-30
  %152 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %149, double noundef %150, double noundef %151) #4
  %153 = load double, ptr @piref, align 8
  %154 = load double, ptr @three, align 8
  %155 = sitofp i32 %134 to double
  %156 = fmul double %154, %155
  %157 = fdiv double %153, %156
  %158 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %159 = load double, ptr @one, align 8
  %160 = load double, ptr @A6, align 8
  %161 = load double, ptr @A5, align 8
  %162 = fneg double %161
  %163 = load double, ptr @A4, align 8
  %164 = load double, ptr @A3, align 8
  %165 = fneg double %164
  %166 = load double, ptr @A2, align 8
  %167 = load double, ptr @A1, align 8
  %.not5.not36 = icmp slt i32 1, %134
  br i1 %.not5.not36, label %.lr.ph38, label %._crit_edge39

.lr.ph38:                                         ; preds = %._crit_edge32, %.lr.ph38
  %168 = phi i32 [ %181, %.lr.ph38 ], [ 1, %._crit_edge32 ]
  %169 = phi double [ %180, %.lr.ph38 ], [ 0.000000e+00, %._crit_edge32 ]
  %170 = phi double [ %171, %.lr.ph38 ], [ 0.000000e+00, %._crit_edge32 ]
  %171 = fadd double %170, %159
  %172 = fmul double %171, %157
  %173 = fmul double %172, %172
  %174 = call double @llvm.fmuladd.f64(double %160, double %173, double %162)
  %175 = call double @llvm.fmuladd.f64(double %174, double %173, double %163)
  %176 = call double @llvm.fmuladd.f64(double %175, double %173, double %165)
  %177 = call double @llvm.fmuladd.f64(double %176, double %173, double %166)
  %178 = call double @llvm.fmuladd.f64(double %177, double %173, double %167)
  %179 = call double @llvm.fmuladd.f64(double %178, double %173, double %159)
  %180 = call double @llvm.fmuladd.f64(double %172, double %179, double %169)
  %181 = add nuw nsw i32 %168, 1
  %.not5.not = icmp slt i32 %181, %134
  br i1 %.not5.not, label %.lr.ph38, label %._crit_edge39, !llvm.loop !13

._crit_edge39:                                    ; preds = %.lr.ph38, %._crit_edge32
  %.lcssa5 = phi double [ 0.000000e+00, %._crit_edge32 ], [ %180, %.lr.ph38 ]
  %182 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %183 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %184 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %185 = load double, ptr @nulltime, align 8
  %186 = fneg double %185
  %187 = call double @llvm.fmuladd.f64(double %183, double %184, double %186)
  store double %187, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %188 = load double, ptr @piref, align 8
  %189 = load double, ptr @three, align 8
  %190 = fdiv double %188, %189
  %191 = fmul double %190, %190
  %192 = load double, ptr @A6, align 8
  %193 = load double, ptr @A5, align 8
  %194 = fneg double %193
  %195 = call double @llvm.fmuladd.f64(double %192, double %191, double %194)
  %196 = load double, ptr @A4, align 8
  %197 = call double @llvm.fmuladd.f64(double %195, double %191, double %196)
  %198 = load double, ptr @A3, align 8
  %199 = fneg double %198
  %200 = call double @llvm.fmuladd.f64(double %197, double %191, double %199)
  %201 = load double, ptr @A2, align 8
  %202 = call double @llvm.fmuladd.f64(double %200, double %191, double %201)
  %203 = load double, ptr @A1, align 8
  %204 = call double @llvm.fmuladd.f64(double %202, double %191, double %203)
  %205 = load double, ptr @one, align 8
  %206 = call double @llvm.fmuladd.f64(double %204, double %191, double %205)
  %207 = fmul double %190, %206
  store double %207, ptr @sa, align 8
  %208 = fdiv double %187, 1.700000e+01
  store double %208, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %209 = load double, ptr @two, align 8
  %210 = call double @llvm.fmuladd.f64(double %209, double %.lcssa5, double %207)
  %211 = fmul double %157, %210
  %212 = fdiv double %211, %209
  store double %212, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %213 = fadd double %212, -5.000000e-01
  store double %213, ptr @sc, align 8
  %214 = fdiv double %205, %208
  store double %214, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %215 = fmul double %213, 1.000000e-30
  %216 = fmul double %187, 1.000000e-30
  %217 = fmul double %214, 1.000000e-30
  %218 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %215, double noundef %216, double noundef %217) #4
  %219 = load double, ptr @A3, align 8
  %220 = fneg double %219
  store double %220, ptr @A3, align 8
  %221 = load double, ptr @A5, align 8
  %222 = fneg double %221
  store double %222, ptr @A5, align 8
  %223 = load double, ptr @piref, align 8
  %224 = load double, ptr @three, align 8
  %225 = fmul double %224, %155
  %226 = fdiv double %223, %225
  %227 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %228 = load double, ptr @B6, align 8
  %229 = load double, ptr @B5, align 8
  %230 = load double, ptr @B4, align 8
  %231 = load double, ptr @B3, align 8
  %232 = load double, ptr @B2, align 8
  %233 = load double, ptr @B1, align 8
  %234 = load double, ptr @one, align 8
  %.not6.not41 = icmp slt i32 1, %134
  br i1 %.not6.not41, label %.lr.ph43, label %._crit_edge44

.lr.ph43:                                         ; preds = %._crit_edge39, %.lr.ph43
  %235 = phi i32 [ %247, %.lr.ph43 ], [ 1, %._crit_edge39 ]
  %236 = phi double [ %246, %.lr.ph43 ], [ 0.000000e+00, %._crit_edge39 ]
  %237 = uitofp nneg i32 %235 to double
  %238 = fmul double %226, %237
  %239 = fmul double %238, %238
  %240 = call double @llvm.fmuladd.f64(double %228, double %239, double %229)
  %241 = call double @llvm.fmuladd.f64(double %239, double %240, double %230)
  %242 = call double @llvm.fmuladd.f64(double %239, double %241, double %231)
  %243 = call double @llvm.fmuladd.f64(double %239, double %242, double %232)
  %244 = call double @llvm.fmuladd.f64(double %239, double %243, double %233)
  %245 = call double @llvm.fmuladd.f64(double %239, double %244, double %236)
  %246 = fadd double %245, %234
  %247 = add nuw nsw i32 %235, 1
  %.not6.not = icmp slt i32 %247, %134
  br i1 %.not6.not, label %.lr.ph43, label %._crit_edge44, !llvm.loop !14

._crit_edge44:                                    ; preds = %.lr.ph43, %._crit_edge39
  %.lcssa4 = phi double [ 0.000000e+00, %._crit_edge39 ], [ %246, %.lr.ph43 ]
  %248 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %249 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %250 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %251 = load double, ptr @nulltime, align 8
  %252 = fneg double %251
  %253 = call double @llvm.fmuladd.f64(double %249, double %250, double %252)
  store double %253, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %254 = load double, ptr @piref, align 8
  %255 = load double, ptr @three, align 8
  %256 = fdiv double %254, %255
  %257 = fmul double %256, %256
  %258 = load double, ptr @B6, align 8
  %259 = load double, ptr @B5, align 8
  %260 = call double @llvm.fmuladd.f64(double %258, double %257, double %259)
  %261 = load double, ptr @B4, align 8
  %262 = call double @llvm.fmuladd.f64(double %257, double %260, double %261)
  %263 = load double, ptr @B3, align 8
  %264 = call double @llvm.fmuladd.f64(double %257, double %262, double %263)
  %265 = load double, ptr @B2, align 8
  %266 = call double @llvm.fmuladd.f64(double %257, double %264, double %265)
  %267 = load double, ptr @B1, align 8
  %268 = call double @llvm.fmuladd.f64(double %257, double %266, double %267)
  %269 = load double, ptr @one, align 8
  %270 = call double @llvm.fmuladd.f64(double %257, double %268, double %269)
  store double %270, ptr @sa, align 8
  %271 = fdiv double %253, 1.500000e+01
  store double %271, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %272 = fadd double %270, %269
  %273 = load double, ptr @two, align 8
  %274 = call double @llvm.fmuladd.f64(double %273, double %.lcssa4, double %272)
  %275 = fmul double %226, %274
  %276 = fdiv double %275, %273
  store double %276, ptr @sa, align 8
  %277 = load double, ptr @A6, align 8
  %278 = load double, ptr @A5, align 8
  %279 = call double @llvm.fmuladd.f64(double %277, double %257, double %278)
  %280 = load double, ptr @A4, align 8
  %281 = call double @llvm.fmuladd.f64(double %279, double %257, double %280)
  %282 = load double, ptr @A3, align 8
  %283 = call double @llvm.fmuladd.f64(double %281, double %257, double %282)
  %284 = load double, ptr @A2, align 8
  %285 = call double @llvm.fmuladd.f64(double %283, double %257, double %284)
  %286 = load double, ptr @A1, align 8
  %287 = call double @llvm.fmuladd.f64(double %285, double %257, double %286)
  %288 = load double, ptr @A0, align 8
  %289 = call double @llvm.fmuladd.f64(double %287, double %257, double %288)
  %290 = fmul double %256, %289
  store double %290, ptr @sb, align 8
  %291 = fsub double %276, %290
  store double %291, ptr @sc, align 8
  %292 = fdiv double %269, %271
  store double %292, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %293 = fmul double %291, 1.000000e-30
  %294 = fmul double %253, 1.000000e-30
  %295 = fmul double %292, 1.000000e-30
  %296 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %293, double noundef %294, double noundef %295) #4
  %297 = load double, ptr @piref, align 8
  %298 = load double, ptr @three, align 8
  %299 = fmul double %298, %155
  %300 = fdiv double %297, %299
  %301 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %302 = load double, ptr @A6, align 8
  %303 = load double, ptr @A5, align 8
  %304 = load double, ptr @A4, align 8
  %305 = load double, ptr @A3, align 8
  %306 = load double, ptr @A2, align 8
  %307 = load double, ptr @A1, align 8
  %308 = load double, ptr @one, align 8
  %309 = load double, ptr @B6, align 8
  %310 = load double, ptr @B5, align 8
  %311 = load double, ptr @B4, align 8
  %312 = load double, ptr @B3, align 8
  %313 = load double, ptr @B2, align 8
  %314 = load double, ptr @B1, align 8
  %.not7.not46 = icmp slt i32 1, %134
  br i1 %.not7.not46, label %.lr.ph48, label %._crit_edge49

.lr.ph48:                                         ; preds = %._crit_edge44, %.lr.ph48
  %315 = phi i32 [ %335, %.lr.ph48 ], [ 1, %._crit_edge44 ]
  %316 = phi double [ %334, %.lr.ph48 ], [ 0.000000e+00, %._crit_edge44 ]
  %317 = uitofp nneg i32 %315 to double
  %318 = fmul double %300, %317
  %319 = fmul double %318, %318
  %320 = call double @llvm.fmuladd.f64(double %302, double %319, double %303)
  %321 = call double @llvm.fmuladd.f64(double %320, double %319, double %304)
  %322 = call double @llvm.fmuladd.f64(double %321, double %319, double %305)
  %323 = call double @llvm.fmuladd.f64(double %322, double %319, double %306)
  %324 = call double @llvm.fmuladd.f64(double %323, double %319, double %307)
  %325 = call double @llvm.fmuladd.f64(double %324, double %319, double %308)
  %326 = fmul double %318, %325
  %327 = call double @llvm.fmuladd.f64(double %309, double %319, double %310)
  %328 = call double @llvm.fmuladd.f64(double %319, double %327, double %311)
  %329 = call double @llvm.fmuladd.f64(double %319, double %328, double %312)
  %330 = call double @llvm.fmuladd.f64(double %319, double %329, double %313)
  %331 = call double @llvm.fmuladd.f64(double %319, double %330, double %314)
  %332 = call double @llvm.fmuladd.f64(double %319, double %331, double %308)
  %333 = fdiv double %326, %332
  %334 = fadd double %316, %333
  %335 = add nuw nsw i32 %315, 1
  %.not7.not = icmp slt i32 %335, %134
  br i1 %.not7.not, label %.lr.ph48, label %._crit_edge49, !llvm.loop !15

._crit_edge49:                                    ; preds = %.lr.ph48, %._crit_edge44
  %.lcssa3 = phi double [ 0.000000e+00, %._crit_edge44 ], [ %334, %.lr.ph48 ]
  %336 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %337 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %338 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %339 = load double, ptr @nulltime, align 8
  %340 = fneg double %339
  %341 = call double @llvm.fmuladd.f64(double %337, double %338, double %340)
  store double %341, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %342 = load double, ptr @piref, align 8
  %343 = load double, ptr @three, align 8
  %344 = fdiv double %342, %343
  %345 = fmul double %344, %344
  %346 = load double, ptr @A6, align 8
  %347 = load double, ptr @A5, align 8
  %348 = call double @llvm.fmuladd.f64(double %346, double %345, double %347)
  %349 = load double, ptr @A4, align 8
  %350 = call double @llvm.fmuladd.f64(double %348, double %345, double %349)
  %351 = load double, ptr @A3, align 8
  %352 = call double @llvm.fmuladd.f64(double %350, double %345, double %351)
  %353 = load double, ptr @A2, align 8
  %354 = call double @llvm.fmuladd.f64(double %352, double %345, double %353)
  %355 = load double, ptr @A1, align 8
  %356 = call double @llvm.fmuladd.f64(double %354, double %345, double %355)
  %357 = load double, ptr @one, align 8
  %358 = call double @llvm.fmuladd.f64(double %356, double %345, double %357)
  %359 = fmul double %344, %358
  store double %359, ptr @sa, align 8
  %360 = load double, ptr @B6, align 8
  %361 = load double, ptr @B5, align 8
  %362 = call double @llvm.fmuladd.f64(double %360, double %345, double %361)
  %363 = load double, ptr @B4, align 8
  %364 = call double @llvm.fmuladd.f64(double %345, double %362, double %363)
  %365 = load double, ptr @B3, align 8
  %366 = call double @llvm.fmuladd.f64(double %345, double %364, double %365)
  %367 = load double, ptr @B2, align 8
  %368 = call double @llvm.fmuladd.f64(double %345, double %366, double %367)
  %369 = load double, ptr @B1, align 8
  %370 = call double @llvm.fmuladd.f64(double %345, double %368, double %369)
  %371 = call double @llvm.fmuladd.f64(double %345, double %370, double %357)
  store double %371, ptr @sb, align 8
  %372 = fdiv double %359, %371
  store double %372, ptr @sa, align 8
  %373 = fdiv double %341, 2.900000e+01
  store double %373, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %374 = load double, ptr @two, align 8
  %375 = call double @llvm.fmuladd.f64(double %374, double %.lcssa3, double %372)
  %376 = fmul double %300, %375
  %377 = fdiv double %376, %374
  store double %377, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %378 = fadd double %377, f0xBFE62E42FEFA39EF
  store double %378, ptr @sc, align 8
  %379 = fdiv double %357, %373
  store double %379, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %380 = fmul double %378, 1.000000e-30
  %381 = fmul double %341, 1.000000e-30
  %382 = fmul double %379, 1.000000e-30
  %383 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %380, double noundef %381, double noundef %382) #4
  %384 = load double, ptr @piref, align 8
  %385 = load double, ptr @four, align 8
  %386 = fmul double %385, %155
  %387 = fdiv double %384, %386
  %388 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %389 = load double, ptr @A6, align 8
  %390 = load double, ptr @A5, align 8
  %391 = load double, ptr @A4, align 8
  %392 = load double, ptr @A3, align 8
  %393 = load double, ptr @A2, align 8
  %394 = load double, ptr @A1, align 8
  %395 = load double, ptr @one, align 8
  %396 = load double, ptr @B6, align 8
  %397 = load double, ptr @B5, align 8
  %398 = load double, ptr @B4, align 8
  %399 = load double, ptr @B3, align 8
  %400 = load double, ptr @B2, align 8
  %401 = load double, ptr @B1, align 8
  %.not8.not51 = icmp slt i32 1, %134
  br i1 %.not8.not51, label %.lr.ph53, label %._crit_edge54

.lr.ph53:                                         ; preds = %._crit_edge49, %.lr.ph53
  %402 = phi i32 [ %421, %.lr.ph53 ], [ 1, %._crit_edge49 ]
  %403 = phi double [ %420, %.lr.ph53 ], [ 0.000000e+00, %._crit_edge49 ]
  %404 = uitofp nneg i32 %402 to double
  %405 = fmul double %387, %404
  %406 = fmul double %405, %405
  %407 = call double @llvm.fmuladd.f64(double %389, double %406, double %390)
  %408 = call double @llvm.fmuladd.f64(double %407, double %406, double %391)
  %409 = call double @llvm.fmuladd.f64(double %408, double %406, double %392)
  %410 = call double @llvm.fmuladd.f64(double %409, double %406, double %393)
  %411 = call double @llvm.fmuladd.f64(double %410, double %406, double %394)
  %412 = call double @llvm.fmuladd.f64(double %411, double %406, double %395)
  %413 = fmul double %405, %412
  %414 = call double @llvm.fmuladd.f64(double %396, double %406, double %397)
  %415 = call double @llvm.fmuladd.f64(double %406, double %414, double %398)
  %416 = call double @llvm.fmuladd.f64(double %406, double %415, double %399)
  %417 = call double @llvm.fmuladd.f64(double %406, double %416, double %400)
  %418 = call double @llvm.fmuladd.f64(double %406, double %417, double %401)
  %419 = call double @llvm.fmuladd.f64(double %406, double %418, double %395)
  %420 = call double @llvm.fmuladd.f64(double %413, double %419, double %403)
  %421 = add nuw nsw i32 %402, 1
  %.not8.not = icmp slt i32 %421, %134
  br i1 %.not8.not, label %.lr.ph53, label %._crit_edge54, !llvm.loop !16

._crit_edge54:                                    ; preds = %.lr.ph53, %._crit_edge49
  %.lcssa2 = phi double [ 0.000000e+00, %._crit_edge49 ], [ %420, %.lr.ph53 ]
  %422 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %423 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %424 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %425 = load double, ptr @nulltime, align 8
  %426 = fneg double %425
  %427 = call double @llvm.fmuladd.f64(double %423, double %424, double %426)
  store double %427, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %428 = load double, ptr @piref, align 8
  %429 = load double, ptr @four, align 8
  %430 = fdiv double %428, %429
  %431 = fmul double %430, %430
  %432 = load double, ptr @A6, align 8
  %433 = load double, ptr @A5, align 8
  %434 = call double @llvm.fmuladd.f64(double %432, double %431, double %433)
  %435 = load double, ptr @A4, align 8
  %436 = call double @llvm.fmuladd.f64(double %434, double %431, double %435)
  %437 = load double, ptr @A3, align 8
  %438 = call double @llvm.fmuladd.f64(double %436, double %431, double %437)
  %439 = load double, ptr @A2, align 8
  %440 = call double @llvm.fmuladd.f64(double %438, double %431, double %439)
  %441 = load double, ptr @A1, align 8
  %442 = call double @llvm.fmuladd.f64(double %440, double %431, double %441)
  %443 = load double, ptr @one, align 8
  %444 = call double @llvm.fmuladd.f64(double %442, double %431, double %443)
  %445 = fmul double %430, %444
  store double %445, ptr @sa, align 8
  %446 = load double, ptr @B6, align 8
  %447 = load double, ptr @B5, align 8
  %448 = call double @llvm.fmuladd.f64(double %446, double %431, double %447)
  %449 = load double, ptr @B4, align 8
  %450 = call double @llvm.fmuladd.f64(double %431, double %448, double %449)
  %451 = load double, ptr @B3, align 8
  %452 = call double @llvm.fmuladd.f64(double %431, double %450, double %451)
  %453 = load double, ptr @B2, align 8
  %454 = call double @llvm.fmuladd.f64(double %431, double %452, double %453)
  %455 = load double, ptr @B1, align 8
  %456 = call double @llvm.fmuladd.f64(double %431, double %454, double %455)
  %457 = call double @llvm.fmuladd.f64(double %431, double %456, double %443)
  store double %457, ptr @sb, align 8
  %458 = fmul double %445, %457
  store double %458, ptr @sa, align 8
  %459 = fdiv double %427, 2.900000e+01
  store double %459, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %460 = load double, ptr @two, align 8
  %461 = call double @llvm.fmuladd.f64(double %460, double %.lcssa2, double %458)
  %462 = fmul double %387, %461
  %463 = fdiv double %462, %460
  store double %463, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %464 = fadd double %463, -2.500000e-01
  store double %464, ptr @sc, align 8
  %465 = fdiv double %443, %459
  store double %465, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %466 = fmul double %464, 1.000000e-30
  %467 = fmul double %427, 1.000000e-30
  %468 = fmul double %465, 1.000000e-30
  %469 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %466, double noundef %467, double noundef %468) #4
  %470 = load double, ptr @one, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %471 = fdiv double f0x40599541F7F192A4, %155
  %472 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not9.not56 = icmp slt i32 1, %134
  br i1 %.not9.not56, label %.lr.ph58, label %._crit_edge59

.lr.ph58:                                         ; preds = %._crit_edge54, %.lr.ph58
  %473 = phi i32 [ %487, %.lr.ph58 ], [ 1, %._crit_edge54 ]
  %474 = phi double [ %486, %.lr.ph58 ], [ 0.000000e+00, %._crit_edge54 ]
  %475 = uitofp nneg i32 %473 to double
  %476 = fmul double %471, %475
  %477 = fmul double %476, %476
  %478 = fadd double %476, %470
  %479 = fdiv double %470, %478
  %480 = fsub double %474, %479
  %481 = fadd double %477, %470
  %482 = fdiv double %476, %481
  %483 = fsub double %480, %482
  %484 = call double @llvm.fmuladd.f64(double %476, double %477, double %470)
  %485 = fdiv double %477, %484
  %486 = fsub double %483, %485
  %487 = add nuw nsw i32 %473, 1
  %.not9.not = icmp slt i32 %487, %134
  br i1 %.not9.not, label %.lr.ph58, label %._crit_edge59, !llvm.loop !17

._crit_edge59:                                    ; preds = %.lr.ph58, %._crit_edge54
  %.lcssa1 = phi double [ 0.000000e+00, %._crit_edge54 ], [ %486, %.lr.ph58 ]
  %488 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %489 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %490 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %491 = load double, ptr @nulltime, align 8
  %492 = fneg double %491
  %493 = call double @llvm.fmuladd.f64(double %489, double %490, double %492)
  store double %493, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %494 = fdiv double %493, 1.200000e+01
  store double %494, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %495 = load double, ptr @sa, align 8
  %496 = fmul double %495, %495
  %497 = fneg double %470
  %498 = fadd double %495, %470
  %499 = fdiv double %470, %498
  %500 = fsub double %497, %499
  %501 = fadd double %496, %470
  %502 = fdiv double %495, %501
  %503 = fsub double %500, %502
  %504 = call double @llvm.fmuladd.f64(double %495, double %496, double %470)
  %505 = fdiv double %496, %504
  %506 = fsub double %503, %505
  store double %506, ptr @sa, align 8
  %507 = fmul nnan double %471, 1.800000e+01
  %508 = load double, ptr @two, align 8
  %509 = call double @llvm.fmuladd.f64(double %508, double %.lcssa1, double %506)
  %510 = fmul double %507, %509
  store double %510, ptr @sa, align 8
  %511 = fptosi double %510 to i32
  %512 = mul nsw i32 %511, -2000
  %513 = sitofp i32 %512 to double
  %514 = load double, ptr @scale, align 8
  %515 = fdiv double %513, %514
  %516 = fptosi double %515 to i32
  %517 = fadd double %510, 5.002000e+02
  store double %517, ptr @sc, align 8
  %518 = load double, ptr @one, align 8
  %519 = fdiv double %518, %494
  store double %519, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %520 = fmul double %517, 1.000000e-30
  %521 = fmul double %493, 1.000000e-30
  %522 = fmul double %519, 1.000000e-30
  %523 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %520, double noundef %521, double noundef %522) #4
  %524 = load double, ptr @piref, align 8
  %525 = load double, ptr @three, align 8
  %526 = sitofp i32 %516 to double
  %527 = fmul double %525, %526
  %528 = fdiv double %524, %527
  %529 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %530 = load double, ptr @B6, align 8
  %531 = load double, ptr @B5, align 8
  %532 = load double, ptr @B4, align 8
  %533 = load double, ptr @B3, align 8
  %534 = load double, ptr @B2, align 8
  %535 = load double, ptr @B1, align 8
  %536 = load double, ptr @one, align 8
  %537 = load double, ptr @A6, align 8
  %538 = load double, ptr @A5, align 8
  %539 = load double, ptr @A4, align 8
  %540 = load double, ptr @A3, align 8
  %541 = load double, ptr @A2, align 8
  %542 = load double, ptr @A1, align 8
  %.not10.not61 = icmp slt i32 1, %516
  br i1 %.not10.not61, label %.lr.ph63, label %._crit_edge64

.lr.ph63:                                         ; preds = %._crit_edge59, %.lr.ph63
  %543 = phi i32 [ %563, %.lr.ph63 ], [ 1, %._crit_edge59 ]
  %544 = phi double [ %562, %.lr.ph63 ], [ 0.000000e+00, %._crit_edge59 ]
  %545 = uitofp nneg i32 %543 to double
  %546 = fmul double %528, %545
  %547 = fmul double %546, %546
  %548 = call double @llvm.fmuladd.f64(double %530, double %547, double %531)
  %549 = call double @llvm.fmuladd.f64(double %547, double %548, double %532)
  %550 = call double @llvm.fmuladd.f64(double %547, double %549, double %533)
  %551 = call double @llvm.fmuladd.f64(double %547, double %550, double %534)
  %552 = call double @llvm.fmuladd.f64(double %547, double %551, double %535)
  %553 = call double @llvm.fmuladd.f64(double %547, double %552, double %536)
  %554 = fmul double %553, %553
  %555 = fmul double %554, %546
  %556 = call double @llvm.fmuladd.f64(double %537, double %547, double %538)
  %557 = call double @llvm.fmuladd.f64(double %556, double %547, double %539)
  %558 = call double @llvm.fmuladd.f64(double %557, double %547, double %540)
  %559 = call double @llvm.fmuladd.f64(double %558, double %547, double %541)
  %560 = call double @llvm.fmuladd.f64(double %559, double %547, double %542)
  %561 = call double @llvm.fmuladd.f64(double %560, double %547, double %536)
  %562 = call double @llvm.fmuladd.f64(double %555, double %561, double %544)
  %563 = add nuw nsw i32 %543, 1
  %.not10.not = icmp slt i32 %563, %516
  br i1 %.not10.not, label %.lr.ph63, label %._crit_edge64, !llvm.loop !18

._crit_edge64:                                    ; preds = %.lr.ph63, %._crit_edge59
  %.lcssa = phi double [ 0.000000e+00, %._crit_edge59 ], [ %562, %.lr.ph63 ]
  %564 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %565 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %566 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %567 = load double, ptr @nulltime, align 8
  %568 = fneg double %567
  %569 = call double @llvm.fmuladd.f64(double %565, double %566, double %568)
  store double %569, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %570 = load double, ptr @piref, align 8
  %571 = load double, ptr @three, align 8
  %572 = fdiv double %570, %571
  %573 = fmul double %572, %572
  %574 = load double, ptr @A6, align 8
  %575 = load double, ptr @A5, align 8
  %576 = call double @llvm.fmuladd.f64(double %574, double %573, double %575)
  %577 = load double, ptr @A4, align 8
  %578 = call double @llvm.fmuladd.f64(double %576, double %573, double %577)
  %579 = load double, ptr @A3, align 8
  %580 = call double @llvm.fmuladd.f64(double %578, double %573, double %579)
  %581 = load double, ptr @A2, align 8
  %582 = call double @llvm.fmuladd.f64(double %580, double %573, double %581)
  %583 = load double, ptr @A1, align 8
  %584 = call double @llvm.fmuladd.f64(double %582, double %573, double %583)
  %585 = load double, ptr @one, align 8
  %586 = call double @llvm.fmuladd.f64(double %584, double %573, double %585)
  %587 = fmul double %572, %586
  store double %587, ptr @sa, align 8
  %588 = load double, ptr @B6, align 8
  %589 = load double, ptr @B5, align 8
  %590 = call double @llvm.fmuladd.f64(double %588, double %573, double %589)
  %591 = load double, ptr @B4, align 8
  %592 = call double @llvm.fmuladd.f64(double %573, double %590, double %591)
  %593 = load double, ptr @B3, align 8
  %594 = call double @llvm.fmuladd.f64(double %573, double %592, double %593)
  %595 = load double, ptr @B2, align 8
  %596 = call double @llvm.fmuladd.f64(double %573, double %594, double %595)
  %597 = load double, ptr @B1, align 8
  %598 = call double @llvm.fmuladd.f64(double %573, double %596, double %597)
  %599 = call double @llvm.fmuladd.f64(double %573, double %598, double %585)
  store double %599, ptr @sb, align 8
  %600 = fmul double %587, %599
  %601 = fmul double %600, %599
  store double %601, ptr @sa, align 8
  %602 = fdiv double %569, 3.000000e+01
  store double %602, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %603 = load double, ptr @two, align 8
  %604 = call double @llvm.fmuladd.f64(double %603, double %.lcssa, double %601)
  %605 = fmul double %528, %604
  %606 = fdiv double %605, %603
  store double %606, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %607 = fadd double %606, f0xBFD2AAAAAAAAAAAB
  store double %607, ptr @sc, align 8
  %608 = fdiv double %585, %602
  store double %608, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %609 = fmul double %607, 1.000000e-30
  %610 = fmul double %569, 1.000000e-30
  %611 = fmul double %608, 1.000000e-30
  %612 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %609, double noundef %610, double noundef %611) #4
  %613 = load double, ptr @five, align 8
  %614 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %615 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %616 = fsub double %614, %615
  %617 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %618 = call double @llvm.fmuladd.f64(double %613, double %616, double %617)
  %619 = fdiv double %618, 5.200000e+01
  store double %619, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %620 = load double, ptr @one, align 8
  %621 = fdiv double %620, %619
  store double %621, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %622 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %623 = fadd double %622, %617
  %624 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %625 = fadd double %623, %624
  %626 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %627 = fadd double %625, %626
  %628 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %629 = fadd double %627, %628
  store double %629, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %630 = load double, ptr @four, align 8
  %631 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %632 = call double @llvm.fmuladd.f64(double %630, double %631, double %629)
  %633 = fdiv double %632, 1.520000e+02
  store double %633, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %634 = fdiv double %620, %633
  store double %634, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %629, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %635 = fadd double %629, %631
  %636 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %637 = fadd double %635, %636
  %638 = fdiv double %637, 1.460000e+02
  store double %638, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %639 = fdiv double %620, %638
  store double %639, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %640 = fadd double %617, %624
  %641 = fadd double %640, %628
  %642 = fadd double %641, %636
  %643 = fdiv double %642, 9.100000e+01
  store double %643, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %644 = fdiv double %620, %643
  store double %644, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar11 = call i32 @putchar(i32 10)
  %645 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %516) #4
  %646 = load double, ptr @nulltime, align 8
  %647 = fmul double %646, 1.000000e-30
  %648 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %647) #4
  %649 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %650 = fmul double %649, 1.000000e-30
  %651 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %650) #4
  %652 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %653 = fmul double %652, 1.000000e-30
  %654 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %653) #4
  %655 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %656 = fmul double %655, 1.000000e-30
  %657 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %656) #4
  %658 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %659 = fmul double %658, 1.000000e-30
  %660 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %659) #4
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
