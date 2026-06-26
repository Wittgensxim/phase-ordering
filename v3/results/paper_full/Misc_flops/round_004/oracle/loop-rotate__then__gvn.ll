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
  br label %8

5:                                                ; preds = %29
  %6 = load double, ptr @TLimit, align 8
  %7 = fcmp olt double %31, %6
  br i1 %7, label %8, label %..loopexit_crit_edge, !llvm.loop !7

8:                                                ; preds = %.lr.ph20, %5
  %9 = phi i32 [ 15625, %.lr.ph20 ], [ %10, %5 ]
  %10 = shl nsw i32 %9, 1
  %11 = load double, ptr @one, align 8
  %12 = sitofp i32 %10 to double
  %13 = fdiv double %11, %12
  %14 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not.not18 = icmp slt i32 1, %10
  br i1 %.not.not18, label %.lr.ph, label %29

.lr.ph:                                           ; preds = %8
  %.pre = load double, ptr @D1, align 8
  %.pre66 = load double, ptr @D2, align 8
  %.pre67 = load double, ptr @D3, align 8
  %.pre68 = load double, ptr @E2, align 8
  %.pre69 = load double, ptr @E3, align 8
  br label %15

15:                                               ; preds = %.lr.ph, %15
  %16 = phi i32 [ 1, %.lr.ph ], [ %28, %15 ]
  %17 = phi double [ 0.000000e+00, %.lr.ph ], [ %27, %15 ]
  %18 = phi double [ 0.000000e+00, %.lr.ph ], [ %19, %15 ]
  %19 = fadd double %18, %11
  %20 = fmul double %19, %13
  %21 = call double @llvm.fmuladd.f64(double %20, double %.pre67, double %.pre66)
  %22 = call double @llvm.fmuladd.f64(double %20, double %21, double %.pre)
  %23 = call double @llvm.fmuladd.f64(double %20, double %.pre69, double %.pre68)
  %24 = call double @llvm.fmuladd.f64(double %20, double %23, double %.pre)
  %25 = call double @llvm.fmuladd.f64(double %20, double %24, double %11)
  %26 = fdiv double %22, %25
  %27 = fadd double %17, %26
  %28 = add nuw nsw i32 %16, 1
  %.not.not = icmp slt i32 %28, %10
  br i1 %.not.not, label %15, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %15
  br label %29

29:                                               ; preds = %._crit_edge, %8
  %.lcssa10 = phi double [ %27, %._crit_edge ], [ 0.000000e+00, %8 ]
  %30 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %31 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %31, ptr @sa, align 8
  %32 = icmp eq i32 %9, 256000000
  br i1 %32, label %33, label %5

33:                                               ; preds = %29
  br label %34

..loopexit_crit_edge:                             ; preds = %5
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %0
  %.lcssa15 = phi double [ %.lcssa10, %..loopexit_crit_edge ], [ undef, %0 ]
  %.lcssa13 = phi double [ %13, %..loopexit_crit_edge ], [ undef, %0 ]
  %.lcssa11 = phi i32 [ %10, %..loopexit_crit_edge ], [ 15625, %0 ]
  br label %34

34:                                               ; preds = %.loopexit, %33
  %35 = phi double [ %.lcssa10, %33 ], [ %.lcssa15, %.loopexit ]
  %36 = phi double [ %13, %33 ], [ %.lcssa13, %.loopexit ]
  %37 = phi i32 [ 512000000, %33 ], [ %.lcssa11, %.loopexit ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %38 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %39

39:                                               ; preds = %39, %34
  %40 = phi i32 [ %41, %39 ], [ 1, %34 ]
  %.not.not3 = icmp slt i32 %40, %37
  %41 = add nuw nsw i32 %40, 1
  br i1 %.not.not3, label %39, label %42, !llvm.loop !10

42:                                               ; preds = %39
  %43 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %44 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %45 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %46 = fmul double %44, %45
  %47 = fcmp olt double %46, 0.000000e+00
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %42
  %50 = phi double [ 0.000000e+00, %48 ], [ %46, %42 ]
  store double %50, ptr @nulltime, align 8
  %51 = load double, ptr @sa, align 8
  %52 = fneg double %50
  %53 = call double @llvm.fmuladd.f64(double %44, double %51, double %52)
  store double %53, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %54 = load double, ptr @D1, align 8
  %55 = load double, ptr @D2, align 8
  %56 = fadd double %54, %55
  %57 = load double, ptr @D3, align 8
  %58 = fadd double %56, %57
  %59 = load double, ptr @one, align 8
  %60 = fadd double %59, %54
  %61 = load double, ptr @E2, align 8
  %62 = fadd double %60, %61
  %63 = load double, ptr @E3, align 8
  %64 = fadd double %62, %63
  %65 = fdiv double %58, %64
  store double %65, ptr @sa, align 8
  store double %54, ptr @sb, align 8
  %66 = fdiv double %53, 1.400000e+01
  store double %66, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %67 = fadd double %65, %54
  %68 = load double, ptr @two, align 8
  %69 = call double @llvm.fmuladd.f64(double %68, double %35, double %67)
  %70 = fmul double %36, %69
  %71 = fdiv double %70, %68
  store double %71, ptr @sa, align 8
  %72 = fdiv double %59, %71
  store double %72, ptr @sb, align 8
  %73 = fptosi double %72 to i32
  %74 = mul nsw i32 %73, 40000
  %75 = sitofp i32 %74 to double
  %76 = load double, ptr @scale, align 8
  %77 = fdiv double %75, %76
  %78 = fptosi double %77 to i32
  %79 = fadd double %72, -2.520000e+01
  store double %79, ptr @sc, align 8
  %80 = fdiv double %59, %66
  store double %80, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %81 = fmul double %79, 1.000000e-30
  %82 = fmul double %53, 1.000000e-30
  %83 = fmul double %80, 1.000000e-30
  %84 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %81, double noundef %82, double noundef %83) #4
  %85 = load double, ptr @five, align 8
  %86 = fneg double %85
  %87 = load double, ptr @one, align 8
  %88 = fneg double %87
  store double %88, ptr @sa, align 8
  %89 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not24 = icmp sgt i32 1, %78
  br i1 %.not24, label %97, label %.lr.ph26

.lr.ph26:                                         ; preds = %49
  %.pre70 = load double, ptr @sa, align 8
  br label %90

90:                                               ; preds = %.lr.ph26, %90
  %91 = phi double [ %.pre70, %.lr.ph26 ], [ %95, %90 ]
  %92 = phi i32 [ 1, %.lr.ph26 ], [ %96, %90 ]
  %93 = phi double [ %86, %.lr.ph26 ], [ %94, %90 ]
  %94 = fneg double %93
  %95 = fsub double %91, %93
  store double %95, ptr @sa, align 8
  %96 = add nuw nsw i32 %92, 1
  %.not = icmp sgt i32 %96, %78
  br i1 %.not, label %._crit_edge27, label %90, !llvm.loop !11

._crit_edge27:                                    ; preds = %90
  br label %97

97:                                               ; preds = %._crit_edge27, %49
  %.lcssa9 = phi double [ %94, %._crit_edge27 ], [ %86, %49 ]
  %98 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %99 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %100 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %101 = fmul double %99, %100
  %102 = fcmp olt double %101, 0.000000e+00
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %104

104:                                              ; preds = %103, %97
  %storemerge = phi double [ 0.000000e+00, %103 ], [ %101, %97 ]
  store double %storemerge, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %105 = sitofp i32 %78 to double
  store double %105, ptr @sc, align 8
  %106 = load double, ptr @sa, align 8
  %107 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br i1 %.not24, label %125, label %.lr.ph31

.lr.ph31:                                         ; preds = %104
  %.pre71 = load double, ptr @sa, align 8
  %.pre72 = load double, ptr @two, align 8
  br label %108

108:                                              ; preds = %.lr.ph31, %108
  %109 = phi double [ %.pre71, %.lr.ph31 ], [ %117, %108 ]
  %110 = phi i32 [ 1, %.lr.ph31 ], [ %124, %108 ]
  %111 = phi double [ 0.000000e+00, %.lr.ph31 ], [ %120, %108 ]
  %112 = phi double [ 0.000000e+00, %.lr.ph31 ], [ %121, %108 ]
  %113 = phi double [ %.lcssa9, %.lr.ph31 ], [ %116, %108 ]
  %114 = phi double [ %106, %.lr.ph31 ], [ %118, %108 ]
  %115 = phi double [ 0.000000e+00, %.lr.ph31 ], [ %123, %108 ]
  %116 = fneg double %113
  %117 = fsub double %109, %113
  store double %117, ptr @sa, align 8
  %118 = fadd double %114, %.pre72
  %119 = fsub double %116, %118
  %120 = fadd double %111, %119
  %121 = call double @llvm.fmuladd.f64(double %113, double %118, double %112)
  %122 = fdiv double %113, %118
  %123 = fsub double %115, %122
  %124 = add nuw nsw i32 %110, 1
  %.not4 = icmp sgt i32 %124, %78
  br i1 %.not4, label %._crit_edge32, label %108, !llvm.loop !12

._crit_edge32:                                    ; preds = %108
  br label %125

125:                                              ; preds = %._crit_edge32, %104
  %.lcssa8 = phi double [ %123, %._crit_edge32 ], [ 0.000000e+00, %104 ]
  %.lcssa7 = phi double [ %121, %._crit_edge32 ], [ 0.000000e+00, %104 ]
  %.lcssa6 = phi double [ %120, %._crit_edge32 ], [ 0.000000e+00, %104 ]
  %126 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %127 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %128 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %129 = fmul double %127, %128
  store double %129, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %130 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %131 = fsub double %129, %130
  %132 = fdiv double %131, 7.000000e+00
  store double %132, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %133 = load double, ptr @sa, align 8
  %134 = fmul double %133, %.lcssa6
  %135 = load double, ptr @sc, align 8
  %136 = fdiv double %134, %135
  %137 = fptosi double %136 to i32
  %138 = load double, ptr @four, align 8
  %139 = fmul double %138, %.lcssa8
  %140 = load double, ptr @five, align 8
  %141 = fdiv double %139, %140
  store double %141, ptr @sa, align 8
  %142 = fdiv double %140, %.lcssa7
  %143 = fadd double %141, %142
  store double %143, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %144 = fmul double %.lcssa7, %.lcssa7
  %145 = fmul double %144, %.lcssa7
  %146 = fdiv double 3.125000e+01, %145
  %147 = fsub double %143, %146
  store double %147, ptr @piprg, align 8
  %148 = load double, ptr @piref, align 8
  %149 = fsub double %147, %148
  store double %149, ptr @pierr, align 8
  %150 = load double, ptr @one, align 8
  %151 = fdiv double %150, %132
  store double %151, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %152 = fmul double %149, 1.000000e-30
  %153 = fmul double %131, 1.000000e-30
  %154 = fmul double %151, 1.000000e-30
  %155 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %152, double noundef %153, double noundef %154) #4
  %156 = load double, ptr @piref, align 8
  %157 = load double, ptr @three, align 8
  %158 = sitofp i32 %137 to double
  %159 = fmul double %157, %158
  %160 = fdiv double %156, %159
  %161 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not5.not36 = icmp slt i32 1, %137
  br i1 %.not5.not36, label %.lr.ph38, label %179

.lr.ph38:                                         ; preds = %125
  %.pre73 = load double, ptr @one, align 8
  %.pre74 = load double, ptr @A6, align 8
  %.pre75 = load double, ptr @A5, align 8
  %.pre76 = load double, ptr @A4, align 8
  %.pre77 = load double, ptr @A3, align 8
  %.pre78 = load double, ptr @A2, align 8
  %.pre79 = load double, ptr @A1, align 8
  br label %162

162:                                              ; preds = %.lr.ph38, %162
  %163 = phi i32 [ 1, %.lr.ph38 ], [ %178, %162 ]
  %164 = phi double [ 0.000000e+00, %.lr.ph38 ], [ %177, %162 ]
  %165 = phi double [ 0.000000e+00, %.lr.ph38 ], [ %166, %162 ]
  %166 = fadd double %165, %.pre73
  %167 = fmul double %166, %160
  %168 = fmul double %167, %167
  %169 = fneg double %.pre75
  %170 = call double @llvm.fmuladd.f64(double %.pre74, double %168, double %169)
  %171 = call double @llvm.fmuladd.f64(double %170, double %168, double %.pre76)
  %172 = fneg double %.pre77
  %173 = call double @llvm.fmuladd.f64(double %171, double %168, double %172)
  %174 = call double @llvm.fmuladd.f64(double %173, double %168, double %.pre78)
  %175 = call double @llvm.fmuladd.f64(double %174, double %168, double %.pre79)
  %176 = call double @llvm.fmuladd.f64(double %175, double %168, double %.pre73)
  %177 = call double @llvm.fmuladd.f64(double %167, double %176, double %164)
  %178 = add nuw nsw i32 %163, 1
  %.not5.not = icmp slt i32 %178, %137
  br i1 %.not5.not, label %162, label %._crit_edge39, !llvm.loop !13

._crit_edge39:                                    ; preds = %162
  br label %179

179:                                              ; preds = %._crit_edge39, %125
  %.lcssa5 = phi double [ %177, %._crit_edge39 ], [ 0.000000e+00, %125 ]
  %180 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %181 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %182 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %183 = load double, ptr @nulltime, align 8
  %184 = fneg double %183
  %185 = call double @llvm.fmuladd.f64(double %181, double %182, double %184)
  store double %185, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %186 = load double, ptr @piref, align 8
  %187 = load double, ptr @three, align 8
  %188 = fdiv double %186, %187
  %189 = fmul double %188, %188
  %190 = load double, ptr @A6, align 8
  %191 = load double, ptr @A5, align 8
  %192 = fneg double %191
  %193 = call double @llvm.fmuladd.f64(double %190, double %189, double %192)
  %194 = load double, ptr @A4, align 8
  %195 = call double @llvm.fmuladd.f64(double %193, double %189, double %194)
  %196 = load double, ptr @A3, align 8
  %197 = fneg double %196
  %198 = call double @llvm.fmuladd.f64(double %195, double %189, double %197)
  %199 = load double, ptr @A2, align 8
  %200 = call double @llvm.fmuladd.f64(double %198, double %189, double %199)
  %201 = load double, ptr @A1, align 8
  %202 = call double @llvm.fmuladd.f64(double %200, double %189, double %201)
  %203 = load double, ptr @one, align 8
  %204 = call double @llvm.fmuladd.f64(double %202, double %189, double %203)
  %205 = fmul double %188, %204
  store double %205, ptr @sa, align 8
  %206 = fdiv double %185, 1.700000e+01
  store double %206, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %207 = load double, ptr @two, align 8
  %208 = call double @llvm.fmuladd.f64(double %207, double %.lcssa5, double %205)
  %209 = fmul double %160, %208
  %210 = fdiv double %209, %207
  store double %210, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %211 = fadd double %210, -5.000000e-01
  store double %211, ptr @sc, align 8
  %212 = fdiv double %203, %206
  store double %212, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %213 = fmul double %211, 1.000000e-30
  %214 = fmul double %185, 1.000000e-30
  %215 = fmul double %212, 1.000000e-30
  %216 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %213, double noundef %214, double noundef %215) #4
  %217 = load double, ptr @A3, align 8
  %218 = fneg double %217
  store double %218, ptr @A3, align 8
  %219 = load double, ptr @A5, align 8
  %220 = fneg double %219
  store double %220, ptr @A5, align 8
  %221 = load double, ptr @piref, align 8
  %222 = load double, ptr @three, align 8
  %223 = fmul double %222, %158
  %224 = fdiv double %221, %223
  %225 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br i1 %.not5.not36, label %.lr.ph43, label %240

.lr.ph43:                                         ; preds = %179
  %.pre80 = load double, ptr @B6, align 8
  %.pre81 = load double, ptr @B5, align 8
  %.pre82 = load double, ptr @B4, align 8
  %.pre83 = load double, ptr @B3, align 8
  %.pre84 = load double, ptr @B2, align 8
  %.pre85 = load double, ptr @B1, align 8
  %.pre86 = load double, ptr @one, align 8
  br label %226

226:                                              ; preds = %.lr.ph43, %226
  %227 = phi i32 [ 1, %.lr.ph43 ], [ %239, %226 ]
  %228 = phi double [ 0.000000e+00, %.lr.ph43 ], [ %238, %226 ]
  %229 = uitofp nneg i32 %227 to double
  %230 = fmul double %224, %229
  %231 = fmul double %230, %230
  %232 = call double @llvm.fmuladd.f64(double %.pre80, double %231, double %.pre81)
  %233 = call double @llvm.fmuladd.f64(double %231, double %232, double %.pre82)
  %234 = call double @llvm.fmuladd.f64(double %231, double %233, double %.pre83)
  %235 = call double @llvm.fmuladd.f64(double %231, double %234, double %.pre84)
  %236 = call double @llvm.fmuladd.f64(double %231, double %235, double %.pre85)
  %237 = call double @llvm.fmuladd.f64(double %231, double %236, double %228)
  %238 = fadd double %237, %.pre86
  %239 = add nuw nsw i32 %227, 1
  %.not6.not = icmp slt i32 %239, %137
  br i1 %.not6.not, label %226, label %._crit_edge44, !llvm.loop !14

._crit_edge44:                                    ; preds = %226
  br label %240

240:                                              ; preds = %._crit_edge44, %179
  %.lcssa4 = phi double [ %238, %._crit_edge44 ], [ 0.000000e+00, %179 ]
  %241 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %242 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %243 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %244 = load double, ptr @nulltime, align 8
  %245 = fneg double %244
  %246 = call double @llvm.fmuladd.f64(double %242, double %243, double %245)
  store double %246, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %247 = load double, ptr @piref, align 8
  %248 = load double, ptr @three, align 8
  %249 = fdiv double %247, %248
  %250 = fmul double %249, %249
  %251 = load double, ptr @B6, align 8
  %252 = load double, ptr @B5, align 8
  %253 = call double @llvm.fmuladd.f64(double %251, double %250, double %252)
  %254 = load double, ptr @B4, align 8
  %255 = call double @llvm.fmuladd.f64(double %250, double %253, double %254)
  %256 = load double, ptr @B3, align 8
  %257 = call double @llvm.fmuladd.f64(double %250, double %255, double %256)
  %258 = load double, ptr @B2, align 8
  %259 = call double @llvm.fmuladd.f64(double %250, double %257, double %258)
  %260 = load double, ptr @B1, align 8
  %261 = call double @llvm.fmuladd.f64(double %250, double %259, double %260)
  %262 = load double, ptr @one, align 8
  %263 = call double @llvm.fmuladd.f64(double %250, double %261, double %262)
  store double %263, ptr @sa, align 8
  %264 = fdiv double %246, 1.500000e+01
  store double %264, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %265 = fadd double %263, %262
  %266 = load double, ptr @two, align 8
  %267 = call double @llvm.fmuladd.f64(double %266, double %.lcssa4, double %265)
  %268 = fmul double %224, %267
  %269 = fdiv double %268, %266
  store double %269, ptr @sa, align 8
  %270 = load double, ptr @A6, align 8
  %271 = load double, ptr @A5, align 8
  %272 = call double @llvm.fmuladd.f64(double %270, double %250, double %271)
  %273 = load double, ptr @A4, align 8
  %274 = call double @llvm.fmuladd.f64(double %272, double %250, double %273)
  %275 = load double, ptr @A3, align 8
  %276 = call double @llvm.fmuladd.f64(double %274, double %250, double %275)
  %277 = load double, ptr @A2, align 8
  %278 = call double @llvm.fmuladd.f64(double %276, double %250, double %277)
  %279 = load double, ptr @A1, align 8
  %280 = call double @llvm.fmuladd.f64(double %278, double %250, double %279)
  %281 = load double, ptr @A0, align 8
  %282 = call double @llvm.fmuladd.f64(double %280, double %250, double %281)
  %283 = fmul double %249, %282
  store double %283, ptr @sb, align 8
  %284 = fsub double %269, %283
  store double %284, ptr @sc, align 8
  %285 = fdiv double %262, %264
  store double %285, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %286 = fmul double %284, 1.000000e-30
  %287 = fmul double %246, 1.000000e-30
  %288 = fmul double %285, 1.000000e-30
  %289 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %286, double noundef %287, double noundef %288) #4
  %290 = load double, ptr @piref, align 8
  %291 = load double, ptr @three, align 8
  %292 = fmul double %291, %158
  %293 = fdiv double %290, %292
  %294 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br i1 %.not5.not36, label %.lr.ph48, label %317

.lr.ph48:                                         ; preds = %240
  %.pre87 = load double, ptr @A6, align 8
  %.pre88 = load double, ptr @A5, align 8
  %.pre89 = load double, ptr @A4, align 8
  %.pre90 = load double, ptr @A3, align 8
  %.pre91 = load double, ptr @A2, align 8
  %.pre92 = load double, ptr @A1, align 8
  %.pre93 = load double, ptr @one, align 8
  %.pre94 = load double, ptr @B6, align 8
  %.pre95 = load double, ptr @B5, align 8
  %.pre96 = load double, ptr @B4, align 8
  %.pre97 = load double, ptr @B3, align 8
  %.pre98 = load double, ptr @B2, align 8
  %.pre99 = load double, ptr @B1, align 8
  br label %295

295:                                              ; preds = %.lr.ph48, %295
  %296 = phi i32 [ 1, %.lr.ph48 ], [ %316, %295 ]
  %297 = phi double [ 0.000000e+00, %.lr.ph48 ], [ %315, %295 ]
  %298 = uitofp nneg i32 %296 to double
  %299 = fmul double %293, %298
  %300 = fmul double %299, %299
  %301 = call double @llvm.fmuladd.f64(double %.pre87, double %300, double %.pre88)
  %302 = call double @llvm.fmuladd.f64(double %301, double %300, double %.pre89)
  %303 = call double @llvm.fmuladd.f64(double %302, double %300, double %.pre90)
  %304 = call double @llvm.fmuladd.f64(double %303, double %300, double %.pre91)
  %305 = call double @llvm.fmuladd.f64(double %304, double %300, double %.pre92)
  %306 = call double @llvm.fmuladd.f64(double %305, double %300, double %.pre93)
  %307 = fmul double %299, %306
  %308 = call double @llvm.fmuladd.f64(double %.pre94, double %300, double %.pre95)
  %309 = call double @llvm.fmuladd.f64(double %300, double %308, double %.pre96)
  %310 = call double @llvm.fmuladd.f64(double %300, double %309, double %.pre97)
  %311 = call double @llvm.fmuladd.f64(double %300, double %310, double %.pre98)
  %312 = call double @llvm.fmuladd.f64(double %300, double %311, double %.pre99)
  %313 = call double @llvm.fmuladd.f64(double %300, double %312, double %.pre93)
  %314 = fdiv double %307, %313
  %315 = fadd double %297, %314
  %316 = add nuw nsw i32 %296, 1
  %.not7.not = icmp slt i32 %316, %137
  br i1 %.not7.not, label %295, label %._crit_edge49, !llvm.loop !15

._crit_edge49:                                    ; preds = %295
  br label %317

317:                                              ; preds = %._crit_edge49, %240
  %.lcssa3 = phi double [ %315, %._crit_edge49 ], [ 0.000000e+00, %240 ]
  %318 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %319 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %320 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %321 = load double, ptr @nulltime, align 8
  %322 = fneg double %321
  %323 = call double @llvm.fmuladd.f64(double %319, double %320, double %322)
  store double %323, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %324 = load double, ptr @piref, align 8
  %325 = load double, ptr @three, align 8
  %326 = fdiv double %324, %325
  %327 = fmul double %326, %326
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
  store double %341, ptr @sa, align 8
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
  store double %353, ptr @sb, align 8
  %354 = fdiv double %341, %353
  store double %354, ptr @sa, align 8
  %355 = fdiv double %323, 2.900000e+01
  store double %355, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %356 = load double, ptr @two, align 8
  %357 = call double @llvm.fmuladd.f64(double %356, double %.lcssa3, double %354)
  %358 = fmul double %293, %357
  %359 = fdiv double %358, %356
  store double %359, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %360 = fadd double %359, f0xBFE62E42FEFA39EF
  store double %360, ptr @sc, align 8
  %361 = fdiv double %339, %355
  store double %361, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %362 = fmul double %360, 1.000000e-30
  %363 = fmul double %323, 1.000000e-30
  %364 = fmul double %361, 1.000000e-30
  %365 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %362, double noundef %363, double noundef %364) #4
  %366 = load double, ptr @piref, align 8
  %367 = load double, ptr @four, align 8
  %368 = fmul double %367, %158
  %369 = fdiv double %366, %368
  %370 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br i1 %.not5.not36, label %.lr.ph53, label %392

.lr.ph53:                                         ; preds = %317
  %.pre100 = load double, ptr @A6, align 8
  %.pre101 = load double, ptr @A5, align 8
  %.pre102 = load double, ptr @A4, align 8
  %.pre103 = load double, ptr @A3, align 8
  %.pre104 = load double, ptr @A2, align 8
  %.pre105 = load double, ptr @A1, align 8
  %.pre106 = load double, ptr @one, align 8
  %.pre107 = load double, ptr @B6, align 8
  %.pre108 = load double, ptr @B5, align 8
  %.pre109 = load double, ptr @B4, align 8
  %.pre110 = load double, ptr @B3, align 8
  %.pre111 = load double, ptr @B2, align 8
  %.pre112 = load double, ptr @B1, align 8
  br label %371

371:                                              ; preds = %.lr.ph53, %371
  %372 = phi i32 [ 1, %.lr.ph53 ], [ %391, %371 ]
  %373 = phi double [ 0.000000e+00, %.lr.ph53 ], [ %390, %371 ]
  %374 = uitofp nneg i32 %372 to double
  %375 = fmul double %369, %374
  %376 = fmul double %375, %375
  %377 = call double @llvm.fmuladd.f64(double %.pre100, double %376, double %.pre101)
  %378 = call double @llvm.fmuladd.f64(double %377, double %376, double %.pre102)
  %379 = call double @llvm.fmuladd.f64(double %378, double %376, double %.pre103)
  %380 = call double @llvm.fmuladd.f64(double %379, double %376, double %.pre104)
  %381 = call double @llvm.fmuladd.f64(double %380, double %376, double %.pre105)
  %382 = call double @llvm.fmuladd.f64(double %381, double %376, double %.pre106)
  %383 = fmul double %375, %382
  %384 = call double @llvm.fmuladd.f64(double %.pre107, double %376, double %.pre108)
  %385 = call double @llvm.fmuladd.f64(double %376, double %384, double %.pre109)
  %386 = call double @llvm.fmuladd.f64(double %376, double %385, double %.pre110)
  %387 = call double @llvm.fmuladd.f64(double %376, double %386, double %.pre111)
  %388 = call double @llvm.fmuladd.f64(double %376, double %387, double %.pre112)
  %389 = call double @llvm.fmuladd.f64(double %376, double %388, double %.pre106)
  %390 = call double @llvm.fmuladd.f64(double %383, double %389, double %373)
  %391 = add nuw nsw i32 %372, 1
  %.not8.not = icmp slt i32 %391, %137
  br i1 %.not8.not, label %371, label %._crit_edge54, !llvm.loop !16

._crit_edge54:                                    ; preds = %371
  br label %392

392:                                              ; preds = %._crit_edge54, %317
  %.lcssa2 = phi double [ %390, %._crit_edge54 ], [ 0.000000e+00, %317 ]
  %393 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %394 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %395 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %396 = load double, ptr @nulltime, align 8
  %397 = fneg double %396
  %398 = call double @llvm.fmuladd.f64(double %394, double %395, double %397)
  store double %398, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %399 = load double, ptr @piref, align 8
  %400 = load double, ptr @four, align 8
  %401 = fdiv double %399, %400
  %402 = fmul double %401, %401
  %403 = load double, ptr @A6, align 8
  %404 = load double, ptr @A5, align 8
  %405 = call double @llvm.fmuladd.f64(double %403, double %402, double %404)
  %406 = load double, ptr @A4, align 8
  %407 = call double @llvm.fmuladd.f64(double %405, double %402, double %406)
  %408 = load double, ptr @A3, align 8
  %409 = call double @llvm.fmuladd.f64(double %407, double %402, double %408)
  %410 = load double, ptr @A2, align 8
  %411 = call double @llvm.fmuladd.f64(double %409, double %402, double %410)
  %412 = load double, ptr @A1, align 8
  %413 = call double @llvm.fmuladd.f64(double %411, double %402, double %412)
  %414 = load double, ptr @one, align 8
  %415 = call double @llvm.fmuladd.f64(double %413, double %402, double %414)
  %416 = fmul double %401, %415
  store double %416, ptr @sa, align 8
  %417 = load double, ptr @B6, align 8
  %418 = load double, ptr @B5, align 8
  %419 = call double @llvm.fmuladd.f64(double %417, double %402, double %418)
  %420 = load double, ptr @B4, align 8
  %421 = call double @llvm.fmuladd.f64(double %402, double %419, double %420)
  %422 = load double, ptr @B3, align 8
  %423 = call double @llvm.fmuladd.f64(double %402, double %421, double %422)
  %424 = load double, ptr @B2, align 8
  %425 = call double @llvm.fmuladd.f64(double %402, double %423, double %424)
  %426 = load double, ptr @B1, align 8
  %427 = call double @llvm.fmuladd.f64(double %402, double %425, double %426)
  %428 = call double @llvm.fmuladd.f64(double %402, double %427, double %414)
  store double %428, ptr @sb, align 8
  %429 = fmul double %416, %428
  store double %429, ptr @sa, align 8
  %430 = fdiv double %398, 2.900000e+01
  store double %430, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %431 = load double, ptr @two, align 8
  %432 = call double @llvm.fmuladd.f64(double %431, double %.lcssa2, double %429)
  %433 = fmul double %369, %432
  %434 = fdiv double %433, %431
  store double %434, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %435 = fadd double %434, -2.500000e-01
  store double %435, ptr @sc, align 8
  %436 = fdiv double %414, %430
  store double %436, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %437 = fmul double %435, 1.000000e-30
  %438 = fmul double %398, 1.000000e-30
  %439 = fmul double %436, 1.000000e-30
  %440 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %437, double noundef %438, double noundef %439) #4
  %441 = load double, ptr @one, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %442 = fdiv double f0x40599541F7F192A4, %158
  %443 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br i1 %.not5.not36, label %.lr.ph58, label %460

.lr.ph58:                                         ; preds = %392
  br label %444

444:                                              ; preds = %.lr.ph58, %444
  %445 = phi i32 [ 1, %.lr.ph58 ], [ %459, %444 ]
  %446 = phi double [ 0.000000e+00, %.lr.ph58 ], [ %458, %444 ]
  %447 = uitofp nneg i32 %445 to double
  %448 = fmul double %442, %447
  %449 = fmul double %448, %448
  %450 = fadd double %448, %441
  %451 = fdiv double %441, %450
  %452 = fsub double %446, %451
  %453 = fadd double %449, %441
  %454 = fdiv double %448, %453
  %455 = fsub double %452, %454
  %456 = call double @llvm.fmuladd.f64(double %448, double %449, double %441)
  %457 = fdiv double %449, %456
  %458 = fsub double %455, %457
  %459 = add nuw nsw i32 %445, 1
  %.not9.not = icmp slt i32 %459, %137
  br i1 %.not9.not, label %444, label %._crit_edge59, !llvm.loop !17

._crit_edge59:                                    ; preds = %444
  br label %460

460:                                              ; preds = %._crit_edge59, %392
  %.lcssa1 = phi double [ %458, %._crit_edge59 ], [ 0.000000e+00, %392 ]
  %461 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %462 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %463 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %464 = load double, ptr @nulltime, align 8
  %465 = fneg double %464
  %466 = call double @llvm.fmuladd.f64(double %462, double %463, double %465)
  store double %466, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %467 = fdiv double %466, 1.200000e+01
  store double %467, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %468 = load double, ptr @sa, align 8
  %469 = fmul double %468, %468
  %470 = fneg double %441
  %471 = fadd double %468, %441
  %472 = fdiv double %441, %471
  %473 = fsub double %470, %472
  %474 = fadd double %469, %441
  %475 = fdiv double %468, %474
  %476 = fsub double %473, %475
  %477 = call double @llvm.fmuladd.f64(double %468, double %469, double %441)
  %478 = fdiv double %469, %477
  %479 = fsub double %476, %478
  store double %479, ptr @sa, align 8
  %480 = fmul nnan double %442, 1.800000e+01
  %481 = load double, ptr @two, align 8
  %482 = call double @llvm.fmuladd.f64(double %481, double %.lcssa1, double %479)
  %483 = fmul double %480, %482
  store double %483, ptr @sa, align 8
  %484 = fptosi double %483 to i32
  %485 = mul nsw i32 %484, -2000
  %486 = sitofp i32 %485 to double
  %487 = load double, ptr @scale, align 8
  %488 = fdiv double %486, %487
  %489 = fptosi double %488 to i32
  %490 = fadd double %483, 5.002000e+02
  store double %490, ptr @sc, align 8
  %491 = load double, ptr @one, align 8
  %492 = fdiv double %491, %467
  store double %492, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %493 = fmul double %490, 1.000000e-30
  %494 = fmul double %466, 1.000000e-30
  %495 = fmul double %492, 1.000000e-30
  %496 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %493, double noundef %494, double noundef %495) #4
  %497 = load double, ptr @piref, align 8
  %498 = load double, ptr @three, align 8
  %499 = sitofp i32 %489 to double
  %500 = fmul double %498, %499
  %501 = fdiv double %497, %500
  %502 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not10.not61 = icmp slt i32 1, %489
  br i1 %.not10.not61, label %.lr.ph63, label %525

.lr.ph63:                                         ; preds = %460
  %.pre113 = load double, ptr @B6, align 8
  %.pre114 = load double, ptr @B5, align 8
  %.pre115 = load double, ptr @B4, align 8
  %.pre116 = load double, ptr @B3, align 8
  %.pre117 = load double, ptr @B2, align 8
  %.pre118 = load double, ptr @B1, align 8
  %.pre119 = load double, ptr @one, align 8
  %.pre120 = load double, ptr @A6, align 8
  %.pre121 = load double, ptr @A5, align 8
  %.pre122 = load double, ptr @A4, align 8
  %.pre123 = load double, ptr @A3, align 8
  %.pre124 = load double, ptr @A2, align 8
  %.pre125 = load double, ptr @A1, align 8
  br label %503

503:                                              ; preds = %.lr.ph63, %503
  %504 = phi i32 [ 1, %.lr.ph63 ], [ %524, %503 ]
  %505 = phi double [ 0.000000e+00, %.lr.ph63 ], [ %523, %503 ]
  %506 = uitofp nneg i32 %504 to double
  %507 = fmul double %501, %506
  %508 = fmul double %507, %507
  %509 = call double @llvm.fmuladd.f64(double %.pre113, double %508, double %.pre114)
  %510 = call double @llvm.fmuladd.f64(double %508, double %509, double %.pre115)
  %511 = call double @llvm.fmuladd.f64(double %508, double %510, double %.pre116)
  %512 = call double @llvm.fmuladd.f64(double %508, double %511, double %.pre117)
  %513 = call double @llvm.fmuladd.f64(double %508, double %512, double %.pre118)
  %514 = call double @llvm.fmuladd.f64(double %508, double %513, double %.pre119)
  %515 = fmul double %514, %514
  %516 = fmul double %515, %507
  %517 = call double @llvm.fmuladd.f64(double %.pre120, double %508, double %.pre121)
  %518 = call double @llvm.fmuladd.f64(double %517, double %508, double %.pre122)
  %519 = call double @llvm.fmuladd.f64(double %518, double %508, double %.pre123)
  %520 = call double @llvm.fmuladd.f64(double %519, double %508, double %.pre124)
  %521 = call double @llvm.fmuladd.f64(double %520, double %508, double %.pre125)
  %522 = call double @llvm.fmuladd.f64(double %521, double %508, double %.pre119)
  %523 = call double @llvm.fmuladd.f64(double %516, double %522, double %505)
  %524 = add nuw nsw i32 %504, 1
  %.not10.not = icmp slt i32 %524, %489
  br i1 %.not10.not, label %503, label %._crit_edge64, !llvm.loop !18

._crit_edge64:                                    ; preds = %503
  br label %525

525:                                              ; preds = %._crit_edge64, %460
  %.lcssa = phi double [ %523, %._crit_edge64 ], [ 0.000000e+00, %460 ]
  %526 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %527 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %528 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %529 = load double, ptr @nulltime, align 8
  %530 = fneg double %529
  %531 = call double @llvm.fmuladd.f64(double %527, double %528, double %530)
  store double %531, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %532 = load double, ptr @piref, align 8
  %533 = load double, ptr @three, align 8
  %534 = fdiv double %532, %533
  %535 = fmul double %534, %534
  %536 = load double, ptr @A6, align 8
  %537 = load double, ptr @A5, align 8
  %538 = call double @llvm.fmuladd.f64(double %536, double %535, double %537)
  %539 = load double, ptr @A4, align 8
  %540 = call double @llvm.fmuladd.f64(double %538, double %535, double %539)
  %541 = load double, ptr @A3, align 8
  %542 = call double @llvm.fmuladd.f64(double %540, double %535, double %541)
  %543 = load double, ptr @A2, align 8
  %544 = call double @llvm.fmuladd.f64(double %542, double %535, double %543)
  %545 = load double, ptr @A1, align 8
  %546 = call double @llvm.fmuladd.f64(double %544, double %535, double %545)
  %547 = load double, ptr @one, align 8
  %548 = call double @llvm.fmuladd.f64(double %546, double %535, double %547)
  %549 = fmul double %534, %548
  store double %549, ptr @sa, align 8
  %550 = load double, ptr @B6, align 8
  %551 = load double, ptr @B5, align 8
  %552 = call double @llvm.fmuladd.f64(double %550, double %535, double %551)
  %553 = load double, ptr @B4, align 8
  %554 = call double @llvm.fmuladd.f64(double %535, double %552, double %553)
  %555 = load double, ptr @B3, align 8
  %556 = call double @llvm.fmuladd.f64(double %535, double %554, double %555)
  %557 = load double, ptr @B2, align 8
  %558 = call double @llvm.fmuladd.f64(double %535, double %556, double %557)
  %559 = load double, ptr @B1, align 8
  %560 = call double @llvm.fmuladd.f64(double %535, double %558, double %559)
  %561 = call double @llvm.fmuladd.f64(double %535, double %560, double %547)
  store double %561, ptr @sb, align 8
  %562 = fmul double %549, %561
  %563 = fmul double %562, %561
  store double %563, ptr @sa, align 8
  %564 = fdiv double %531, 3.000000e+01
  store double %564, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %565 = load double, ptr @two, align 8
  %566 = call double @llvm.fmuladd.f64(double %565, double %.lcssa, double %563)
  %567 = fmul double %501, %566
  %568 = fdiv double %567, %565
  store double %568, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %569 = fadd double %568, f0xBFD2AAAAAAAAAAAB
  store double %569, ptr @sc, align 8
  %570 = fdiv double %547, %564
  store double %570, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %571 = fmul double %569, 1.000000e-30
  %572 = fmul double %531, 1.000000e-30
  %573 = fmul double %570, 1.000000e-30
  %574 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %571, double noundef %572, double noundef %573) #4
  %575 = load double, ptr @five, align 8
  %576 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %577 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %578 = fsub double %576, %577
  %579 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %580 = call double @llvm.fmuladd.f64(double %575, double %578, double %579)
  %581 = fdiv double %580, 5.200000e+01
  store double %581, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %582 = load double, ptr @one, align 8
  %583 = fdiv double %582, %581
  store double %583, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %584 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %585 = fadd double %584, %579
  %586 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %587 = fadd double %585, %586
  %588 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %589 = fadd double %587, %588
  %590 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %591 = fadd double %589, %590
  store double %591, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %592 = load double, ptr @four, align 8
  %593 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %594 = call double @llvm.fmuladd.f64(double %592, double %593, double %591)
  %595 = fdiv double %594, 1.520000e+02
  store double %595, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %596 = fdiv double %582, %595
  store double %596, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %591, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %597 = fadd double %591, %593
  %598 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %599 = fadd double %597, %598
  %600 = fdiv double %599, 1.460000e+02
  store double %600, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %601 = fdiv double %582, %600
  store double %601, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %602 = fadd double %579, %586
  %603 = fadd double %602, %590
  %604 = fadd double %603, %598
  %605 = fdiv double %604, 9.100000e+01
  store double %605, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %606 = fdiv double %582, %605
  store double %606, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar11 = call i32 @putchar(i32 10)
  %607 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %489) #4
  %608 = load double, ptr @nulltime, align 8
  %609 = fmul double %608, 1.000000e-30
  %610 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %609) #4
  %611 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %612 = fmul double %611, 1.000000e-30
  %613 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %612) #4
  %614 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %615 = fmul double %614, 1.000000e-30
  %616 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %615) #4
  %617 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %618 = fmul double %617, 1.000000e-30
  %619 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %618) #4
  %620 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %621 = fmul double %620, 1.000000e-30
  %622 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %621) #4
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
