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
  store i32 15625, ptr %10, align 4
  store double 0.000000e+00, ptr @sa, align 8
  br label %13

13:                                               ; preds = %51, %0
  %14 = phi double [ %28, %51 ], [ undef, %0 ]
  %15 = phi double [ %24, %51 ], [ undef, %0 ]
  %16 = phi i32 [ %21, %51 ], [ 15625, %0 ]
  %17 = phi double [ %48, %51 ], [ 0.000000e+00, %0 ]
  %18 = load double, ptr @TLimit, align 8
  %19 = fcmp olt double %17, %18
  br i1 %19, label %20, label %52

20:                                               ; preds = %13
  %21 = shl nsw i32 %16, 1
  store i32 %21, ptr %10, align 4
  %22 = load double, ptr @one, align 8
  %23 = sitofp i32 %21 to double
  %24 = fdiv double %22, %23
  store double %24, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  store double %22, ptr %4, align 8
  %25 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %26

26:                                               ; preds = %30, %20
  %27 = phi double [ 0.000000e+00, %20 ], [ %31, %30 ]
  %28 = phi double [ 0.000000e+00, %20 ], [ %44, %30 ]
  %29 = phi i32 [ 1, %20 ], [ %45, %30 ]
  store i32 %29, ptr %8, align 4
  %.not.not = icmp slt i32 %29, %21
  br i1 %.not.not, label %30, label %46

30:                                               ; preds = %26
  %31 = fadd double %27, %22
  store double %31, ptr %3, align 8
  %32 = fmul double %31, %24
  store double %32, ptr %2, align 8
  %33 = load double, ptr @D1, align 8
  %34 = load double, ptr @D2, align 8
  %35 = load double, ptr @D3, align 8
  %36 = call double @llvm.fmuladd.f64(double %32, double %35, double %34)
  %37 = call double @llvm.fmuladd.f64(double %32, double %36, double %33)
  %38 = load double, ptr @E2, align 8
  %39 = load double, ptr @E3, align 8
  %40 = call double @llvm.fmuladd.f64(double %32, double %39, double %38)
  %41 = call double @llvm.fmuladd.f64(double %32, double %40, double %33)
  %42 = call double @llvm.fmuladd.f64(double %32, double %41, double %22)
  %43 = fdiv double %37, %42
  %44 = fadd double %28, %43
  store double %44, ptr %1, align 8
  %45 = add nsw i32 %29, 1
  br label %26, !llvm.loop !7

46:                                               ; preds = %26
  %47 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %48 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %48, ptr @sa, align 8
  %49 = icmp eq i32 %21, 512000000
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %52

51:                                               ; preds = %46
  br label %13, !llvm.loop !9

52:                                               ; preds = %50, %13
  %53 = phi double [ %28, %50 ], [ %14, %13 ]
  %54 = phi double [ %24, %50 ], [ %15, %13 ]
  %55 = phi i32 [ 512000000, %50 ], [ %16, %13 ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %56 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %57

57:                                               ; preds = %59, %52
  %58 = phi i32 [ 1, %52 ], [ %60, %59 ]
  store i32 %58, ptr %8, align 4
  %.not.not4 = icmp slt i32 %58, %55
  br i1 %.not.not4, label %59, label %61

59:                                               ; preds = %57
  %60 = add nsw i32 %58, 1
  br label %57, !llvm.loop !10

61:                                               ; preds = %57
  %62 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %63 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %64 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %65 = fmul double %63, %64
  %66 = fcmp olt double %65, 0.000000e+00
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67, %61
  %storemerge5 = phi double [ 0.000000e+00, %67 ], [ %65, %61 ]
  store double %storemerge5, ptr @nulltime, align 8
  %69 = load double, ptr @sa, align 8
  %70 = fneg double %storemerge5
  %71 = call double @llvm.fmuladd.f64(double %63, double %69, double %70)
  store double %71, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %72 = load double, ptr @D1, align 8
  %73 = load double, ptr @D2, align 8
  %74 = fadd double %72, %73
  %75 = load double, ptr @D3, align 8
  %76 = fadd double %74, %75
  %77 = load double, ptr @one, align 8
  %78 = fadd double %77, %72
  %79 = load double, ptr @E2, align 8
  %80 = fadd double %78, %79
  %81 = load double, ptr @E3, align 8
  %82 = fadd double %80, %81
  %83 = fdiv double %76, %82
  store double %83, ptr @sa, align 8
  store double %72, ptr @sb, align 8
  %84 = fdiv double %71, 1.400000e+01
  store double %84, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %85 = fadd double %83, %72
  %86 = load double, ptr @two, align 8
  %87 = call double @llvm.fmuladd.f64(double %86, double %53, double %85)
  %88 = fmul double %54, %87
  %89 = fdiv double %88, %86
  store double %89, ptr @sa, align 8
  %90 = fdiv double %77, %89
  store double %90, ptr @sb, align 8
  %91 = fptosi double %90 to i32
  %92 = mul nsw i32 %91, 40000
  %93 = sitofp i32 %92 to double
  %94 = load double, ptr @scale, align 8
  %95 = fdiv double %93, %94
  %96 = fptosi double %95 to i32
  store i32 %96, ptr %10, align 4
  %97 = fadd double %90, -2.520000e+01
  store double %97, ptr @sc, align 8
  %98 = fdiv double %77, %84
  store double %98, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %99 = fmul double %97, 1.000000e-30
  %100 = fmul double %71, 1.000000e-30
  %101 = fmul double %98, 1.000000e-30
  %102 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %99, double noundef %100, double noundef %101) #4
  store i32 %96, ptr %9, align 4
  %103 = load double, ptr @five, align 8
  %104 = fneg double %103
  store double %104, ptr %1, align 8
  %105 = load double, ptr @one, align 8
  %106 = fneg double %105
  store double %106, ptr @sa, align 8
  %107 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %108

108:                                              ; preds = %111, %68
  %109 = phi double [ %104, %68 ], [ %112, %111 ]
  %110 = phi i32 [ 1, %68 ], [ %115, %111 ]
  store i32 %110, ptr %8, align 4
  %.not = icmp sgt i32 %110, %96
  br i1 %.not, label %116, label %111

111:                                              ; preds = %108
  %112 = fneg double %109
  store double %112, ptr %1, align 8
  %113 = load double, ptr @sa, align 8
  %114 = fsub double %113, %109
  store double %114, ptr @sa, align 8
  %115 = add nsw i32 %110, 1
  br label %108, !llvm.loop !11

116:                                              ; preds = %108
  %117 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %118 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %119 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %120 = fmul double %118, %119
  %121 = fcmp olt double %120, 0.000000e+00
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  br label %123

123:                                              ; preds = %122, %116
  %storemerge7 = phi double [ 0.000000e+00, %122 ], [ %120, %116 ]
  store double %storemerge7, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %124 = sitofp i32 %96 to double
  store double %124, ptr @sc, align 8
  %125 = load double, ptr @sa, align 8
  store double %125, ptr %2, align 8
  store double 0.000000e+00, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  %126 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %127

127:                                              ; preds = %134, %123
  %128 = phi double [ 0.000000e+00, %123 ], [ %144, %134 ]
  %129 = phi double [ 0.000000e+00, %123 ], [ %142, %134 ]
  %130 = phi double [ 0.000000e+00, %123 ], [ %141, %134 ]
  %131 = phi double [ %125, %123 ], [ %139, %134 ]
  %132 = phi double [ %109, %123 ], [ %135, %134 ]
  %133 = phi i32 [ 1, %123 ], [ %145, %134 ]
  store i32 %133, ptr %8, align 4
  %.not9 = icmp sgt i32 %133, %96
  br i1 %.not9, label %146, label %134

134:                                              ; preds = %127
  %135 = fneg double %132
  store double %135, ptr %1, align 8
  %136 = load double, ptr @sa, align 8
  %137 = fsub double %136, %132
  store double %137, ptr @sa, align 8
  %138 = load double, ptr @two, align 8
  %139 = fadd double %131, %138
  store double %139, ptr %2, align 8
  %140 = fsub double %135, %139
  %141 = fadd double %130, %140
  store double %141, ptr %5, align 8
  %142 = call double @llvm.fmuladd.f64(double %132, double %139, double %129)
  store double %142, ptr %3, align 8
  %143 = fdiv double %135, %139
  %144 = fadd double %128, %143
  store double %144, ptr %4, align 8
  %145 = add nsw i32 %133, 1
  br label %127, !llvm.loop !12

146:                                              ; preds = %127
  %147 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %148 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %149 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %150 = fmul double %148, %149
  store double %150, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %151 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %152 = fsub double %150, %151
  %153 = fdiv double %152, 7.000000e+00
  store double %153, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %154 = load double, ptr @sa, align 8
  %155 = fmul double %154, %130
  %156 = load double, ptr @sc, align 8
  %157 = fdiv double %155, %156
  %158 = fptosi double %157 to i32
  store i32 %158, ptr %9, align 4
  %159 = load double, ptr @four, align 8
  %160 = fmul double %159, %128
  %161 = load double, ptr @five, align 8
  %162 = fdiv double %160, %161
  store double %162, ptr @sa, align 8
  %163 = fdiv double %161, %129
  %164 = fadd double %162, %163
  store double %164, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %165 = fmul double %129, %129
  %166 = fmul double %165, %129
  %167 = fdiv double 3.125000e+01, %166
  %168 = fsub double %164, %167
  store double %168, ptr @piprg, align 8
  %169 = load double, ptr @piref, align 8
  %170 = fsub double %168, %169
  store double %170, ptr @pierr, align 8
  %171 = load double, ptr @one, align 8
  %172 = fdiv double %171, %153
  store double %172, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %173 = fmul double %170, 1.000000e-30
  %174 = fmul double %152, 1.000000e-30
  %175 = fmul double %172, 1.000000e-30
  %176 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %173, double noundef %174, double noundef %175) #4
  %177 = load double, ptr @piref, align 8
  %178 = load double, ptr @three, align 8
  %179 = sitofp i32 %158 to double
  %180 = fmul double %178, %179
  %181 = fdiv double %177, %180
  store double %181, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %182 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %183

183:                                              ; preds = %187, %146
  %184 = phi double [ 0.000000e+00, %146 ], [ %189, %187 ]
  %185 = phi double [ 0.000000e+00, %146 ], [ %206, %187 ]
  %186 = phi i32 [ 1, %146 ], [ %207, %187 ]
  store i32 %186, ptr %8, align 4
  %.not11.not = icmp slt i32 %186, %158
  br i1 %.not11.not, label %187, label %208

187:                                              ; preds = %183
  %188 = load double, ptr @one, align 8
  %189 = fadd double %184, %188
  store double %189, ptr %3, align 8
  %190 = fmul double %189, %181
  store double %190, ptr %2, align 8
  %191 = fmul double %190, %190
  store double %191, ptr %4, align 8
  %192 = load double, ptr @A6, align 8
  %193 = load double, ptr @A5, align 8
  %194 = fneg double %193
  %195 = call double @llvm.fmuladd.f64(double %192, double %191, double %194)
  %196 = load double, ptr @A4, align 8
  %197 = call double @llvm.fmuladd.f64(double %195, double %191, double %196)
  %198 = load double, ptr @A3, align 8
  %199 = fneg double %198
  %200 = call double @llvm.fmuladd.f64(double %197, double %191, double %199)
  %201 = load double, ptr @A2, align 8
  %202 = call double @llvm.fmuladd.f64(double %200, double %191, double %201)
  %203 = load double, ptr @A1, align 8
  %204 = call double @llvm.fmuladd.f64(double %202, double %191, double %203)
  %205 = call double @llvm.fmuladd.f64(double %204, double %191, double %188)
  %206 = call double @llvm.fmuladd.f64(double %190, double %205, double %185)
  store double %206, ptr %1, align 8
  %207 = add nsw i32 %186, 1
  br label %183, !llvm.loop !13

208:                                              ; preds = %183
  %209 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %210 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %211 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %212 = load double, ptr @nulltime, align 8
  %213 = fneg double %212
  %214 = call double @llvm.fmuladd.f64(double %210, double %211, double %213)
  store double %214, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %215 = load double, ptr @piref, align 8
  %216 = load double, ptr @three, align 8
  %217 = fdiv double %215, %216
  store double %217, ptr %2, align 8
  %218 = fmul double %217, %217
  store double %218, ptr %4, align 8
  %219 = load double, ptr @A6, align 8
  %220 = load double, ptr @A5, align 8
  %221 = fneg double %220
  %222 = call double @llvm.fmuladd.f64(double %219, double %218, double %221)
  %223 = load double, ptr @A4, align 8
  %224 = call double @llvm.fmuladd.f64(double %222, double %218, double %223)
  %225 = load double, ptr @A3, align 8
  %226 = fneg double %225
  %227 = call double @llvm.fmuladd.f64(double %224, double %218, double %226)
  %228 = load double, ptr @A2, align 8
  %229 = call double @llvm.fmuladd.f64(double %227, double %218, double %228)
  %230 = load double, ptr @A1, align 8
  %231 = call double @llvm.fmuladd.f64(double %229, double %218, double %230)
  %232 = load double, ptr @one, align 8
  %233 = call double @llvm.fmuladd.f64(double %231, double %218, double %232)
  %234 = fmul double %217, %233
  store double %234, ptr @sa, align 8
  %235 = fdiv double %214, 1.700000e+01
  store double %235, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %236 = load double, ptr @two, align 8
  %237 = call double @llvm.fmuladd.f64(double %236, double %185, double %234)
  %238 = fmul double %181, %237
  %239 = fdiv double %238, %236
  store double %239, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %240 = fadd double %239, -5.000000e-01
  store double %240, ptr @sc, align 8
  %241 = fdiv double %232, %235
  store double %241, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %242 = fmul double %240, 1.000000e-30
  %243 = fmul double %214, 1.000000e-30
  %244 = fmul double %241, 1.000000e-30
  %245 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %242, double noundef %243, double noundef %244) #4
  %246 = load double, ptr @A3, align 8
  %247 = fneg double %246
  store double %247, ptr @A3, align 8
  %248 = load double, ptr @A5, align 8
  %249 = fneg double %248
  store double %249, ptr @A5, align 8
  %250 = load double, ptr @piref, align 8
  %251 = load double, ptr @three, align 8
  %252 = fmul double %251, %179
  %253 = fdiv double %250, %252
  store double %253, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %254 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %255

255:                                              ; preds = %258, %208
  %256 = phi double [ 0.000000e+00, %208 ], [ %275, %258 ]
  %257 = phi i32 [ 1, %208 ], [ %276, %258 ]
  store i32 %257, ptr %8, align 4
  %.not13.not = icmp slt i32 %257, %158
  br i1 %.not13.not, label %258, label %277

258:                                              ; preds = %255
  %259 = sitofp i32 %257 to double
  %260 = fmul double %253, %259
  store double %260, ptr %2, align 8
  %261 = fmul double %260, %260
  store double %261, ptr %4, align 8
  %262 = load double, ptr @B6, align 8
  %263 = load double, ptr @B5, align 8
  %264 = call double @llvm.fmuladd.f64(double %262, double %261, double %263)
  %265 = load double, ptr @B4, align 8
  %266 = call double @llvm.fmuladd.f64(double %261, double %264, double %265)
  %267 = load double, ptr @B3, align 8
  %268 = call double @llvm.fmuladd.f64(double %261, double %266, double %267)
  %269 = load double, ptr @B2, align 8
  %270 = call double @llvm.fmuladd.f64(double %261, double %268, double %269)
  %271 = load double, ptr @B1, align 8
  %272 = call double @llvm.fmuladd.f64(double %261, double %270, double %271)
  %273 = call double @llvm.fmuladd.f64(double %261, double %272, double %256)
  %274 = load double, ptr @one, align 8
  %275 = fadd double %273, %274
  store double %275, ptr %1, align 8
  %276 = add nsw i32 %257, 1
  br label %255, !llvm.loop !14

277:                                              ; preds = %255
  %278 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %279 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %280 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %281 = load double, ptr @nulltime, align 8
  %282 = fneg double %281
  %283 = call double @llvm.fmuladd.f64(double %279, double %280, double %282)
  store double %283, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %284 = load double, ptr @piref, align 8
  %285 = load double, ptr @three, align 8
  %286 = fdiv double %284, %285
  store double %286, ptr %2, align 8
  %287 = fmul double %286, %286
  store double %287, ptr %4, align 8
  %288 = load double, ptr @B6, align 8
  %289 = load double, ptr @B5, align 8
  %290 = call double @llvm.fmuladd.f64(double %288, double %287, double %289)
  %291 = load double, ptr @B4, align 8
  %292 = call double @llvm.fmuladd.f64(double %287, double %290, double %291)
  %293 = load double, ptr @B3, align 8
  %294 = call double @llvm.fmuladd.f64(double %287, double %292, double %293)
  %295 = load double, ptr @B2, align 8
  %296 = call double @llvm.fmuladd.f64(double %287, double %294, double %295)
  %297 = load double, ptr @B1, align 8
  %298 = call double @llvm.fmuladd.f64(double %287, double %296, double %297)
  %299 = load double, ptr @one, align 8
  %300 = call double @llvm.fmuladd.f64(double %287, double %298, double %299)
  store double %300, ptr @sa, align 8
  %301 = fdiv double %283, 1.500000e+01
  store double %301, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %302 = fadd double %300, %299
  %303 = load double, ptr @two, align 8
  %304 = call double @llvm.fmuladd.f64(double %303, double %256, double %302)
  %305 = fmul double %253, %304
  %306 = fdiv double %305, %303
  store double %306, ptr @sa, align 8
  store double %286, ptr %2, align 8
  store double %287, ptr %4, align 8
  %307 = load double, ptr @A6, align 8
  %308 = load double, ptr @A5, align 8
  %309 = call double @llvm.fmuladd.f64(double %307, double %287, double %308)
  %310 = load double, ptr @A4, align 8
  %311 = call double @llvm.fmuladd.f64(double %309, double %287, double %310)
  %312 = load double, ptr @A3, align 8
  %313 = call double @llvm.fmuladd.f64(double %311, double %287, double %312)
  %314 = load double, ptr @A2, align 8
  %315 = call double @llvm.fmuladd.f64(double %313, double %287, double %314)
  %316 = load double, ptr @A1, align 8
  %317 = call double @llvm.fmuladd.f64(double %315, double %287, double %316)
  %318 = load double, ptr @A0, align 8
  %319 = call double @llvm.fmuladd.f64(double %317, double %287, double %318)
  %320 = fmul double %286, %319
  store double %320, ptr @sb, align 8
  %321 = fsub double %306, %320
  store double %321, ptr @sc, align 8
  %322 = fdiv double %299, %301
  store double %322, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %323 = fmul double %321, 1.000000e-30
  %324 = fmul double %283, 1.000000e-30
  %325 = fmul double %322, 1.000000e-30
  %326 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %323, double noundef %324, double noundef %325) #4
  %327 = load double, ptr @piref, align 8
  %328 = load double, ptr @three, align 8
  %329 = fmul double %328, %179
  %330 = fdiv double %327, %329
  store double %330, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %331 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %332

332:                                              ; preds = %335, %277
  %333 = phi double [ 0.000000e+00, %277 ], [ %366, %335 ]
  %334 = phi i32 [ 1, %277 ], [ %367, %335 ]
  store i32 %334, ptr %8, align 4
  %.not15.not = icmp slt i32 %334, %158
  br i1 %.not15.not, label %335, label %368

335:                                              ; preds = %332
  %336 = sitofp i32 %334 to double
  %337 = fmul double %330, %336
  store double %337, ptr %2, align 8
  %338 = fmul double %337, %337
  store double %338, ptr %4, align 8
  %339 = load double, ptr @A6, align 8
  %340 = load double, ptr @A5, align 8
  %341 = call double @llvm.fmuladd.f64(double %339, double %338, double %340)
  %342 = load double, ptr @A4, align 8
  %343 = call double @llvm.fmuladd.f64(double %341, double %338, double %342)
  %344 = load double, ptr @A3, align 8
  %345 = call double @llvm.fmuladd.f64(double %343, double %338, double %344)
  %346 = load double, ptr @A2, align 8
  %347 = call double @llvm.fmuladd.f64(double %345, double %338, double %346)
  %348 = load double, ptr @A1, align 8
  %349 = call double @llvm.fmuladd.f64(double %347, double %338, double %348)
  %350 = load double, ptr @one, align 8
  %351 = call double @llvm.fmuladd.f64(double %349, double %338, double %350)
  %352 = fmul double %337, %351
  store double %352, ptr %3, align 8
  %353 = load double, ptr @B6, align 8
  %354 = load double, ptr @B5, align 8
  %355 = call double @llvm.fmuladd.f64(double %353, double %338, double %354)
  %356 = load double, ptr @B4, align 8
  %357 = call double @llvm.fmuladd.f64(double %338, double %355, double %356)
  %358 = load double, ptr @B3, align 8
  %359 = call double @llvm.fmuladd.f64(double %338, double %357, double %358)
  %360 = load double, ptr @B2, align 8
  %361 = call double @llvm.fmuladd.f64(double %338, double %359, double %360)
  %362 = load double, ptr @B1, align 8
  %363 = call double @llvm.fmuladd.f64(double %338, double %361, double %362)
  %364 = call double @llvm.fmuladd.f64(double %338, double %363, double %350)
  %365 = fdiv double %352, %364
  %366 = fadd double %333, %365
  store double %366, ptr %1, align 8
  %367 = add nsw i32 %334, 1
  br label %332, !llvm.loop !15

368:                                              ; preds = %332
  %369 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %370 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %371 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %372 = load double, ptr @nulltime, align 8
  %373 = fneg double %372
  %374 = call double @llvm.fmuladd.f64(double %370, double %371, double %373)
  store double %374, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %375 = load double, ptr @piref, align 8
  %376 = load double, ptr @three, align 8
  %377 = fdiv double %375, %376
  store double %377, ptr %2, align 8
  %378 = fmul double %377, %377
  store double %378, ptr %4, align 8
  %379 = load double, ptr @A6, align 8
  %380 = load double, ptr @A5, align 8
  %381 = call double @llvm.fmuladd.f64(double %379, double %378, double %380)
  %382 = load double, ptr @A4, align 8
  %383 = call double @llvm.fmuladd.f64(double %381, double %378, double %382)
  %384 = load double, ptr @A3, align 8
  %385 = call double @llvm.fmuladd.f64(double %383, double %378, double %384)
  %386 = load double, ptr @A2, align 8
  %387 = call double @llvm.fmuladd.f64(double %385, double %378, double %386)
  %388 = load double, ptr @A1, align 8
  %389 = call double @llvm.fmuladd.f64(double %387, double %378, double %388)
  %390 = load double, ptr @one, align 8
  %391 = call double @llvm.fmuladd.f64(double %389, double %378, double %390)
  %392 = fmul double %377, %391
  store double %392, ptr @sa, align 8
  %393 = load double, ptr @B6, align 8
  %394 = load double, ptr @B5, align 8
  %395 = call double @llvm.fmuladd.f64(double %393, double %378, double %394)
  %396 = load double, ptr @B4, align 8
  %397 = call double @llvm.fmuladd.f64(double %378, double %395, double %396)
  %398 = load double, ptr @B3, align 8
  %399 = call double @llvm.fmuladd.f64(double %378, double %397, double %398)
  %400 = load double, ptr @B2, align 8
  %401 = call double @llvm.fmuladd.f64(double %378, double %399, double %400)
  %402 = load double, ptr @B1, align 8
  %403 = call double @llvm.fmuladd.f64(double %378, double %401, double %402)
  %404 = call double @llvm.fmuladd.f64(double %378, double %403, double %390)
  store double %404, ptr @sb, align 8
  %405 = fdiv double %392, %404
  store double %405, ptr @sa, align 8
  %406 = fdiv double %374, 2.900000e+01
  store double %406, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %407 = load double, ptr @two, align 8
  %408 = call double @llvm.fmuladd.f64(double %407, double %333, double %405)
  %409 = fmul double %330, %408
  %410 = fdiv double %409, %407
  store double %410, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %411 = fadd double %410, f0xBFE62E42FEFA39EF
  store double %411, ptr @sc, align 8
  %412 = fdiv double %390, %406
  store double %412, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %413 = fmul double %411, 1.000000e-30
  %414 = fmul double %374, 1.000000e-30
  %415 = fmul double %412, 1.000000e-30
  %416 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %413, double noundef %414, double noundef %415) #4
  %417 = load double, ptr @piref, align 8
  %418 = load double, ptr @four, align 8
  %419 = fmul double %418, %179
  %420 = fdiv double %417, %419
  store double %420, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %421 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %422

422:                                              ; preds = %425, %368
  %423 = phi double [ 0.000000e+00, %368 ], [ %455, %425 ]
  %424 = phi i32 [ 1, %368 ], [ %456, %425 ]
  store i32 %424, ptr %8, align 4
  %.not17.not = icmp slt i32 %424, %158
  br i1 %.not17.not, label %425, label %457

425:                                              ; preds = %422
  %426 = sitofp i32 %424 to double
  %427 = fmul double %420, %426
  store double %427, ptr %2, align 8
  %428 = fmul double %427, %427
  store double %428, ptr %4, align 8
  %429 = load double, ptr @A6, align 8
  %430 = load double, ptr @A5, align 8
  %431 = call double @llvm.fmuladd.f64(double %429, double %428, double %430)
  %432 = load double, ptr @A4, align 8
  %433 = call double @llvm.fmuladd.f64(double %431, double %428, double %432)
  %434 = load double, ptr @A3, align 8
  %435 = call double @llvm.fmuladd.f64(double %433, double %428, double %434)
  %436 = load double, ptr @A2, align 8
  %437 = call double @llvm.fmuladd.f64(double %435, double %428, double %436)
  %438 = load double, ptr @A1, align 8
  %439 = call double @llvm.fmuladd.f64(double %437, double %428, double %438)
  %440 = load double, ptr @one, align 8
  %441 = call double @llvm.fmuladd.f64(double %439, double %428, double %440)
  %442 = fmul double %427, %441
  store double %442, ptr %3, align 8
  %443 = load double, ptr @B6, align 8
  %444 = load double, ptr @B5, align 8
  %445 = call double @llvm.fmuladd.f64(double %443, double %428, double %444)
  %446 = load double, ptr @B4, align 8
  %447 = call double @llvm.fmuladd.f64(double %428, double %445, double %446)
  %448 = load double, ptr @B3, align 8
  %449 = call double @llvm.fmuladd.f64(double %428, double %447, double %448)
  %450 = load double, ptr @B2, align 8
  %451 = call double @llvm.fmuladd.f64(double %428, double %449, double %450)
  %452 = load double, ptr @B1, align 8
  %453 = call double @llvm.fmuladd.f64(double %428, double %451, double %452)
  %454 = call double @llvm.fmuladd.f64(double %428, double %453, double %440)
  %455 = call double @llvm.fmuladd.f64(double %442, double %454, double %423)
  store double %455, ptr %1, align 8
  %456 = add nsw i32 %424, 1
  br label %422, !llvm.loop !16

457:                                              ; preds = %422
  %458 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %459 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %460 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %461 = load double, ptr @nulltime, align 8
  %462 = fneg double %461
  %463 = call double @llvm.fmuladd.f64(double %459, double %460, double %462)
  store double %463, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %464 = load double, ptr @piref, align 8
  %465 = load double, ptr @four, align 8
  %466 = fdiv double %464, %465
  store double %466, ptr %2, align 8
  %467 = fmul double %466, %466
  store double %467, ptr %4, align 8
  %468 = load double, ptr @A6, align 8
  %469 = load double, ptr @A5, align 8
  %470 = call double @llvm.fmuladd.f64(double %468, double %467, double %469)
  %471 = load double, ptr @A4, align 8
  %472 = call double @llvm.fmuladd.f64(double %470, double %467, double %471)
  %473 = load double, ptr @A3, align 8
  %474 = call double @llvm.fmuladd.f64(double %472, double %467, double %473)
  %475 = load double, ptr @A2, align 8
  %476 = call double @llvm.fmuladd.f64(double %474, double %467, double %475)
  %477 = load double, ptr @A1, align 8
  %478 = call double @llvm.fmuladd.f64(double %476, double %467, double %477)
  %479 = load double, ptr @one, align 8
  %480 = call double @llvm.fmuladd.f64(double %478, double %467, double %479)
  %481 = fmul double %466, %480
  store double %481, ptr @sa, align 8
  %482 = load double, ptr @B6, align 8
  %483 = load double, ptr @B5, align 8
  %484 = call double @llvm.fmuladd.f64(double %482, double %467, double %483)
  %485 = load double, ptr @B4, align 8
  %486 = call double @llvm.fmuladd.f64(double %467, double %484, double %485)
  %487 = load double, ptr @B3, align 8
  %488 = call double @llvm.fmuladd.f64(double %467, double %486, double %487)
  %489 = load double, ptr @B2, align 8
  %490 = call double @llvm.fmuladd.f64(double %467, double %488, double %489)
  %491 = load double, ptr @B1, align 8
  %492 = call double @llvm.fmuladd.f64(double %467, double %490, double %491)
  %493 = call double @llvm.fmuladd.f64(double %467, double %492, double %479)
  store double %493, ptr @sb, align 8
  %494 = fmul double %481, %493
  store double %494, ptr @sa, align 8
  %495 = fdiv double %463, 2.900000e+01
  store double %495, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %496 = load double, ptr @two, align 8
  %497 = call double @llvm.fmuladd.f64(double %496, double %423, double %494)
  %498 = fmul double %420, %497
  %499 = fdiv double %498, %496
  store double %499, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %500 = fadd double %499, -2.500000e-01
  store double %500, ptr @sc, align 8
  %501 = fdiv double %479, %495
  store double %501, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %502 = fmul double %500, 1.000000e-30
  %503 = fmul double %463, 1.000000e-30
  %504 = fmul double %501, 1.000000e-30
  %505 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %502, double noundef %503, double noundef %504) #4
  store double 0.000000e+00, ptr %1, align 8
  %506 = load double, ptr @one, align 8
  store double %506, ptr %4, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %507 = fdiv double f0x40599541F7F192A4, %179
  store double %507, ptr %3, align 8
  %508 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %509

509:                                              ; preds = %512, %457
  %510 = phi double [ 0.000000e+00, %457 ], [ %524, %512 ]
  %511 = phi i32 [ 1, %457 ], [ %525, %512 ]
  store i32 %511, ptr %8, align 4
  %.not19.not = icmp slt i32 %511, %158
  br i1 %.not19.not, label %512, label %526

512:                                              ; preds = %509
  %513 = sitofp i32 %511 to double
  %514 = fmul double %507, %513
  store double %514, ptr %5, align 8
  %515 = fmul double %514, %514
  store double %515, ptr %2, align 8
  %516 = fadd double %514, %506
  %517 = fdiv double %506, %516
  %518 = fsub double %510, %517
  %519 = fadd double %515, %506
  %520 = fdiv double %514, %519
  %521 = fsub double %518, %520
  %522 = call double @llvm.fmuladd.f64(double %514, double %515, double %506)
  %523 = fdiv double %515, %522
  %524 = fsub double %521, %523
  store double %524, ptr %1, align 8
  %525 = add nsw i32 %511, 1
  br label %509, !llvm.loop !17

526:                                              ; preds = %509
  %527 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %528 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %529 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %530 = load double, ptr @nulltime, align 8
  %531 = fneg double %530
  %532 = call double @llvm.fmuladd.f64(double %528, double %529, double %531)
  store double %532, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %533 = fdiv double %532, 1.200000e+01
  store double %533, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %534 = load double, ptr @sa, align 8
  store double %534, ptr %5, align 8
  %535 = fmul double %534, %534
  store double %535, ptr %2, align 8
  %536 = fneg double %506
  %537 = fadd double %534, %506
  %538 = fdiv double %506, %537
  %539 = fsub double %536, %538
  %540 = fadd double %535, %506
  %541 = fdiv double %534, %540
  %542 = fsub double %539, %541
  %543 = call double @llvm.fmuladd.f64(double %534, double %535, double %506)
  %544 = fdiv double %535, %543
  %545 = fsub double %542, %544
  store double %545, ptr @sa, align 8
  %546 = fmul double %507, 1.800000e+01
  %547 = load double, ptr @two, align 8
  %548 = call double @llvm.fmuladd.f64(double %547, double %510, double %545)
  %549 = fmul double %546, %548
  store double %549, ptr @sa, align 8
  %550 = fptosi double %549 to i32
  %551 = mul nsw i32 %550, -2000
  store i32 %551, ptr %9, align 4
  %552 = sitofp i32 %551 to double
  %553 = load double, ptr @scale, align 8
  %554 = fdiv double %552, %553
  %555 = fptosi double %554 to i32
  store i32 %555, ptr %9, align 4
  %556 = fadd double %549, 5.002000e+02
  store double %556, ptr @sc, align 8
  %557 = load double, ptr @one, align 8
  %558 = fdiv double %557, %533
  store double %558, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %559 = fmul double %556, 1.000000e-30
  %560 = fmul double %532, 1.000000e-30
  %561 = fmul double %558, 1.000000e-30
  %562 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %559, double noundef %560, double noundef %561) #4
  %563 = load double, ptr @piref, align 8
  %564 = load double, ptr @three, align 8
  %565 = sitofp i32 %555 to double
  %566 = fmul double %564, %565
  %567 = fdiv double %563, %566
  store double %567, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %568 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %569

569:                                              ; preds = %572, %526
  %570 = phi double [ 0.000000e+00, %526 ], [ %603, %572 ]
  %571 = phi i32 [ 1, %526 ], [ %604, %572 ]
  store i32 %571, ptr %8, align 4
  %.not21.not = icmp slt i32 %571, %555
  br i1 %.not21.not, label %572, label %605

572:                                              ; preds = %569
  %573 = sitofp i32 %571 to double
  %574 = fmul double %567, %573
  store double %574, ptr %2, align 8
  %575 = fmul double %574, %574
  store double %575, ptr %4, align 8
  %576 = load double, ptr @B6, align 8
  %577 = load double, ptr @B5, align 8
  %578 = call double @llvm.fmuladd.f64(double %576, double %575, double %577)
  %579 = load double, ptr @B4, align 8
  %580 = call double @llvm.fmuladd.f64(double %575, double %578, double %579)
  %581 = load double, ptr @B3, align 8
  %582 = call double @llvm.fmuladd.f64(double %575, double %580, double %581)
  %583 = load double, ptr @B2, align 8
  %584 = call double @llvm.fmuladd.f64(double %575, double %582, double %583)
  %585 = load double, ptr @B1, align 8
  %586 = call double @llvm.fmuladd.f64(double %575, double %584, double %585)
  %587 = load double, ptr @one, align 8
  %588 = call double @llvm.fmuladd.f64(double %575, double %586, double %587)
  store double %588, ptr %3, align 8
  %589 = fmul double %588, %588
  %590 = fmul double %589, %574
  %591 = load double, ptr @A6, align 8
  %592 = load double, ptr @A5, align 8
  %593 = call double @llvm.fmuladd.f64(double %591, double %575, double %592)
  %594 = load double, ptr @A4, align 8
  %595 = call double @llvm.fmuladd.f64(double %593, double %575, double %594)
  %596 = load double, ptr @A3, align 8
  %597 = call double @llvm.fmuladd.f64(double %595, double %575, double %596)
  %598 = load double, ptr @A2, align 8
  %599 = call double @llvm.fmuladd.f64(double %597, double %575, double %598)
  %600 = load double, ptr @A1, align 8
  %601 = call double @llvm.fmuladd.f64(double %599, double %575, double %600)
  %602 = call double @llvm.fmuladd.f64(double %601, double %575, double %587)
  %603 = call double @llvm.fmuladd.f64(double %590, double %602, double %570)
  store double %603, ptr %1, align 8
  %604 = add nsw i32 %571, 1
  br label %569, !llvm.loop !18

605:                                              ; preds = %569
  %606 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %607 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %608 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %609 = load double, ptr @nulltime, align 8
  %610 = fneg double %609
  %611 = call double @llvm.fmuladd.f64(double %607, double %608, double %610)
  store double %611, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %612 = load double, ptr @piref, align 8
  %613 = load double, ptr @three, align 8
  %614 = fdiv double %612, %613
  store double %614, ptr %2, align 8
  %615 = fmul double %614, %614
  store double %615, ptr %4, align 8
  %616 = load double, ptr @A6, align 8
  %617 = load double, ptr @A5, align 8
  %618 = call double @llvm.fmuladd.f64(double %616, double %615, double %617)
  %619 = load double, ptr @A4, align 8
  %620 = call double @llvm.fmuladd.f64(double %618, double %615, double %619)
  %621 = load double, ptr @A3, align 8
  %622 = call double @llvm.fmuladd.f64(double %620, double %615, double %621)
  %623 = load double, ptr @A2, align 8
  %624 = call double @llvm.fmuladd.f64(double %622, double %615, double %623)
  %625 = load double, ptr @A1, align 8
  %626 = call double @llvm.fmuladd.f64(double %624, double %615, double %625)
  %627 = load double, ptr @one, align 8
  %628 = call double @llvm.fmuladd.f64(double %626, double %615, double %627)
  %629 = fmul double %614, %628
  store double %629, ptr @sa, align 8
  %630 = load double, ptr @B6, align 8
  %631 = load double, ptr @B5, align 8
  %632 = call double @llvm.fmuladd.f64(double %630, double %615, double %631)
  %633 = load double, ptr @B4, align 8
  %634 = call double @llvm.fmuladd.f64(double %615, double %632, double %633)
  %635 = load double, ptr @B3, align 8
  %636 = call double @llvm.fmuladd.f64(double %615, double %634, double %635)
  %637 = load double, ptr @B2, align 8
  %638 = call double @llvm.fmuladd.f64(double %615, double %636, double %637)
  %639 = load double, ptr @B1, align 8
  %640 = call double @llvm.fmuladd.f64(double %615, double %638, double %639)
  %641 = call double @llvm.fmuladd.f64(double %615, double %640, double %627)
  store double %641, ptr @sb, align 8
  %642 = fmul double %629, %641
  %643 = fmul double %642, %641
  store double %643, ptr @sa, align 8
  %644 = fdiv double %611, 3.000000e+01
  store double %644, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %645 = load double, ptr @two, align 8
  %646 = call double @llvm.fmuladd.f64(double %645, double %570, double %643)
  %647 = fmul double %567, %646
  %648 = fdiv double %647, %645
  store double %648, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %649 = fadd double %648, f0xBFD2AAAAAAAAAAAB
  store double %649, ptr @sc, align 8
  %650 = fdiv double %627, %644
  store double %650, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %651 = fmul double %649, 1.000000e-30
  %652 = fmul double %611, 1.000000e-30
  %653 = fmul double %650, 1.000000e-30
  %654 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %651, double noundef %652, double noundef %653) #4
  %655 = load double, ptr @five, align 8
  %656 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %657 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %658 = fsub double %656, %657
  %659 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %660 = call double @llvm.fmuladd.f64(double %655, double %658, double %659)
  %661 = fdiv double %660, 5.200000e+01
  store double %661, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %662 = load double, ptr @one, align 8
  %663 = fdiv double %662, %661
  store double %663, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %664 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %665 = fadd double %664, %659
  %666 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %667 = fadd double %665, %666
  %668 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %669 = fadd double %667, %668
  %670 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %671 = fadd double %669, %670
  store double %671, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %672 = load double, ptr @four, align 8
  %673 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %674 = call double @llvm.fmuladd.f64(double %672, double %673, double %671)
  %675 = fdiv double %674, 1.520000e+02
  store double %675, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %676 = fdiv double %662, %675
  store double %676, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %671, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %677 = fadd double %671, %673
  %678 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %679 = fadd double %677, %678
  %680 = fdiv double %679, 1.460000e+02
  store double %680, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %681 = fdiv double %662, %680
  store double %681, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %682 = fadd double %659, %666
  %683 = fadd double %682, %670
  %684 = fadd double %683, %678
  %685 = fdiv double %684, 9.100000e+01
  store double %685, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %686 = fdiv double %662, %685
  store double %686, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar22 = call i32 @putchar(i32 10)
  %687 = load i32, ptr %9, align 4
  %688 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %687) #4
  %689 = load double, ptr @nulltime, align 8
  %690 = fmul double %689, 1.000000e-30
  %691 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %690) #4
  %692 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %693 = fmul double %692, 1.000000e-30
  %694 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %693) #4
  %695 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %696 = fmul double %695, 1.000000e-30
  %697 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %696) #4
  %698 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %699 = fmul double %698, 1.000000e-30
  %700 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %699) #4
  %701 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %702 = fmul double %701, 1.000000e-30
  %703 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %702) #4
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
  store double %8, ptr %4, align 8
  %9 = fsub double %8, %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %9, ptr %10, align 8
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
