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
  br i1 %42, label %.loopexit, label %5, !llvm.loop !9

.loopexit:                                        ; preds = %5, %39
  %43 = phi double [ %.lcssa9, %39 ], [ %6, %5 ]
  %44 = phi double [ %16, %39 ], [ %7, %5 ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %45 = call i32 @dtime(ptr noundef nonnull @TimeArray)
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
  %70 = call double @llvm.fmuladd.f64(double %69, double %43, double %68)
  %71 = fmul double %44, %70
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
  store i32 %79, ptr %2, align 4
  %86 = load double, ptr @five, align 8
  %87 = fneg double %86
  %88 = load double, ptr @one, align 8
  %89 = fneg double %88
  store double %89, ptr @sa, align 8
  %90 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %smax = call i32 @llvm.smax.i32(i32 %79, i32 0)
  %91 = add nuw i32 %smax, 1
  br label %92

92:                                               ; preds = %95, %.loopexit
  %93 = phi double [ %96, %95 ], [ %87, %.loopexit ]
  %94 = phi i32 [ %99, %95 ], [ 1, %.loopexit ]
  %exitcond17 = icmp eq i32 %94, %91
  br i1 %exitcond17, label %100, label %95

95:                                               ; preds = %92
  %96 = fneg double %93
  %97 = load double, ptr @sa, align 8
  %98 = fsub double %97, %93
  store double %98, ptr @sa, align 8
  %99 = add nuw i32 %94, 1
  br label %92, !llvm.loop !10

100:                                              ; preds = %92
  %.lcssa8 = phi double [ %93, %92 ]
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
  store double 0.000000e+00, ptr %1, align 8
  %108 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %smax18 = call i32 @llvm.smax.i32(i32 %79, i32 0)
  %109 = add nuw i32 %smax18, 1
  br label %110

110:                                              ; preds = %116, %100
  %111 = phi double [ %121, %116 ], [ %107, %100 ]
  %112 = phi double [ %117, %116 ], [ %.lcssa8, %100 ]
  %113 = phi double [ %124, %116 ], [ 0.000000e+00, %100 ]
  %114 = phi double [ %123, %116 ], [ 0.000000e+00, %100 ]
  %115 = phi i32 [ %128, %116 ], [ 1, %100 ]
  %exitcond19 = icmp eq i32 %115, %109
  br i1 %exitcond19, label %129, label %116

116:                                              ; preds = %110
  %117 = fneg double %112
  %118 = load double, ptr @sa, align 8
  %119 = fsub double %118, %112
  store double %119, ptr @sa, align 8
  %120 = load double, ptr @two, align 8
  %121 = fadd double %111, %120
  %122 = fsub double %117, %121
  %123 = fadd double %114, %122
  %124 = call double @llvm.fmuladd.f64(double %112, double %121, double %113)
  %125 = load double, ptr %1, align 8
  %126 = fdiv double %112, %121
  %127 = fsub double %125, %126
  store double %127, ptr %1, align 8
  %128 = add nuw i32 %115, 1
  br label %110, !llvm.loop !11

129:                                              ; preds = %110
  %.lcssa7 = phi double [ %113, %110 ]
  %.lcssa6 = phi double [ %114, %110 ]
  %130 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %131 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %132 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %133 = fmul double %131, %132
  store double %133, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %134 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %135 = fsub double %133, %134
  %136 = fdiv double %135, 7.000000e+00
  store double %136, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %137 = load double, ptr @sa, align 8
  %138 = fmul double %137, %.lcssa6
  %139 = load double, ptr @sc, align 8
  %140 = fdiv double %138, %139
  %141 = fptosi double %140 to i32
  store i32 %141, ptr %2, align 4
  %142 = load double, ptr @four, align 8
  %143 = load double, ptr %1, align 8
  %144 = fmul double %142, %143
  %145 = load double, ptr @five, align 8
  %146 = fdiv double %144, %145
  store double %146, ptr @sa, align 8
  %147 = fdiv double %145, %.lcssa7
  %148 = fadd double %146, %147
  store double %148, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %149 = fmul double %.lcssa7, %.lcssa7
  %150 = fmul double %149, %.lcssa7
  %151 = fdiv double 3.125000e+01, %150
  %152 = fsub double %148, %151
  store double %152, ptr @piprg, align 8
  %153 = load double, ptr @piref, align 8
  %154 = fsub double %152, %153
  store double %154, ptr @pierr, align 8
  %155 = load double, ptr @one, align 8
  %156 = fdiv double %155, %136
  store double %156, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %157 = fmul double %154, 1.000000e-30
  %158 = fmul double %135, 1.000000e-30
  %159 = fmul double %156, 1.000000e-30
  %160 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %157, double noundef %158, double noundef %159) #4
  %161 = load double, ptr @piref, align 8
  %162 = load double, ptr @three, align 8
  %163 = sitofp i32 %141 to double
  %164 = fmul double %162, %163
  %165 = fdiv double %161, %164
  %166 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %smax20 = call i32 @llvm.smax.i32(i32 %141, i32 1)
  br label %167

167:                                              ; preds = %171, %129
  %168 = phi double [ %173, %171 ], [ 0.000000e+00, %129 ]
  %169 = phi double [ %190, %171 ], [ 0.000000e+00, %129 ]
  %170 = phi i32 [ %191, %171 ], [ 1, %129 ]
  %exitcond21 = icmp ne i32 %170, %smax20
  br i1 %exitcond21, label %171, label %192

171:                                              ; preds = %167
  %172 = load double, ptr @one, align 8
  %173 = fadd double %168, %172
  %174 = fmul double %173, %165
  %175 = fmul double %174, %174
  store double %175, ptr %1, align 8
  %176 = load double, ptr @A6, align 8
  %177 = load double, ptr @A5, align 8
  %178 = fneg double %177
  %179 = call double @llvm.fmuladd.f64(double %176, double %175, double %178)
  %180 = load double, ptr @A4, align 8
  %181 = call double @llvm.fmuladd.f64(double %179, double %175, double %180)
  %182 = load double, ptr @A3, align 8
  %183 = fneg double %182
  %184 = call double @llvm.fmuladd.f64(double %181, double %175, double %183)
  %185 = load double, ptr @A2, align 8
  %186 = call double @llvm.fmuladd.f64(double %184, double %175, double %185)
  %187 = load double, ptr @A1, align 8
  %188 = call double @llvm.fmuladd.f64(double %186, double %175, double %187)
  %189 = call double @llvm.fmuladd.f64(double %188, double %175, double %172)
  %190 = call double @llvm.fmuladd.f64(double %174, double %189, double %169)
  %191 = add nuw i32 %170, 1
  br label %167, !llvm.loop !12

192:                                              ; preds = %167
  %.lcssa5 = phi double [ %169, %167 ]
  %193 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %194 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %195 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %196 = load double, ptr @nulltime, align 8
  %197 = fneg double %196
  %198 = call double @llvm.fmuladd.f64(double %194, double %195, double %197)
  store double %198, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %199 = load double, ptr @piref, align 8
  %200 = load double, ptr @three, align 8
  %201 = fdiv double %199, %200
  %202 = fmul double %201, %201
  store double %202, ptr %1, align 8
  %203 = load double, ptr @A6, align 8
  %204 = load double, ptr @A5, align 8
  %205 = fneg double %204
  %206 = call double @llvm.fmuladd.f64(double %203, double %202, double %205)
  %207 = load double, ptr @A4, align 8
  %208 = call double @llvm.fmuladd.f64(double %206, double %202, double %207)
  %209 = load double, ptr @A3, align 8
  %210 = fneg double %209
  %211 = call double @llvm.fmuladd.f64(double %208, double %202, double %210)
  %212 = load double, ptr @A2, align 8
  %213 = call double @llvm.fmuladd.f64(double %211, double %202, double %212)
  %214 = load double, ptr @A1, align 8
  %215 = call double @llvm.fmuladd.f64(double %213, double %202, double %214)
  %216 = load double, ptr @one, align 8
  %217 = call double @llvm.fmuladd.f64(double %215, double %202, double %216)
  %218 = fmul double %201, %217
  store double %218, ptr @sa, align 8
  %219 = fdiv double %198, 1.700000e+01
  store double %219, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %220 = load double, ptr @two, align 8
  %221 = call double @llvm.fmuladd.f64(double %220, double %.lcssa5, double %218)
  %222 = fmul double %165, %221
  %223 = fdiv double %222, %220
  store double %223, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %224 = fadd double %223, -5.000000e-01
  store double %224, ptr @sc, align 8
  %225 = fdiv double %216, %219
  store double %225, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %226 = fmul double %224, 1.000000e-30
  %227 = fmul double %198, 1.000000e-30
  %228 = fmul double %225, 1.000000e-30
  %229 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %226, double noundef %227, double noundef %228) #4
  %230 = load double, ptr @A3, align 8
  %231 = fneg double %230
  store double %231, ptr @A3, align 8
  %232 = load double, ptr @A5, align 8
  %233 = fneg double %232
  store double %233, ptr @A5, align 8
  %234 = load double, ptr @piref, align 8
  %235 = load double, ptr @three, align 8
  %236 = fmul double %235, %163
  %237 = fdiv double %234, %236
  %238 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %239

239:                                              ; preds = %242, %192
  %240 = phi double [ %259, %242 ], [ 0.000000e+00, %192 ]
  %241 = phi i32 [ %260, %242 ], [ 1, %192 ]
  %exitcond22 = icmp ne i32 %241, %smax20
  br i1 %exitcond22, label %242, label %261

242:                                              ; preds = %239
  %243 = uitofp nneg i32 %241 to double
  %244 = fmul double %237, %243
  %245 = fmul double %244, %244
  store double %245, ptr %1, align 8
  %246 = load double, ptr @B6, align 8
  %247 = load double, ptr @B5, align 8
  %248 = call double @llvm.fmuladd.f64(double %246, double %245, double %247)
  %249 = load double, ptr @B4, align 8
  %250 = call double @llvm.fmuladd.f64(double %245, double %248, double %249)
  %251 = load double, ptr @B3, align 8
  %252 = call double @llvm.fmuladd.f64(double %245, double %250, double %251)
  %253 = load double, ptr @B2, align 8
  %254 = call double @llvm.fmuladd.f64(double %245, double %252, double %253)
  %255 = load double, ptr @B1, align 8
  %256 = call double @llvm.fmuladd.f64(double %245, double %254, double %255)
  %257 = call double @llvm.fmuladd.f64(double %245, double %256, double %240)
  %258 = load double, ptr @one, align 8
  %259 = fadd double %257, %258
  %260 = add nuw i32 %241, 1
  br label %239, !llvm.loop !13

261:                                              ; preds = %239
  %.lcssa4 = phi double [ %240, %239 ]
  %262 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %263 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %264 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %265 = load double, ptr @nulltime, align 8
  %266 = fneg double %265
  %267 = call double @llvm.fmuladd.f64(double %263, double %264, double %266)
  store double %267, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %268 = load double, ptr @piref, align 8
  %269 = load double, ptr @three, align 8
  %270 = fdiv double %268, %269
  %271 = fmul double %270, %270
  store double %271, ptr %1, align 8
  %272 = load double, ptr @B6, align 8
  %273 = load double, ptr @B5, align 8
  %274 = call double @llvm.fmuladd.f64(double %272, double %271, double %273)
  %275 = load double, ptr @B4, align 8
  %276 = call double @llvm.fmuladd.f64(double %271, double %274, double %275)
  %277 = load double, ptr @B3, align 8
  %278 = call double @llvm.fmuladd.f64(double %271, double %276, double %277)
  %279 = load double, ptr @B2, align 8
  %280 = call double @llvm.fmuladd.f64(double %271, double %278, double %279)
  %281 = load double, ptr @B1, align 8
  %282 = call double @llvm.fmuladd.f64(double %271, double %280, double %281)
  %283 = load double, ptr @one, align 8
  %284 = call double @llvm.fmuladd.f64(double %271, double %282, double %283)
  store double %284, ptr @sa, align 8
  %285 = fdiv double %267, 1.500000e+01
  store double %285, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %286 = fadd double %284, %283
  %287 = load double, ptr @two, align 8
  %288 = call double @llvm.fmuladd.f64(double %287, double %.lcssa4, double %286)
  %289 = fmul double %237, %288
  %290 = fdiv double %289, %287
  store double %290, ptr @sa, align 8
  store double %271, ptr %1, align 8
  %291 = load double, ptr @A6, align 8
  %292 = load double, ptr @A5, align 8
  %293 = call double @llvm.fmuladd.f64(double %291, double %271, double %292)
  %294 = load double, ptr @A4, align 8
  %295 = call double @llvm.fmuladd.f64(double %293, double %271, double %294)
  %296 = load double, ptr @A3, align 8
  %297 = call double @llvm.fmuladd.f64(double %295, double %271, double %296)
  %298 = load double, ptr @A2, align 8
  %299 = call double @llvm.fmuladd.f64(double %297, double %271, double %298)
  %300 = load double, ptr @A1, align 8
  %301 = call double @llvm.fmuladd.f64(double %299, double %271, double %300)
  %302 = load double, ptr @A0, align 8
  %303 = call double @llvm.fmuladd.f64(double %301, double %271, double %302)
  %304 = fmul double %270, %303
  store double %304, ptr @sb, align 8
  %305 = fsub double %290, %304
  store double %305, ptr @sc, align 8
  %306 = fdiv double %283, %285
  store double %306, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %307 = fmul double %305, 1.000000e-30
  %308 = fmul double %267, 1.000000e-30
  %309 = fmul double %306, 1.000000e-30
  %310 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %307, double noundef %308, double noundef %309) #4
  %311 = load double, ptr @piref, align 8
  %312 = load double, ptr @three, align 8
  %313 = fmul double %312, %163
  %314 = fdiv double %311, %313
  %315 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %316

316:                                              ; preds = %319, %261
  %317 = phi double [ %350, %319 ], [ 0.000000e+00, %261 ]
  %318 = phi i32 [ %351, %319 ], [ 1, %261 ]
  %exitcond23 = icmp ne i32 %318, %smax20
  br i1 %exitcond23, label %319, label %352

319:                                              ; preds = %316
  %320 = uitofp nneg i32 %318 to double
  %321 = fmul double %314, %320
  %322 = fmul double %321, %321
  store double %322, ptr %1, align 8
  %323 = load double, ptr @A6, align 8
  %324 = load double, ptr @A5, align 8
  %325 = call double @llvm.fmuladd.f64(double %323, double %322, double %324)
  %326 = load double, ptr @A4, align 8
  %327 = call double @llvm.fmuladd.f64(double %325, double %322, double %326)
  %328 = load double, ptr @A3, align 8
  %329 = call double @llvm.fmuladd.f64(double %327, double %322, double %328)
  %330 = load double, ptr @A2, align 8
  %331 = call double @llvm.fmuladd.f64(double %329, double %322, double %330)
  %332 = load double, ptr @A1, align 8
  %333 = call double @llvm.fmuladd.f64(double %331, double %322, double %332)
  %334 = load double, ptr @one, align 8
  %335 = call double @llvm.fmuladd.f64(double %333, double %322, double %334)
  %336 = fmul double %321, %335
  %337 = load double, ptr @B6, align 8
  %338 = load double, ptr @B5, align 8
  %339 = call double @llvm.fmuladd.f64(double %337, double %322, double %338)
  %340 = load double, ptr @B4, align 8
  %341 = call double @llvm.fmuladd.f64(double %322, double %339, double %340)
  %342 = load double, ptr @B3, align 8
  %343 = call double @llvm.fmuladd.f64(double %322, double %341, double %342)
  %344 = load double, ptr @B2, align 8
  %345 = call double @llvm.fmuladd.f64(double %322, double %343, double %344)
  %346 = load double, ptr @B1, align 8
  %347 = call double @llvm.fmuladd.f64(double %322, double %345, double %346)
  %348 = call double @llvm.fmuladd.f64(double %322, double %347, double %334)
  %349 = fdiv double %336, %348
  %350 = fadd double %317, %349
  %351 = add nuw i32 %318, 1
  br label %316, !llvm.loop !14

352:                                              ; preds = %316
  %.lcssa3 = phi double [ %317, %316 ]
  %353 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %354 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %355 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %356 = load double, ptr @nulltime, align 8
  %357 = fneg double %356
  %358 = call double @llvm.fmuladd.f64(double %354, double %355, double %357)
  store double %358, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %359 = load double, ptr @piref, align 8
  %360 = load double, ptr @three, align 8
  %361 = fdiv double %359, %360
  %362 = fmul double %361, %361
  store double %362, ptr %1, align 8
  %363 = load double, ptr @A6, align 8
  %364 = load double, ptr @A5, align 8
  %365 = call double @llvm.fmuladd.f64(double %363, double %362, double %364)
  %366 = load double, ptr @A4, align 8
  %367 = call double @llvm.fmuladd.f64(double %365, double %362, double %366)
  %368 = load double, ptr @A3, align 8
  %369 = call double @llvm.fmuladd.f64(double %367, double %362, double %368)
  %370 = load double, ptr @A2, align 8
  %371 = call double @llvm.fmuladd.f64(double %369, double %362, double %370)
  %372 = load double, ptr @A1, align 8
  %373 = call double @llvm.fmuladd.f64(double %371, double %362, double %372)
  %374 = load double, ptr @one, align 8
  %375 = call double @llvm.fmuladd.f64(double %373, double %362, double %374)
  %376 = fmul double %361, %375
  store double %376, ptr @sa, align 8
  %377 = load double, ptr @B6, align 8
  %378 = load double, ptr @B5, align 8
  %379 = call double @llvm.fmuladd.f64(double %377, double %362, double %378)
  %380 = load double, ptr @B4, align 8
  %381 = call double @llvm.fmuladd.f64(double %362, double %379, double %380)
  %382 = load double, ptr @B3, align 8
  %383 = call double @llvm.fmuladd.f64(double %362, double %381, double %382)
  %384 = load double, ptr @B2, align 8
  %385 = call double @llvm.fmuladd.f64(double %362, double %383, double %384)
  %386 = load double, ptr @B1, align 8
  %387 = call double @llvm.fmuladd.f64(double %362, double %385, double %386)
  %388 = call double @llvm.fmuladd.f64(double %362, double %387, double %374)
  store double %388, ptr @sb, align 8
  %389 = fdiv double %376, %388
  store double %389, ptr @sa, align 8
  %390 = fdiv double %358, 2.900000e+01
  store double %390, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %391 = load double, ptr @two, align 8
  %392 = call double @llvm.fmuladd.f64(double %391, double %.lcssa3, double %389)
  %393 = fmul double %314, %392
  %394 = fdiv double %393, %391
  store double %394, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %395 = fadd double %394, f0xBFE62E42FEFA39EF
  store double %395, ptr @sc, align 8
  %396 = fdiv double %374, %390
  store double %396, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %397 = fmul double %395, 1.000000e-30
  %398 = fmul double %358, 1.000000e-30
  %399 = fmul double %396, 1.000000e-30
  %400 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %397, double noundef %398, double noundef %399) #4
  %401 = load double, ptr @piref, align 8
  %402 = load double, ptr @four, align 8
  %403 = fmul double %402, %163
  %404 = fdiv double %401, %403
  %405 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %406

406:                                              ; preds = %409, %352
  %407 = phi double [ %439, %409 ], [ 0.000000e+00, %352 ]
  %408 = phi i32 [ %440, %409 ], [ 1, %352 ]
  %exitcond24 = icmp ne i32 %408, %smax20
  br i1 %exitcond24, label %409, label %441

409:                                              ; preds = %406
  %410 = uitofp nneg i32 %408 to double
  %411 = fmul double %404, %410
  %412 = fmul double %411, %411
  store double %412, ptr %1, align 8
  %413 = load double, ptr @A6, align 8
  %414 = load double, ptr @A5, align 8
  %415 = call double @llvm.fmuladd.f64(double %413, double %412, double %414)
  %416 = load double, ptr @A4, align 8
  %417 = call double @llvm.fmuladd.f64(double %415, double %412, double %416)
  %418 = load double, ptr @A3, align 8
  %419 = call double @llvm.fmuladd.f64(double %417, double %412, double %418)
  %420 = load double, ptr @A2, align 8
  %421 = call double @llvm.fmuladd.f64(double %419, double %412, double %420)
  %422 = load double, ptr @A1, align 8
  %423 = call double @llvm.fmuladd.f64(double %421, double %412, double %422)
  %424 = load double, ptr @one, align 8
  %425 = call double @llvm.fmuladd.f64(double %423, double %412, double %424)
  %426 = fmul double %411, %425
  %427 = load double, ptr @B6, align 8
  %428 = load double, ptr @B5, align 8
  %429 = call double @llvm.fmuladd.f64(double %427, double %412, double %428)
  %430 = load double, ptr @B4, align 8
  %431 = call double @llvm.fmuladd.f64(double %412, double %429, double %430)
  %432 = load double, ptr @B3, align 8
  %433 = call double @llvm.fmuladd.f64(double %412, double %431, double %432)
  %434 = load double, ptr @B2, align 8
  %435 = call double @llvm.fmuladd.f64(double %412, double %433, double %434)
  %436 = load double, ptr @B1, align 8
  %437 = call double @llvm.fmuladd.f64(double %412, double %435, double %436)
  %438 = call double @llvm.fmuladd.f64(double %412, double %437, double %424)
  %439 = call double @llvm.fmuladd.f64(double %426, double %438, double %407)
  %440 = add nuw i32 %408, 1
  br label %406, !llvm.loop !15

441:                                              ; preds = %406
  %.lcssa2 = phi double [ %407, %406 ]
  %442 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %443 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %444 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %445 = load double, ptr @nulltime, align 8
  %446 = fneg double %445
  %447 = call double @llvm.fmuladd.f64(double %443, double %444, double %446)
  store double %447, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %448 = load double, ptr @piref, align 8
  %449 = load double, ptr @four, align 8
  %450 = fdiv double %448, %449
  %451 = fmul double %450, %450
  store double %451, ptr %1, align 8
  %452 = load double, ptr @A6, align 8
  %453 = load double, ptr @A5, align 8
  %454 = call double @llvm.fmuladd.f64(double %452, double %451, double %453)
  %455 = load double, ptr @A4, align 8
  %456 = call double @llvm.fmuladd.f64(double %454, double %451, double %455)
  %457 = load double, ptr @A3, align 8
  %458 = call double @llvm.fmuladd.f64(double %456, double %451, double %457)
  %459 = load double, ptr @A2, align 8
  %460 = call double @llvm.fmuladd.f64(double %458, double %451, double %459)
  %461 = load double, ptr @A1, align 8
  %462 = call double @llvm.fmuladd.f64(double %460, double %451, double %461)
  %463 = load double, ptr @one, align 8
  %464 = call double @llvm.fmuladd.f64(double %462, double %451, double %463)
  %465 = fmul double %450, %464
  store double %465, ptr @sa, align 8
  %466 = load double, ptr @B6, align 8
  %467 = load double, ptr @B5, align 8
  %468 = call double @llvm.fmuladd.f64(double %466, double %451, double %467)
  %469 = load double, ptr @B4, align 8
  %470 = call double @llvm.fmuladd.f64(double %451, double %468, double %469)
  %471 = load double, ptr @B3, align 8
  %472 = call double @llvm.fmuladd.f64(double %451, double %470, double %471)
  %473 = load double, ptr @B2, align 8
  %474 = call double @llvm.fmuladd.f64(double %451, double %472, double %473)
  %475 = load double, ptr @B1, align 8
  %476 = call double @llvm.fmuladd.f64(double %451, double %474, double %475)
  %477 = call double @llvm.fmuladd.f64(double %451, double %476, double %463)
  store double %477, ptr @sb, align 8
  %478 = fmul double %465, %477
  store double %478, ptr @sa, align 8
  %479 = fdiv double %447, 2.900000e+01
  store double %479, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %480 = load double, ptr @two, align 8
  %481 = call double @llvm.fmuladd.f64(double %480, double %.lcssa2, double %478)
  %482 = fmul double %404, %481
  %483 = fdiv double %482, %480
  store double %483, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %484 = fadd double %483, -2.500000e-01
  store double %484, ptr @sc, align 8
  %485 = fdiv double %463, %479
  store double %485, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %486 = fmul double %484, 1.000000e-30
  %487 = fmul double %447, 1.000000e-30
  %488 = fmul double %485, 1.000000e-30
  %489 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %486, double noundef %487, double noundef %488) #4
  %490 = load double, ptr @one, align 8
  store double %490, ptr %1, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %491 = fdiv double f0x40599541F7F192A4, %163
  %492 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %493

493:                                              ; preds = %496, %441
  %494 = phi double [ %509, %496 ], [ 0.000000e+00, %441 ]
  %495 = phi i32 [ %510, %496 ], [ 1, %441 ]
  %exitcond25 = icmp ne i32 %495, %smax20
  br i1 %exitcond25, label %496, label %511

496:                                              ; preds = %493
  %497 = uitofp nneg i32 %495 to double
  %498 = fmul double %491, %497
  %499 = fmul double %498, %498
  %500 = load double, ptr %1, align 8
  %501 = fadd double %498, %500
  %502 = fdiv double %500, %501
  %503 = fsub double %494, %502
  %504 = fadd double %499, %500
  %505 = fdiv double %498, %504
  %506 = fsub double %503, %505
  %507 = call double @llvm.fmuladd.f64(double %498, double %499, double %500)
  %508 = fdiv double %499, %507
  %509 = fsub double %506, %508
  %510 = add nuw i32 %495, 1
  br label %493, !llvm.loop !16

511:                                              ; preds = %493
  %.lcssa1 = phi double [ %494, %493 ]
  %512 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %513 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %514 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %515 = load double, ptr @nulltime, align 8
  %516 = fneg double %515
  %517 = call double @llvm.fmuladd.f64(double %513, double %514, double %516)
  store double %517, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %518 = fdiv double %517, 1.200000e+01
  store double %518, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %519 = load double, ptr @sa, align 8
  %520 = fmul double %519, %519
  %521 = load double, ptr %1, align 8
  %522 = fneg double %521
  %523 = fadd double %519, %521
  %524 = fdiv double %521, %523
  %525 = fsub double %522, %524
  %526 = fadd double %520, %521
  %527 = fdiv double %519, %526
  %528 = fsub double %525, %527
  %529 = call double @llvm.fmuladd.f64(double %519, double %520, double %521)
  %530 = fdiv double %520, %529
  %531 = fsub double %528, %530
  store double %531, ptr @sa, align 8
  %532 = fmul nnan double %491, 1.800000e+01
  %533 = load double, ptr @two, align 8
  %534 = call double @llvm.fmuladd.f64(double %533, double %.lcssa1, double %531)
  %535 = fmul double %532, %534
  store double %535, ptr @sa, align 8
  %536 = fptosi double %535 to i32
  %537 = mul nsw i32 %536, -2000
  store i32 %537, ptr %2, align 4
  %538 = sitofp i32 %537 to double
  %539 = load double, ptr @scale, align 8
  %540 = fdiv double %538, %539
  %541 = fptosi double %540 to i32
  store i32 %541, ptr %2, align 4
  %542 = fadd double %535, 5.002000e+02
  store double %542, ptr @sc, align 8
  %543 = load double, ptr @one, align 8
  %544 = fdiv double %543, %518
  store double %544, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %545 = fmul double %542, 1.000000e-30
  %546 = fmul double %517, 1.000000e-30
  %547 = fmul double %544, 1.000000e-30
  %548 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %545, double noundef %546, double noundef %547) #4
  %549 = load double, ptr @piref, align 8
  %550 = load double, ptr @three, align 8
  %551 = sitofp i32 %541 to double
  %552 = fmul double %550, %551
  %553 = fdiv double %549, %552
  %554 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %smax26 = call i32 @llvm.smax.i32(i32 %541, i32 1)
  br label %555

555:                                              ; preds = %558, %511
  %556 = phi double [ %589, %558 ], [ 0.000000e+00, %511 ]
  %557 = phi i32 [ %590, %558 ], [ 1, %511 ]
  %exitcond27 = icmp ne i32 %557, %smax26
  br i1 %exitcond27, label %558, label %591

558:                                              ; preds = %555
  %559 = uitofp nneg i32 %557 to double
  %560 = fmul double %553, %559
  %561 = fmul double %560, %560
  store double %561, ptr %1, align 8
  %562 = load double, ptr @B6, align 8
  %563 = load double, ptr @B5, align 8
  %564 = call double @llvm.fmuladd.f64(double %562, double %561, double %563)
  %565 = load double, ptr @B4, align 8
  %566 = call double @llvm.fmuladd.f64(double %561, double %564, double %565)
  %567 = load double, ptr @B3, align 8
  %568 = call double @llvm.fmuladd.f64(double %561, double %566, double %567)
  %569 = load double, ptr @B2, align 8
  %570 = call double @llvm.fmuladd.f64(double %561, double %568, double %569)
  %571 = load double, ptr @B1, align 8
  %572 = call double @llvm.fmuladd.f64(double %561, double %570, double %571)
  %573 = load double, ptr @one, align 8
  %574 = call double @llvm.fmuladd.f64(double %561, double %572, double %573)
  %575 = fmul double %574, %574
  %576 = fmul double %575, %560
  %577 = load double, ptr @A6, align 8
  %578 = load double, ptr @A5, align 8
  %579 = call double @llvm.fmuladd.f64(double %577, double %561, double %578)
  %580 = load double, ptr @A4, align 8
  %581 = call double @llvm.fmuladd.f64(double %579, double %561, double %580)
  %582 = load double, ptr @A3, align 8
  %583 = call double @llvm.fmuladd.f64(double %581, double %561, double %582)
  %584 = load double, ptr @A2, align 8
  %585 = call double @llvm.fmuladd.f64(double %583, double %561, double %584)
  %586 = load double, ptr @A1, align 8
  %587 = call double @llvm.fmuladd.f64(double %585, double %561, double %586)
  %588 = call double @llvm.fmuladd.f64(double %587, double %561, double %573)
  %589 = call double @llvm.fmuladd.f64(double %576, double %588, double %556)
  %590 = add nuw i32 %557, 1
  br label %555, !llvm.loop !17

591:                                              ; preds = %555
  %.lcssa = phi double [ %556, %555 ]
  %592 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %593 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %594 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %595 = load double, ptr @nulltime, align 8
  %596 = fneg double %595
  %597 = call double @llvm.fmuladd.f64(double %593, double %594, double %596)
  store double %597, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %598 = load double, ptr @piref, align 8
  %599 = load double, ptr @three, align 8
  %600 = fdiv double %598, %599
  %601 = fmul double %600, %600
  store double %601, ptr %1, align 8
  %602 = load double, ptr @A6, align 8
  %603 = load double, ptr @A5, align 8
  %604 = call double @llvm.fmuladd.f64(double %602, double %601, double %603)
  %605 = load double, ptr @A4, align 8
  %606 = call double @llvm.fmuladd.f64(double %604, double %601, double %605)
  %607 = load double, ptr @A3, align 8
  %608 = call double @llvm.fmuladd.f64(double %606, double %601, double %607)
  %609 = load double, ptr @A2, align 8
  %610 = call double @llvm.fmuladd.f64(double %608, double %601, double %609)
  %611 = load double, ptr @A1, align 8
  %612 = call double @llvm.fmuladd.f64(double %610, double %601, double %611)
  %613 = load double, ptr @one, align 8
  %614 = call double @llvm.fmuladd.f64(double %612, double %601, double %613)
  %615 = fmul double %600, %614
  store double %615, ptr @sa, align 8
  %616 = load double, ptr @B6, align 8
  %617 = load double, ptr @B5, align 8
  %618 = call double @llvm.fmuladd.f64(double %616, double %601, double %617)
  %619 = load double, ptr @B4, align 8
  %620 = call double @llvm.fmuladd.f64(double %601, double %618, double %619)
  %621 = load double, ptr @B3, align 8
  %622 = call double @llvm.fmuladd.f64(double %601, double %620, double %621)
  %623 = load double, ptr @B2, align 8
  %624 = call double @llvm.fmuladd.f64(double %601, double %622, double %623)
  %625 = load double, ptr @B1, align 8
  %626 = call double @llvm.fmuladd.f64(double %601, double %624, double %625)
  %627 = call double @llvm.fmuladd.f64(double %601, double %626, double %613)
  store double %627, ptr @sb, align 8
  %628 = fmul double %615, %627
  %629 = fmul double %628, %627
  store double %629, ptr @sa, align 8
  %630 = fdiv double %597, 3.000000e+01
  store double %630, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %631 = load double, ptr @two, align 8
  %632 = call double @llvm.fmuladd.f64(double %631, double %.lcssa, double %629)
  %633 = fmul double %553, %632
  %634 = fdiv double %633, %631
  store double %634, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %635 = fadd double %634, f0xBFD2AAAAAAAAAAAB
  store double %635, ptr @sc, align 8
  %636 = fdiv double %613, %630
  store double %636, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %637 = fmul double %635, 1.000000e-30
  %638 = fmul double %597, 1.000000e-30
  %639 = fmul double %636, 1.000000e-30
  %640 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %637, double noundef %638, double noundef %639) #4
  %641 = load double, ptr @five, align 8
  %642 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %643 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %644 = fsub double %642, %643
  %645 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %646 = call double @llvm.fmuladd.f64(double %641, double %644, double %645)
  %647 = fdiv double %646, 5.200000e+01
  store double %647, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %648 = load double, ptr @one, align 8
  %649 = fdiv double %648, %647
  store double %649, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %650 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %651 = fadd double %650, %645
  %652 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %653 = fadd double %651, %652
  %654 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %655 = fadd double %653, %654
  %656 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %657 = fadd double %655, %656
  store double %657, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %658 = load double, ptr @four, align 8
  %659 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %660 = call double @llvm.fmuladd.f64(double %658, double %659, double %657)
  %661 = fdiv double %660, 1.520000e+02
  store double %661, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %662 = fdiv double %648, %661
  store double %662, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %657, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %663 = fadd double %657, %659
  %664 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %665 = fadd double %663, %664
  %666 = fdiv double %665, 1.460000e+02
  store double %666, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %667 = fdiv double %648, %666
  store double %667, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %668 = fadd double %645, %652
  %669 = fadd double %668, %656
  %670 = fadd double %669, %664
  %671 = fdiv double %670, 9.100000e+01
  store double %671, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %672 = fdiv double %648, %671
  store double %672, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar11 = call i32 @putchar(i32 10)
  %673 = load i32, ptr %2, align 4
  %674 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %673) #4
  %675 = load double, ptr @nulltime, align 8
  %676 = fmul double %675, 1.000000e-30
  %677 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %676) #4
  %678 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %679 = fmul double %678, 1.000000e-30
  %680 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %679) #4
  %681 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %682 = fmul double %681, 1.000000e-30
  %683 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %682) #4
  %684 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %685 = fmul double %684, 1.000000e-30
  %686 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %685) #4
  %687 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %688 = fmul double %687, 1.000000e-30
  %689 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %688) #4
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
