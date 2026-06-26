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
  %.promoted = load double, ptr %1, align 8
  br label %5

5:                                                ; preds = %44, %0
  %6 = phi double [ %15, %44 ], [ %.promoted, %0 ]
  %7 = phi double [ %.lcssa9, %44 ], [ undef, %0 ]
  %8 = phi double [ %17, %44 ], [ undef, %0 ]
  %9 = phi i32 [ %14, %44 ], [ 15625, %0 ]
  %10 = phi double [ %41, %44 ], [ 0.000000e+00, %0 ]
  %11 = load double, ptr @TLimit, align 8
  %12 = fcmp olt double %10, %11
  br i1 %12, label %13, label %.loopexit

13:                                               ; preds = %5
  %14 = shl i32 %9, 1
  %15 = load double, ptr @one, align 8
  %16 = sitofp i32 %14 to double
  %17 = fdiv double %15, %16
  %18 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %19 = load double, ptr @D1, align 8
  %20 = load double, ptr @D2, align 8
  %21 = load double, ptr @D3, align 8
  %22 = load double, ptr @E2, align 8
  %23 = load double, ptr @E3, align 8
  br label %24

24:                                               ; preds = %28, %13
  %25 = phi double [ %29, %28 ], [ 0.000000e+00, %13 ]
  %26 = phi double [ %37, %28 ], [ 0.000000e+00, %13 ]
  %27 = phi i32 [ %38, %28 ], [ 1, %13 ]
  %exitcond = icmp ne i32 %27, %14
  br i1 %exitcond, label %28, label %39

28:                                               ; preds = %24
  %29 = fadd double %25, %15
  %30 = fmul double %29, %17
  %31 = call double @llvm.fmuladd.f64(double %30, double %21, double %20)
  %32 = call double @llvm.fmuladd.f64(double %30, double %31, double %19)
  %33 = call double @llvm.fmuladd.f64(double %30, double %23, double %22)
  %34 = call double @llvm.fmuladd.f64(double %30, double %33, double %19)
  %35 = call double @llvm.fmuladd.f64(double %30, double %34, double %15)
  %36 = fdiv double %32, %35
  %37 = fadd double %26, %36
  %38 = add nuw nsw i32 %27, 1
  br label %24, !llvm.loop !7

39:                                               ; preds = %24
  %.lcssa9 = phi double [ %26, %24 ]
  %40 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %41 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %41, ptr @sa, align 8
  %42 = icmp eq i32 %9, 256000000
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  %.lcssa18 = phi double [ %15, %39 ]
  %.lcssa16 = phi double [ %17, %39 ]
  %.lcssa9.lcssa = phi double [ %.lcssa9, %39 ]
  store double %.lcssa18, ptr %1, align 8
  br label %45

44:                                               ; preds = %39
  br label %5, !llvm.loop !9

.loopexit:                                        ; preds = %5
  %.lcssa17 = phi double [ %6, %5 ]
  %.lcssa14 = phi double [ %7, %5 ]
  %.lcssa12 = phi double [ %8, %5 ]
  store double %.lcssa17, ptr %1, align 8
  br label %45

45:                                               ; preds = %.loopexit, %43
  %46 = phi double [ %.lcssa9.lcssa, %43 ], [ %.lcssa14, %.loopexit ]
  %47 = phi double [ %.lcssa16, %43 ], [ %.lcssa12, %.loopexit ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %48 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %49

49:                                               ; preds = %50, %45
  br i1 false, label %50, label %51

50:                                               ; preds = %49
  br label %49, !llvm.loop !10

51:                                               ; preds = %49
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
  %78 = call double @llvm.fmuladd.f64(double %77, double %46, double %76)
  %79 = fmul double %47, %78
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
  store i32 %87, ptr %2, align 4
  %94 = load double, ptr @five, align 8
  %95 = fneg double %94
  %96 = load double, ptr @one, align 8
  %97 = fneg double %96
  store double %97, ptr @sa, align 8
  %98 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %sa.promoted = load double, ptr @sa, align 8
  %smax = call i32 @llvm.smax.i32(i32 %87, i32 0)
  %99 = add nuw i32 %smax, 1
  br label %100

100:                                              ; preds = %104, %58
  %101 = phi double [ %106, %104 ], [ %sa.promoted, %58 ]
  %102 = phi double [ %105, %104 ], [ %95, %58 ]
  %103 = phi i32 [ %107, %104 ], [ 1, %58 ]
  %exitcond32 = icmp eq i32 %103, %99
  br i1 %exitcond32, label %108, label %104

104:                                              ; preds = %100
  %105 = fneg double %102
  %106 = fsub double %101, %102
  store double %106, ptr @sa, align 8
  %107 = add nuw i32 %103, 1
  br label %100, !llvm.loop !11

108:                                              ; preds = %100
  %.lcssa8 = phi double [ %102, %100 ]
  %109 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %110 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %111 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %112 = fmul double %110, %111
  %113 = fcmp olt double %112, 0.000000e+00
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %115

115:                                              ; preds = %114, %108
  %storemerge = phi double [ 0.000000e+00, %114 ], [ %112, %108 ]
  store double %storemerge, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %116 = sitofp i32 %87 to double
  store double %116, ptr @sc, align 8
  %117 = load double, ptr @sa, align 8
  store double 0.000000e+00, ptr %1, align 8
  %118 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %119 = load double, ptr @two, align 8
  %sa.promoted19 = load double, ptr @sa, align 8
  %.promoted20 = load double, ptr %1, align 8
  %smax33 = call i32 @llvm.smax.i32(i32 %87, i32 0)
  %120 = add nuw i32 %smax33, 1
  br label %121

121:                                              ; preds = %129, %115
  %122 = phi double [ %137, %129 ], [ %.promoted20, %115 ]
  %123 = phi double [ %131, %129 ], [ %sa.promoted19, %115 ]
  %124 = phi double [ %132, %129 ], [ %117, %115 ]
  %125 = phi double [ %130, %129 ], [ %.lcssa8, %115 ]
  %126 = phi double [ %135, %129 ], [ 0.000000e+00, %115 ]
  %127 = phi double [ %134, %129 ], [ 0.000000e+00, %115 ]
  %128 = phi i32 [ %138, %129 ], [ 1, %115 ]
  %exitcond34 = icmp eq i32 %128, %120
  br i1 %exitcond34, label %139, label %129

129:                                              ; preds = %121
  %130 = fneg double %125
  %131 = fsub double %123, %125
  store double %131, ptr @sa, align 8
  %132 = fadd double %124, %119
  %133 = fsub double %130, %132
  %134 = fadd double %127, %133
  %135 = call double @llvm.fmuladd.f64(double %125, double %132, double %126)
  %136 = fdiv double %125, %132
  %137 = fsub double %122, %136
  %138 = add nuw i32 %128, 1
  br label %121, !llvm.loop !12

139:                                              ; preds = %121
  %.lcssa21 = phi double [ %122, %121 ]
  %.lcssa7 = phi double [ %126, %121 ]
  %.lcssa6 = phi double [ %127, %121 ]
  store double %.lcssa21, ptr %1, align 8
  %140 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %141 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %142 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %143 = fmul double %141, %142
  store double %143, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %144 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %145 = fsub double %143, %144
  %146 = fdiv double %145, 7.000000e+00
  store double %146, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %147 = load double, ptr @sa, align 8
  %148 = fmul double %147, %.lcssa6
  %149 = load double, ptr @sc, align 8
  %150 = fdiv double %148, %149
  %151 = fptosi double %150 to i32
  store i32 %151, ptr %2, align 4
  %152 = load double, ptr @four, align 8
  %153 = load double, ptr %1, align 8
  %154 = fmul double %152, %153
  %155 = load double, ptr @five, align 8
  %156 = fdiv double %154, %155
  store double %156, ptr @sa, align 8
  %157 = fdiv double %155, %.lcssa7
  %158 = fadd double %156, %157
  store double %158, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %159 = fmul double %.lcssa7, %.lcssa7
  %160 = fmul double %159, %.lcssa7
  %161 = fdiv double 3.125000e+01, %160
  %162 = fsub double %158, %161
  store double %162, ptr @piprg, align 8
  %163 = load double, ptr @piref, align 8
  %164 = fsub double %162, %163
  store double %164, ptr @pierr, align 8
  %165 = load double, ptr @one, align 8
  %166 = fdiv double %165, %146
  store double %166, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %167 = fmul double %164, 1.000000e-30
  %168 = fmul double %145, 1.000000e-30
  %169 = fmul double %166, 1.000000e-30
  %170 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %167, double noundef %168, double noundef %169) #4
  %171 = load double, ptr @piref, align 8
  %172 = load double, ptr @three, align 8
  %173 = sitofp i32 %151 to double
  %174 = fmul double %172, %173
  %175 = fdiv double %171, %174
  %176 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %177 = load double, ptr @one, align 8
  %178 = load double, ptr @A6, align 8
  %179 = load double, ptr @A5, align 8
  %180 = fneg double %179
  %181 = load double, ptr @A4, align 8
  %182 = load double, ptr @A3, align 8
  %183 = fneg double %182
  %184 = load double, ptr @A2, align 8
  %185 = load double, ptr @A1, align 8
  %.promoted22 = load double, ptr %1, align 1
  %smax35 = call i32 @llvm.smax.i32(i32 %151, i32 1)
  br label %186

186:                                              ; preds = %191, %139
  %187 = phi double [ %194, %191 ], [ %.promoted22, %139 ]
  %188 = phi double [ %192, %191 ], [ 0.000000e+00, %139 ]
  %189 = phi double [ %201, %191 ], [ 0.000000e+00, %139 ]
  %190 = phi i32 [ %202, %191 ], [ 1, %139 ]
  %exitcond36 = icmp ne i32 %190, %smax35
  br i1 %exitcond36, label %191, label %203

191:                                              ; preds = %186
  %192 = fadd double %188, %177
  %193 = fmul double %192, %175
  %194 = fmul double %193, %193
  %195 = call double @llvm.fmuladd.f64(double %178, double %194, double %180)
  %196 = call double @llvm.fmuladd.f64(double %195, double %194, double %181)
  %197 = call double @llvm.fmuladd.f64(double %196, double %194, double %183)
  %198 = call double @llvm.fmuladd.f64(double %197, double %194, double %184)
  %199 = call double @llvm.fmuladd.f64(double %198, double %194, double %185)
  %200 = call double @llvm.fmuladd.f64(double %199, double %194, double %177)
  %201 = call double @llvm.fmuladd.f64(double %193, double %200, double %189)
  %202 = add nuw i32 %190, 1
  br label %186, !llvm.loop !13

203:                                              ; preds = %186
  %.lcssa23 = phi double [ %187, %186 ]
  %.lcssa5 = phi double [ %189, %186 ]
  store double %.lcssa23, ptr %1, align 1
  %204 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %205 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %206 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %207 = load double, ptr @nulltime, align 8
  %208 = fneg double %207
  %209 = call double @llvm.fmuladd.f64(double %205, double %206, double %208)
  store double %209, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %210 = load double, ptr @piref, align 8
  %211 = load double, ptr @three, align 8
  %212 = fdiv double %210, %211
  %213 = fmul double %212, %212
  store double %213, ptr %1, align 8
  %214 = load double, ptr @A6, align 8
  %215 = load double, ptr @A5, align 8
  %216 = fneg double %215
  %217 = call double @llvm.fmuladd.f64(double %214, double %213, double %216)
  %218 = load double, ptr @A4, align 8
  %219 = call double @llvm.fmuladd.f64(double %217, double %213, double %218)
  %220 = load double, ptr @A3, align 8
  %221 = fneg double %220
  %222 = call double @llvm.fmuladd.f64(double %219, double %213, double %221)
  %223 = load double, ptr @A2, align 8
  %224 = call double @llvm.fmuladd.f64(double %222, double %213, double %223)
  %225 = load double, ptr @A1, align 8
  %226 = call double @llvm.fmuladd.f64(double %224, double %213, double %225)
  %227 = load double, ptr @one, align 8
  %228 = call double @llvm.fmuladd.f64(double %226, double %213, double %227)
  %229 = fmul double %212, %228
  store double %229, ptr @sa, align 8
  %230 = fdiv double %209, 1.700000e+01
  store double %230, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %231 = load double, ptr @two, align 8
  %232 = call double @llvm.fmuladd.f64(double %231, double %.lcssa5, double %229)
  %233 = fmul double %175, %232
  %234 = fdiv double %233, %231
  store double %234, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %235 = fadd double %234, -5.000000e-01
  store double %235, ptr @sc, align 8
  %236 = fdiv double %227, %230
  store double %236, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %237 = fmul double %235, 1.000000e-30
  %238 = fmul double %209, 1.000000e-30
  %239 = fmul double %236, 1.000000e-30
  %240 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %237, double noundef %238, double noundef %239) #4
  %241 = load double, ptr @A3, align 8
  %242 = fneg double %241
  store double %242, ptr @A3, align 8
  %243 = load double, ptr @A5, align 8
  %244 = fneg double %243
  store double %244, ptr @A5, align 8
  %245 = load double, ptr @piref, align 8
  %246 = load double, ptr @three, align 8
  %247 = fmul double %246, %173
  %248 = fdiv double %245, %247
  %249 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %250 = load double, ptr @B6, align 8
  %251 = load double, ptr @B5, align 8
  %252 = load double, ptr @B4, align 8
  %253 = load double, ptr @B3, align 8
  %254 = load double, ptr @B2, align 8
  %255 = load double, ptr @B1, align 8
  %256 = load double, ptr @one, align 8
  %.promoted24 = load double, ptr %1, align 1
  br label %257

257:                                              ; preds = %261, %203
  %258 = phi double [ %264, %261 ], [ %.promoted24, %203 ]
  %259 = phi double [ %271, %261 ], [ 0.000000e+00, %203 ]
  %260 = phi i32 [ %272, %261 ], [ 1, %203 ]
  %exitcond37 = icmp ne i32 %260, %smax35
  br i1 %exitcond37, label %261, label %273

261:                                              ; preds = %257
  %262 = uitofp nneg i32 %260 to double
  %263 = fmul double %248, %262
  %264 = fmul double %263, %263
  %265 = call double @llvm.fmuladd.f64(double %250, double %264, double %251)
  %266 = call double @llvm.fmuladd.f64(double %264, double %265, double %252)
  %267 = call double @llvm.fmuladd.f64(double %264, double %266, double %253)
  %268 = call double @llvm.fmuladd.f64(double %264, double %267, double %254)
  %269 = call double @llvm.fmuladd.f64(double %264, double %268, double %255)
  %270 = call double @llvm.fmuladd.f64(double %264, double %269, double %259)
  %271 = fadd double %270, %256
  %272 = add nuw i32 %260, 1
  br label %257, !llvm.loop !14

273:                                              ; preds = %257
  %.lcssa25 = phi double [ %258, %257 ]
  %.lcssa4 = phi double [ %259, %257 ]
  store double %.lcssa25, ptr %1, align 1
  %274 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %275 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %276 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %277 = load double, ptr @nulltime, align 8
  %278 = fneg double %277
  %279 = call double @llvm.fmuladd.f64(double %275, double %276, double %278)
  store double %279, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %280 = load double, ptr @piref, align 8
  %281 = load double, ptr @three, align 8
  %282 = fdiv double %280, %281
  %283 = fmul double %282, %282
  store double %283, ptr %1, align 8
  %284 = load double, ptr @B6, align 8
  %285 = load double, ptr @B5, align 8
  %286 = call double @llvm.fmuladd.f64(double %284, double %283, double %285)
  %287 = load double, ptr @B4, align 8
  %288 = call double @llvm.fmuladd.f64(double %283, double %286, double %287)
  %289 = load double, ptr @B3, align 8
  %290 = call double @llvm.fmuladd.f64(double %283, double %288, double %289)
  %291 = load double, ptr @B2, align 8
  %292 = call double @llvm.fmuladd.f64(double %283, double %290, double %291)
  %293 = load double, ptr @B1, align 8
  %294 = call double @llvm.fmuladd.f64(double %283, double %292, double %293)
  %295 = load double, ptr @one, align 8
  %296 = call double @llvm.fmuladd.f64(double %283, double %294, double %295)
  store double %296, ptr @sa, align 8
  %297 = fdiv double %279, 1.500000e+01
  store double %297, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %298 = fadd double %296, %295
  %299 = load double, ptr @two, align 8
  %300 = call double @llvm.fmuladd.f64(double %299, double %.lcssa4, double %298)
  %301 = fmul double %248, %300
  %302 = fdiv double %301, %299
  store double %302, ptr @sa, align 8
  store double %283, ptr %1, align 8
  %303 = load double, ptr @A6, align 8
  %304 = load double, ptr @A5, align 8
  %305 = call double @llvm.fmuladd.f64(double %303, double %283, double %304)
  %306 = load double, ptr @A4, align 8
  %307 = call double @llvm.fmuladd.f64(double %305, double %283, double %306)
  %308 = load double, ptr @A3, align 8
  %309 = call double @llvm.fmuladd.f64(double %307, double %283, double %308)
  %310 = load double, ptr @A2, align 8
  %311 = call double @llvm.fmuladd.f64(double %309, double %283, double %310)
  %312 = load double, ptr @A1, align 8
  %313 = call double @llvm.fmuladd.f64(double %311, double %283, double %312)
  %314 = load double, ptr @A0, align 8
  %315 = call double @llvm.fmuladd.f64(double %313, double %283, double %314)
  %316 = fmul double %282, %315
  store double %316, ptr @sb, align 8
  %317 = fsub double %302, %316
  store double %317, ptr @sc, align 8
  %318 = fdiv double %295, %297
  store double %318, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %319 = fmul double %317, 1.000000e-30
  %320 = fmul double %279, 1.000000e-30
  %321 = fmul double %318, 1.000000e-30
  %322 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %319, double noundef %320, double noundef %321) #4
  %323 = load double, ptr @piref, align 8
  %324 = load double, ptr @three, align 8
  %325 = fmul double %324, %173
  %326 = fdiv double %323, %325
  %327 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %328 = load double, ptr @A6, align 8
  %329 = load double, ptr @A5, align 8
  %330 = load double, ptr @A4, align 8
  %331 = load double, ptr @A3, align 8
  %332 = load double, ptr @A2, align 8
  %333 = load double, ptr @A1, align 8
  %334 = load double, ptr @one, align 8
  %335 = load double, ptr @B6, align 8
  %336 = load double, ptr @B5, align 8
  %337 = load double, ptr @B4, align 8
  %338 = load double, ptr @B3, align 8
  %339 = load double, ptr @B2, align 8
  %340 = load double, ptr @B1, align 8
  %.promoted26 = load double, ptr %1, align 1
  br label %341

341:                                              ; preds = %345, %273
  %342 = phi double [ %348, %345 ], [ %.promoted26, %273 ]
  %343 = phi double [ %363, %345 ], [ 0.000000e+00, %273 ]
  %344 = phi i32 [ %364, %345 ], [ 1, %273 ]
  %exitcond38 = icmp ne i32 %344, %smax35
  br i1 %exitcond38, label %345, label %365

345:                                              ; preds = %341
  %346 = uitofp nneg i32 %344 to double
  %347 = fmul double %326, %346
  %348 = fmul double %347, %347
  %349 = call double @llvm.fmuladd.f64(double %328, double %348, double %329)
  %350 = call double @llvm.fmuladd.f64(double %349, double %348, double %330)
  %351 = call double @llvm.fmuladd.f64(double %350, double %348, double %331)
  %352 = call double @llvm.fmuladd.f64(double %351, double %348, double %332)
  %353 = call double @llvm.fmuladd.f64(double %352, double %348, double %333)
  %354 = call double @llvm.fmuladd.f64(double %353, double %348, double %334)
  %355 = fmul double %347, %354
  %356 = call double @llvm.fmuladd.f64(double %335, double %348, double %336)
  %357 = call double @llvm.fmuladd.f64(double %348, double %356, double %337)
  %358 = call double @llvm.fmuladd.f64(double %348, double %357, double %338)
  %359 = call double @llvm.fmuladd.f64(double %348, double %358, double %339)
  %360 = call double @llvm.fmuladd.f64(double %348, double %359, double %340)
  %361 = call double @llvm.fmuladd.f64(double %348, double %360, double %334)
  %362 = fdiv double %355, %361
  %363 = fadd double %343, %362
  %364 = add nuw i32 %344, 1
  br label %341, !llvm.loop !15

365:                                              ; preds = %341
  %.lcssa27 = phi double [ %342, %341 ]
  %.lcssa3 = phi double [ %343, %341 ]
  store double %.lcssa27, ptr %1, align 1
  %366 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %367 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %368 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %369 = load double, ptr @nulltime, align 8
  %370 = fneg double %369
  %371 = call double @llvm.fmuladd.f64(double %367, double %368, double %370)
  store double %371, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %372 = load double, ptr @piref, align 8
  %373 = load double, ptr @three, align 8
  %374 = fdiv double %372, %373
  %375 = fmul double %374, %374
  store double %375, ptr %1, align 8
  %376 = load double, ptr @A6, align 8
  %377 = load double, ptr @A5, align 8
  %378 = call double @llvm.fmuladd.f64(double %376, double %375, double %377)
  %379 = load double, ptr @A4, align 8
  %380 = call double @llvm.fmuladd.f64(double %378, double %375, double %379)
  %381 = load double, ptr @A3, align 8
  %382 = call double @llvm.fmuladd.f64(double %380, double %375, double %381)
  %383 = load double, ptr @A2, align 8
  %384 = call double @llvm.fmuladd.f64(double %382, double %375, double %383)
  %385 = load double, ptr @A1, align 8
  %386 = call double @llvm.fmuladd.f64(double %384, double %375, double %385)
  %387 = load double, ptr @one, align 8
  %388 = call double @llvm.fmuladd.f64(double %386, double %375, double %387)
  %389 = fmul double %374, %388
  store double %389, ptr @sa, align 8
  %390 = load double, ptr @B6, align 8
  %391 = load double, ptr @B5, align 8
  %392 = call double @llvm.fmuladd.f64(double %390, double %375, double %391)
  %393 = load double, ptr @B4, align 8
  %394 = call double @llvm.fmuladd.f64(double %375, double %392, double %393)
  %395 = load double, ptr @B3, align 8
  %396 = call double @llvm.fmuladd.f64(double %375, double %394, double %395)
  %397 = load double, ptr @B2, align 8
  %398 = call double @llvm.fmuladd.f64(double %375, double %396, double %397)
  %399 = load double, ptr @B1, align 8
  %400 = call double @llvm.fmuladd.f64(double %375, double %398, double %399)
  %401 = call double @llvm.fmuladd.f64(double %375, double %400, double %387)
  store double %401, ptr @sb, align 8
  %402 = fdiv double %389, %401
  store double %402, ptr @sa, align 8
  %403 = fdiv double %371, 2.900000e+01
  store double %403, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %404 = load double, ptr @two, align 8
  %405 = call double @llvm.fmuladd.f64(double %404, double %.lcssa3, double %402)
  %406 = fmul double %326, %405
  %407 = fdiv double %406, %404
  store double %407, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %408 = fadd double %407, f0xBFE62E42FEFA39EF
  store double %408, ptr @sc, align 8
  %409 = fdiv double %387, %403
  store double %409, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %410 = fmul double %408, 1.000000e-30
  %411 = fmul double %371, 1.000000e-30
  %412 = fmul double %409, 1.000000e-30
  %413 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %410, double noundef %411, double noundef %412) #4
  %414 = load double, ptr @piref, align 8
  %415 = load double, ptr @four, align 8
  %416 = fmul double %415, %173
  %417 = fdiv double %414, %416
  %418 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %419 = load double, ptr @A6, align 8
  %420 = load double, ptr @A5, align 8
  %421 = load double, ptr @A4, align 8
  %422 = load double, ptr @A3, align 8
  %423 = load double, ptr @A2, align 8
  %424 = load double, ptr @A1, align 8
  %425 = load double, ptr @one, align 8
  %426 = load double, ptr @B6, align 8
  %427 = load double, ptr @B5, align 8
  %428 = load double, ptr @B4, align 8
  %429 = load double, ptr @B3, align 8
  %430 = load double, ptr @B2, align 8
  %431 = load double, ptr @B1, align 8
  %.promoted28 = load double, ptr %1, align 1
  br label %432

432:                                              ; preds = %436, %365
  %433 = phi double [ %439, %436 ], [ %.promoted28, %365 ]
  %434 = phi double [ %453, %436 ], [ 0.000000e+00, %365 ]
  %435 = phi i32 [ %454, %436 ], [ 1, %365 ]
  %exitcond39 = icmp ne i32 %435, %smax35
  br i1 %exitcond39, label %436, label %455

436:                                              ; preds = %432
  %437 = uitofp nneg i32 %435 to double
  %438 = fmul double %417, %437
  %439 = fmul double %438, %438
  %440 = call double @llvm.fmuladd.f64(double %419, double %439, double %420)
  %441 = call double @llvm.fmuladd.f64(double %440, double %439, double %421)
  %442 = call double @llvm.fmuladd.f64(double %441, double %439, double %422)
  %443 = call double @llvm.fmuladd.f64(double %442, double %439, double %423)
  %444 = call double @llvm.fmuladd.f64(double %443, double %439, double %424)
  %445 = call double @llvm.fmuladd.f64(double %444, double %439, double %425)
  %446 = fmul double %438, %445
  %447 = call double @llvm.fmuladd.f64(double %426, double %439, double %427)
  %448 = call double @llvm.fmuladd.f64(double %439, double %447, double %428)
  %449 = call double @llvm.fmuladd.f64(double %439, double %448, double %429)
  %450 = call double @llvm.fmuladd.f64(double %439, double %449, double %430)
  %451 = call double @llvm.fmuladd.f64(double %439, double %450, double %431)
  %452 = call double @llvm.fmuladd.f64(double %439, double %451, double %425)
  %453 = call double @llvm.fmuladd.f64(double %446, double %452, double %434)
  %454 = add nuw i32 %435, 1
  br label %432, !llvm.loop !16

455:                                              ; preds = %432
  %.lcssa29 = phi double [ %433, %432 ]
  %.lcssa2 = phi double [ %434, %432 ]
  store double %.lcssa29, ptr %1, align 1
  %456 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %457 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %458 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %459 = load double, ptr @nulltime, align 8
  %460 = fneg double %459
  %461 = call double @llvm.fmuladd.f64(double %457, double %458, double %460)
  store double %461, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %462 = load double, ptr @piref, align 8
  %463 = load double, ptr @four, align 8
  %464 = fdiv double %462, %463
  %465 = fmul double %464, %464
  store double %465, ptr %1, align 8
  %466 = load double, ptr @A6, align 8
  %467 = load double, ptr @A5, align 8
  %468 = call double @llvm.fmuladd.f64(double %466, double %465, double %467)
  %469 = load double, ptr @A4, align 8
  %470 = call double @llvm.fmuladd.f64(double %468, double %465, double %469)
  %471 = load double, ptr @A3, align 8
  %472 = call double @llvm.fmuladd.f64(double %470, double %465, double %471)
  %473 = load double, ptr @A2, align 8
  %474 = call double @llvm.fmuladd.f64(double %472, double %465, double %473)
  %475 = load double, ptr @A1, align 8
  %476 = call double @llvm.fmuladd.f64(double %474, double %465, double %475)
  %477 = load double, ptr @one, align 8
  %478 = call double @llvm.fmuladd.f64(double %476, double %465, double %477)
  %479 = fmul double %464, %478
  store double %479, ptr @sa, align 8
  %480 = load double, ptr @B6, align 8
  %481 = load double, ptr @B5, align 8
  %482 = call double @llvm.fmuladd.f64(double %480, double %465, double %481)
  %483 = load double, ptr @B4, align 8
  %484 = call double @llvm.fmuladd.f64(double %465, double %482, double %483)
  %485 = load double, ptr @B3, align 8
  %486 = call double @llvm.fmuladd.f64(double %465, double %484, double %485)
  %487 = load double, ptr @B2, align 8
  %488 = call double @llvm.fmuladd.f64(double %465, double %486, double %487)
  %489 = load double, ptr @B1, align 8
  %490 = call double @llvm.fmuladd.f64(double %465, double %488, double %489)
  %491 = call double @llvm.fmuladd.f64(double %465, double %490, double %477)
  store double %491, ptr @sb, align 8
  %492 = fmul double %479, %491
  store double %492, ptr @sa, align 8
  %493 = fdiv double %461, 2.900000e+01
  store double %493, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %494 = load double, ptr @two, align 8
  %495 = call double @llvm.fmuladd.f64(double %494, double %.lcssa2, double %492)
  %496 = fmul double %417, %495
  %497 = fdiv double %496, %494
  store double %497, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %498 = fadd double %497, -2.500000e-01
  store double %498, ptr @sc, align 8
  %499 = fdiv double %477, %493
  store double %499, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %500 = fmul double %498, 1.000000e-30
  %501 = fmul double %461, 1.000000e-30
  %502 = fmul double %499, 1.000000e-30
  %503 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %500, double noundef %501, double noundef %502) #4
  %504 = load double, ptr @one, align 8
  store double %504, ptr %1, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %505 = fdiv double f0x40599541F7F192A4, %173
  %506 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %507 = load double, ptr %1, align 8
  br label %508

508:                                              ; preds = %511, %455
  %509 = phi double [ %523, %511 ], [ 0.000000e+00, %455 ]
  %510 = phi i32 [ %524, %511 ], [ 1, %455 ]
  %exitcond40 = icmp ne i32 %510, %smax35
  br i1 %exitcond40, label %511, label %525

511:                                              ; preds = %508
  %512 = uitofp nneg i32 %510 to double
  %513 = fmul double %505, %512
  %514 = fmul double %513, %513
  %515 = fadd double %513, %507
  %516 = fdiv double %507, %515
  %517 = fsub double %509, %516
  %518 = fadd double %514, %507
  %519 = fdiv double %513, %518
  %520 = fsub double %517, %519
  %521 = call double @llvm.fmuladd.f64(double %513, double %514, double %507)
  %522 = fdiv double %514, %521
  %523 = fsub double %520, %522
  %524 = add nuw i32 %510, 1
  br label %508, !llvm.loop !17

525:                                              ; preds = %508
  %.lcssa1 = phi double [ %509, %508 ]
  %526 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %527 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %528 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %529 = load double, ptr @nulltime, align 8
  %530 = fneg double %529
  %531 = call double @llvm.fmuladd.f64(double %527, double %528, double %530)
  store double %531, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %532 = fdiv double %531, 1.200000e+01
  store double %532, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %533 = load double, ptr @sa, align 8
  %534 = fmul double %533, %533
  %535 = load double, ptr %1, align 8
  %536 = fneg double %535
  %537 = fadd double %533, %535
  %538 = fdiv double %535, %537
  %539 = fsub double %536, %538
  %540 = fadd double %534, %535
  %541 = fdiv double %533, %540
  %542 = fsub double %539, %541
  %543 = call double @llvm.fmuladd.f64(double %533, double %534, double %535)
  %544 = fdiv double %534, %543
  %545 = fsub double %542, %544
  store double %545, ptr @sa, align 8
  %546 = fmul nnan double %505, 1.800000e+01
  %547 = load double, ptr @two, align 8
  %548 = call double @llvm.fmuladd.f64(double %547, double %.lcssa1, double %545)
  %549 = fmul double %546, %548
  store double %549, ptr @sa, align 8
  %550 = fptosi double %549 to i32
  %551 = mul nsw i32 %550, -2000
  store i32 %551, ptr %2, align 4
  %552 = sitofp i32 %551 to double
  %553 = load double, ptr @scale, align 8
  %554 = fdiv double %552, %553
  %555 = fptosi double %554 to i32
  store i32 %555, ptr %2, align 4
  %556 = fadd double %549, 5.002000e+02
  store double %556, ptr @sc, align 8
  %557 = load double, ptr @one, align 8
  %558 = fdiv double %557, %532
  store double %558, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %559 = fmul double %556, 1.000000e-30
  %560 = fmul double %531, 1.000000e-30
  %561 = fmul double %558, 1.000000e-30
  %562 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %559, double noundef %560, double noundef %561) #4
  %563 = load double, ptr @piref, align 8
  %564 = load double, ptr @three, align 8
  %565 = sitofp i32 %555 to double
  %566 = fmul double %564, %565
  %567 = fdiv double %563, %566
  %568 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %569 = load double, ptr @B6, align 8
  %570 = load double, ptr @B5, align 8
  %571 = load double, ptr @B4, align 8
  %572 = load double, ptr @B3, align 8
  %573 = load double, ptr @B2, align 8
  %574 = load double, ptr @B1, align 8
  %575 = load double, ptr @one, align 8
  %576 = load double, ptr @A6, align 8
  %577 = load double, ptr @A5, align 8
  %578 = load double, ptr @A4, align 8
  %579 = load double, ptr @A3, align 8
  %580 = load double, ptr @A2, align 8
  %581 = load double, ptr @A1, align 8
  %.promoted30 = load double, ptr %1, align 1
  %smax41 = call i32 @llvm.smax.i32(i32 %555, i32 1)
  br label %582

582:                                              ; preds = %586, %525
  %583 = phi double [ %589, %586 ], [ %.promoted30, %525 ]
  %584 = phi double [ %604, %586 ], [ 0.000000e+00, %525 ]
  %585 = phi i32 [ %605, %586 ], [ 1, %525 ]
  %exitcond42 = icmp ne i32 %585, %smax41
  br i1 %exitcond42, label %586, label %606

586:                                              ; preds = %582
  %587 = uitofp nneg i32 %585 to double
  %588 = fmul double %567, %587
  %589 = fmul double %588, %588
  %590 = call double @llvm.fmuladd.f64(double %569, double %589, double %570)
  %591 = call double @llvm.fmuladd.f64(double %589, double %590, double %571)
  %592 = call double @llvm.fmuladd.f64(double %589, double %591, double %572)
  %593 = call double @llvm.fmuladd.f64(double %589, double %592, double %573)
  %594 = call double @llvm.fmuladd.f64(double %589, double %593, double %574)
  %595 = call double @llvm.fmuladd.f64(double %589, double %594, double %575)
  %596 = fmul double %595, %595
  %597 = fmul double %596, %588
  %598 = call double @llvm.fmuladd.f64(double %576, double %589, double %577)
  %599 = call double @llvm.fmuladd.f64(double %598, double %589, double %578)
  %600 = call double @llvm.fmuladd.f64(double %599, double %589, double %579)
  %601 = call double @llvm.fmuladd.f64(double %600, double %589, double %580)
  %602 = call double @llvm.fmuladd.f64(double %601, double %589, double %581)
  %603 = call double @llvm.fmuladd.f64(double %602, double %589, double %575)
  %604 = call double @llvm.fmuladd.f64(double %597, double %603, double %584)
  %605 = add nuw i32 %585, 1
  br label %582, !llvm.loop !18

606:                                              ; preds = %582
  %.lcssa31 = phi double [ %583, %582 ]
  %.lcssa = phi double [ %584, %582 ]
  store double %.lcssa31, ptr %1, align 1
  %607 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %608 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %609 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %610 = load double, ptr @nulltime, align 8
  %611 = fneg double %610
  %612 = call double @llvm.fmuladd.f64(double %608, double %609, double %611)
  store double %612, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %613 = load double, ptr @piref, align 8
  %614 = load double, ptr @three, align 8
  %615 = fdiv double %613, %614
  %616 = fmul double %615, %615
  store double %616, ptr %1, align 8
  %617 = load double, ptr @A6, align 8
  %618 = load double, ptr @A5, align 8
  %619 = call double @llvm.fmuladd.f64(double %617, double %616, double %618)
  %620 = load double, ptr @A4, align 8
  %621 = call double @llvm.fmuladd.f64(double %619, double %616, double %620)
  %622 = load double, ptr @A3, align 8
  %623 = call double @llvm.fmuladd.f64(double %621, double %616, double %622)
  %624 = load double, ptr @A2, align 8
  %625 = call double @llvm.fmuladd.f64(double %623, double %616, double %624)
  %626 = load double, ptr @A1, align 8
  %627 = call double @llvm.fmuladd.f64(double %625, double %616, double %626)
  %628 = load double, ptr @one, align 8
  %629 = call double @llvm.fmuladd.f64(double %627, double %616, double %628)
  %630 = fmul double %615, %629
  store double %630, ptr @sa, align 8
  %631 = load double, ptr @B6, align 8
  %632 = load double, ptr @B5, align 8
  %633 = call double @llvm.fmuladd.f64(double %631, double %616, double %632)
  %634 = load double, ptr @B4, align 8
  %635 = call double @llvm.fmuladd.f64(double %616, double %633, double %634)
  %636 = load double, ptr @B3, align 8
  %637 = call double @llvm.fmuladd.f64(double %616, double %635, double %636)
  %638 = load double, ptr @B2, align 8
  %639 = call double @llvm.fmuladd.f64(double %616, double %637, double %638)
  %640 = load double, ptr @B1, align 8
  %641 = call double @llvm.fmuladd.f64(double %616, double %639, double %640)
  %642 = call double @llvm.fmuladd.f64(double %616, double %641, double %628)
  store double %642, ptr @sb, align 8
  %643 = fmul double %630, %642
  %644 = fmul double %643, %642
  store double %644, ptr @sa, align 8
  %645 = fdiv double %612, 3.000000e+01
  store double %645, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %646 = load double, ptr @two, align 8
  %647 = call double @llvm.fmuladd.f64(double %646, double %.lcssa, double %644)
  %648 = fmul double %567, %647
  %649 = fdiv double %648, %646
  store double %649, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %650 = fadd double %649, f0xBFD2AAAAAAAAAAAB
  store double %650, ptr @sc, align 8
  %651 = fdiv double %628, %645
  store double %651, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %652 = fmul double %650, 1.000000e-30
  %653 = fmul double %612, 1.000000e-30
  %654 = fmul double %651, 1.000000e-30
  %655 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %652, double noundef %653, double noundef %654) #4
  %656 = load double, ptr @five, align 8
  %657 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %658 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %659 = fsub double %657, %658
  %660 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %661 = call double @llvm.fmuladd.f64(double %656, double %659, double %660)
  %662 = fdiv double %661, 5.200000e+01
  store double %662, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %663 = load double, ptr @one, align 8
  %664 = fdiv double %663, %662
  store double %664, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %665 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %666 = fadd double %665, %660
  %667 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %668 = fadd double %666, %667
  %669 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %670 = fadd double %668, %669
  %671 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %672 = fadd double %670, %671
  store double %672, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %673 = load double, ptr @four, align 8
  %674 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %675 = call double @llvm.fmuladd.f64(double %673, double %674, double %672)
  %676 = fdiv double %675, 1.520000e+02
  store double %676, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %677 = fdiv double %663, %676
  store double %677, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %672, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %678 = fadd double %672, %674
  %679 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %680 = fadd double %678, %679
  %681 = fdiv double %680, 1.460000e+02
  store double %681, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %682 = fdiv double %663, %681
  store double %682, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %683 = fadd double %660, %667
  %684 = fadd double %683, %671
  %685 = fadd double %684, %679
  %686 = fdiv double %685, 9.100000e+01
  store double %686, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %687 = fdiv double %663, %686
  store double %687, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar11 = call i32 @putchar(i32 10)
  %688 = load i32, ptr %2, align 4
  %689 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %688) #4
  %690 = load double, ptr @nulltime, align 8
  %691 = fmul double %690, 1.000000e-30
  %692 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %691) #4
  %693 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %694 = fmul double %693, 1.000000e-30
  %695 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %694) #4
  %696 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %697 = fmul double %696, 1.000000e-30
  %698 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %697) #4
  %699 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %700 = fmul double %699, 1.000000e-30
  %701 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %700) #4
  %702 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %703 = fmul double %702, 1.000000e-30
  %704 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %703) #4
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

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
