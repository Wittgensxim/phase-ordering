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
  %14 = shl nsw i32 %13, 1
  %15 = load double, ptr @one, align 8
  %16 = sitofp i32 %14 to double
  %17 = fdiv double %15, %16
  %18 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not.not18 = icmp slt i32 1, %14
  br i1 %.not.not18, label %.lr.ph, label %38

.lr.ph:                                           ; preds = %12
  %19 = load double, ptr @D1, align 8
  %20 = load double, ptr @D2, align 8
  %21 = load double, ptr @D3, align 8
  %22 = load double, ptr @E2, align 8
  %23 = load double, ptr @E3, align 8
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
  br i1 %41, label %42, label %5

42:                                               ; preds = %38
  %.lcssa17 = phi double [ %17, %38 ]
  %.lcssa10.lcssa = phi double [ %.lcssa10, %38 ]
  br label %43

..loopexit_crit_edge:                             ; preds = %5
  %split21 = phi double [ %6, %5 ]
  %split22 = phi double [ %7, %5 ]
  %split23 = phi i32 [ %8, %5 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %0
  %.lcssa15 = phi double [ %split21, %..loopexit_crit_edge ], [ undef, %0 ]
  %.lcssa13 = phi double [ %split22, %..loopexit_crit_edge ], [ undef, %0 ]
  %.lcssa11 = phi i32 [ %split23, %..loopexit_crit_edge ], [ 15625, %0 ]
  br label %43

43:                                               ; preds = %.loopexit, %42
  %44 = phi double [ %.lcssa10.lcssa, %42 ], [ %.lcssa15, %.loopexit ]
  %45 = phi double [ %.lcssa17, %42 ], [ %.lcssa13, %.loopexit ]
  %46 = phi i32 [ 512000000, %42 ], [ %.lcssa11, %.loopexit ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %47 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %48

48:                                               ; preds = %48, %43
  %49 = phi i32 [ %50, %48 ], [ 1, %43 ]
  %.not.not3 = icmp slt i32 %49, %46
  %50 = add nuw nsw i32 %49, 1
  br i1 %.not.not3, label %48, label %51, !llvm.loop !10

51:                                               ; preds = %48
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
  %78 = call double @llvm.fmuladd.f64(double %77, double %44, double %76)
  %79 = fmul double %45, %78
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
  %94 = load double, ptr @five, align 8
  %95 = fneg double %94
  %96 = load double, ptr @one, align 8
  %97 = fneg double %96
  store double %97, ptr @sa, align 8
  %98 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not24 = icmp sgt i32 1, %87
  br i1 %.not24, label %106, label %.lr.ph26

.lr.ph26:                                         ; preds = %58
  %sa.promoted = load double, ptr @sa, align 8
  br label %99

99:                                               ; preds = %.lr.ph26, %99
  %100 = phi double [ %sa.promoted, %.lr.ph26 ], [ %104, %99 ]
  %101 = phi i32 [ 1, %.lr.ph26 ], [ %105, %99 ]
  %102 = phi double [ %95, %.lr.ph26 ], [ %103, %99 ]
  %103 = fneg double %102
  %104 = fsub double %100, %102
  %105 = add nuw nsw i32 %101, 1
  %.not = icmp sgt i32 %105, %87
  br i1 %.not, label %._crit_edge27, label %99, !llvm.loop !11

._crit_edge27:                                    ; preds = %99
  %.lcssa66 = phi double [ %104, %99 ]
  %split28 = phi double [ %103, %99 ]
  store double %.lcssa66, ptr @sa, align 8
  br label %106

106:                                              ; preds = %._crit_edge27, %58
  %.lcssa9 = phi double [ %split28, %._crit_edge27 ], [ %95, %58 ]
  %107 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %108 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %109 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %110 = fmul double %108, %109
  %111 = fcmp olt double %110, 0.000000e+00
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  br label %113

113:                                              ; preds = %112, %106
  %storemerge = phi double [ 0.000000e+00, %112 ], [ %110, %106 ]
  store double %storemerge, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %114 = sitofp i32 %87 to double
  store double %114, ptr @sc, align 8
  %115 = load double, ptr @sa, align 8
  %116 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not429 = icmp sgt i32 1, %87
  br i1 %.not429, label %135, label %.lr.ph31

.lr.ph31:                                         ; preds = %113
  %117 = load double, ptr @two, align 8
  %sa.promoted67 = load double, ptr @sa, align 8
  br label %118

118:                                              ; preds = %.lr.ph31, %118
  %119 = phi double [ %sa.promoted67, %.lr.ph31 ], [ %127, %118 ]
  %120 = phi i32 [ 1, %.lr.ph31 ], [ %134, %118 ]
  %121 = phi double [ 0.000000e+00, %.lr.ph31 ], [ %130, %118 ]
  %122 = phi double [ 0.000000e+00, %.lr.ph31 ], [ %131, %118 ]
  %123 = phi double [ %.lcssa9, %.lr.ph31 ], [ %126, %118 ]
  %124 = phi double [ %115, %.lr.ph31 ], [ %128, %118 ]
  %125 = phi double [ 0.000000e+00, %.lr.ph31 ], [ %133, %118 ]
  %126 = fneg double %123
  %127 = fsub double %119, %123
  %128 = fadd double %124, %117
  %129 = fsub double %126, %128
  %130 = fadd double %121, %129
  %131 = call double @llvm.fmuladd.f64(double %123, double %128, double %122)
  %132 = fdiv double %123, %128
  %133 = fsub double %125, %132
  %134 = add nuw nsw i32 %120, 1
  %.not4 = icmp sgt i32 %134, %87
  br i1 %.not4, label %._crit_edge32, label %118, !llvm.loop !12

._crit_edge32:                                    ; preds = %118
  %.lcssa68 = phi double [ %127, %118 ]
  %split33 = phi double [ %133, %118 ]
  %split34 = phi double [ %131, %118 ]
  %split35 = phi double [ %130, %118 ]
  store double %.lcssa68, ptr @sa, align 8
  br label %135

135:                                              ; preds = %._crit_edge32, %113
  %.lcssa8 = phi double [ %split33, %._crit_edge32 ], [ 0.000000e+00, %113 ]
  %.lcssa7 = phi double [ %split34, %._crit_edge32 ], [ 0.000000e+00, %113 ]
  %.lcssa6 = phi double [ %split35, %._crit_edge32 ], [ 0.000000e+00, %113 ]
  %136 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %137 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %138 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %139 = fmul double %137, %138
  store double %139, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %140 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %141 = fsub double %139, %140
  %142 = fdiv double %141, 7.000000e+00
  store double %142, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %143 = load double, ptr @sa, align 8
  %144 = fmul double %143, %.lcssa6
  %145 = load double, ptr @sc, align 8
  %146 = fdiv double %144, %145
  %147 = fptosi double %146 to i32
  %148 = load double, ptr @four, align 8
  %149 = fmul double %148, %.lcssa8
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
  %161 = fdiv double %160, %142
  store double %161, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %162 = fmul double %159, 1.000000e-30
  %163 = fmul double %141, 1.000000e-30
  %164 = fmul double %161, 1.000000e-30
  %165 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %162, double noundef %163, double noundef %164) #4
  %166 = load double, ptr @piref, align 8
  %167 = load double, ptr @three, align 8
  %168 = sitofp i32 %147 to double
  %169 = fmul double %167, %168
  %170 = fdiv double %166, %169
  %171 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not5.not36 = icmp slt i32 1, %147
  br i1 %.not5.not36, label %.lr.ph38, label %196

.lr.ph38:                                         ; preds = %135
  %172 = load double, ptr @one, align 8
  %173 = load double, ptr @A6, align 8
  %174 = load double, ptr @A5, align 8
  %175 = fneg double %174
  %176 = load double, ptr @A4, align 8
  %177 = load double, ptr @A3, align 8
  %178 = fneg double %177
  %179 = load double, ptr @A2, align 8
  %180 = load double, ptr @A1, align 8
  br label %181

181:                                              ; preds = %.lr.ph38, %181
  %182 = phi i32 [ 1, %.lr.ph38 ], [ %195, %181 ]
  %183 = phi double [ 0.000000e+00, %.lr.ph38 ], [ %194, %181 ]
  %184 = phi double [ 0.000000e+00, %.lr.ph38 ], [ %185, %181 ]
  %185 = fadd double %184, %172
  %186 = fmul double %185, %170
  %187 = fmul double %186, %186
  %188 = call double @llvm.fmuladd.f64(double %173, double %187, double %175)
  %189 = call double @llvm.fmuladd.f64(double %188, double %187, double %176)
  %190 = call double @llvm.fmuladd.f64(double %189, double %187, double %178)
  %191 = call double @llvm.fmuladd.f64(double %190, double %187, double %179)
  %192 = call double @llvm.fmuladd.f64(double %191, double %187, double %180)
  %193 = call double @llvm.fmuladd.f64(double %192, double %187, double %172)
  %194 = call double @llvm.fmuladd.f64(double %186, double %193, double %183)
  %195 = add nuw nsw i32 %182, 1
  %.not5.not = icmp slt i32 %195, %147
  br i1 %.not5.not, label %181, label %._crit_edge39, !llvm.loop !13

._crit_edge39:                                    ; preds = %181
  %split40 = phi double [ %194, %181 ]
  br label %196

196:                                              ; preds = %._crit_edge39, %135
  %.lcssa5 = phi double [ %split40, %._crit_edge39 ], [ 0.000000e+00, %135 ]
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
  %.not6.not41 = icmp slt i32 1, %147
  br i1 %.not6.not41, label %.lr.ph43, label %264

.lr.ph43:                                         ; preds = %196
  %243 = load double, ptr @B6, align 8
  %244 = load double, ptr @B5, align 8
  %245 = load double, ptr @B4, align 8
  %246 = load double, ptr @B3, align 8
  %247 = load double, ptr @B2, align 8
  %248 = load double, ptr @B1, align 8
  %249 = load double, ptr @one, align 8
  br label %250

250:                                              ; preds = %.lr.ph43, %250
  %251 = phi i32 [ 1, %.lr.ph43 ], [ %263, %250 ]
  %252 = phi double [ 0.000000e+00, %.lr.ph43 ], [ %262, %250 ]
  %253 = uitofp nneg i32 %251 to double
  %254 = fmul double %241, %253
  %255 = fmul double %254, %254
  %256 = call double @llvm.fmuladd.f64(double %243, double %255, double %244)
  %257 = call double @llvm.fmuladd.f64(double %255, double %256, double %245)
  %258 = call double @llvm.fmuladd.f64(double %255, double %257, double %246)
  %259 = call double @llvm.fmuladd.f64(double %255, double %258, double %247)
  %260 = call double @llvm.fmuladd.f64(double %255, double %259, double %248)
  %261 = call double @llvm.fmuladd.f64(double %255, double %260, double %252)
  %262 = fadd double %261, %249
  %263 = add nuw nsw i32 %251, 1
  %.not6.not = icmp slt i32 %263, %147
  br i1 %.not6.not, label %250, label %._crit_edge44, !llvm.loop !14

._crit_edge44:                                    ; preds = %250
  %split45 = phi double [ %262, %250 ]
  br label %264

264:                                              ; preds = %._crit_edge44, %196
  %.lcssa4 = phi double [ %split45, %._crit_edge44 ], [ 0.000000e+00, %196 ]
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
  %.not7.not46 = icmp slt i32 1, %147
  br i1 %.not7.not46, label %.lr.ph48, label %354

.lr.ph48:                                         ; preds = %264
  %319 = load double, ptr @A6, align 8
  %320 = load double, ptr @A5, align 8
  %321 = load double, ptr @A4, align 8
  %322 = load double, ptr @A3, align 8
  %323 = load double, ptr @A2, align 8
  %324 = load double, ptr @A1, align 8
  %325 = load double, ptr @one, align 8
  %326 = load double, ptr @B6, align 8
  %327 = load double, ptr @B5, align 8
  %328 = load double, ptr @B4, align 8
  %329 = load double, ptr @B3, align 8
  %330 = load double, ptr @B2, align 8
  %331 = load double, ptr @B1, align 8
  br label %332

332:                                              ; preds = %.lr.ph48, %332
  %333 = phi i32 [ 1, %.lr.ph48 ], [ %353, %332 ]
  %334 = phi double [ 0.000000e+00, %.lr.ph48 ], [ %352, %332 ]
  %335 = uitofp nneg i32 %333 to double
  %336 = fmul double %317, %335
  %337 = fmul double %336, %336
  %338 = call double @llvm.fmuladd.f64(double %319, double %337, double %320)
  %339 = call double @llvm.fmuladd.f64(double %338, double %337, double %321)
  %340 = call double @llvm.fmuladd.f64(double %339, double %337, double %322)
  %341 = call double @llvm.fmuladd.f64(double %340, double %337, double %323)
  %342 = call double @llvm.fmuladd.f64(double %341, double %337, double %324)
  %343 = call double @llvm.fmuladd.f64(double %342, double %337, double %325)
  %344 = fmul double %336, %343
  %345 = call double @llvm.fmuladd.f64(double %326, double %337, double %327)
  %346 = call double @llvm.fmuladd.f64(double %337, double %345, double %328)
  %347 = call double @llvm.fmuladd.f64(double %337, double %346, double %329)
  %348 = call double @llvm.fmuladd.f64(double %337, double %347, double %330)
  %349 = call double @llvm.fmuladd.f64(double %337, double %348, double %331)
  %350 = call double @llvm.fmuladd.f64(double %337, double %349, double %325)
  %351 = fdiv double %344, %350
  %352 = fadd double %334, %351
  %353 = add nuw nsw i32 %333, 1
  %.not7.not = icmp slt i32 %353, %147
  br i1 %.not7.not, label %332, label %._crit_edge49, !llvm.loop !15

._crit_edge49:                                    ; preds = %332
  %split50 = phi double [ %352, %332 ]
  br label %354

354:                                              ; preds = %._crit_edge49, %264
  %.lcssa3 = phi double [ %split50, %._crit_edge49 ], [ 0.000000e+00, %264 ]
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
  %.not8.not51 = icmp slt i32 1, %147
  br i1 %.not8.not51, label %.lr.ph53, label %442

.lr.ph53:                                         ; preds = %354
  %408 = load double, ptr @A6, align 8
  %409 = load double, ptr @A5, align 8
  %410 = load double, ptr @A4, align 8
  %411 = load double, ptr @A3, align 8
  %412 = load double, ptr @A2, align 8
  %413 = load double, ptr @A1, align 8
  %414 = load double, ptr @one, align 8
  %415 = load double, ptr @B6, align 8
  %416 = load double, ptr @B5, align 8
  %417 = load double, ptr @B4, align 8
  %418 = load double, ptr @B3, align 8
  %419 = load double, ptr @B2, align 8
  %420 = load double, ptr @B1, align 8
  br label %421

421:                                              ; preds = %.lr.ph53, %421
  %422 = phi i32 [ 1, %.lr.ph53 ], [ %441, %421 ]
  %423 = phi double [ 0.000000e+00, %.lr.ph53 ], [ %440, %421 ]
  %424 = uitofp nneg i32 %422 to double
  %425 = fmul double %406, %424
  %426 = fmul double %425, %425
  %427 = call double @llvm.fmuladd.f64(double %408, double %426, double %409)
  %428 = call double @llvm.fmuladd.f64(double %427, double %426, double %410)
  %429 = call double @llvm.fmuladd.f64(double %428, double %426, double %411)
  %430 = call double @llvm.fmuladd.f64(double %429, double %426, double %412)
  %431 = call double @llvm.fmuladd.f64(double %430, double %426, double %413)
  %432 = call double @llvm.fmuladd.f64(double %431, double %426, double %414)
  %433 = fmul double %425, %432
  %434 = call double @llvm.fmuladd.f64(double %415, double %426, double %416)
  %435 = call double @llvm.fmuladd.f64(double %426, double %434, double %417)
  %436 = call double @llvm.fmuladd.f64(double %426, double %435, double %418)
  %437 = call double @llvm.fmuladd.f64(double %426, double %436, double %419)
  %438 = call double @llvm.fmuladd.f64(double %426, double %437, double %420)
  %439 = call double @llvm.fmuladd.f64(double %426, double %438, double %414)
  %440 = call double @llvm.fmuladd.f64(double %433, double %439, double %423)
  %441 = add nuw nsw i32 %422, 1
  %.not8.not = icmp slt i32 %441, %147
  br i1 %.not8.not, label %421, label %._crit_edge54, !llvm.loop !16

._crit_edge54:                                    ; preds = %421
  %split55 = phi double [ %440, %421 ]
  br label %442

442:                                              ; preds = %._crit_edge54, %354
  %.lcssa2 = phi double [ %split55, %._crit_edge54 ], [ 0.000000e+00, %354 ]
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
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %492 = fdiv double f0x40599541F7F192A4, %168
  %493 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not9.not56 = icmp slt i32 1, %147
  br i1 %.not9.not56, label %.lr.ph58, label %510

.lr.ph58:                                         ; preds = %442
  br label %494

494:                                              ; preds = %.lr.ph58, %494
  %495 = phi i32 [ 1, %.lr.ph58 ], [ %509, %494 ]
  %496 = phi double [ 0.000000e+00, %.lr.ph58 ], [ %508, %494 ]
  %497 = uitofp nneg i32 %495 to double
  %498 = fmul double %492, %497
  %499 = fmul double %498, %498
  %500 = fadd double %498, %491
  %501 = fdiv double %491, %500
  %502 = fsub double %496, %501
  %503 = fadd double %499, %491
  %504 = fdiv double %498, %503
  %505 = fsub double %502, %504
  %506 = call double @llvm.fmuladd.f64(double %498, double %499, double %491)
  %507 = fdiv double %499, %506
  %508 = fsub double %505, %507
  %509 = add nuw nsw i32 %495, 1
  %.not9.not = icmp slt i32 %509, %147
  br i1 %.not9.not, label %494, label %._crit_edge59, !llvm.loop !17

._crit_edge59:                                    ; preds = %494
  %split60 = phi double [ %508, %494 ]
  br label %510

510:                                              ; preds = %._crit_edge59, %442
  %.lcssa1 = phi double [ %split60, %._crit_edge59 ], [ 0.000000e+00, %442 ]
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
  %520 = fneg double %491
  %521 = fadd double %518, %491
  %522 = fdiv double %491, %521
  %523 = fsub double %520, %522
  %524 = fadd double %519, %491
  %525 = fdiv double %518, %524
  %526 = fsub double %523, %525
  %527 = call double @llvm.fmuladd.f64(double %518, double %519, double %491)
  %528 = fdiv double %519, %527
  %529 = fsub double %526, %528
  store double %529, ptr @sa, align 8
  %530 = fmul nnan double %492, 1.800000e+01
  %531 = load double, ptr @two, align 8
  %532 = call double @llvm.fmuladd.f64(double %531, double %.lcssa1, double %529)
  %533 = fmul double %530, %532
  store double %533, ptr @sa, align 8
  %534 = fptosi double %533 to i32
  %535 = mul nsw i32 %534, -2000
  %536 = sitofp i32 %535 to double
  %537 = load double, ptr @scale, align 8
  %538 = fdiv double %536, %537
  %539 = fptosi double %538 to i32
  %540 = fadd double %533, 5.002000e+02
  store double %540, ptr @sc, align 8
  %541 = load double, ptr @one, align 8
  %542 = fdiv double %541, %517
  store double %542, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %543 = fmul double %540, 1.000000e-30
  %544 = fmul double %516, 1.000000e-30
  %545 = fmul double %542, 1.000000e-30
  %546 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %543, double noundef %544, double noundef %545) #4
  %547 = load double, ptr @piref, align 8
  %548 = load double, ptr @three, align 8
  %549 = sitofp i32 %539 to double
  %550 = fmul double %548, %549
  %551 = fdiv double %547, %550
  %552 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not10.not61 = icmp slt i32 1, %539
  br i1 %.not10.not61, label %.lr.ph63, label %588

.lr.ph63:                                         ; preds = %510
  %553 = load double, ptr @B6, align 8
  %554 = load double, ptr @B5, align 8
  %555 = load double, ptr @B4, align 8
  %556 = load double, ptr @B3, align 8
  %557 = load double, ptr @B2, align 8
  %558 = load double, ptr @B1, align 8
  %559 = load double, ptr @one, align 8
  %560 = load double, ptr @A6, align 8
  %561 = load double, ptr @A5, align 8
  %562 = load double, ptr @A4, align 8
  %563 = load double, ptr @A3, align 8
  %564 = load double, ptr @A2, align 8
  %565 = load double, ptr @A1, align 8
  br label %566

566:                                              ; preds = %.lr.ph63, %566
  %567 = phi i32 [ 1, %.lr.ph63 ], [ %587, %566 ]
  %568 = phi double [ 0.000000e+00, %.lr.ph63 ], [ %586, %566 ]
  %569 = uitofp nneg i32 %567 to double
  %570 = fmul double %551, %569
  %571 = fmul double %570, %570
  %572 = call double @llvm.fmuladd.f64(double %553, double %571, double %554)
  %573 = call double @llvm.fmuladd.f64(double %571, double %572, double %555)
  %574 = call double @llvm.fmuladd.f64(double %571, double %573, double %556)
  %575 = call double @llvm.fmuladd.f64(double %571, double %574, double %557)
  %576 = call double @llvm.fmuladd.f64(double %571, double %575, double %558)
  %577 = call double @llvm.fmuladd.f64(double %571, double %576, double %559)
  %578 = fmul double %577, %577
  %579 = fmul double %578, %570
  %580 = call double @llvm.fmuladd.f64(double %560, double %571, double %561)
  %581 = call double @llvm.fmuladd.f64(double %580, double %571, double %562)
  %582 = call double @llvm.fmuladd.f64(double %581, double %571, double %563)
  %583 = call double @llvm.fmuladd.f64(double %582, double %571, double %564)
  %584 = call double @llvm.fmuladd.f64(double %583, double %571, double %565)
  %585 = call double @llvm.fmuladd.f64(double %584, double %571, double %559)
  %586 = call double @llvm.fmuladd.f64(double %579, double %585, double %568)
  %587 = add nuw nsw i32 %567, 1
  %.not10.not = icmp slt i32 %587, %539
  br i1 %.not10.not, label %566, label %._crit_edge64, !llvm.loop !18

._crit_edge64:                                    ; preds = %566
  %split65 = phi double [ %586, %566 ]
  br label %588

588:                                              ; preds = %._crit_edge64, %510
  %.lcssa = phi double [ %split65, %._crit_edge64 ], [ 0.000000e+00, %510 ]
  %589 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %590 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %591 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %592 = load double, ptr @nulltime, align 8
  %593 = fneg double %592
  %594 = call double @llvm.fmuladd.f64(double %590, double %591, double %593)
  store double %594, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %595 = load double, ptr @piref, align 8
  %596 = load double, ptr @three, align 8
  %597 = fdiv double %595, %596
  %598 = fmul double %597, %597
  %599 = load double, ptr @A6, align 8
  %600 = load double, ptr @A5, align 8
  %601 = call double @llvm.fmuladd.f64(double %599, double %598, double %600)
  %602 = load double, ptr @A4, align 8
  %603 = call double @llvm.fmuladd.f64(double %601, double %598, double %602)
  %604 = load double, ptr @A3, align 8
  %605 = call double @llvm.fmuladd.f64(double %603, double %598, double %604)
  %606 = load double, ptr @A2, align 8
  %607 = call double @llvm.fmuladd.f64(double %605, double %598, double %606)
  %608 = load double, ptr @A1, align 8
  %609 = call double @llvm.fmuladd.f64(double %607, double %598, double %608)
  %610 = load double, ptr @one, align 8
  %611 = call double @llvm.fmuladd.f64(double %609, double %598, double %610)
  %612 = fmul double %597, %611
  store double %612, ptr @sa, align 8
  %613 = load double, ptr @B6, align 8
  %614 = load double, ptr @B5, align 8
  %615 = call double @llvm.fmuladd.f64(double %613, double %598, double %614)
  %616 = load double, ptr @B4, align 8
  %617 = call double @llvm.fmuladd.f64(double %598, double %615, double %616)
  %618 = load double, ptr @B3, align 8
  %619 = call double @llvm.fmuladd.f64(double %598, double %617, double %618)
  %620 = load double, ptr @B2, align 8
  %621 = call double @llvm.fmuladd.f64(double %598, double %619, double %620)
  %622 = load double, ptr @B1, align 8
  %623 = call double @llvm.fmuladd.f64(double %598, double %621, double %622)
  %624 = call double @llvm.fmuladd.f64(double %598, double %623, double %610)
  store double %624, ptr @sb, align 8
  %625 = fmul double %612, %624
  %626 = fmul double %625, %624
  store double %626, ptr @sa, align 8
  %627 = fdiv double %594, 3.000000e+01
  store double %627, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %628 = load double, ptr @two, align 8
  %629 = call double @llvm.fmuladd.f64(double %628, double %.lcssa, double %626)
  %630 = fmul double %551, %629
  %631 = fdiv double %630, %628
  store double %631, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %632 = fadd double %631, f0xBFD2AAAAAAAAAAAB
  store double %632, ptr @sc, align 8
  %633 = fdiv double %610, %627
  store double %633, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %634 = fmul double %632, 1.000000e-30
  %635 = fmul double %594, 1.000000e-30
  %636 = fmul double %633, 1.000000e-30
  %637 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %634, double noundef %635, double noundef %636) #4
  %638 = load double, ptr @five, align 8
  %639 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %640 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %641 = fsub double %639, %640
  %642 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %643 = call double @llvm.fmuladd.f64(double %638, double %641, double %642)
  %644 = fdiv double %643, 5.200000e+01
  store double %644, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %645 = load double, ptr @one, align 8
  %646 = fdiv double %645, %644
  store double %646, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %647 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %648 = fadd double %647, %642
  %649 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %650 = fadd double %648, %649
  %651 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %652 = fadd double %650, %651
  %653 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %654 = fadd double %652, %653
  store double %654, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %655 = load double, ptr @four, align 8
  %656 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %657 = call double @llvm.fmuladd.f64(double %655, double %656, double %654)
  %658 = fdiv double %657, 1.520000e+02
  store double %658, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %659 = fdiv double %645, %658
  store double %659, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %654, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %660 = fadd double %654, %656
  %661 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %662 = fadd double %660, %661
  %663 = fdiv double %662, 1.460000e+02
  store double %663, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %664 = fdiv double %645, %663
  store double %664, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %665 = fadd double %642, %649
  %666 = fadd double %665, %653
  %667 = fadd double %666, %661
  %668 = fdiv double %667, 9.100000e+01
  store double %668, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %669 = fdiv double %645, %668
  store double %669, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar11 = call i32 @putchar(i32 10)
  %670 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %539) #4
  %671 = load double, ptr @nulltime, align 8
  %672 = fmul double %671, 1.000000e-30
  %673 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %672) #4
  %674 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %675 = fmul double %674, 1.000000e-30
  %676 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %675) #4
  %677 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %678 = fmul double %677, 1.000000e-30
  %679 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %678) #4
  %680 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %681 = fmul double %680, 1.000000e-30
  %682 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %681) #4
  %683 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %684 = fmul double %683, 1.000000e-30
  %685 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %684) #4
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
