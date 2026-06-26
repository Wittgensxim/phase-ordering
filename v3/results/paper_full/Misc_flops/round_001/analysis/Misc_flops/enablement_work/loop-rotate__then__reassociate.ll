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
  %16 = shl nsw i32 %15, 1
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
  %27 = fmul double %19, %26
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
  br i1 %44, label %45, label %7

45:                                               ; preds = %41
  %.lcssa16 = phi double [ %19, %41 ]
  %.lcssa9.lcssa = phi double [ %.lcssa9, %41 ]
  br label %46

..loopexit_crit_edge:                             ; preds = %7
  %split20 = phi double [ %8, %7 ]
  %split21 = phi double [ %9, %7 ]
  %split22 = phi i32 [ %10, %7 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %0
  %.lcssa14 = phi double [ %split20, %..loopexit_crit_edge ], [ undef, %0 ]
  %.lcssa12 = phi double [ %split21, %..loopexit_crit_edge ], [ undef, %0 ]
  %.lcssa10 = phi i32 [ %split22, %..loopexit_crit_edge ], [ 15625, %0 ]
  br label %46

46:                                               ; preds = %.loopexit, %45
  %47 = phi double [ %.lcssa9.lcssa, %45 ], [ %.lcssa14, %.loopexit ]
  %48 = phi double [ %.lcssa16, %45 ], [ %.lcssa12, %.loopexit ]
  %49 = phi i32 [ 512000000, %45 ], [ %.lcssa10, %.loopexit ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %50 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %51

51:                                               ; preds = %51, %46
  %52 = phi i32 [ %53, %51 ], [ 1, %46 ]
  %.not.not3 = icmp slt i32 %52, %49
  %53 = add nuw nsw i32 %52, 1
  br i1 %.not.not3, label %51, label %54, !llvm.loop !10

54:                                               ; preds = %51
  %55 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %56 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %57 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %58 = fmul double %56, %57
  %59 = fcmp olt double %58, 0.000000e+00
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %54
  %62 = phi double [ 0.000000e+00, %60 ], [ %58, %54 ]
  store double %62, ptr @nulltime, align 8
  %63 = load double, ptr @sa, align 8
  %64 = fneg double %62
  %65 = call double @llvm.fmuladd.f64(double %56, double %63, double %64)
  store double %65, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %66 = load double, ptr @D1, align 8
  %67 = load double, ptr @D2, align 8
  %68 = fadd double %66, %67
  %69 = load double, ptr @D3, align 8
  %70 = fadd double %68, %69
  %71 = load double, ptr @one, align 8
  %72 = fadd double %66, %71
  %73 = load double, ptr @E2, align 8
  %74 = fadd double %72, %73
  %75 = load double, ptr @E3, align 8
  %76 = fadd double %74, %75
  %77 = fdiv double %70, %76
  store double %77, ptr @sa, align 8
  store double %66, ptr @sb, align 8
  %78 = fdiv double %65, 1.400000e+01
  store double %78, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %79 = fadd double %66, %77
  %80 = load double, ptr @two, align 8
  %81 = call double @llvm.fmuladd.f64(double %80, double %47, double %79)
  %82 = fmul double %48, %81
  %83 = fdiv double %82, %80
  store double %83, ptr @sa, align 8
  %84 = fdiv double %71, %83
  store double %84, ptr @sb, align 8
  %85 = fptosi double %84 to i32
  %86 = mul nsw i32 %85, 40000
  %87 = sitofp i32 %86 to double
  %88 = load double, ptr @scale, align 8
  %89 = fdiv double %87, %88
  %90 = fptosi double %89 to i32
  %91 = fadd double %84, -2.520000e+01
  store double %91, ptr @sc, align 8
  %92 = fdiv double %71, %78
  store double %92, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %93 = fmul double %91, 1.000000e-30
  %94 = fmul double %65, 1.000000e-30
  %95 = fmul double %92, 1.000000e-30
  %96 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %93, double noundef %94, double noundef %95) #4
  store i32 %90, ptr %2, align 4
  %97 = load double, ptr @five, align 8
  %98 = fneg double %97
  %99 = load double, ptr @one, align 8
  %100 = fneg double %99
  store double %100, ptr @sa, align 8
  %101 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not23 = icmp sgt i32 1, %90
  br i1 %.not23, label %109, label %.lr.ph25

.lr.ph25:                                         ; preds = %61
  br label %102

102:                                              ; preds = %.lr.ph25, %102
  %103 = phi i32 [ 1, %.lr.ph25 ], [ %108, %102 ]
  %104 = phi double [ %98, %.lr.ph25 ], [ %105, %102 ]
  %105 = fneg double %104
  %106 = load double, ptr @sa, align 8
  %107 = fsub double %106, %104
  store double %107, ptr @sa, align 8
  %108 = add nuw nsw i32 %103, 1
  %.not = icmp sgt i32 %108, %90
  br i1 %.not, label %._crit_edge26, label %102, !llvm.loop !11

._crit_edge26:                                    ; preds = %102
  %split27 = phi double [ %105, %102 ]
  br label %109

109:                                              ; preds = %._crit_edge26, %61
  %.lcssa8 = phi double [ %split27, %._crit_edge26 ], [ %98, %61 ]
  %110 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %111 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %112 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %113 = fmul double %111, %112
  %114 = fcmp olt double %113, 0.000000e+00
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %116

116:                                              ; preds = %115, %109
  %storemerge = phi double [ 0.000000e+00, %115 ], [ %113, %109 ]
  store double %storemerge, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %117 = sitofp i32 %90 to double
  store double %117, ptr @sc, align 8
  %118 = load double, ptr @sa, align 8
  store double 0.000000e+00, ptr %1, align 8
  %119 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not428 = icmp sgt i32 1, %90
  br i1 %.not428, label %138, label %.lr.ph30

.lr.ph30:                                         ; preds = %116
  br label %120

120:                                              ; preds = %.lr.ph30, %120
  %121 = phi i32 [ 1, %.lr.ph30 ], [ %137, %120 ]
  %122 = phi double [ 0.000000e+00, %.lr.ph30 ], [ %132, %120 ]
  %123 = phi double [ 0.000000e+00, %.lr.ph30 ], [ %133, %120 ]
  %124 = phi double [ %.lcssa8, %.lr.ph30 ], [ %126, %120 ]
  %125 = phi double [ %118, %.lr.ph30 ], [ %130, %120 ]
  %126 = fneg double %124
  %127 = load double, ptr @sa, align 8
  %128 = fsub double %127, %124
  store double %128, ptr @sa, align 8
  %129 = load double, ptr @two, align 8
  %130 = fadd double %125, %129
  %131 = fsub double %126, %130
  %132 = fadd double %122, %131
  %133 = call double @llvm.fmuladd.f64(double %124, double %130, double %123)
  %134 = load double, ptr %1, align 8
  %135 = fdiv double %124, %130
  %136 = fsub double %134, %135
  store double %136, ptr %1, align 8
  %137 = add nuw nsw i32 %121, 1
  %.not4 = icmp sgt i32 %137, %90
  br i1 %.not4, label %._crit_edge31, label %120, !llvm.loop !12

._crit_edge31:                                    ; preds = %120
  %split32 = phi double [ %133, %120 ]
  %split33 = phi double [ %132, %120 ]
  br label %138

138:                                              ; preds = %._crit_edge31, %116
  %.lcssa7 = phi double [ %split32, %._crit_edge31 ], [ 0.000000e+00, %116 ]
  %.lcssa6 = phi double [ %split33, %._crit_edge31 ], [ 0.000000e+00, %116 ]
  %139 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %140 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %141 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %142 = fmul double %140, %141
  store double %142, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %143 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %144 = fsub double %142, %143
  %145 = fdiv double %144, 7.000000e+00
  store double %145, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %146 = load double, ptr @sa, align 8
  %147 = fmul double %.lcssa6, %146
  %148 = load double, ptr @sc, align 8
  %149 = fdiv double %147, %148
  %150 = fptosi double %149 to i32
  store i32 %150, ptr %2, align 4
  %151 = load double, ptr @four, align 8
  %152 = load double, ptr %1, align 8
  %153 = fmul double %151, %152
  %154 = load double, ptr @five, align 8
  %155 = fdiv double %153, %154
  store double %155, ptr @sa, align 8
  %156 = fdiv double %154, %.lcssa7
  %157 = fadd double %155, %156
  store double %157, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %158 = fmul double %.lcssa7, %.lcssa7
  %159 = fmul double %.lcssa7, %158
  %160 = fdiv double 3.125000e+01, %159
  %161 = fsub double %157, %160
  store double %161, ptr @piprg, align 8
  %162 = load double, ptr @piref, align 8
  %163 = fsub double %161, %162
  store double %163, ptr @pierr, align 8
  %164 = load double, ptr @one, align 8
  %165 = fdiv double %164, %145
  store double %165, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %166 = fmul double %163, 1.000000e-30
  %167 = fmul double %144, 1.000000e-30
  %168 = fmul double %165, 1.000000e-30
  %169 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %166, double noundef %167, double noundef %168) #4
  %170 = load double, ptr @piref, align 8
  %171 = load double, ptr @three, align 8
  %172 = sitofp i32 %150 to double
  %173 = fmul double %172, %171
  %174 = fdiv double %170, %173
  %175 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not5.not34 = icmp slt i32 1, %150
  br i1 %.not5.not34, label %.lr.ph36, label %200

.lr.ph36:                                         ; preds = %138
  br label %176

176:                                              ; preds = %.lr.ph36, %176
  %177 = phi i32 [ 1, %.lr.ph36 ], [ %199, %176 ]
  %178 = phi double [ 0.000000e+00, %.lr.ph36 ], [ %198, %176 ]
  %179 = phi double [ 0.000000e+00, %.lr.ph36 ], [ %181, %176 ]
  %180 = load double, ptr @one, align 8
  %181 = fadd double %179, %180
  %182 = fmul double %174, %181
  %183 = fmul double %182, %182
  store double %183, ptr %1, align 8
  %184 = load double, ptr @A6, align 8
  %185 = load double, ptr @A5, align 8
  %186 = fneg double %185
  %187 = call double @llvm.fmuladd.f64(double %184, double %183, double %186)
  %188 = load double, ptr @A4, align 8
  %189 = call double @llvm.fmuladd.f64(double %187, double %183, double %188)
  %190 = load double, ptr @A3, align 8
  %191 = fneg double %190
  %192 = call double @llvm.fmuladd.f64(double %189, double %183, double %191)
  %193 = load double, ptr @A2, align 8
  %194 = call double @llvm.fmuladd.f64(double %192, double %183, double %193)
  %195 = load double, ptr @A1, align 8
  %196 = call double @llvm.fmuladd.f64(double %194, double %183, double %195)
  %197 = call double @llvm.fmuladd.f64(double %196, double %183, double %180)
  %198 = call double @llvm.fmuladd.f64(double %182, double %197, double %178)
  %199 = add nuw nsw i32 %177, 1
  %.not5.not = icmp slt i32 %199, %150
  br i1 %.not5.not, label %176, label %._crit_edge37, !llvm.loop !13

._crit_edge37:                                    ; preds = %176
  %split38 = phi double [ %198, %176 ]
  br label %200

200:                                              ; preds = %._crit_edge37, %138
  %.lcssa5 = phi double [ %split38, %._crit_edge37 ], [ 0.000000e+00, %138 ]
  %201 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %202 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %203 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %204 = load double, ptr @nulltime, align 8
  %205 = fneg double %204
  %206 = call double @llvm.fmuladd.f64(double %202, double %203, double %205)
  store double %206, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %207 = load double, ptr @piref, align 8
  %208 = load double, ptr @three, align 8
  %209 = fdiv double %207, %208
  %210 = fmul double %209, %209
  store double %210, ptr %1, align 8
  %211 = load double, ptr @A6, align 8
  %212 = load double, ptr @A5, align 8
  %213 = fneg double %212
  %214 = call double @llvm.fmuladd.f64(double %211, double %210, double %213)
  %215 = load double, ptr @A4, align 8
  %216 = call double @llvm.fmuladd.f64(double %214, double %210, double %215)
  %217 = load double, ptr @A3, align 8
  %218 = fneg double %217
  %219 = call double @llvm.fmuladd.f64(double %216, double %210, double %218)
  %220 = load double, ptr @A2, align 8
  %221 = call double @llvm.fmuladd.f64(double %219, double %210, double %220)
  %222 = load double, ptr @A1, align 8
  %223 = call double @llvm.fmuladd.f64(double %221, double %210, double %222)
  %224 = load double, ptr @one, align 8
  %225 = call double @llvm.fmuladd.f64(double %223, double %210, double %224)
  %226 = fmul double %209, %225
  store double %226, ptr @sa, align 8
  %227 = fdiv double %206, 1.700000e+01
  store double %227, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %228 = load double, ptr @two, align 8
  %229 = call double @llvm.fmuladd.f64(double %228, double %.lcssa5, double %226)
  %230 = fmul double %174, %229
  %231 = fdiv double %230, %228
  store double %231, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %232 = fadd double %231, -5.000000e-01
  store double %232, ptr @sc, align 8
  %233 = fdiv double %224, %227
  store double %233, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %234 = fmul double %232, 1.000000e-30
  %235 = fmul double %206, 1.000000e-30
  %236 = fmul double %233, 1.000000e-30
  %237 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %234, double noundef %235, double noundef %236) #4
  %238 = load double, ptr @A3, align 8
  %239 = fneg double %238
  store double %239, ptr @A3, align 8
  %240 = load double, ptr @A5, align 8
  %241 = fneg double %240
  store double %241, ptr @A5, align 8
  %242 = load double, ptr @piref, align 8
  %243 = load double, ptr @three, align 8
  %244 = fmul double %172, %243
  %245 = fdiv double %242, %244
  %246 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not6.not39 = icmp slt i32 1, %150
  br i1 %.not6.not39, label %.lr.ph41, label %268

.lr.ph41:                                         ; preds = %200
  br label %247

247:                                              ; preds = %.lr.ph41, %247
  %248 = phi i32 [ 1, %.lr.ph41 ], [ %267, %247 ]
  %249 = phi double [ 0.000000e+00, %.lr.ph41 ], [ %266, %247 ]
  %250 = uitofp nneg i32 %248 to double
  %251 = fmul double %245, %250
  %252 = fmul double %251, %251
  store double %252, ptr %1, align 8
  %253 = load double, ptr @B6, align 8
  %254 = load double, ptr @B5, align 8
  %255 = call double @llvm.fmuladd.f64(double %253, double %252, double %254)
  %256 = load double, ptr @B4, align 8
  %257 = call double @llvm.fmuladd.f64(double %252, double %255, double %256)
  %258 = load double, ptr @B3, align 8
  %259 = call double @llvm.fmuladd.f64(double %252, double %257, double %258)
  %260 = load double, ptr @B2, align 8
  %261 = call double @llvm.fmuladd.f64(double %252, double %259, double %260)
  %262 = load double, ptr @B1, align 8
  %263 = call double @llvm.fmuladd.f64(double %252, double %261, double %262)
  %264 = call double @llvm.fmuladd.f64(double %252, double %263, double %249)
  %265 = load double, ptr @one, align 8
  %266 = fadd double %265, %264
  %267 = add nuw nsw i32 %248, 1
  %.not6.not = icmp slt i32 %267, %150
  br i1 %.not6.not, label %247, label %._crit_edge42, !llvm.loop !14

._crit_edge42:                                    ; preds = %247
  %split43 = phi double [ %266, %247 ]
  br label %268

268:                                              ; preds = %._crit_edge42, %200
  %.lcssa4 = phi double [ %split43, %._crit_edge42 ], [ 0.000000e+00, %200 ]
  %269 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %270 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %271 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %272 = load double, ptr @nulltime, align 8
  %273 = fneg double %272
  %274 = call double @llvm.fmuladd.f64(double %270, double %271, double %273)
  store double %274, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %275 = load double, ptr @piref, align 8
  %276 = load double, ptr @three, align 8
  %277 = fdiv double %275, %276
  %278 = fmul double %277, %277
  store double %278, ptr %1, align 8
  %279 = load double, ptr @B6, align 8
  %280 = load double, ptr @B5, align 8
  %281 = call double @llvm.fmuladd.f64(double %279, double %278, double %280)
  %282 = load double, ptr @B4, align 8
  %283 = call double @llvm.fmuladd.f64(double %278, double %281, double %282)
  %284 = load double, ptr @B3, align 8
  %285 = call double @llvm.fmuladd.f64(double %278, double %283, double %284)
  %286 = load double, ptr @B2, align 8
  %287 = call double @llvm.fmuladd.f64(double %278, double %285, double %286)
  %288 = load double, ptr @B1, align 8
  %289 = call double @llvm.fmuladd.f64(double %278, double %287, double %288)
  %290 = load double, ptr @one, align 8
  %291 = call double @llvm.fmuladd.f64(double %278, double %289, double %290)
  store double %291, ptr @sa, align 8
  %292 = fdiv double %274, 1.500000e+01
  store double %292, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %293 = fadd double %290, %291
  %294 = load double, ptr @two, align 8
  %295 = call double @llvm.fmuladd.f64(double %294, double %.lcssa4, double %293)
  %296 = fmul double %245, %295
  %297 = fdiv double %296, %294
  store double %297, ptr @sa, align 8
  store double %278, ptr %1, align 8
  %298 = load double, ptr @A6, align 8
  %299 = load double, ptr @A5, align 8
  %300 = call double @llvm.fmuladd.f64(double %298, double %278, double %299)
  %301 = load double, ptr @A4, align 8
  %302 = call double @llvm.fmuladd.f64(double %300, double %278, double %301)
  %303 = load double, ptr @A3, align 8
  %304 = call double @llvm.fmuladd.f64(double %302, double %278, double %303)
  %305 = load double, ptr @A2, align 8
  %306 = call double @llvm.fmuladd.f64(double %304, double %278, double %305)
  %307 = load double, ptr @A1, align 8
  %308 = call double @llvm.fmuladd.f64(double %306, double %278, double %307)
  %309 = load double, ptr @A0, align 8
  %310 = call double @llvm.fmuladd.f64(double %308, double %278, double %309)
  %311 = fmul double %277, %310
  store double %311, ptr @sb, align 8
  %312 = fsub double %297, %311
  store double %312, ptr @sc, align 8
  %313 = fdiv double %290, %292
  store double %313, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %314 = fmul double %312, 1.000000e-30
  %315 = fmul double %274, 1.000000e-30
  %316 = fmul double %313, 1.000000e-30
  %317 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %314, double noundef %315, double noundef %316) #4
  %318 = load double, ptr @piref, align 8
  %319 = load double, ptr @three, align 8
  %320 = fmul double %172, %319
  %321 = fdiv double %318, %320
  %322 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not7.not44 = icmp slt i32 1, %150
  br i1 %.not7.not44, label %.lr.ph46, label %358

.lr.ph46:                                         ; preds = %268
  br label %323

323:                                              ; preds = %.lr.ph46, %323
  %324 = phi i32 [ 1, %.lr.ph46 ], [ %357, %323 ]
  %325 = phi double [ 0.000000e+00, %.lr.ph46 ], [ %356, %323 ]
  %326 = uitofp nneg i32 %324 to double
  %327 = fmul double %321, %326
  %328 = fmul double %327, %327
  store double %328, ptr %1, align 8
  %329 = load double, ptr @A6, align 8
  %330 = load double, ptr @A5, align 8
  %331 = call double @llvm.fmuladd.f64(double %329, double %328, double %330)
  %332 = load double, ptr @A4, align 8
  %333 = call double @llvm.fmuladd.f64(double %331, double %328, double %332)
  %334 = load double, ptr @A3, align 8
  %335 = call double @llvm.fmuladd.f64(double %333, double %328, double %334)
  %336 = load double, ptr @A2, align 8
  %337 = call double @llvm.fmuladd.f64(double %335, double %328, double %336)
  %338 = load double, ptr @A1, align 8
  %339 = call double @llvm.fmuladd.f64(double %337, double %328, double %338)
  %340 = load double, ptr @one, align 8
  %341 = call double @llvm.fmuladd.f64(double %339, double %328, double %340)
  %342 = fmul double %327, %341
  %343 = load double, ptr @B6, align 8
  %344 = load double, ptr @B5, align 8
  %345 = call double @llvm.fmuladd.f64(double %343, double %328, double %344)
  %346 = load double, ptr @B4, align 8
  %347 = call double @llvm.fmuladd.f64(double %328, double %345, double %346)
  %348 = load double, ptr @B3, align 8
  %349 = call double @llvm.fmuladd.f64(double %328, double %347, double %348)
  %350 = load double, ptr @B2, align 8
  %351 = call double @llvm.fmuladd.f64(double %328, double %349, double %350)
  %352 = load double, ptr @B1, align 8
  %353 = call double @llvm.fmuladd.f64(double %328, double %351, double %352)
  %354 = call double @llvm.fmuladd.f64(double %328, double %353, double %340)
  %355 = fdiv double %342, %354
  %356 = fadd double %325, %355
  %357 = add nuw nsw i32 %324, 1
  %.not7.not = icmp slt i32 %357, %150
  br i1 %.not7.not, label %323, label %._crit_edge47, !llvm.loop !15

._crit_edge47:                                    ; preds = %323
  %split48 = phi double [ %356, %323 ]
  br label %358

358:                                              ; preds = %._crit_edge47, %268
  %.lcssa3 = phi double [ %split48, %._crit_edge47 ], [ 0.000000e+00, %268 ]
  %359 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %360 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %361 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %362 = load double, ptr @nulltime, align 8
  %363 = fneg double %362
  %364 = call double @llvm.fmuladd.f64(double %360, double %361, double %363)
  store double %364, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %365 = load double, ptr @piref, align 8
  %366 = load double, ptr @three, align 8
  %367 = fdiv double %365, %366
  %368 = fmul double %367, %367
  store double %368, ptr %1, align 8
  %369 = load double, ptr @A6, align 8
  %370 = load double, ptr @A5, align 8
  %371 = call double @llvm.fmuladd.f64(double %369, double %368, double %370)
  %372 = load double, ptr @A4, align 8
  %373 = call double @llvm.fmuladd.f64(double %371, double %368, double %372)
  %374 = load double, ptr @A3, align 8
  %375 = call double @llvm.fmuladd.f64(double %373, double %368, double %374)
  %376 = load double, ptr @A2, align 8
  %377 = call double @llvm.fmuladd.f64(double %375, double %368, double %376)
  %378 = load double, ptr @A1, align 8
  %379 = call double @llvm.fmuladd.f64(double %377, double %368, double %378)
  %380 = load double, ptr @one, align 8
  %381 = call double @llvm.fmuladd.f64(double %379, double %368, double %380)
  %382 = fmul double %367, %381
  store double %382, ptr @sa, align 8
  %383 = load double, ptr @B6, align 8
  %384 = load double, ptr @B5, align 8
  %385 = call double @llvm.fmuladd.f64(double %383, double %368, double %384)
  %386 = load double, ptr @B4, align 8
  %387 = call double @llvm.fmuladd.f64(double %368, double %385, double %386)
  %388 = load double, ptr @B3, align 8
  %389 = call double @llvm.fmuladd.f64(double %368, double %387, double %388)
  %390 = load double, ptr @B2, align 8
  %391 = call double @llvm.fmuladd.f64(double %368, double %389, double %390)
  %392 = load double, ptr @B1, align 8
  %393 = call double @llvm.fmuladd.f64(double %368, double %391, double %392)
  %394 = call double @llvm.fmuladd.f64(double %368, double %393, double %380)
  store double %394, ptr @sb, align 8
  %395 = fdiv double %382, %394
  store double %395, ptr @sa, align 8
  %396 = fdiv double %364, 2.900000e+01
  store double %396, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %397 = load double, ptr @two, align 8
  %398 = call double @llvm.fmuladd.f64(double %397, double %.lcssa3, double %395)
  %399 = fmul double %321, %398
  %400 = fdiv double %399, %397
  store double %400, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %401 = fadd double %400, f0xBFE62E42FEFA39EF
  store double %401, ptr @sc, align 8
  %402 = fdiv double %380, %396
  store double %402, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %403 = fmul double %401, 1.000000e-30
  %404 = fmul double %364, 1.000000e-30
  %405 = fmul double %402, 1.000000e-30
  %406 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %403, double noundef %404, double noundef %405) #4
  %407 = load double, ptr @piref, align 8
  %408 = load double, ptr @four, align 8
  %409 = fmul double %172, %408
  %410 = fdiv double %407, %409
  %411 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not8.not49 = icmp slt i32 1, %150
  br i1 %.not8.not49, label %.lr.ph51, label %446

.lr.ph51:                                         ; preds = %358
  br label %412

412:                                              ; preds = %.lr.ph51, %412
  %413 = phi i32 [ 1, %.lr.ph51 ], [ %445, %412 ]
  %414 = phi double [ 0.000000e+00, %.lr.ph51 ], [ %444, %412 ]
  %415 = uitofp nneg i32 %413 to double
  %416 = fmul double %410, %415
  %417 = fmul double %416, %416
  store double %417, ptr %1, align 8
  %418 = load double, ptr @A6, align 8
  %419 = load double, ptr @A5, align 8
  %420 = call double @llvm.fmuladd.f64(double %418, double %417, double %419)
  %421 = load double, ptr @A4, align 8
  %422 = call double @llvm.fmuladd.f64(double %420, double %417, double %421)
  %423 = load double, ptr @A3, align 8
  %424 = call double @llvm.fmuladd.f64(double %422, double %417, double %423)
  %425 = load double, ptr @A2, align 8
  %426 = call double @llvm.fmuladd.f64(double %424, double %417, double %425)
  %427 = load double, ptr @A1, align 8
  %428 = call double @llvm.fmuladd.f64(double %426, double %417, double %427)
  %429 = load double, ptr @one, align 8
  %430 = call double @llvm.fmuladd.f64(double %428, double %417, double %429)
  %431 = fmul double %416, %430
  %432 = load double, ptr @B6, align 8
  %433 = load double, ptr @B5, align 8
  %434 = call double @llvm.fmuladd.f64(double %432, double %417, double %433)
  %435 = load double, ptr @B4, align 8
  %436 = call double @llvm.fmuladd.f64(double %417, double %434, double %435)
  %437 = load double, ptr @B3, align 8
  %438 = call double @llvm.fmuladd.f64(double %417, double %436, double %437)
  %439 = load double, ptr @B2, align 8
  %440 = call double @llvm.fmuladd.f64(double %417, double %438, double %439)
  %441 = load double, ptr @B1, align 8
  %442 = call double @llvm.fmuladd.f64(double %417, double %440, double %441)
  %443 = call double @llvm.fmuladd.f64(double %417, double %442, double %429)
  %444 = call double @llvm.fmuladd.f64(double %431, double %443, double %414)
  %445 = add nuw nsw i32 %413, 1
  %.not8.not = icmp slt i32 %445, %150
  br i1 %.not8.not, label %412, label %._crit_edge52, !llvm.loop !16

._crit_edge52:                                    ; preds = %412
  %split53 = phi double [ %444, %412 ]
  br label %446

446:                                              ; preds = %._crit_edge52, %358
  %.lcssa2 = phi double [ %split53, %._crit_edge52 ], [ 0.000000e+00, %358 ]
  %447 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %448 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %449 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %450 = load double, ptr @nulltime, align 8
  %451 = fneg double %450
  %452 = call double @llvm.fmuladd.f64(double %448, double %449, double %451)
  store double %452, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %453 = load double, ptr @piref, align 8
  %454 = load double, ptr @four, align 8
  %455 = fdiv double %453, %454
  %456 = fmul double %455, %455
  store double %456, ptr %1, align 8
  %457 = load double, ptr @A6, align 8
  %458 = load double, ptr @A5, align 8
  %459 = call double @llvm.fmuladd.f64(double %457, double %456, double %458)
  %460 = load double, ptr @A4, align 8
  %461 = call double @llvm.fmuladd.f64(double %459, double %456, double %460)
  %462 = load double, ptr @A3, align 8
  %463 = call double @llvm.fmuladd.f64(double %461, double %456, double %462)
  %464 = load double, ptr @A2, align 8
  %465 = call double @llvm.fmuladd.f64(double %463, double %456, double %464)
  %466 = load double, ptr @A1, align 8
  %467 = call double @llvm.fmuladd.f64(double %465, double %456, double %466)
  %468 = load double, ptr @one, align 8
  %469 = call double @llvm.fmuladd.f64(double %467, double %456, double %468)
  %470 = fmul double %455, %469
  store double %470, ptr @sa, align 8
  %471 = load double, ptr @B6, align 8
  %472 = load double, ptr @B5, align 8
  %473 = call double @llvm.fmuladd.f64(double %471, double %456, double %472)
  %474 = load double, ptr @B4, align 8
  %475 = call double @llvm.fmuladd.f64(double %456, double %473, double %474)
  %476 = load double, ptr @B3, align 8
  %477 = call double @llvm.fmuladd.f64(double %456, double %475, double %476)
  %478 = load double, ptr @B2, align 8
  %479 = call double @llvm.fmuladd.f64(double %456, double %477, double %478)
  %480 = load double, ptr @B1, align 8
  %481 = call double @llvm.fmuladd.f64(double %456, double %479, double %480)
  %482 = call double @llvm.fmuladd.f64(double %456, double %481, double %468)
  store double %482, ptr @sb, align 8
  %483 = fmul double %470, %482
  store double %483, ptr @sa, align 8
  %484 = fdiv double %452, 2.900000e+01
  store double %484, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %485 = load double, ptr @two, align 8
  %486 = call double @llvm.fmuladd.f64(double %485, double %.lcssa2, double %483)
  %487 = fmul double %410, %486
  %488 = fdiv double %487, %485
  store double %488, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %489 = fadd double %488, -2.500000e-01
  store double %489, ptr @sc, align 8
  %490 = fdiv double %468, %484
  store double %490, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %491 = fmul double %489, 1.000000e-30
  %492 = fmul double %452, 1.000000e-30
  %493 = fmul double %490, 1.000000e-30
  %494 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %491, double noundef %492, double noundef %493) #4
  %495 = load double, ptr @one, align 8
  store double %495, ptr %1, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %496 = fdiv double f0x40599541F7F192A4, %172
  %497 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not9.not54 = icmp slt i32 1, %150
  br i1 %.not9.not54, label %.lr.ph56, label %515

.lr.ph56:                                         ; preds = %446
  br label %498

498:                                              ; preds = %.lr.ph56, %498
  %499 = phi i32 [ 1, %.lr.ph56 ], [ %514, %498 ]
  %500 = phi double [ 0.000000e+00, %.lr.ph56 ], [ %513, %498 ]
  %501 = uitofp nneg i32 %499 to double
  %502 = fmul double %496, %501
  %503 = fmul double %502, %502
  %504 = load double, ptr %1, align 8
  %505 = fadd double %502, %504
  %506 = fdiv double %504, %505
  %507 = fsub double %500, %506
  %508 = fadd double %504, %503
  %509 = fdiv double %502, %508
  %510 = fsub double %507, %509
  %511 = call double @llvm.fmuladd.f64(double %502, double %503, double %504)
  %512 = fdiv double %503, %511
  %513 = fsub double %510, %512
  %514 = add nuw nsw i32 %499, 1
  %.not9.not = icmp slt i32 %514, %150
  br i1 %.not9.not, label %498, label %._crit_edge57, !llvm.loop !17

._crit_edge57:                                    ; preds = %498
  %split58 = phi double [ %513, %498 ]
  br label %515

515:                                              ; preds = %._crit_edge57, %446
  %.lcssa1 = phi double [ %split58, %._crit_edge57 ], [ 0.000000e+00, %446 ]
  %516 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %517 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %518 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %519 = load double, ptr @nulltime, align 8
  %520 = fneg double %519
  %521 = call double @llvm.fmuladd.f64(double %517, double %518, double %520)
  store double %521, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %522 = fdiv double %521, 1.200000e+01
  store double %522, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %523 = load double, ptr @sa, align 8
  %524 = fmul double %523, %523
  %525 = load double, ptr %1, align 8
  %526 = fneg double %525
  %527 = fadd double %523, %525
  %528 = fdiv double %525, %527
  %529 = fsub double %526, %528
  %530 = fadd double %524, %525
  %531 = fdiv double %523, %530
  %532 = fsub double %529, %531
  %533 = call double @llvm.fmuladd.f64(double %523, double %524, double %525)
  %534 = fdiv double %524, %533
  %535 = fsub double %532, %534
  store double %535, ptr @sa, align 8
  %536 = fmul nnan double %496, 1.800000e+01
  %537 = load double, ptr @two, align 8
  %538 = call double @llvm.fmuladd.f64(double %537, double %.lcssa1, double %535)
  %539 = fmul double %536, %538
  store double %539, ptr @sa, align 8
  %540 = fptosi double %539 to i32
  %541 = mul nsw i32 %540, -2000
  store i32 %541, ptr %2, align 4
  %542 = sitofp i32 %541 to double
  %543 = load double, ptr @scale, align 8
  %544 = fdiv double %542, %543
  %545 = fptosi double %544 to i32
  store i32 %545, ptr %2, align 4
  %546 = fadd double %539, 5.002000e+02
  store double %546, ptr @sc, align 8
  %547 = load double, ptr @one, align 8
  %548 = fdiv double %547, %522
  store double %548, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %549 = fmul double %546, 1.000000e-30
  %550 = fmul double %521, 1.000000e-30
  %551 = fmul double %548, 1.000000e-30
  %552 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %549, double noundef %550, double noundef %551) #4
  %553 = load double, ptr @piref, align 8
  %554 = load double, ptr @three, align 8
  %555 = sitofp i32 %545 to double
  %556 = fmul double %554, %555
  %557 = fdiv double %553, %556
  %558 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not10.not59 = icmp slt i32 1, %545
  br i1 %.not10.not59, label %.lr.ph61, label %594

.lr.ph61:                                         ; preds = %515
  br label %559

559:                                              ; preds = %.lr.ph61, %559
  %560 = phi i32 [ 1, %.lr.ph61 ], [ %593, %559 ]
  %561 = phi double [ 0.000000e+00, %.lr.ph61 ], [ %592, %559 ]
  %562 = uitofp nneg i32 %560 to double
  %563 = fmul double %557, %562
  %564 = fmul double %563, %563
  store double %564, ptr %1, align 8
  %565 = load double, ptr @B6, align 8
  %566 = load double, ptr @B5, align 8
  %567 = call double @llvm.fmuladd.f64(double %565, double %564, double %566)
  %568 = load double, ptr @B4, align 8
  %569 = call double @llvm.fmuladd.f64(double %564, double %567, double %568)
  %570 = load double, ptr @B3, align 8
  %571 = call double @llvm.fmuladd.f64(double %564, double %569, double %570)
  %572 = load double, ptr @B2, align 8
  %573 = call double @llvm.fmuladd.f64(double %564, double %571, double %572)
  %574 = load double, ptr @B1, align 8
  %575 = call double @llvm.fmuladd.f64(double %564, double %573, double %574)
  %576 = load double, ptr @one, align 8
  %577 = call double @llvm.fmuladd.f64(double %564, double %575, double %576)
  %578 = fmul double %577, %577
  %579 = fmul double %563, %578
  %580 = load double, ptr @A6, align 8
  %581 = load double, ptr @A5, align 8
  %582 = call double @llvm.fmuladd.f64(double %580, double %564, double %581)
  %583 = load double, ptr @A4, align 8
  %584 = call double @llvm.fmuladd.f64(double %582, double %564, double %583)
  %585 = load double, ptr @A3, align 8
  %586 = call double @llvm.fmuladd.f64(double %584, double %564, double %585)
  %587 = load double, ptr @A2, align 8
  %588 = call double @llvm.fmuladd.f64(double %586, double %564, double %587)
  %589 = load double, ptr @A1, align 8
  %590 = call double @llvm.fmuladd.f64(double %588, double %564, double %589)
  %591 = call double @llvm.fmuladd.f64(double %590, double %564, double %576)
  %592 = call double @llvm.fmuladd.f64(double %579, double %591, double %561)
  %593 = add nuw nsw i32 %560, 1
  %.not10.not = icmp slt i32 %593, %545
  br i1 %.not10.not, label %559, label %._crit_edge62, !llvm.loop !18

._crit_edge62:                                    ; preds = %559
  %split63 = phi double [ %592, %559 ]
  br label %594

594:                                              ; preds = %._crit_edge62, %515
  %.lcssa = phi double [ %split63, %._crit_edge62 ], [ 0.000000e+00, %515 ]
  %595 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %596 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %597 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %598 = load double, ptr @nulltime, align 8
  %599 = fneg double %598
  %600 = call double @llvm.fmuladd.f64(double %596, double %597, double %599)
  store double %600, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %601 = load double, ptr @piref, align 8
  %602 = load double, ptr @three, align 8
  %603 = fdiv double %601, %602
  %604 = fmul double %603, %603
  store double %604, ptr %1, align 8
  %605 = load double, ptr @A6, align 8
  %606 = load double, ptr @A5, align 8
  %607 = call double @llvm.fmuladd.f64(double %605, double %604, double %606)
  %608 = load double, ptr @A4, align 8
  %609 = call double @llvm.fmuladd.f64(double %607, double %604, double %608)
  %610 = load double, ptr @A3, align 8
  %611 = call double @llvm.fmuladd.f64(double %609, double %604, double %610)
  %612 = load double, ptr @A2, align 8
  %613 = call double @llvm.fmuladd.f64(double %611, double %604, double %612)
  %614 = load double, ptr @A1, align 8
  %615 = call double @llvm.fmuladd.f64(double %613, double %604, double %614)
  %616 = load double, ptr @one, align 8
  %617 = call double @llvm.fmuladd.f64(double %615, double %604, double %616)
  %618 = fmul double %603, %617
  store double %618, ptr @sa, align 8
  %619 = load double, ptr @B6, align 8
  %620 = load double, ptr @B5, align 8
  %621 = call double @llvm.fmuladd.f64(double %619, double %604, double %620)
  %622 = load double, ptr @B4, align 8
  %623 = call double @llvm.fmuladd.f64(double %604, double %621, double %622)
  %624 = load double, ptr @B3, align 8
  %625 = call double @llvm.fmuladd.f64(double %604, double %623, double %624)
  %626 = load double, ptr @B2, align 8
  %627 = call double @llvm.fmuladd.f64(double %604, double %625, double %626)
  %628 = load double, ptr @B1, align 8
  %629 = call double @llvm.fmuladd.f64(double %604, double %627, double %628)
  %630 = call double @llvm.fmuladd.f64(double %604, double %629, double %616)
  store double %630, ptr @sb, align 8
  %631 = fmul double %618, %630
  %632 = fmul double %630, %631
  store double %632, ptr @sa, align 8
  %633 = fdiv double %600, 3.000000e+01
  store double %633, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %634 = load double, ptr @two, align 8
  %635 = call double @llvm.fmuladd.f64(double %634, double %.lcssa, double %632)
  %636 = fmul double %557, %635
  %637 = fdiv double %636, %634
  store double %637, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %638 = fadd double %637, f0xBFD2AAAAAAAAAAAB
  store double %638, ptr @sc, align 8
  %639 = fdiv double %616, %633
  store double %639, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %640 = fmul double %638, 1.000000e-30
  %641 = fmul double %600, 1.000000e-30
  %642 = fmul double %639, 1.000000e-30
  %643 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %640, double noundef %641, double noundef %642) #4
  %644 = load double, ptr @five, align 8
  %645 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %646 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %647 = fsub double %645, %646
  %648 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %649 = call double @llvm.fmuladd.f64(double %644, double %647, double %648)
  %650 = fdiv double %649, 5.200000e+01
  store double %650, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %651 = load double, ptr @one, align 8
  %652 = fdiv double %651, %650
  store double %652, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %653 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %654 = fadd double %648, %653
  %655 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %656 = fadd double %654, %655
  %657 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %658 = fadd double %656, %657
  %659 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %660 = fadd double %658, %659
  store double %660, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %661 = load double, ptr @four, align 8
  %662 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %663 = call double @llvm.fmuladd.f64(double %661, double %662, double %660)
  %664 = fdiv double %663, 1.520000e+02
  store double %664, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %665 = fdiv double %651, %664
  store double %665, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %660, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %666 = fadd double %660, %662
  %667 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %668 = fadd double %666, %667
  %669 = fdiv double %668, 1.460000e+02
  store double %669, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %670 = fdiv double %651, %669
  store double %670, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %671 = fadd double %648, %655
  %672 = fadd double %671, %659
  %673 = fadd double %672, %667
  %674 = fdiv double %673, 9.100000e+01
  store double %674, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %675 = fdiv double %651, %674
  store double %675, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar11 = call i32 @putchar(i32 10)
  %676 = load i32, ptr %2, align 4
  %677 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %676) #4
  %678 = load double, ptr @nulltime, align 8
  %679 = fmul double %678, 1.000000e-30
  %680 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %679) #4
  %681 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %682 = fmul double %681, 1.000000e-30
  %683 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %682) #4
  %684 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %685 = fmul double %684, 1.000000e-30
  %686 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %685) #4
  %687 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %688 = fmul double %687, 1.000000e-30
  %689 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %688) #4
  %690 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %691 = fmul double %690, 1.000000e-30
  %692 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %691) #4
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
