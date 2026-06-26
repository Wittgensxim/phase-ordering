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

5:                                                ; preds = %39, %0
  %6 = phi double [ undef, %0 ], [ %.lcssa9, %39 ]
  %7 = phi double [ undef, %0 ], [ %16, %39 ]
  %8 = phi i32 [ 15625, %0 ], [ %13, %39 ]
  %9 = phi double [ 0.000000e+00, %0 ], [ %41, %39 ]
  %10 = load double, ptr @TLimit, align 8
  %11 = fcmp olt double %9, %10
  br i1 %11, label %12, label %43

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
  br i1 %42, label %43, label %5, !llvm.loop !9

43:                                               ; preds = %39, %5
  %44 = phi double [ %6, %5 ], [ %.lcssa9, %39 ]
  %45 = phi double [ %7, %5 ], [ %16, %39 ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %46 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %47

47:                                               ; preds = %48, %43
  br i1 false, label %48, label %49

48:                                               ; preds = %47
  br label %47, !llvm.loop !10

49:                                               ; preds = %47
  %50 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %51 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %52 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %53 = fmul double %51, %52
  %54 = fcmp olt double %53, 0.000000e+00
  %55 = select i1 %54, double 0.000000e+00, double %53
  store double %55, ptr @nulltime, align 8
  %56 = load double, ptr @sa, align 8
  %57 = fneg double %55
  %58 = call double @llvm.fmuladd.f64(double %51, double %56, double %57)
  store double %58, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %59 = load double, ptr @D1, align 8
  %60 = load double, ptr @D2, align 8
  %61 = fadd double %59, %60
  %62 = load double, ptr @D3, align 8
  %63 = fadd double %61, %62
  %64 = load double, ptr @one, align 8
  %65 = fadd double %64, %59
  %66 = load double, ptr @E2, align 8
  %67 = fadd double %65, %66
  %68 = load double, ptr @E3, align 8
  %69 = fadd double %67, %68
  %70 = fdiv double %63, %69
  store double %70, ptr @sa, align 8
  store double %59, ptr @sb, align 8
  %71 = fdiv double %58, 1.400000e+01
  store double %71, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %72 = fadd double %70, %59
  %73 = load double, ptr @two, align 8
  %74 = call double @llvm.fmuladd.f64(double %73, double %44, double %72)
  %75 = fmul double %45, %74
  %76 = fdiv double %75, %73
  store double %76, ptr @sa, align 8
  %77 = fdiv double %64, %76
  store double %77, ptr @sb, align 8
  %78 = fptosi double %77 to i32
  %79 = mul nsw i32 %78, 40000
  %80 = sitofp i32 %79 to double
  %81 = load double, ptr @scale, align 8
  %82 = fdiv double %80, %81
  %83 = fptosi double %82 to i32
  %84 = fadd double %77, -2.520000e+01
  store double %84, ptr @sc, align 8
  %85 = fdiv double %64, %71
  store double %85, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %86 = fmul double %84, 1.000000e-30
  %87 = fmul double %58, 1.000000e-30
  %88 = fmul double %85, 1.000000e-30
  %89 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %86, double noundef %87, double noundef %88) #4
  store i32 %83, ptr %2, align 4
  %90 = load double, ptr @five, align 8
  %91 = fneg double %90
  %92 = load double, ptr @one, align 8
  %93 = fneg double %92
  store double %93, ptr @sa, align 8
  %94 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %smax = call i32 @llvm.smax.i32(i32 %83, i32 0)
  %95 = add nuw i32 %smax, 1
  br label %96

96:                                               ; preds = %99, %49
  %97 = phi double [ %100, %99 ], [ %91, %49 ]
  %98 = phi i32 [ %103, %99 ], [ 1, %49 ]
  %exitcond10 = icmp eq i32 %98, %95
  br i1 %exitcond10, label %104, label %99

99:                                               ; preds = %96
  %100 = fneg double %97
  %101 = load double, ptr @sa, align 8
  %102 = fsub double %101, %97
  store double %102, ptr @sa, align 8
  %103 = add nuw i32 %98, 1
  br label %96, !llvm.loop !11

104:                                              ; preds = %96
  %.lcssa8 = phi double [ %97, %96 ]
  %105 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %106 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %107 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %108 = fmul double %106, %107
  %109 = fcmp olt double %108, 0.000000e+00
  %storemerge = select i1 %109, double 0.000000e+00, double %108
  store double %storemerge, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %110 = sitofp i32 %83 to double
  store double %110, ptr @sc, align 8
  %111 = load double, ptr @sa, align 8
  store double 0.000000e+00, ptr %1, align 8
  %112 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %113

113:                                              ; preds = %119, %104
  %114 = phi double [ %124, %119 ], [ %111, %104 ]
  %115 = phi double [ %120, %119 ], [ %.lcssa8, %104 ]
  %116 = phi double [ %127, %119 ], [ 0.000000e+00, %104 ]
  %117 = phi double [ %126, %119 ], [ 0.000000e+00, %104 ]
  %118 = phi i32 [ %131, %119 ], [ 1, %104 ]
  %exitcond11 = icmp eq i32 %118, %95
  br i1 %exitcond11, label %132, label %119

119:                                              ; preds = %113
  %120 = fneg double %115
  %121 = load double, ptr @sa, align 8
  %122 = fsub double %121, %115
  store double %122, ptr @sa, align 8
  %123 = load double, ptr @two, align 8
  %124 = fadd double %114, %123
  %125 = fsub double %120, %124
  %126 = fadd double %117, %125
  %127 = call double @llvm.fmuladd.f64(double %115, double %124, double %116)
  %128 = load double, ptr %1, align 8
  %129 = fdiv double %115, %124
  %130 = fsub double %128, %129
  store double %130, ptr %1, align 8
  %131 = add nuw i32 %118, 1
  br label %113, !llvm.loop !12

132:                                              ; preds = %113
  %.lcssa7 = phi double [ %116, %113 ]
  %.lcssa6 = phi double [ %117, %113 ]
  %133 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %134 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %135 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %136 = fmul double %134, %135
  store double %136, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %137 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %138 = fsub double %136, %137
  %139 = fdiv double %138, 7.000000e+00
  store double %139, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %140 = load double, ptr @sa, align 8
  %141 = fmul double %140, %.lcssa6
  %142 = load double, ptr @sc, align 8
  %143 = fdiv double %141, %142
  %144 = fptosi double %143 to i32
  store i32 %144, ptr %2, align 4
  %145 = load double, ptr @four, align 8
  %146 = load double, ptr %1, align 8
  %147 = fmul double %145, %146
  %148 = load double, ptr @five, align 8
  %149 = fdiv double %147, %148
  store double %149, ptr @sa, align 8
  %150 = fdiv double %148, %.lcssa7
  %151 = fadd double %149, %150
  store double %151, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %152 = fmul double %.lcssa7, %.lcssa7
  %153 = fmul double %152, %.lcssa7
  %154 = fdiv double 3.125000e+01, %153
  %155 = fsub double %151, %154
  store double %155, ptr @piprg, align 8
  %156 = load double, ptr @piref, align 8
  %157 = fsub double %155, %156
  store double %157, ptr @pierr, align 8
  %158 = load double, ptr @one, align 8
  %159 = fdiv double %158, %139
  store double %159, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %160 = fmul double %157, 1.000000e-30
  %161 = fmul double %138, 1.000000e-30
  %162 = fmul double %159, 1.000000e-30
  %163 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %160, double noundef %161, double noundef %162) #4
  %164 = load double, ptr @piref, align 8
  %165 = load double, ptr @three, align 8
  %166 = sitofp i32 %144 to double
  %167 = fmul double %165, %166
  %168 = fdiv double %164, %167
  %169 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %smax12 = call i32 @llvm.smax.i32(i32 %144, i32 1)
  br label %170

170:                                              ; preds = %174, %132
  %171 = phi double [ %176, %174 ], [ 0.000000e+00, %132 ]
  %172 = phi double [ %193, %174 ], [ 0.000000e+00, %132 ]
  %173 = phi i32 [ %194, %174 ], [ 1, %132 ]
  %exitcond13 = icmp ne i32 %173, %smax12
  br i1 %exitcond13, label %174, label %195

174:                                              ; preds = %170
  %175 = load double, ptr @one, align 8
  %176 = fadd double %171, %175
  %177 = fmul double %176, %168
  %178 = fmul double %177, %177
  store double %178, ptr %1, align 8
  %179 = load double, ptr @A6, align 8
  %180 = load double, ptr @A5, align 8
  %181 = fneg double %180
  %182 = call double @llvm.fmuladd.f64(double %179, double %178, double %181)
  %183 = load double, ptr @A4, align 8
  %184 = call double @llvm.fmuladd.f64(double %182, double %178, double %183)
  %185 = load double, ptr @A3, align 8
  %186 = fneg double %185
  %187 = call double @llvm.fmuladd.f64(double %184, double %178, double %186)
  %188 = load double, ptr @A2, align 8
  %189 = call double @llvm.fmuladd.f64(double %187, double %178, double %188)
  %190 = load double, ptr @A1, align 8
  %191 = call double @llvm.fmuladd.f64(double %189, double %178, double %190)
  %192 = call double @llvm.fmuladd.f64(double %191, double %178, double %175)
  %193 = call double @llvm.fmuladd.f64(double %177, double %192, double %172)
  %194 = add nuw i32 %173, 1
  br label %170, !llvm.loop !13

195:                                              ; preds = %170
  %.lcssa5 = phi double [ %172, %170 ]
  %196 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %197 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %198 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %199 = load double, ptr @nulltime, align 8
  %200 = fneg double %199
  %201 = call double @llvm.fmuladd.f64(double %197, double %198, double %200)
  store double %201, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %202 = load double, ptr @piref, align 8
  %203 = load double, ptr @three, align 8
  %204 = fdiv double %202, %203
  %205 = fmul double %204, %204
  store double %205, ptr %1, align 8
  %206 = load double, ptr @A6, align 8
  %207 = load double, ptr @A5, align 8
  %208 = fneg double %207
  %209 = call double @llvm.fmuladd.f64(double %206, double %205, double %208)
  %210 = load double, ptr @A4, align 8
  %211 = call double @llvm.fmuladd.f64(double %209, double %205, double %210)
  %212 = load double, ptr @A3, align 8
  %213 = fneg double %212
  %214 = call double @llvm.fmuladd.f64(double %211, double %205, double %213)
  %215 = load double, ptr @A2, align 8
  %216 = call double @llvm.fmuladd.f64(double %214, double %205, double %215)
  %217 = load double, ptr @A1, align 8
  %218 = call double @llvm.fmuladd.f64(double %216, double %205, double %217)
  %219 = load double, ptr @one, align 8
  %220 = call double @llvm.fmuladd.f64(double %218, double %205, double %219)
  %221 = fmul double %204, %220
  store double %221, ptr @sa, align 8
  %222 = fdiv double %201, 1.700000e+01
  store double %222, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %223 = load double, ptr @two, align 8
  %224 = call double @llvm.fmuladd.f64(double %223, double %.lcssa5, double %221)
  %225 = fmul double %168, %224
  %226 = fdiv double %225, %223
  store double %226, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %227 = fadd double %226, -5.000000e-01
  store double %227, ptr @sc, align 8
  %228 = fdiv double %219, %222
  store double %228, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %229 = fmul double %227, 1.000000e-30
  %230 = fmul double %201, 1.000000e-30
  %231 = fmul double %228, 1.000000e-30
  %232 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %229, double noundef %230, double noundef %231) #4
  %233 = load double, ptr @A3, align 8
  %234 = fneg double %233
  store double %234, ptr @A3, align 8
  %235 = load double, ptr @A5, align 8
  %236 = fneg double %235
  store double %236, ptr @A5, align 8
  %237 = load double, ptr @piref, align 8
  %238 = load double, ptr @three, align 8
  %239 = fmul double %238, %166
  %240 = fdiv double %237, %239
  %241 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %242

242:                                              ; preds = %245, %195
  %243 = phi double [ %262, %245 ], [ 0.000000e+00, %195 ]
  %244 = phi i32 [ %263, %245 ], [ 1, %195 ]
  %exitcond14 = icmp ne i32 %244, %smax12
  br i1 %exitcond14, label %245, label %264

245:                                              ; preds = %242
  %246 = uitofp nneg i32 %244 to double
  %247 = fmul double %240, %246
  %248 = fmul double %247, %247
  store double %248, ptr %1, align 8
  %249 = load double, ptr @B6, align 8
  %250 = load double, ptr @B5, align 8
  %251 = call double @llvm.fmuladd.f64(double %249, double %248, double %250)
  %252 = load double, ptr @B4, align 8
  %253 = call double @llvm.fmuladd.f64(double %248, double %251, double %252)
  %254 = load double, ptr @B3, align 8
  %255 = call double @llvm.fmuladd.f64(double %248, double %253, double %254)
  %256 = load double, ptr @B2, align 8
  %257 = call double @llvm.fmuladd.f64(double %248, double %255, double %256)
  %258 = load double, ptr @B1, align 8
  %259 = call double @llvm.fmuladd.f64(double %248, double %257, double %258)
  %260 = call double @llvm.fmuladd.f64(double %248, double %259, double %243)
  %261 = load double, ptr @one, align 8
  %262 = fadd double %260, %261
  %263 = add nuw i32 %244, 1
  br label %242, !llvm.loop !14

264:                                              ; preds = %242
  %.lcssa4 = phi double [ %243, %242 ]
  %265 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %266 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %267 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %268 = load double, ptr @nulltime, align 8
  %269 = fneg double %268
  %270 = call double @llvm.fmuladd.f64(double %266, double %267, double %269)
  store double %270, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %271 = load double, ptr @piref, align 8
  %272 = load double, ptr @three, align 8
  %273 = fdiv double %271, %272
  %274 = fmul double %273, %273
  store double %274, ptr %1, align 8
  %275 = load double, ptr @B6, align 8
  %276 = load double, ptr @B5, align 8
  %277 = call double @llvm.fmuladd.f64(double %275, double %274, double %276)
  %278 = load double, ptr @B4, align 8
  %279 = call double @llvm.fmuladd.f64(double %274, double %277, double %278)
  %280 = load double, ptr @B3, align 8
  %281 = call double @llvm.fmuladd.f64(double %274, double %279, double %280)
  %282 = load double, ptr @B2, align 8
  %283 = call double @llvm.fmuladd.f64(double %274, double %281, double %282)
  %284 = load double, ptr @B1, align 8
  %285 = call double @llvm.fmuladd.f64(double %274, double %283, double %284)
  %286 = load double, ptr @one, align 8
  %287 = call double @llvm.fmuladd.f64(double %274, double %285, double %286)
  store double %287, ptr @sa, align 8
  %288 = fdiv double %270, 1.500000e+01
  store double %288, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %289 = fadd double %287, %286
  %290 = load double, ptr @two, align 8
  %291 = call double @llvm.fmuladd.f64(double %290, double %.lcssa4, double %289)
  %292 = fmul double %240, %291
  %293 = fdiv double %292, %290
  store double %293, ptr @sa, align 8
  store double %274, ptr %1, align 8
  %294 = load double, ptr @A6, align 8
  %295 = load double, ptr @A5, align 8
  %296 = call double @llvm.fmuladd.f64(double %294, double %274, double %295)
  %297 = load double, ptr @A4, align 8
  %298 = call double @llvm.fmuladd.f64(double %296, double %274, double %297)
  %299 = load double, ptr @A3, align 8
  %300 = call double @llvm.fmuladd.f64(double %298, double %274, double %299)
  %301 = load double, ptr @A2, align 8
  %302 = call double @llvm.fmuladd.f64(double %300, double %274, double %301)
  %303 = load double, ptr @A1, align 8
  %304 = call double @llvm.fmuladd.f64(double %302, double %274, double %303)
  %305 = load double, ptr @A0, align 8
  %306 = call double @llvm.fmuladd.f64(double %304, double %274, double %305)
  %307 = fmul double %273, %306
  store double %307, ptr @sb, align 8
  %308 = fsub double %293, %307
  store double %308, ptr @sc, align 8
  %309 = fdiv double %286, %288
  store double %309, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %310 = fmul double %308, 1.000000e-30
  %311 = fmul double %270, 1.000000e-30
  %312 = fmul double %309, 1.000000e-30
  %313 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %310, double noundef %311, double noundef %312) #4
  %314 = load double, ptr @piref, align 8
  %315 = load double, ptr @three, align 8
  %316 = fmul double %315, %166
  %317 = fdiv double %314, %316
  %318 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %319

319:                                              ; preds = %322, %264
  %320 = phi double [ %353, %322 ], [ 0.000000e+00, %264 ]
  %321 = phi i32 [ %354, %322 ], [ 1, %264 ]
  %exitcond15 = icmp ne i32 %321, %smax12
  br i1 %exitcond15, label %322, label %355

322:                                              ; preds = %319
  %323 = uitofp nneg i32 %321 to double
  %324 = fmul double %317, %323
  %325 = fmul double %324, %324
  store double %325, ptr %1, align 8
  %326 = load double, ptr @A6, align 8
  %327 = load double, ptr @A5, align 8
  %328 = call double @llvm.fmuladd.f64(double %326, double %325, double %327)
  %329 = load double, ptr @A4, align 8
  %330 = call double @llvm.fmuladd.f64(double %328, double %325, double %329)
  %331 = load double, ptr @A3, align 8
  %332 = call double @llvm.fmuladd.f64(double %330, double %325, double %331)
  %333 = load double, ptr @A2, align 8
  %334 = call double @llvm.fmuladd.f64(double %332, double %325, double %333)
  %335 = load double, ptr @A1, align 8
  %336 = call double @llvm.fmuladd.f64(double %334, double %325, double %335)
  %337 = load double, ptr @one, align 8
  %338 = call double @llvm.fmuladd.f64(double %336, double %325, double %337)
  %339 = fmul double %324, %338
  %340 = load double, ptr @B6, align 8
  %341 = load double, ptr @B5, align 8
  %342 = call double @llvm.fmuladd.f64(double %340, double %325, double %341)
  %343 = load double, ptr @B4, align 8
  %344 = call double @llvm.fmuladd.f64(double %325, double %342, double %343)
  %345 = load double, ptr @B3, align 8
  %346 = call double @llvm.fmuladd.f64(double %325, double %344, double %345)
  %347 = load double, ptr @B2, align 8
  %348 = call double @llvm.fmuladd.f64(double %325, double %346, double %347)
  %349 = load double, ptr @B1, align 8
  %350 = call double @llvm.fmuladd.f64(double %325, double %348, double %349)
  %351 = call double @llvm.fmuladd.f64(double %325, double %350, double %337)
  %352 = fdiv double %339, %351
  %353 = fadd double %320, %352
  %354 = add nuw i32 %321, 1
  br label %319, !llvm.loop !15

355:                                              ; preds = %319
  %.lcssa3 = phi double [ %320, %319 ]
  %356 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %357 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %358 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %359 = load double, ptr @nulltime, align 8
  %360 = fneg double %359
  %361 = call double @llvm.fmuladd.f64(double %357, double %358, double %360)
  store double %361, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %362 = load double, ptr @piref, align 8
  %363 = load double, ptr @three, align 8
  %364 = fdiv double %362, %363
  %365 = fmul double %364, %364
  store double %365, ptr %1, align 8
  %366 = load double, ptr @A6, align 8
  %367 = load double, ptr @A5, align 8
  %368 = call double @llvm.fmuladd.f64(double %366, double %365, double %367)
  %369 = load double, ptr @A4, align 8
  %370 = call double @llvm.fmuladd.f64(double %368, double %365, double %369)
  %371 = load double, ptr @A3, align 8
  %372 = call double @llvm.fmuladd.f64(double %370, double %365, double %371)
  %373 = load double, ptr @A2, align 8
  %374 = call double @llvm.fmuladd.f64(double %372, double %365, double %373)
  %375 = load double, ptr @A1, align 8
  %376 = call double @llvm.fmuladd.f64(double %374, double %365, double %375)
  %377 = load double, ptr @one, align 8
  %378 = call double @llvm.fmuladd.f64(double %376, double %365, double %377)
  %379 = fmul double %364, %378
  store double %379, ptr @sa, align 8
  %380 = load double, ptr @B6, align 8
  %381 = load double, ptr @B5, align 8
  %382 = call double @llvm.fmuladd.f64(double %380, double %365, double %381)
  %383 = load double, ptr @B4, align 8
  %384 = call double @llvm.fmuladd.f64(double %365, double %382, double %383)
  %385 = load double, ptr @B3, align 8
  %386 = call double @llvm.fmuladd.f64(double %365, double %384, double %385)
  %387 = load double, ptr @B2, align 8
  %388 = call double @llvm.fmuladd.f64(double %365, double %386, double %387)
  %389 = load double, ptr @B1, align 8
  %390 = call double @llvm.fmuladd.f64(double %365, double %388, double %389)
  %391 = call double @llvm.fmuladd.f64(double %365, double %390, double %377)
  store double %391, ptr @sb, align 8
  %392 = fdiv double %379, %391
  store double %392, ptr @sa, align 8
  %393 = fdiv double %361, 2.900000e+01
  store double %393, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %394 = load double, ptr @two, align 8
  %395 = call double @llvm.fmuladd.f64(double %394, double %.lcssa3, double %392)
  %396 = fmul double %317, %395
  %397 = fdiv double %396, %394
  store double %397, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %398 = fadd double %397, f0xBFE62E42FEFA39EF
  store double %398, ptr @sc, align 8
  %399 = fdiv double %377, %393
  store double %399, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %400 = fmul double %398, 1.000000e-30
  %401 = fmul double %361, 1.000000e-30
  %402 = fmul double %399, 1.000000e-30
  %403 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %400, double noundef %401, double noundef %402) #4
  %404 = load double, ptr @piref, align 8
  %405 = load double, ptr @four, align 8
  %406 = fmul double %405, %166
  %407 = fdiv double %404, %406
  %408 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %409

409:                                              ; preds = %412, %355
  %410 = phi double [ %442, %412 ], [ 0.000000e+00, %355 ]
  %411 = phi i32 [ %443, %412 ], [ 1, %355 ]
  %exitcond16 = icmp ne i32 %411, %smax12
  br i1 %exitcond16, label %412, label %444

412:                                              ; preds = %409
  %413 = uitofp nneg i32 %411 to double
  %414 = fmul double %407, %413
  %415 = fmul double %414, %414
  store double %415, ptr %1, align 8
  %416 = load double, ptr @A6, align 8
  %417 = load double, ptr @A5, align 8
  %418 = call double @llvm.fmuladd.f64(double %416, double %415, double %417)
  %419 = load double, ptr @A4, align 8
  %420 = call double @llvm.fmuladd.f64(double %418, double %415, double %419)
  %421 = load double, ptr @A3, align 8
  %422 = call double @llvm.fmuladd.f64(double %420, double %415, double %421)
  %423 = load double, ptr @A2, align 8
  %424 = call double @llvm.fmuladd.f64(double %422, double %415, double %423)
  %425 = load double, ptr @A1, align 8
  %426 = call double @llvm.fmuladd.f64(double %424, double %415, double %425)
  %427 = load double, ptr @one, align 8
  %428 = call double @llvm.fmuladd.f64(double %426, double %415, double %427)
  %429 = fmul double %414, %428
  %430 = load double, ptr @B6, align 8
  %431 = load double, ptr @B5, align 8
  %432 = call double @llvm.fmuladd.f64(double %430, double %415, double %431)
  %433 = load double, ptr @B4, align 8
  %434 = call double @llvm.fmuladd.f64(double %415, double %432, double %433)
  %435 = load double, ptr @B3, align 8
  %436 = call double @llvm.fmuladd.f64(double %415, double %434, double %435)
  %437 = load double, ptr @B2, align 8
  %438 = call double @llvm.fmuladd.f64(double %415, double %436, double %437)
  %439 = load double, ptr @B1, align 8
  %440 = call double @llvm.fmuladd.f64(double %415, double %438, double %439)
  %441 = call double @llvm.fmuladd.f64(double %415, double %440, double %427)
  %442 = call double @llvm.fmuladd.f64(double %429, double %441, double %410)
  %443 = add nuw i32 %411, 1
  br label %409, !llvm.loop !16

444:                                              ; preds = %409
  %.lcssa2 = phi double [ %410, %409 ]
  %445 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %446 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %447 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %448 = load double, ptr @nulltime, align 8
  %449 = fneg double %448
  %450 = call double @llvm.fmuladd.f64(double %446, double %447, double %449)
  store double %450, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %451 = load double, ptr @piref, align 8
  %452 = load double, ptr @four, align 8
  %453 = fdiv double %451, %452
  %454 = fmul double %453, %453
  store double %454, ptr %1, align 8
  %455 = load double, ptr @A6, align 8
  %456 = load double, ptr @A5, align 8
  %457 = call double @llvm.fmuladd.f64(double %455, double %454, double %456)
  %458 = load double, ptr @A4, align 8
  %459 = call double @llvm.fmuladd.f64(double %457, double %454, double %458)
  %460 = load double, ptr @A3, align 8
  %461 = call double @llvm.fmuladd.f64(double %459, double %454, double %460)
  %462 = load double, ptr @A2, align 8
  %463 = call double @llvm.fmuladd.f64(double %461, double %454, double %462)
  %464 = load double, ptr @A1, align 8
  %465 = call double @llvm.fmuladd.f64(double %463, double %454, double %464)
  %466 = load double, ptr @one, align 8
  %467 = call double @llvm.fmuladd.f64(double %465, double %454, double %466)
  %468 = fmul double %453, %467
  store double %468, ptr @sa, align 8
  %469 = load double, ptr @B6, align 8
  %470 = load double, ptr @B5, align 8
  %471 = call double @llvm.fmuladd.f64(double %469, double %454, double %470)
  %472 = load double, ptr @B4, align 8
  %473 = call double @llvm.fmuladd.f64(double %454, double %471, double %472)
  %474 = load double, ptr @B3, align 8
  %475 = call double @llvm.fmuladd.f64(double %454, double %473, double %474)
  %476 = load double, ptr @B2, align 8
  %477 = call double @llvm.fmuladd.f64(double %454, double %475, double %476)
  %478 = load double, ptr @B1, align 8
  %479 = call double @llvm.fmuladd.f64(double %454, double %477, double %478)
  %480 = call double @llvm.fmuladd.f64(double %454, double %479, double %466)
  store double %480, ptr @sb, align 8
  %481 = fmul double %468, %480
  store double %481, ptr @sa, align 8
  %482 = fdiv double %450, 2.900000e+01
  store double %482, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %483 = load double, ptr @two, align 8
  %484 = call double @llvm.fmuladd.f64(double %483, double %.lcssa2, double %481)
  %485 = fmul double %407, %484
  %486 = fdiv double %485, %483
  store double %486, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %487 = fadd double %486, -2.500000e-01
  store double %487, ptr @sc, align 8
  %488 = fdiv double %466, %482
  store double %488, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %489 = fmul double %487, 1.000000e-30
  %490 = fmul double %450, 1.000000e-30
  %491 = fmul double %488, 1.000000e-30
  %492 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %489, double noundef %490, double noundef %491) #4
  %493 = load double, ptr @one, align 8
  store double %493, ptr %1, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %494 = fdiv double f0x40599541F7F192A4, %166
  %495 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %496

496:                                              ; preds = %499, %444
  %497 = phi double [ %512, %499 ], [ 0.000000e+00, %444 ]
  %498 = phi i32 [ %513, %499 ], [ 1, %444 ]
  %exitcond17 = icmp ne i32 %498, %smax12
  br i1 %exitcond17, label %499, label %514

499:                                              ; preds = %496
  %500 = uitofp nneg i32 %498 to double
  %501 = fmul double %494, %500
  %502 = fmul double %501, %501
  %503 = load double, ptr %1, align 8
  %504 = fadd double %501, %503
  %505 = fdiv double %503, %504
  %506 = fsub double %497, %505
  %507 = fadd double %502, %503
  %508 = fdiv double %501, %507
  %509 = fsub double %506, %508
  %510 = call double @llvm.fmuladd.f64(double %501, double %502, double %503)
  %511 = fdiv double %502, %510
  %512 = fsub double %509, %511
  %513 = add nuw i32 %498, 1
  br label %496, !llvm.loop !17

514:                                              ; preds = %496
  %.lcssa1 = phi double [ %497, %496 ]
  %515 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %516 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %517 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %518 = load double, ptr @nulltime, align 8
  %519 = fneg double %518
  %520 = call double @llvm.fmuladd.f64(double %516, double %517, double %519)
  store double %520, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %521 = fdiv double %520, 1.200000e+01
  store double %521, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %522 = load double, ptr @sa, align 8
  %523 = fmul double %522, %522
  %524 = load double, ptr %1, align 8
  %525 = fneg double %524
  %526 = fadd double %522, %524
  %527 = fdiv double %524, %526
  %528 = fsub double %525, %527
  %529 = fadd double %523, %524
  %530 = fdiv double %522, %529
  %531 = fsub double %528, %530
  %532 = call double @llvm.fmuladd.f64(double %522, double %523, double %524)
  %533 = fdiv double %523, %532
  %534 = fsub double %531, %533
  store double %534, ptr @sa, align 8
  %535 = fmul nnan double %494, 1.800000e+01
  %536 = load double, ptr @two, align 8
  %537 = call double @llvm.fmuladd.f64(double %536, double %.lcssa1, double %534)
  %538 = fmul double %535, %537
  store double %538, ptr @sa, align 8
  %539 = fptosi double %538 to i32
  %540 = mul nsw i32 %539, -2000
  store i32 %540, ptr %2, align 4
  %541 = sitofp i32 %540 to double
  %542 = load double, ptr @scale, align 8
  %543 = fdiv double %541, %542
  %544 = fptosi double %543 to i32
  store i32 %544, ptr %2, align 4
  %545 = fadd double %538, 5.002000e+02
  store double %545, ptr @sc, align 8
  %546 = load double, ptr @one, align 8
  %547 = fdiv double %546, %521
  store double %547, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %548 = fmul double %545, 1.000000e-30
  %549 = fmul double %520, 1.000000e-30
  %550 = fmul double %547, 1.000000e-30
  %551 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %548, double noundef %549, double noundef %550) #4
  %552 = load double, ptr @piref, align 8
  %553 = load double, ptr @three, align 8
  %554 = sitofp i32 %544 to double
  %555 = fmul double %553, %554
  %556 = fdiv double %552, %555
  %557 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %smax18 = call i32 @llvm.smax.i32(i32 %544, i32 1)
  br label %558

558:                                              ; preds = %561, %514
  %559 = phi double [ %592, %561 ], [ 0.000000e+00, %514 ]
  %560 = phi i32 [ %593, %561 ], [ 1, %514 ]
  %exitcond19 = icmp ne i32 %560, %smax18
  br i1 %exitcond19, label %561, label %594

561:                                              ; preds = %558
  %562 = uitofp nneg i32 %560 to double
  %563 = fmul double %556, %562
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
  %579 = fmul double %578, %563
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
  %592 = call double @llvm.fmuladd.f64(double %579, double %591, double %559)
  %593 = add nuw i32 %560, 1
  br label %558, !llvm.loop !18

594:                                              ; preds = %558
  %.lcssa = phi double [ %559, %558 ]
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
  %632 = fmul double %631, %630
  store double %632, ptr @sa, align 8
  %633 = fdiv double %600, 3.000000e+01
  store double %633, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %634 = load double, ptr @two, align 8
  %635 = call double @llvm.fmuladd.f64(double %634, double %.lcssa, double %632)
  %636 = fmul double %556, %635
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
  %654 = fadd double %653, %648
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
