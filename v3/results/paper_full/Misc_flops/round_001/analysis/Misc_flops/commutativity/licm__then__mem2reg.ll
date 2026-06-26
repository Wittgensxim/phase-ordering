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
  br label %3

3:                                                ; preds = %42, %0
  %4 = phi double [ %13, %42 ], [ undef, %0 ]
  %5 = phi double [ %.lcssa9, %42 ], [ undef, %0 ]
  %6 = phi double [ %15, %42 ], [ undef, %0 ]
  %7 = phi i32 [ %12, %42 ], [ 15625, %0 ]
  %8 = phi double [ %39, %42 ], [ 0.000000e+00, %0 ]
  %9 = load double, ptr @TLimit, align 8
  %10 = fcmp olt double %8, %9
  br i1 %10, label %11, label %.loopexit

11:                                               ; preds = %3
  %12 = shl nsw i32 %7, 1
  %13 = load double, ptr @one, align 8
  %14 = sitofp i32 %12 to double
  %15 = fdiv double %13, %14
  %16 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %17 = load double, ptr @D1, align 8
  %18 = load double, ptr @D2, align 8
  %19 = load double, ptr @D3, align 8
  %20 = load double, ptr @E2, align 8
  %21 = load double, ptr @E3, align 8
  br label %22

22:                                               ; preds = %26, %11
  %23 = phi double [ %27, %26 ], [ 0.000000e+00, %11 ]
  %24 = phi double [ %35, %26 ], [ 0.000000e+00, %11 ]
  %25 = phi i32 [ %36, %26 ], [ 1, %11 ]
  %.not.not = icmp slt i32 %25, %12
  br i1 %.not.not, label %26, label %37

26:                                               ; preds = %22
  %27 = fadd double %23, %13
  %28 = fmul double %27, %15
  %29 = call double @llvm.fmuladd.f64(double %28, double %19, double %18)
  %30 = call double @llvm.fmuladd.f64(double %28, double %29, double %17)
  %31 = call double @llvm.fmuladd.f64(double %28, double %21, double %20)
  %32 = call double @llvm.fmuladd.f64(double %28, double %31, double %17)
  %33 = call double @llvm.fmuladd.f64(double %28, double %32, double %13)
  %34 = fdiv double %30, %33
  %35 = fadd double %24, %34
  %36 = add nuw nsw i32 %25, 1
  br label %22, !llvm.loop !7

37:                                               ; preds = %22
  %.lcssa9 = phi double [ %24, %22 ]
  %38 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %39 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %39, ptr @sa, align 8
  %40 = icmp eq i32 %7, 256000000
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  %.lcssa18 = phi double [ %13, %37 ]
  %.lcssa16 = phi double [ %15, %37 ]
  %.lcssa9.lcssa = phi double [ %.lcssa9, %37 ]
  br label %43

42:                                               ; preds = %37
  br label %3, !llvm.loop !9

.loopexit:                                        ; preds = %3
  %.lcssa17 = phi double [ %4, %3 ]
  %.lcssa14 = phi double [ %5, %3 ]
  %.lcssa12 = phi double [ %6, %3 ]
  %.lcssa10 = phi i32 [ %7, %3 ]
  br label %43

43:                                               ; preds = %.loopexit, %41
  %44 = phi double [ %.lcssa9.lcssa, %41 ], [ %.lcssa14, %.loopexit ]
  %45 = phi double [ %.lcssa16, %41 ], [ %.lcssa12, %.loopexit ]
  %46 = phi i32 [ 512000000, %41 ], [ %.lcssa10, %.loopexit ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %47 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %48

48:                                               ; preds = %50, %43
  %49 = phi i32 [ %51, %50 ], [ 1, %43 ]
  %.not.not3 = icmp slt i32 %49, %46
  br i1 %.not.not3, label %50, label %52

50:                                               ; preds = %48
  %51 = add nuw nsw i32 %49, 1
  br label %48, !llvm.loop !10

52:                                               ; preds = %48
  %53 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %54 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %55 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %56 = fmul double %54, %55
  %57 = fcmp olt double %56, 0.000000e+00
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %52
  %60 = phi double [ 0.000000e+00, %58 ], [ %56, %52 ]
  store double %60, ptr @nulltime, align 8
  %61 = load double, ptr @sa, align 8
  %62 = fneg double %60
  %63 = call double @llvm.fmuladd.f64(double %54, double %61, double %62)
  store double %63, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %64 = load double, ptr @D1, align 8
  %65 = load double, ptr @D2, align 8
  %66 = fadd double %64, %65
  %67 = load double, ptr @D3, align 8
  %68 = fadd double %66, %67
  %69 = load double, ptr @one, align 8
  %70 = fadd double %69, %64
  %71 = load double, ptr @E2, align 8
  %72 = fadd double %70, %71
  %73 = load double, ptr @E3, align 8
  %74 = fadd double %72, %73
  %75 = fdiv double %68, %74
  store double %75, ptr @sa, align 8
  store double %64, ptr @sb, align 8
  %76 = fdiv double %63, 1.400000e+01
  store double %76, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %77 = fadd double %75, %64
  %78 = load double, ptr @two, align 8
  %79 = call double @llvm.fmuladd.f64(double %78, double %44, double %77)
  %80 = fmul double %45, %79
  %81 = fdiv double %80, %78
  store double %81, ptr @sa, align 8
  %82 = fdiv double %69, %81
  store double %82, ptr @sb, align 8
  %83 = fptosi double %82 to i32
  %84 = mul nsw i32 %83, 40000
  %85 = sitofp i32 %84 to double
  %86 = load double, ptr @scale, align 8
  %87 = fdiv double %85, %86
  %88 = fptosi double %87 to i32
  %89 = fadd double %82, -2.520000e+01
  store double %89, ptr @sc, align 8
  %90 = fdiv double %69, %76
  store double %90, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %91 = fmul double %89, 1.000000e-30
  %92 = fmul double %63, 1.000000e-30
  %93 = fmul double %90, 1.000000e-30
  %94 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %91, double noundef %92, double noundef %93) #4
  %95 = load double, ptr @five, align 8
  %96 = fneg double %95
  %97 = load double, ptr @one, align 8
  %98 = fneg double %97
  store double %98, ptr @sa, align 8
  %99 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %sa.promoted = load double, ptr @sa, align 8
  br label %100

100:                                              ; preds = %104, %59
  %101 = phi double [ %106, %104 ], [ %sa.promoted, %59 ]
  %102 = phi double [ %105, %104 ], [ %96, %59 ]
  %103 = phi i32 [ %107, %104 ], [ 1, %59 ]
  %.not = icmp sgt i32 %103, %88
  br i1 %.not, label %108, label %104

104:                                              ; preds = %100
  %105 = fneg double %102
  %106 = fsub double %101, %102
  store double %106, ptr @sa, align 8
  %107 = add nuw nsw i32 %103, 1
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
  %116 = sitofp i32 %88 to double
  store double %116, ptr @sc, align 8
  %117 = load double, ptr @sa, align 8
  %118 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %119 = load double, ptr @two, align 8
  %sa.promoted19 = load double, ptr @sa, align 8
  br label %120

120:                                              ; preds = %128, %115
  %121 = phi double [ %136, %128 ], [ 0.000000e+00, %115 ]
  %122 = phi double [ %130, %128 ], [ %sa.promoted19, %115 ]
  %123 = phi double [ %131, %128 ], [ %117, %115 ]
  %124 = phi double [ %129, %128 ], [ %.lcssa8, %115 ]
  %125 = phi double [ %134, %128 ], [ 0.000000e+00, %115 ]
  %126 = phi double [ %133, %128 ], [ 0.000000e+00, %115 ]
  %127 = phi i32 [ %137, %128 ], [ 1, %115 ]
  %.not4 = icmp sgt i32 %127, %88
  br i1 %.not4, label %138, label %128

128:                                              ; preds = %120
  %129 = fneg double %124
  %130 = fsub double %122, %124
  store double %130, ptr @sa, align 8
  %131 = fadd double %123, %119
  %132 = fsub double %129, %131
  %133 = fadd double %126, %132
  %134 = call double @llvm.fmuladd.f64(double %124, double %131, double %125)
  %135 = fdiv double %124, %131
  %136 = fsub double %121, %135
  %137 = add nuw nsw i32 %127, 1
  br label %120, !llvm.loop !12

138:                                              ; preds = %120
  %.lcssa21 = phi double [ %121, %120 ]
  %.lcssa7 = phi double [ %125, %120 ]
  %.lcssa6 = phi double [ %126, %120 ]
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
  %147 = fmul double %146, %.lcssa6
  %148 = load double, ptr @sc, align 8
  %149 = fdiv double %147, %148
  %150 = fptosi double %149 to i32
  %151 = load double, ptr @four, align 8
  %152 = fmul double %151, %.lcssa21
  %153 = load double, ptr @five, align 8
  %154 = fdiv double %152, %153
  store double %154, ptr @sa, align 8
  %155 = fdiv double %153, %.lcssa7
  %156 = fadd double %154, %155
  store double %156, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %157 = fmul double %.lcssa7, %.lcssa7
  %158 = fmul double %157, %.lcssa7
  %159 = fdiv double 3.125000e+01, %158
  %160 = fsub double %156, %159
  store double %160, ptr @piprg, align 8
  %161 = load double, ptr @piref, align 8
  %162 = fsub double %160, %161
  store double %162, ptr @pierr, align 8
  %163 = load double, ptr @one, align 8
  %164 = fdiv double %163, %145
  store double %164, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %165 = fmul double %162, 1.000000e-30
  %166 = fmul double %144, 1.000000e-30
  %167 = fmul double %164, 1.000000e-30
  %168 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %165, double noundef %166, double noundef %167) #4
  %169 = load double, ptr @piref, align 8
  %170 = load double, ptr @three, align 8
  %171 = sitofp i32 %150 to double
  %172 = fmul double %170, %171
  %173 = fdiv double %169, %172
  %174 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %175 = load double, ptr @one, align 8
  %176 = load double, ptr @A6, align 8
  %177 = load double, ptr @A5, align 8
  %178 = fneg double %177
  %179 = load double, ptr @A4, align 8
  %180 = load double, ptr @A3, align 8
  %181 = fneg double %180
  %182 = load double, ptr @A2, align 8
  %183 = load double, ptr @A1, align 8
  br label %184

184:                                              ; preds = %189, %138
  %185 = phi double [ %192, %189 ], [ %.lcssa21, %138 ]
  %186 = phi double [ %190, %189 ], [ 0.000000e+00, %138 ]
  %187 = phi double [ %199, %189 ], [ 0.000000e+00, %138 ]
  %188 = phi i32 [ %200, %189 ], [ 1, %138 ]
  %.not5.not = icmp slt i32 %188, %150
  br i1 %.not5.not, label %189, label %201

189:                                              ; preds = %184
  %190 = fadd double %186, %175
  %191 = fmul double %190, %173
  %192 = fmul double %191, %191
  %193 = call double @llvm.fmuladd.f64(double %176, double %192, double %178)
  %194 = call double @llvm.fmuladd.f64(double %193, double %192, double %179)
  %195 = call double @llvm.fmuladd.f64(double %194, double %192, double %181)
  %196 = call double @llvm.fmuladd.f64(double %195, double %192, double %182)
  %197 = call double @llvm.fmuladd.f64(double %196, double %192, double %183)
  %198 = call double @llvm.fmuladd.f64(double %197, double %192, double %175)
  %199 = call double @llvm.fmuladd.f64(double %191, double %198, double %187)
  %200 = add nuw nsw i32 %188, 1
  br label %184, !llvm.loop !13

201:                                              ; preds = %184
  %.lcssa23 = phi double [ %185, %184 ]
  %.lcssa5 = phi double [ %187, %184 ]
  %202 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %203 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %204 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %205 = load double, ptr @nulltime, align 8
  %206 = fneg double %205
  %207 = call double @llvm.fmuladd.f64(double %203, double %204, double %206)
  store double %207, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %208 = load double, ptr @piref, align 8
  %209 = load double, ptr @three, align 8
  %210 = fdiv double %208, %209
  %211 = fmul double %210, %210
  %212 = load double, ptr @A6, align 8
  %213 = load double, ptr @A5, align 8
  %214 = fneg double %213
  %215 = call double @llvm.fmuladd.f64(double %212, double %211, double %214)
  %216 = load double, ptr @A4, align 8
  %217 = call double @llvm.fmuladd.f64(double %215, double %211, double %216)
  %218 = load double, ptr @A3, align 8
  %219 = fneg double %218
  %220 = call double @llvm.fmuladd.f64(double %217, double %211, double %219)
  %221 = load double, ptr @A2, align 8
  %222 = call double @llvm.fmuladd.f64(double %220, double %211, double %221)
  %223 = load double, ptr @A1, align 8
  %224 = call double @llvm.fmuladd.f64(double %222, double %211, double %223)
  %225 = load double, ptr @one, align 8
  %226 = call double @llvm.fmuladd.f64(double %224, double %211, double %225)
  %227 = fmul double %210, %226
  store double %227, ptr @sa, align 8
  %228 = fdiv double %207, 1.700000e+01
  store double %228, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %229 = load double, ptr @two, align 8
  %230 = call double @llvm.fmuladd.f64(double %229, double %.lcssa5, double %227)
  %231 = fmul double %173, %230
  %232 = fdiv double %231, %229
  store double %232, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %233 = fadd double %232, -5.000000e-01
  store double %233, ptr @sc, align 8
  %234 = fdiv double %225, %228
  store double %234, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %235 = fmul double %233, 1.000000e-30
  %236 = fmul double %207, 1.000000e-30
  %237 = fmul double %234, 1.000000e-30
  %238 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %235, double noundef %236, double noundef %237) #4
  %239 = load double, ptr @A3, align 8
  %240 = fneg double %239
  store double %240, ptr @A3, align 8
  %241 = load double, ptr @A5, align 8
  %242 = fneg double %241
  store double %242, ptr @A5, align 8
  %243 = load double, ptr @piref, align 8
  %244 = load double, ptr @three, align 8
  %245 = fmul double %244, %171
  %246 = fdiv double %243, %245
  %247 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %248 = load double, ptr @B6, align 8
  %249 = load double, ptr @B5, align 8
  %250 = load double, ptr @B4, align 8
  %251 = load double, ptr @B3, align 8
  %252 = load double, ptr @B2, align 8
  %253 = load double, ptr @B1, align 8
  %254 = load double, ptr @one, align 8
  br label %255

255:                                              ; preds = %259, %201
  %256 = phi double [ %262, %259 ], [ %211, %201 ]
  %257 = phi double [ %269, %259 ], [ 0.000000e+00, %201 ]
  %258 = phi i32 [ %270, %259 ], [ 1, %201 ]
  %.not6.not = icmp slt i32 %258, %150
  br i1 %.not6.not, label %259, label %271

259:                                              ; preds = %255
  %260 = uitofp nneg i32 %258 to double
  %261 = fmul double %246, %260
  %262 = fmul double %261, %261
  %263 = call double @llvm.fmuladd.f64(double %248, double %262, double %249)
  %264 = call double @llvm.fmuladd.f64(double %262, double %263, double %250)
  %265 = call double @llvm.fmuladd.f64(double %262, double %264, double %251)
  %266 = call double @llvm.fmuladd.f64(double %262, double %265, double %252)
  %267 = call double @llvm.fmuladd.f64(double %262, double %266, double %253)
  %268 = call double @llvm.fmuladd.f64(double %262, double %267, double %257)
  %269 = fadd double %268, %254
  %270 = add nuw nsw i32 %258, 1
  br label %255, !llvm.loop !14

271:                                              ; preds = %255
  %.lcssa25 = phi double [ %256, %255 ]
  %.lcssa4 = phi double [ %257, %255 ]
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
  %299 = fmul double %246, %298
  %300 = fdiv double %299, %297
  store double %300, ptr @sa, align 8
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
  %323 = fmul double %322, %171
  %324 = fdiv double %321, %323
  %325 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %326 = load double, ptr @A6, align 8
  %327 = load double, ptr @A5, align 8
  %328 = load double, ptr @A4, align 8
  %329 = load double, ptr @A3, align 8
  %330 = load double, ptr @A2, align 8
  %331 = load double, ptr @A1, align 8
  %332 = load double, ptr @one, align 8
  %333 = load double, ptr @B6, align 8
  %334 = load double, ptr @B5, align 8
  %335 = load double, ptr @B4, align 8
  %336 = load double, ptr @B3, align 8
  %337 = load double, ptr @B2, align 8
  %338 = load double, ptr @B1, align 8
  br label %339

339:                                              ; preds = %343, %271
  %340 = phi double [ %346, %343 ], [ %281, %271 ]
  %341 = phi double [ %361, %343 ], [ 0.000000e+00, %271 ]
  %342 = phi i32 [ %362, %343 ], [ 1, %271 ]
  %.not7.not = icmp slt i32 %342, %150
  br i1 %.not7.not, label %343, label %363

343:                                              ; preds = %339
  %344 = uitofp nneg i32 %342 to double
  %345 = fmul double %324, %344
  %346 = fmul double %345, %345
  %347 = call double @llvm.fmuladd.f64(double %326, double %346, double %327)
  %348 = call double @llvm.fmuladd.f64(double %347, double %346, double %328)
  %349 = call double @llvm.fmuladd.f64(double %348, double %346, double %329)
  %350 = call double @llvm.fmuladd.f64(double %349, double %346, double %330)
  %351 = call double @llvm.fmuladd.f64(double %350, double %346, double %331)
  %352 = call double @llvm.fmuladd.f64(double %351, double %346, double %332)
  %353 = fmul double %345, %352
  %354 = call double @llvm.fmuladd.f64(double %333, double %346, double %334)
  %355 = call double @llvm.fmuladd.f64(double %346, double %354, double %335)
  %356 = call double @llvm.fmuladd.f64(double %346, double %355, double %336)
  %357 = call double @llvm.fmuladd.f64(double %346, double %356, double %337)
  %358 = call double @llvm.fmuladd.f64(double %346, double %357, double %338)
  %359 = call double @llvm.fmuladd.f64(double %346, double %358, double %332)
  %360 = fdiv double %353, %359
  %361 = fadd double %341, %360
  %362 = add nuw nsw i32 %342, 1
  br label %339, !llvm.loop !15

363:                                              ; preds = %339
  %.lcssa27 = phi double [ %340, %339 ]
  %.lcssa3 = phi double [ %341, %339 ]
  %364 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %365 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %366 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %367 = load double, ptr @nulltime, align 8
  %368 = fneg double %367
  %369 = call double @llvm.fmuladd.f64(double %365, double %366, double %368)
  store double %369, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %370 = load double, ptr @piref, align 8
  %371 = load double, ptr @three, align 8
  %372 = fdiv double %370, %371
  %373 = fmul double %372, %372
  %374 = load double, ptr @A6, align 8
  %375 = load double, ptr @A5, align 8
  %376 = call double @llvm.fmuladd.f64(double %374, double %373, double %375)
  %377 = load double, ptr @A4, align 8
  %378 = call double @llvm.fmuladd.f64(double %376, double %373, double %377)
  %379 = load double, ptr @A3, align 8
  %380 = call double @llvm.fmuladd.f64(double %378, double %373, double %379)
  %381 = load double, ptr @A2, align 8
  %382 = call double @llvm.fmuladd.f64(double %380, double %373, double %381)
  %383 = load double, ptr @A1, align 8
  %384 = call double @llvm.fmuladd.f64(double %382, double %373, double %383)
  %385 = load double, ptr @one, align 8
  %386 = call double @llvm.fmuladd.f64(double %384, double %373, double %385)
  %387 = fmul double %372, %386
  store double %387, ptr @sa, align 8
  %388 = load double, ptr @B6, align 8
  %389 = load double, ptr @B5, align 8
  %390 = call double @llvm.fmuladd.f64(double %388, double %373, double %389)
  %391 = load double, ptr @B4, align 8
  %392 = call double @llvm.fmuladd.f64(double %373, double %390, double %391)
  %393 = load double, ptr @B3, align 8
  %394 = call double @llvm.fmuladd.f64(double %373, double %392, double %393)
  %395 = load double, ptr @B2, align 8
  %396 = call double @llvm.fmuladd.f64(double %373, double %394, double %395)
  %397 = load double, ptr @B1, align 8
  %398 = call double @llvm.fmuladd.f64(double %373, double %396, double %397)
  %399 = call double @llvm.fmuladd.f64(double %373, double %398, double %385)
  store double %399, ptr @sb, align 8
  %400 = fdiv double %387, %399
  store double %400, ptr @sa, align 8
  %401 = fdiv double %369, 2.900000e+01
  store double %401, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %402 = load double, ptr @two, align 8
  %403 = call double @llvm.fmuladd.f64(double %402, double %.lcssa3, double %400)
  %404 = fmul double %324, %403
  %405 = fdiv double %404, %402
  store double %405, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %406 = fadd double %405, f0xBFE62E42FEFA39EF
  store double %406, ptr @sc, align 8
  %407 = fdiv double %385, %401
  store double %407, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %408 = fmul double %406, 1.000000e-30
  %409 = fmul double %369, 1.000000e-30
  %410 = fmul double %407, 1.000000e-30
  %411 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %408, double noundef %409, double noundef %410) #4
  %412 = load double, ptr @piref, align 8
  %413 = load double, ptr @four, align 8
  %414 = fmul double %413, %171
  %415 = fdiv double %412, %414
  %416 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %417 = load double, ptr @A6, align 8
  %418 = load double, ptr @A5, align 8
  %419 = load double, ptr @A4, align 8
  %420 = load double, ptr @A3, align 8
  %421 = load double, ptr @A2, align 8
  %422 = load double, ptr @A1, align 8
  %423 = load double, ptr @one, align 8
  %424 = load double, ptr @B6, align 8
  %425 = load double, ptr @B5, align 8
  %426 = load double, ptr @B4, align 8
  %427 = load double, ptr @B3, align 8
  %428 = load double, ptr @B2, align 8
  %429 = load double, ptr @B1, align 8
  br label %430

430:                                              ; preds = %434, %363
  %431 = phi double [ %437, %434 ], [ %373, %363 ]
  %432 = phi double [ %451, %434 ], [ 0.000000e+00, %363 ]
  %433 = phi i32 [ %452, %434 ], [ 1, %363 ]
  %.not8.not = icmp slt i32 %433, %150
  br i1 %.not8.not, label %434, label %453

434:                                              ; preds = %430
  %435 = uitofp nneg i32 %433 to double
  %436 = fmul double %415, %435
  %437 = fmul double %436, %436
  %438 = call double @llvm.fmuladd.f64(double %417, double %437, double %418)
  %439 = call double @llvm.fmuladd.f64(double %438, double %437, double %419)
  %440 = call double @llvm.fmuladd.f64(double %439, double %437, double %420)
  %441 = call double @llvm.fmuladd.f64(double %440, double %437, double %421)
  %442 = call double @llvm.fmuladd.f64(double %441, double %437, double %422)
  %443 = call double @llvm.fmuladd.f64(double %442, double %437, double %423)
  %444 = fmul double %436, %443
  %445 = call double @llvm.fmuladd.f64(double %424, double %437, double %425)
  %446 = call double @llvm.fmuladd.f64(double %437, double %445, double %426)
  %447 = call double @llvm.fmuladd.f64(double %437, double %446, double %427)
  %448 = call double @llvm.fmuladd.f64(double %437, double %447, double %428)
  %449 = call double @llvm.fmuladd.f64(double %437, double %448, double %429)
  %450 = call double @llvm.fmuladd.f64(double %437, double %449, double %423)
  %451 = call double @llvm.fmuladd.f64(double %444, double %450, double %432)
  %452 = add nuw nsw i32 %433, 1
  br label %430, !llvm.loop !16

453:                                              ; preds = %430
  %.lcssa29 = phi double [ %431, %430 ]
  %.lcssa2 = phi double [ %432, %430 ]
  %454 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %455 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %456 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %457 = load double, ptr @nulltime, align 8
  %458 = fneg double %457
  %459 = call double @llvm.fmuladd.f64(double %455, double %456, double %458)
  store double %459, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %460 = load double, ptr @piref, align 8
  %461 = load double, ptr @four, align 8
  %462 = fdiv double %460, %461
  %463 = fmul double %462, %462
  %464 = load double, ptr @A6, align 8
  %465 = load double, ptr @A5, align 8
  %466 = call double @llvm.fmuladd.f64(double %464, double %463, double %465)
  %467 = load double, ptr @A4, align 8
  %468 = call double @llvm.fmuladd.f64(double %466, double %463, double %467)
  %469 = load double, ptr @A3, align 8
  %470 = call double @llvm.fmuladd.f64(double %468, double %463, double %469)
  %471 = load double, ptr @A2, align 8
  %472 = call double @llvm.fmuladd.f64(double %470, double %463, double %471)
  %473 = load double, ptr @A1, align 8
  %474 = call double @llvm.fmuladd.f64(double %472, double %463, double %473)
  %475 = load double, ptr @one, align 8
  %476 = call double @llvm.fmuladd.f64(double %474, double %463, double %475)
  %477 = fmul double %462, %476
  store double %477, ptr @sa, align 8
  %478 = load double, ptr @B6, align 8
  %479 = load double, ptr @B5, align 8
  %480 = call double @llvm.fmuladd.f64(double %478, double %463, double %479)
  %481 = load double, ptr @B4, align 8
  %482 = call double @llvm.fmuladd.f64(double %463, double %480, double %481)
  %483 = load double, ptr @B3, align 8
  %484 = call double @llvm.fmuladd.f64(double %463, double %482, double %483)
  %485 = load double, ptr @B2, align 8
  %486 = call double @llvm.fmuladd.f64(double %463, double %484, double %485)
  %487 = load double, ptr @B1, align 8
  %488 = call double @llvm.fmuladd.f64(double %463, double %486, double %487)
  %489 = call double @llvm.fmuladd.f64(double %463, double %488, double %475)
  store double %489, ptr @sb, align 8
  %490 = fmul double %477, %489
  store double %490, ptr @sa, align 8
  %491 = fdiv double %459, 2.900000e+01
  store double %491, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %492 = load double, ptr @two, align 8
  %493 = call double @llvm.fmuladd.f64(double %492, double %.lcssa2, double %490)
  %494 = fmul double %415, %493
  %495 = fdiv double %494, %492
  store double %495, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %496 = fadd double %495, -2.500000e-01
  store double %496, ptr @sc, align 8
  %497 = fdiv double %475, %491
  store double %497, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %498 = fmul double %496, 1.000000e-30
  %499 = fmul double %459, 1.000000e-30
  %500 = fmul double %497, 1.000000e-30
  %501 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %498, double noundef %499, double noundef %500) #4
  %502 = load double, ptr @one, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %503 = fdiv double f0x40599541F7F192A4, %171
  %504 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %505

505:                                              ; preds = %508, %453
  %506 = phi double [ %520, %508 ], [ 0.000000e+00, %453 ]
  %507 = phi i32 [ %521, %508 ], [ 1, %453 ]
  %.not9.not = icmp slt i32 %507, %150
  br i1 %.not9.not, label %508, label %522

508:                                              ; preds = %505
  %509 = uitofp nneg i32 %507 to double
  %510 = fmul double %503, %509
  %511 = fmul double %510, %510
  %512 = fadd double %510, %502
  %513 = fdiv double %502, %512
  %514 = fsub double %506, %513
  %515 = fadd double %511, %502
  %516 = fdiv double %510, %515
  %517 = fsub double %514, %516
  %518 = call double @llvm.fmuladd.f64(double %510, double %511, double %502)
  %519 = fdiv double %511, %518
  %520 = fsub double %517, %519
  %521 = add nuw nsw i32 %507, 1
  br label %505, !llvm.loop !17

522:                                              ; preds = %505
  %.lcssa1 = phi double [ %506, %505 ]
  %523 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %524 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %525 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %526 = load double, ptr @nulltime, align 8
  %527 = fneg double %526
  %528 = call double @llvm.fmuladd.f64(double %524, double %525, double %527)
  store double %528, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %529 = fdiv double %528, 1.200000e+01
  store double %529, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %530 = load double, ptr @sa, align 8
  %531 = fmul double %530, %530
  %532 = fneg double %502
  %533 = fadd double %530, %502
  %534 = fdiv double %502, %533
  %535 = fsub double %532, %534
  %536 = fadd double %531, %502
  %537 = fdiv double %530, %536
  %538 = fsub double %535, %537
  %539 = call double @llvm.fmuladd.f64(double %530, double %531, double %502)
  %540 = fdiv double %531, %539
  %541 = fsub double %538, %540
  store double %541, ptr @sa, align 8
  %542 = fmul nnan double %503, 1.800000e+01
  %543 = load double, ptr @two, align 8
  %544 = call double @llvm.fmuladd.f64(double %543, double %.lcssa1, double %541)
  %545 = fmul double %542, %544
  store double %545, ptr @sa, align 8
  %546 = fptosi double %545 to i32
  %547 = mul nsw i32 %546, -2000
  %548 = sitofp i32 %547 to double
  %549 = load double, ptr @scale, align 8
  %550 = fdiv double %548, %549
  %551 = fptosi double %550 to i32
  %552 = fadd double %545, 5.002000e+02
  store double %552, ptr @sc, align 8
  %553 = load double, ptr @one, align 8
  %554 = fdiv double %553, %529
  store double %554, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %555 = fmul double %552, 1.000000e-30
  %556 = fmul double %528, 1.000000e-30
  %557 = fmul double %554, 1.000000e-30
  %558 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %555, double noundef %556, double noundef %557) #4
  %559 = load double, ptr @piref, align 8
  %560 = load double, ptr @three, align 8
  %561 = sitofp i32 %551 to double
  %562 = fmul double %560, %561
  %563 = fdiv double %559, %562
  %564 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %565 = load double, ptr @B6, align 8
  %566 = load double, ptr @B5, align 8
  %567 = load double, ptr @B4, align 8
  %568 = load double, ptr @B3, align 8
  %569 = load double, ptr @B2, align 8
  %570 = load double, ptr @B1, align 8
  %571 = load double, ptr @one, align 8
  %572 = load double, ptr @A6, align 8
  %573 = load double, ptr @A5, align 8
  %574 = load double, ptr @A4, align 8
  %575 = load double, ptr @A3, align 8
  %576 = load double, ptr @A2, align 8
  %577 = load double, ptr @A1, align 8
  br label %578

578:                                              ; preds = %582, %522
  %579 = phi double [ %585, %582 ], [ %502, %522 ]
  %580 = phi double [ %600, %582 ], [ 0.000000e+00, %522 ]
  %581 = phi i32 [ %601, %582 ], [ 1, %522 ]
  %.not10.not = icmp slt i32 %581, %551
  br i1 %.not10.not, label %582, label %602

582:                                              ; preds = %578
  %583 = uitofp nneg i32 %581 to double
  %584 = fmul double %563, %583
  %585 = fmul double %584, %584
  %586 = call double @llvm.fmuladd.f64(double %565, double %585, double %566)
  %587 = call double @llvm.fmuladd.f64(double %585, double %586, double %567)
  %588 = call double @llvm.fmuladd.f64(double %585, double %587, double %568)
  %589 = call double @llvm.fmuladd.f64(double %585, double %588, double %569)
  %590 = call double @llvm.fmuladd.f64(double %585, double %589, double %570)
  %591 = call double @llvm.fmuladd.f64(double %585, double %590, double %571)
  %592 = fmul double %591, %591
  %593 = fmul double %592, %584
  %594 = call double @llvm.fmuladd.f64(double %572, double %585, double %573)
  %595 = call double @llvm.fmuladd.f64(double %594, double %585, double %574)
  %596 = call double @llvm.fmuladd.f64(double %595, double %585, double %575)
  %597 = call double @llvm.fmuladd.f64(double %596, double %585, double %576)
  %598 = call double @llvm.fmuladd.f64(double %597, double %585, double %577)
  %599 = call double @llvm.fmuladd.f64(double %598, double %585, double %571)
  %600 = call double @llvm.fmuladd.f64(double %593, double %599, double %580)
  %601 = add nuw nsw i32 %581, 1
  br label %578, !llvm.loop !18

602:                                              ; preds = %578
  %.lcssa31 = phi double [ %579, %578 ]
  %.lcssa = phi double [ %580, %578 ]
  %603 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %604 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %605 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %606 = load double, ptr @nulltime, align 8
  %607 = fneg double %606
  %608 = call double @llvm.fmuladd.f64(double %604, double %605, double %607)
  store double %608, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %609 = load double, ptr @piref, align 8
  %610 = load double, ptr @three, align 8
  %611 = fdiv double %609, %610
  %612 = fmul double %611, %611
  %613 = load double, ptr @A6, align 8
  %614 = load double, ptr @A5, align 8
  %615 = call double @llvm.fmuladd.f64(double %613, double %612, double %614)
  %616 = load double, ptr @A4, align 8
  %617 = call double @llvm.fmuladd.f64(double %615, double %612, double %616)
  %618 = load double, ptr @A3, align 8
  %619 = call double @llvm.fmuladd.f64(double %617, double %612, double %618)
  %620 = load double, ptr @A2, align 8
  %621 = call double @llvm.fmuladd.f64(double %619, double %612, double %620)
  %622 = load double, ptr @A1, align 8
  %623 = call double @llvm.fmuladd.f64(double %621, double %612, double %622)
  %624 = load double, ptr @one, align 8
  %625 = call double @llvm.fmuladd.f64(double %623, double %612, double %624)
  %626 = fmul double %611, %625
  store double %626, ptr @sa, align 8
  %627 = load double, ptr @B6, align 8
  %628 = load double, ptr @B5, align 8
  %629 = call double @llvm.fmuladd.f64(double %627, double %612, double %628)
  %630 = load double, ptr @B4, align 8
  %631 = call double @llvm.fmuladd.f64(double %612, double %629, double %630)
  %632 = load double, ptr @B3, align 8
  %633 = call double @llvm.fmuladd.f64(double %612, double %631, double %632)
  %634 = load double, ptr @B2, align 8
  %635 = call double @llvm.fmuladd.f64(double %612, double %633, double %634)
  %636 = load double, ptr @B1, align 8
  %637 = call double @llvm.fmuladd.f64(double %612, double %635, double %636)
  %638 = call double @llvm.fmuladd.f64(double %612, double %637, double %624)
  store double %638, ptr @sb, align 8
  %639 = fmul double %626, %638
  %640 = fmul double %639, %638
  store double %640, ptr @sa, align 8
  %641 = fdiv double %608, 3.000000e+01
  store double %641, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %642 = load double, ptr @two, align 8
  %643 = call double @llvm.fmuladd.f64(double %642, double %.lcssa, double %640)
  %644 = fmul double %563, %643
  %645 = fdiv double %644, %642
  store double %645, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %646 = fadd double %645, f0xBFD2AAAAAAAAAAAB
  store double %646, ptr @sc, align 8
  %647 = fdiv double %624, %641
  store double %647, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %648 = fmul double %646, 1.000000e-30
  %649 = fmul double %608, 1.000000e-30
  %650 = fmul double %647, 1.000000e-30
  %651 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %648, double noundef %649, double noundef %650) #4
  %652 = load double, ptr @five, align 8
  %653 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %654 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %655 = fsub double %653, %654
  %656 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %657 = call double @llvm.fmuladd.f64(double %652, double %655, double %656)
  %658 = fdiv double %657, 5.200000e+01
  store double %658, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %659 = load double, ptr @one, align 8
  %660 = fdiv double %659, %658
  store double %660, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %661 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %662 = fadd double %661, %656
  %663 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %664 = fadd double %662, %663
  %665 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %666 = fadd double %664, %665
  %667 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %668 = fadd double %666, %667
  store double %668, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %669 = load double, ptr @four, align 8
  %670 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %671 = call double @llvm.fmuladd.f64(double %669, double %670, double %668)
  %672 = fdiv double %671, 1.520000e+02
  store double %672, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %673 = fdiv double %659, %672
  store double %673, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %668, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %674 = fadd double %668, %670
  %675 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %676 = fadd double %674, %675
  %677 = fdiv double %676, 1.460000e+02
  store double %677, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %678 = fdiv double %659, %677
  store double %678, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %679 = fadd double %656, %663
  %680 = fadd double %679, %667
  %681 = fadd double %680, %675
  %682 = fdiv double %681, 9.100000e+01
  store double %682, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %683 = fdiv double %659, %682
  store double %683, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar11 = call i32 @putchar(i32 10)
  %684 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %551) #4
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
