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
  br label %5

5:                                                ; preds = %44, %0
  %6 = phi double [ %.lcssa9, %44 ], [ undef, %0 ]
  %7 = phi double [ %16, %44 ], [ undef, %0 ]
  %8 = phi i32 [ %13, %44 ], [ 15625, %0 ]
  %9 = phi double [ %41, %44 ], [ 0.000000e+00, %0 ]
  %10 = load double, ptr @TLimit, align 8
  %11 = fcmp olt double %9, %10
  br i1 %11, label %12, label %.loopexit

12:                                               ; preds = %5
  %13 = shl i32 %8, 1
  %14 = load double, ptr @one, align 8
  %15 = sitofp i32 %13 to double
  %16 = fdiv double %14, %15
  store double %14, ptr %1, align 8
  %17 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %18

18:                                               ; preds = %22, %12
  %19 = phi double [ %24, %22 ], [ 0.000000e+00, %12 ]
  %20 = phi double [ %37, %22 ], [ 0.000000e+00, %12 ]
  %21 = phi i32 [ %38, %22 ], [ 1, %12 ]
  %exitcond = icmp ne i32 %21, %13
  br i1 %exitcond, label %22, label %39

22:                                               ; preds = %18
  %23 = load double, ptr %1, align 8
  %24 = fadd double %19, %23
  %25 = fmul double %24, %16
  %26 = load double, ptr @D1, align 8
  %27 = load double, ptr @D2, align 8
  %28 = load double, ptr @D3, align 8
  %29 = call double @llvm.fmuladd.f64(double %25, double %28, double %27)
  %30 = call double @llvm.fmuladd.f64(double %25, double %29, double %26)
  %31 = load double, ptr @E2, align 8
  %32 = load double, ptr @E3, align 8
  %33 = call double @llvm.fmuladd.f64(double %25, double %32, double %31)
  %34 = call double @llvm.fmuladd.f64(double %25, double %33, double %26)
  %35 = call double @llvm.fmuladd.f64(double %25, double %34, double %23)
  %36 = fdiv double %30, %35
  %37 = fadd double %20, %36
  %38 = add nuw nsw i32 %21, 1
  br label %18, !llvm.loop !7

39:                                               ; preds = %18
  %.lcssa9 = phi double [ %20, %18 ]
  %40 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %41 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %41, ptr @sa, align 8
  %42 = icmp eq i32 %8, 256000000
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  %.lcssa16 = phi double [ %16, %39 ]
  %.lcssa9.lcssa = phi double [ %.lcssa9, %39 ]
  br label %45

44:                                               ; preds = %39
  br label %5, !llvm.loop !9

.loopexit:                                        ; preds = %5
  %.lcssa14 = phi double [ %6, %5 ]
  %.lcssa12 = phi double [ %7, %5 ]
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
  %smax = call i32 @llvm.smax.i32(i32 %87, i32 0)
  %99 = add nuw i32 %smax, 1
  br label %100

100:                                              ; preds = %103, %58
  %101 = phi double [ %104, %103 ], [ %95, %58 ]
  %102 = phi i32 [ %107, %103 ], [ 1, %58 ]
  %exitcond17 = icmp eq i32 %102, %99
  br i1 %exitcond17, label %108, label %103

103:                                              ; preds = %100
  %104 = fneg double %101
  %105 = load double, ptr @sa, align 8
  %106 = fsub double %105, %101
  store double %106, ptr @sa, align 8
  %107 = add nuw i32 %102, 1
  br label %100, !llvm.loop !11

108:                                              ; preds = %100
  %.lcssa8 = phi double [ %101, %100 ]
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
  %smax18 = call i32 @llvm.smax.i32(i32 %87, i32 0)
  %119 = add nuw i32 %smax18, 1
  br label %120

120:                                              ; preds = %126, %115
  %121 = phi double [ %131, %126 ], [ %117, %115 ]
  %122 = phi double [ %127, %126 ], [ %.lcssa8, %115 ]
  %123 = phi double [ %134, %126 ], [ 0.000000e+00, %115 ]
  %124 = phi double [ %133, %126 ], [ 0.000000e+00, %115 ]
  %125 = phi i32 [ %138, %126 ], [ 1, %115 ]
  %exitcond19 = icmp eq i32 %125, %119
  br i1 %exitcond19, label %139, label %126

126:                                              ; preds = %120
  %127 = fneg double %122
  %128 = load double, ptr @sa, align 8
  %129 = fsub double %128, %122
  store double %129, ptr @sa, align 8
  %130 = load double, ptr @two, align 8
  %131 = fadd double %121, %130
  %132 = fsub double %127, %131
  %133 = fadd double %124, %132
  %134 = call double @llvm.fmuladd.f64(double %122, double %131, double %123)
  %135 = load double, ptr %1, align 8
  %136 = fdiv double %122, %131
  %137 = fsub double %135, %136
  store double %137, ptr %1, align 8
  %138 = add nuw i32 %125, 1
  br label %120, !llvm.loop !12

139:                                              ; preds = %120
  %.lcssa7 = phi double [ %123, %120 ]
  %.lcssa6 = phi double [ %124, %120 ]
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
  %smax20 = call i32 @llvm.smax.i32(i32 %151, i32 1)
  br label %177

177:                                              ; preds = %181, %139
  %178 = phi double [ %183, %181 ], [ 0.000000e+00, %139 ]
  %179 = phi double [ %200, %181 ], [ 0.000000e+00, %139 ]
  %180 = phi i32 [ %201, %181 ], [ 1, %139 ]
  %exitcond21 = icmp ne i32 %180, %smax20
  br i1 %exitcond21, label %181, label %202

181:                                              ; preds = %177
  %182 = load double, ptr @one, align 8
  %183 = fadd double %178, %182
  %184 = fmul double %183, %175
  %185 = fmul double %184, %184
  store double %185, ptr %1, align 8
  %186 = load double, ptr @A6, align 8
  %187 = load double, ptr @A5, align 8
  %188 = fneg double %187
  %189 = call double @llvm.fmuladd.f64(double %186, double %185, double %188)
  %190 = load double, ptr @A4, align 8
  %191 = call double @llvm.fmuladd.f64(double %189, double %185, double %190)
  %192 = load double, ptr @A3, align 8
  %193 = fneg double %192
  %194 = call double @llvm.fmuladd.f64(double %191, double %185, double %193)
  %195 = load double, ptr @A2, align 8
  %196 = call double @llvm.fmuladd.f64(double %194, double %185, double %195)
  %197 = load double, ptr @A1, align 8
  %198 = call double @llvm.fmuladd.f64(double %196, double %185, double %197)
  %199 = call double @llvm.fmuladd.f64(double %198, double %185, double %182)
  %200 = call double @llvm.fmuladd.f64(double %184, double %199, double %179)
  %201 = add nuw i32 %180, 1
  br label %177, !llvm.loop !13

202:                                              ; preds = %177
  %.lcssa5 = phi double [ %179, %177 ]
  %203 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %204 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %205 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %206 = load double, ptr @nulltime, align 8
  %207 = fneg double %206
  %208 = call double @llvm.fmuladd.f64(double %204, double %205, double %207)
  store double %208, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %209 = load double, ptr @piref, align 8
  %210 = load double, ptr @three, align 8
  %211 = fdiv double %209, %210
  %212 = fmul double %211, %211
  store double %212, ptr %1, align 8
  %213 = load double, ptr @A6, align 8
  %214 = load double, ptr @A5, align 8
  %215 = fneg double %214
  %216 = call double @llvm.fmuladd.f64(double %213, double %212, double %215)
  %217 = load double, ptr @A4, align 8
  %218 = call double @llvm.fmuladd.f64(double %216, double %212, double %217)
  %219 = load double, ptr @A3, align 8
  %220 = fneg double %219
  %221 = call double @llvm.fmuladd.f64(double %218, double %212, double %220)
  %222 = load double, ptr @A2, align 8
  %223 = call double @llvm.fmuladd.f64(double %221, double %212, double %222)
  %224 = load double, ptr @A1, align 8
  %225 = call double @llvm.fmuladd.f64(double %223, double %212, double %224)
  %226 = load double, ptr @one, align 8
  %227 = call double @llvm.fmuladd.f64(double %225, double %212, double %226)
  %228 = fmul double %211, %227
  store double %228, ptr @sa, align 8
  %229 = fdiv double %208, 1.700000e+01
  store double %229, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %230 = load double, ptr @two, align 8
  %231 = call double @llvm.fmuladd.f64(double %230, double %.lcssa5, double %228)
  %232 = fmul double %175, %231
  %233 = fdiv double %232, %230
  store double %233, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %234 = fadd double %233, -5.000000e-01
  store double %234, ptr @sc, align 8
  %235 = fdiv double %226, %229
  store double %235, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %236 = fmul double %234, 1.000000e-30
  %237 = fmul double %208, 1.000000e-30
  %238 = fmul double %235, 1.000000e-30
  %239 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %236, double noundef %237, double noundef %238) #4
  %240 = load double, ptr @A3, align 8
  %241 = fneg double %240
  store double %241, ptr @A3, align 8
  %242 = load double, ptr @A5, align 8
  %243 = fneg double %242
  store double %243, ptr @A5, align 8
  %244 = load double, ptr @piref, align 8
  %245 = load double, ptr @three, align 8
  %246 = fmul double %245, %173
  %247 = fdiv double %244, %246
  %248 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %249

249:                                              ; preds = %252, %202
  %250 = phi double [ %269, %252 ], [ 0.000000e+00, %202 ]
  %251 = phi i32 [ %270, %252 ], [ 1, %202 ]
  %exitcond22 = icmp ne i32 %251, %smax20
  br i1 %exitcond22, label %252, label %271

252:                                              ; preds = %249
  %253 = uitofp nneg i32 %251 to double
  %254 = fmul double %247, %253
  %255 = fmul double %254, %254
  store double %255, ptr %1, align 8
  %256 = load double, ptr @B6, align 8
  %257 = load double, ptr @B5, align 8
  %258 = call double @llvm.fmuladd.f64(double %256, double %255, double %257)
  %259 = load double, ptr @B4, align 8
  %260 = call double @llvm.fmuladd.f64(double %255, double %258, double %259)
  %261 = load double, ptr @B3, align 8
  %262 = call double @llvm.fmuladd.f64(double %255, double %260, double %261)
  %263 = load double, ptr @B2, align 8
  %264 = call double @llvm.fmuladd.f64(double %255, double %262, double %263)
  %265 = load double, ptr @B1, align 8
  %266 = call double @llvm.fmuladd.f64(double %255, double %264, double %265)
  %267 = call double @llvm.fmuladd.f64(double %255, double %266, double %250)
  %268 = load double, ptr @one, align 8
  %269 = fadd double %267, %268
  %270 = add nuw i32 %251, 1
  br label %249, !llvm.loop !14

271:                                              ; preds = %249
  %.lcssa4 = phi double [ %250, %249 ]
  %272 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %273 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %274 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %275 = load double, ptr @nulltime, align 8
  %276 = fneg double %275
  %277 = call double @llvm.fmuladd.f64(double %273, double %274, double %276)
  store double %277, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %278 = load double, ptr @piref, align 8
  %279 = load double, ptr @three, align 8
  %280 = fdiv double %278, %279
  %281 = fmul double %280, %280
  store double %281, ptr %1, align 8
  %282 = load double, ptr @B6, align 8
  %283 = load double, ptr @B5, align 8
  %284 = call double @llvm.fmuladd.f64(double %282, double %281, double %283)
  %285 = load double, ptr @B4, align 8
  %286 = call double @llvm.fmuladd.f64(double %281, double %284, double %285)
  %287 = load double, ptr @B3, align 8
  %288 = call double @llvm.fmuladd.f64(double %281, double %286, double %287)
  %289 = load double, ptr @B2, align 8
  %290 = call double @llvm.fmuladd.f64(double %281, double %288, double %289)
  %291 = load double, ptr @B1, align 8
  %292 = call double @llvm.fmuladd.f64(double %281, double %290, double %291)
  %293 = load double, ptr @one, align 8
  %294 = call double @llvm.fmuladd.f64(double %281, double %292, double %293)
  store double %294, ptr @sa, align 8
  %295 = fdiv double %277, 1.500000e+01
  store double %295, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %296 = fadd double %294, %293
  %297 = load double, ptr @two, align 8
  %298 = call double @llvm.fmuladd.f64(double %297, double %.lcssa4, double %296)
  %299 = fmul double %247, %298
  %300 = fdiv double %299, %297
  store double %300, ptr @sa, align 8
  store double %281, ptr %1, align 8
  %301 = load double, ptr @A6, align 8
  %302 = load double, ptr @A5, align 8
  %303 = call double @llvm.fmuladd.f64(double %301, double %281, double %302)
  %304 = load double, ptr @A4, align 8
  %305 = call double @llvm.fmuladd.f64(double %303, double %281, double %304)
  %306 = load double, ptr @A3, align 8
  %307 = call double @llvm.fmuladd.f64(double %305, double %281, double %306)
  %308 = load double, ptr @A2, align 8
  %309 = call double @llvm.fmuladd.f64(double %307, double %281, double %308)
  %310 = load double, ptr @A1, align 8
  %311 = call double @llvm.fmuladd.f64(double %309, double %281, double %310)
  %312 = load double, ptr @A0, align 8
  %313 = call double @llvm.fmuladd.f64(double %311, double %281, double %312)
  %314 = fmul double %280, %313
  store double %314, ptr @sb, align 8
  %315 = fsub double %300, %314
  store double %315, ptr @sc, align 8
  %316 = fdiv double %293, %295
  store double %316, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %317 = fmul double %315, 1.000000e-30
  %318 = fmul double %277, 1.000000e-30
  %319 = fmul double %316, 1.000000e-30
  %320 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %317, double noundef %318, double noundef %319) #4
  %321 = load double, ptr @piref, align 8
  %322 = load double, ptr @three, align 8
  %323 = fmul double %322, %173
  %324 = fdiv double %321, %323
  %325 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %326

326:                                              ; preds = %329, %271
  %327 = phi double [ %360, %329 ], [ 0.000000e+00, %271 ]
  %328 = phi i32 [ %361, %329 ], [ 1, %271 ]
  %exitcond23 = icmp ne i32 %328, %smax20
  br i1 %exitcond23, label %329, label %362

329:                                              ; preds = %326
  %330 = uitofp nneg i32 %328 to double
  %331 = fmul double %324, %330
  %332 = fmul double %331, %331
  store double %332, ptr %1, align 8
  %333 = load double, ptr @A6, align 8
  %334 = load double, ptr @A5, align 8
  %335 = call double @llvm.fmuladd.f64(double %333, double %332, double %334)
  %336 = load double, ptr @A4, align 8
  %337 = call double @llvm.fmuladd.f64(double %335, double %332, double %336)
  %338 = load double, ptr @A3, align 8
  %339 = call double @llvm.fmuladd.f64(double %337, double %332, double %338)
  %340 = load double, ptr @A2, align 8
  %341 = call double @llvm.fmuladd.f64(double %339, double %332, double %340)
  %342 = load double, ptr @A1, align 8
  %343 = call double @llvm.fmuladd.f64(double %341, double %332, double %342)
  %344 = load double, ptr @one, align 8
  %345 = call double @llvm.fmuladd.f64(double %343, double %332, double %344)
  %346 = fmul double %331, %345
  %347 = load double, ptr @B6, align 8
  %348 = load double, ptr @B5, align 8
  %349 = call double @llvm.fmuladd.f64(double %347, double %332, double %348)
  %350 = load double, ptr @B4, align 8
  %351 = call double @llvm.fmuladd.f64(double %332, double %349, double %350)
  %352 = load double, ptr @B3, align 8
  %353 = call double @llvm.fmuladd.f64(double %332, double %351, double %352)
  %354 = load double, ptr @B2, align 8
  %355 = call double @llvm.fmuladd.f64(double %332, double %353, double %354)
  %356 = load double, ptr @B1, align 8
  %357 = call double @llvm.fmuladd.f64(double %332, double %355, double %356)
  %358 = call double @llvm.fmuladd.f64(double %332, double %357, double %344)
  %359 = fdiv double %346, %358
  %360 = fadd double %327, %359
  %361 = add nuw i32 %328, 1
  br label %326, !llvm.loop !15

362:                                              ; preds = %326
  %.lcssa3 = phi double [ %327, %326 ]
  %363 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %364 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %365 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %366 = load double, ptr @nulltime, align 8
  %367 = fneg double %366
  %368 = call double @llvm.fmuladd.f64(double %364, double %365, double %367)
  store double %368, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %369 = load double, ptr @piref, align 8
  %370 = load double, ptr @three, align 8
  %371 = fdiv double %369, %370
  %372 = fmul double %371, %371
  store double %372, ptr %1, align 8
  %373 = load double, ptr @A6, align 8
  %374 = load double, ptr @A5, align 8
  %375 = call double @llvm.fmuladd.f64(double %373, double %372, double %374)
  %376 = load double, ptr @A4, align 8
  %377 = call double @llvm.fmuladd.f64(double %375, double %372, double %376)
  %378 = load double, ptr @A3, align 8
  %379 = call double @llvm.fmuladd.f64(double %377, double %372, double %378)
  %380 = load double, ptr @A2, align 8
  %381 = call double @llvm.fmuladd.f64(double %379, double %372, double %380)
  %382 = load double, ptr @A1, align 8
  %383 = call double @llvm.fmuladd.f64(double %381, double %372, double %382)
  %384 = load double, ptr @one, align 8
  %385 = call double @llvm.fmuladd.f64(double %383, double %372, double %384)
  %386 = fmul double %371, %385
  store double %386, ptr @sa, align 8
  %387 = load double, ptr @B6, align 8
  %388 = load double, ptr @B5, align 8
  %389 = call double @llvm.fmuladd.f64(double %387, double %372, double %388)
  %390 = load double, ptr @B4, align 8
  %391 = call double @llvm.fmuladd.f64(double %372, double %389, double %390)
  %392 = load double, ptr @B3, align 8
  %393 = call double @llvm.fmuladd.f64(double %372, double %391, double %392)
  %394 = load double, ptr @B2, align 8
  %395 = call double @llvm.fmuladd.f64(double %372, double %393, double %394)
  %396 = load double, ptr @B1, align 8
  %397 = call double @llvm.fmuladd.f64(double %372, double %395, double %396)
  %398 = call double @llvm.fmuladd.f64(double %372, double %397, double %384)
  store double %398, ptr @sb, align 8
  %399 = fdiv double %386, %398
  store double %399, ptr @sa, align 8
  %400 = fdiv double %368, 2.900000e+01
  store double %400, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %401 = load double, ptr @two, align 8
  %402 = call double @llvm.fmuladd.f64(double %401, double %.lcssa3, double %399)
  %403 = fmul double %324, %402
  %404 = fdiv double %403, %401
  store double %404, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %405 = fadd double %404, f0xBFE62E42FEFA39EF
  store double %405, ptr @sc, align 8
  %406 = fdiv double %384, %400
  store double %406, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %407 = fmul double %405, 1.000000e-30
  %408 = fmul double %368, 1.000000e-30
  %409 = fmul double %406, 1.000000e-30
  %410 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %407, double noundef %408, double noundef %409) #4
  %411 = load double, ptr @piref, align 8
  %412 = load double, ptr @four, align 8
  %413 = fmul double %412, %173
  %414 = fdiv double %411, %413
  %415 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %416

416:                                              ; preds = %419, %362
  %417 = phi double [ %449, %419 ], [ 0.000000e+00, %362 ]
  %418 = phi i32 [ %450, %419 ], [ 1, %362 ]
  %exitcond24 = icmp ne i32 %418, %smax20
  br i1 %exitcond24, label %419, label %451

419:                                              ; preds = %416
  %420 = uitofp nneg i32 %418 to double
  %421 = fmul double %414, %420
  %422 = fmul double %421, %421
  store double %422, ptr %1, align 8
  %423 = load double, ptr @A6, align 8
  %424 = load double, ptr @A5, align 8
  %425 = call double @llvm.fmuladd.f64(double %423, double %422, double %424)
  %426 = load double, ptr @A4, align 8
  %427 = call double @llvm.fmuladd.f64(double %425, double %422, double %426)
  %428 = load double, ptr @A3, align 8
  %429 = call double @llvm.fmuladd.f64(double %427, double %422, double %428)
  %430 = load double, ptr @A2, align 8
  %431 = call double @llvm.fmuladd.f64(double %429, double %422, double %430)
  %432 = load double, ptr @A1, align 8
  %433 = call double @llvm.fmuladd.f64(double %431, double %422, double %432)
  %434 = load double, ptr @one, align 8
  %435 = call double @llvm.fmuladd.f64(double %433, double %422, double %434)
  %436 = fmul double %421, %435
  %437 = load double, ptr @B6, align 8
  %438 = load double, ptr @B5, align 8
  %439 = call double @llvm.fmuladd.f64(double %437, double %422, double %438)
  %440 = load double, ptr @B4, align 8
  %441 = call double @llvm.fmuladd.f64(double %422, double %439, double %440)
  %442 = load double, ptr @B3, align 8
  %443 = call double @llvm.fmuladd.f64(double %422, double %441, double %442)
  %444 = load double, ptr @B2, align 8
  %445 = call double @llvm.fmuladd.f64(double %422, double %443, double %444)
  %446 = load double, ptr @B1, align 8
  %447 = call double @llvm.fmuladd.f64(double %422, double %445, double %446)
  %448 = call double @llvm.fmuladd.f64(double %422, double %447, double %434)
  %449 = call double @llvm.fmuladd.f64(double %436, double %448, double %417)
  %450 = add nuw i32 %418, 1
  br label %416, !llvm.loop !16

451:                                              ; preds = %416
  %.lcssa2 = phi double [ %417, %416 ]
  %452 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %453 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %454 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %455 = load double, ptr @nulltime, align 8
  %456 = fneg double %455
  %457 = call double @llvm.fmuladd.f64(double %453, double %454, double %456)
  store double %457, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %458 = load double, ptr @piref, align 8
  %459 = load double, ptr @four, align 8
  %460 = fdiv double %458, %459
  %461 = fmul double %460, %460
  store double %461, ptr %1, align 8
  %462 = load double, ptr @A6, align 8
  %463 = load double, ptr @A5, align 8
  %464 = call double @llvm.fmuladd.f64(double %462, double %461, double %463)
  %465 = load double, ptr @A4, align 8
  %466 = call double @llvm.fmuladd.f64(double %464, double %461, double %465)
  %467 = load double, ptr @A3, align 8
  %468 = call double @llvm.fmuladd.f64(double %466, double %461, double %467)
  %469 = load double, ptr @A2, align 8
  %470 = call double @llvm.fmuladd.f64(double %468, double %461, double %469)
  %471 = load double, ptr @A1, align 8
  %472 = call double @llvm.fmuladd.f64(double %470, double %461, double %471)
  %473 = load double, ptr @one, align 8
  %474 = call double @llvm.fmuladd.f64(double %472, double %461, double %473)
  %475 = fmul double %460, %474
  store double %475, ptr @sa, align 8
  %476 = load double, ptr @B6, align 8
  %477 = load double, ptr @B5, align 8
  %478 = call double @llvm.fmuladd.f64(double %476, double %461, double %477)
  %479 = load double, ptr @B4, align 8
  %480 = call double @llvm.fmuladd.f64(double %461, double %478, double %479)
  %481 = load double, ptr @B3, align 8
  %482 = call double @llvm.fmuladd.f64(double %461, double %480, double %481)
  %483 = load double, ptr @B2, align 8
  %484 = call double @llvm.fmuladd.f64(double %461, double %482, double %483)
  %485 = load double, ptr @B1, align 8
  %486 = call double @llvm.fmuladd.f64(double %461, double %484, double %485)
  %487 = call double @llvm.fmuladd.f64(double %461, double %486, double %473)
  store double %487, ptr @sb, align 8
  %488 = fmul double %475, %487
  store double %488, ptr @sa, align 8
  %489 = fdiv double %457, 2.900000e+01
  store double %489, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %490 = load double, ptr @two, align 8
  %491 = call double @llvm.fmuladd.f64(double %490, double %.lcssa2, double %488)
  %492 = fmul double %414, %491
  %493 = fdiv double %492, %490
  store double %493, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %494 = fadd double %493, -2.500000e-01
  store double %494, ptr @sc, align 8
  %495 = fdiv double %473, %489
  store double %495, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %496 = fmul double %494, 1.000000e-30
  %497 = fmul double %457, 1.000000e-30
  %498 = fmul double %495, 1.000000e-30
  %499 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %496, double noundef %497, double noundef %498) #4
  %500 = load double, ptr @one, align 8
  store double %500, ptr %1, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %501 = fdiv double f0x40599541F7F192A4, %173
  %502 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %503

503:                                              ; preds = %506, %451
  %504 = phi double [ %519, %506 ], [ 0.000000e+00, %451 ]
  %505 = phi i32 [ %520, %506 ], [ 1, %451 ]
  %exitcond25 = icmp ne i32 %505, %smax20
  br i1 %exitcond25, label %506, label %521

506:                                              ; preds = %503
  %507 = uitofp nneg i32 %505 to double
  %508 = fmul double %501, %507
  %509 = fmul double %508, %508
  %510 = load double, ptr %1, align 8
  %511 = fadd double %508, %510
  %512 = fdiv double %510, %511
  %513 = fsub double %504, %512
  %514 = fadd double %509, %510
  %515 = fdiv double %508, %514
  %516 = fsub double %513, %515
  %517 = call double @llvm.fmuladd.f64(double %508, double %509, double %510)
  %518 = fdiv double %509, %517
  %519 = fsub double %516, %518
  %520 = add nuw i32 %505, 1
  br label %503, !llvm.loop !17

521:                                              ; preds = %503
  %.lcssa1 = phi double [ %504, %503 ]
  %522 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %523 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %524 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %525 = load double, ptr @nulltime, align 8
  %526 = fneg double %525
  %527 = call double @llvm.fmuladd.f64(double %523, double %524, double %526)
  store double %527, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %528 = fdiv double %527, 1.200000e+01
  store double %528, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %529 = load double, ptr @sa, align 8
  %530 = fmul double %529, %529
  %531 = load double, ptr %1, align 8
  %532 = fneg double %531
  %533 = fadd double %529, %531
  %534 = fdiv double %531, %533
  %535 = fsub double %532, %534
  %536 = fadd double %530, %531
  %537 = fdiv double %529, %536
  %538 = fsub double %535, %537
  %539 = call double @llvm.fmuladd.f64(double %529, double %530, double %531)
  %540 = fdiv double %530, %539
  %541 = fsub double %538, %540
  store double %541, ptr @sa, align 8
  %542 = fmul nnan double %501, 1.800000e+01
  %543 = load double, ptr @two, align 8
  %544 = call double @llvm.fmuladd.f64(double %543, double %.lcssa1, double %541)
  %545 = fmul double %542, %544
  store double %545, ptr @sa, align 8
  %546 = fptosi double %545 to i32
  %547 = mul nsw i32 %546, -2000
  store i32 %547, ptr %2, align 4
  %548 = sitofp i32 %547 to double
  %549 = load double, ptr @scale, align 8
  %550 = fdiv double %548, %549
  %551 = fptosi double %550 to i32
  store i32 %551, ptr %2, align 4
  %552 = fadd double %545, 5.002000e+02
  store double %552, ptr @sc, align 8
  %553 = load double, ptr @one, align 8
  %554 = fdiv double %553, %528
  store double %554, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %555 = fmul double %552, 1.000000e-30
  %556 = fmul double %527, 1.000000e-30
  %557 = fmul double %554, 1.000000e-30
  %558 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %555, double noundef %556, double noundef %557) #4
  %559 = load double, ptr @piref, align 8
  %560 = load double, ptr @three, align 8
  %561 = sitofp i32 %551 to double
  %562 = fmul double %560, %561
  %563 = fdiv double %559, %562
  %564 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %smax26 = call i32 @llvm.smax.i32(i32 %551, i32 1)
  br label %565

565:                                              ; preds = %568, %521
  %566 = phi double [ %599, %568 ], [ 0.000000e+00, %521 ]
  %567 = phi i32 [ %600, %568 ], [ 1, %521 ]
  %exitcond27 = icmp ne i32 %567, %smax26
  br i1 %exitcond27, label %568, label %601

568:                                              ; preds = %565
  %569 = uitofp nneg i32 %567 to double
  %570 = fmul double %563, %569
  %571 = fmul double %570, %570
  store double %571, ptr %1, align 8
  %572 = load double, ptr @B6, align 8
  %573 = load double, ptr @B5, align 8
  %574 = call double @llvm.fmuladd.f64(double %572, double %571, double %573)
  %575 = load double, ptr @B4, align 8
  %576 = call double @llvm.fmuladd.f64(double %571, double %574, double %575)
  %577 = load double, ptr @B3, align 8
  %578 = call double @llvm.fmuladd.f64(double %571, double %576, double %577)
  %579 = load double, ptr @B2, align 8
  %580 = call double @llvm.fmuladd.f64(double %571, double %578, double %579)
  %581 = load double, ptr @B1, align 8
  %582 = call double @llvm.fmuladd.f64(double %571, double %580, double %581)
  %583 = load double, ptr @one, align 8
  %584 = call double @llvm.fmuladd.f64(double %571, double %582, double %583)
  %585 = fmul double %584, %584
  %586 = fmul double %585, %570
  %587 = load double, ptr @A6, align 8
  %588 = load double, ptr @A5, align 8
  %589 = call double @llvm.fmuladd.f64(double %587, double %571, double %588)
  %590 = load double, ptr @A4, align 8
  %591 = call double @llvm.fmuladd.f64(double %589, double %571, double %590)
  %592 = load double, ptr @A3, align 8
  %593 = call double @llvm.fmuladd.f64(double %591, double %571, double %592)
  %594 = load double, ptr @A2, align 8
  %595 = call double @llvm.fmuladd.f64(double %593, double %571, double %594)
  %596 = load double, ptr @A1, align 8
  %597 = call double @llvm.fmuladd.f64(double %595, double %571, double %596)
  %598 = call double @llvm.fmuladd.f64(double %597, double %571, double %583)
  %599 = call double @llvm.fmuladd.f64(double %586, double %598, double %566)
  %600 = add nuw i32 %567, 1
  br label %565, !llvm.loop !18

601:                                              ; preds = %565
  %.lcssa = phi double [ %566, %565 ]
  %602 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %603 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %604 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %605 = load double, ptr @nulltime, align 8
  %606 = fneg double %605
  %607 = call double @llvm.fmuladd.f64(double %603, double %604, double %606)
  store double %607, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %608 = load double, ptr @piref, align 8
  %609 = load double, ptr @three, align 8
  %610 = fdiv double %608, %609
  %611 = fmul double %610, %610
  store double %611, ptr %1, align 8
  %612 = load double, ptr @A6, align 8
  %613 = load double, ptr @A5, align 8
  %614 = call double @llvm.fmuladd.f64(double %612, double %611, double %613)
  %615 = load double, ptr @A4, align 8
  %616 = call double @llvm.fmuladd.f64(double %614, double %611, double %615)
  %617 = load double, ptr @A3, align 8
  %618 = call double @llvm.fmuladd.f64(double %616, double %611, double %617)
  %619 = load double, ptr @A2, align 8
  %620 = call double @llvm.fmuladd.f64(double %618, double %611, double %619)
  %621 = load double, ptr @A1, align 8
  %622 = call double @llvm.fmuladd.f64(double %620, double %611, double %621)
  %623 = load double, ptr @one, align 8
  %624 = call double @llvm.fmuladd.f64(double %622, double %611, double %623)
  %625 = fmul double %610, %624
  store double %625, ptr @sa, align 8
  %626 = load double, ptr @B6, align 8
  %627 = load double, ptr @B5, align 8
  %628 = call double @llvm.fmuladd.f64(double %626, double %611, double %627)
  %629 = load double, ptr @B4, align 8
  %630 = call double @llvm.fmuladd.f64(double %611, double %628, double %629)
  %631 = load double, ptr @B3, align 8
  %632 = call double @llvm.fmuladd.f64(double %611, double %630, double %631)
  %633 = load double, ptr @B2, align 8
  %634 = call double @llvm.fmuladd.f64(double %611, double %632, double %633)
  %635 = load double, ptr @B1, align 8
  %636 = call double @llvm.fmuladd.f64(double %611, double %634, double %635)
  %637 = call double @llvm.fmuladd.f64(double %611, double %636, double %623)
  store double %637, ptr @sb, align 8
  %638 = fmul double %625, %637
  %639 = fmul double %638, %637
  store double %639, ptr @sa, align 8
  %640 = fdiv double %607, 3.000000e+01
  store double %640, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %641 = load double, ptr @two, align 8
  %642 = call double @llvm.fmuladd.f64(double %641, double %.lcssa, double %639)
  %643 = fmul double %563, %642
  %644 = fdiv double %643, %641
  store double %644, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %645 = fadd double %644, f0xBFD2AAAAAAAAAAAB
  store double %645, ptr @sc, align 8
  %646 = fdiv double %623, %640
  store double %646, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %647 = fmul double %645, 1.000000e-30
  %648 = fmul double %607, 1.000000e-30
  %649 = fmul double %646, 1.000000e-30
  %650 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %647, double noundef %648, double noundef %649) #4
  %651 = load double, ptr @five, align 8
  %652 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %653 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %654 = fsub double %652, %653
  %655 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %656 = call double @llvm.fmuladd.f64(double %651, double %654, double %655)
  %657 = fdiv double %656, 5.200000e+01
  store double %657, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %658 = load double, ptr @one, align 8
  %659 = fdiv double %658, %657
  store double %659, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %660 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %661 = fadd double %660, %655
  %662 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %663 = fadd double %661, %662
  %664 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %665 = fadd double %663, %664
  %666 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %667 = fadd double %665, %666
  store double %667, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %668 = load double, ptr @four, align 8
  %669 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %670 = call double @llvm.fmuladd.f64(double %668, double %669, double %667)
  %671 = fdiv double %670, 1.520000e+02
  store double %671, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %672 = fdiv double %658, %671
  store double %672, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %667, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %673 = fadd double %667, %669
  %674 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %675 = fadd double %673, %674
  %676 = fdiv double %675, 1.460000e+02
  store double %676, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %677 = fdiv double %658, %676
  store double %677, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %678 = fadd double %655, %662
  %679 = fadd double %678, %666
  %680 = fadd double %679, %674
  %681 = fdiv double %680, 9.100000e+01
  store double %681, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %682 = fdiv double %658, %681
  store double %682, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar11 = call i32 @putchar(i32 10)
  %683 = load i32, ptr %2, align 4
  %684 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %683) #4
  %685 = load double, ptr @nulltime, align 8
  %686 = fmul double %685, 1.000000e-30
  %687 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %686) #4
  %688 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %689 = fmul double %688, 1.000000e-30
  %690 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %689) #4
  %691 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %692 = fmul double %691, 1.000000e-30
  %693 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %692) #4
  %694 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %695 = fmul double %694, 1.000000e-30
  %696 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %695) #4
  %697 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %698 = fmul double %697, 1.000000e-30
  %699 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %698) #4
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
