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
  %puts92 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  %puts93 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  %11 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %12 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %13 = load i32, ptr %6, align 4
  store i32 %13, ptr %10, align 4
  store double 0.000000e+00, ptr @sa, align 8
  %14 = load i32, ptr %7, align 4
  %.promoted10 = load double, ptr %5, align 8
  %.promoted13 = load double, ptr %1, align 8
  %.promoted15 = load double, ptr %3, align 8
  %.promoted17 = load i32, ptr %8, align 4
  %.promoted = load double, ptr %2, align 8
  br label %15

15:                                               ; preds = %54, %0
  %.lcssa419 = phi double [ %34, %54 ], [ %.promoted, %0 ]
  %.lcssa18 = phi i32 [ %36, %54 ], [ %.promoted17, %0 ]
  %.lcssa216 = phi double [ %35, %54 ], [ %.promoted15, %0 ]
  %.lcssa614 = phi double [ %33, %54 ], [ %.promoted13, %0 ]
  %16 = phi double [ %25, %54 ], [ %.promoted10, %0 ]
  %17 = phi i32 [ %22, %54 ], [ %13, %0 ]
  %18 = load double, ptr @sa, align 8
  %19 = load double, ptr @TLimit, align 8
  %20 = fcmp olt double %18, %19
  br i1 %20, label %21, label %.loopexit

21:                                               ; preds = %15
  %22 = shl nsw i32 %17, 1
  %23 = load double, ptr @one, align 8
  %24 = sitofp i32 %22 to double
  %25 = fdiv double %23, %24
  store double %23, ptr %4, align 8
  %26 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %27 = load double, ptr @D1, align 8
  %28 = load double, ptr @D2, align 8
  %29 = load double, ptr @D3, align 8
  %30 = load double, ptr @E2, align 8
  %31 = load double, ptr @E3, align 8
  br label %32

32:                                               ; preds = %38, %21
  %33 = phi double [ %47, %38 ], [ 0.000000e+00, %21 ]
  %34 = phi double [ %40, %38 ], [ %.lcssa419, %21 ]
  %35 = phi double [ %39, %38 ], [ 0.000000e+00, %21 ]
  %36 = phi i32 [ %48, %38 ], [ 1, %21 ]
  %.not.not = icmp slt i32 %36, %22
  br i1 %.not.not, label %37, label %49

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37
  %39 = fadd double %35, %23
  %40 = fmul double %39, %25
  %41 = call double @llvm.fmuladd.f64(double %40, double %29, double %28)
  %42 = call double @llvm.fmuladd.f64(double %40, double %41, double %27)
  %43 = call double @llvm.fmuladd.f64(double %40, double %31, double %30)
  %44 = call double @llvm.fmuladd.f64(double %40, double %43, double %27)
  %45 = call double @llvm.fmuladd.f64(double %40, double %44, double %23)
  %46 = fdiv double %42, %45
  %47 = fadd double %33, %46
  %48 = add nuw nsw i32 %36, 1
  br label %32, !llvm.loop !7

49:                                               ; preds = %32
  %50 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %51 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %51, ptr @sa, align 8
  %52 = icmp eq i32 %22, %14
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %55

54:                                               ; preds = %49
  br label %15, !llvm.loop !9

.loopexit:                                        ; preds = %15
  br label %55

55:                                               ; preds = %.loopexit, %53
  %storemerge98 = phi i32 [ %17, %.loopexit ], [ %22, %53 ]
  %storemerge97 = phi double [ %16, %.loopexit ], [ %25, %53 ]
  %storemerge96 = phi double [ %.lcssa614, %.loopexit ], [ %33, %53 ]
  %storemerge95 = phi double [ %.lcssa216, %.loopexit ], [ %35, %53 ]
  %storemerge94 = phi i32 [ %.lcssa18, %.loopexit ], [ %36, %53 ]
  %storemerge = phi double [ %.lcssa419, %.loopexit ], [ %34, %53 ]
  store i32 %storemerge98, ptr %10, align 4
  store double %storemerge97, ptr %5, align 8
  store double %storemerge96, ptr %1, align 8
  store double %storemerge95, ptr %3, align 8
  store i32 %storemerge94, ptr %8, align 4
  store double %storemerge, ptr %2, align 8
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %56 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  store i32 1, ptr %8, align 4
  %57 = load i32, ptr %10, align 4
  br label %58

58:                                               ; preds = %61, %55
  %59 = phi i32 [ %62, %61 ], [ 1, %55 ]
  %.not.not99 = icmp slt i32 %59, %57
  br i1 %.not.not99, label %60, label %63

60:                                               ; preds = %58
  br label %61

61:                                               ; preds = %60
  %62 = add nuw nsw i32 %59, 1
  br label %58, !llvm.loop !10

63:                                               ; preds = %58
  store i32 %59, ptr %8, align 4
  %64 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %65 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %66 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %67 = fmul double %65, %66
  %68 = fcmp olt double %67, 0.000000e+00
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69, %63
  %storemerge100 = phi double [ 0.000000e+00, %69 ], [ %67, %63 ]
  store double %storemerge100, ptr @nulltime, align 8
  %71 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %72 = load double, ptr @sa, align 8
  %73 = fneg double %storemerge100
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
  store i32 1, ptr %8, align 4
  %122 = load i32, ptr %9, align 4
  %.promoted24 = load double, ptr %1, align 8
  %sa.promoted = load double, ptr @sa, align 8
  br label %123

123:                                              ; preds = %129, %70
  %124 = phi double [ %128, %129 ], [ %sa.promoted, %70 ]
  %125 = phi double [ %130, %129 ], [ %.promoted24, %70 ]
  %126 = phi i32 [ %131, %129 ], [ 1, %70 ]
  %.not = icmp sgt i32 %126, %122
  br i1 %.not, label %132, label %127

127:                                              ; preds = %123
  %128 = fsub double %124, %125
  store double %128, ptr @sa, align 8
  br label %129

129:                                              ; preds = %127
  %130 = fneg double %125
  %131 = add nuw nsw i32 %126, 1
  br label %123, !llvm.loop !11

132:                                              ; preds = %123
  store i32 %126, ptr %8, align 4
  store double %125, ptr %1, align 8
  %133 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %134 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %135 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %136 = fmul double %134, %135
  %137 = fcmp olt double %136, 0.000000e+00
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  br label %139

139:                                              ; preds = %138, %132
  %storemerge101 = phi double [ 0.000000e+00, %138 ], [ %136, %132 ]
  store double %storemerge101, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %140 = load i32, ptr %9, align 4
  %141 = sitofp i32 %140 to double
  store double %141, ptr @sc, align 8
  %142 = load double, ptr @sa, align 8
  store double %142, ptr %2, align 8
  store double 0.000000e+00, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  %143 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  store i32 1, ptr %8, align 4
  %144 = load i32, ptr %9, align 4
  %145 = load double, ptr @two, align 8
  %.promoted28 = load double, ptr %1, align 8
  %sa.promoted30 = load double, ptr @sa, align 8
  %.promoted31 = load double, ptr %2, align 8
  %.promoted33 = load double, ptr %5, align 8
  %.promoted35 = load double, ptr %3, align 8
  %.promoted37 = load double, ptr %4, align 8
  br label %146

146:                                              ; preds = %159, %139
  %147 = phi double [ %158, %159 ], [ %.promoted37, %139 ]
  %148 = phi double [ %161, %159 ], [ %.promoted35, %139 ]
  %149 = phi double [ %163, %159 ], [ %.promoted33, %139 ]
  %150 = phi double [ %156, %159 ], [ %.promoted31, %139 ]
  %151 = phi double [ %155, %159 ], [ %sa.promoted30, %139 ]
  %152 = phi double [ %160, %159 ], [ %.promoted28, %139 ]
  %153 = phi i32 [ %164, %159 ], [ 1, %139 ]
  %.not102 = icmp sgt i32 %153, %144
  br i1 %.not102, label %165, label %154

154:                                              ; preds = %146
  %155 = fsub double %151, %152
  store double %155, ptr @sa, align 8
  %156 = fadd double %150, %145
  %157 = fdiv double %152, %156
  %158 = fsub double %147, %157
  store double %158, ptr %4, align 8
  br label %159

159:                                              ; preds = %154
  %160 = fneg double %152
  %161 = call double @llvm.fmuladd.f64(double %152, double %156, double %148)
  %162 = fsub double %160, %156
  %163 = fadd double %149, %162
  %164 = add nuw nsw i32 %153, 1
  br label %146, !llvm.loop !12

165:                                              ; preds = %146
  store i32 %153, ptr %8, align 4
  store double %152, ptr %1, align 8
  store double %150, ptr %2, align 8
  store double %149, ptr %5, align 8
  store double %148, ptr %3, align 8
  %166 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %167 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %168 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %169 = fmul double %167, %168
  store double %169, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %170 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %171 = fsub double %169, %170
  %172 = fdiv double %171, 7.000000e+00
  store double %172, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %173 = load double, ptr @sa, align 8
  %174 = load double, ptr %5, align 8
  %175 = fmul double %173, %174
  %176 = load double, ptr @sc, align 8
  %177 = fdiv double %175, %176
  %178 = fptosi double %177 to i32
  store i32 %178, ptr %9, align 4
  %179 = load double, ptr @four, align 8
  %180 = load double, ptr %4, align 8
  %181 = fmul double %179, %180
  %182 = load double, ptr @five, align 8
  %183 = fdiv double %181, %182
  store double %183, ptr @sa, align 8
  %184 = load double, ptr %3, align 8
  %185 = fdiv double %182, %184
  %186 = fadd double %183, %185
  store double %186, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %187 = fmul double %184, %184
  %188 = fmul double %187, %184
  %189 = fdiv double 3.125000e+01, %188
  %190 = fsub double %186, %189
  store double %190, ptr @piprg, align 8
  %191 = load double, ptr @piref, align 8
  %192 = fsub double %190, %191
  store double %192, ptr @pierr, align 8
  %193 = load double, ptr @one, align 8
  %194 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %195 = fdiv double %193, %194
  store double %195, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %196 = fmul double %192, 1.000000e-30
  %197 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %198 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %199 = fsub double %197, %198
  %200 = fmul double %199, 1.000000e-30
  %201 = fmul double %195, 1.000000e-30
  %202 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %196, double noundef %200, double noundef %201) #4
  %203 = load double, ptr @piref, align 8
  %204 = load double, ptr @three, align 8
  %205 = load i32, ptr %9, align 4
  %206 = sitofp i32 %205 to double
  %207 = fmul double %204, %206
  %208 = fdiv double %203, %207
  store double %208, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %209 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  store i32 1, ptr %8, align 4
  %210 = load i32, ptr %9, align 4
  %211 = load double, ptr @one, align 8
  %212 = load double, ptr %5, align 8
  %213 = load double, ptr @A6, align 8
  %214 = load double, ptr @A5, align 8
  %215 = fneg double %214
  %216 = load double, ptr @A4, align 8
  %217 = load double, ptr @A3, align 8
  %218 = fneg double %217
  %219 = load double, ptr @A2, align 8
  %220 = load double, ptr @A1, align 8
  %221 = load double, ptr @one, align 8
  %.promoted38 = load i32, ptr %8, align 4
  %.promoted40 = load double, ptr %3, align 8
  %.promoted42 = load double, ptr %2, align 8
  %.promoted45 = load double, ptr %1, align 8
  br label %222

222:                                              ; preds = %231, %165
  %223 = phi double [ %238, %231 ], [ %.promoted45, %165 ]
  %224 = phi double [ %229, %231 ], [ %.promoted42, %165 ]
  %225 = phi double [ %228, %231 ], [ %.promoted40, %165 ]
  %226 = phi i32 [ %239, %231 ], [ %.promoted38, %165 ]
  %.not103.not = icmp slt i32 %226, %210
  br i1 %.not103.not, label %227, label %240

227:                                              ; preds = %222
  %228 = fadd double %225, %211
  %229 = fmul double %228, %212
  %230 = fmul double %229, %229
  store double %230, ptr %4, align 8
  br label %231

231:                                              ; preds = %227
  %232 = call double @llvm.fmuladd.f64(double %213, double %230, double %215)
  %233 = call double @llvm.fmuladd.f64(double %232, double %230, double %216)
  %234 = call double @llvm.fmuladd.f64(double %233, double %230, double %218)
  %235 = call double @llvm.fmuladd.f64(double %234, double %230, double %219)
  %236 = call double @llvm.fmuladd.f64(double %235, double %230, double %220)
  %237 = call double @llvm.fmuladd.f64(double %236, double %230, double %221)
  %238 = call double @llvm.fmuladd.f64(double %229, double %237, double %223)
  %239 = add nsw i32 %226, 1
  br label %222, !llvm.loop !13

240:                                              ; preds = %222
  store i32 %226, ptr %8, align 4
  store double %225, ptr %3, align 8
  store double %224, ptr %2, align 8
  store double %223, ptr %1, align 8
  %241 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %242 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %243 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %244 = load double, ptr @nulltime, align 8
  %245 = fneg double %244
  %246 = call double @llvm.fmuladd.f64(double %242, double %243, double %245)
  store double %246, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %247 = load double, ptr @piref, align 8
  %248 = load double, ptr @three, align 8
  %249 = fdiv double %247, %248
  store double %249, ptr %2, align 8
  %250 = fmul double %249, %249
  store double %250, ptr %4, align 8
  %251 = load double, ptr @A6, align 8
  %252 = load double, ptr @A5, align 8
  %253 = fneg double %252
  %254 = call double @llvm.fmuladd.f64(double %251, double %250, double %253)
  %255 = load double, ptr @A4, align 8
  %256 = call double @llvm.fmuladd.f64(double %254, double %250, double %255)
  %257 = load double, ptr %4, align 8
  %258 = load double, ptr @A3, align 8
  %259 = fneg double %258
  %260 = call double @llvm.fmuladd.f64(double %256, double %257, double %259)
  %261 = load double, ptr @A2, align 8
  %262 = call double @llvm.fmuladd.f64(double %260, double %257, double %261)
  %263 = load double, ptr @A1, align 8
  %264 = call double @llvm.fmuladd.f64(double %262, double %257, double %263)
  %265 = load double, ptr %4, align 8
  %266 = load double, ptr @one, align 8
  %267 = call double @llvm.fmuladd.f64(double %264, double %265, double %266)
  %268 = fmul double %249, %267
  store double %268, ptr @sa, align 8
  %269 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %270 = fdiv double %269, 1.700000e+01
  store double %270, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %271 = load double, ptr %5, align 8
  %272 = load double, ptr @two, align 8
  %273 = load double, ptr %1, align 8
  %274 = call double @llvm.fmuladd.f64(double %272, double %273, double %268)
  %275 = fmul double %271, %274
  %276 = fdiv double %275, %272
  store double %276, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %277 = fadd double %276, -5.000000e-01
  store double %277, ptr @sc, align 8
  %278 = load double, ptr @one, align 8
  %279 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %280 = fdiv double %278, %279
  store double %280, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %281 = fmul double %277, 1.000000e-30
  %282 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %283 = fmul double %282, 1.000000e-30
  %284 = fmul double %280, 1.000000e-30
  %285 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %281, double noundef %283, double noundef %284) #4
  %286 = load double, ptr @A3, align 8
  %287 = fneg double %286
  store double %287, ptr @A3, align 8
  %288 = load double, ptr @A5, align 8
  %289 = fneg double %288
  store double %289, ptr @A5, align 8
  %290 = load double, ptr @piref, align 8
  %291 = load double, ptr @three, align 8
  %292 = load i32, ptr %9, align 4
  %293 = sitofp i32 %292 to double
  %294 = fmul double %291, %293
  %295 = fdiv double %290, %294
  store double %295, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %296 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  store i32 1, ptr %8, align 4
  %297 = load i32, ptr %9, align 4
  %298 = load double, ptr %5, align 8
  %299 = load double, ptr @B6, align 8
  %300 = load double, ptr @B5, align 8
  %301 = load double, ptr @B4, align 8
  %302 = load double, ptr @B3, align 8
  %303 = load double, ptr @B2, align 8
  %304 = load double, ptr @B1, align 8
  %305 = load double, ptr @one, align 8
  %.promoted47 = load i32, ptr %8, align 4
  %.promoted49 = load double, ptr %2, align 8
  %.promoted52 = load double, ptr %1, align 8
  br label %306

306:                                              ; preds = %314, %240
  %307 = phi double [ %321, %314 ], [ %.promoted52, %240 ]
  %308 = phi double [ %312, %314 ], [ %.promoted49, %240 ]
  %309 = phi i32 [ %322, %314 ], [ %.promoted47, %240 ]
  %.not104.not = icmp slt i32 %309, %297
  br i1 %.not104.not, label %310, label %323

310:                                              ; preds = %306
  %311 = sitofp i32 %309 to double
  %312 = fmul double %298, %311
  %313 = fmul double %312, %312
  store double %313, ptr %4, align 8
  br label %314

314:                                              ; preds = %310
  %315 = call double @llvm.fmuladd.f64(double %299, double %313, double %300)
  %316 = call double @llvm.fmuladd.f64(double %313, double %315, double %301)
  %317 = call double @llvm.fmuladd.f64(double %313, double %316, double %302)
  %318 = call double @llvm.fmuladd.f64(double %313, double %317, double %303)
  %319 = call double @llvm.fmuladd.f64(double %313, double %318, double %304)
  %320 = call double @llvm.fmuladd.f64(double %313, double %319, double %307)
  %321 = fadd double %320, %305
  %322 = add nsw i32 %309, 1
  br label %306, !llvm.loop !14

323:                                              ; preds = %306
  store i32 %309, ptr %8, align 4
  store double %308, ptr %2, align 8
  store double %307, ptr %1, align 8
  %324 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %325 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %326 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %327 = load double, ptr @nulltime, align 8
  %328 = fneg double %327
  %329 = call double @llvm.fmuladd.f64(double %325, double %326, double %328)
  store double %329, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %330 = load double, ptr @piref, align 8
  %331 = load double, ptr @three, align 8
  %332 = fdiv double %330, %331
  store double %332, ptr %2, align 8
  %333 = fmul double %332, %332
  store double %333, ptr %4, align 8
  %334 = load double, ptr @B6, align 8
  %335 = load double, ptr @B5, align 8
  %336 = call double @llvm.fmuladd.f64(double %334, double %333, double %335)
  %337 = load double, ptr @B4, align 8
  %338 = call double @llvm.fmuladd.f64(double %333, double %336, double %337)
  %339 = load double, ptr @B3, align 8
  %340 = call double @llvm.fmuladd.f64(double %333, double %338, double %339)
  %341 = load double, ptr @B2, align 8
  %342 = call double @llvm.fmuladd.f64(double %333, double %340, double %341)
  %343 = load double, ptr @B1, align 8
  %344 = call double @llvm.fmuladd.f64(double %333, double %342, double %343)
  %345 = load double, ptr @one, align 8
  %346 = call double @llvm.fmuladd.f64(double %333, double %344, double %345)
  store double %346, ptr @sa, align 8
  %347 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %348 = fdiv double %347, 1.500000e+01
  store double %348, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %349 = load double, ptr %5, align 8
  %350 = load double, ptr @one, align 8
  %351 = fadd double %346, %350
  %352 = load double, ptr @two, align 8
  %353 = load double, ptr %1, align 8
  %354 = call double @llvm.fmuladd.f64(double %352, double %353, double %351)
  %355 = fmul double %349, %354
  %356 = fdiv double %355, %352
  store double %356, ptr @sa, align 8
  %357 = load double, ptr @piref, align 8
  %358 = load double, ptr @three, align 8
  %359 = fdiv double %357, %358
  store double %359, ptr %2, align 8
  %360 = fmul double %359, %359
  store double %360, ptr %4, align 8
  %361 = load double, ptr @A6, align 8
  %362 = load double, ptr @A5, align 8
  %363 = call double @llvm.fmuladd.f64(double %361, double %360, double %362)
  %364 = load double, ptr @A4, align 8
  %365 = call double @llvm.fmuladd.f64(double %363, double %360, double %364)
  %366 = load double, ptr @A3, align 8
  %367 = call double @llvm.fmuladd.f64(double %365, double %360, double %366)
  %368 = load double, ptr %4, align 8
  %369 = load double, ptr @A2, align 8
  %370 = call double @llvm.fmuladd.f64(double %367, double %368, double %369)
  %371 = load double, ptr @A1, align 8
  %372 = call double @llvm.fmuladd.f64(double %370, double %368, double %371)
  %373 = load double, ptr @A0, align 8
  %374 = call double @llvm.fmuladd.f64(double %372, double %368, double %373)
  %375 = fmul double %359, %374
  store double %375, ptr @sb, align 8
  %376 = load double, ptr @sa, align 8
  %377 = fsub double %376, %375
  store double %377, ptr @sc, align 8
  %378 = load double, ptr @one, align 8
  %379 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %380 = fdiv double %378, %379
  store double %380, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %381 = fmul double %377, 1.000000e-30
  %382 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %383 = fmul double %382, 1.000000e-30
  %384 = fmul double %380, 1.000000e-30
  %385 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %381, double noundef %383, double noundef %384) #4
  %386 = load double, ptr @piref, align 8
  %387 = load double, ptr @three, align 8
  %388 = load i32, ptr %9, align 4
  %389 = sitofp i32 %388 to double
  %390 = fmul double %387, %389
  %391 = fdiv double %386, %390
  store double %391, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %392 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  store i32 1, ptr %8, align 4
  %393 = load i32, ptr %9, align 4
  %394 = load double, ptr %5, align 8
  %395 = load double, ptr @A6, align 8
  %396 = load double, ptr @A5, align 8
  %397 = load double, ptr @A4, align 8
  %398 = load double, ptr @A3, align 8
  %399 = load double, ptr @A2, align 8
  %400 = load double, ptr @A1, align 8
  %401 = load double, ptr @one, align 8
  %402 = load double, ptr @B6, align 8
  %403 = load double, ptr @B5, align 8
  %404 = load double, ptr @B4, align 8
  %405 = load double, ptr @B3, align 8
  %406 = load double, ptr @B2, align 8
  %407 = load double, ptr @B1, align 8
  %408 = load double, ptr @one, align 8
  %.promoted54 = load i32, ptr %8, align 4
  %.promoted56 = load double, ptr %2, align 8
  %.promoted59 = load double, ptr %3, align 8
  %.promoted61 = load double, ptr %1, align 8
  br label %409

409:                                              ; preds = %418, %323
  %410 = phi double [ %433, %418 ], [ %.promoted61, %323 ]
  %411 = phi double [ %425, %418 ], [ %.promoted59, %323 ]
  %412 = phi double [ %416, %418 ], [ %.promoted56, %323 ]
  %413 = phi i32 [ %434, %418 ], [ %.promoted54, %323 ]
  %.not105.not = icmp slt i32 %413, %393
  br i1 %.not105.not, label %414, label %435

414:                                              ; preds = %409
  %415 = sitofp i32 %413 to double
  %416 = fmul double %394, %415
  %417 = fmul double %416, %416
  store double %417, ptr %4, align 8
  br label %418

418:                                              ; preds = %414
  %419 = call double @llvm.fmuladd.f64(double %395, double %417, double %396)
  %420 = call double @llvm.fmuladd.f64(double %419, double %417, double %397)
  %421 = call double @llvm.fmuladd.f64(double %420, double %417, double %398)
  %422 = call double @llvm.fmuladd.f64(double %421, double %417, double %399)
  %423 = call double @llvm.fmuladd.f64(double %422, double %417, double %400)
  %424 = call double @llvm.fmuladd.f64(double %423, double %417, double %401)
  %425 = fmul double %416, %424
  %426 = call double @llvm.fmuladd.f64(double %402, double %417, double %403)
  %427 = call double @llvm.fmuladd.f64(double %417, double %426, double %404)
  %428 = call double @llvm.fmuladd.f64(double %417, double %427, double %405)
  %429 = call double @llvm.fmuladd.f64(double %417, double %428, double %406)
  %430 = call double @llvm.fmuladd.f64(double %417, double %429, double %407)
  %431 = call double @llvm.fmuladd.f64(double %417, double %430, double %408)
  %432 = fdiv double %425, %431
  %433 = fadd double %410, %432
  %434 = add nsw i32 %413, 1
  br label %409, !llvm.loop !15

435:                                              ; preds = %409
  store i32 %413, ptr %8, align 4
  store double %412, ptr %2, align 8
  store double %411, ptr %3, align 8
  store double %410, ptr %1, align 8
  %436 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %437 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %438 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %439 = load double, ptr @nulltime, align 8
  %440 = fneg double %439
  %441 = call double @llvm.fmuladd.f64(double %437, double %438, double %440)
  store double %441, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %442 = load double, ptr @piref, align 8
  %443 = load double, ptr @three, align 8
  %444 = fdiv double %442, %443
  store double %444, ptr %2, align 8
  %445 = fmul double %444, %444
  store double %445, ptr %4, align 8
  %446 = load double, ptr @A6, align 8
  %447 = load double, ptr @A5, align 8
  %448 = call double @llvm.fmuladd.f64(double %446, double %445, double %447)
  %449 = load double, ptr @A4, align 8
  %450 = call double @llvm.fmuladd.f64(double %448, double %445, double %449)
  %451 = load double, ptr @A3, align 8
  %452 = call double @llvm.fmuladd.f64(double %450, double %445, double %451)
  %453 = load double, ptr %4, align 8
  %454 = load double, ptr @A2, align 8
  %455 = call double @llvm.fmuladd.f64(double %452, double %453, double %454)
  %456 = load double, ptr @A1, align 8
  %457 = call double @llvm.fmuladd.f64(double %455, double %453, double %456)
  %458 = load double, ptr @one, align 8
  %459 = call double @llvm.fmuladd.f64(double %457, double %453, double %458)
  %460 = fmul double %444, %459
  store double %460, ptr @sa, align 8
  %461 = load double, ptr %4, align 8
  %462 = load double, ptr @B6, align 8
  %463 = load double, ptr @B5, align 8
  %464 = call double @llvm.fmuladd.f64(double %462, double %461, double %463)
  %465 = load double, ptr @B4, align 8
  %466 = call double @llvm.fmuladd.f64(double %461, double %464, double %465)
  %467 = load double, ptr @B3, align 8
  %468 = call double @llvm.fmuladd.f64(double %461, double %466, double %467)
  %469 = load double, ptr @B2, align 8
  %470 = call double @llvm.fmuladd.f64(double %461, double %468, double %469)
  %471 = load double, ptr @B1, align 8
  %472 = call double @llvm.fmuladd.f64(double %461, double %470, double %471)
  %473 = load double, ptr @one, align 8
  %474 = call double @llvm.fmuladd.f64(double %461, double %472, double %473)
  store double %474, ptr @sb, align 8
  %475 = load double, ptr @sa, align 8
  %476 = fdiv double %475, %474
  store double %476, ptr @sa, align 8
  %477 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %478 = fdiv double %477, 2.900000e+01
  store double %478, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %479 = load double, ptr %5, align 8
  %480 = load double, ptr @two, align 8
  %481 = load double, ptr %1, align 8
  %482 = call double @llvm.fmuladd.f64(double %480, double %481, double %476)
  %483 = fmul double %479, %482
  %484 = fdiv double %483, %480
  store double %484, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %485 = fadd double %484, f0xBFE62E42FEFA39EF
  store double %485, ptr @sc, align 8
  %486 = load double, ptr @one, align 8
  %487 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %488 = fdiv double %486, %487
  store double %488, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %489 = fmul double %485, 1.000000e-30
  %490 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %491 = fmul double %490, 1.000000e-30
  %492 = fmul double %488, 1.000000e-30
  %493 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %489, double noundef %491, double noundef %492) #4
  %494 = load double, ptr @piref, align 8
  %495 = load double, ptr @four, align 8
  %496 = load i32, ptr %9, align 4
  %497 = sitofp i32 %496 to double
  %498 = fmul double %495, %497
  %499 = fdiv double %494, %498
  store double %499, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %500 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  store i32 1, ptr %8, align 4
  %501 = load i32, ptr %9, align 4
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
  %.promoted63 = load i32, ptr %8, align 4
  %.promoted65 = load double, ptr %2, align 8
  %.promoted68 = load double, ptr %3, align 8
  %.promoted70 = load double, ptr %1, align 8
  %.promoted72 = load double, ptr %4, align 1
  br label %516

516:                                              ; preds = %523, %435
  %517 = phi double [ %526, %523 ], [ %.promoted72, %435 ]
  %518 = phi double [ %540, %523 ], [ %.promoted70, %435 ]
  %519 = phi double [ %533, %523 ], [ %.promoted68, %435 ]
  %520 = phi double [ %525, %523 ], [ %.promoted65, %435 ]
  %521 = phi i32 [ %541, %523 ], [ %.promoted63, %435 ]
  %.not106.not = icmp slt i32 %521, %501
  br i1 %.not106.not, label %522, label %542

522:                                              ; preds = %516
  br label %523

523:                                              ; preds = %522
  %524 = sitofp i32 %521 to double
  %525 = fmul double %499, %524
  %526 = fmul double %525, %525
  %527 = call double @llvm.fmuladd.f64(double %502, double %526, double %503)
  %528 = call double @llvm.fmuladd.f64(double %527, double %526, double %504)
  %529 = call double @llvm.fmuladd.f64(double %528, double %526, double %505)
  %530 = call double @llvm.fmuladd.f64(double %529, double %526, double %506)
  %531 = call double @llvm.fmuladd.f64(double %530, double %526, double %507)
  %532 = call double @llvm.fmuladd.f64(double %531, double %526, double %508)
  %533 = fmul double %525, %532
  %534 = call double @llvm.fmuladd.f64(double %509, double %526, double %510)
  %535 = call double @llvm.fmuladd.f64(double %526, double %534, double %511)
  %536 = call double @llvm.fmuladd.f64(double %526, double %535, double %512)
  %537 = call double @llvm.fmuladd.f64(double %526, double %536, double %513)
  %538 = call double @llvm.fmuladd.f64(double %526, double %537, double %514)
  %539 = call double @llvm.fmuladd.f64(double %526, double %538, double %515)
  %540 = call double @llvm.fmuladd.f64(double %533, double %539, double %518)
  %541 = add nsw i32 %521, 1
  br label %516, !llvm.loop !16

542:                                              ; preds = %516
  store i32 %521, ptr %8, align 4
  store double %520, ptr %2, align 8
  store double %519, ptr %3, align 8
  store double %518, ptr %1, align 8
  store double %517, ptr %4, align 1
  %543 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %544 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %545 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %546 = load double, ptr @nulltime, align 8
  %547 = fneg double %546
  %548 = call double @llvm.fmuladd.f64(double %544, double %545, double %547)
  store double %548, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %549 = load double, ptr @piref, align 8
  %550 = load double, ptr @four, align 8
  %551 = fdiv double %549, %550
  store double %551, ptr %2, align 8
  %552 = fmul double %551, %551
  store double %552, ptr %4, align 8
  %553 = load double, ptr @A6, align 8
  %554 = load double, ptr @A5, align 8
  %555 = call double @llvm.fmuladd.f64(double %553, double %552, double %554)
  %556 = load double, ptr @A4, align 8
  %557 = call double @llvm.fmuladd.f64(double %555, double %552, double %556)
  %558 = load double, ptr @A3, align 8
  %559 = call double @llvm.fmuladd.f64(double %557, double %552, double %558)
  %560 = load double, ptr %4, align 8
  %561 = load double, ptr @A2, align 8
  %562 = call double @llvm.fmuladd.f64(double %559, double %560, double %561)
  %563 = load double, ptr @A1, align 8
  %564 = call double @llvm.fmuladd.f64(double %562, double %560, double %563)
  %565 = load double, ptr @one, align 8
  %566 = call double @llvm.fmuladd.f64(double %564, double %560, double %565)
  %567 = fmul double %551, %566
  store double %567, ptr @sa, align 8
  %568 = load double, ptr %4, align 8
  %569 = load double, ptr @B6, align 8
  %570 = load double, ptr @B5, align 8
  %571 = call double @llvm.fmuladd.f64(double %569, double %568, double %570)
  %572 = load double, ptr @B4, align 8
  %573 = call double @llvm.fmuladd.f64(double %568, double %571, double %572)
  %574 = load double, ptr @B3, align 8
  %575 = call double @llvm.fmuladd.f64(double %568, double %573, double %574)
  %576 = load double, ptr @B2, align 8
  %577 = call double @llvm.fmuladd.f64(double %568, double %575, double %576)
  %578 = load double, ptr @B1, align 8
  %579 = call double @llvm.fmuladd.f64(double %568, double %577, double %578)
  %580 = load double, ptr @one, align 8
  %581 = call double @llvm.fmuladd.f64(double %568, double %579, double %580)
  store double %581, ptr @sb, align 8
  %582 = load double, ptr @sa, align 8
  %583 = fmul double %582, %581
  store double %583, ptr @sa, align 8
  %584 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %585 = fdiv double %584, 2.900000e+01
  store double %585, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %586 = load double, ptr %5, align 8
  %587 = load double, ptr @two, align 8
  %588 = load double, ptr %1, align 8
  %589 = call double @llvm.fmuladd.f64(double %587, double %588, double %583)
  %590 = fmul double %586, %589
  %591 = fdiv double %590, %587
  store double %591, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %592 = fadd double %591, -2.500000e-01
  store double %592, ptr @sc, align 8
  %593 = load double, ptr @one, align 8
  %594 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %595 = fdiv double %593, %594
  store double %595, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %596 = fmul double %592, 1.000000e-30
  %597 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %598 = fmul double %597, 1.000000e-30
  %599 = fmul double %595, 1.000000e-30
  %600 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %596, double noundef %598, double noundef %599) #4
  store double 0.000000e+00, ptr %1, align 8
  %601 = load double, ptr @one, align 8
  store double %601, ptr %4, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %602 = load i32, ptr %9, align 4
  %603 = sitofp i32 %602 to double
  %604 = fdiv double f0x40599541F7F192A4, %603
  store double %604, ptr %3, align 8
  %605 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  store i32 1, ptr %8, align 4
  %606 = load double, ptr %4, align 8
  %.promoted76 = load double, ptr %5, align 8
  %.promoted78 = load double, ptr %2, align 8
  %.promoted80 = load double, ptr %1, align 8
  br label %607

607:                                              ; preds = %613, %542
  %608 = phi double [ %625, %613 ], [ %.promoted80, %542 ]
  %609 = phi double [ %619, %613 ], [ %.promoted78, %542 ]
  %610 = phi double [ %615, %613 ], [ %.promoted76, %542 ]
  %611 = phi i32 [ %626, %613 ], [ 1, %542 ]
  %.not107.not = icmp slt i32 %611, %602
  br i1 %.not107.not, label %612, label %627

612:                                              ; preds = %607
  br label %613

613:                                              ; preds = %612
  %614 = uitofp nneg i32 %611 to double
  %615 = fmul double %604, %614
  %616 = fadd double %615, %606
  %617 = fdiv double %606, %616
  %618 = fsub double %608, %617
  %619 = fmul double %615, %615
  %620 = fadd double %619, %606
  %621 = fdiv double %615, %620
  %622 = fsub double %618, %621
  %623 = call double @llvm.fmuladd.f64(double %615, double %619, double %606)
  %624 = fdiv double %619, %623
  %625 = fsub double %622, %624
  %626 = add nuw nsw i32 %611, 1
  br label %607, !llvm.loop !17

627:                                              ; preds = %607
  store i32 %611, ptr %8, align 4
  store double %610, ptr %5, align 8
  store double %609, ptr %2, align 8
  store double %608, ptr %1, align 8
  %628 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %629 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %630 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %631 = load double, ptr @nulltime, align 8
  %632 = fneg double %631
  %633 = call double @llvm.fmuladd.f64(double %629, double %630, double %632)
  store double %633, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %634 = fdiv double %633, 1.200000e+01
  store double %634, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %635 = load double, ptr @sa, align 8
  store double %635, ptr %5, align 8
  %636 = fmul double %635, %635
  store double %636, ptr %2, align 8
  %637 = load double, ptr %4, align 8
  %638 = fneg double %637
  %639 = fadd double %635, %637
  %640 = fdiv double %637, %639
  %641 = fsub double %638, %640
  %642 = load double, ptr %5, align 8
  %643 = load double, ptr %2, align 8
  %644 = load double, ptr %4, align 8
  %645 = fadd double %643, %644
  %646 = fdiv double %642, %645
  %647 = fsub double %641, %646
  %648 = call double @llvm.fmuladd.f64(double %642, double %643, double %644)
  %649 = fdiv double %643, %648
  %650 = fsub double %647, %649
  store double %650, ptr @sa, align 8
  %651 = load double, ptr %3, align 8
  %652 = fmul double %651, 1.800000e+01
  %653 = load double, ptr @two, align 8
  %654 = load double, ptr %1, align 8
  %655 = call double @llvm.fmuladd.f64(double %653, double %654, double %650)
  %656 = fmul double %652, %655
  store double %656, ptr @sa, align 8
  %657 = fptosi double %656 to i32
  %658 = mul nsw i32 %657, -2000
  store i32 %658, ptr %9, align 4
  %659 = sitofp i32 %658 to double
  %660 = load double, ptr @scale, align 8
  %661 = fdiv double %659, %660
  %662 = fptosi double %661 to i32
  store i32 %662, ptr %9, align 4
  %663 = load double, ptr @sa, align 8
  %664 = fadd double %663, 5.002000e+02
  store double %664, ptr @sc, align 8
  %665 = load double, ptr @one, align 8
  %666 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %667 = fdiv double %665, %666
  store double %667, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %668 = fmul double %664, 1.000000e-30
  %669 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %670 = fmul double %669, 1.000000e-30
  %671 = fmul double %667, 1.000000e-30
  %672 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %668, double noundef %670, double noundef %671) #4
  %673 = load double, ptr @piref, align 8
  %674 = load double, ptr @three, align 8
  %675 = load i32, ptr %9, align 4
  %676 = sitofp i32 %675 to double
  %677 = fmul double %674, %676
  %678 = fdiv double %673, %677
  store double %678, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %679 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  store i32 1, ptr %8, align 4
  %680 = load i32, ptr %9, align 4
  %681 = load double, ptr @B6, align 8
  %682 = load double, ptr @B5, align 8
  %683 = load double, ptr @B4, align 8
  %684 = load double, ptr @B3, align 8
  %685 = load double, ptr @B2, align 8
  %686 = load double, ptr @B1, align 8
  %687 = load double, ptr @one, align 8
  %688 = load double, ptr @A6, align 8
  %689 = load double, ptr @A5, align 8
  %690 = load double, ptr @A4, align 8
  %691 = load double, ptr @A3, align 8
  %692 = load double, ptr @A2, align 8
  %693 = load double, ptr @A1, align 8
  %694 = load double, ptr @one, align 8
  %.promoted82 = load i32, ptr %8, align 4
  %.promoted84 = load double, ptr %2, align 8
  %.promoted86 = load double, ptr %4, align 8
  %.promoted88 = load double, ptr %3, align 8
  %.promoted90 = load double, ptr %1, align 8
  br label %695

695:                                              ; preds = %702, %627
  %696 = phi double [ %720, %702 ], [ %.promoted90, %627 ]
  %697 = phi double [ %711, %702 ], [ %.promoted88, %627 ]
  %698 = phi double [ %705, %702 ], [ %.promoted86, %627 ]
  %699 = phi double [ %704, %702 ], [ %.promoted84, %627 ]
  %700 = phi i32 [ %721, %702 ], [ %.promoted82, %627 ]
  %.not108.not = icmp slt i32 %700, %680
  br i1 %.not108.not, label %701, label %722

701:                                              ; preds = %695
  br label %702

702:                                              ; preds = %701
  %703 = sitofp i32 %700 to double
  %704 = fmul double %678, %703
  %705 = fmul double %704, %704
  %706 = call double @llvm.fmuladd.f64(double %681, double %705, double %682)
  %707 = call double @llvm.fmuladd.f64(double %705, double %706, double %683)
  %708 = call double @llvm.fmuladd.f64(double %705, double %707, double %684)
  %709 = call double @llvm.fmuladd.f64(double %705, double %708, double %685)
  %710 = call double @llvm.fmuladd.f64(double %705, double %709, double %686)
  %711 = call double @llvm.fmuladd.f64(double %705, double %710, double %687)
  %712 = fmul double %711, %711
  %713 = fmul double %712, %704
  %714 = call double @llvm.fmuladd.f64(double %688, double %705, double %689)
  %715 = call double @llvm.fmuladd.f64(double %714, double %705, double %690)
  %716 = call double @llvm.fmuladd.f64(double %715, double %705, double %691)
  %717 = call double @llvm.fmuladd.f64(double %716, double %705, double %692)
  %718 = call double @llvm.fmuladd.f64(double %717, double %705, double %693)
  %719 = call double @llvm.fmuladd.f64(double %718, double %705, double %694)
  %720 = call double @llvm.fmuladd.f64(double %713, double %719, double %696)
  %721 = add nsw i32 %700, 1
  br label %695, !llvm.loop !18

722:                                              ; preds = %695
  store i32 %700, ptr %8, align 4
  store double %699, ptr %2, align 8
  store double %698, ptr %4, align 8
  store double %697, ptr %3, align 8
  store double %696, ptr %1, align 8
  %723 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %724 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %725 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %726 = load double, ptr @nulltime, align 8
  %727 = fneg double %726
  %728 = call double @llvm.fmuladd.f64(double %724, double %725, double %727)
  store double %728, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %729 = load double, ptr @piref, align 8
  %730 = load double, ptr @three, align 8
  %731 = fdiv double %729, %730
  store double %731, ptr %2, align 8
  %732 = fmul double %731, %731
  store double %732, ptr %4, align 8
  %733 = load double, ptr @A6, align 8
  %734 = load double, ptr @A5, align 8
  %735 = call double @llvm.fmuladd.f64(double %733, double %732, double %734)
  %736 = load double, ptr @A4, align 8
  %737 = call double @llvm.fmuladd.f64(double %735, double %732, double %736)
  %738 = load double, ptr @A3, align 8
  %739 = call double @llvm.fmuladd.f64(double %737, double %732, double %738)
  %740 = load double, ptr %4, align 8
  %741 = load double, ptr @A2, align 8
  %742 = call double @llvm.fmuladd.f64(double %739, double %740, double %741)
  %743 = load double, ptr @A1, align 8
  %744 = call double @llvm.fmuladd.f64(double %742, double %740, double %743)
  %745 = load double, ptr @one, align 8
  %746 = call double @llvm.fmuladd.f64(double %744, double %740, double %745)
  %747 = fmul double %731, %746
  store double %747, ptr @sa, align 8
  %748 = load double, ptr %4, align 8
  %749 = load double, ptr @B6, align 8
  %750 = load double, ptr @B5, align 8
  %751 = call double @llvm.fmuladd.f64(double %749, double %748, double %750)
  %752 = load double, ptr @B4, align 8
  %753 = call double @llvm.fmuladd.f64(double %748, double %751, double %752)
  %754 = load double, ptr @B3, align 8
  %755 = call double @llvm.fmuladd.f64(double %748, double %753, double %754)
  %756 = load double, ptr @B2, align 8
  %757 = call double @llvm.fmuladd.f64(double %748, double %755, double %756)
  %758 = load double, ptr @B1, align 8
  %759 = call double @llvm.fmuladd.f64(double %748, double %757, double %758)
  %760 = load double, ptr @one, align 8
  %761 = call double @llvm.fmuladd.f64(double %748, double %759, double %760)
  store double %761, ptr @sb, align 8
  %762 = load double, ptr @sa, align 8
  %763 = fmul double %762, %761
  %764 = fmul double %763, %761
  store double %764, ptr @sa, align 8
  %765 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %766 = fdiv double %765, 3.000000e+01
  store double %766, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %767 = load double, ptr %5, align 8
  %768 = load double, ptr @two, align 8
  %769 = load double, ptr %1, align 8
  %770 = call double @llvm.fmuladd.f64(double %768, double %769, double %764)
  %771 = fmul double %767, %770
  %772 = fdiv double %771, %768
  store double %772, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %773 = fadd double %772, f0xBFD2AAAAAAAAAAAB
  store double %773, ptr @sc, align 8
  %774 = load double, ptr @one, align 8
  %775 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %776 = fdiv double %774, %775
  store double %776, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %777 = fmul double %773, 1.000000e-30
  %778 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %779 = fmul double %778, 1.000000e-30
  %780 = fmul double %776, 1.000000e-30
  %781 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %777, double noundef %779, double noundef %780) #4
  %782 = load double, ptr @five, align 8
  %783 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %784 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %785 = fsub double %783, %784
  %786 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %787 = call double @llvm.fmuladd.f64(double %782, double %785, double %786)
  %788 = fdiv double %787, 5.200000e+01
  store double %788, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %789 = load double, ptr @one, align 8
  %790 = fdiv double %789, %788
  store double %790, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %791 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %792 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %793 = fadd double %791, %792
  %794 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %795 = fadd double %793, %794
  %796 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %797 = fadd double %795, %796
  %798 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %799 = fadd double %797, %798
  store double %799, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %800 = load double, ptr @four, align 8
  %801 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %802 = call double @llvm.fmuladd.f64(double %800, double %801, double %799)
  %803 = fdiv double %802, 1.520000e+02
  store double %803, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %804 = load double, ptr @one, align 8
  %805 = fdiv double %804, %803
  store double %805, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %806 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %807 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %808 = fadd double %806, %807
  %809 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %810 = fadd double %808, %809
  %811 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %812 = fadd double %810, %811
  %813 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %814 = fadd double %812, %813
  store double %814, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %815 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %816 = fadd double %814, %815
  %817 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %818 = fadd double %816, %817
  %819 = fdiv double %818, 1.460000e+02
  store double %819, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %820 = load double, ptr @one, align 8
  %821 = fdiv double %820, %819
  store double %821, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %822 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %823 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %824 = fadd double %822, %823
  %825 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %826 = fadd double %824, %825
  %827 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %828 = fadd double %826, %827
  %829 = fdiv double %828, 9.100000e+01
  store double %829, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %830 = load double, ptr @one, align 8
  %831 = fdiv double %830, %829
  store double %831, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar109 = call i32 @putchar(i32 10)
  %832 = load i32, ptr %9, align 4
  %833 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %832) #4
  %834 = load double, ptr @nulltime, align 8
  %835 = fmul double %834, 1.000000e-30
  %836 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %835) #4
  %837 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %838 = fmul double %837, 1.000000e-30
  %839 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %838) #4
  %840 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %841 = fmul double %840, 1.000000e-30
  %842 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %841) #4
  %843 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %844 = fmul double %843, 1.000000e-30
  %845 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %844) #4
  %846 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %847 = fmul double %846, 1.000000e-30
  %848 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %847) #4
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
