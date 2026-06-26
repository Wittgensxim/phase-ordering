; ModuleID = 'results\paper_full\Misc_flops\Misc_flops.ll'
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
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %putchar = call i32 @putchar(i32 10)
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  store i32 15625, ptr %6, align 4
  store double 6.400000e+01, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  store double 1.000000e+00, ptr @TLimit, align 8
  store i32 512000000, ptr %7, align 4
  store double f0x400921FB54442D18, ptr @piref, align 8
  store double 1.000000e+00, ptr @one, align 8
  store double 2.000000e+00, ptr @two, align 8
  store double 3.000000e+00, ptr @three, align 8
  store double 4.000000e+00, ptr @four, align 8
  store double 5.000000e+00, ptr @five, align 8
  store double 1.000000e+00, ptr @scale, align 8
  %puts1 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  %11 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %12 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %13 = load i32, ptr %6, align 4
  store i32 %13, ptr %10, align 4
  store double 0.000000e+00, ptr @sa, align 8
  %14 = load double, ptr @sa, align 8
  %15 = load double, ptr @TLimit, align 8
  %16 = fcmp olt double %14, %15
  br i1 %16, label %.lr.ph25, label %.loopexit

.lr.ph25:                                         ; preds = %0
  br label %21

17:                                               ; preds = %55
  %18 = load double, ptr @sa, align 8
  %19 = load double, ptr @TLimit, align 8
  %20 = fcmp olt double %18, %19
  br i1 %20, label %21, label %..loopexit_crit_edge, !llvm.loop !7

21:                                               ; preds = %.lr.ph25, %17
  %22 = load i32, ptr %10, align 4
  %23 = shl nsw i32 %22, 1
  store i32 %23, ptr %10, align 4
  %24 = load double, ptr @one, align 8
  %25 = sitofp i32 %23 to double
  %26 = fdiv double %24, %25
  store double %26, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  store double %24, ptr %4, align 8
  %27 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  store i32 1, ptr %8, align 4
  %28 = load i32, ptr %10, align 4
  %.not.not23 = icmp slt i32 1, %28
  br i1 %.not.not23, label %.lr.ph, label %55

.lr.ph:                                           ; preds = %21
  br label %29

29:                                               ; preds = %.lr.ph, %51
  %30 = load double, ptr %3, align 8
  %31 = load double, ptr %4, align 8
  %32 = fadd double %30, %31
  store double %32, ptr %3, align 8
  %33 = load double, ptr %5, align 8
  %34 = fmul double %32, %33
  store double %34, ptr %2, align 8
  %35 = load double, ptr %1, align 8
  %36 = load double, ptr @D1, align 8
  %37 = load double, ptr @D2, align 8
  %38 = load double, ptr @D3, align 8
  %39 = call double @llvm.fmuladd.f64(double %34, double %38, double %37)
  %40 = call double @llvm.fmuladd.f64(double %34, double %39, double %36)
  %41 = load double, ptr %4, align 8
  %42 = load double, ptr %2, align 8
  %43 = load double, ptr @D1, align 8
  %44 = load double, ptr @E2, align 8
  %45 = load double, ptr @E3, align 8
  %46 = call double @llvm.fmuladd.f64(double %42, double %45, double %44)
  %47 = call double @llvm.fmuladd.f64(double %42, double %46, double %43)
  %48 = call double @llvm.fmuladd.f64(double %42, double %47, double %41)
  %49 = fdiv double %40, %48
  %50 = fadd double %35, %49
  store double %50, ptr %1, align 8
  br label %51

51:                                               ; preds = %29
  %52 = load i32, ptr %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %8, align 4
  %54 = load i32, ptr %10, align 4
  %.not.not = icmp slt i32 %53, %54
  br i1 %.not.not, label %29, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %51
  br label %55

55:                                               ; preds = %._crit_edge, %21
  %56 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %57 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %57, ptr @sa, align 8
  %58 = load i32, ptr %10, align 4
  %59 = load i32, ptr %7, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %17

61:                                               ; preds = %55
  br label %62

..loopexit_crit_edge:                             ; preds = %17
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %0
  br label %62

62:                                               ; preds = %.loopexit, %61
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %63 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  store i32 1, ptr %8, align 4
  %64 = load i32, ptr %10, align 4
  %.not.not426 = icmp slt i32 1, %64
  br i1 %.not.not426, label %.lr.ph28, label %70

.lr.ph28:                                         ; preds = %62
  br label %65

65:                                               ; preds = %.lr.ph28, %66
  br label %66

66:                                               ; preds = %65
  %67 = load i32, ptr %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, ptr %8, align 4
  %69 = load i32, ptr %10, align 4
  %.not.not4 = icmp slt i32 %68, %69
  br i1 %.not.not4, label %65, label %._crit_edge29, !llvm.loop !10

._crit_edge29:                                    ; preds = %66
  br label %70

70:                                               ; preds = %._crit_edge29, %62
  %71 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %72 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %73 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %74 = fmul double %72, %73
  %75 = fcmp olt double %74, 0.000000e+00
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %77

77:                                               ; preds = %76, %70
  %storemerge5 = phi double [ 0.000000e+00, %76 ], [ %74, %70 ]
  store double %storemerge5, ptr @nulltime, align 8
  %78 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %79 = load double, ptr @sa, align 8
  %80 = fneg double %storemerge5
  %81 = call double @llvm.fmuladd.f64(double %78, double %79, double %80)
  store double %81, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %82 = load double, ptr @D1, align 8
  %83 = load double, ptr @D2, align 8
  %84 = fadd double %82, %83
  %85 = load double, ptr @D3, align 8
  %86 = fadd double %84, %85
  %87 = load double, ptr @one, align 8
  %88 = fadd double %87, %82
  %89 = load double, ptr @E2, align 8
  %90 = fadd double %88, %89
  %91 = load double, ptr @E3, align 8
  %92 = fadd double %90, %91
  %93 = fdiv double %86, %92
  store double %93, ptr @sa, align 8
  %94 = load double, ptr @D1, align 8
  store double %94, ptr @sb, align 8
  %95 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %96 = fdiv double %95, 1.400000e+01
  store double %96, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %97 = load double, ptr %5, align 8
  %98 = load double, ptr @sa, align 8
  %99 = fadd double %98, %94
  %100 = load double, ptr @two, align 8
  %101 = load double, ptr %1, align 8
  %102 = call double @llvm.fmuladd.f64(double %100, double %101, double %99)
  %103 = fmul double %97, %102
  %104 = fdiv double %103, %100
  store double %104, ptr @sa, align 8
  %105 = load double, ptr @one, align 8
  %106 = fdiv double %105, %104
  store double %106, ptr @sb, align 8
  %107 = fptosi double %106 to i32
  %108 = mul nsw i32 %107, 40000
  %109 = sitofp i32 %108 to double
  %110 = load double, ptr @scale, align 8
  %111 = fdiv double %109, %110
  %112 = fptosi double %111 to i32
  store i32 %112, ptr %10, align 4
  %113 = load double, ptr @sb, align 8
  %114 = fadd double %113, -2.520000e+01
  store double %114, ptr @sc, align 8
  %115 = load double, ptr @one, align 8
  %116 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %117 = fdiv double %115, %116
  store double %117, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %118 = fmul double %114, 1.000000e-30
  %119 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %120 = fmul double %119, 1.000000e-30
  %121 = fmul double %117, 1.000000e-30
  %122 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %118, double noundef %120, double noundef %121) #4
  %123 = load i32, ptr %10, align 4
  store i32 %123, ptr %9, align 4
  %124 = load double, ptr @five, align 8
  %125 = fneg double %124
  store double %125, ptr %1, align 8
  %126 = load double, ptr @one, align 8
  %127 = fneg double %126
  store double %127, ptr @sa, align 8
  %128 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  store i32 1, ptr %8, align 4
  %129 = load i32, ptr %9, align 4
  %.not30 = icmp sgt i32 1, %129
  br i1 %.not30, label %139, label %.lr.ph32

.lr.ph32:                                         ; preds = %77
  br label %130

130:                                              ; preds = %.lr.ph32, %135
  %131 = load double, ptr %1, align 8
  %132 = fneg double %131
  store double %132, ptr %1, align 8
  %133 = load double, ptr @sa, align 8
  %134 = fsub double %133, %131
  store double %134, ptr @sa, align 8
  br label %135

135:                                              ; preds = %130
  %136 = load i32, ptr %8, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, ptr %8, align 4
  %138 = load i32, ptr %9, align 4
  %.not = icmp sgt i32 %137, %138
  br i1 %.not, label %._crit_edge33, label %130, !llvm.loop !11

._crit_edge33:                                    ; preds = %135
  br label %139

139:                                              ; preds = %._crit_edge33, %77
  %140 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %141 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %142 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %143 = fmul double %141, %142
  %144 = fcmp olt double %143, 0.000000e+00
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  br label %146

146:                                              ; preds = %145, %139
  %storemerge7 = phi double [ 0.000000e+00, %145 ], [ %143, %139 ]
  store double %storemerge7, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %147 = load i32, ptr %9, align 4
  %148 = sitofp i32 %147 to double
  store double %148, ptr @sc, align 8
  %149 = load double, ptr @sa, align 8
  store double %149, ptr %2, align 8
  store double 0.000000e+00, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  %150 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  store i32 1, ptr %8, align 4
  %151 = load i32, ptr %9, align 4
  %.not934 = icmp sgt i32 1, %151
  br i1 %.not934, label %176, label %.lr.ph36

.lr.ph36:                                         ; preds = %146
  br label %152

152:                                              ; preds = %.lr.ph36, %172
  %153 = load double, ptr %1, align 8
  %154 = fneg double %153
  store double %154, ptr %1, align 8
  %155 = load double, ptr @sa, align 8
  %156 = fsub double %155, %153
  store double %156, ptr @sa, align 8
  %157 = load double, ptr %2, align 8
  %158 = load double, ptr @two, align 8
  %159 = fadd double %157, %158
  store double %159, ptr %2, align 8
  %160 = load double, ptr %5, align 8
  %161 = load double, ptr %1, align 8
  %162 = fsub double %161, %159
  %163 = fadd double %160, %162
  store double %163, ptr %5, align 8
  %164 = load double, ptr %3, align 8
  %165 = load double, ptr %2, align 8
  %166 = fneg double %161
  %167 = call double @llvm.fmuladd.f64(double %166, double %165, double %164)
  store double %167, ptr %3, align 8
  %168 = load double, ptr %4, align 8
  %169 = load double, ptr %1, align 8
  %170 = fdiv double %169, %165
  %171 = fadd double %168, %170
  store double %171, ptr %4, align 8
  br label %172

172:                                              ; preds = %152
  %173 = load i32, ptr %8, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, ptr %8, align 4
  %175 = load i32, ptr %9, align 4
  %.not9 = icmp sgt i32 %174, %175
  br i1 %.not9, label %._crit_edge37, label %152, !llvm.loop !12

._crit_edge37:                                    ; preds = %172
  br label %176

176:                                              ; preds = %._crit_edge37, %146
  %177 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %178 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %179 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %180 = fmul double %178, %179
  store double %180, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %181 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %182 = fsub double %180, %181
  %183 = fdiv double %182, 7.000000e+00
  store double %183, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %184 = load double, ptr @sa, align 8
  %185 = load double, ptr %5, align 8
  %186 = fmul double %184, %185
  %187 = load double, ptr @sc, align 8
  %188 = fdiv double %186, %187
  %189 = fptosi double %188 to i32
  store i32 %189, ptr %9, align 4
  %190 = load double, ptr @four, align 8
  %191 = load double, ptr %4, align 8
  %192 = fmul double %190, %191
  %193 = load double, ptr @five, align 8
  %194 = fdiv double %192, %193
  store double %194, ptr @sa, align 8
  %195 = load double, ptr %3, align 8
  %196 = fdiv double %193, %195
  %197 = fadd double %194, %196
  store double %197, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %198 = fmul double %195, %195
  %199 = fmul double %198, %195
  %200 = fdiv double 3.125000e+01, %199
  %201 = fsub double %197, %200
  store double %201, ptr @piprg, align 8
  %202 = load double, ptr @piref, align 8
  %203 = fsub double %201, %202
  store double %203, ptr @pierr, align 8
  %204 = load double, ptr @one, align 8
  %205 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %206 = fdiv double %204, %205
  store double %206, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %207 = fmul double %203, 1.000000e-30
  %208 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %209 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %210 = fsub double %208, %209
  %211 = fmul double %210, 1.000000e-30
  %212 = fmul double %206, 1.000000e-30
  %213 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %207, double noundef %211, double noundef %212) #4
  %214 = load double, ptr @piref, align 8
  %215 = load double, ptr @three, align 8
  %216 = load i32, ptr %9, align 4
  %217 = sitofp i32 %216 to double
  %218 = fmul double %215, %217
  %219 = fdiv double %214, %218
  store double %219, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %220 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  store i32 1, ptr %8, align 4
  %221 = load i32, ptr %9, align 4
  %.not11.not38 = icmp slt i32 1, %221
  br i1 %.not11.not38, label %.lr.ph40, label %252

.lr.ph40:                                         ; preds = %176
  br label %222

222:                                              ; preds = %.lr.ph40, %248
  %223 = load double, ptr %3, align 8
  %224 = load double, ptr @one, align 8
  %225 = fadd double %223, %224
  store double %225, ptr %3, align 8
  %226 = load double, ptr %5, align 8
  %227 = fmul double %225, %226
  store double %227, ptr %2, align 8
  %228 = fmul double %227, %227
  store double %228, ptr %4, align 8
  %229 = load double, ptr %1, align 8
  %230 = load double, ptr @A6, align 8
  %231 = load double, ptr @A5, align 8
  %232 = fneg double %231
  %233 = call double @llvm.fmuladd.f64(double %230, double %228, double %232)
  %234 = load double, ptr @A4, align 8
  %235 = call double @llvm.fmuladd.f64(double %233, double %228, double %234)
  %236 = load double, ptr %4, align 8
  %237 = load double, ptr @A3, align 8
  %238 = fneg double %237
  %239 = call double @llvm.fmuladd.f64(double %235, double %236, double %238)
  %240 = load double, ptr @A2, align 8
  %241 = call double @llvm.fmuladd.f64(double %239, double %236, double %240)
  %242 = load double, ptr @A1, align 8
  %243 = call double @llvm.fmuladd.f64(double %241, double %236, double %242)
  %244 = load double, ptr %4, align 8
  %245 = load double, ptr @one, align 8
  %246 = call double @llvm.fmuladd.f64(double %243, double %244, double %245)
  %247 = call double @llvm.fmuladd.f64(double %227, double %246, double %229)
  store double %247, ptr %1, align 8
  br label %248

248:                                              ; preds = %222
  %249 = load i32, ptr %8, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, ptr %8, align 4
  %251 = load i32, ptr %9, align 4
  %.not11.not = icmp slt i32 %250, %251
  br i1 %.not11.not, label %222, label %._crit_edge41, !llvm.loop !13

._crit_edge41:                                    ; preds = %248
  br label %252

252:                                              ; preds = %._crit_edge41, %176
  %253 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %254 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %255 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %256 = load double, ptr @nulltime, align 8
  %257 = fneg double %256
  %258 = call double @llvm.fmuladd.f64(double %254, double %255, double %257)
  store double %258, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %259 = load double, ptr @piref, align 8
  %260 = load double, ptr @three, align 8
  %261 = fdiv double %259, %260
  store double %261, ptr %2, align 8
  %262 = fmul double %261, %261
  store double %262, ptr %4, align 8
  %263 = load double, ptr @A6, align 8
  %264 = load double, ptr @A5, align 8
  %265 = fneg double %264
  %266 = call double @llvm.fmuladd.f64(double %263, double %262, double %265)
  %267 = load double, ptr @A4, align 8
  %268 = call double @llvm.fmuladd.f64(double %266, double %262, double %267)
  %269 = load double, ptr %4, align 8
  %270 = load double, ptr @A3, align 8
  %271 = fneg double %270
  %272 = call double @llvm.fmuladd.f64(double %268, double %269, double %271)
  %273 = load double, ptr @A2, align 8
  %274 = call double @llvm.fmuladd.f64(double %272, double %269, double %273)
  %275 = load double, ptr @A1, align 8
  %276 = call double @llvm.fmuladd.f64(double %274, double %269, double %275)
  %277 = load double, ptr %4, align 8
  %278 = load double, ptr @one, align 8
  %279 = call double @llvm.fmuladd.f64(double %276, double %277, double %278)
  %280 = fmul double %261, %279
  store double %280, ptr @sa, align 8
  %281 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %282 = fdiv double %281, 1.700000e+01
  store double %282, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %283 = load double, ptr %5, align 8
  %284 = load double, ptr @two, align 8
  %285 = load double, ptr %1, align 8
  %286 = call double @llvm.fmuladd.f64(double %284, double %285, double %280)
  %287 = fmul double %283, %286
  %288 = fdiv double %287, %284
  store double %288, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %289 = fadd double %288, -5.000000e-01
  store double %289, ptr @sc, align 8
  %290 = load double, ptr @one, align 8
  %291 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %292 = fdiv double %290, %291
  store double %292, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %293 = fmul double %289, 1.000000e-30
  %294 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %295 = fmul double %294, 1.000000e-30
  %296 = fmul double %292, 1.000000e-30
  %297 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %293, double noundef %295, double noundef %296) #4
  %298 = load double, ptr @A3, align 8
  %299 = fneg double %298
  store double %299, ptr @A3, align 8
  %300 = load double, ptr @A5, align 8
  %301 = fneg double %300
  store double %301, ptr @A5, align 8
  %302 = load double, ptr @piref, align 8
  %303 = load double, ptr @three, align 8
  %304 = load i32, ptr %9, align 4
  %305 = sitofp i32 %304 to double
  %306 = fmul double %303, %305
  %307 = fdiv double %302, %306
  store double %307, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %308 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  store i32 1, ptr %8, align 4
  %309 = load i32, ptr %9, align 4
  %.not13.not42 = icmp slt i32 1, %309
  br i1 %.not13.not42, label %.lr.ph44, label %335

.lr.ph44:                                         ; preds = %252
  br label %310

310:                                              ; preds = %.lr.ph44, %331
  %311 = load i32, ptr %8, align 4
  %312 = sitofp i32 %311 to double
  %313 = load double, ptr %5, align 8
  %314 = fmul double %313, %312
  store double %314, ptr %2, align 8
  %315 = fmul double %314, %314
  store double %315, ptr %4, align 8
  %316 = load double, ptr %1, align 8
  %317 = load double, ptr @B6, align 8
  %318 = load double, ptr @B5, align 8
  %319 = call double @llvm.fmuladd.f64(double %317, double %315, double %318)
  %320 = load double, ptr @B4, align 8
  %321 = call double @llvm.fmuladd.f64(double %315, double %319, double %320)
  %322 = load double, ptr @B3, align 8
  %323 = call double @llvm.fmuladd.f64(double %315, double %321, double %322)
  %324 = load double, ptr @B2, align 8
  %325 = call double @llvm.fmuladd.f64(double %315, double %323, double %324)
  %326 = load double, ptr @B1, align 8
  %327 = call double @llvm.fmuladd.f64(double %315, double %325, double %326)
  %328 = call double @llvm.fmuladd.f64(double %315, double %327, double %316)
  %329 = load double, ptr @one, align 8
  %330 = fadd double %328, %329
  store double %330, ptr %1, align 8
  br label %331

331:                                              ; preds = %310
  %332 = load i32, ptr %8, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, ptr %8, align 4
  %334 = load i32, ptr %9, align 4
  %.not13.not = icmp slt i32 %333, %334
  br i1 %.not13.not, label %310, label %._crit_edge45, !llvm.loop !14

._crit_edge45:                                    ; preds = %331
  br label %335

335:                                              ; preds = %._crit_edge45, %252
  %336 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %337 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %338 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %339 = load double, ptr @nulltime, align 8
  %340 = fneg double %339
  %341 = call double @llvm.fmuladd.f64(double %337, double %338, double %340)
  store double %341, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %342 = load double, ptr @piref, align 8
  %343 = load double, ptr @three, align 8
  %344 = fdiv double %342, %343
  store double %344, ptr %2, align 8
  %345 = fmul double %344, %344
  store double %345, ptr %4, align 8
  %346 = load double, ptr @B6, align 8
  %347 = load double, ptr @B5, align 8
  %348 = call double @llvm.fmuladd.f64(double %346, double %345, double %347)
  %349 = load double, ptr @B4, align 8
  %350 = call double @llvm.fmuladd.f64(double %345, double %348, double %349)
  %351 = load double, ptr @B3, align 8
  %352 = call double @llvm.fmuladd.f64(double %345, double %350, double %351)
  %353 = load double, ptr @B2, align 8
  %354 = call double @llvm.fmuladd.f64(double %345, double %352, double %353)
  %355 = load double, ptr @B1, align 8
  %356 = call double @llvm.fmuladd.f64(double %345, double %354, double %355)
  %357 = load double, ptr @one, align 8
  %358 = call double @llvm.fmuladd.f64(double %345, double %356, double %357)
  store double %358, ptr @sa, align 8
  %359 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %360 = fdiv double %359, 1.500000e+01
  store double %360, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %361 = load double, ptr %5, align 8
  %362 = load double, ptr @one, align 8
  %363 = fadd double %358, %362
  %364 = load double, ptr @two, align 8
  %365 = load double, ptr %1, align 8
  %366 = call double @llvm.fmuladd.f64(double %364, double %365, double %363)
  %367 = fmul double %361, %366
  %368 = fdiv double %367, %364
  store double %368, ptr @sa, align 8
  %369 = load double, ptr @piref, align 8
  %370 = load double, ptr @three, align 8
  %371 = fdiv double %369, %370
  store double %371, ptr %2, align 8
  %372 = fmul double %371, %371
  store double %372, ptr %4, align 8
  %373 = load double, ptr @A6, align 8
  %374 = load double, ptr @A5, align 8
  %375 = call double @llvm.fmuladd.f64(double %373, double %372, double %374)
  %376 = load double, ptr @A4, align 8
  %377 = call double @llvm.fmuladd.f64(double %375, double %372, double %376)
  %378 = load double, ptr @A3, align 8
  %379 = call double @llvm.fmuladd.f64(double %377, double %372, double %378)
  %380 = load double, ptr %4, align 8
  %381 = load double, ptr @A2, align 8
  %382 = call double @llvm.fmuladd.f64(double %379, double %380, double %381)
  %383 = load double, ptr @A1, align 8
  %384 = call double @llvm.fmuladd.f64(double %382, double %380, double %383)
  %385 = load double, ptr @A0, align 8
  %386 = call double @llvm.fmuladd.f64(double %384, double %380, double %385)
  %387 = fmul double %371, %386
  store double %387, ptr @sb, align 8
  %388 = load double, ptr @sa, align 8
  %389 = fsub double %388, %387
  store double %389, ptr @sc, align 8
  %390 = load double, ptr @one, align 8
  %391 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %392 = fdiv double %390, %391
  store double %392, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %393 = fmul double %389, 1.000000e-30
  %394 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %395 = fmul double %394, 1.000000e-30
  %396 = fmul double %392, 1.000000e-30
  %397 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %393, double noundef %395, double noundef %396) #4
  %398 = load double, ptr @piref, align 8
  %399 = load double, ptr @three, align 8
  %400 = load i32, ptr %9, align 4
  %401 = sitofp i32 %400 to double
  %402 = fmul double %399, %401
  %403 = fdiv double %398, %402
  store double %403, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %404 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  store i32 1, ptr %8, align 4
  %405 = load i32, ptr %9, align 4
  %.not15.not46 = icmp slt i32 1, %405
  br i1 %.not15.not46, label %.lr.ph48, label %448

.lr.ph48:                                         ; preds = %335
  br label %406

406:                                              ; preds = %.lr.ph48, %444
  %407 = load i32, ptr %8, align 4
  %408 = sitofp i32 %407 to double
  %409 = load double, ptr %5, align 8
  %410 = fmul double %409, %408
  store double %410, ptr %2, align 8
  %411 = fmul double %410, %410
  store double %411, ptr %4, align 8
  %412 = load double, ptr @A6, align 8
  %413 = load double, ptr @A5, align 8
  %414 = call double @llvm.fmuladd.f64(double %412, double %411, double %413)
  %415 = load double, ptr @A4, align 8
  %416 = call double @llvm.fmuladd.f64(double %414, double %411, double %415)
  %417 = load double, ptr @A3, align 8
  %418 = call double @llvm.fmuladd.f64(double %416, double %411, double %417)
  %419 = load double, ptr %4, align 8
  %420 = load double, ptr @A2, align 8
  %421 = call double @llvm.fmuladd.f64(double %418, double %419, double %420)
  %422 = load double, ptr @A1, align 8
  %423 = call double @llvm.fmuladd.f64(double %421, double %419, double %422)
  %424 = load double, ptr @one, align 8
  %425 = call double @llvm.fmuladd.f64(double %423, double %419, double %424)
  %426 = fmul double %410, %425
  store double %426, ptr %3, align 8
  %427 = load double, ptr %1, align 8
  %428 = load double, ptr %4, align 8
  %429 = load double, ptr @B6, align 8
  %430 = load double, ptr @B5, align 8
  %431 = call double @llvm.fmuladd.f64(double %429, double %428, double %430)
  %432 = load double, ptr @B4, align 8
  %433 = call double @llvm.fmuladd.f64(double %428, double %431, double %432)
  %434 = load double, ptr @B3, align 8
  %435 = call double @llvm.fmuladd.f64(double %428, double %433, double %434)
  %436 = load double, ptr @B2, align 8
  %437 = call double @llvm.fmuladd.f64(double %428, double %435, double %436)
  %438 = load double, ptr @B1, align 8
  %439 = call double @llvm.fmuladd.f64(double %428, double %437, double %438)
  %440 = load double, ptr @one, align 8
  %441 = call double @llvm.fmuladd.f64(double %428, double %439, double %440)
  %442 = fdiv double %426, %441
  %443 = fadd double %427, %442
  store double %443, ptr %1, align 8
  br label %444

444:                                              ; preds = %406
  %445 = load i32, ptr %8, align 4
  %446 = add nsw i32 %445, 1
  store i32 %446, ptr %8, align 4
  %447 = load i32, ptr %9, align 4
  %.not15.not = icmp slt i32 %446, %447
  br i1 %.not15.not, label %406, label %._crit_edge49, !llvm.loop !15

._crit_edge49:                                    ; preds = %444
  br label %448

448:                                              ; preds = %._crit_edge49, %335
  %449 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %450 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %451 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %452 = load double, ptr @nulltime, align 8
  %453 = fneg double %452
  %454 = call double @llvm.fmuladd.f64(double %450, double %451, double %453)
  store double %454, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %455 = load double, ptr @piref, align 8
  %456 = load double, ptr @three, align 8
  %457 = fdiv double %455, %456
  store double %457, ptr %2, align 8
  %458 = fmul double %457, %457
  store double %458, ptr %4, align 8
  %459 = load double, ptr @A6, align 8
  %460 = load double, ptr @A5, align 8
  %461 = call double @llvm.fmuladd.f64(double %459, double %458, double %460)
  %462 = load double, ptr @A4, align 8
  %463 = call double @llvm.fmuladd.f64(double %461, double %458, double %462)
  %464 = load double, ptr @A3, align 8
  %465 = call double @llvm.fmuladd.f64(double %463, double %458, double %464)
  %466 = load double, ptr %4, align 8
  %467 = load double, ptr @A2, align 8
  %468 = call double @llvm.fmuladd.f64(double %465, double %466, double %467)
  %469 = load double, ptr @A1, align 8
  %470 = call double @llvm.fmuladd.f64(double %468, double %466, double %469)
  %471 = load double, ptr @one, align 8
  %472 = call double @llvm.fmuladd.f64(double %470, double %466, double %471)
  %473 = fmul double %457, %472
  store double %473, ptr @sa, align 8
  %474 = load double, ptr %4, align 8
  %475 = load double, ptr @B6, align 8
  %476 = load double, ptr @B5, align 8
  %477 = call double @llvm.fmuladd.f64(double %475, double %474, double %476)
  %478 = load double, ptr @B4, align 8
  %479 = call double @llvm.fmuladd.f64(double %474, double %477, double %478)
  %480 = load double, ptr @B3, align 8
  %481 = call double @llvm.fmuladd.f64(double %474, double %479, double %480)
  %482 = load double, ptr @B2, align 8
  %483 = call double @llvm.fmuladd.f64(double %474, double %481, double %482)
  %484 = load double, ptr @B1, align 8
  %485 = call double @llvm.fmuladd.f64(double %474, double %483, double %484)
  %486 = load double, ptr @one, align 8
  %487 = call double @llvm.fmuladd.f64(double %474, double %485, double %486)
  store double %487, ptr @sb, align 8
  %488 = load double, ptr @sa, align 8
  %489 = fdiv double %488, %487
  store double %489, ptr @sa, align 8
  %490 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %491 = fdiv double %490, 2.900000e+01
  store double %491, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %492 = load double, ptr %5, align 8
  %493 = load double, ptr @two, align 8
  %494 = load double, ptr %1, align 8
  %495 = call double @llvm.fmuladd.f64(double %493, double %494, double %489)
  %496 = fmul double %492, %495
  %497 = fdiv double %496, %493
  store double %497, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %498 = fadd double %497, f0xBFE62E42FEFA39EF
  store double %498, ptr @sc, align 8
  %499 = load double, ptr @one, align 8
  %500 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %501 = fdiv double %499, %500
  store double %501, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %502 = fmul double %498, 1.000000e-30
  %503 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %504 = fmul double %503, 1.000000e-30
  %505 = fmul double %501, 1.000000e-30
  %506 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %502, double noundef %504, double noundef %505) #4
  %507 = load double, ptr @piref, align 8
  %508 = load double, ptr @four, align 8
  %509 = load i32, ptr %9, align 4
  %510 = sitofp i32 %509 to double
  %511 = fmul double %508, %510
  %512 = fdiv double %507, %511
  store double %512, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %513 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  store i32 1, ptr %8, align 4
  %514 = load i32, ptr %9, align 4
  %.not17.not50 = icmp slt i32 1, %514
  br i1 %.not17.not50, label %.lr.ph52, label %556

.lr.ph52:                                         ; preds = %448
  br label %515

515:                                              ; preds = %.lr.ph52, %552
  %516 = load i32, ptr %8, align 4
  %517 = sitofp i32 %516 to double
  %518 = load double, ptr %5, align 8
  %519 = fmul double %518, %517
  store double %519, ptr %2, align 8
  %520 = fmul double %519, %519
  store double %520, ptr %4, align 8
  %521 = load double, ptr @A6, align 8
  %522 = load double, ptr @A5, align 8
  %523 = call double @llvm.fmuladd.f64(double %521, double %520, double %522)
  %524 = load double, ptr @A4, align 8
  %525 = call double @llvm.fmuladd.f64(double %523, double %520, double %524)
  %526 = load double, ptr @A3, align 8
  %527 = call double @llvm.fmuladd.f64(double %525, double %520, double %526)
  %528 = load double, ptr %4, align 8
  %529 = load double, ptr @A2, align 8
  %530 = call double @llvm.fmuladd.f64(double %527, double %528, double %529)
  %531 = load double, ptr @A1, align 8
  %532 = call double @llvm.fmuladd.f64(double %530, double %528, double %531)
  %533 = load double, ptr @one, align 8
  %534 = call double @llvm.fmuladd.f64(double %532, double %528, double %533)
  %535 = fmul double %519, %534
  store double %535, ptr %3, align 8
  %536 = load double, ptr %1, align 8
  %537 = load double, ptr %4, align 8
  %538 = load double, ptr @B6, align 8
  %539 = load double, ptr @B5, align 8
  %540 = call double @llvm.fmuladd.f64(double %538, double %537, double %539)
  %541 = load double, ptr @B4, align 8
  %542 = call double @llvm.fmuladd.f64(double %537, double %540, double %541)
  %543 = load double, ptr @B3, align 8
  %544 = call double @llvm.fmuladd.f64(double %537, double %542, double %543)
  %545 = load double, ptr @B2, align 8
  %546 = call double @llvm.fmuladd.f64(double %537, double %544, double %545)
  %547 = load double, ptr @B1, align 8
  %548 = call double @llvm.fmuladd.f64(double %537, double %546, double %547)
  %549 = load double, ptr @one, align 8
  %550 = call double @llvm.fmuladd.f64(double %537, double %548, double %549)
  %551 = call double @llvm.fmuladd.f64(double %535, double %550, double %536)
  store double %551, ptr %1, align 8
  br label %552

552:                                              ; preds = %515
  %553 = load i32, ptr %8, align 4
  %554 = add nsw i32 %553, 1
  store i32 %554, ptr %8, align 4
  %555 = load i32, ptr %9, align 4
  %.not17.not = icmp slt i32 %554, %555
  br i1 %.not17.not, label %515, label %._crit_edge53, !llvm.loop !16

._crit_edge53:                                    ; preds = %552
  br label %556

556:                                              ; preds = %._crit_edge53, %448
  %557 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %558 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %559 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %560 = load double, ptr @nulltime, align 8
  %561 = fneg double %560
  %562 = call double @llvm.fmuladd.f64(double %558, double %559, double %561)
  store double %562, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %563 = load double, ptr @piref, align 8
  %564 = load double, ptr @four, align 8
  %565 = fdiv double %563, %564
  store double %565, ptr %2, align 8
  %566 = fmul double %565, %565
  store double %566, ptr %4, align 8
  %567 = load double, ptr @A6, align 8
  %568 = load double, ptr @A5, align 8
  %569 = call double @llvm.fmuladd.f64(double %567, double %566, double %568)
  %570 = load double, ptr @A4, align 8
  %571 = call double @llvm.fmuladd.f64(double %569, double %566, double %570)
  %572 = load double, ptr @A3, align 8
  %573 = call double @llvm.fmuladd.f64(double %571, double %566, double %572)
  %574 = load double, ptr %4, align 8
  %575 = load double, ptr @A2, align 8
  %576 = call double @llvm.fmuladd.f64(double %573, double %574, double %575)
  %577 = load double, ptr @A1, align 8
  %578 = call double @llvm.fmuladd.f64(double %576, double %574, double %577)
  %579 = load double, ptr @one, align 8
  %580 = call double @llvm.fmuladd.f64(double %578, double %574, double %579)
  %581 = fmul double %565, %580
  store double %581, ptr @sa, align 8
  %582 = load double, ptr %4, align 8
  %583 = load double, ptr @B6, align 8
  %584 = load double, ptr @B5, align 8
  %585 = call double @llvm.fmuladd.f64(double %583, double %582, double %584)
  %586 = load double, ptr @B4, align 8
  %587 = call double @llvm.fmuladd.f64(double %582, double %585, double %586)
  %588 = load double, ptr @B3, align 8
  %589 = call double @llvm.fmuladd.f64(double %582, double %587, double %588)
  %590 = load double, ptr @B2, align 8
  %591 = call double @llvm.fmuladd.f64(double %582, double %589, double %590)
  %592 = load double, ptr @B1, align 8
  %593 = call double @llvm.fmuladd.f64(double %582, double %591, double %592)
  %594 = load double, ptr @one, align 8
  %595 = call double @llvm.fmuladd.f64(double %582, double %593, double %594)
  store double %595, ptr @sb, align 8
  %596 = load double, ptr @sa, align 8
  %597 = fmul double %596, %595
  store double %597, ptr @sa, align 8
  %598 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %599 = fdiv double %598, 2.900000e+01
  store double %599, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %600 = load double, ptr %5, align 8
  %601 = load double, ptr @two, align 8
  %602 = load double, ptr %1, align 8
  %603 = call double @llvm.fmuladd.f64(double %601, double %602, double %597)
  %604 = fmul double %600, %603
  %605 = fdiv double %604, %601
  store double %605, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %606 = fadd double %605, -2.500000e-01
  store double %606, ptr @sc, align 8
  %607 = load double, ptr @one, align 8
  %608 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %609 = fdiv double %607, %608
  store double %609, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %610 = fmul double %606, 1.000000e-30
  %611 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %612 = fmul double %611, 1.000000e-30
  %613 = fmul double %609, 1.000000e-30
  %614 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %610, double noundef %612, double noundef %613) #4
  store double 0.000000e+00, ptr %1, align 8
  %615 = load double, ptr @one, align 8
  store double %615, ptr %4, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %616 = load i32, ptr %9, align 4
  %617 = sitofp i32 %616 to double
  %618 = fdiv double f0x40599541F7F192A4, %617
  store double %618, ptr %3, align 8
  %619 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  store i32 1, ptr %8, align 4
  %620 = load i32, ptr %9, align 4
  %.not19.not54 = icmp slt i32 1, %620
  br i1 %.not19.not54, label %.lr.ph56, label %645

.lr.ph56:                                         ; preds = %556
  br label %621

621:                                              ; preds = %.lr.ph56, %641
  %622 = load i32, ptr %8, align 4
  %623 = sitofp i32 %622 to double
  %624 = load double, ptr %3, align 8
  %625 = fmul double %624, %623
  store double %625, ptr %5, align 8
  %626 = fmul double %625, %625
  store double %626, ptr %2, align 8
  %627 = load double, ptr %1, align 8
  %628 = load double, ptr %4, align 8
  %629 = fadd double %625, %628
  %630 = fdiv double %628, %629
  %631 = fsub double %627, %630
  %632 = load double, ptr %5, align 8
  %633 = load double, ptr %2, align 8
  %634 = fadd double %633, %628
  %635 = fdiv double %632, %634
  %636 = fsub double %631, %635
  %637 = load double, ptr %4, align 8
  %638 = call double @llvm.fmuladd.f64(double %632, double %633, double %637)
  %639 = fdiv double %633, %638
  %640 = fsub double %636, %639
  store double %640, ptr %1, align 8
  br label %641

641:                                              ; preds = %621
  %642 = load i32, ptr %8, align 4
  %643 = add nsw i32 %642, 1
  store i32 %643, ptr %8, align 4
  %644 = load i32, ptr %9, align 4
  %.not19.not = icmp slt i32 %643, %644
  br i1 %.not19.not, label %621, label %._crit_edge57, !llvm.loop !17

._crit_edge57:                                    ; preds = %641
  br label %645

645:                                              ; preds = %._crit_edge57, %556
  %646 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %647 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %648 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %649 = load double, ptr @nulltime, align 8
  %650 = fneg double %649
  %651 = call double @llvm.fmuladd.f64(double %647, double %648, double %650)
  store double %651, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %652 = fdiv double %651, 1.200000e+01
  store double %652, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %653 = load double, ptr @sa, align 8
  store double %653, ptr %5, align 8
  %654 = fmul double %653, %653
  store double %654, ptr %2, align 8
  %655 = load double, ptr %4, align 8
  %656 = fneg double %655
  %657 = fadd double %653, %655
  %658 = fdiv double %655, %657
  %659 = fsub double %656, %658
  %660 = load double, ptr %5, align 8
  %661 = load double, ptr %2, align 8
  %662 = load double, ptr %4, align 8
  %663 = fadd double %661, %662
  %664 = fdiv double %660, %663
  %665 = fsub double %659, %664
  %666 = call double @llvm.fmuladd.f64(double %660, double %661, double %662)
  %667 = fdiv double %661, %666
  %668 = fsub double %665, %667
  store double %668, ptr @sa, align 8
  %669 = load double, ptr %3, align 8
  %670 = fmul double %669, 1.800000e+01
  %671 = load double, ptr @two, align 8
  %672 = load double, ptr %1, align 8
  %673 = call double @llvm.fmuladd.f64(double %671, double %672, double %668)
  %674 = fmul double %670, %673
  store double %674, ptr @sa, align 8
  %675 = fptosi double %674 to i32
  %676 = mul nsw i32 %675, -2000
  store i32 %676, ptr %9, align 4
  %677 = sitofp i32 %676 to double
  %678 = load double, ptr @scale, align 8
  %679 = fdiv double %677, %678
  %680 = fptosi double %679 to i32
  store i32 %680, ptr %9, align 4
  %681 = load double, ptr @sa, align 8
  %682 = fadd double %681, 5.002000e+02
  store double %682, ptr @sc, align 8
  %683 = load double, ptr @one, align 8
  %684 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %685 = fdiv double %683, %684
  store double %685, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %686 = fmul double %682, 1.000000e-30
  %687 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %688 = fmul double %687, 1.000000e-30
  %689 = fmul double %685, 1.000000e-30
  %690 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %686, double noundef %688, double noundef %689) #4
  %691 = load double, ptr @piref, align 8
  %692 = load double, ptr @three, align 8
  %693 = load i32, ptr %9, align 4
  %694 = sitofp i32 %693 to double
  %695 = fmul double %692, %694
  %696 = fdiv double %691, %695
  store double %696, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %697 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  store i32 1, ptr %8, align 4
  %698 = load i32, ptr %9, align 4
  %.not21.not58 = icmp slt i32 1, %698
  br i1 %.not21.not58, label %.lr.ph60, label %742

.lr.ph60:                                         ; preds = %645
  br label %699

699:                                              ; preds = %.lr.ph60, %738
  %700 = load i32, ptr %8, align 4
  %701 = sitofp i32 %700 to double
  %702 = load double, ptr %5, align 8
  %703 = fmul double %702, %701
  store double %703, ptr %2, align 8
  %704 = fmul double %703, %703
  store double %704, ptr %4, align 8
  %705 = load double, ptr @B6, align 8
  %706 = load double, ptr @B5, align 8
  %707 = call double @llvm.fmuladd.f64(double %705, double %704, double %706)
  %708 = load double, ptr @B4, align 8
  %709 = call double @llvm.fmuladd.f64(double %704, double %707, double %708)
  %710 = load double, ptr @B3, align 8
  %711 = call double @llvm.fmuladd.f64(double %704, double %709, double %710)
  %712 = load double, ptr @B2, align 8
  %713 = call double @llvm.fmuladd.f64(double %704, double %711, double %712)
  %714 = load double, ptr @B1, align 8
  %715 = call double @llvm.fmuladd.f64(double %704, double %713, double %714)
  %716 = load double, ptr @one, align 8
  %717 = call double @llvm.fmuladd.f64(double %704, double %715, double %716)
  store double %717, ptr %3, align 8
  %718 = load double, ptr %1, align 8
  %719 = fmul double %717, %717
  %720 = load double, ptr %2, align 8
  %721 = fmul double %719, %720
  %722 = load double, ptr @A6, align 8
  %723 = load double, ptr %4, align 8
  %724 = load double, ptr @A5, align 8
  %725 = call double @llvm.fmuladd.f64(double %722, double %723, double %724)
  %726 = load double, ptr @A4, align 8
  %727 = call double @llvm.fmuladd.f64(double %725, double %723, double %726)
  %728 = load double, ptr @A3, align 8
  %729 = call double @llvm.fmuladd.f64(double %727, double %723, double %728)
  %730 = load double, ptr %4, align 8
  %731 = load double, ptr @A2, align 8
  %732 = call double @llvm.fmuladd.f64(double %729, double %730, double %731)
  %733 = load double, ptr @A1, align 8
  %734 = call double @llvm.fmuladd.f64(double %732, double %730, double %733)
  %735 = load double, ptr @one, align 8
  %736 = call double @llvm.fmuladd.f64(double %734, double %730, double %735)
  %737 = call double @llvm.fmuladd.f64(double %721, double %736, double %718)
  store double %737, ptr %1, align 8
  br label %738

738:                                              ; preds = %699
  %739 = load i32, ptr %8, align 4
  %740 = add nsw i32 %739, 1
  store i32 %740, ptr %8, align 4
  %741 = load i32, ptr %9, align 4
  %.not21.not = icmp slt i32 %740, %741
  br i1 %.not21.not, label %699, label %._crit_edge61, !llvm.loop !18

._crit_edge61:                                    ; preds = %738
  br label %742

742:                                              ; preds = %._crit_edge61, %645
  %743 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %744 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %745 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %746 = load double, ptr @nulltime, align 8
  %747 = fneg double %746
  %748 = call double @llvm.fmuladd.f64(double %744, double %745, double %747)
  store double %748, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %749 = load double, ptr @piref, align 8
  %750 = load double, ptr @three, align 8
  %751 = fdiv double %749, %750
  store double %751, ptr %2, align 8
  %752 = fmul double %751, %751
  store double %752, ptr %4, align 8
  %753 = load double, ptr @A6, align 8
  %754 = load double, ptr @A5, align 8
  %755 = call double @llvm.fmuladd.f64(double %753, double %752, double %754)
  %756 = load double, ptr @A4, align 8
  %757 = call double @llvm.fmuladd.f64(double %755, double %752, double %756)
  %758 = load double, ptr @A3, align 8
  %759 = call double @llvm.fmuladd.f64(double %757, double %752, double %758)
  %760 = load double, ptr %4, align 8
  %761 = load double, ptr @A2, align 8
  %762 = call double @llvm.fmuladd.f64(double %759, double %760, double %761)
  %763 = load double, ptr @A1, align 8
  %764 = call double @llvm.fmuladd.f64(double %762, double %760, double %763)
  %765 = load double, ptr @one, align 8
  %766 = call double @llvm.fmuladd.f64(double %764, double %760, double %765)
  %767 = fmul double %751, %766
  store double %767, ptr @sa, align 8
  %768 = load double, ptr %4, align 8
  %769 = load double, ptr @B6, align 8
  %770 = load double, ptr @B5, align 8
  %771 = call double @llvm.fmuladd.f64(double %769, double %768, double %770)
  %772 = load double, ptr @B4, align 8
  %773 = call double @llvm.fmuladd.f64(double %768, double %771, double %772)
  %774 = load double, ptr @B3, align 8
  %775 = call double @llvm.fmuladd.f64(double %768, double %773, double %774)
  %776 = load double, ptr @B2, align 8
  %777 = call double @llvm.fmuladd.f64(double %768, double %775, double %776)
  %778 = load double, ptr @B1, align 8
  %779 = call double @llvm.fmuladd.f64(double %768, double %777, double %778)
  %780 = load double, ptr @one, align 8
  %781 = call double @llvm.fmuladd.f64(double %768, double %779, double %780)
  store double %781, ptr @sb, align 8
  %782 = load double, ptr @sa, align 8
  %783 = fmul double %782, %781
  %784 = fmul double %783, %781
  store double %784, ptr @sa, align 8
  %785 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %786 = fdiv double %785, 3.000000e+01
  store double %786, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %787 = load double, ptr %5, align 8
  %788 = load double, ptr @two, align 8
  %789 = load double, ptr %1, align 8
  %790 = call double @llvm.fmuladd.f64(double %788, double %789, double %784)
  %791 = fmul double %787, %790
  %792 = fdiv double %791, %788
  store double %792, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %793 = fadd double %792, f0xBFD2AAAAAAAAAAAB
  store double %793, ptr @sc, align 8
  %794 = load double, ptr @one, align 8
  %795 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %796 = fdiv double %794, %795
  store double %796, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %797 = fmul double %793, 1.000000e-30
  %798 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %799 = fmul double %798, 1.000000e-30
  %800 = fmul double %796, 1.000000e-30
  %801 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %797, double noundef %799, double noundef %800) #4
  %802 = load double, ptr @five, align 8
  %803 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %804 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %805 = fsub double %803, %804
  %806 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %807 = call double @llvm.fmuladd.f64(double %802, double %805, double %806)
  %808 = fdiv double %807, 5.200000e+01
  store double %808, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %809 = load double, ptr @one, align 8
  %810 = fdiv double %809, %808
  store double %810, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %811 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %812 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %813 = fadd double %811, %812
  %814 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %815 = fadd double %813, %814
  %816 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %817 = fadd double %815, %816
  %818 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %819 = fadd double %817, %818
  store double %819, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %820 = load double, ptr @four, align 8
  %821 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %822 = call double @llvm.fmuladd.f64(double %820, double %821, double %819)
  %823 = fdiv double %822, 1.520000e+02
  store double %823, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %824 = load double, ptr @one, align 8
  %825 = fdiv double %824, %823
  store double %825, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %826 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %827 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %828 = fadd double %826, %827
  %829 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %830 = fadd double %828, %829
  %831 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %832 = fadd double %830, %831
  %833 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %834 = fadd double %832, %833
  store double %834, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %835 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %836 = fadd double %834, %835
  %837 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %838 = fadd double %836, %837
  %839 = fdiv double %838, 1.460000e+02
  store double %839, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %840 = load double, ptr @one, align 8
  %841 = fdiv double %840, %839
  store double %841, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %842 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %843 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %844 = fadd double %842, %843
  %845 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %846 = fadd double %844, %845
  %847 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %848 = fadd double %846, %847
  %849 = fdiv double %848, 9.100000e+01
  store double %849, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %850 = load double, ptr @one, align 8
  %851 = fdiv double %850, %849
  store double %851, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar22 = call i32 @putchar(i32 10)
  %852 = load i32, ptr %9, align 4
  %853 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %852) #4
  %854 = load double, ptr @nulltime, align 8
  %855 = fmul double %854, 1.000000e-30
  %856 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %855) #4
  %857 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %858 = fmul double %857, 1.000000e-30
  %859 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %858) #4
  %860 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %861 = fmul double %860, 1.000000e-30
  %862 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %861) #4
  %863 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %864 = fmul double %863, 1.000000e-30
  %865 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %864) #4
  %866 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %867 = fmul double %866, 1.000000e-30
  %868 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %867) #4
  ret i32 0
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dtime(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca double, align 8
  store ptr %0, ptr %2, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = load double, ptr %4, align 8
  store double %5, ptr %3, align 8
  %6 = call i32 @GetTickCount() #4
  %7 = uitofp i32 %6 to double
  %8 = fmul nnan double %7, 1.000000e-03
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store double %8, ptr %10, align 8
  %11 = load double, ptr %3, align 8
  %12 = fsub double %8, %11
  %13 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store double %12, ptr %13, align 8
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
