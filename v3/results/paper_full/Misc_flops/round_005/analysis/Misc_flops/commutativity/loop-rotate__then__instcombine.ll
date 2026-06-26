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
  %4 = fcmp ogt double %3, 0.000000e+00
  br i1 %4, label %.lr.ph20, label %.loopexit

.lr.ph20:                                         ; preds = %0
  br label %8

5:                                                ; preds = %34
  %6 = load double, ptr @TLimit, align 8
  %7 = fcmp olt double %36, %6
  br i1 %7, label %8, label %..loopexit_crit_edge, !llvm.loop !7

8:                                                ; preds = %.lr.ph20, %5
  %9 = phi i32 [ 15625, %.lr.ph20 ], [ %10, %5 ]
  %10 = shl nsw i32 %9, 1
  %11 = load double, ptr @one, align 8
  %12 = sitofp i32 %10 to double
  %13 = fdiv double %11, %12
  %14 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %15 = load double, ptr @D1, align 8
  %16 = load double, ptr @D2, align 8
  %17 = load double, ptr @D3, align 8
  %18 = load double, ptr @E2, align 8
  %19 = load double, ptr @E3, align 8
  %.not.not18 = icmp sgt i32 %9, 0
  br i1 %.not.not18, label %.lr.ph, label %34

.lr.ph:                                           ; preds = %8
  br label %20

20:                                               ; preds = %.lr.ph, %20
  %21 = phi i32 [ 1, %.lr.ph ], [ %33, %20 ]
  %22 = phi double [ 0.000000e+00, %.lr.ph ], [ %32, %20 ]
  %23 = phi double [ 0.000000e+00, %.lr.ph ], [ %24, %20 ]
  %24 = fadd double %23, %11
  %25 = fmul double %24, %13
  %26 = call double @llvm.fmuladd.f64(double %25, double %17, double %16)
  %27 = call double @llvm.fmuladd.f64(double %25, double %26, double %15)
  %28 = call double @llvm.fmuladd.f64(double %25, double %19, double %18)
  %29 = call double @llvm.fmuladd.f64(double %25, double %28, double %15)
  %30 = call double @llvm.fmuladd.f64(double %25, double %29, double %11)
  %31 = fdiv double %27, %30
  %32 = fadd double %22, %31
  %33 = add nuw nsw i32 %21, 1
  %.not.not = icmp slt i32 %33, %10
  br i1 %.not.not, label %20, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %20
  br label %34

34:                                               ; preds = %._crit_edge, %8
  %.lcssa10 = phi double [ %32, %._crit_edge ], [ 0.000000e+00, %8 ]
  %35 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %36 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %36, ptr @sa, align 8
  %37 = icmp eq i32 %9, 256000000
  br i1 %37, label %38, label %5

38:                                               ; preds = %34
  br label %39

..loopexit_crit_edge:                             ; preds = %5
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %0
  %.lcssa15 = phi double [ %.lcssa10, %..loopexit_crit_edge ], [ undef, %0 ]
  %.lcssa13 = phi double [ %13, %..loopexit_crit_edge ], [ undef, %0 ]
  %.lcssa11 = phi i32 [ %10, %..loopexit_crit_edge ], [ 15625, %0 ]
  br label %39

39:                                               ; preds = %.loopexit, %38
  %40 = phi double [ %.lcssa10, %38 ], [ %.lcssa15, %.loopexit ]
  %41 = phi double [ %13, %38 ], [ %.lcssa13, %.loopexit ]
  %42 = phi i32 [ 512000000, %38 ], [ %.lcssa11, %.loopexit ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %43 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %44

44:                                               ; preds = %44, %39
  %45 = phi i32 [ %46, %44 ], [ 1, %39 ]
  %.not.not3 = icmp slt i32 %45, %42
  %46 = add nuw nsw i32 %45, 1
  br i1 %.not.not3, label %44, label %47, !llvm.loop !10

47:                                               ; preds = %44
  %48 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %49 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %50 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %51 = fmul double %49, %50
  %52 = fcmp olt double %51, 0.000000e+00
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %47
  %55 = phi double [ 0.000000e+00, %53 ], [ %51, %47 ]
  store double %55, ptr @nulltime, align 8
  %56 = load double, ptr @sa, align 8
  %57 = fneg double %55
  %58 = call double @llvm.fmuladd.f64(double %49, double %56, double %57)
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
  %74 = call double @llvm.fmuladd.f64(double %73, double %40, double %72)
  %75 = fmul double %41, %74
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
  %.not24 = icmp slt i32 %83, 1
  br i1 %.not24, label %102, label %.lr.ph26

.lr.ph26:                                         ; preds = %54
  %sa.promoted = load double, ptr @sa, align 8
  br label %95

95:                                               ; preds = %.lr.ph26, %95
  %96 = phi i32 [ 1, %.lr.ph26 ], [ %101, %95 ]
  %97 = phi double [ %91, %.lr.ph26 ], [ %99, %95 ]
  %98 = phi double [ %sa.promoted, %.lr.ph26 ], [ %100, %95 ]
  %99 = fneg double %97
  %100 = fsub double %98, %97
  store double %100, ptr @sa, align 8
  %101 = add nuw nsw i32 %96, 1
  %.not.not66 = icmp slt i32 %96, %83
  br i1 %.not.not66, label %95, label %._crit_edge27, !llvm.loop !11

._crit_edge27:                                    ; preds = %95
  br label %102

102:                                              ; preds = %._crit_edge27, %54
  %.lcssa9 = phi double [ %99, %._crit_edge27 ], [ %91, %54 ]
  %103 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %104 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %105 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %106 = fmul double %104, %105
  %107 = fcmp olt double %106, 0.000000e+00
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  br label %109

109:                                              ; preds = %108, %102
  %storemerge = phi double [ 0.000000e+00, %108 ], [ %106, %102 ]
  store double %storemerge, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %110 = sitofp i32 %83 to double
  store double %110, ptr @sc, align 8
  %111 = load double, ptr @sa, align 8
  %112 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %113 = load double, ptr @two, align 8
  %.not429 = icmp slt i32 %83, 1
  br i1 %.not429, label %131, label %.lr.ph31

.lr.ph31:                                         ; preds = %109
  %sa.promoted18 = load double, ptr @sa, align 8
  br label %114

114:                                              ; preds = %.lr.ph31, %114
  %115 = phi i32 [ 1, %.lr.ph31 ], [ %130, %114 ]
  %116 = phi double [ 0.000000e+00, %.lr.ph31 ], [ %126, %114 ]
  %117 = phi double [ 0.000000e+00, %.lr.ph31 ], [ %127, %114 ]
  %118 = phi double [ %.lcssa9, %.lr.ph31 ], [ %122, %114 ]
  %119 = phi double [ %111, %.lr.ph31 ], [ %124, %114 ]
  %120 = phi double [ 0.000000e+00, %.lr.ph31 ], [ %129, %114 ]
  %121 = phi double [ %sa.promoted18, %.lr.ph31 ], [ %123, %114 ]
  %122 = fneg double %118
  %123 = fsub double %121, %118
  store double %123, ptr @sa, align 8
  %124 = fadd double %119, %113
  %125 = fsub double %122, %124
  %126 = fadd double %116, %125
  %127 = call double @llvm.fmuladd.f64(double %118, double %124, double %117)
  %128 = fdiv double %118, %124
  %129 = fsub double %120, %128
  %130 = add nuw nsw i32 %115, 1
  %.not4.not = icmp slt i32 %115, %83
  br i1 %.not4.not, label %114, label %._crit_edge32, !llvm.loop !12

._crit_edge32:                                    ; preds = %114
  br label %131

131:                                              ; preds = %._crit_edge32, %109
  %.lcssa8 = phi double [ %129, %._crit_edge32 ], [ 0.000000e+00, %109 ]
  %.lcssa7 = phi double [ %127, %._crit_edge32 ], [ 0.000000e+00, %109 ]
  %.lcssa6 = phi double [ %126, %._crit_edge32 ], [ 0.000000e+00, %109 ]
  %132 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %133 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %134 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %135 = fmul double %133, %134
  store double %135, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %136 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %137 = fsub double %135, %136
  %138 = fdiv double %137, 7.000000e+00
  store double %138, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %139 = load double, ptr @sa, align 8
  %140 = fmul double %139, %.lcssa6
  %141 = load double, ptr @sc, align 8
  %142 = fdiv double %140, %141
  %143 = fptosi double %142 to i32
  %144 = load double, ptr @four, align 8
  %145 = fmul double %144, %.lcssa8
  %146 = load double, ptr @five, align 8
  %147 = fdiv double %145, %146
  store double %147, ptr @sa, align 8
  %148 = fdiv double %146, %.lcssa7
  %149 = fadd double %147, %148
  store double %149, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %150 = fmul double %.lcssa7, %.lcssa7
  %151 = fmul double %150, %.lcssa7
  %152 = fdiv double 3.125000e+01, %151
  %153 = fsub double %149, %152
  store double %153, ptr @piprg, align 8
  %154 = load double, ptr @piref, align 8
  %155 = fsub double %153, %154
  store double %155, ptr @pierr, align 8
  %156 = load double, ptr @one, align 8
  %157 = fdiv double %156, %138
  store double %157, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %158 = fmul double %155, 1.000000e-30
  %159 = fmul double %137, 1.000000e-30
  %160 = fmul double %157, 1.000000e-30
  %161 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %158, double noundef %159, double noundef %160) #4
  %162 = load double, ptr @piref, align 8
  %163 = load double, ptr @three, align 8
  %164 = sitofp i32 %143 to double
  %165 = fmul double %163, %164
  %166 = fdiv double %162, %165
  %167 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %168 = load double, ptr @one, align 8
  %169 = load double, ptr @A6, align 8
  %170 = load double, ptr @A5, align 8
  %171 = fneg double %170
  %172 = load double, ptr @A4, align 8
  %173 = load double, ptr @A3, align 8
  %174 = fneg double %173
  %175 = load double, ptr @A2, align 8
  %176 = load double, ptr @A1, align 8
  %.not5.not36 = icmp sgt i32 %143, 1
  br i1 %.not5.not36, label %.lr.ph38, label %192

.lr.ph38:                                         ; preds = %131
  br label %177

177:                                              ; preds = %.lr.ph38, %177
  %178 = phi i32 [ 1, %.lr.ph38 ], [ %191, %177 ]
  %179 = phi double [ 0.000000e+00, %.lr.ph38 ], [ %190, %177 ]
  %180 = phi double [ 0.000000e+00, %.lr.ph38 ], [ %181, %177 ]
  %181 = fadd double %180, %168
  %182 = fmul double %181, %166
  %183 = fmul double %182, %182
  %184 = call double @llvm.fmuladd.f64(double %169, double %183, double %171)
  %185 = call double @llvm.fmuladd.f64(double %184, double %183, double %172)
  %186 = call double @llvm.fmuladd.f64(double %185, double %183, double %174)
  %187 = call double @llvm.fmuladd.f64(double %186, double %183, double %175)
  %188 = call double @llvm.fmuladd.f64(double %187, double %183, double %176)
  %189 = call double @llvm.fmuladd.f64(double %188, double %183, double %168)
  %190 = call double @llvm.fmuladd.f64(double %182, double %189, double %179)
  %191 = add nuw nsw i32 %178, 1
  %.not5.not = icmp slt i32 %191, %143
  br i1 %.not5.not, label %177, label %._crit_edge39, !llvm.loop !13

._crit_edge39:                                    ; preds = %177
  br label %192

192:                                              ; preds = %._crit_edge39, %131
  %.lcssa5 = phi double [ %190, %._crit_edge39 ], [ 0.000000e+00, %131 ]
  %193 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %194 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %195 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %196 = load double, ptr @nulltime, align 8
  %197 = fneg double %196
  %198 = call double @llvm.fmuladd.f64(double %194, double %195, double %197)
  store double %198, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %199 = load double, ptr @piref, align 8
  %200 = load double, ptr @three, align 8
  %201 = fdiv double %199, %200
  %202 = fmul double %201, %201
  %203 = load double, ptr @A6, align 8
  %204 = load double, ptr @A5, align 8
  %205 = fneg double %204
  %206 = call double @llvm.fmuladd.f64(double %203, double %202, double %205)
  %207 = load double, ptr @A4, align 8
  %208 = call double @llvm.fmuladd.f64(double %206, double %202, double %207)
  %209 = load double, ptr @A3, align 8
  %210 = fneg double %209
  %211 = call double @llvm.fmuladd.f64(double %208, double %202, double %210)
  %212 = load double, ptr @A2, align 8
  %213 = call double @llvm.fmuladd.f64(double %211, double %202, double %212)
  %214 = load double, ptr @A1, align 8
  %215 = call double @llvm.fmuladd.f64(double %213, double %202, double %214)
  %216 = load double, ptr @one, align 8
  %217 = call double @llvm.fmuladd.f64(double %215, double %202, double %216)
  %218 = fmul double %201, %217
  store double %218, ptr @sa, align 8
  %219 = fdiv double %198, 1.700000e+01
  store double %219, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %220 = load double, ptr @two, align 8
  %221 = call double @llvm.fmuladd.f64(double %220, double %.lcssa5, double %218)
  %222 = fmul double %166, %221
  %223 = fdiv double %222, %220
  store double %223, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %224 = fadd double %223, -5.000000e-01
  store double %224, ptr @sc, align 8
  %225 = fdiv double %216, %219
  store double %225, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %226 = fmul double %224, 1.000000e-30
  %227 = fmul double %198, 1.000000e-30
  %228 = fmul double %225, 1.000000e-30
  %229 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %226, double noundef %227, double noundef %228) #4
  %230 = load double, ptr @A3, align 8
  %231 = fneg double %230
  store double %231, ptr @A3, align 8
  %232 = load double, ptr @A5, align 8
  %233 = fneg double %232
  store double %233, ptr @A5, align 8
  %234 = load double, ptr @piref, align 8
  %235 = load double, ptr @three, align 8
  %236 = fmul double %235, %164
  %237 = fdiv double %234, %236
  %238 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %239 = load double, ptr @B6, align 8
  %240 = load double, ptr @B5, align 8
  %241 = load double, ptr @B4, align 8
  %242 = load double, ptr @B3, align 8
  %243 = load double, ptr @B2, align 8
  %244 = load double, ptr @B1, align 8
  %245 = load double, ptr @one, align 8
  %.not6.not41 = icmp sgt i32 %143, 1
  br i1 %.not6.not41, label %.lr.ph43, label %260

.lr.ph43:                                         ; preds = %192
  br label %246

246:                                              ; preds = %.lr.ph43, %246
  %247 = phi i32 [ 1, %.lr.ph43 ], [ %259, %246 ]
  %248 = phi double [ 0.000000e+00, %.lr.ph43 ], [ %258, %246 ]
  %249 = uitofp nneg i32 %247 to double
  %250 = fmul double %237, %249
  %251 = fmul double %250, %250
  %252 = call double @llvm.fmuladd.f64(double %239, double %251, double %240)
  %253 = call double @llvm.fmuladd.f64(double %251, double %252, double %241)
  %254 = call double @llvm.fmuladd.f64(double %251, double %253, double %242)
  %255 = call double @llvm.fmuladd.f64(double %251, double %254, double %243)
  %256 = call double @llvm.fmuladd.f64(double %251, double %255, double %244)
  %257 = call double @llvm.fmuladd.f64(double %251, double %256, double %248)
  %258 = fadd double %257, %245
  %259 = add nuw nsw i32 %247, 1
  %.not6.not = icmp slt i32 %259, %143
  br i1 %.not6.not, label %246, label %._crit_edge44, !llvm.loop !14

._crit_edge44:                                    ; preds = %246
  br label %260

260:                                              ; preds = %._crit_edge44, %192
  %.lcssa4 = phi double [ %258, %._crit_edge44 ], [ 0.000000e+00, %192 ]
  %261 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %262 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %263 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %264 = load double, ptr @nulltime, align 8
  %265 = fneg double %264
  %266 = call double @llvm.fmuladd.f64(double %262, double %263, double %265)
  store double %266, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %267 = load double, ptr @piref, align 8
  %268 = load double, ptr @three, align 8
  %269 = fdiv double %267, %268
  %270 = fmul double %269, %269
  %271 = load double, ptr @B6, align 8
  %272 = load double, ptr @B5, align 8
  %273 = call double @llvm.fmuladd.f64(double %271, double %270, double %272)
  %274 = load double, ptr @B4, align 8
  %275 = call double @llvm.fmuladd.f64(double %270, double %273, double %274)
  %276 = load double, ptr @B3, align 8
  %277 = call double @llvm.fmuladd.f64(double %270, double %275, double %276)
  %278 = load double, ptr @B2, align 8
  %279 = call double @llvm.fmuladd.f64(double %270, double %277, double %278)
  %280 = load double, ptr @B1, align 8
  %281 = call double @llvm.fmuladd.f64(double %270, double %279, double %280)
  %282 = load double, ptr @one, align 8
  %283 = call double @llvm.fmuladd.f64(double %270, double %281, double %282)
  store double %283, ptr @sa, align 8
  %284 = fdiv double %266, 1.500000e+01
  store double %284, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %285 = fadd double %283, %282
  %286 = load double, ptr @two, align 8
  %287 = call double @llvm.fmuladd.f64(double %286, double %.lcssa4, double %285)
  %288 = fmul double %237, %287
  %289 = fdiv double %288, %286
  store double %289, ptr @sa, align 8
  %290 = load double, ptr @A6, align 8
  %291 = load double, ptr @A5, align 8
  %292 = call double @llvm.fmuladd.f64(double %290, double %270, double %291)
  %293 = load double, ptr @A4, align 8
  %294 = call double @llvm.fmuladd.f64(double %292, double %270, double %293)
  %295 = load double, ptr @A3, align 8
  %296 = call double @llvm.fmuladd.f64(double %294, double %270, double %295)
  %297 = load double, ptr @A2, align 8
  %298 = call double @llvm.fmuladd.f64(double %296, double %270, double %297)
  %299 = load double, ptr @A1, align 8
  %300 = call double @llvm.fmuladd.f64(double %298, double %270, double %299)
  %301 = load double, ptr @A0, align 8
  %302 = call double @llvm.fmuladd.f64(double %300, double %270, double %301)
  %303 = fmul double %269, %302
  store double %303, ptr @sb, align 8
  %304 = fsub double %289, %303
  store double %304, ptr @sc, align 8
  %305 = fdiv double %282, %284
  store double %305, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %306 = fmul double %304, 1.000000e-30
  %307 = fmul double %266, 1.000000e-30
  %308 = fmul double %305, 1.000000e-30
  %309 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %306, double noundef %307, double noundef %308) #4
  %310 = load double, ptr @piref, align 8
  %311 = load double, ptr @three, align 8
  %312 = fmul double %311, %164
  %313 = fdiv double %310, %312
  %314 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %315 = load double, ptr @A6, align 8
  %316 = load double, ptr @A5, align 8
  %317 = load double, ptr @A4, align 8
  %318 = load double, ptr @A3, align 8
  %319 = load double, ptr @A2, align 8
  %320 = load double, ptr @A1, align 8
  %321 = load double, ptr @one, align 8
  %322 = load double, ptr @B6, align 8
  %323 = load double, ptr @B5, align 8
  %324 = load double, ptr @B4, align 8
  %325 = load double, ptr @B3, align 8
  %326 = load double, ptr @B2, align 8
  %327 = load double, ptr @B1, align 8
  %.not7.not46 = icmp sgt i32 %143, 1
  br i1 %.not7.not46, label %.lr.ph48, label %350

.lr.ph48:                                         ; preds = %260
  br label %328

328:                                              ; preds = %.lr.ph48, %328
  %329 = phi i32 [ 1, %.lr.ph48 ], [ %349, %328 ]
  %330 = phi double [ 0.000000e+00, %.lr.ph48 ], [ %348, %328 ]
  %331 = uitofp nneg i32 %329 to double
  %332 = fmul double %313, %331
  %333 = fmul double %332, %332
  %334 = call double @llvm.fmuladd.f64(double %315, double %333, double %316)
  %335 = call double @llvm.fmuladd.f64(double %334, double %333, double %317)
  %336 = call double @llvm.fmuladd.f64(double %335, double %333, double %318)
  %337 = call double @llvm.fmuladd.f64(double %336, double %333, double %319)
  %338 = call double @llvm.fmuladd.f64(double %337, double %333, double %320)
  %339 = call double @llvm.fmuladd.f64(double %338, double %333, double %321)
  %340 = fmul double %332, %339
  %341 = call double @llvm.fmuladd.f64(double %322, double %333, double %323)
  %342 = call double @llvm.fmuladd.f64(double %333, double %341, double %324)
  %343 = call double @llvm.fmuladd.f64(double %333, double %342, double %325)
  %344 = call double @llvm.fmuladd.f64(double %333, double %343, double %326)
  %345 = call double @llvm.fmuladd.f64(double %333, double %344, double %327)
  %346 = call double @llvm.fmuladd.f64(double %333, double %345, double %321)
  %347 = fdiv double %340, %346
  %348 = fadd double %330, %347
  %349 = add nuw nsw i32 %329, 1
  %.not7.not = icmp slt i32 %349, %143
  br i1 %.not7.not, label %328, label %._crit_edge49, !llvm.loop !15

._crit_edge49:                                    ; preds = %328
  br label %350

350:                                              ; preds = %._crit_edge49, %260
  %.lcssa3 = phi double [ %348, %._crit_edge49 ], [ 0.000000e+00, %260 ]
  %351 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %352 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %353 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %354 = load double, ptr @nulltime, align 8
  %355 = fneg double %354
  %356 = call double @llvm.fmuladd.f64(double %352, double %353, double %355)
  store double %356, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %357 = load double, ptr @piref, align 8
  %358 = load double, ptr @three, align 8
  %359 = fdiv double %357, %358
  %360 = fmul double %359, %359
  %361 = load double, ptr @A6, align 8
  %362 = load double, ptr @A5, align 8
  %363 = call double @llvm.fmuladd.f64(double %361, double %360, double %362)
  %364 = load double, ptr @A4, align 8
  %365 = call double @llvm.fmuladd.f64(double %363, double %360, double %364)
  %366 = load double, ptr @A3, align 8
  %367 = call double @llvm.fmuladd.f64(double %365, double %360, double %366)
  %368 = load double, ptr @A2, align 8
  %369 = call double @llvm.fmuladd.f64(double %367, double %360, double %368)
  %370 = load double, ptr @A1, align 8
  %371 = call double @llvm.fmuladd.f64(double %369, double %360, double %370)
  %372 = load double, ptr @one, align 8
  %373 = call double @llvm.fmuladd.f64(double %371, double %360, double %372)
  %374 = fmul double %359, %373
  store double %374, ptr @sa, align 8
  %375 = load double, ptr @B6, align 8
  %376 = load double, ptr @B5, align 8
  %377 = call double @llvm.fmuladd.f64(double %375, double %360, double %376)
  %378 = load double, ptr @B4, align 8
  %379 = call double @llvm.fmuladd.f64(double %360, double %377, double %378)
  %380 = load double, ptr @B3, align 8
  %381 = call double @llvm.fmuladd.f64(double %360, double %379, double %380)
  %382 = load double, ptr @B2, align 8
  %383 = call double @llvm.fmuladd.f64(double %360, double %381, double %382)
  %384 = load double, ptr @B1, align 8
  %385 = call double @llvm.fmuladd.f64(double %360, double %383, double %384)
  %386 = call double @llvm.fmuladd.f64(double %360, double %385, double %372)
  store double %386, ptr @sb, align 8
  %387 = fdiv double %374, %386
  store double %387, ptr @sa, align 8
  %388 = fdiv double %356, 2.900000e+01
  store double %388, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %389 = load double, ptr @two, align 8
  %390 = call double @llvm.fmuladd.f64(double %389, double %.lcssa3, double %387)
  %391 = fmul double %313, %390
  %392 = fdiv double %391, %389
  store double %392, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %393 = fadd double %392, f0xBFE62E42FEFA39EF
  store double %393, ptr @sc, align 8
  %394 = fdiv double %372, %388
  store double %394, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %395 = fmul double %393, 1.000000e-30
  %396 = fmul double %356, 1.000000e-30
  %397 = fmul double %394, 1.000000e-30
  %398 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %395, double noundef %396, double noundef %397) #4
  %399 = load double, ptr @piref, align 8
  %400 = load double, ptr @four, align 8
  %401 = fmul double %400, %164
  %402 = fdiv double %399, %401
  %403 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %404 = load double, ptr @A6, align 8
  %405 = load double, ptr @A5, align 8
  %406 = load double, ptr @A4, align 8
  %407 = load double, ptr @A3, align 8
  %408 = load double, ptr @A2, align 8
  %409 = load double, ptr @A1, align 8
  %410 = load double, ptr @one, align 8
  %411 = load double, ptr @B6, align 8
  %412 = load double, ptr @B5, align 8
  %413 = load double, ptr @B4, align 8
  %414 = load double, ptr @B3, align 8
  %415 = load double, ptr @B2, align 8
  %416 = load double, ptr @B1, align 8
  %.not8.not51 = icmp sgt i32 %143, 1
  br i1 %.not8.not51, label %.lr.ph53, label %438

.lr.ph53:                                         ; preds = %350
  br label %417

417:                                              ; preds = %.lr.ph53, %417
  %418 = phi i32 [ 1, %.lr.ph53 ], [ %437, %417 ]
  %419 = phi double [ 0.000000e+00, %.lr.ph53 ], [ %436, %417 ]
  %420 = uitofp nneg i32 %418 to double
  %421 = fmul double %402, %420
  %422 = fmul double %421, %421
  %423 = call double @llvm.fmuladd.f64(double %404, double %422, double %405)
  %424 = call double @llvm.fmuladd.f64(double %423, double %422, double %406)
  %425 = call double @llvm.fmuladd.f64(double %424, double %422, double %407)
  %426 = call double @llvm.fmuladd.f64(double %425, double %422, double %408)
  %427 = call double @llvm.fmuladd.f64(double %426, double %422, double %409)
  %428 = call double @llvm.fmuladd.f64(double %427, double %422, double %410)
  %429 = fmul double %421, %428
  %430 = call double @llvm.fmuladd.f64(double %411, double %422, double %412)
  %431 = call double @llvm.fmuladd.f64(double %422, double %430, double %413)
  %432 = call double @llvm.fmuladd.f64(double %422, double %431, double %414)
  %433 = call double @llvm.fmuladd.f64(double %422, double %432, double %415)
  %434 = call double @llvm.fmuladd.f64(double %422, double %433, double %416)
  %435 = call double @llvm.fmuladd.f64(double %422, double %434, double %410)
  %436 = call double @llvm.fmuladd.f64(double %429, double %435, double %419)
  %437 = add nuw nsw i32 %418, 1
  %.not8.not = icmp slt i32 %437, %143
  br i1 %.not8.not, label %417, label %._crit_edge54, !llvm.loop !16

._crit_edge54:                                    ; preds = %417
  br label %438

438:                                              ; preds = %._crit_edge54, %350
  %.lcssa2 = phi double [ %436, %._crit_edge54 ], [ 0.000000e+00, %350 ]
  %439 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %440 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %441 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %442 = load double, ptr @nulltime, align 8
  %443 = fneg double %442
  %444 = call double @llvm.fmuladd.f64(double %440, double %441, double %443)
  store double %444, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %445 = load double, ptr @piref, align 8
  %446 = load double, ptr @four, align 8
  %447 = fdiv double %445, %446
  %448 = fmul double %447, %447
  %449 = load double, ptr @A6, align 8
  %450 = load double, ptr @A5, align 8
  %451 = call double @llvm.fmuladd.f64(double %449, double %448, double %450)
  %452 = load double, ptr @A4, align 8
  %453 = call double @llvm.fmuladd.f64(double %451, double %448, double %452)
  %454 = load double, ptr @A3, align 8
  %455 = call double @llvm.fmuladd.f64(double %453, double %448, double %454)
  %456 = load double, ptr @A2, align 8
  %457 = call double @llvm.fmuladd.f64(double %455, double %448, double %456)
  %458 = load double, ptr @A1, align 8
  %459 = call double @llvm.fmuladd.f64(double %457, double %448, double %458)
  %460 = load double, ptr @one, align 8
  %461 = call double @llvm.fmuladd.f64(double %459, double %448, double %460)
  %462 = fmul double %447, %461
  store double %462, ptr @sa, align 8
  %463 = load double, ptr @B6, align 8
  %464 = load double, ptr @B5, align 8
  %465 = call double @llvm.fmuladd.f64(double %463, double %448, double %464)
  %466 = load double, ptr @B4, align 8
  %467 = call double @llvm.fmuladd.f64(double %448, double %465, double %466)
  %468 = load double, ptr @B3, align 8
  %469 = call double @llvm.fmuladd.f64(double %448, double %467, double %468)
  %470 = load double, ptr @B2, align 8
  %471 = call double @llvm.fmuladd.f64(double %448, double %469, double %470)
  %472 = load double, ptr @B1, align 8
  %473 = call double @llvm.fmuladd.f64(double %448, double %471, double %472)
  %474 = call double @llvm.fmuladd.f64(double %448, double %473, double %460)
  store double %474, ptr @sb, align 8
  %475 = fmul double %462, %474
  store double %475, ptr @sa, align 8
  %476 = fdiv double %444, 2.900000e+01
  store double %476, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %477 = load double, ptr @two, align 8
  %478 = call double @llvm.fmuladd.f64(double %477, double %.lcssa2, double %475)
  %479 = fmul double %402, %478
  %480 = fdiv double %479, %477
  store double %480, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %481 = fadd double %480, -2.500000e-01
  store double %481, ptr @sc, align 8
  %482 = fdiv double %460, %476
  store double %482, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %483 = fmul double %481, 1.000000e-30
  %484 = fmul double %444, 1.000000e-30
  %485 = fmul double %482, 1.000000e-30
  %486 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %483, double noundef %484, double noundef %485) #4
  %487 = load double, ptr @one, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %488 = fdiv double f0x40599541F7F192A4, %164
  %489 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not9.not56 = icmp sgt i32 %143, 1
  br i1 %.not9.not56, label %.lr.ph58, label %506

.lr.ph58:                                         ; preds = %438
  br label %490

490:                                              ; preds = %.lr.ph58, %490
  %491 = phi i32 [ 1, %.lr.ph58 ], [ %505, %490 ]
  %492 = phi double [ 0.000000e+00, %.lr.ph58 ], [ %504, %490 ]
  %493 = uitofp nneg i32 %491 to double
  %494 = fmul double %488, %493
  %495 = fmul double %494, %494
  %496 = fadd double %494, %487
  %497 = fdiv double %487, %496
  %498 = fsub double %492, %497
  %499 = fadd double %495, %487
  %500 = fdiv double %494, %499
  %501 = fsub double %498, %500
  %502 = call double @llvm.fmuladd.f64(double %494, double %495, double %487)
  %503 = fdiv double %495, %502
  %504 = fsub double %501, %503
  %505 = add nuw nsw i32 %491, 1
  %.not9.not = icmp slt i32 %505, %143
  br i1 %.not9.not, label %490, label %._crit_edge59, !llvm.loop !17

._crit_edge59:                                    ; preds = %490
  br label %506

506:                                              ; preds = %._crit_edge59, %438
  %.lcssa1 = phi double [ %504, %._crit_edge59 ], [ 0.000000e+00, %438 ]
  %507 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %508 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %509 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %510 = load double, ptr @nulltime, align 8
  %511 = fneg double %510
  %512 = call double @llvm.fmuladd.f64(double %508, double %509, double %511)
  store double %512, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %513 = fdiv double %512, 1.200000e+01
  store double %513, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %514 = load double, ptr @sa, align 8
  %515 = fmul double %514, %514
  %516 = fneg double %487
  %517 = fadd double %514, %487
  %518 = fdiv double %487, %517
  %519 = fsub double %516, %518
  %520 = fadd double %515, %487
  %521 = fdiv double %514, %520
  %522 = fsub double %519, %521
  %523 = call double @llvm.fmuladd.f64(double %514, double %515, double %487)
  %524 = fdiv double %515, %523
  %525 = fsub double %522, %524
  store double %525, ptr @sa, align 8
  %526 = fmul nnan double %488, 1.800000e+01
  %527 = load double, ptr @two, align 8
  %528 = call double @llvm.fmuladd.f64(double %527, double %.lcssa1, double %525)
  %529 = fmul double %526, %528
  store double %529, ptr @sa, align 8
  %530 = fptosi double %529 to i32
  %531 = mul nsw i32 %530, -2000
  %532 = sitofp i32 %531 to double
  %533 = load double, ptr @scale, align 8
  %534 = fdiv double %532, %533
  %535 = fptosi double %534 to i32
  %536 = fadd double %529, 5.002000e+02
  store double %536, ptr @sc, align 8
  %537 = load double, ptr @one, align 8
  %538 = fdiv double %537, %513
  store double %538, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %539 = fmul double %536, 1.000000e-30
  %540 = fmul double %512, 1.000000e-30
  %541 = fmul double %538, 1.000000e-30
  %542 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %539, double noundef %540, double noundef %541) #4
  %543 = load double, ptr @piref, align 8
  %544 = load double, ptr @three, align 8
  %545 = sitofp i32 %535 to double
  %546 = fmul double %544, %545
  %547 = fdiv double %543, %546
  %548 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %549 = load double, ptr @B6, align 8
  %550 = load double, ptr @B5, align 8
  %551 = load double, ptr @B4, align 8
  %552 = load double, ptr @B3, align 8
  %553 = load double, ptr @B2, align 8
  %554 = load double, ptr @B1, align 8
  %555 = load double, ptr @one, align 8
  %556 = load double, ptr @A6, align 8
  %557 = load double, ptr @A5, align 8
  %558 = load double, ptr @A4, align 8
  %559 = load double, ptr @A3, align 8
  %560 = load double, ptr @A2, align 8
  %561 = load double, ptr @A1, align 8
  %.not10.not61 = icmp sgt i32 %535, 1
  br i1 %.not10.not61, label %.lr.ph63, label %584

.lr.ph63:                                         ; preds = %506
  br label %562

562:                                              ; preds = %.lr.ph63, %562
  %563 = phi i32 [ 1, %.lr.ph63 ], [ %583, %562 ]
  %564 = phi double [ 0.000000e+00, %.lr.ph63 ], [ %582, %562 ]
  %565 = uitofp nneg i32 %563 to double
  %566 = fmul double %547, %565
  %567 = fmul double %566, %566
  %568 = call double @llvm.fmuladd.f64(double %549, double %567, double %550)
  %569 = call double @llvm.fmuladd.f64(double %567, double %568, double %551)
  %570 = call double @llvm.fmuladd.f64(double %567, double %569, double %552)
  %571 = call double @llvm.fmuladd.f64(double %567, double %570, double %553)
  %572 = call double @llvm.fmuladd.f64(double %567, double %571, double %554)
  %573 = call double @llvm.fmuladd.f64(double %567, double %572, double %555)
  %574 = fmul double %573, %573
  %575 = fmul double %574, %566
  %576 = call double @llvm.fmuladd.f64(double %556, double %567, double %557)
  %577 = call double @llvm.fmuladd.f64(double %576, double %567, double %558)
  %578 = call double @llvm.fmuladd.f64(double %577, double %567, double %559)
  %579 = call double @llvm.fmuladd.f64(double %578, double %567, double %560)
  %580 = call double @llvm.fmuladd.f64(double %579, double %567, double %561)
  %581 = call double @llvm.fmuladd.f64(double %580, double %567, double %555)
  %582 = call double @llvm.fmuladd.f64(double %575, double %581, double %564)
  %583 = add nuw nsw i32 %563, 1
  %.not10.not = icmp slt i32 %583, %535
  br i1 %.not10.not, label %562, label %._crit_edge64, !llvm.loop !18

._crit_edge64:                                    ; preds = %562
  br label %584

584:                                              ; preds = %._crit_edge64, %506
  %.lcssa = phi double [ %582, %._crit_edge64 ], [ 0.000000e+00, %506 ]
  %585 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %586 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %587 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %588 = load double, ptr @nulltime, align 8
  %589 = fneg double %588
  %590 = call double @llvm.fmuladd.f64(double %586, double %587, double %589)
  store double %590, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %591 = load double, ptr @piref, align 8
  %592 = load double, ptr @three, align 8
  %593 = fdiv double %591, %592
  %594 = fmul double %593, %593
  %595 = load double, ptr @A6, align 8
  %596 = load double, ptr @A5, align 8
  %597 = call double @llvm.fmuladd.f64(double %595, double %594, double %596)
  %598 = load double, ptr @A4, align 8
  %599 = call double @llvm.fmuladd.f64(double %597, double %594, double %598)
  %600 = load double, ptr @A3, align 8
  %601 = call double @llvm.fmuladd.f64(double %599, double %594, double %600)
  %602 = load double, ptr @A2, align 8
  %603 = call double @llvm.fmuladd.f64(double %601, double %594, double %602)
  %604 = load double, ptr @A1, align 8
  %605 = call double @llvm.fmuladd.f64(double %603, double %594, double %604)
  %606 = load double, ptr @one, align 8
  %607 = call double @llvm.fmuladd.f64(double %605, double %594, double %606)
  %608 = fmul double %593, %607
  store double %608, ptr @sa, align 8
  %609 = load double, ptr @B6, align 8
  %610 = load double, ptr @B5, align 8
  %611 = call double @llvm.fmuladd.f64(double %609, double %594, double %610)
  %612 = load double, ptr @B4, align 8
  %613 = call double @llvm.fmuladd.f64(double %594, double %611, double %612)
  %614 = load double, ptr @B3, align 8
  %615 = call double @llvm.fmuladd.f64(double %594, double %613, double %614)
  %616 = load double, ptr @B2, align 8
  %617 = call double @llvm.fmuladd.f64(double %594, double %615, double %616)
  %618 = load double, ptr @B1, align 8
  %619 = call double @llvm.fmuladd.f64(double %594, double %617, double %618)
  %620 = call double @llvm.fmuladd.f64(double %594, double %619, double %606)
  store double %620, ptr @sb, align 8
  %621 = fmul double %608, %620
  %622 = fmul double %621, %620
  store double %622, ptr @sa, align 8
  %623 = fdiv double %590, 3.000000e+01
  store double %623, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %624 = load double, ptr @two, align 8
  %625 = call double @llvm.fmuladd.f64(double %624, double %.lcssa, double %622)
  %626 = fmul double %547, %625
  %627 = fdiv double %626, %624
  store double %627, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %628 = fadd double %627, f0xBFD2AAAAAAAAAAAB
  store double %628, ptr @sc, align 8
  %629 = fdiv double %606, %623
  store double %629, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %630 = fmul double %628, 1.000000e-30
  %631 = fmul double %590, 1.000000e-30
  %632 = fmul double %629, 1.000000e-30
  %633 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %630, double noundef %631, double noundef %632) #4
  %634 = load double, ptr @five, align 8
  %635 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %636 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %637 = fsub double %635, %636
  %638 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %639 = call double @llvm.fmuladd.f64(double %634, double %637, double %638)
  %640 = fdiv double %639, 5.200000e+01
  store double %640, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %641 = load double, ptr @one, align 8
  %642 = fdiv double %641, %640
  store double %642, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %643 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %644 = fadd double %643, %638
  %645 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %646 = fadd double %644, %645
  %647 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %648 = fadd double %646, %647
  %649 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %650 = fadd double %648, %649
  store double %650, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %651 = load double, ptr @four, align 8
  %652 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %653 = call double @llvm.fmuladd.f64(double %651, double %652, double %650)
  %654 = fdiv double %653, 1.520000e+02
  store double %654, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %655 = fdiv double %641, %654
  store double %655, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %650, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %656 = fadd double %650, %652
  %657 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %658 = fadd double %656, %657
  %659 = fdiv double %658, 1.460000e+02
  store double %659, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %660 = fdiv double %641, %659
  store double %660, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %661 = fadd double %638, %645
  %662 = fadd double %661, %649
  %663 = fadd double %662, %657
  %664 = fdiv double %663, 9.100000e+01
  store double %664, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %665 = fdiv double %641, %664
  store double %665, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar11 = call i32 @putchar(i32 10)
  %666 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %535) #4
  %667 = load double, ptr @nulltime, align 8
  %668 = fmul double %667, 1.000000e-30
  %669 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %668) #4
  %670 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %671 = fmul double %670, 1.000000e-30
  %672 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %671) #4
  %673 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %674 = fmul double %673, 1.000000e-30
  %675 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %674) #4
  %676 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %677 = fmul double %676, 1.000000e-30
  %678 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %677) #4
  %679 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %680 = fmul double %679, 1.000000e-30
  %681 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %680) #4
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
