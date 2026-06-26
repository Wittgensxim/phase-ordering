; ModuleID = 'results\paper_full\Misc_flops\round_005\output.ll'
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

3:                                                ; preds = %36, %0
  %4 = phi double [ undef, %0 ], [ %.lcssa10, %36 ]
  %5 = phi double [ undef, %0 ], [ %14, %36 ]
  %6 = phi i32 [ 15625, %0 ], [ %11, %36 ]
  %7 = phi double [ 0.000000e+00, %0 ], [ %38, %36 ]
  %8 = load double, ptr @TLimit, align 8
  %9 = fcmp olt double %7, %8
  br i1 %9, label %10, label %.loopexit

10:                                               ; preds = %3
  %11 = shl i32 %6, 1
  %12 = load double, ptr @one, align 8
  %13 = sitofp i32 %11 to double
  %14 = fdiv double %12, %13
  %15 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %16 = load double, ptr @D1, align 8
  %17 = load double, ptr @D2, align 8
  %18 = load double, ptr @D3, align 8
  %19 = load double, ptr @E2, align 8
  %20 = load double, ptr @E3, align 8
  br label %21

21:                                               ; preds = %25, %10
  %22 = phi double [ %26, %25 ], [ 0.000000e+00, %10 ]
  %23 = phi double [ %34, %25 ], [ 0.000000e+00, %10 ]
  %24 = phi i32 [ %35, %25 ], [ 1, %10 ]
  %exitcond = icmp ne i32 %24, %11
  br i1 %exitcond, label %25, label %36

25:                                               ; preds = %21
  %26 = fadd double %22, %12
  %27 = fmul double %26, %14
  %28 = call double @llvm.fmuladd.f64(double %27, double %18, double %17)
  %29 = call double @llvm.fmuladd.f64(double %27, double %28, double %16)
  %30 = call double @llvm.fmuladd.f64(double %27, double %20, double %19)
  %31 = call double @llvm.fmuladd.f64(double %27, double %30, double %16)
  %32 = call double @llvm.fmuladd.f64(double %27, double %31, double %12)
  %33 = fdiv double %29, %32
  %34 = fadd double %23, %33
  %35 = add nuw nsw i32 %24, 1
  br label %21, !llvm.loop !7

36:                                               ; preds = %21
  %.lcssa10 = phi double [ %23, %21 ]
  %37 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %38 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %38, ptr @sa, align 8
  %39 = icmp eq i32 %6, 256000000
  br i1 %39, label %.loopexit, label %3, !llvm.loop !9

.loopexit:                                        ; preds = %3, %36
  %40 = phi double [ %.lcssa10, %36 ], [ %4, %3 ]
  %41 = phi double [ %14, %36 ], [ %5, %3 ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %42 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %43

43:                                               ; preds = %44, %.loopexit
  br i1 false, label %44, label %45

44:                                               ; preds = %43
  br label %43, !llvm.loop !10

45:                                               ; preds = %43
  %46 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %47 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %48 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %49 = fmul double %47, %48
  %50 = fcmp olt double %49, 0.000000e+00
  %51 = select i1 %50, double 0.000000e+00, double %49
  store double %51, ptr @nulltime, align 8
  %52 = load double, ptr @sa, align 8
  %53 = fneg double %51
  %54 = call double @llvm.fmuladd.f64(double %47, double %52, double %53)
  store double %54, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %55 = load double, ptr @D1, align 8
  %56 = load double, ptr @D2, align 8
  %57 = fadd double %55, %56
  %58 = load double, ptr @D3, align 8
  %59 = fadd double %57, %58
  %60 = load double, ptr @one, align 8
  %61 = fadd double %60, %55
  %62 = load double, ptr @E2, align 8
  %63 = fadd double %61, %62
  %64 = load double, ptr @E3, align 8
  %65 = fadd double %63, %64
  %66 = fdiv double %59, %65
  store double %66, ptr @sa, align 8
  store double %55, ptr @sb, align 8
  %67 = fdiv double %54, 1.400000e+01
  store double %67, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %68 = fadd double %66, %55
  %69 = load double, ptr @two, align 8
  %70 = call double @llvm.fmuladd.f64(double %69, double %40, double %68)
  %71 = fmul double %41, %70
  %72 = fdiv double %71, %69
  store double %72, ptr @sa, align 8
  %73 = fdiv double %60, %72
  store double %73, ptr @sb, align 8
  %74 = fptosi double %73 to i32
  %75 = mul nsw i32 %74, 40000
  %76 = sitofp i32 %75 to double
  %77 = load double, ptr @scale, align 8
  %78 = fdiv double %76, %77
  %79 = fptosi double %78 to i32
  %80 = fadd double %73, -2.520000e+01
  store double %80, ptr @sc, align 8
  %81 = fdiv double %60, %67
  store double %81, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %82 = fmul double %80, 1.000000e-30
  %83 = fmul double %54, 1.000000e-30
  %84 = fmul double %81, 1.000000e-30
  %85 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %82, double noundef %83, double noundef %84) #4
  %86 = load double, ptr @five, align 8
  %87 = fneg double %86
  %88 = load double, ptr @one, align 8
  %89 = fneg double %88
  store double %89, ptr @sa, align 8
  %90 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %sa.promoted = load double, ptr @sa, align 8
  %smax = call i32 @llvm.smax.i32(i32 %79, i32 0)
  %91 = add nuw i32 %smax, 1
  br label %92

92:                                               ; preds = %96, %45
  %93 = phi double [ %98, %96 ], [ %sa.promoted, %45 ]
  %94 = phi double [ %97, %96 ], [ %87, %45 ]
  %95 = phi i32 [ %99, %96 ], [ 1, %45 ]
  %exitcond11 = icmp eq i32 %95, %91
  br i1 %exitcond11, label %100, label %96

96:                                               ; preds = %92
  %97 = fneg double %94
  %98 = fsub double %93, %94
  store double %98, ptr @sa, align 8
  %99 = add nuw i32 %95, 1
  br label %92, !llvm.loop !11

100:                                              ; preds = %92
  %.lcssa9 = phi double [ %94, %92 ]
  %101 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %102 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %103 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %104 = fmul double %102, %103
  %105 = fcmp olt double %104, 0.000000e+00
  %storemerge = select i1 %105, double 0.000000e+00, double %104
  store double %storemerge, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %106 = sitofp i32 %79 to double
  store double %106, ptr @sc, align 8
  %107 = load double, ptr @sa, align 8
  %108 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %109 = load double, ptr @two, align 8
  %sa.promoted18 = load double, ptr @sa, align 8
  br label %110

110:                                              ; preds = %118, %100
  %111 = phi double [ %120, %118 ], [ %sa.promoted18, %100 ]
  %112 = phi double [ %126, %118 ], [ 0.000000e+00, %100 ]
  %113 = phi double [ %121, %118 ], [ %107, %100 ]
  %114 = phi double [ %119, %118 ], [ %.lcssa9, %100 ]
  %115 = phi double [ %124, %118 ], [ 0.000000e+00, %100 ]
  %116 = phi double [ %123, %118 ], [ 0.000000e+00, %100 ]
  %117 = phi i32 [ %127, %118 ], [ 1, %100 ]
  %exitcond12 = icmp eq i32 %117, %91
  br i1 %exitcond12, label %128, label %118

118:                                              ; preds = %110
  %119 = fneg double %114
  %120 = fsub double %111, %114
  store double %120, ptr @sa, align 8
  %121 = fadd double %113, %109
  %122 = fsub double %119, %121
  %123 = fadd double %116, %122
  %124 = call double @llvm.fmuladd.f64(double %114, double %121, double %115)
  %125 = fdiv double %114, %121
  %126 = fsub double %112, %125
  %127 = add nuw i32 %117, 1
  br label %110, !llvm.loop !12

128:                                              ; preds = %110
  %.lcssa8 = phi double [ %112, %110 ]
  %.lcssa7 = phi double [ %115, %110 ]
  %.lcssa6 = phi double [ %116, %110 ]
  %129 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %130 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %131 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %132 = fmul double %130, %131
  store double %132, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %133 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %134 = fsub double %132, %133
  %135 = fdiv double %134, 7.000000e+00
  store double %135, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %136 = load double, ptr @sa, align 8
  %137 = fmul double %136, %.lcssa6
  %138 = load double, ptr @sc, align 8
  %139 = fdiv double %137, %138
  %140 = fptosi double %139 to i32
  %141 = load double, ptr @four, align 8
  %142 = fmul double %141, %.lcssa8
  %143 = load double, ptr @five, align 8
  %144 = fdiv double %142, %143
  store double %144, ptr @sa, align 8
  %145 = fdiv double %143, %.lcssa7
  %146 = fadd double %144, %145
  store double %146, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %147 = fmul double %.lcssa7, %.lcssa7
  %148 = fmul double %147, %.lcssa7
  %149 = fdiv double 3.125000e+01, %148
  %150 = fsub double %146, %149
  store double %150, ptr @piprg, align 8
  %151 = load double, ptr @piref, align 8
  %152 = fsub double %150, %151
  store double %152, ptr @pierr, align 8
  %153 = load double, ptr @one, align 8
  %154 = fdiv double %153, %135
  store double %154, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %155 = fmul double %152, 1.000000e-30
  %156 = fmul double %134, 1.000000e-30
  %157 = fmul double %154, 1.000000e-30
  %158 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %155, double noundef %156, double noundef %157) #4
  %159 = load double, ptr @piref, align 8
  %160 = load double, ptr @three, align 8
  %161 = sitofp i32 %140 to double
  %162 = fmul double %160, %161
  %163 = fdiv double %159, %162
  %164 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %165 = load double, ptr @one, align 8
  %166 = load double, ptr @A6, align 8
  %167 = load double, ptr @A5, align 8
  %168 = fneg double %167
  %169 = load double, ptr @A4, align 8
  %170 = load double, ptr @A3, align 8
  %171 = fneg double %170
  %172 = load double, ptr @A2, align 8
  %173 = load double, ptr @A1, align 8
  %smax13 = call i32 @llvm.smax.i32(i32 %140, i32 1)
  br label %174

174:                                              ; preds = %178, %128
  %175 = phi double [ %179, %178 ], [ 0.000000e+00, %128 ]
  %176 = phi double [ %188, %178 ], [ 0.000000e+00, %128 ]
  %177 = phi i32 [ %189, %178 ], [ 1, %128 ]
  %exitcond14 = icmp ne i32 %177, %smax13
  br i1 %exitcond14, label %178, label %190

178:                                              ; preds = %174
  %179 = fadd double %175, %165
  %180 = fmul double %179, %163
  %181 = fmul double %180, %180
  %182 = call double @llvm.fmuladd.f64(double %166, double %181, double %168)
  %183 = call double @llvm.fmuladd.f64(double %182, double %181, double %169)
  %184 = call double @llvm.fmuladd.f64(double %183, double %181, double %171)
  %185 = call double @llvm.fmuladd.f64(double %184, double %181, double %172)
  %186 = call double @llvm.fmuladd.f64(double %185, double %181, double %173)
  %187 = call double @llvm.fmuladd.f64(double %186, double %181, double %165)
  %188 = call double @llvm.fmuladd.f64(double %180, double %187, double %176)
  %189 = add nuw i32 %177, 1
  br label %174, !llvm.loop !13

190:                                              ; preds = %174
  %.lcssa5 = phi double [ %176, %174 ]
  %191 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %192 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %193 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %194 = load double, ptr @nulltime, align 8
  %195 = fneg double %194
  %196 = call double @llvm.fmuladd.f64(double %192, double %193, double %195)
  store double %196, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %197 = load double, ptr @piref, align 8
  %198 = load double, ptr @three, align 8
  %199 = fdiv double %197, %198
  %200 = fmul double %199, %199
  %201 = load double, ptr @A6, align 8
  %202 = load double, ptr @A5, align 8
  %203 = fneg double %202
  %204 = call double @llvm.fmuladd.f64(double %201, double %200, double %203)
  %205 = load double, ptr @A4, align 8
  %206 = call double @llvm.fmuladd.f64(double %204, double %200, double %205)
  %207 = load double, ptr @A3, align 8
  %208 = fneg double %207
  %209 = call double @llvm.fmuladd.f64(double %206, double %200, double %208)
  %210 = load double, ptr @A2, align 8
  %211 = call double @llvm.fmuladd.f64(double %209, double %200, double %210)
  %212 = load double, ptr @A1, align 8
  %213 = call double @llvm.fmuladd.f64(double %211, double %200, double %212)
  %214 = load double, ptr @one, align 8
  %215 = call double @llvm.fmuladd.f64(double %213, double %200, double %214)
  %216 = fmul double %199, %215
  store double %216, ptr @sa, align 8
  %217 = fdiv double %196, 1.700000e+01
  store double %217, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %218 = load double, ptr @two, align 8
  %219 = call double @llvm.fmuladd.f64(double %218, double %.lcssa5, double %216)
  %220 = fmul double %163, %219
  %221 = fdiv double %220, %218
  store double %221, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %222 = fadd double %221, -5.000000e-01
  store double %222, ptr @sc, align 8
  %223 = fdiv double %214, %217
  store double %223, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %224 = fmul double %222, 1.000000e-30
  %225 = fmul double %196, 1.000000e-30
  %226 = fmul double %223, 1.000000e-30
  %227 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %224, double noundef %225, double noundef %226) #4
  %228 = load double, ptr @A3, align 8
  %229 = fneg double %228
  store double %229, ptr @A3, align 8
  %230 = load double, ptr @A5, align 8
  %231 = fneg double %230
  store double %231, ptr @A5, align 8
  %232 = load double, ptr @piref, align 8
  %233 = load double, ptr @three, align 8
  %234 = fmul double %233, %161
  %235 = fdiv double %232, %234
  %236 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %237 = load double, ptr @B6, align 8
  %238 = load double, ptr @B5, align 8
  %239 = load double, ptr @B4, align 8
  %240 = load double, ptr @B3, align 8
  %241 = load double, ptr @B2, align 8
  %242 = load double, ptr @B1, align 8
  %243 = load double, ptr @one, align 8
  br label %244

244:                                              ; preds = %247, %190
  %245 = phi double [ %257, %247 ], [ 0.000000e+00, %190 ]
  %246 = phi i32 [ %258, %247 ], [ 1, %190 ]
  %exitcond15 = icmp ne i32 %246, %smax13
  br i1 %exitcond15, label %247, label %259

247:                                              ; preds = %244
  %248 = uitofp nneg i32 %246 to double
  %249 = fmul double %235, %248
  %250 = fmul double %249, %249
  %251 = call double @llvm.fmuladd.f64(double %237, double %250, double %238)
  %252 = call double @llvm.fmuladd.f64(double %250, double %251, double %239)
  %253 = call double @llvm.fmuladd.f64(double %250, double %252, double %240)
  %254 = call double @llvm.fmuladd.f64(double %250, double %253, double %241)
  %255 = call double @llvm.fmuladd.f64(double %250, double %254, double %242)
  %256 = call double @llvm.fmuladd.f64(double %250, double %255, double %245)
  %257 = fadd double %256, %243
  %258 = add nuw i32 %246, 1
  br label %244, !llvm.loop !14

259:                                              ; preds = %244
  %.lcssa4 = phi double [ %245, %244 ]
  %260 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %261 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %262 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %263 = load double, ptr @nulltime, align 8
  %264 = fneg double %263
  %265 = call double @llvm.fmuladd.f64(double %261, double %262, double %264)
  store double %265, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %266 = load double, ptr @piref, align 8
  %267 = load double, ptr @three, align 8
  %268 = fdiv double %266, %267
  %269 = fmul double %268, %268
  %270 = load double, ptr @B6, align 8
  %271 = load double, ptr @B5, align 8
  %272 = call double @llvm.fmuladd.f64(double %270, double %269, double %271)
  %273 = load double, ptr @B4, align 8
  %274 = call double @llvm.fmuladd.f64(double %269, double %272, double %273)
  %275 = load double, ptr @B3, align 8
  %276 = call double @llvm.fmuladd.f64(double %269, double %274, double %275)
  %277 = load double, ptr @B2, align 8
  %278 = call double @llvm.fmuladd.f64(double %269, double %276, double %277)
  %279 = load double, ptr @B1, align 8
  %280 = call double @llvm.fmuladd.f64(double %269, double %278, double %279)
  %281 = load double, ptr @one, align 8
  %282 = call double @llvm.fmuladd.f64(double %269, double %280, double %281)
  store double %282, ptr @sa, align 8
  %283 = fdiv double %265, 1.500000e+01
  store double %283, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %284 = fadd double %282, %281
  %285 = load double, ptr @two, align 8
  %286 = call double @llvm.fmuladd.f64(double %285, double %.lcssa4, double %284)
  %287 = fmul double %235, %286
  %288 = fdiv double %287, %285
  store double %288, ptr @sa, align 8
  %289 = load double, ptr @A6, align 8
  %290 = load double, ptr @A5, align 8
  %291 = call double @llvm.fmuladd.f64(double %289, double %269, double %290)
  %292 = load double, ptr @A4, align 8
  %293 = call double @llvm.fmuladd.f64(double %291, double %269, double %292)
  %294 = load double, ptr @A3, align 8
  %295 = call double @llvm.fmuladd.f64(double %293, double %269, double %294)
  %296 = load double, ptr @A2, align 8
  %297 = call double @llvm.fmuladd.f64(double %295, double %269, double %296)
  %298 = load double, ptr @A1, align 8
  %299 = call double @llvm.fmuladd.f64(double %297, double %269, double %298)
  %300 = load double, ptr @A0, align 8
  %301 = call double @llvm.fmuladd.f64(double %299, double %269, double %300)
  %302 = fmul double %268, %301
  store double %302, ptr @sb, align 8
  %303 = fsub double %288, %302
  store double %303, ptr @sc, align 8
  %304 = fdiv double %281, %283
  store double %304, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %305 = fmul double %303, 1.000000e-30
  %306 = fmul double %265, 1.000000e-30
  %307 = fmul double %304, 1.000000e-30
  %308 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %305, double noundef %306, double noundef %307) #4
  %309 = load double, ptr @piref, align 8
  %310 = load double, ptr @three, align 8
  %311 = fmul double %310, %161
  %312 = fdiv double %309, %311
  %313 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %314 = load double, ptr @A6, align 8
  %315 = load double, ptr @A5, align 8
  %316 = load double, ptr @A4, align 8
  %317 = load double, ptr @A3, align 8
  %318 = load double, ptr @A2, align 8
  %319 = load double, ptr @A1, align 8
  %320 = load double, ptr @one, align 8
  %321 = load double, ptr @B6, align 8
  %322 = load double, ptr @B5, align 8
  %323 = load double, ptr @B4, align 8
  %324 = load double, ptr @B3, align 8
  %325 = load double, ptr @B2, align 8
  %326 = load double, ptr @B1, align 8
  br label %327

327:                                              ; preds = %330, %259
  %328 = phi double [ %348, %330 ], [ 0.000000e+00, %259 ]
  %329 = phi i32 [ %349, %330 ], [ 1, %259 ]
  %exitcond16 = icmp ne i32 %329, %smax13
  br i1 %exitcond16, label %330, label %350

330:                                              ; preds = %327
  %331 = uitofp nneg i32 %329 to double
  %332 = fmul double %312, %331
  %333 = fmul double %332, %332
  %334 = call double @llvm.fmuladd.f64(double %314, double %333, double %315)
  %335 = call double @llvm.fmuladd.f64(double %334, double %333, double %316)
  %336 = call double @llvm.fmuladd.f64(double %335, double %333, double %317)
  %337 = call double @llvm.fmuladd.f64(double %336, double %333, double %318)
  %338 = call double @llvm.fmuladd.f64(double %337, double %333, double %319)
  %339 = call double @llvm.fmuladd.f64(double %338, double %333, double %320)
  %340 = fmul double %332, %339
  %341 = call double @llvm.fmuladd.f64(double %321, double %333, double %322)
  %342 = call double @llvm.fmuladd.f64(double %333, double %341, double %323)
  %343 = call double @llvm.fmuladd.f64(double %333, double %342, double %324)
  %344 = call double @llvm.fmuladd.f64(double %333, double %343, double %325)
  %345 = call double @llvm.fmuladd.f64(double %333, double %344, double %326)
  %346 = call double @llvm.fmuladd.f64(double %333, double %345, double %320)
  %347 = fdiv double %340, %346
  %348 = fadd double %328, %347
  %349 = add nuw i32 %329, 1
  br label %327, !llvm.loop !15

350:                                              ; preds = %327
  %.lcssa3 = phi double [ %328, %327 ]
  %351 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %352 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %353 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %354 = load double, ptr @nulltime, align 8
  %355 = fneg double %354
  %356 = call double @llvm.fmuladd.f64(double %352, double %353, double %355)
  store double %356, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %357 = load double, ptr @piref, align 8
  %358 = load double, ptr @three, align 8
  %359 = fdiv double %357, %358
  %360 = fmul double %359, %359
  %361 = load double, ptr @A6, align 8
  %362 = load double, ptr @A5, align 8
  %363 = call double @llvm.fmuladd.f64(double %361, double %360, double %362)
  %364 = load double, ptr @A4, align 8
  %365 = call double @llvm.fmuladd.f64(double %363, double %360, double %364)
  %366 = load double, ptr @A3, align 8
  %367 = call double @llvm.fmuladd.f64(double %365, double %360, double %366)
  %368 = load double, ptr @A2, align 8
  %369 = call double @llvm.fmuladd.f64(double %367, double %360, double %368)
  %370 = load double, ptr @A1, align 8
  %371 = call double @llvm.fmuladd.f64(double %369, double %360, double %370)
  %372 = load double, ptr @one, align 8
  %373 = call double @llvm.fmuladd.f64(double %371, double %360, double %372)
  %374 = fmul double %359, %373
  store double %374, ptr @sa, align 8
  %375 = load double, ptr @B6, align 8
  %376 = load double, ptr @B5, align 8
  %377 = call double @llvm.fmuladd.f64(double %375, double %360, double %376)
  %378 = load double, ptr @B4, align 8
  %379 = call double @llvm.fmuladd.f64(double %360, double %377, double %378)
  %380 = load double, ptr @B3, align 8
  %381 = call double @llvm.fmuladd.f64(double %360, double %379, double %380)
  %382 = load double, ptr @B2, align 8
  %383 = call double @llvm.fmuladd.f64(double %360, double %381, double %382)
  %384 = load double, ptr @B1, align 8
  %385 = call double @llvm.fmuladd.f64(double %360, double %383, double %384)
  %386 = call double @llvm.fmuladd.f64(double %360, double %385, double %372)
  store double %386, ptr @sb, align 8
  %387 = fdiv double %374, %386
  store double %387, ptr @sa, align 8
  %388 = fdiv double %356, 2.900000e+01
  store double %388, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %389 = load double, ptr @two, align 8
  %390 = call double @llvm.fmuladd.f64(double %389, double %.lcssa3, double %387)
  %391 = fmul double %312, %390
  %392 = fdiv double %391, %389
  store double %392, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %393 = fadd double %392, f0xBFE62E42FEFA39EF
  store double %393, ptr @sc, align 8
  %394 = fdiv double %372, %388
  store double %394, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %395 = fmul double %393, 1.000000e-30
  %396 = fmul double %356, 1.000000e-30
  %397 = fmul double %394, 1.000000e-30
  %398 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %395, double noundef %396, double noundef %397) #4
  %399 = load double, ptr @piref, align 8
  %400 = load double, ptr @four, align 8
  %401 = fmul double %400, %161
  %402 = fdiv double %399, %401
  %403 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %404 = load double, ptr @A6, align 8
  %405 = load double, ptr @A5, align 8
  %406 = load double, ptr @A4, align 8
  %407 = load double, ptr @A3, align 8
  %408 = load double, ptr @A2, align 8
  %409 = load double, ptr @A1, align 8
  %410 = load double, ptr @one, align 8
  %411 = load double, ptr @B6, align 8
  %412 = load double, ptr @B5, align 8
  %413 = load double, ptr @B4, align 8
  %414 = load double, ptr @B3, align 8
  %415 = load double, ptr @B2, align 8
  %416 = load double, ptr @B1, align 8
  br label %417

417:                                              ; preds = %420, %350
  %418 = phi double [ %437, %420 ], [ 0.000000e+00, %350 ]
  %419 = phi i32 [ %438, %420 ], [ 1, %350 ]
  %exitcond17 = icmp ne i32 %419, %smax13
  br i1 %exitcond17, label %420, label %439

420:                                              ; preds = %417
  %421 = uitofp nneg i32 %419 to double
  %422 = fmul double %402, %421
  %423 = fmul double %422, %422
  %424 = call double @llvm.fmuladd.f64(double %404, double %423, double %405)
  %425 = call double @llvm.fmuladd.f64(double %424, double %423, double %406)
  %426 = call double @llvm.fmuladd.f64(double %425, double %423, double %407)
  %427 = call double @llvm.fmuladd.f64(double %426, double %423, double %408)
  %428 = call double @llvm.fmuladd.f64(double %427, double %423, double %409)
  %429 = call double @llvm.fmuladd.f64(double %428, double %423, double %410)
  %430 = fmul double %422, %429
  %431 = call double @llvm.fmuladd.f64(double %411, double %423, double %412)
  %432 = call double @llvm.fmuladd.f64(double %423, double %431, double %413)
  %433 = call double @llvm.fmuladd.f64(double %423, double %432, double %414)
  %434 = call double @llvm.fmuladd.f64(double %423, double %433, double %415)
  %435 = call double @llvm.fmuladd.f64(double %423, double %434, double %416)
  %436 = call double @llvm.fmuladd.f64(double %423, double %435, double %410)
  %437 = call double @llvm.fmuladd.f64(double %430, double %436, double %418)
  %438 = add nuw i32 %419, 1
  br label %417, !llvm.loop !16

439:                                              ; preds = %417
  %.lcssa2 = phi double [ %418, %417 ]
  %440 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %441 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %442 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %443 = load double, ptr @nulltime, align 8
  %444 = fneg double %443
  %445 = call double @llvm.fmuladd.f64(double %441, double %442, double %444)
  store double %445, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %446 = load double, ptr @piref, align 8
  %447 = load double, ptr @four, align 8
  %448 = fdiv double %446, %447
  %449 = fmul double %448, %448
  %450 = load double, ptr @A6, align 8
  %451 = load double, ptr @A5, align 8
  %452 = call double @llvm.fmuladd.f64(double %450, double %449, double %451)
  %453 = load double, ptr @A4, align 8
  %454 = call double @llvm.fmuladd.f64(double %452, double %449, double %453)
  %455 = load double, ptr @A3, align 8
  %456 = call double @llvm.fmuladd.f64(double %454, double %449, double %455)
  %457 = load double, ptr @A2, align 8
  %458 = call double @llvm.fmuladd.f64(double %456, double %449, double %457)
  %459 = load double, ptr @A1, align 8
  %460 = call double @llvm.fmuladd.f64(double %458, double %449, double %459)
  %461 = load double, ptr @one, align 8
  %462 = call double @llvm.fmuladd.f64(double %460, double %449, double %461)
  %463 = fmul double %448, %462
  store double %463, ptr @sa, align 8
  %464 = load double, ptr @B6, align 8
  %465 = load double, ptr @B5, align 8
  %466 = call double @llvm.fmuladd.f64(double %464, double %449, double %465)
  %467 = load double, ptr @B4, align 8
  %468 = call double @llvm.fmuladd.f64(double %449, double %466, double %467)
  %469 = load double, ptr @B3, align 8
  %470 = call double @llvm.fmuladd.f64(double %449, double %468, double %469)
  %471 = load double, ptr @B2, align 8
  %472 = call double @llvm.fmuladd.f64(double %449, double %470, double %471)
  %473 = load double, ptr @B1, align 8
  %474 = call double @llvm.fmuladd.f64(double %449, double %472, double %473)
  %475 = call double @llvm.fmuladd.f64(double %449, double %474, double %461)
  store double %475, ptr @sb, align 8
  %476 = fmul double %463, %475
  store double %476, ptr @sa, align 8
  %477 = fdiv double %445, 2.900000e+01
  store double %477, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %478 = load double, ptr @two, align 8
  %479 = call double @llvm.fmuladd.f64(double %478, double %.lcssa2, double %476)
  %480 = fmul double %402, %479
  %481 = fdiv double %480, %478
  store double %481, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %482 = fadd double %481, -2.500000e-01
  store double %482, ptr @sc, align 8
  %483 = fdiv double %461, %477
  store double %483, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %484 = fmul double %482, 1.000000e-30
  %485 = fmul double %445, 1.000000e-30
  %486 = fmul double %483, 1.000000e-30
  %487 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %484, double noundef %485, double noundef %486) #4
  %488 = load double, ptr @one, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %489 = fdiv double f0x40599541F7F192A4, %161
  %490 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %491

491:                                              ; preds = %494, %439
  %492 = phi double [ %506, %494 ], [ 0.000000e+00, %439 ]
  %493 = phi i32 [ %507, %494 ], [ 1, %439 ]
  %exitcond18 = icmp ne i32 %493, %smax13
  br i1 %exitcond18, label %494, label %508

494:                                              ; preds = %491
  %495 = uitofp nneg i32 %493 to double
  %496 = fmul double %489, %495
  %497 = fmul double %496, %496
  %498 = fadd double %496, %488
  %499 = fdiv double %488, %498
  %500 = fsub double %492, %499
  %501 = fadd double %497, %488
  %502 = fdiv double %496, %501
  %503 = fsub double %500, %502
  %504 = call double @llvm.fmuladd.f64(double %496, double %497, double %488)
  %505 = fdiv double %497, %504
  %506 = fsub double %503, %505
  %507 = add nuw i32 %493, 1
  br label %491, !llvm.loop !17

508:                                              ; preds = %491
  %.lcssa1 = phi double [ %492, %491 ]
  %509 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %510 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %511 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %512 = load double, ptr @nulltime, align 8
  %513 = fneg double %512
  %514 = call double @llvm.fmuladd.f64(double %510, double %511, double %513)
  store double %514, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %515 = fdiv double %514, 1.200000e+01
  store double %515, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %516 = load double, ptr @sa, align 8
  %517 = fmul double %516, %516
  %518 = fneg double %488
  %519 = fadd double %516, %488
  %520 = fdiv double %488, %519
  %521 = fsub double %518, %520
  %522 = fadd double %517, %488
  %523 = fdiv double %516, %522
  %524 = fsub double %521, %523
  %525 = call double @llvm.fmuladd.f64(double %516, double %517, double %488)
  %526 = fdiv double %517, %525
  %527 = fsub double %524, %526
  store double %527, ptr @sa, align 8
  %528 = fmul nnan double %489, 1.800000e+01
  %529 = load double, ptr @two, align 8
  %530 = call double @llvm.fmuladd.f64(double %529, double %.lcssa1, double %527)
  %531 = fmul double %528, %530
  store double %531, ptr @sa, align 8
  %532 = fptosi double %531 to i32
  %533 = mul nsw i32 %532, -2000
  %534 = sitofp i32 %533 to double
  %535 = load double, ptr @scale, align 8
  %536 = fdiv double %534, %535
  %537 = fptosi double %536 to i32
  %538 = fadd double %531, 5.002000e+02
  store double %538, ptr @sc, align 8
  %539 = load double, ptr @one, align 8
  %540 = fdiv double %539, %515
  store double %540, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %541 = fmul double %538, 1.000000e-30
  %542 = fmul double %514, 1.000000e-30
  %543 = fmul double %540, 1.000000e-30
  %544 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %541, double noundef %542, double noundef %543) #4
  %545 = load double, ptr @piref, align 8
  %546 = load double, ptr @three, align 8
  %547 = sitofp i32 %537 to double
  %548 = fmul double %546, %547
  %549 = fdiv double %545, %548
  %550 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %551 = load double, ptr @B6, align 8
  %552 = load double, ptr @B5, align 8
  %553 = load double, ptr @B4, align 8
  %554 = load double, ptr @B3, align 8
  %555 = load double, ptr @B2, align 8
  %556 = load double, ptr @B1, align 8
  %557 = load double, ptr @one, align 8
  %558 = load double, ptr @A6, align 8
  %559 = load double, ptr @A5, align 8
  %560 = load double, ptr @A4, align 8
  %561 = load double, ptr @A3, align 8
  %562 = load double, ptr @A2, align 8
  %563 = load double, ptr @A1, align 8
  %smax19 = call i32 @llvm.smax.i32(i32 %537, i32 1)
  br label %564

564:                                              ; preds = %567, %508
  %565 = phi double [ %585, %567 ], [ 0.000000e+00, %508 ]
  %566 = phi i32 [ %586, %567 ], [ 1, %508 ]
  %exitcond20 = icmp ne i32 %566, %smax19
  br i1 %exitcond20, label %567, label %587

567:                                              ; preds = %564
  %568 = uitofp nneg i32 %566 to double
  %569 = fmul double %549, %568
  %570 = fmul double %569, %569
  %571 = call double @llvm.fmuladd.f64(double %551, double %570, double %552)
  %572 = call double @llvm.fmuladd.f64(double %570, double %571, double %553)
  %573 = call double @llvm.fmuladd.f64(double %570, double %572, double %554)
  %574 = call double @llvm.fmuladd.f64(double %570, double %573, double %555)
  %575 = call double @llvm.fmuladd.f64(double %570, double %574, double %556)
  %576 = call double @llvm.fmuladd.f64(double %570, double %575, double %557)
  %577 = fmul double %576, %576
  %578 = fmul double %577, %569
  %579 = call double @llvm.fmuladd.f64(double %558, double %570, double %559)
  %580 = call double @llvm.fmuladd.f64(double %579, double %570, double %560)
  %581 = call double @llvm.fmuladd.f64(double %580, double %570, double %561)
  %582 = call double @llvm.fmuladd.f64(double %581, double %570, double %562)
  %583 = call double @llvm.fmuladd.f64(double %582, double %570, double %563)
  %584 = call double @llvm.fmuladd.f64(double %583, double %570, double %557)
  %585 = call double @llvm.fmuladd.f64(double %578, double %584, double %565)
  %586 = add nuw i32 %566, 1
  br label %564, !llvm.loop !18

587:                                              ; preds = %564
  %.lcssa = phi double [ %565, %564 ]
  %588 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %589 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %590 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %591 = load double, ptr @nulltime, align 8
  %592 = fneg double %591
  %593 = call double @llvm.fmuladd.f64(double %589, double %590, double %592)
  store double %593, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %594 = load double, ptr @piref, align 8
  %595 = load double, ptr @three, align 8
  %596 = fdiv double %594, %595
  %597 = fmul double %596, %596
  %598 = load double, ptr @A6, align 8
  %599 = load double, ptr @A5, align 8
  %600 = call double @llvm.fmuladd.f64(double %598, double %597, double %599)
  %601 = load double, ptr @A4, align 8
  %602 = call double @llvm.fmuladd.f64(double %600, double %597, double %601)
  %603 = load double, ptr @A3, align 8
  %604 = call double @llvm.fmuladd.f64(double %602, double %597, double %603)
  %605 = load double, ptr @A2, align 8
  %606 = call double @llvm.fmuladd.f64(double %604, double %597, double %605)
  %607 = load double, ptr @A1, align 8
  %608 = call double @llvm.fmuladd.f64(double %606, double %597, double %607)
  %609 = load double, ptr @one, align 8
  %610 = call double @llvm.fmuladd.f64(double %608, double %597, double %609)
  %611 = fmul double %596, %610
  store double %611, ptr @sa, align 8
  %612 = load double, ptr @B6, align 8
  %613 = load double, ptr @B5, align 8
  %614 = call double @llvm.fmuladd.f64(double %612, double %597, double %613)
  %615 = load double, ptr @B4, align 8
  %616 = call double @llvm.fmuladd.f64(double %597, double %614, double %615)
  %617 = load double, ptr @B3, align 8
  %618 = call double @llvm.fmuladd.f64(double %597, double %616, double %617)
  %619 = load double, ptr @B2, align 8
  %620 = call double @llvm.fmuladd.f64(double %597, double %618, double %619)
  %621 = load double, ptr @B1, align 8
  %622 = call double @llvm.fmuladd.f64(double %597, double %620, double %621)
  %623 = call double @llvm.fmuladd.f64(double %597, double %622, double %609)
  store double %623, ptr @sb, align 8
  %624 = fmul double %611, %623
  %625 = fmul double %624, %623
  store double %625, ptr @sa, align 8
  %626 = fdiv double %593, 3.000000e+01
  store double %626, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %627 = load double, ptr @two, align 8
  %628 = call double @llvm.fmuladd.f64(double %627, double %.lcssa, double %625)
  %629 = fmul double %549, %628
  %630 = fdiv double %629, %627
  store double %630, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %631 = fadd double %630, f0xBFD2AAAAAAAAAAAB
  store double %631, ptr @sc, align 8
  %632 = fdiv double %609, %626
  store double %632, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %633 = fmul double %631, 1.000000e-30
  %634 = fmul double %593, 1.000000e-30
  %635 = fmul double %632, 1.000000e-30
  %636 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %633, double noundef %634, double noundef %635) #4
  %637 = load double, ptr @five, align 8
  %638 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %639 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %640 = fsub double %638, %639
  %641 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %642 = call double @llvm.fmuladd.f64(double %637, double %640, double %641)
  %643 = fdiv double %642, 5.200000e+01
  store double %643, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %644 = load double, ptr @one, align 8
  %645 = fdiv double %644, %643
  store double %645, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %646 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %647 = fadd double %646, %641
  %648 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %649 = fadd double %647, %648
  %650 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %651 = fadd double %649, %650
  %652 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %653 = fadd double %651, %652
  store double %653, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %654 = load double, ptr @four, align 8
  %655 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %656 = call double @llvm.fmuladd.f64(double %654, double %655, double %653)
  %657 = fdiv double %656, 1.520000e+02
  store double %657, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %658 = fdiv double %644, %657
  store double %658, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %653, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %659 = fadd double %653, %655
  %660 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %661 = fadd double %659, %660
  %662 = fdiv double %661, 1.460000e+02
  store double %662, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %663 = fdiv double %644, %662
  store double %663, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %664 = fadd double %641, %648
  %665 = fadd double %664, %652
  %666 = fadd double %665, %660
  %667 = fdiv double %666, 9.100000e+01
  store double %667, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %668 = fdiv double %644, %667
  store double %668, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar11 = call i32 @putchar(i32 10)
  %669 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %537) #4
  %670 = load double, ptr @nulltime, align 8
  %671 = fmul double %670, 1.000000e-30
  %672 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %671) #4
  %673 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %674 = fmul double %673, 1.000000e-30
  %675 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %674) #4
  %676 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %677 = fmul double %676, 1.000000e-30
  %678 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %677) #4
  %679 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %680 = fmul double %679, 1.000000e-30
  %681 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %680) #4
  %682 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %683 = fmul double %682, 1.000000e-30
  %684 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %683) #4
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
