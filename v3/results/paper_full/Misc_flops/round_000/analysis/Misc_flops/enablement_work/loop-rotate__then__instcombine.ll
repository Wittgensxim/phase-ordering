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
  %puts30 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  %puts31 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  %11 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %12 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %13 = load i32, ptr %6, align 4
  store i32 %13, ptr %10, align 4
  store double 0.000000e+00, ptr @sa, align 8
  %14 = load double, ptr @TLimit, align 8
  %15 = fcmp ogt double %14, 0.000000e+00
  br i1 %15, label %.lr.ph2, label %.loopexit

.lr.ph2:                                          ; preds = %0
  br label %20

16:                                               ; preds = %56
  %17 = load double, ptr @sa, align 8
  %18 = load double, ptr @TLimit, align 8
  %19 = fcmp olt double %17, %18
  br i1 %19, label %20, label %..loopexit_crit_edge, !llvm.loop !7

20:                                               ; preds = %.lr.ph2, %16
  %21 = load i32, ptr %10, align 4
  %22 = shl nsw i32 %21, 1
  store i32 %22, ptr %10, align 4
  %23 = load double, ptr @one, align 8
  %24 = sitofp i32 %22 to double
  %25 = fdiv double %23, %24
  store double %25, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  store double %23, ptr %4, align 8
  %26 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  store i32 1, ptr %8, align 4
  %27 = load i32, ptr %10, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %.lr.ph, label %56

.lr.ph:                                           ; preds = %20
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
  %55 = add nsw i32 %54, -1
  %.not.not = icmp slt i32 %52, %55
  br i1 %.not.not, label %29, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %51
  br label %56

56:                                               ; preds = %._crit_edge, %20
  %57 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %58 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %58, ptr @sa, align 8
  %59 = load i32, ptr %10, align 4
  %60 = load i32, ptr %7, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %16

62:                                               ; preds = %56
  br label %63

..loopexit_crit_edge:                             ; preds = %16
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %0
  br label %63

63:                                               ; preds = %.loopexit, %62
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %64 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  store i32 1, ptr %8, align 4
  %65 = load i32, ptr %10, align 4
  %66 = icmp sgt i32 %65, 1
  br i1 %66, label %.lr.ph4, label %73

.lr.ph4:                                          ; preds = %63
  br label %67

67:                                               ; preds = %.lr.ph4, %68
  br label %68

68:                                               ; preds = %67
  %69 = load i32, ptr %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, ptr %8, align 4
  %71 = load i32, ptr %10, align 4
  %72 = add nsw i32 %71, -1
  %.not.not32 = icmp slt i32 %69, %72
  br i1 %.not.not32, label %67, label %._crit_edge5, !llvm.loop !10

._crit_edge5:                                     ; preds = %68
  br label %73

73:                                               ; preds = %._crit_edge5, %63
  %74 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %75 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %76 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %77 = fmul double %75, %76
  %78 = fcmp olt double %77, 0.000000e+00
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79, %73
  %storemerge = phi double [ 0.000000e+00, %79 ], [ %77, %73 ]
  store double %storemerge, ptr @nulltime, align 8
  %81 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %82 = load double, ptr @sa, align 8
  %83 = fneg double %storemerge
  %84 = call double @llvm.fmuladd.f64(double %81, double %82, double %83)
  store double %84, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %85 = load double, ptr @D1, align 8
  %86 = load double, ptr @D2, align 8
  %87 = fadd double %85, %86
  %88 = load double, ptr @D3, align 8
  %89 = fadd double %87, %88
  %90 = load double, ptr @one, align 8
  %91 = fadd double %90, %85
  %92 = load double, ptr @E2, align 8
  %93 = fadd double %91, %92
  %94 = load double, ptr @E3, align 8
  %95 = fadd double %93, %94
  %96 = fdiv double %89, %95
  store double %96, ptr @sa, align 8
  %97 = load double, ptr @D1, align 8
  store double %97, ptr @sb, align 8
  %98 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %99 = fdiv double %98, 1.400000e+01
  store double %99, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %100 = load double, ptr %5, align 8
  %101 = load double, ptr @sa, align 8
  %102 = fadd double %101, %97
  %103 = load double, ptr @two, align 8
  %104 = load double, ptr %1, align 8
  %105 = call double @llvm.fmuladd.f64(double %103, double %104, double %102)
  %106 = fmul double %100, %105
  %107 = fdiv double %106, %103
  store double %107, ptr @sa, align 8
  %108 = load double, ptr @one, align 8
  %109 = fdiv double %108, %107
  store double %109, ptr @sb, align 8
  %110 = fptosi double %109 to i32
  %111 = mul nsw i32 %110, 40000
  %112 = sitofp i32 %111 to double
  %113 = load double, ptr @scale, align 8
  %114 = fdiv double %112, %113
  %115 = fptosi double %114 to i32
  store i32 %115, ptr %10, align 4
  %116 = load double, ptr @sb, align 8
  %117 = fadd double %116, -2.520000e+01
  store double %117, ptr @sc, align 8
  %118 = load double, ptr @one, align 8
  %119 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %120 = fdiv double %118, %119
  store double %120, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %121 = fmul double %117, 1.000000e-30
  %122 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %123 = fmul double %122, 1.000000e-30
  %124 = fmul double %120, 1.000000e-30
  %125 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %121, double noundef %123, double noundef %124) #4
  %126 = load i32, ptr %10, align 4
  store i32 %126, ptr %9, align 4
  %127 = load double, ptr @five, align 8
  %128 = fneg double %127
  store double %128, ptr %1, align 8
  %129 = load double, ptr @one, align 8
  %130 = fneg double %129
  store double %130, ptr @sa, align 8
  %131 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  store i32 1, ptr %8, align 4
  %132 = load i32, ptr %9, align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %.lr.ph7, label %143

.lr.ph7:                                          ; preds = %80
  br label %134

134:                                              ; preds = %.lr.ph7, %139
  %135 = load double, ptr %1, align 8
  %136 = fneg double %135
  store double %136, ptr %1, align 8
  %137 = load double, ptr @sa, align 8
  %138 = fsub double %137, %135
  store double %138, ptr @sa, align 8
  br label %139

139:                                              ; preds = %134
  %140 = load i32, ptr %8, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, ptr %8, align 4
  %142 = load i32, ptr %9, align 4
  %.not.not33 = icmp slt i32 %140, %142
  br i1 %.not.not33, label %134, label %._crit_edge8, !llvm.loop !11

._crit_edge8:                                     ; preds = %139
  br label %143

143:                                              ; preds = %._crit_edge8, %80
  %144 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %145 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %146 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %147 = fmul double %145, %146
  %148 = fcmp olt double %147, 0.000000e+00
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  br label %150

150:                                              ; preds = %149, %143
  %storemerge34 = phi double [ 0.000000e+00, %149 ], [ %147, %143 ]
  store double %storemerge34, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %151 = load i32, ptr %9, align 4
  %152 = sitofp i32 %151 to double
  store double %152, ptr @sc, align 8
  %153 = load double, ptr @sa, align 8
  store double %153, ptr %2, align 8
  store double 0.000000e+00, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  %154 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  store i32 1, ptr %8, align 4
  %155 = load i32, ptr %9, align 4
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %.lr.ph10, label %181

.lr.ph10:                                         ; preds = %150
  br label %157

157:                                              ; preds = %.lr.ph10, %177
  %158 = load double, ptr %1, align 8
  %159 = fneg double %158
  store double %159, ptr %1, align 8
  %160 = load double, ptr @sa, align 8
  %161 = fsub double %160, %158
  store double %161, ptr @sa, align 8
  %162 = load double, ptr %2, align 8
  %163 = load double, ptr @two, align 8
  %164 = fadd double %162, %163
  store double %164, ptr %2, align 8
  %165 = load double, ptr %5, align 8
  %166 = load double, ptr %1, align 8
  %167 = fsub double %166, %164
  %168 = fadd double %165, %167
  store double %168, ptr %5, align 8
  %169 = load double, ptr %3, align 8
  %170 = load double, ptr %2, align 8
  %171 = fneg double %166
  %172 = call double @llvm.fmuladd.f64(double %171, double %170, double %169)
  store double %172, ptr %3, align 8
  %173 = load double, ptr %4, align 8
  %174 = load double, ptr %1, align 8
  %175 = fdiv double %174, %170
  %176 = fadd double %173, %175
  store double %176, ptr %4, align 8
  br label %177

177:                                              ; preds = %157
  %178 = load i32, ptr %8, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, ptr %8, align 4
  %180 = load i32, ptr %9, align 4
  %.not.not35 = icmp slt i32 %178, %180
  br i1 %.not.not35, label %157, label %._crit_edge11, !llvm.loop !12

._crit_edge11:                                    ; preds = %177
  br label %181

181:                                              ; preds = %._crit_edge11, %150
  %182 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %183 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %184 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %185 = fmul double %183, %184
  store double %185, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %186 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %187 = fsub double %185, %186
  %188 = fdiv double %187, 7.000000e+00
  store double %188, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %189 = load double, ptr @sa, align 8
  %190 = load double, ptr %5, align 8
  %191 = fmul double %189, %190
  %192 = load double, ptr @sc, align 8
  %193 = fdiv double %191, %192
  %194 = fptosi double %193 to i32
  store i32 %194, ptr %9, align 4
  %195 = load double, ptr @four, align 8
  %196 = load double, ptr %4, align 8
  %197 = fmul double %195, %196
  %198 = load double, ptr @five, align 8
  %199 = fdiv double %197, %198
  store double %199, ptr @sa, align 8
  %200 = load double, ptr %3, align 8
  %201 = fdiv double %198, %200
  %202 = fadd double %199, %201
  store double %202, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %203 = fmul double %200, %200
  %204 = fmul double %203, %200
  %205 = fdiv double 3.125000e+01, %204
  %206 = fsub double %202, %205
  store double %206, ptr @piprg, align 8
  %207 = load double, ptr @piref, align 8
  %208 = fsub double %206, %207
  store double %208, ptr @pierr, align 8
  %209 = load double, ptr @one, align 8
  %210 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %211 = fdiv double %209, %210
  store double %211, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %212 = fmul double %208, 1.000000e-30
  %213 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %214 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %215 = fsub double %213, %214
  %216 = fmul double %215, 1.000000e-30
  %217 = fmul double %211, 1.000000e-30
  %218 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %212, double noundef %216, double noundef %217) #4
  %219 = load double, ptr @piref, align 8
  %220 = load double, ptr @three, align 8
  %221 = load i32, ptr %9, align 4
  %222 = sitofp i32 %221 to double
  %223 = fmul double %220, %222
  %224 = fdiv double %219, %223
  store double %224, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %225 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  store i32 1, ptr %8, align 4
  %226 = load i32, ptr %9, align 4
  %227 = icmp sgt i32 %226, 1
  br i1 %227, label %.lr.ph13, label %259

.lr.ph13:                                         ; preds = %181
  br label %228

228:                                              ; preds = %.lr.ph13, %254
  %229 = load double, ptr %3, align 8
  %230 = load double, ptr @one, align 8
  %231 = fadd double %229, %230
  store double %231, ptr %3, align 8
  %232 = load double, ptr %5, align 8
  %233 = fmul double %231, %232
  store double %233, ptr %2, align 8
  %234 = fmul double %233, %233
  store double %234, ptr %4, align 8
  %235 = load double, ptr %1, align 8
  %236 = load double, ptr @A6, align 8
  %237 = load double, ptr @A5, align 8
  %238 = fneg double %237
  %239 = call double @llvm.fmuladd.f64(double %236, double %234, double %238)
  %240 = load double, ptr @A4, align 8
  %241 = call double @llvm.fmuladd.f64(double %239, double %234, double %240)
  %242 = load double, ptr %4, align 8
  %243 = load double, ptr @A3, align 8
  %244 = fneg double %243
  %245 = call double @llvm.fmuladd.f64(double %241, double %242, double %244)
  %246 = load double, ptr @A2, align 8
  %247 = call double @llvm.fmuladd.f64(double %245, double %242, double %246)
  %248 = load double, ptr @A1, align 8
  %249 = call double @llvm.fmuladd.f64(double %247, double %242, double %248)
  %250 = load double, ptr %4, align 8
  %251 = load double, ptr @one, align 8
  %252 = call double @llvm.fmuladd.f64(double %249, double %250, double %251)
  %253 = call double @llvm.fmuladd.f64(double %233, double %252, double %235)
  store double %253, ptr %1, align 8
  br label %254

254:                                              ; preds = %228
  %255 = load i32, ptr %8, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, ptr %8, align 4
  %257 = load i32, ptr %9, align 4
  %258 = add nsw i32 %257, -1
  %.not.not36 = icmp slt i32 %255, %258
  br i1 %.not.not36, label %228, label %._crit_edge14, !llvm.loop !13

._crit_edge14:                                    ; preds = %254
  br label %259

259:                                              ; preds = %._crit_edge14, %181
  %260 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %261 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %262 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %263 = load double, ptr @nulltime, align 8
  %264 = fneg double %263
  %265 = call double @llvm.fmuladd.f64(double %261, double %262, double %264)
  store double %265, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %266 = load double, ptr @piref, align 8
  %267 = load double, ptr @three, align 8
  %268 = fdiv double %266, %267
  store double %268, ptr %2, align 8
  %269 = fmul double %268, %268
  store double %269, ptr %4, align 8
  %270 = load double, ptr @A6, align 8
  %271 = load double, ptr @A5, align 8
  %272 = fneg double %271
  %273 = call double @llvm.fmuladd.f64(double %270, double %269, double %272)
  %274 = load double, ptr @A4, align 8
  %275 = call double @llvm.fmuladd.f64(double %273, double %269, double %274)
  %276 = load double, ptr %4, align 8
  %277 = load double, ptr @A3, align 8
  %278 = fneg double %277
  %279 = call double @llvm.fmuladd.f64(double %275, double %276, double %278)
  %280 = load double, ptr @A2, align 8
  %281 = call double @llvm.fmuladd.f64(double %279, double %276, double %280)
  %282 = load double, ptr @A1, align 8
  %283 = call double @llvm.fmuladd.f64(double %281, double %276, double %282)
  %284 = load double, ptr %4, align 8
  %285 = load double, ptr @one, align 8
  %286 = call double @llvm.fmuladd.f64(double %283, double %284, double %285)
  %287 = fmul double %268, %286
  store double %287, ptr @sa, align 8
  %288 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %289 = fdiv double %288, 1.700000e+01
  store double %289, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %290 = load double, ptr %5, align 8
  %291 = load double, ptr @two, align 8
  %292 = load double, ptr %1, align 8
  %293 = call double @llvm.fmuladd.f64(double %291, double %292, double %287)
  %294 = fmul double %290, %293
  %295 = fdiv double %294, %291
  store double %295, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %296 = fadd double %295, -5.000000e-01
  store double %296, ptr @sc, align 8
  %297 = load double, ptr @one, align 8
  %298 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %299 = fdiv double %297, %298
  store double %299, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %300 = fmul double %296, 1.000000e-30
  %301 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %302 = fmul double %301, 1.000000e-30
  %303 = fmul double %299, 1.000000e-30
  %304 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %300, double noundef %302, double noundef %303) #4
  %305 = load double, ptr @A3, align 8
  %306 = fneg double %305
  store double %306, ptr @A3, align 8
  %307 = load double, ptr @A5, align 8
  %308 = fneg double %307
  store double %308, ptr @A5, align 8
  %309 = load double, ptr @piref, align 8
  %310 = load double, ptr @three, align 8
  %311 = load i32, ptr %9, align 4
  %312 = sitofp i32 %311 to double
  %313 = fmul double %310, %312
  %314 = fdiv double %309, %313
  store double %314, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %315 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  store i32 1, ptr %8, align 4
  %316 = load i32, ptr %9, align 4
  %317 = icmp sgt i32 %316, 1
  br i1 %317, label %.lr.ph16, label %344

.lr.ph16:                                         ; preds = %259
  br label %318

318:                                              ; preds = %.lr.ph16, %339
  %319 = load i32, ptr %8, align 4
  %320 = sitofp i32 %319 to double
  %321 = load double, ptr %5, align 8
  %322 = fmul double %321, %320
  store double %322, ptr %2, align 8
  %323 = fmul double %322, %322
  store double %323, ptr %4, align 8
  %324 = load double, ptr %1, align 8
  %325 = load double, ptr @B6, align 8
  %326 = load double, ptr @B5, align 8
  %327 = call double @llvm.fmuladd.f64(double %325, double %323, double %326)
  %328 = load double, ptr @B4, align 8
  %329 = call double @llvm.fmuladd.f64(double %323, double %327, double %328)
  %330 = load double, ptr @B3, align 8
  %331 = call double @llvm.fmuladd.f64(double %323, double %329, double %330)
  %332 = load double, ptr @B2, align 8
  %333 = call double @llvm.fmuladd.f64(double %323, double %331, double %332)
  %334 = load double, ptr @B1, align 8
  %335 = call double @llvm.fmuladd.f64(double %323, double %333, double %334)
  %336 = call double @llvm.fmuladd.f64(double %323, double %335, double %324)
  %337 = load double, ptr @one, align 8
  %338 = fadd double %336, %337
  store double %338, ptr %1, align 8
  br label %339

339:                                              ; preds = %318
  %340 = load i32, ptr %8, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, ptr %8, align 4
  %342 = load i32, ptr %9, align 4
  %343 = add nsw i32 %342, -1
  %.not.not37 = icmp slt i32 %340, %343
  br i1 %.not.not37, label %318, label %._crit_edge17, !llvm.loop !14

._crit_edge17:                                    ; preds = %339
  br label %344

344:                                              ; preds = %._crit_edge17, %259
  %345 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %346 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %347 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %348 = load double, ptr @nulltime, align 8
  %349 = fneg double %348
  %350 = call double @llvm.fmuladd.f64(double %346, double %347, double %349)
  store double %350, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %351 = load double, ptr @piref, align 8
  %352 = load double, ptr @three, align 8
  %353 = fdiv double %351, %352
  store double %353, ptr %2, align 8
  %354 = fmul double %353, %353
  store double %354, ptr %4, align 8
  %355 = load double, ptr @B6, align 8
  %356 = load double, ptr @B5, align 8
  %357 = call double @llvm.fmuladd.f64(double %355, double %354, double %356)
  %358 = load double, ptr @B4, align 8
  %359 = call double @llvm.fmuladd.f64(double %354, double %357, double %358)
  %360 = load double, ptr @B3, align 8
  %361 = call double @llvm.fmuladd.f64(double %354, double %359, double %360)
  %362 = load double, ptr @B2, align 8
  %363 = call double @llvm.fmuladd.f64(double %354, double %361, double %362)
  %364 = load double, ptr @B1, align 8
  %365 = call double @llvm.fmuladd.f64(double %354, double %363, double %364)
  %366 = load double, ptr @one, align 8
  %367 = call double @llvm.fmuladd.f64(double %354, double %365, double %366)
  store double %367, ptr @sa, align 8
  %368 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %369 = fdiv double %368, 1.500000e+01
  store double %369, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %370 = load double, ptr %5, align 8
  %371 = load double, ptr @one, align 8
  %372 = fadd double %367, %371
  %373 = load double, ptr @two, align 8
  %374 = load double, ptr %1, align 8
  %375 = call double @llvm.fmuladd.f64(double %373, double %374, double %372)
  %376 = fmul double %370, %375
  %377 = fdiv double %376, %373
  store double %377, ptr @sa, align 8
  %378 = load double, ptr @piref, align 8
  %379 = load double, ptr @three, align 8
  %380 = fdiv double %378, %379
  store double %380, ptr %2, align 8
  %381 = fmul double %380, %380
  store double %381, ptr %4, align 8
  %382 = load double, ptr @A6, align 8
  %383 = load double, ptr @A5, align 8
  %384 = call double @llvm.fmuladd.f64(double %382, double %381, double %383)
  %385 = load double, ptr @A4, align 8
  %386 = call double @llvm.fmuladd.f64(double %384, double %381, double %385)
  %387 = load double, ptr @A3, align 8
  %388 = call double @llvm.fmuladd.f64(double %386, double %381, double %387)
  %389 = load double, ptr %4, align 8
  %390 = load double, ptr @A2, align 8
  %391 = call double @llvm.fmuladd.f64(double %388, double %389, double %390)
  %392 = load double, ptr @A1, align 8
  %393 = call double @llvm.fmuladd.f64(double %391, double %389, double %392)
  %394 = load double, ptr @A0, align 8
  %395 = call double @llvm.fmuladd.f64(double %393, double %389, double %394)
  %396 = fmul double %380, %395
  store double %396, ptr @sb, align 8
  %397 = load double, ptr @sa, align 8
  %398 = fsub double %397, %396
  store double %398, ptr @sc, align 8
  %399 = load double, ptr @one, align 8
  %400 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %401 = fdiv double %399, %400
  store double %401, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %402 = fmul double %398, 1.000000e-30
  %403 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %404 = fmul double %403, 1.000000e-30
  %405 = fmul double %401, 1.000000e-30
  %406 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %402, double noundef %404, double noundef %405) #4
  %407 = load double, ptr @piref, align 8
  %408 = load double, ptr @three, align 8
  %409 = load i32, ptr %9, align 4
  %410 = sitofp i32 %409 to double
  %411 = fmul double %408, %410
  %412 = fdiv double %407, %411
  store double %412, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %413 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  store i32 1, ptr %8, align 4
  %414 = load i32, ptr %9, align 4
  %415 = icmp sgt i32 %414, 1
  br i1 %415, label %.lr.ph19, label %459

.lr.ph19:                                         ; preds = %344
  br label %416

416:                                              ; preds = %.lr.ph19, %454
  %417 = load i32, ptr %8, align 4
  %418 = sitofp i32 %417 to double
  %419 = load double, ptr %5, align 8
  %420 = fmul double %419, %418
  store double %420, ptr %2, align 8
  %421 = fmul double %420, %420
  store double %421, ptr %4, align 8
  %422 = load double, ptr @A6, align 8
  %423 = load double, ptr @A5, align 8
  %424 = call double @llvm.fmuladd.f64(double %422, double %421, double %423)
  %425 = load double, ptr @A4, align 8
  %426 = call double @llvm.fmuladd.f64(double %424, double %421, double %425)
  %427 = load double, ptr @A3, align 8
  %428 = call double @llvm.fmuladd.f64(double %426, double %421, double %427)
  %429 = load double, ptr %4, align 8
  %430 = load double, ptr @A2, align 8
  %431 = call double @llvm.fmuladd.f64(double %428, double %429, double %430)
  %432 = load double, ptr @A1, align 8
  %433 = call double @llvm.fmuladd.f64(double %431, double %429, double %432)
  %434 = load double, ptr @one, align 8
  %435 = call double @llvm.fmuladd.f64(double %433, double %429, double %434)
  %436 = fmul double %420, %435
  store double %436, ptr %3, align 8
  %437 = load double, ptr %1, align 8
  %438 = load double, ptr %4, align 8
  %439 = load double, ptr @B6, align 8
  %440 = load double, ptr @B5, align 8
  %441 = call double @llvm.fmuladd.f64(double %439, double %438, double %440)
  %442 = load double, ptr @B4, align 8
  %443 = call double @llvm.fmuladd.f64(double %438, double %441, double %442)
  %444 = load double, ptr @B3, align 8
  %445 = call double @llvm.fmuladd.f64(double %438, double %443, double %444)
  %446 = load double, ptr @B2, align 8
  %447 = call double @llvm.fmuladd.f64(double %438, double %445, double %446)
  %448 = load double, ptr @B1, align 8
  %449 = call double @llvm.fmuladd.f64(double %438, double %447, double %448)
  %450 = load double, ptr @one, align 8
  %451 = call double @llvm.fmuladd.f64(double %438, double %449, double %450)
  %452 = fdiv double %436, %451
  %453 = fadd double %437, %452
  store double %453, ptr %1, align 8
  br label %454

454:                                              ; preds = %416
  %455 = load i32, ptr %8, align 4
  %456 = add nsw i32 %455, 1
  store i32 %456, ptr %8, align 4
  %457 = load i32, ptr %9, align 4
  %458 = add nsw i32 %457, -1
  %.not.not38 = icmp slt i32 %455, %458
  br i1 %.not.not38, label %416, label %._crit_edge20, !llvm.loop !15

._crit_edge20:                                    ; preds = %454
  br label %459

459:                                              ; preds = %._crit_edge20, %344
  %460 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %461 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %462 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %463 = load double, ptr @nulltime, align 8
  %464 = fneg double %463
  %465 = call double @llvm.fmuladd.f64(double %461, double %462, double %464)
  store double %465, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %466 = load double, ptr @piref, align 8
  %467 = load double, ptr @three, align 8
  %468 = fdiv double %466, %467
  store double %468, ptr %2, align 8
  %469 = fmul double %468, %468
  store double %469, ptr %4, align 8
  %470 = load double, ptr @A6, align 8
  %471 = load double, ptr @A5, align 8
  %472 = call double @llvm.fmuladd.f64(double %470, double %469, double %471)
  %473 = load double, ptr @A4, align 8
  %474 = call double @llvm.fmuladd.f64(double %472, double %469, double %473)
  %475 = load double, ptr @A3, align 8
  %476 = call double @llvm.fmuladd.f64(double %474, double %469, double %475)
  %477 = load double, ptr %4, align 8
  %478 = load double, ptr @A2, align 8
  %479 = call double @llvm.fmuladd.f64(double %476, double %477, double %478)
  %480 = load double, ptr @A1, align 8
  %481 = call double @llvm.fmuladd.f64(double %479, double %477, double %480)
  %482 = load double, ptr @one, align 8
  %483 = call double @llvm.fmuladd.f64(double %481, double %477, double %482)
  %484 = fmul double %468, %483
  store double %484, ptr @sa, align 8
  %485 = load double, ptr %4, align 8
  %486 = load double, ptr @B6, align 8
  %487 = load double, ptr @B5, align 8
  %488 = call double @llvm.fmuladd.f64(double %486, double %485, double %487)
  %489 = load double, ptr @B4, align 8
  %490 = call double @llvm.fmuladd.f64(double %485, double %488, double %489)
  %491 = load double, ptr @B3, align 8
  %492 = call double @llvm.fmuladd.f64(double %485, double %490, double %491)
  %493 = load double, ptr @B2, align 8
  %494 = call double @llvm.fmuladd.f64(double %485, double %492, double %493)
  %495 = load double, ptr @B1, align 8
  %496 = call double @llvm.fmuladd.f64(double %485, double %494, double %495)
  %497 = load double, ptr @one, align 8
  %498 = call double @llvm.fmuladd.f64(double %485, double %496, double %497)
  store double %498, ptr @sb, align 8
  %499 = load double, ptr @sa, align 8
  %500 = fdiv double %499, %498
  store double %500, ptr @sa, align 8
  %501 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %502 = fdiv double %501, 2.900000e+01
  store double %502, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %503 = load double, ptr %5, align 8
  %504 = load double, ptr @two, align 8
  %505 = load double, ptr %1, align 8
  %506 = call double @llvm.fmuladd.f64(double %504, double %505, double %500)
  %507 = fmul double %503, %506
  %508 = fdiv double %507, %504
  store double %508, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %509 = fadd double %508, f0xBFE62E42FEFA39EF
  store double %509, ptr @sc, align 8
  %510 = load double, ptr @one, align 8
  %511 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %512 = fdiv double %510, %511
  store double %512, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %513 = fmul double %509, 1.000000e-30
  %514 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %515 = fmul double %514, 1.000000e-30
  %516 = fmul double %512, 1.000000e-30
  %517 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %513, double noundef %515, double noundef %516) #4
  %518 = load double, ptr @piref, align 8
  %519 = load double, ptr @four, align 8
  %520 = load i32, ptr %9, align 4
  %521 = sitofp i32 %520 to double
  %522 = fmul double %519, %521
  %523 = fdiv double %518, %522
  store double %523, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %524 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  store i32 1, ptr %8, align 4
  %525 = load i32, ptr %9, align 4
  %526 = icmp sgt i32 %525, 1
  br i1 %526, label %.lr.ph22, label %569

.lr.ph22:                                         ; preds = %459
  br label %527

527:                                              ; preds = %.lr.ph22, %564
  %528 = load i32, ptr %8, align 4
  %529 = sitofp i32 %528 to double
  %530 = load double, ptr %5, align 8
  %531 = fmul double %530, %529
  store double %531, ptr %2, align 8
  %532 = fmul double %531, %531
  store double %532, ptr %4, align 8
  %533 = load double, ptr @A6, align 8
  %534 = load double, ptr @A5, align 8
  %535 = call double @llvm.fmuladd.f64(double %533, double %532, double %534)
  %536 = load double, ptr @A4, align 8
  %537 = call double @llvm.fmuladd.f64(double %535, double %532, double %536)
  %538 = load double, ptr @A3, align 8
  %539 = call double @llvm.fmuladd.f64(double %537, double %532, double %538)
  %540 = load double, ptr %4, align 8
  %541 = load double, ptr @A2, align 8
  %542 = call double @llvm.fmuladd.f64(double %539, double %540, double %541)
  %543 = load double, ptr @A1, align 8
  %544 = call double @llvm.fmuladd.f64(double %542, double %540, double %543)
  %545 = load double, ptr @one, align 8
  %546 = call double @llvm.fmuladd.f64(double %544, double %540, double %545)
  %547 = fmul double %531, %546
  store double %547, ptr %3, align 8
  %548 = load double, ptr %1, align 8
  %549 = load double, ptr %4, align 8
  %550 = load double, ptr @B6, align 8
  %551 = load double, ptr @B5, align 8
  %552 = call double @llvm.fmuladd.f64(double %550, double %549, double %551)
  %553 = load double, ptr @B4, align 8
  %554 = call double @llvm.fmuladd.f64(double %549, double %552, double %553)
  %555 = load double, ptr @B3, align 8
  %556 = call double @llvm.fmuladd.f64(double %549, double %554, double %555)
  %557 = load double, ptr @B2, align 8
  %558 = call double @llvm.fmuladd.f64(double %549, double %556, double %557)
  %559 = load double, ptr @B1, align 8
  %560 = call double @llvm.fmuladd.f64(double %549, double %558, double %559)
  %561 = load double, ptr @one, align 8
  %562 = call double @llvm.fmuladd.f64(double %549, double %560, double %561)
  %563 = call double @llvm.fmuladd.f64(double %547, double %562, double %548)
  store double %563, ptr %1, align 8
  br label %564

564:                                              ; preds = %527
  %565 = load i32, ptr %8, align 4
  %566 = add nsw i32 %565, 1
  store i32 %566, ptr %8, align 4
  %567 = load i32, ptr %9, align 4
  %568 = add nsw i32 %567, -1
  %.not.not39 = icmp slt i32 %565, %568
  br i1 %.not.not39, label %527, label %._crit_edge23, !llvm.loop !16

._crit_edge23:                                    ; preds = %564
  br label %569

569:                                              ; preds = %._crit_edge23, %459
  %570 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %571 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %572 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %573 = load double, ptr @nulltime, align 8
  %574 = fneg double %573
  %575 = call double @llvm.fmuladd.f64(double %571, double %572, double %574)
  store double %575, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %576 = load double, ptr @piref, align 8
  %577 = load double, ptr @four, align 8
  %578 = fdiv double %576, %577
  store double %578, ptr %2, align 8
  %579 = fmul double %578, %578
  store double %579, ptr %4, align 8
  %580 = load double, ptr @A6, align 8
  %581 = load double, ptr @A5, align 8
  %582 = call double @llvm.fmuladd.f64(double %580, double %579, double %581)
  %583 = load double, ptr @A4, align 8
  %584 = call double @llvm.fmuladd.f64(double %582, double %579, double %583)
  %585 = load double, ptr @A3, align 8
  %586 = call double @llvm.fmuladd.f64(double %584, double %579, double %585)
  %587 = load double, ptr %4, align 8
  %588 = load double, ptr @A2, align 8
  %589 = call double @llvm.fmuladd.f64(double %586, double %587, double %588)
  %590 = load double, ptr @A1, align 8
  %591 = call double @llvm.fmuladd.f64(double %589, double %587, double %590)
  %592 = load double, ptr @one, align 8
  %593 = call double @llvm.fmuladd.f64(double %591, double %587, double %592)
  %594 = fmul double %578, %593
  store double %594, ptr @sa, align 8
  %595 = load double, ptr %4, align 8
  %596 = load double, ptr @B6, align 8
  %597 = load double, ptr @B5, align 8
  %598 = call double @llvm.fmuladd.f64(double %596, double %595, double %597)
  %599 = load double, ptr @B4, align 8
  %600 = call double @llvm.fmuladd.f64(double %595, double %598, double %599)
  %601 = load double, ptr @B3, align 8
  %602 = call double @llvm.fmuladd.f64(double %595, double %600, double %601)
  %603 = load double, ptr @B2, align 8
  %604 = call double @llvm.fmuladd.f64(double %595, double %602, double %603)
  %605 = load double, ptr @B1, align 8
  %606 = call double @llvm.fmuladd.f64(double %595, double %604, double %605)
  %607 = load double, ptr @one, align 8
  %608 = call double @llvm.fmuladd.f64(double %595, double %606, double %607)
  store double %608, ptr @sb, align 8
  %609 = load double, ptr @sa, align 8
  %610 = fmul double %609, %608
  store double %610, ptr @sa, align 8
  %611 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %612 = fdiv double %611, 2.900000e+01
  store double %612, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %613 = load double, ptr %5, align 8
  %614 = load double, ptr @two, align 8
  %615 = load double, ptr %1, align 8
  %616 = call double @llvm.fmuladd.f64(double %614, double %615, double %610)
  %617 = fmul double %613, %616
  %618 = fdiv double %617, %614
  store double %618, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %619 = fadd double %618, -2.500000e-01
  store double %619, ptr @sc, align 8
  %620 = load double, ptr @one, align 8
  %621 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %622 = fdiv double %620, %621
  store double %622, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %623 = fmul double %619, 1.000000e-30
  %624 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %625 = fmul double %624, 1.000000e-30
  %626 = fmul double %622, 1.000000e-30
  %627 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %623, double noundef %625, double noundef %626) #4
  store double 0.000000e+00, ptr %1, align 8
  %628 = load double, ptr @one, align 8
  store double %628, ptr %4, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %629 = load i32, ptr %9, align 4
  %630 = sitofp i32 %629 to double
  %631 = fdiv double f0x40599541F7F192A4, %630
  store double %631, ptr %3, align 8
  %632 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  store i32 1, ptr %8, align 4
  %633 = icmp sgt i32 %629, 1
  br i1 %633, label %.lr.ph25, label %659

.lr.ph25:                                         ; preds = %569
  br label %634

634:                                              ; preds = %.lr.ph25, %654
  %635 = load i32, ptr %8, align 4
  %636 = sitofp i32 %635 to double
  %637 = load double, ptr %3, align 8
  %638 = fmul double %637, %636
  store double %638, ptr %5, align 8
  %639 = fmul double %638, %638
  store double %639, ptr %2, align 8
  %640 = load double, ptr %1, align 8
  %641 = load double, ptr %4, align 8
  %642 = fadd double %638, %641
  %643 = fdiv double %641, %642
  %644 = fsub double %640, %643
  %645 = load double, ptr %5, align 8
  %646 = load double, ptr %2, align 8
  %647 = fadd double %646, %641
  %648 = fdiv double %645, %647
  %649 = fsub double %644, %648
  %650 = load double, ptr %4, align 8
  %651 = call double @llvm.fmuladd.f64(double %645, double %646, double %650)
  %652 = fdiv double %646, %651
  %653 = fsub double %649, %652
  store double %653, ptr %1, align 8
  br label %654

654:                                              ; preds = %634
  %655 = load i32, ptr %8, align 4
  %656 = add nsw i32 %655, 1
  store i32 %656, ptr %8, align 4
  %657 = load i32, ptr %9, align 4
  %658 = add nsw i32 %657, -1
  %.not.not40 = icmp slt i32 %655, %658
  br i1 %.not.not40, label %634, label %._crit_edge26, !llvm.loop !17

._crit_edge26:                                    ; preds = %654
  br label %659

659:                                              ; preds = %._crit_edge26, %569
  %660 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %661 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %662 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %663 = load double, ptr @nulltime, align 8
  %664 = fneg double %663
  %665 = call double @llvm.fmuladd.f64(double %661, double %662, double %664)
  store double %665, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %666 = fdiv double %665, 1.200000e+01
  store double %666, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %667 = load double, ptr @sa, align 8
  store double %667, ptr %5, align 8
  %668 = fmul double %667, %667
  store double %668, ptr %2, align 8
  %669 = load double, ptr %4, align 8
  %670 = fneg double %669
  %671 = fadd double %667, %669
  %672 = fdiv double %669, %671
  %673 = fsub double %670, %672
  %674 = load double, ptr %5, align 8
  %675 = load double, ptr %2, align 8
  %676 = load double, ptr %4, align 8
  %677 = fadd double %675, %676
  %678 = fdiv double %674, %677
  %679 = fsub double %673, %678
  %680 = call double @llvm.fmuladd.f64(double %674, double %675, double %676)
  %681 = fdiv double %675, %680
  %682 = fsub double %679, %681
  store double %682, ptr @sa, align 8
  %683 = load double, ptr %3, align 8
  %684 = fmul double %683, 1.800000e+01
  %685 = load double, ptr @two, align 8
  %686 = load double, ptr %1, align 8
  %687 = call double @llvm.fmuladd.f64(double %685, double %686, double %682)
  %688 = fmul double %684, %687
  store double %688, ptr @sa, align 8
  %689 = fptosi double %688 to i32
  %690 = mul nsw i32 %689, -2000
  store i32 %690, ptr %9, align 4
  %691 = sitofp i32 %690 to double
  %692 = load double, ptr @scale, align 8
  %693 = fdiv double %691, %692
  %694 = fptosi double %693 to i32
  store i32 %694, ptr %9, align 4
  %695 = load double, ptr @sa, align 8
  %696 = fadd double %695, 5.002000e+02
  store double %696, ptr @sc, align 8
  %697 = load double, ptr @one, align 8
  %698 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %699 = fdiv double %697, %698
  store double %699, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %700 = fmul double %696, 1.000000e-30
  %701 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %702 = fmul double %701, 1.000000e-30
  %703 = fmul double %699, 1.000000e-30
  %704 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %700, double noundef %702, double noundef %703) #4
  %705 = load double, ptr @piref, align 8
  %706 = load double, ptr @three, align 8
  %707 = load i32, ptr %9, align 4
  %708 = sitofp i32 %707 to double
  %709 = fmul double %706, %708
  %710 = fdiv double %705, %709
  store double %710, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %711 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  store i32 1, ptr %8, align 4
  %712 = load i32, ptr %9, align 4
  %713 = icmp sgt i32 %712, 1
  br i1 %713, label %.lr.ph28, label %758

.lr.ph28:                                         ; preds = %659
  br label %714

714:                                              ; preds = %.lr.ph28, %753
  %715 = load i32, ptr %8, align 4
  %716 = sitofp i32 %715 to double
  %717 = load double, ptr %5, align 8
  %718 = fmul double %717, %716
  store double %718, ptr %2, align 8
  %719 = fmul double %718, %718
  store double %719, ptr %4, align 8
  %720 = load double, ptr @B6, align 8
  %721 = load double, ptr @B5, align 8
  %722 = call double @llvm.fmuladd.f64(double %720, double %719, double %721)
  %723 = load double, ptr @B4, align 8
  %724 = call double @llvm.fmuladd.f64(double %719, double %722, double %723)
  %725 = load double, ptr @B3, align 8
  %726 = call double @llvm.fmuladd.f64(double %719, double %724, double %725)
  %727 = load double, ptr @B2, align 8
  %728 = call double @llvm.fmuladd.f64(double %719, double %726, double %727)
  %729 = load double, ptr @B1, align 8
  %730 = call double @llvm.fmuladd.f64(double %719, double %728, double %729)
  %731 = load double, ptr @one, align 8
  %732 = call double @llvm.fmuladd.f64(double %719, double %730, double %731)
  store double %732, ptr %3, align 8
  %733 = load double, ptr %1, align 8
  %734 = fmul double %732, %732
  %735 = load double, ptr %2, align 8
  %736 = fmul double %734, %735
  %737 = load double, ptr @A6, align 8
  %738 = load double, ptr %4, align 8
  %739 = load double, ptr @A5, align 8
  %740 = call double @llvm.fmuladd.f64(double %737, double %738, double %739)
  %741 = load double, ptr @A4, align 8
  %742 = call double @llvm.fmuladd.f64(double %740, double %738, double %741)
  %743 = load double, ptr @A3, align 8
  %744 = call double @llvm.fmuladd.f64(double %742, double %738, double %743)
  %745 = load double, ptr %4, align 8
  %746 = load double, ptr @A2, align 8
  %747 = call double @llvm.fmuladd.f64(double %744, double %745, double %746)
  %748 = load double, ptr @A1, align 8
  %749 = call double @llvm.fmuladd.f64(double %747, double %745, double %748)
  %750 = load double, ptr @one, align 8
  %751 = call double @llvm.fmuladd.f64(double %749, double %745, double %750)
  %752 = call double @llvm.fmuladd.f64(double %736, double %751, double %733)
  store double %752, ptr %1, align 8
  br label %753

753:                                              ; preds = %714
  %754 = load i32, ptr %8, align 4
  %755 = add nsw i32 %754, 1
  store i32 %755, ptr %8, align 4
  %756 = load i32, ptr %9, align 4
  %757 = add nsw i32 %756, -1
  %.not.not41 = icmp slt i32 %754, %757
  br i1 %.not.not41, label %714, label %._crit_edge29, !llvm.loop !18

._crit_edge29:                                    ; preds = %753
  br label %758

758:                                              ; preds = %._crit_edge29, %659
  %759 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %760 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %761 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %762 = load double, ptr @nulltime, align 8
  %763 = fneg double %762
  %764 = call double @llvm.fmuladd.f64(double %760, double %761, double %763)
  store double %764, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %765 = load double, ptr @piref, align 8
  %766 = load double, ptr @three, align 8
  %767 = fdiv double %765, %766
  store double %767, ptr %2, align 8
  %768 = fmul double %767, %767
  store double %768, ptr %4, align 8
  %769 = load double, ptr @A6, align 8
  %770 = load double, ptr @A5, align 8
  %771 = call double @llvm.fmuladd.f64(double %769, double %768, double %770)
  %772 = load double, ptr @A4, align 8
  %773 = call double @llvm.fmuladd.f64(double %771, double %768, double %772)
  %774 = load double, ptr @A3, align 8
  %775 = call double @llvm.fmuladd.f64(double %773, double %768, double %774)
  %776 = load double, ptr %4, align 8
  %777 = load double, ptr @A2, align 8
  %778 = call double @llvm.fmuladd.f64(double %775, double %776, double %777)
  %779 = load double, ptr @A1, align 8
  %780 = call double @llvm.fmuladd.f64(double %778, double %776, double %779)
  %781 = load double, ptr @one, align 8
  %782 = call double @llvm.fmuladd.f64(double %780, double %776, double %781)
  %783 = fmul double %767, %782
  store double %783, ptr @sa, align 8
  %784 = load double, ptr %4, align 8
  %785 = load double, ptr @B6, align 8
  %786 = load double, ptr @B5, align 8
  %787 = call double @llvm.fmuladd.f64(double %785, double %784, double %786)
  %788 = load double, ptr @B4, align 8
  %789 = call double @llvm.fmuladd.f64(double %784, double %787, double %788)
  %790 = load double, ptr @B3, align 8
  %791 = call double @llvm.fmuladd.f64(double %784, double %789, double %790)
  %792 = load double, ptr @B2, align 8
  %793 = call double @llvm.fmuladd.f64(double %784, double %791, double %792)
  %794 = load double, ptr @B1, align 8
  %795 = call double @llvm.fmuladd.f64(double %784, double %793, double %794)
  %796 = load double, ptr @one, align 8
  %797 = call double @llvm.fmuladd.f64(double %784, double %795, double %796)
  store double %797, ptr @sb, align 8
  %798 = load double, ptr @sa, align 8
  %799 = fmul double %798, %797
  %800 = fmul double %799, %797
  store double %800, ptr @sa, align 8
  %801 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %802 = fdiv double %801, 3.000000e+01
  store double %802, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %803 = load double, ptr %5, align 8
  %804 = load double, ptr @two, align 8
  %805 = load double, ptr %1, align 8
  %806 = call double @llvm.fmuladd.f64(double %804, double %805, double %800)
  %807 = fmul double %803, %806
  %808 = fdiv double %807, %804
  store double %808, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %809 = fadd double %808, f0xBFD2AAAAAAAAAAAB
  store double %809, ptr @sc, align 8
  %810 = load double, ptr @one, align 8
  %811 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %812 = fdiv double %810, %811
  store double %812, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %813 = fmul double %809, 1.000000e-30
  %814 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %815 = fmul double %814, 1.000000e-30
  %816 = fmul double %812, 1.000000e-30
  %817 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %813, double noundef %815, double noundef %816) #4
  %818 = load double, ptr @five, align 8
  %819 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %820 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %821 = fsub double %819, %820
  %822 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %823 = call double @llvm.fmuladd.f64(double %818, double %821, double %822)
  %824 = fdiv double %823, 5.200000e+01
  store double %824, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %825 = load double, ptr @one, align 8
  %826 = fdiv double %825, %824
  store double %826, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %827 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %828 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %829 = fadd double %827, %828
  %830 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %831 = fadd double %829, %830
  %832 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %833 = fadd double %831, %832
  %834 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %835 = fadd double %833, %834
  store double %835, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %836 = load double, ptr @four, align 8
  %837 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %838 = call double @llvm.fmuladd.f64(double %836, double %837, double %835)
  %839 = fdiv double %838, 1.520000e+02
  store double %839, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %840 = load double, ptr @one, align 8
  %841 = fdiv double %840, %839
  store double %841, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %842 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %843 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %844 = fadd double %842, %843
  %845 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %846 = fadd double %844, %845
  %847 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %848 = fadd double %846, %847
  %849 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %850 = fadd double %848, %849
  store double %850, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %851 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %852 = fadd double %850, %851
  %853 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %854 = fadd double %852, %853
  %855 = fdiv double %854, 1.460000e+02
  store double %855, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %856 = load double, ptr @one, align 8
  %857 = fdiv double %856, %855
  store double %857, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %858 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %859 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %860 = fadd double %858, %859
  %861 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %862 = fadd double %860, %861
  %863 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %864 = fadd double %862, %863
  %865 = fdiv double %864, 9.100000e+01
  store double %865, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %866 = load double, ptr @one, align 8
  %867 = fdiv double %866, %865
  store double %867, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar42 = call i32 @putchar(i32 10)
  %868 = load i32, ptr %9, align 4
  %869 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %868) #4
  %870 = load double, ptr @nulltime, align 8
  %871 = fmul double %870, 1.000000e-30
  %872 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %871) #4
  %873 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %874 = fmul double %873, 1.000000e-30
  %875 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %874) #4
  %876 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %877 = fmul double %876, 1.000000e-30
  %878 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %877) #4
  %879 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %880 = fmul double %879, 1.000000e-30
  %881 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %880) #4
  %882 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %883 = fmul double %882, 1.000000e-30
  %884 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %883) #4
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
