; ModuleID = 'results\paper_full\Misc_flops\round_004\output.ll'
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
  %43 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %44 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %45 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %46 = fmul double %44, %45
  %47 = fcmp olt double %46, 0.000000e+00
  %48 = select i1 %47, double 0.000000e+00, double %46
  store double %48, ptr @nulltime, align 8
  %49 = load double, ptr @sa, align 8
  %50 = fneg double %48
  %51 = call double @llvm.fmuladd.f64(double %44, double %49, double %50)
  store double %51, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %52 = load double, ptr @D1, align 8
  %53 = load double, ptr @D2, align 8
  %54 = fadd double %52, %53
  %55 = load double, ptr @D3, align 8
  %56 = fadd double %54, %55
  %57 = load double, ptr @one, align 8
  %58 = fadd double %57, %52
  %59 = load double, ptr @E2, align 8
  %60 = fadd double %58, %59
  %61 = load double, ptr @E3, align 8
  %62 = fadd double %60, %61
  %63 = fdiv double %56, %62
  store double %63, ptr @sa, align 8
  store double %52, ptr @sb, align 8
  %64 = fdiv double %51, 1.400000e+01
  store double %64, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %65 = fadd double %63, %52
  %66 = load double, ptr @two, align 8
  %67 = call double @llvm.fmuladd.f64(double %66, double %40, double %65)
  %68 = fmul double %41, %67
  %69 = fdiv double %68, %66
  store double %69, ptr @sa, align 8
  %70 = fdiv double %57, %69
  store double %70, ptr @sb, align 8
  %71 = fptosi double %70 to i32
  %72 = mul nsw i32 %71, 40000
  %73 = sitofp i32 %72 to double
  %74 = load double, ptr @scale, align 8
  %75 = fdiv double %73, %74
  %76 = fptosi double %75 to i32
  %77 = fadd double %70, -2.520000e+01
  store double %77, ptr @sc, align 8
  %78 = fdiv double %57, %64
  store double %78, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %79 = fmul double %77, 1.000000e-30
  %80 = fmul double %51, 1.000000e-30
  %81 = fmul double %78, 1.000000e-30
  %82 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %79, double noundef %80, double noundef %81) #4
  %83 = load double, ptr @five, align 8
  %84 = fneg double %83
  %85 = load double, ptr @one, align 8
  %86 = fneg double %85
  store double %86, ptr @sa, align 8
  %87 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %sa.promoted = load double, ptr @sa, align 8
  %smax = call i32 @llvm.smax.i32(i32 %76, i32 0)
  %88 = add nuw i32 %smax, 1
  br label %89

89:                                               ; preds = %93, %.loopexit
  %90 = phi double [ %95, %93 ], [ %sa.promoted, %.loopexit ]
  %91 = phi double [ %94, %93 ], [ %84, %.loopexit ]
  %92 = phi i32 [ %96, %93 ], [ 1, %.loopexit ]
  %exitcond18 = icmp eq i32 %92, %88
  br i1 %exitcond18, label %97, label %93

93:                                               ; preds = %89
  %94 = fneg double %91
  %95 = fsub double %90, %91
  store double %95, ptr @sa, align 8
  %96 = add nuw i32 %92, 1
  br label %89, !llvm.loop !10

97:                                               ; preds = %89
  %.lcssa9 = phi double [ %91, %89 ]
  %98 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %99 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %100 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %101 = fmul double %99, %100
  %102 = fcmp olt double %101, 0.000000e+00
  %storemerge = select i1 %102, double 0.000000e+00, double %101
  store double %storemerge, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %103 = sitofp i32 %76 to double
  store double %103, ptr @sc, align 8
  %104 = load double, ptr @sa, align 8
  %105 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %106 = load double, ptr @two, align 8
  %sa.promoted18 = load double, ptr @sa, align 8
  %smax19 = call i32 @llvm.smax.i32(i32 %76, i32 0)
  %107 = add nuw i32 %smax19, 1
  br label %108

108:                                              ; preds = %116, %97
  %109 = phi double [ %118, %116 ], [ %sa.promoted18, %97 ]
  %110 = phi double [ %124, %116 ], [ 0.000000e+00, %97 ]
  %111 = phi double [ %119, %116 ], [ %104, %97 ]
  %112 = phi double [ %117, %116 ], [ %.lcssa9, %97 ]
  %113 = phi double [ %122, %116 ], [ 0.000000e+00, %97 ]
  %114 = phi double [ %121, %116 ], [ 0.000000e+00, %97 ]
  %115 = phi i32 [ %125, %116 ], [ 1, %97 ]
  %exitcond20 = icmp eq i32 %115, %107
  br i1 %exitcond20, label %126, label %116

116:                                              ; preds = %108
  %117 = fneg double %112
  %118 = fsub double %109, %112
  store double %118, ptr @sa, align 8
  %119 = fadd double %111, %106
  %120 = fsub double %117, %119
  %121 = fadd double %114, %120
  %122 = call double @llvm.fmuladd.f64(double %112, double %119, double %113)
  %123 = fdiv double %112, %119
  %124 = fsub double %110, %123
  %125 = add nuw i32 %115, 1
  br label %108, !llvm.loop !11

126:                                              ; preds = %108
  %.lcssa8 = phi double [ %110, %108 ]
  %.lcssa7 = phi double [ %113, %108 ]
  %.lcssa6 = phi double [ %114, %108 ]
  %127 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %128 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %129 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %130 = fmul double %128, %129
  store double %130, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %131 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %132 = fsub double %130, %131
  %133 = fdiv double %132, 7.000000e+00
  store double %133, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %134 = load double, ptr @sa, align 8
  %135 = fmul double %134, %.lcssa6
  %136 = load double, ptr @sc, align 8
  %137 = fdiv double %135, %136
  %138 = fptosi double %137 to i32
  %139 = load double, ptr @four, align 8
  %140 = fmul double %139, %.lcssa8
  %141 = load double, ptr @five, align 8
  %142 = fdiv double %140, %141
  store double %142, ptr @sa, align 8
  %143 = fdiv double %141, %.lcssa7
  %144 = fadd double %142, %143
  store double %144, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %145 = fmul double %.lcssa7, %.lcssa7
  %146 = fmul double %145, %.lcssa7
  %147 = fdiv double 3.125000e+01, %146
  %148 = fsub double %144, %147
  store double %148, ptr @piprg, align 8
  %149 = load double, ptr @piref, align 8
  %150 = fsub double %148, %149
  store double %150, ptr @pierr, align 8
  %151 = load double, ptr @one, align 8
  %152 = fdiv double %151, %133
  store double %152, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %153 = fmul double %150, 1.000000e-30
  %154 = fmul double %132, 1.000000e-30
  %155 = fmul double %152, 1.000000e-30
  %156 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %153, double noundef %154, double noundef %155) #4
  %157 = load double, ptr @piref, align 8
  %158 = load double, ptr @three, align 8
  %159 = sitofp i32 %138 to double
  %160 = fmul double %158, %159
  %161 = fdiv double %157, %160
  %162 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %163 = load double, ptr @one, align 8
  %164 = load double, ptr @A6, align 8
  %165 = load double, ptr @A5, align 8
  %166 = fneg double %165
  %167 = load double, ptr @A4, align 8
  %168 = load double, ptr @A3, align 8
  %169 = fneg double %168
  %170 = load double, ptr @A2, align 8
  %171 = load double, ptr @A1, align 8
  %smax21 = call i32 @llvm.smax.i32(i32 %138, i32 1)
  br label %172

172:                                              ; preds = %176, %126
  %173 = phi double [ %177, %176 ], [ 0.000000e+00, %126 ]
  %174 = phi double [ %186, %176 ], [ 0.000000e+00, %126 ]
  %175 = phi i32 [ %187, %176 ], [ 1, %126 ]
  %exitcond22 = icmp ne i32 %175, %smax21
  br i1 %exitcond22, label %176, label %188

176:                                              ; preds = %172
  %177 = fadd double %173, %163
  %178 = fmul double %177, %161
  %179 = fmul double %178, %178
  %180 = call double @llvm.fmuladd.f64(double %164, double %179, double %166)
  %181 = call double @llvm.fmuladd.f64(double %180, double %179, double %167)
  %182 = call double @llvm.fmuladd.f64(double %181, double %179, double %169)
  %183 = call double @llvm.fmuladd.f64(double %182, double %179, double %170)
  %184 = call double @llvm.fmuladd.f64(double %183, double %179, double %171)
  %185 = call double @llvm.fmuladd.f64(double %184, double %179, double %163)
  %186 = call double @llvm.fmuladd.f64(double %178, double %185, double %174)
  %187 = add nuw i32 %175, 1
  br label %172, !llvm.loop !12

188:                                              ; preds = %172
  %.lcssa5 = phi double [ %174, %172 ]
  %189 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %190 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %191 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %192 = load double, ptr @nulltime, align 8
  %193 = fneg double %192
  %194 = call double @llvm.fmuladd.f64(double %190, double %191, double %193)
  store double %194, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %195 = load double, ptr @piref, align 8
  %196 = load double, ptr @three, align 8
  %197 = fdiv double %195, %196
  %198 = fmul double %197, %197
  %199 = load double, ptr @A6, align 8
  %200 = load double, ptr @A5, align 8
  %201 = fneg double %200
  %202 = call double @llvm.fmuladd.f64(double %199, double %198, double %201)
  %203 = load double, ptr @A4, align 8
  %204 = call double @llvm.fmuladd.f64(double %202, double %198, double %203)
  %205 = load double, ptr @A3, align 8
  %206 = fneg double %205
  %207 = call double @llvm.fmuladd.f64(double %204, double %198, double %206)
  %208 = load double, ptr @A2, align 8
  %209 = call double @llvm.fmuladd.f64(double %207, double %198, double %208)
  %210 = load double, ptr @A1, align 8
  %211 = call double @llvm.fmuladd.f64(double %209, double %198, double %210)
  %212 = load double, ptr @one, align 8
  %213 = call double @llvm.fmuladd.f64(double %211, double %198, double %212)
  %214 = fmul double %197, %213
  store double %214, ptr @sa, align 8
  %215 = fdiv double %194, 1.700000e+01
  store double %215, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %216 = load double, ptr @two, align 8
  %217 = call double @llvm.fmuladd.f64(double %216, double %.lcssa5, double %214)
  %218 = fmul double %161, %217
  %219 = fdiv double %218, %216
  store double %219, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %220 = fadd double %219, -5.000000e-01
  store double %220, ptr @sc, align 8
  %221 = fdiv double %212, %215
  store double %221, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %222 = fmul double %220, 1.000000e-30
  %223 = fmul double %194, 1.000000e-30
  %224 = fmul double %221, 1.000000e-30
  %225 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %222, double noundef %223, double noundef %224) #4
  %226 = load double, ptr @A3, align 8
  %227 = fneg double %226
  store double %227, ptr @A3, align 8
  %228 = load double, ptr @A5, align 8
  %229 = fneg double %228
  store double %229, ptr @A5, align 8
  %230 = load double, ptr @piref, align 8
  %231 = load double, ptr @three, align 8
  %232 = fmul double %231, %159
  %233 = fdiv double %230, %232
  %234 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %235 = load double, ptr @B6, align 8
  %236 = load double, ptr @B5, align 8
  %237 = load double, ptr @B4, align 8
  %238 = load double, ptr @B3, align 8
  %239 = load double, ptr @B2, align 8
  %240 = load double, ptr @B1, align 8
  %241 = load double, ptr @one, align 8
  br label %242

242:                                              ; preds = %245, %188
  %243 = phi double [ %255, %245 ], [ 0.000000e+00, %188 ]
  %244 = phi i32 [ %256, %245 ], [ 1, %188 ]
  %exitcond23 = icmp ne i32 %244, %smax21
  br i1 %exitcond23, label %245, label %257

245:                                              ; preds = %242
  %246 = uitofp nneg i32 %244 to double
  %247 = fmul double %233, %246
  %248 = fmul double %247, %247
  %249 = call double @llvm.fmuladd.f64(double %235, double %248, double %236)
  %250 = call double @llvm.fmuladd.f64(double %248, double %249, double %237)
  %251 = call double @llvm.fmuladd.f64(double %248, double %250, double %238)
  %252 = call double @llvm.fmuladd.f64(double %248, double %251, double %239)
  %253 = call double @llvm.fmuladd.f64(double %248, double %252, double %240)
  %254 = call double @llvm.fmuladd.f64(double %248, double %253, double %243)
  %255 = fadd double %254, %241
  %256 = add nuw i32 %244, 1
  br label %242, !llvm.loop !13

257:                                              ; preds = %242
  %.lcssa4 = phi double [ %243, %242 ]
  %258 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %259 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %260 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %261 = load double, ptr @nulltime, align 8
  %262 = fneg double %261
  %263 = call double @llvm.fmuladd.f64(double %259, double %260, double %262)
  store double %263, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %264 = load double, ptr @piref, align 8
  %265 = load double, ptr @three, align 8
  %266 = fdiv double %264, %265
  %267 = fmul double %266, %266
  %268 = load double, ptr @B6, align 8
  %269 = load double, ptr @B5, align 8
  %270 = call double @llvm.fmuladd.f64(double %268, double %267, double %269)
  %271 = load double, ptr @B4, align 8
  %272 = call double @llvm.fmuladd.f64(double %267, double %270, double %271)
  %273 = load double, ptr @B3, align 8
  %274 = call double @llvm.fmuladd.f64(double %267, double %272, double %273)
  %275 = load double, ptr @B2, align 8
  %276 = call double @llvm.fmuladd.f64(double %267, double %274, double %275)
  %277 = load double, ptr @B1, align 8
  %278 = call double @llvm.fmuladd.f64(double %267, double %276, double %277)
  %279 = load double, ptr @one, align 8
  %280 = call double @llvm.fmuladd.f64(double %267, double %278, double %279)
  store double %280, ptr @sa, align 8
  %281 = fdiv double %263, 1.500000e+01
  store double %281, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %282 = fadd double %280, %279
  %283 = load double, ptr @two, align 8
  %284 = call double @llvm.fmuladd.f64(double %283, double %.lcssa4, double %282)
  %285 = fmul double %233, %284
  %286 = fdiv double %285, %283
  store double %286, ptr @sa, align 8
  %287 = load double, ptr @A6, align 8
  %288 = load double, ptr @A5, align 8
  %289 = call double @llvm.fmuladd.f64(double %287, double %267, double %288)
  %290 = load double, ptr @A4, align 8
  %291 = call double @llvm.fmuladd.f64(double %289, double %267, double %290)
  %292 = load double, ptr @A3, align 8
  %293 = call double @llvm.fmuladd.f64(double %291, double %267, double %292)
  %294 = load double, ptr @A2, align 8
  %295 = call double @llvm.fmuladd.f64(double %293, double %267, double %294)
  %296 = load double, ptr @A1, align 8
  %297 = call double @llvm.fmuladd.f64(double %295, double %267, double %296)
  %298 = load double, ptr @A0, align 8
  %299 = call double @llvm.fmuladd.f64(double %297, double %267, double %298)
  %300 = fmul double %266, %299
  store double %300, ptr @sb, align 8
  %301 = fsub double %286, %300
  store double %301, ptr @sc, align 8
  %302 = fdiv double %279, %281
  store double %302, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %303 = fmul double %301, 1.000000e-30
  %304 = fmul double %263, 1.000000e-30
  %305 = fmul double %302, 1.000000e-30
  %306 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %303, double noundef %304, double noundef %305) #4
  %307 = load double, ptr @piref, align 8
  %308 = load double, ptr @three, align 8
  %309 = fmul double %308, %159
  %310 = fdiv double %307, %309
  %311 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %312 = load double, ptr @A6, align 8
  %313 = load double, ptr @A5, align 8
  %314 = load double, ptr @A4, align 8
  %315 = load double, ptr @A3, align 8
  %316 = load double, ptr @A2, align 8
  %317 = load double, ptr @A1, align 8
  %318 = load double, ptr @one, align 8
  %319 = load double, ptr @B6, align 8
  %320 = load double, ptr @B5, align 8
  %321 = load double, ptr @B4, align 8
  %322 = load double, ptr @B3, align 8
  %323 = load double, ptr @B2, align 8
  %324 = load double, ptr @B1, align 8
  br label %325

325:                                              ; preds = %328, %257
  %326 = phi double [ %346, %328 ], [ 0.000000e+00, %257 ]
  %327 = phi i32 [ %347, %328 ], [ 1, %257 ]
  %exitcond24 = icmp ne i32 %327, %smax21
  br i1 %exitcond24, label %328, label %348

328:                                              ; preds = %325
  %329 = uitofp nneg i32 %327 to double
  %330 = fmul double %310, %329
  %331 = fmul double %330, %330
  %332 = call double @llvm.fmuladd.f64(double %312, double %331, double %313)
  %333 = call double @llvm.fmuladd.f64(double %332, double %331, double %314)
  %334 = call double @llvm.fmuladd.f64(double %333, double %331, double %315)
  %335 = call double @llvm.fmuladd.f64(double %334, double %331, double %316)
  %336 = call double @llvm.fmuladd.f64(double %335, double %331, double %317)
  %337 = call double @llvm.fmuladd.f64(double %336, double %331, double %318)
  %338 = fmul double %330, %337
  %339 = call double @llvm.fmuladd.f64(double %319, double %331, double %320)
  %340 = call double @llvm.fmuladd.f64(double %331, double %339, double %321)
  %341 = call double @llvm.fmuladd.f64(double %331, double %340, double %322)
  %342 = call double @llvm.fmuladd.f64(double %331, double %341, double %323)
  %343 = call double @llvm.fmuladd.f64(double %331, double %342, double %324)
  %344 = call double @llvm.fmuladd.f64(double %331, double %343, double %318)
  %345 = fdiv double %338, %344
  %346 = fadd double %326, %345
  %347 = add nuw i32 %327, 1
  br label %325, !llvm.loop !14

348:                                              ; preds = %325
  %.lcssa3 = phi double [ %326, %325 ]
  %349 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %350 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %351 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %352 = load double, ptr @nulltime, align 8
  %353 = fneg double %352
  %354 = call double @llvm.fmuladd.f64(double %350, double %351, double %353)
  store double %354, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %355 = load double, ptr @piref, align 8
  %356 = load double, ptr @three, align 8
  %357 = fdiv double %355, %356
  %358 = fmul double %357, %357
  %359 = load double, ptr @A6, align 8
  %360 = load double, ptr @A5, align 8
  %361 = call double @llvm.fmuladd.f64(double %359, double %358, double %360)
  %362 = load double, ptr @A4, align 8
  %363 = call double @llvm.fmuladd.f64(double %361, double %358, double %362)
  %364 = load double, ptr @A3, align 8
  %365 = call double @llvm.fmuladd.f64(double %363, double %358, double %364)
  %366 = load double, ptr @A2, align 8
  %367 = call double @llvm.fmuladd.f64(double %365, double %358, double %366)
  %368 = load double, ptr @A1, align 8
  %369 = call double @llvm.fmuladd.f64(double %367, double %358, double %368)
  %370 = load double, ptr @one, align 8
  %371 = call double @llvm.fmuladd.f64(double %369, double %358, double %370)
  %372 = fmul double %357, %371
  store double %372, ptr @sa, align 8
  %373 = load double, ptr @B6, align 8
  %374 = load double, ptr @B5, align 8
  %375 = call double @llvm.fmuladd.f64(double %373, double %358, double %374)
  %376 = load double, ptr @B4, align 8
  %377 = call double @llvm.fmuladd.f64(double %358, double %375, double %376)
  %378 = load double, ptr @B3, align 8
  %379 = call double @llvm.fmuladd.f64(double %358, double %377, double %378)
  %380 = load double, ptr @B2, align 8
  %381 = call double @llvm.fmuladd.f64(double %358, double %379, double %380)
  %382 = load double, ptr @B1, align 8
  %383 = call double @llvm.fmuladd.f64(double %358, double %381, double %382)
  %384 = call double @llvm.fmuladd.f64(double %358, double %383, double %370)
  store double %384, ptr @sb, align 8
  %385 = fdiv double %372, %384
  store double %385, ptr @sa, align 8
  %386 = fdiv double %354, 2.900000e+01
  store double %386, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %387 = load double, ptr @two, align 8
  %388 = call double @llvm.fmuladd.f64(double %387, double %.lcssa3, double %385)
  %389 = fmul double %310, %388
  %390 = fdiv double %389, %387
  store double %390, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %391 = fadd double %390, f0xBFE62E42FEFA39EF
  store double %391, ptr @sc, align 8
  %392 = fdiv double %370, %386
  store double %392, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %393 = fmul double %391, 1.000000e-30
  %394 = fmul double %354, 1.000000e-30
  %395 = fmul double %392, 1.000000e-30
  %396 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %393, double noundef %394, double noundef %395) #4
  %397 = load double, ptr @piref, align 8
  %398 = load double, ptr @four, align 8
  %399 = fmul double %398, %159
  %400 = fdiv double %397, %399
  %401 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %402 = load double, ptr @A6, align 8
  %403 = load double, ptr @A5, align 8
  %404 = load double, ptr @A4, align 8
  %405 = load double, ptr @A3, align 8
  %406 = load double, ptr @A2, align 8
  %407 = load double, ptr @A1, align 8
  %408 = load double, ptr @one, align 8
  %409 = load double, ptr @B6, align 8
  %410 = load double, ptr @B5, align 8
  %411 = load double, ptr @B4, align 8
  %412 = load double, ptr @B3, align 8
  %413 = load double, ptr @B2, align 8
  %414 = load double, ptr @B1, align 8
  br label %415

415:                                              ; preds = %418, %348
  %416 = phi double [ %435, %418 ], [ 0.000000e+00, %348 ]
  %417 = phi i32 [ %436, %418 ], [ 1, %348 ]
  %exitcond25 = icmp ne i32 %417, %smax21
  br i1 %exitcond25, label %418, label %437

418:                                              ; preds = %415
  %419 = uitofp nneg i32 %417 to double
  %420 = fmul double %400, %419
  %421 = fmul double %420, %420
  %422 = call double @llvm.fmuladd.f64(double %402, double %421, double %403)
  %423 = call double @llvm.fmuladd.f64(double %422, double %421, double %404)
  %424 = call double @llvm.fmuladd.f64(double %423, double %421, double %405)
  %425 = call double @llvm.fmuladd.f64(double %424, double %421, double %406)
  %426 = call double @llvm.fmuladd.f64(double %425, double %421, double %407)
  %427 = call double @llvm.fmuladd.f64(double %426, double %421, double %408)
  %428 = fmul double %420, %427
  %429 = call double @llvm.fmuladd.f64(double %409, double %421, double %410)
  %430 = call double @llvm.fmuladd.f64(double %421, double %429, double %411)
  %431 = call double @llvm.fmuladd.f64(double %421, double %430, double %412)
  %432 = call double @llvm.fmuladd.f64(double %421, double %431, double %413)
  %433 = call double @llvm.fmuladd.f64(double %421, double %432, double %414)
  %434 = call double @llvm.fmuladd.f64(double %421, double %433, double %408)
  %435 = call double @llvm.fmuladd.f64(double %428, double %434, double %416)
  %436 = add nuw i32 %417, 1
  br label %415, !llvm.loop !15

437:                                              ; preds = %415
  %.lcssa2 = phi double [ %416, %415 ]
  %438 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %439 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %440 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %441 = load double, ptr @nulltime, align 8
  %442 = fneg double %441
  %443 = call double @llvm.fmuladd.f64(double %439, double %440, double %442)
  store double %443, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %444 = load double, ptr @piref, align 8
  %445 = load double, ptr @four, align 8
  %446 = fdiv double %444, %445
  %447 = fmul double %446, %446
  %448 = load double, ptr @A6, align 8
  %449 = load double, ptr @A5, align 8
  %450 = call double @llvm.fmuladd.f64(double %448, double %447, double %449)
  %451 = load double, ptr @A4, align 8
  %452 = call double @llvm.fmuladd.f64(double %450, double %447, double %451)
  %453 = load double, ptr @A3, align 8
  %454 = call double @llvm.fmuladd.f64(double %452, double %447, double %453)
  %455 = load double, ptr @A2, align 8
  %456 = call double @llvm.fmuladd.f64(double %454, double %447, double %455)
  %457 = load double, ptr @A1, align 8
  %458 = call double @llvm.fmuladd.f64(double %456, double %447, double %457)
  %459 = load double, ptr @one, align 8
  %460 = call double @llvm.fmuladd.f64(double %458, double %447, double %459)
  %461 = fmul double %446, %460
  store double %461, ptr @sa, align 8
  %462 = load double, ptr @B6, align 8
  %463 = load double, ptr @B5, align 8
  %464 = call double @llvm.fmuladd.f64(double %462, double %447, double %463)
  %465 = load double, ptr @B4, align 8
  %466 = call double @llvm.fmuladd.f64(double %447, double %464, double %465)
  %467 = load double, ptr @B3, align 8
  %468 = call double @llvm.fmuladd.f64(double %447, double %466, double %467)
  %469 = load double, ptr @B2, align 8
  %470 = call double @llvm.fmuladd.f64(double %447, double %468, double %469)
  %471 = load double, ptr @B1, align 8
  %472 = call double @llvm.fmuladd.f64(double %447, double %470, double %471)
  %473 = call double @llvm.fmuladd.f64(double %447, double %472, double %459)
  store double %473, ptr @sb, align 8
  %474 = fmul double %461, %473
  store double %474, ptr @sa, align 8
  %475 = fdiv double %443, 2.900000e+01
  store double %475, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %476 = load double, ptr @two, align 8
  %477 = call double @llvm.fmuladd.f64(double %476, double %.lcssa2, double %474)
  %478 = fmul double %400, %477
  %479 = fdiv double %478, %476
  store double %479, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %480 = fadd double %479, -2.500000e-01
  store double %480, ptr @sc, align 8
  %481 = fdiv double %459, %475
  store double %481, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %482 = fmul double %480, 1.000000e-30
  %483 = fmul double %443, 1.000000e-30
  %484 = fmul double %481, 1.000000e-30
  %485 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %482, double noundef %483, double noundef %484) #4
  %486 = load double, ptr @one, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %487 = fdiv double f0x40599541F7F192A4, %159
  %488 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %489

489:                                              ; preds = %492, %437
  %490 = phi double [ %504, %492 ], [ 0.000000e+00, %437 ]
  %491 = phi i32 [ %505, %492 ], [ 1, %437 ]
  %exitcond26 = icmp ne i32 %491, %smax21
  br i1 %exitcond26, label %492, label %506

492:                                              ; preds = %489
  %493 = uitofp nneg i32 %491 to double
  %494 = fmul double %487, %493
  %495 = fmul double %494, %494
  %496 = fadd double %494, %486
  %497 = fdiv double %486, %496
  %498 = fsub double %490, %497
  %499 = fadd double %495, %486
  %500 = fdiv double %494, %499
  %501 = fsub double %498, %500
  %502 = call double @llvm.fmuladd.f64(double %494, double %495, double %486)
  %503 = fdiv double %495, %502
  %504 = fsub double %501, %503
  %505 = add nuw i32 %491, 1
  br label %489, !llvm.loop !16

506:                                              ; preds = %489
  %.lcssa1 = phi double [ %490, %489 ]
  %507 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %508 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %509 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %510 = load double, ptr @nulltime, align 8
  %511 = fneg double %510
  %512 = call double @llvm.fmuladd.f64(double %508, double %509, double %511)
  store double %512, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %513 = fdiv double %512, 1.200000e+01
  store double %513, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %514 = load double, ptr @sa, align 8
  %515 = fmul double %514, %514
  %516 = fneg double %486
  %517 = fadd double %514, %486
  %518 = fdiv double %486, %517
  %519 = fsub double %516, %518
  %520 = fadd double %515, %486
  %521 = fdiv double %514, %520
  %522 = fsub double %519, %521
  %523 = call double @llvm.fmuladd.f64(double %514, double %515, double %486)
  %524 = fdiv double %515, %523
  %525 = fsub double %522, %524
  store double %525, ptr @sa, align 8
  %526 = fmul nnan double %487, 1.800000e+01
  %527 = load double, ptr @two, align 8
  %528 = call double @llvm.fmuladd.f64(double %527, double %.lcssa1, double %525)
  %529 = fmul double %526, %528
  store double %529, ptr @sa, align 8
  %530 = fptosi double %529 to i32
  %531 = mul nsw i32 %530, -2000
  %532 = sitofp i32 %531 to double
  %533 = load double, ptr @scale, align 8
  %534 = fdiv double %532, %533
  %535 = fptosi double %534 to i32
  %536 = fadd double %529, 5.002000e+02
  store double %536, ptr @sc, align 8
  %537 = load double, ptr @one, align 8
  %538 = fdiv double %537, %513
  store double %538, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %539 = fmul double %536, 1.000000e-30
  %540 = fmul double %512, 1.000000e-30
  %541 = fmul double %538, 1.000000e-30
  %542 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %539, double noundef %540, double noundef %541) #4
  %543 = load double, ptr @piref, align 8
  %544 = load double, ptr @three, align 8
  %545 = sitofp i32 %535 to double
  %546 = fmul double %544, %545
  %547 = fdiv double %543, %546
  %548 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %549 = load double, ptr @B6, align 8
  %550 = load double, ptr @B5, align 8
  %551 = load double, ptr @B4, align 8
  %552 = load double, ptr @B3, align 8
  %553 = load double, ptr @B2, align 8
  %554 = load double, ptr @B1, align 8
  %555 = load double, ptr @one, align 8
  %556 = load double, ptr @A6, align 8
  %557 = load double, ptr @A5, align 8
  %558 = load double, ptr @A4, align 8
  %559 = load double, ptr @A3, align 8
  %560 = load double, ptr @A2, align 8
  %561 = load double, ptr @A1, align 8
  %smax27 = call i32 @llvm.smax.i32(i32 %535, i32 1)
  br label %562

562:                                              ; preds = %565, %506
  %563 = phi double [ %583, %565 ], [ 0.000000e+00, %506 ]
  %564 = phi i32 [ %584, %565 ], [ 1, %506 ]
  %exitcond28 = icmp ne i32 %564, %smax27
  br i1 %exitcond28, label %565, label %585

565:                                              ; preds = %562
  %566 = uitofp nneg i32 %564 to double
  %567 = fmul double %547, %566
  %568 = fmul double %567, %567
  %569 = call double @llvm.fmuladd.f64(double %549, double %568, double %550)
  %570 = call double @llvm.fmuladd.f64(double %568, double %569, double %551)
  %571 = call double @llvm.fmuladd.f64(double %568, double %570, double %552)
  %572 = call double @llvm.fmuladd.f64(double %568, double %571, double %553)
  %573 = call double @llvm.fmuladd.f64(double %568, double %572, double %554)
  %574 = call double @llvm.fmuladd.f64(double %568, double %573, double %555)
  %575 = fmul double %574, %574
  %576 = fmul double %575, %567
  %577 = call double @llvm.fmuladd.f64(double %556, double %568, double %557)
  %578 = call double @llvm.fmuladd.f64(double %577, double %568, double %558)
  %579 = call double @llvm.fmuladd.f64(double %578, double %568, double %559)
  %580 = call double @llvm.fmuladd.f64(double %579, double %568, double %560)
  %581 = call double @llvm.fmuladd.f64(double %580, double %568, double %561)
  %582 = call double @llvm.fmuladd.f64(double %581, double %568, double %555)
  %583 = call double @llvm.fmuladd.f64(double %576, double %582, double %563)
  %584 = add nuw i32 %564, 1
  br label %562, !llvm.loop !17

585:                                              ; preds = %562
  %.lcssa = phi double [ %563, %562 ]
  %586 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %587 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %588 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %589 = load double, ptr @nulltime, align 8
  %590 = fneg double %589
  %591 = call double @llvm.fmuladd.f64(double %587, double %588, double %590)
  store double %591, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %592 = load double, ptr @piref, align 8
  %593 = load double, ptr @three, align 8
  %594 = fdiv double %592, %593
  %595 = fmul double %594, %594
  %596 = load double, ptr @A6, align 8
  %597 = load double, ptr @A5, align 8
  %598 = call double @llvm.fmuladd.f64(double %596, double %595, double %597)
  %599 = load double, ptr @A4, align 8
  %600 = call double @llvm.fmuladd.f64(double %598, double %595, double %599)
  %601 = load double, ptr @A3, align 8
  %602 = call double @llvm.fmuladd.f64(double %600, double %595, double %601)
  %603 = load double, ptr @A2, align 8
  %604 = call double @llvm.fmuladd.f64(double %602, double %595, double %603)
  %605 = load double, ptr @A1, align 8
  %606 = call double @llvm.fmuladd.f64(double %604, double %595, double %605)
  %607 = load double, ptr @one, align 8
  %608 = call double @llvm.fmuladd.f64(double %606, double %595, double %607)
  %609 = fmul double %594, %608
  store double %609, ptr @sa, align 8
  %610 = load double, ptr @B6, align 8
  %611 = load double, ptr @B5, align 8
  %612 = call double @llvm.fmuladd.f64(double %610, double %595, double %611)
  %613 = load double, ptr @B4, align 8
  %614 = call double @llvm.fmuladd.f64(double %595, double %612, double %613)
  %615 = load double, ptr @B3, align 8
  %616 = call double @llvm.fmuladd.f64(double %595, double %614, double %615)
  %617 = load double, ptr @B2, align 8
  %618 = call double @llvm.fmuladd.f64(double %595, double %616, double %617)
  %619 = load double, ptr @B1, align 8
  %620 = call double @llvm.fmuladd.f64(double %595, double %618, double %619)
  %621 = call double @llvm.fmuladd.f64(double %595, double %620, double %607)
  store double %621, ptr @sb, align 8
  %622 = fmul double %609, %621
  %623 = fmul double %622, %621
  store double %623, ptr @sa, align 8
  %624 = fdiv double %591, 3.000000e+01
  store double %624, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %625 = load double, ptr @two, align 8
  %626 = call double @llvm.fmuladd.f64(double %625, double %.lcssa, double %623)
  %627 = fmul double %547, %626
  %628 = fdiv double %627, %625
  store double %628, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %629 = fadd double %628, f0xBFD2AAAAAAAAAAAB
  store double %629, ptr @sc, align 8
  %630 = fdiv double %607, %624
  store double %630, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %631 = fmul double %629, 1.000000e-30
  %632 = fmul double %591, 1.000000e-30
  %633 = fmul double %630, 1.000000e-30
  %634 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %631, double noundef %632, double noundef %633) #4
  %635 = load double, ptr @five, align 8
  %636 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %637 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %638 = fsub double %636, %637
  %639 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %640 = call double @llvm.fmuladd.f64(double %635, double %638, double %639)
  %641 = fdiv double %640, 5.200000e+01
  store double %641, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %642 = load double, ptr @one, align 8
  %643 = fdiv double %642, %641
  store double %643, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %644 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %645 = fadd double %644, %639
  %646 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %647 = fadd double %645, %646
  %648 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %649 = fadd double %647, %648
  %650 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %651 = fadd double %649, %650
  store double %651, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %652 = load double, ptr @four, align 8
  %653 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %654 = call double @llvm.fmuladd.f64(double %652, double %653, double %651)
  %655 = fdiv double %654, 1.520000e+02
  store double %655, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %656 = fdiv double %642, %655
  store double %656, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %651, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %657 = fadd double %651, %653
  %658 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %659 = fadd double %657, %658
  %660 = fdiv double %659, 1.460000e+02
  store double %660, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %661 = fdiv double %642, %660
  store double %661, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %662 = fadd double %639, %646
  %663 = fadd double %662, %650
  %664 = fadd double %663, %658
  %665 = fdiv double %664, 9.100000e+01
  store double %665, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %666 = fdiv double %642, %665
  store double %666, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar11 = call i32 @putchar(i32 10)
  %667 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %535) #4
  %668 = load double, ptr @nulltime, align 8
  %669 = fmul double %668, 1.000000e-30
  %670 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %669) #4
  %671 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %672 = fmul double %671, 1.000000e-30
  %673 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %672) #4
  %674 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %675 = fmul double %674, 1.000000e-30
  %676 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %675) #4
  %677 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %678 = fmul double %677, 1.000000e-30
  %679 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %678) #4
  %680 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %681 = fmul double %680, 1.000000e-30
  %682 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %681) #4
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
