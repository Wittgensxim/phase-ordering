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
  %14 = load i32, ptr %7, align 4
  %.promoted27 = load i32, ptr %10, align 4
  %.promoted30 = load double, ptr %5, align 8
  %.promoted33 = load double, ptr %1, align 8
  %.promoted35 = load double, ptr %3, align 8
  %.promoted = load double, ptr %4, align 8
  %.promoted39 = load double, ptr %2, align 8
  %.promoted41 = load i32, ptr %8, align 1
  br label %15

15:                                               ; preds = %55, %0
  %storemerge.lcssa42 = phi i32 [ %storemerge.lcssa, %55 ], [ %.promoted41, %0 ]
  %.lcssa2440 = phi double [ %.lcssa24, %55 ], [ %.promoted39, %0 ]
  %16 = phi double [ %24, %55 ], [ %.promoted, %0 ]
  %.lcssa36 = phi double [ %.lcssa, %55 ], [ %.promoted35, %0 ]
  %.lcssa2634 = phi double [ %.lcssa26, %55 ], [ %.promoted33, %0 ]
  %17 = phi double [ %26, %55 ], [ %.promoted30, %0 ]
  %18 = phi i32 [ %23, %55 ], [ %.promoted27, %0 ]
  %19 = load double, ptr @sa, align 8
  %20 = load double, ptr @TLimit, align 8
  %21 = fcmp olt double %19, %20
  br i1 %21, label %22, label %.loopexit

22:                                               ; preds = %15
  %23 = shl nsw i32 %18, 1
  %24 = load double, ptr @one, align 8
  %25 = sitofp i32 %23 to double
  %26 = fdiv double %24, %25
  %27 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %28 = load double, ptr @D1, align 8
  %29 = load double, ptr @D2, align 8
  %30 = load double, ptr @D3, align 8
  %31 = load double, ptr @D1, align 8
  %32 = load double, ptr @E2, align 8
  %33 = load double, ptr @E3, align 8
  br label %34

34:                                               ; preds = %48, %22
  %35 = phi double [ 0.000000e+00, %22 ], [ %47, %48 ]
  %36 = phi double [ %.lcssa2440, %22 ], [ %40, %48 ]
  %37 = phi double [ 0.000000e+00, %22 ], [ %39, %48 ]
  %storemerge = phi i32 [ 1, %22 ], [ %49, %48 ]
  %.not.not = icmp slt i32 %storemerge, %23
  br i1 %.not.not, label %38, label %50

38:                                               ; preds = %34
  %39 = fadd double %37, %24
  %40 = fmul double %39, %26
  %41 = call double @llvm.fmuladd.f64(double %40, double %30, double %29)
  %42 = call double @llvm.fmuladd.f64(double %40, double %41, double %28)
  %43 = call double @llvm.fmuladd.f64(double %40, double %33, double %32)
  %44 = call double @llvm.fmuladd.f64(double %40, double %43, double %31)
  %45 = call double @llvm.fmuladd.f64(double %40, double %44, double %24)
  %46 = fdiv double %42, %45
  %47 = fadd double %35, %46
  br label %48

48:                                               ; preds = %38
  %49 = add nsw i32 %storemerge, 1
  br label %34, !llvm.loop !7

50:                                               ; preds = %34
  %.lcssa26 = phi double [ %35, %34 ]
  %.lcssa24 = phi double [ %36, %34 ]
  %.lcssa = phi double [ %37, %34 ]
  %storemerge.lcssa = phi i32 [ %storemerge, %34 ]
  %51 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %52 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %52, ptr @sa, align 8
  %53 = icmp eq i32 %23, %14
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  %storemerge.lcssa.lcssa = phi i32 [ %storemerge.lcssa, %50 ]
  %.lcssa24.lcssa = phi double [ %.lcssa24, %50 ]
  %.lcssa38 = phi double [ %24, %50 ]
  %.lcssa.lcssa = phi double [ %.lcssa, %50 ]
  %.lcssa26.lcssa = phi double [ %.lcssa26, %50 ]
  %.lcssa32 = phi double [ %26, %50 ]
  %.lcssa29 = phi i32 [ %23, %50 ]
  store i32 %.lcssa29, ptr %10, align 4
  store double %.lcssa32, ptr %5, align 8
  store double %.lcssa26.lcssa, ptr %1, align 8
  store double %.lcssa.lcssa, ptr %3, align 8
  store double %.lcssa38, ptr %4, align 8
  store double %.lcssa24.lcssa, ptr %2, align 8
  store i32 %storemerge.lcssa.lcssa, ptr %8, align 1
  br label %56

55:                                               ; preds = %50
  br label %15, !llvm.loop !9

.loopexit:                                        ; preds = %15
  %storemerge.lcssa42.lcssa = phi i32 [ %storemerge.lcssa42, %15 ]
  %.lcssa2440.lcssa = phi double [ %.lcssa2440, %15 ]
  %.lcssa37 = phi double [ %16, %15 ]
  %.lcssa36.lcssa = phi double [ %.lcssa36, %15 ]
  %.lcssa2634.lcssa = phi double [ %.lcssa2634, %15 ]
  %.lcssa31 = phi double [ %17, %15 ]
  %.lcssa28 = phi i32 [ %18, %15 ]
  store i32 %.lcssa28, ptr %10, align 4
  store double %.lcssa31, ptr %5, align 8
  store double %.lcssa2634.lcssa, ptr %1, align 8
  store double %.lcssa36.lcssa, ptr %3, align 8
  store double %.lcssa37, ptr %4, align 8
  store double %.lcssa2440.lcssa, ptr %2, align 8
  store i32 %storemerge.lcssa42.lcssa, ptr %8, align 1
  br label %56

56:                                               ; preds = %.loopexit, %54
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %57 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %58 = load i32, ptr %10, align 4
  br label %59

59:                                               ; preds = %61, %56
  %storemerge3 = phi i32 [ 1, %56 ], [ %62, %61 ]
  %.not.not4 = icmp slt i32 %storemerge3, %58
  br i1 %.not.not4, label %60, label %63

60:                                               ; preds = %59
  br label %61

61:                                               ; preds = %60
  %62 = add nsw i32 %storemerge3, 1
  br label %59, !llvm.loop !10

63:                                               ; preds = %59
  %storemerge3.lcssa = phi i32 [ %storemerge3, %59 ]
  store i32 %storemerge3.lcssa, ptr %8, align 4
  %64 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %65 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %66 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %67 = fmul double %65, %66
  %68 = fcmp olt double %67, 0.000000e+00
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69, %63
  %storemerge5 = phi double [ 0.000000e+00, %69 ], [ %67, %63 ]
  store double %storemerge5, ptr @nulltime, align 8
  %71 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %72 = load double, ptr @sa, align 8
  %73 = fneg double %storemerge5
  %74 = call double @llvm.fmuladd.f64(double %71, double %72, double %73)
  store double %74, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %75 = load double, ptr @D1, align 8
  %76 = load double, ptr @D2, align 8
  %77 = fadd double %75, %76
  %78 = load double, ptr @D3, align 8
  %79 = fadd double %77, %78
  %80 = load double, ptr @one, align 8
  %81 = fadd double %80, %75
  %82 = load double, ptr @E2, align 8
  %83 = fadd double %81, %82
  %84 = load double, ptr @E3, align 8
  %85 = fadd double %83, %84
  %86 = fdiv double %79, %85
  store double %86, ptr @sa, align 8
  %87 = load double, ptr @D1, align 8
  store double %87, ptr @sb, align 8
  %88 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %89 = fdiv double %88, 1.400000e+01
  store double %89, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %90 = load double, ptr %5, align 8
  %91 = load double, ptr @sa, align 8
  %92 = fadd double %91, %87
  %93 = load double, ptr @two, align 8
  %94 = load double, ptr %1, align 8
  %95 = call double @llvm.fmuladd.f64(double %93, double %94, double %92)
  %96 = fmul double %90, %95
  %97 = fdiv double %96, %93
  store double %97, ptr @sa, align 8
  %98 = load double, ptr @one, align 8
  %99 = fdiv double %98, %97
  store double %99, ptr @sb, align 8
  %100 = fptosi double %99 to i32
  %101 = mul nsw i32 %100, 40000
  %102 = sitofp i32 %101 to double
  %103 = load double, ptr @scale, align 8
  %104 = fdiv double %102, %103
  %105 = fptosi double %104 to i32
  store i32 %105, ptr %10, align 4
  %106 = load double, ptr @sb, align 8
  %107 = fadd double %106, -2.520000e+01
  store double %107, ptr @sc, align 8
  %108 = load double, ptr @one, align 8
  %109 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %110 = fdiv double %108, %109
  store double %110, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %111 = fmul double %107, 1.000000e-30
  %112 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %113 = fmul double %112, 1.000000e-30
  %114 = fmul double %110, 1.000000e-30
  %115 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %111, double noundef %113, double noundef %114) #4
  %116 = load i32, ptr %10, align 4
  store i32 %116, ptr %9, align 4
  %117 = load double, ptr @five, align 8
  %118 = fneg double %117
  store double %118, ptr %1, align 8
  %119 = load double, ptr @one, align 8
  %120 = fneg double %119
  store double %120, ptr @sa, align 8
  %121 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %122 = load i32, ptr %9, align 4
  %.promoted45 = load double, ptr %1, align 8
  %sa.promoted = load double, ptr @sa, align 8
  br label %123

123:                                              ; preds = %129, %70
  %124 = phi double [ %sa.promoted, %70 ], [ %128, %129 ]
  %125 = phi double [ %.promoted45, %70 ], [ %127, %129 ]
  %storemerge6 = phi i32 [ 1, %70 ], [ %130, %129 ]
  %.not = icmp sgt i32 %storemerge6, %122
  br i1 %.not, label %131, label %126

126:                                              ; preds = %123
  %127 = fneg double %125
  %128 = fsub double %124, %125
  store double %128, ptr @sa, align 8
  br label %129

129:                                              ; preds = %126
  %130 = add nsw i32 %storemerge6, 1
  br label %123, !llvm.loop !11

131:                                              ; preds = %123
  %.lcssa46 = phi double [ %125, %123 ]
  %storemerge6.lcssa = phi i32 [ %storemerge6, %123 ]
  store i32 %storemerge6.lcssa, ptr %8, align 4
  store double %.lcssa46, ptr %1, align 8
  %132 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %133 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %134 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %135 = fmul double %133, %134
  %136 = fcmp olt double %135, 0.000000e+00
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  br label %138

138:                                              ; preds = %137, %131
  %storemerge7 = phi double [ 0.000000e+00, %137 ], [ %135, %131 ]
  store double %storemerge7, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %139 = load i32, ptr %9, align 4
  %140 = sitofp i32 %139 to double
  store double %140, ptr @sc, align 8
  %141 = load double, ptr @sa, align 8
  store double %141, ptr %2, align 8
  store double 0.000000e+00, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  %142 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %143 = load i32, ptr %9, align 4
  %144 = load double, ptr @two, align 8
  %.promoted48 = load double, ptr %1, align 8
  %sa.promoted50 = load double, ptr @sa, align 8
  %.promoted51 = load double, ptr %2, align 8
  %.promoted53 = load double, ptr %5, align 8
  %.promoted55 = load double, ptr %3, align 8
  %.promoted57 = load double, ptr %4, align 8
  br label %145

145:                                              ; preds = %162, %138
  %146 = phi double [ %.promoted57, %138 ], [ %161, %162 ]
  %147 = phi double [ %.promoted55, %138 ], [ %159, %162 ]
  %148 = phi double [ %.promoted53, %138 ], [ %157, %162 ]
  %149 = phi double [ %.promoted51, %138 ], [ %155, %162 ]
  %150 = phi double [ %sa.promoted50, %138 ], [ %154, %162 ]
  %151 = phi double [ %.promoted48, %138 ], [ %153, %162 ]
  %storemerge8 = phi i32 [ 1, %138 ], [ %163, %162 ]
  %.not9 = icmp sgt i32 %storemerge8, %143
  br i1 %.not9, label %164, label %152

152:                                              ; preds = %145
  %153 = fneg double %151
  %154 = fsub double %150, %151
  store double %154, ptr @sa, align 8
  %155 = fadd double %149, %144
  %156 = fsub double %153, %155
  %157 = fadd double %148, %156
  %158 = fneg double %153
  %159 = call double @llvm.fmuladd.f64(double %158, double %155, double %147)
  %160 = fdiv double %153, %155
  %161 = fadd double %146, %160
  br label %162

162:                                              ; preds = %152
  %163 = add nsw i32 %storemerge8, 1
  br label %145, !llvm.loop !12

164:                                              ; preds = %145
  %.lcssa58 = phi double [ %146, %145 ]
  %.lcssa56 = phi double [ %147, %145 ]
  %.lcssa54 = phi double [ %148, %145 ]
  %.lcssa52 = phi double [ %149, %145 ]
  %.lcssa49 = phi double [ %151, %145 ]
  %storemerge8.lcssa = phi i32 [ %storemerge8, %145 ]
  store i32 %storemerge8.lcssa, ptr %8, align 4
  store double %.lcssa49, ptr %1, align 8
  store double %.lcssa52, ptr %2, align 8
  store double %.lcssa54, ptr %5, align 8
  store double %.lcssa56, ptr %3, align 8
  store double %.lcssa58, ptr %4, align 8
  %165 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %166 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %167 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %168 = fmul double %166, %167
  store double %168, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %169 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %170 = fsub double %168, %169
  %171 = fdiv double %170, 7.000000e+00
  store double %171, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %172 = load double, ptr @sa, align 8
  %173 = load double, ptr %5, align 8
  %174 = fmul double %172, %173
  %175 = load double, ptr @sc, align 8
  %176 = fdiv double %174, %175
  %177 = fptosi double %176 to i32
  store i32 %177, ptr %9, align 4
  %178 = load double, ptr @four, align 8
  %179 = load double, ptr %4, align 8
  %180 = fmul double %178, %179
  %181 = load double, ptr @five, align 8
  %182 = fdiv double %180, %181
  store double %182, ptr @sa, align 8
  %183 = load double, ptr %3, align 8
  %184 = fdiv double %181, %183
  %185 = fadd double %182, %184
  store double %185, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %186 = fmul double %183, %183
  %187 = fmul double %186, %183
  %188 = fdiv double 3.125000e+01, %187
  %189 = fsub double %185, %188
  store double %189, ptr @piprg, align 8
  %190 = load double, ptr @piref, align 8
  %191 = fsub double %189, %190
  store double %191, ptr @pierr, align 8
  %192 = load double, ptr @one, align 8
  %193 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %194 = fdiv double %192, %193
  store double %194, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %195 = fmul double %191, 1.000000e-30
  %196 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %197 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %198 = fsub double %196, %197
  %199 = fmul double %198, 1.000000e-30
  %200 = fmul double %194, 1.000000e-30
  %201 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %195, double noundef %199, double noundef %200) #4
  %202 = load double, ptr @piref, align 8
  %203 = load double, ptr @three, align 8
  %204 = load i32, ptr %9, align 4
  %205 = sitofp i32 %204 to double
  %206 = fmul double %203, %205
  %207 = fdiv double %202, %206
  store double %207, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %208 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %209 = load i32, ptr %9, align 4
  %210 = load double, ptr @one, align 8
  %211 = load double, ptr %5, align 8
  %212 = load double, ptr @A6, align 8
  %213 = load double, ptr @A5, align 8
  %214 = fneg double %213
  %215 = load double, ptr @A4, align 8
  %216 = load double, ptr @A3, align 8
  %217 = fneg double %216
  %218 = load double, ptr @A2, align 8
  %219 = load double, ptr @A1, align 8
  %220 = load double, ptr @one, align 8
  %.promoted60 = load double, ptr %3, align 8
  %.promoted62 = load double, ptr %2, align 1
  %.promoted64 = load double, ptr %4, align 8
  %.promoted66 = load double, ptr %1, align 8
  br label %221

221:                                              ; preds = %237, %164
  %222 = phi double [ %.promoted66, %164 ], [ %236, %237 ]
  %223 = phi double [ %.promoted64, %164 ], [ %229, %237 ]
  %224 = phi double [ %.promoted62, %164 ], [ %228, %237 ]
  %225 = phi double [ %.promoted60, %164 ], [ %227, %237 ]
  %storemerge10 = phi i32 [ 1, %164 ], [ %238, %237 ]
  %.not11.not = icmp slt i32 %storemerge10, %209
  br i1 %.not11.not, label %226, label %239

226:                                              ; preds = %221
  %227 = fadd double %225, %210
  %228 = fmul double %227, %211
  %229 = fmul double %228, %228
  %230 = call double @llvm.fmuladd.f64(double %212, double %229, double %214)
  %231 = call double @llvm.fmuladd.f64(double %230, double %229, double %215)
  %232 = call double @llvm.fmuladd.f64(double %231, double %229, double %217)
  %233 = call double @llvm.fmuladd.f64(double %232, double %229, double %218)
  %234 = call double @llvm.fmuladd.f64(double %233, double %229, double %219)
  %235 = call double @llvm.fmuladd.f64(double %234, double %229, double %220)
  %236 = call double @llvm.fmuladd.f64(double %228, double %235, double %222)
  br label %237

237:                                              ; preds = %226
  %238 = add nsw i32 %storemerge10, 1
  br label %221, !llvm.loop !13

239:                                              ; preds = %221
  %.lcssa67 = phi double [ %222, %221 ]
  %.lcssa65 = phi double [ %223, %221 ]
  %.lcssa63 = phi double [ %224, %221 ]
  %.lcssa61 = phi double [ %225, %221 ]
  %storemerge10.lcssa = phi i32 [ %storemerge10, %221 ]
  store i32 %storemerge10.lcssa, ptr %8, align 4
  store double %.lcssa61, ptr %3, align 8
  store double %.lcssa63, ptr %2, align 1
  store double %.lcssa65, ptr %4, align 8
  store double %.lcssa67, ptr %1, align 8
  %240 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %241 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %242 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %243 = load double, ptr @nulltime, align 8
  %244 = fneg double %243
  %245 = call double @llvm.fmuladd.f64(double %241, double %242, double %244)
  store double %245, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %246 = load double, ptr @piref, align 8
  %247 = load double, ptr @three, align 8
  %248 = fdiv double %246, %247
  store double %248, ptr %2, align 8
  %249 = fmul double %248, %248
  store double %249, ptr %4, align 8
  %250 = load double, ptr @A6, align 8
  %251 = load double, ptr @A5, align 8
  %252 = fneg double %251
  %253 = call double @llvm.fmuladd.f64(double %250, double %249, double %252)
  %254 = load double, ptr @A4, align 8
  %255 = call double @llvm.fmuladd.f64(double %253, double %249, double %254)
  %256 = load double, ptr %4, align 8
  %257 = load double, ptr @A3, align 8
  %258 = fneg double %257
  %259 = call double @llvm.fmuladd.f64(double %255, double %256, double %258)
  %260 = load double, ptr @A2, align 8
  %261 = call double @llvm.fmuladd.f64(double %259, double %256, double %260)
  %262 = load double, ptr @A1, align 8
  %263 = call double @llvm.fmuladd.f64(double %261, double %256, double %262)
  %264 = load double, ptr %4, align 8
  %265 = load double, ptr @one, align 8
  %266 = call double @llvm.fmuladd.f64(double %263, double %264, double %265)
  %267 = fmul double %248, %266
  store double %267, ptr @sa, align 8
  %268 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %269 = fdiv double %268, 1.700000e+01
  store double %269, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %270 = load double, ptr %5, align 8
  %271 = load double, ptr @two, align 8
  %272 = load double, ptr %1, align 8
  %273 = call double @llvm.fmuladd.f64(double %271, double %272, double %267)
  %274 = fmul double %270, %273
  %275 = fdiv double %274, %271
  store double %275, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %276 = fadd double %275, -5.000000e-01
  store double %276, ptr @sc, align 8
  %277 = load double, ptr @one, align 8
  %278 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %279 = fdiv double %277, %278
  store double %279, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %280 = fmul double %276, 1.000000e-30
  %281 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %282 = fmul double %281, 1.000000e-30
  %283 = fmul double %279, 1.000000e-30
  %284 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %280, double noundef %282, double noundef %283) #4
  %285 = load double, ptr @A3, align 8
  %286 = fneg double %285
  store double %286, ptr @A3, align 8
  %287 = load double, ptr @A5, align 8
  %288 = fneg double %287
  store double %288, ptr @A5, align 8
  %289 = load double, ptr @piref, align 8
  %290 = load double, ptr @three, align 8
  %291 = load i32, ptr %9, align 4
  %292 = sitofp i32 %291 to double
  %293 = fmul double %290, %292
  %294 = fdiv double %289, %293
  store double %294, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %295 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %296 = load i32, ptr %9, align 4
  %297 = load double, ptr %5, align 8
  %298 = load double, ptr @B6, align 8
  %299 = load double, ptr @B5, align 8
  %300 = load double, ptr @B4, align 8
  %301 = load double, ptr @B3, align 8
  %302 = load double, ptr @B2, align 8
  %303 = load double, ptr @B1, align 8
  %304 = load double, ptr @one, align 8
  %.promoted69 = load double, ptr %2, align 1
  %.promoted71 = load double, ptr %4, align 1
  %.promoted73 = load double, ptr %1, align 8
  br label %305

305:                                              ; preds = %320, %239
  %306 = phi double [ %.promoted73, %239 ], [ %319, %320 ]
  %307 = phi double [ %.promoted71, %239 ], [ %312, %320 ]
  %308 = phi double [ %.promoted69, %239 ], [ %311, %320 ]
  %storemerge12 = phi i32 [ 1, %239 ], [ %321, %320 ]
  %.not13.not = icmp slt i32 %storemerge12, %296
  br i1 %.not13.not, label %309, label %322

309:                                              ; preds = %305
  %310 = sitofp i32 %storemerge12 to double
  %311 = fmul double %297, %310
  %312 = fmul double %311, %311
  %313 = call double @llvm.fmuladd.f64(double %298, double %312, double %299)
  %314 = call double @llvm.fmuladd.f64(double %312, double %313, double %300)
  %315 = call double @llvm.fmuladd.f64(double %312, double %314, double %301)
  %316 = call double @llvm.fmuladd.f64(double %312, double %315, double %302)
  %317 = call double @llvm.fmuladd.f64(double %312, double %316, double %303)
  %318 = call double @llvm.fmuladd.f64(double %312, double %317, double %306)
  %319 = fadd double %318, %304
  br label %320

320:                                              ; preds = %309
  %321 = add nsw i32 %storemerge12, 1
  br label %305, !llvm.loop !14

322:                                              ; preds = %305
  %.lcssa74 = phi double [ %306, %305 ]
  %.lcssa72 = phi double [ %307, %305 ]
  %.lcssa70 = phi double [ %308, %305 ]
  %storemerge12.lcssa = phi i32 [ %storemerge12, %305 ]
  store i32 %storemerge12.lcssa, ptr %8, align 4
  store double %.lcssa70, ptr %2, align 1
  store double %.lcssa72, ptr %4, align 1
  store double %.lcssa74, ptr %1, align 8
  %323 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %324 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %325 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %326 = load double, ptr @nulltime, align 8
  %327 = fneg double %326
  %328 = call double @llvm.fmuladd.f64(double %324, double %325, double %327)
  store double %328, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %329 = load double, ptr @piref, align 8
  %330 = load double, ptr @three, align 8
  %331 = fdiv double %329, %330
  store double %331, ptr %2, align 8
  %332 = fmul double %331, %331
  store double %332, ptr %4, align 8
  %333 = load double, ptr @B6, align 8
  %334 = load double, ptr @B5, align 8
  %335 = call double @llvm.fmuladd.f64(double %333, double %332, double %334)
  %336 = load double, ptr @B4, align 8
  %337 = call double @llvm.fmuladd.f64(double %332, double %335, double %336)
  %338 = load double, ptr @B3, align 8
  %339 = call double @llvm.fmuladd.f64(double %332, double %337, double %338)
  %340 = load double, ptr @B2, align 8
  %341 = call double @llvm.fmuladd.f64(double %332, double %339, double %340)
  %342 = load double, ptr @B1, align 8
  %343 = call double @llvm.fmuladd.f64(double %332, double %341, double %342)
  %344 = load double, ptr @one, align 8
  %345 = call double @llvm.fmuladd.f64(double %332, double %343, double %344)
  store double %345, ptr @sa, align 8
  %346 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %347 = fdiv double %346, 1.500000e+01
  store double %347, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %348 = load double, ptr %5, align 8
  %349 = load double, ptr @one, align 8
  %350 = fadd double %345, %349
  %351 = load double, ptr @two, align 8
  %352 = load double, ptr %1, align 8
  %353 = call double @llvm.fmuladd.f64(double %351, double %352, double %350)
  %354 = fmul double %348, %353
  %355 = fdiv double %354, %351
  store double %355, ptr @sa, align 8
  %356 = load double, ptr @piref, align 8
  %357 = load double, ptr @three, align 8
  %358 = fdiv double %356, %357
  store double %358, ptr %2, align 8
  %359 = fmul double %358, %358
  store double %359, ptr %4, align 8
  %360 = load double, ptr @A6, align 8
  %361 = load double, ptr @A5, align 8
  %362 = call double @llvm.fmuladd.f64(double %360, double %359, double %361)
  %363 = load double, ptr @A4, align 8
  %364 = call double @llvm.fmuladd.f64(double %362, double %359, double %363)
  %365 = load double, ptr @A3, align 8
  %366 = call double @llvm.fmuladd.f64(double %364, double %359, double %365)
  %367 = load double, ptr %4, align 8
  %368 = load double, ptr @A2, align 8
  %369 = call double @llvm.fmuladd.f64(double %366, double %367, double %368)
  %370 = load double, ptr @A1, align 8
  %371 = call double @llvm.fmuladd.f64(double %369, double %367, double %370)
  %372 = load double, ptr @A0, align 8
  %373 = call double @llvm.fmuladd.f64(double %371, double %367, double %372)
  %374 = fmul double %358, %373
  store double %374, ptr @sb, align 8
  %375 = load double, ptr @sa, align 8
  %376 = fsub double %375, %374
  store double %376, ptr @sc, align 8
  %377 = load double, ptr @one, align 8
  %378 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %379 = fdiv double %377, %378
  store double %379, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %380 = fmul double %376, 1.000000e-30
  %381 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %382 = fmul double %381, 1.000000e-30
  %383 = fmul double %379, 1.000000e-30
  %384 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %380, double noundef %382, double noundef %383) #4
  %385 = load double, ptr @piref, align 8
  %386 = load double, ptr @three, align 8
  %387 = load i32, ptr %9, align 4
  %388 = sitofp i32 %387 to double
  %389 = fmul double %386, %388
  %390 = fdiv double %385, %389
  store double %390, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %391 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %392 = load i32, ptr %9, align 4
  %393 = load double, ptr %5, align 8
  %394 = load double, ptr @A6, align 8
  %395 = load double, ptr @A5, align 8
  %396 = load double, ptr @A4, align 8
  %397 = load double, ptr @A3, align 8
  %398 = load double, ptr @A2, align 8
  %399 = load double, ptr @A1, align 8
  %400 = load double, ptr @one, align 8
  %401 = load double, ptr @B6, align 8
  %402 = load double, ptr @B5, align 8
  %403 = load double, ptr @B4, align 8
  %404 = load double, ptr @B3, align 8
  %405 = load double, ptr @B2, align 8
  %406 = load double, ptr @B1, align 8
  %407 = load double, ptr @one, align 8
  %.promoted76 = load double, ptr %2, align 1
  %.promoted78 = load double, ptr %4, align 8
  %.promoted80 = load double, ptr %3, align 1
  %.promoted82 = load double, ptr %1, align 8
  br label %408

408:                                              ; preds = %432, %322
  %409 = phi double [ %.promoted82, %322 ], [ %431, %432 ]
  %410 = phi double [ %.promoted80, %322 ], [ %423, %432 ]
  %411 = phi double [ %.promoted78, %322 ], [ %416, %432 ]
  %412 = phi double [ %.promoted76, %322 ], [ %415, %432 ]
  %storemerge14 = phi i32 [ 1, %322 ], [ %433, %432 ]
  %.not15.not = icmp slt i32 %storemerge14, %392
  br i1 %.not15.not, label %413, label %434

413:                                              ; preds = %408
  %414 = sitofp i32 %storemerge14 to double
  %415 = fmul double %393, %414
  %416 = fmul double %415, %415
  %417 = call double @llvm.fmuladd.f64(double %394, double %416, double %395)
  %418 = call double @llvm.fmuladd.f64(double %417, double %416, double %396)
  %419 = call double @llvm.fmuladd.f64(double %418, double %416, double %397)
  %420 = call double @llvm.fmuladd.f64(double %419, double %416, double %398)
  %421 = call double @llvm.fmuladd.f64(double %420, double %416, double %399)
  %422 = call double @llvm.fmuladd.f64(double %421, double %416, double %400)
  %423 = fmul double %415, %422
  %424 = call double @llvm.fmuladd.f64(double %401, double %416, double %402)
  %425 = call double @llvm.fmuladd.f64(double %416, double %424, double %403)
  %426 = call double @llvm.fmuladd.f64(double %416, double %425, double %404)
  %427 = call double @llvm.fmuladd.f64(double %416, double %426, double %405)
  %428 = call double @llvm.fmuladd.f64(double %416, double %427, double %406)
  %429 = call double @llvm.fmuladd.f64(double %416, double %428, double %407)
  %430 = fdiv double %423, %429
  %431 = fadd double %409, %430
  br label %432

432:                                              ; preds = %413
  %433 = add nsw i32 %storemerge14, 1
  br label %408, !llvm.loop !15

434:                                              ; preds = %408
  %.lcssa83 = phi double [ %409, %408 ]
  %.lcssa81 = phi double [ %410, %408 ]
  %.lcssa79 = phi double [ %411, %408 ]
  %.lcssa77 = phi double [ %412, %408 ]
  %storemerge14.lcssa = phi i32 [ %storemerge14, %408 ]
  store i32 %storemerge14.lcssa, ptr %8, align 4
  store double %.lcssa77, ptr %2, align 1
  store double %.lcssa79, ptr %4, align 8
  store double %.lcssa81, ptr %3, align 1
  store double %.lcssa83, ptr %1, align 8
  %435 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %436 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %437 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %438 = load double, ptr @nulltime, align 8
  %439 = fneg double %438
  %440 = call double @llvm.fmuladd.f64(double %436, double %437, double %439)
  store double %440, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %441 = load double, ptr @piref, align 8
  %442 = load double, ptr @three, align 8
  %443 = fdiv double %441, %442
  store double %443, ptr %2, align 8
  %444 = fmul double %443, %443
  store double %444, ptr %4, align 8
  %445 = load double, ptr @A6, align 8
  %446 = load double, ptr @A5, align 8
  %447 = call double @llvm.fmuladd.f64(double %445, double %444, double %446)
  %448 = load double, ptr @A4, align 8
  %449 = call double @llvm.fmuladd.f64(double %447, double %444, double %448)
  %450 = load double, ptr @A3, align 8
  %451 = call double @llvm.fmuladd.f64(double %449, double %444, double %450)
  %452 = load double, ptr %4, align 8
  %453 = load double, ptr @A2, align 8
  %454 = call double @llvm.fmuladd.f64(double %451, double %452, double %453)
  %455 = load double, ptr @A1, align 8
  %456 = call double @llvm.fmuladd.f64(double %454, double %452, double %455)
  %457 = load double, ptr @one, align 8
  %458 = call double @llvm.fmuladd.f64(double %456, double %452, double %457)
  %459 = fmul double %443, %458
  store double %459, ptr @sa, align 8
  %460 = load double, ptr %4, align 8
  %461 = load double, ptr @B6, align 8
  %462 = load double, ptr @B5, align 8
  %463 = call double @llvm.fmuladd.f64(double %461, double %460, double %462)
  %464 = load double, ptr @B4, align 8
  %465 = call double @llvm.fmuladd.f64(double %460, double %463, double %464)
  %466 = load double, ptr @B3, align 8
  %467 = call double @llvm.fmuladd.f64(double %460, double %465, double %466)
  %468 = load double, ptr @B2, align 8
  %469 = call double @llvm.fmuladd.f64(double %460, double %467, double %468)
  %470 = load double, ptr @B1, align 8
  %471 = call double @llvm.fmuladd.f64(double %460, double %469, double %470)
  %472 = load double, ptr @one, align 8
  %473 = call double @llvm.fmuladd.f64(double %460, double %471, double %472)
  store double %473, ptr @sb, align 8
  %474 = load double, ptr @sa, align 8
  %475 = fdiv double %474, %473
  store double %475, ptr @sa, align 8
  %476 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %477 = fdiv double %476, 2.900000e+01
  store double %477, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %478 = load double, ptr %5, align 8
  %479 = load double, ptr @two, align 8
  %480 = load double, ptr %1, align 8
  %481 = call double @llvm.fmuladd.f64(double %479, double %480, double %475)
  %482 = fmul double %478, %481
  %483 = fdiv double %482, %479
  store double %483, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %484 = fadd double %483, f0xBFE62E42FEFA39EF
  store double %484, ptr @sc, align 8
  %485 = load double, ptr @one, align 8
  %486 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %487 = fdiv double %485, %486
  store double %487, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %488 = fmul double %484, 1.000000e-30
  %489 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %490 = fmul double %489, 1.000000e-30
  %491 = fmul double %487, 1.000000e-30
  %492 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %488, double noundef %490, double noundef %491) #4
  %493 = load double, ptr @piref, align 8
  %494 = load double, ptr @four, align 8
  %495 = load i32, ptr %9, align 4
  %496 = sitofp i32 %495 to double
  %497 = fmul double %494, %496
  %498 = fdiv double %493, %497
  store double %498, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %499 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %500 = load i32, ptr %9, align 4
  %501 = load double, ptr %5, align 8
  %502 = load double, ptr @A6, align 8
  %503 = load double, ptr @A5, align 8
  %504 = load double, ptr @A4, align 8
  %505 = load double, ptr @A3, align 8
  %506 = load double, ptr @A2, align 8
  %507 = load double, ptr @A1, align 8
  %508 = load double, ptr @one, align 8
  %509 = load double, ptr @B6, align 8
  %510 = load double, ptr @B5, align 8
  %511 = load double, ptr @B4, align 8
  %512 = load double, ptr @B3, align 8
  %513 = load double, ptr @B2, align 8
  %514 = load double, ptr @B1, align 8
  %515 = load double, ptr @one, align 8
  %.promoted85 = load double, ptr %2, align 1
  %.promoted87 = load double, ptr %4, align 8
  %.promoted89 = load double, ptr %3, align 1
  %.promoted91 = load double, ptr %1, align 8
  br label %516

516:                                              ; preds = %539, %434
  %517 = phi double [ %.promoted91, %434 ], [ %538, %539 ]
  %518 = phi double [ %.promoted89, %434 ], [ %531, %539 ]
  %519 = phi double [ %.promoted87, %434 ], [ %524, %539 ]
  %520 = phi double [ %.promoted85, %434 ], [ %523, %539 ]
  %storemerge16 = phi i32 [ 1, %434 ], [ %540, %539 ]
  %.not17.not = icmp slt i32 %storemerge16, %500
  br i1 %.not17.not, label %521, label %541

521:                                              ; preds = %516
  %522 = sitofp i32 %storemerge16 to double
  %523 = fmul double %501, %522
  %524 = fmul double %523, %523
  %525 = call double @llvm.fmuladd.f64(double %502, double %524, double %503)
  %526 = call double @llvm.fmuladd.f64(double %525, double %524, double %504)
  %527 = call double @llvm.fmuladd.f64(double %526, double %524, double %505)
  %528 = call double @llvm.fmuladd.f64(double %527, double %524, double %506)
  %529 = call double @llvm.fmuladd.f64(double %528, double %524, double %507)
  %530 = call double @llvm.fmuladd.f64(double %529, double %524, double %508)
  %531 = fmul double %523, %530
  %532 = call double @llvm.fmuladd.f64(double %509, double %524, double %510)
  %533 = call double @llvm.fmuladd.f64(double %524, double %532, double %511)
  %534 = call double @llvm.fmuladd.f64(double %524, double %533, double %512)
  %535 = call double @llvm.fmuladd.f64(double %524, double %534, double %513)
  %536 = call double @llvm.fmuladd.f64(double %524, double %535, double %514)
  %537 = call double @llvm.fmuladd.f64(double %524, double %536, double %515)
  %538 = call double @llvm.fmuladd.f64(double %531, double %537, double %517)
  br label %539

539:                                              ; preds = %521
  %540 = add nsw i32 %storemerge16, 1
  br label %516, !llvm.loop !16

541:                                              ; preds = %516
  %.lcssa92 = phi double [ %517, %516 ]
  %.lcssa90 = phi double [ %518, %516 ]
  %.lcssa88 = phi double [ %519, %516 ]
  %.lcssa86 = phi double [ %520, %516 ]
  %storemerge16.lcssa = phi i32 [ %storemerge16, %516 ]
  store i32 %storemerge16.lcssa, ptr %8, align 4
  store double %.lcssa86, ptr %2, align 1
  store double %.lcssa88, ptr %4, align 8
  store double %.lcssa90, ptr %3, align 1
  store double %.lcssa92, ptr %1, align 8
  %542 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %543 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %544 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %545 = load double, ptr @nulltime, align 8
  %546 = fneg double %545
  %547 = call double @llvm.fmuladd.f64(double %543, double %544, double %546)
  store double %547, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %548 = load double, ptr @piref, align 8
  %549 = load double, ptr @four, align 8
  %550 = fdiv double %548, %549
  store double %550, ptr %2, align 8
  %551 = fmul double %550, %550
  store double %551, ptr %4, align 8
  %552 = load double, ptr @A6, align 8
  %553 = load double, ptr @A5, align 8
  %554 = call double @llvm.fmuladd.f64(double %552, double %551, double %553)
  %555 = load double, ptr @A4, align 8
  %556 = call double @llvm.fmuladd.f64(double %554, double %551, double %555)
  %557 = load double, ptr @A3, align 8
  %558 = call double @llvm.fmuladd.f64(double %556, double %551, double %557)
  %559 = load double, ptr %4, align 8
  %560 = load double, ptr @A2, align 8
  %561 = call double @llvm.fmuladd.f64(double %558, double %559, double %560)
  %562 = load double, ptr @A1, align 8
  %563 = call double @llvm.fmuladd.f64(double %561, double %559, double %562)
  %564 = load double, ptr @one, align 8
  %565 = call double @llvm.fmuladd.f64(double %563, double %559, double %564)
  %566 = fmul double %550, %565
  store double %566, ptr @sa, align 8
  %567 = load double, ptr %4, align 8
  %568 = load double, ptr @B6, align 8
  %569 = load double, ptr @B5, align 8
  %570 = call double @llvm.fmuladd.f64(double %568, double %567, double %569)
  %571 = load double, ptr @B4, align 8
  %572 = call double @llvm.fmuladd.f64(double %567, double %570, double %571)
  %573 = load double, ptr @B3, align 8
  %574 = call double @llvm.fmuladd.f64(double %567, double %572, double %573)
  %575 = load double, ptr @B2, align 8
  %576 = call double @llvm.fmuladd.f64(double %567, double %574, double %575)
  %577 = load double, ptr @B1, align 8
  %578 = call double @llvm.fmuladd.f64(double %567, double %576, double %577)
  %579 = load double, ptr @one, align 8
  %580 = call double @llvm.fmuladd.f64(double %567, double %578, double %579)
  store double %580, ptr @sb, align 8
  %581 = load double, ptr @sa, align 8
  %582 = fmul double %581, %580
  store double %582, ptr @sa, align 8
  %583 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %584 = fdiv double %583, 2.900000e+01
  store double %584, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %585 = load double, ptr %5, align 8
  %586 = load double, ptr @two, align 8
  %587 = load double, ptr %1, align 8
  %588 = call double @llvm.fmuladd.f64(double %586, double %587, double %582)
  %589 = fmul double %585, %588
  %590 = fdiv double %589, %586
  store double %590, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %591 = fadd double %590, -2.500000e-01
  store double %591, ptr @sc, align 8
  %592 = load double, ptr @one, align 8
  %593 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %594 = fdiv double %592, %593
  store double %594, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %595 = fmul double %591, 1.000000e-30
  %596 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %597 = fmul double %596, 1.000000e-30
  %598 = fmul double %594, 1.000000e-30
  %599 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %595, double noundef %597, double noundef %598) #4
  store double 0.000000e+00, ptr %1, align 8
  %600 = load double, ptr @one, align 8
  store double %600, ptr %4, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %601 = load i32, ptr %9, align 4
  %602 = sitofp i32 %601 to double
  %603 = fdiv double f0x40599541F7F192A4, %602
  store double %603, ptr %3, align 8
  %604 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %605 = load i32, ptr %9, align 4
  %606 = load double, ptr %3, align 8
  %607 = load double, ptr %4, align 8
  %608 = load double, ptr %4, align 8
  %.promoted94 = load double, ptr %5, align 8
  %.promoted96 = load double, ptr %2, align 8
  %.promoted98 = load double, ptr %1, align 8
  br label %609

609:                                              ; preds = %626, %541
  %610 = phi double [ %.promoted98, %541 ], [ %625, %626 ]
  %611 = phi double [ %.promoted96, %541 ], [ %616, %626 ]
  %612 = phi double [ %.promoted94, %541 ], [ %615, %626 ]
  %storemerge18 = phi i32 [ 1, %541 ], [ %627, %626 ]
  %.not19.not = icmp slt i32 %storemerge18, %605
  br i1 %.not19.not, label %613, label %628

613:                                              ; preds = %609
  %614 = sitofp i32 %storemerge18 to double
  %615 = fmul double %606, %614
  %616 = fmul double %615, %615
  %617 = fadd double %615, %607
  %618 = fdiv double %607, %617
  %619 = fsub double %610, %618
  %620 = fadd double %616, %607
  %621 = fdiv double %615, %620
  %622 = fsub double %619, %621
  %623 = call double @llvm.fmuladd.f64(double %615, double %616, double %608)
  %624 = fdiv double %616, %623
  %625 = fsub double %622, %624
  br label %626

626:                                              ; preds = %613
  %627 = add nsw i32 %storemerge18, 1
  br label %609, !llvm.loop !17

628:                                              ; preds = %609
  %.lcssa99 = phi double [ %610, %609 ]
  %.lcssa97 = phi double [ %611, %609 ]
  %.lcssa95 = phi double [ %612, %609 ]
  %storemerge18.lcssa = phi i32 [ %storemerge18, %609 ]
  store i32 %storemerge18.lcssa, ptr %8, align 4
  store double %.lcssa95, ptr %5, align 8
  store double %.lcssa97, ptr %2, align 8
  store double %.lcssa99, ptr %1, align 8
  %629 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %630 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %631 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %632 = load double, ptr @nulltime, align 8
  %633 = fneg double %632
  %634 = call double @llvm.fmuladd.f64(double %630, double %631, double %633)
  store double %634, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %635 = fdiv double %634, 1.200000e+01
  store double %635, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %636 = load double, ptr @sa, align 8
  store double %636, ptr %5, align 8
  %637 = fmul double %636, %636
  store double %637, ptr %2, align 8
  %638 = load double, ptr %4, align 8
  %639 = fneg double %638
  %640 = fadd double %636, %638
  %641 = fdiv double %638, %640
  %642 = fsub double %639, %641
  %643 = load double, ptr %5, align 8
  %644 = load double, ptr %2, align 8
  %645 = load double, ptr %4, align 8
  %646 = fadd double %644, %645
  %647 = fdiv double %643, %646
  %648 = fsub double %642, %647
  %649 = call double @llvm.fmuladd.f64(double %643, double %644, double %645)
  %650 = fdiv double %644, %649
  %651 = fsub double %648, %650
  store double %651, ptr @sa, align 8
  %652 = load double, ptr %3, align 8
  %653 = fmul double %652, 1.800000e+01
  %654 = load double, ptr @two, align 8
  %655 = load double, ptr %1, align 8
  %656 = call double @llvm.fmuladd.f64(double %654, double %655, double %651)
  %657 = fmul double %653, %656
  store double %657, ptr @sa, align 8
  %658 = fptosi double %657 to i32
  %659 = mul nsw i32 %658, -2000
  store i32 %659, ptr %9, align 4
  %660 = sitofp i32 %659 to double
  %661 = load double, ptr @scale, align 8
  %662 = fdiv double %660, %661
  %663 = fptosi double %662 to i32
  store i32 %663, ptr %9, align 4
  %664 = load double, ptr @sa, align 8
  %665 = fadd double %664, 5.002000e+02
  store double %665, ptr @sc, align 8
  %666 = load double, ptr @one, align 8
  %667 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %668 = fdiv double %666, %667
  store double %668, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %669 = fmul double %665, 1.000000e-30
  %670 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %671 = fmul double %670, 1.000000e-30
  %672 = fmul double %668, 1.000000e-30
  %673 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %669, double noundef %671, double noundef %672) #4
  %674 = load double, ptr @piref, align 8
  %675 = load double, ptr @three, align 8
  %676 = load i32, ptr %9, align 4
  %677 = sitofp i32 %676 to double
  %678 = fmul double %675, %677
  %679 = fdiv double %674, %678
  store double %679, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %680 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %681 = load i32, ptr %9, align 4
  %682 = load double, ptr %5, align 8
  %683 = load double, ptr @B6, align 8
  %684 = load double, ptr @B5, align 8
  %685 = load double, ptr @B4, align 8
  %686 = load double, ptr @B3, align 8
  %687 = load double, ptr @B2, align 8
  %688 = load double, ptr @B1, align 8
  %689 = load double, ptr @one, align 8
  %690 = load double, ptr @A6, align 8
  %691 = load double, ptr @A5, align 8
  %692 = load double, ptr @A4, align 8
  %693 = load double, ptr @A3, align 8
  %694 = load double, ptr @A2, align 8
  %695 = load double, ptr @A1, align 8
  %696 = load double, ptr @one, align 8
  %.promoted101 = load double, ptr %2, align 8
  %.promoted103 = load double, ptr %4, align 8
  %.promoted105 = load double, ptr %3, align 1
  %.promoted107 = load double, ptr %1, align 8
  br label %697

697:                                              ; preds = %721, %628
  %698 = phi double [ %.promoted107, %628 ], [ %720, %721 ]
  %699 = phi double [ %.promoted105, %628 ], [ %711, %721 ]
  %700 = phi double [ %.promoted103, %628 ], [ %705, %721 ]
  %701 = phi double [ %.promoted101, %628 ], [ %704, %721 ]
  %storemerge20 = phi i32 [ 1, %628 ], [ %722, %721 ]
  %.not21.not = icmp slt i32 %storemerge20, %681
  br i1 %.not21.not, label %702, label %723

702:                                              ; preds = %697
  %703 = sitofp i32 %storemerge20 to double
  %704 = fmul double %682, %703
  %705 = fmul double %704, %704
  %706 = call double @llvm.fmuladd.f64(double %683, double %705, double %684)
  %707 = call double @llvm.fmuladd.f64(double %705, double %706, double %685)
  %708 = call double @llvm.fmuladd.f64(double %705, double %707, double %686)
  %709 = call double @llvm.fmuladd.f64(double %705, double %708, double %687)
  %710 = call double @llvm.fmuladd.f64(double %705, double %709, double %688)
  %711 = call double @llvm.fmuladd.f64(double %705, double %710, double %689)
  %712 = fmul double %711, %711
  %713 = fmul double %712, %704
  %714 = call double @llvm.fmuladd.f64(double %690, double %705, double %691)
  %715 = call double @llvm.fmuladd.f64(double %714, double %705, double %692)
  %716 = call double @llvm.fmuladd.f64(double %715, double %705, double %693)
  %717 = call double @llvm.fmuladd.f64(double %716, double %705, double %694)
  %718 = call double @llvm.fmuladd.f64(double %717, double %705, double %695)
  %719 = call double @llvm.fmuladd.f64(double %718, double %705, double %696)
  %720 = call double @llvm.fmuladd.f64(double %713, double %719, double %698)
  br label %721

721:                                              ; preds = %702
  %722 = add nsw i32 %storemerge20, 1
  br label %697, !llvm.loop !18

723:                                              ; preds = %697
  %.lcssa108 = phi double [ %698, %697 ]
  %.lcssa106 = phi double [ %699, %697 ]
  %.lcssa104 = phi double [ %700, %697 ]
  %.lcssa102 = phi double [ %701, %697 ]
  %storemerge20.lcssa = phi i32 [ %storemerge20, %697 ]
  store i32 %storemerge20.lcssa, ptr %8, align 4
  store double %.lcssa102, ptr %2, align 8
  store double %.lcssa104, ptr %4, align 8
  store double %.lcssa106, ptr %3, align 1
  store double %.lcssa108, ptr %1, align 8
  %724 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %725 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %726 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %727 = load double, ptr @nulltime, align 8
  %728 = fneg double %727
  %729 = call double @llvm.fmuladd.f64(double %725, double %726, double %728)
  store double %729, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %730 = load double, ptr @piref, align 8
  %731 = load double, ptr @three, align 8
  %732 = fdiv double %730, %731
  store double %732, ptr %2, align 8
  %733 = fmul double %732, %732
  store double %733, ptr %4, align 8
  %734 = load double, ptr @A6, align 8
  %735 = load double, ptr @A5, align 8
  %736 = call double @llvm.fmuladd.f64(double %734, double %733, double %735)
  %737 = load double, ptr @A4, align 8
  %738 = call double @llvm.fmuladd.f64(double %736, double %733, double %737)
  %739 = load double, ptr @A3, align 8
  %740 = call double @llvm.fmuladd.f64(double %738, double %733, double %739)
  %741 = load double, ptr %4, align 8
  %742 = load double, ptr @A2, align 8
  %743 = call double @llvm.fmuladd.f64(double %740, double %741, double %742)
  %744 = load double, ptr @A1, align 8
  %745 = call double @llvm.fmuladd.f64(double %743, double %741, double %744)
  %746 = load double, ptr @one, align 8
  %747 = call double @llvm.fmuladd.f64(double %745, double %741, double %746)
  %748 = fmul double %732, %747
  store double %748, ptr @sa, align 8
  %749 = load double, ptr %4, align 8
  %750 = load double, ptr @B6, align 8
  %751 = load double, ptr @B5, align 8
  %752 = call double @llvm.fmuladd.f64(double %750, double %749, double %751)
  %753 = load double, ptr @B4, align 8
  %754 = call double @llvm.fmuladd.f64(double %749, double %752, double %753)
  %755 = load double, ptr @B3, align 8
  %756 = call double @llvm.fmuladd.f64(double %749, double %754, double %755)
  %757 = load double, ptr @B2, align 8
  %758 = call double @llvm.fmuladd.f64(double %749, double %756, double %757)
  %759 = load double, ptr @B1, align 8
  %760 = call double @llvm.fmuladd.f64(double %749, double %758, double %759)
  %761 = load double, ptr @one, align 8
  %762 = call double @llvm.fmuladd.f64(double %749, double %760, double %761)
  store double %762, ptr @sb, align 8
  %763 = load double, ptr @sa, align 8
  %764 = fmul double %763, %762
  %765 = fmul double %764, %762
  store double %765, ptr @sa, align 8
  %766 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %767 = fdiv double %766, 3.000000e+01
  store double %767, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %768 = load double, ptr %5, align 8
  %769 = load double, ptr @two, align 8
  %770 = load double, ptr %1, align 8
  %771 = call double @llvm.fmuladd.f64(double %769, double %770, double %765)
  %772 = fmul double %768, %771
  %773 = fdiv double %772, %769
  store double %773, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %774 = fadd double %773, f0xBFD2AAAAAAAAAAAB
  store double %774, ptr @sc, align 8
  %775 = load double, ptr @one, align 8
  %776 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %777 = fdiv double %775, %776
  store double %777, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %778 = fmul double %774, 1.000000e-30
  %779 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %780 = fmul double %779, 1.000000e-30
  %781 = fmul double %777, 1.000000e-30
  %782 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %778, double noundef %780, double noundef %781) #4
  %783 = load double, ptr @five, align 8
  %784 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %785 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %786 = fsub double %784, %785
  %787 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %788 = call double @llvm.fmuladd.f64(double %783, double %786, double %787)
  %789 = fdiv double %788, 5.200000e+01
  store double %789, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %790 = load double, ptr @one, align 8
  %791 = fdiv double %790, %789
  store double %791, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %792 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %793 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %794 = fadd double %792, %793
  %795 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %796 = fadd double %794, %795
  %797 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %798 = fadd double %796, %797
  %799 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %800 = fadd double %798, %799
  store double %800, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %801 = load double, ptr @four, align 8
  %802 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %803 = call double @llvm.fmuladd.f64(double %801, double %802, double %800)
  %804 = fdiv double %803, 1.520000e+02
  store double %804, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %805 = load double, ptr @one, align 8
  %806 = fdiv double %805, %804
  store double %806, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %807 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %808 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %809 = fadd double %807, %808
  %810 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %811 = fadd double %809, %810
  %812 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %813 = fadd double %811, %812
  %814 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %815 = fadd double %813, %814
  store double %815, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %816 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %817 = fadd double %815, %816
  %818 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %819 = fadd double %817, %818
  %820 = fdiv double %819, 1.460000e+02
  store double %820, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %821 = load double, ptr @one, align 8
  %822 = fdiv double %821, %820
  store double %822, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %823 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %824 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %825 = fadd double %823, %824
  %826 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %827 = fadd double %825, %826
  %828 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %829 = fadd double %827, %828
  %830 = fdiv double %829, 9.100000e+01
  store double %830, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %831 = load double, ptr @one, align 8
  %832 = fdiv double %831, %830
  store double %832, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar22 = call i32 @putchar(i32 10)
  %833 = load i32, ptr %9, align 4
  %834 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %833) #4
  %835 = load double, ptr @nulltime, align 8
  %836 = fmul double %835, 1.000000e-30
  %837 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %836) #4
  %838 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %839 = fmul double %838, 1.000000e-30
  %840 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %839) #4
  %841 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %842 = fmul double %841, 1.000000e-30
  %843 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %842) #4
  %844 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %845 = fmul double %844, 1.000000e-30
  %846 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %845) #4
  %847 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %848 = fmul double %847, 1.000000e-30
  %849 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %848) #4
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
