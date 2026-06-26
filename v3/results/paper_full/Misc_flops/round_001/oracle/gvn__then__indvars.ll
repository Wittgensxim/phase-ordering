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

5:                                                ; preds = %43, %0
  %6 = phi double [ %.lcssa10, %43 ], [ undef, %0 ]
  %7 = phi double [ %16, %43 ], [ undef, %0 ]
  %8 = phi i32 [ %13, %43 ], [ 15625, %0 ]
  %9 = phi double [ %40, %43 ], [ 0.000000e+00, %0 ]
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
  %19 = phi double [ %23, %22 ], [ 0.000000e+00, %12 ]
  %20 = phi double [ %36, %22 ], [ 0.000000e+00, %12 ]
  %21 = phi i32 [ %37, %22 ], [ 1, %12 ]
  %exitcond = icmp ne i32 %21, %13
  br i1 %exitcond, label %22, label %38

22:                                               ; preds = %18
  %23 = fadd double %19, %14
  %24 = fmul double %23, %16
  %25 = load double, ptr @D1, align 8
  %26 = load double, ptr @D2, align 8
  %27 = load double, ptr @D3, align 8
  %28 = call double @llvm.fmuladd.f64(double %24, double %27, double %26)
  %29 = call double @llvm.fmuladd.f64(double %24, double %28, double %25)
  %30 = load double, ptr @E2, align 8
  %31 = load double, ptr @E3, align 8
  %32 = call double @llvm.fmuladd.f64(double %24, double %31, double %30)
  %33 = call double @llvm.fmuladd.f64(double %24, double %32, double %25)
  %34 = call double @llvm.fmuladd.f64(double %24, double %33, double %14)
  %35 = fdiv double %29, %34
  %36 = fadd double %20, %35
  %37 = add nuw nsw i32 %21, 1
  br label %18, !llvm.loop !7

38:                                               ; preds = %18
  %.lcssa10 = phi double [ %20, %18 ]
  %39 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %40 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %40, ptr @sa, align 8
  %41 = icmp eq i32 %8, 256000000
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  %.lcssa17 = phi double [ %16, %38 ]
  %.lcssa10.lcssa = phi double [ %.lcssa10, %38 ]
  br label %44

43:                                               ; preds = %38
  br label %5, !llvm.loop !9

.loopexit:                                        ; preds = %5
  %.lcssa15 = phi double [ %6, %5 ]
  %.lcssa13 = phi double [ %7, %5 ]
  br label %44

44:                                               ; preds = %.loopexit, %42
  %45 = phi double [ %.lcssa10.lcssa, %42 ], [ %.lcssa15, %.loopexit ]
  %46 = phi double [ %.lcssa17, %42 ], [ %.lcssa13, %.loopexit ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %47 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %48

48:                                               ; preds = %49, %44
  br i1 false, label %49, label %50

49:                                               ; preds = %48
  br label %48, !llvm.loop !10

50:                                               ; preds = %48
  %51 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %52 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %53 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %54 = fmul double %52, %53
  %55 = fcmp olt double %54, 0.000000e+00
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %50
  %58 = phi double [ 0.000000e+00, %56 ], [ %54, %50 ]
  store double %58, ptr @nulltime, align 8
  %59 = load double, ptr @sa, align 8
  %60 = fneg double %58
  %61 = call double @llvm.fmuladd.f64(double %52, double %59, double %60)
  store double %61, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %62 = load double, ptr @D1, align 8
  %63 = load double, ptr @D2, align 8
  %64 = fadd double %62, %63
  %65 = load double, ptr @D3, align 8
  %66 = fadd double %64, %65
  %67 = load double, ptr @one, align 8
  %68 = fadd double %67, %62
  %69 = load double, ptr @E2, align 8
  %70 = fadd double %68, %69
  %71 = load double, ptr @E3, align 8
  %72 = fadd double %70, %71
  %73 = fdiv double %66, %72
  store double %73, ptr @sa, align 8
  store double %62, ptr @sb, align 8
  %74 = fdiv double %61, 1.400000e+01
  store double %74, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %75 = fadd double %73, %62
  %76 = load double, ptr @two, align 8
  %77 = call double @llvm.fmuladd.f64(double %76, double %45, double %75)
  %78 = fmul double %46, %77
  %79 = fdiv double %78, %76
  store double %79, ptr @sa, align 8
  %80 = fdiv double %67, %79
  store double %80, ptr @sb, align 8
  %81 = fptosi double %80 to i32
  %82 = mul nsw i32 %81, 40000
  %83 = sitofp i32 %82 to double
  %84 = load double, ptr @scale, align 8
  %85 = fdiv double %83, %84
  %86 = fptosi double %85 to i32
  %87 = fadd double %80, -2.520000e+01
  store double %87, ptr @sc, align 8
  %88 = fdiv double %67, %74
  store double %88, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %89 = fmul double %87, 1.000000e-30
  %90 = fmul double %61, 1.000000e-30
  %91 = fmul double %88, 1.000000e-30
  %92 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %89, double noundef %90, double noundef %91) #4
  store i32 %86, ptr %2, align 4
  %93 = load double, ptr @five, align 8
  %94 = fneg double %93
  %95 = load double, ptr @one, align 8
  %96 = fneg double %95
  store double %96, ptr @sa, align 8
  %97 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %smax = call i32 @llvm.smax.i32(i32 %86, i32 0)
  %98 = add nuw i32 %smax, 1
  br label %99

99:                                               ; preds = %102, %57
  %100 = phi double [ %103, %102 ], [ %94, %57 ]
  %101 = phi i32 [ %106, %102 ], [ 1, %57 ]
  %exitcond18 = icmp eq i32 %101, %98
  br i1 %exitcond18, label %107, label %102

102:                                              ; preds = %99
  %103 = fneg double %100
  %104 = load double, ptr @sa, align 8
  %105 = fsub double %104, %100
  store double %105, ptr @sa, align 8
  %106 = add nuw i32 %101, 1
  br label %99, !llvm.loop !11

107:                                              ; preds = %99
  %.lcssa9 = phi double [ %100, %99 ]
  %108 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %109 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %110 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %111 = fmul double %109, %110
  %112 = fcmp olt double %111, 0.000000e+00
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  br label %114

114:                                              ; preds = %113, %107
  %storemerge = phi double [ 0.000000e+00, %113 ], [ %111, %107 ]
  store double %storemerge, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %115 = sitofp i32 %86 to double
  store double %115, ptr @sc, align 8
  %116 = load double, ptr @sa, align 8
  store double 0.000000e+00, ptr %1, align 8
  %117 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %smax19 = call i32 @llvm.smax.i32(i32 %86, i32 0)
  %118 = add nuw i32 %smax19, 1
  br label %119

119:                                              ; preds = %126, %114
  %120 = phi double [ %136, %126 ], [ 0.000000e+00, %114 ]
  %121 = phi double [ %131, %126 ], [ %116, %114 ]
  %122 = phi double [ %127, %126 ], [ %.lcssa9, %114 ]
  %123 = phi double [ %134, %126 ], [ 0.000000e+00, %114 ]
  %124 = phi double [ %133, %126 ], [ 0.000000e+00, %114 ]
  %125 = phi i32 [ %137, %126 ], [ 1, %114 ]
  %exitcond20 = icmp eq i32 %125, %118
  br i1 %exitcond20, label %138, label %126

126:                                              ; preds = %119
  %127 = fneg double %122
  %128 = load double, ptr @sa, align 8
  %129 = fsub double %128, %122
  store double %129, ptr @sa, align 8
  %130 = load double, ptr @two, align 8
  %131 = fadd double %121, %130
  %132 = fsub double %127, %131
  %133 = fadd double %124, %132
  %134 = call double @llvm.fmuladd.f64(double %122, double %131, double %123)
  %135 = fdiv double %122, %131
  %136 = fsub double %120, %135
  store double %136, ptr %1, align 8
  %137 = add nuw i32 %125, 1
  br label %119, !llvm.loop !12

138:                                              ; preds = %119
  %.lcssa8 = phi double [ %120, %119 ]
  %.lcssa7 = phi double [ %123, %119 ]
  %.lcssa6 = phi double [ %124, %119 ]
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
  store i32 %150, ptr %2, align 4
  %151 = load double, ptr @four, align 8
  %152 = fmul double %151, %.lcssa8
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
  %smax21 = call i32 @llvm.smax.i32(i32 %150, i32 1)
  br label %175

175:                                              ; preds = %179, %138
  %176 = phi double [ %181, %179 ], [ 0.000000e+00, %138 ]
  %177 = phi double [ %198, %179 ], [ 0.000000e+00, %138 ]
  %178 = phi i32 [ %199, %179 ], [ 1, %138 ]
  %exitcond22 = icmp ne i32 %178, %smax21
  br i1 %exitcond22, label %179, label %200

179:                                              ; preds = %175
  %180 = load double, ptr @one, align 8
  %181 = fadd double %176, %180
  %182 = fmul double %181, %173
  %183 = fmul double %182, %182
  store double %183, ptr %1, align 8
  %184 = load double, ptr @A6, align 8
  %185 = load double, ptr @A5, align 8
  %186 = fneg double %185
  %187 = call double @llvm.fmuladd.f64(double %184, double %183, double %186)
  %188 = load double, ptr @A4, align 8
  %189 = call double @llvm.fmuladd.f64(double %187, double %183, double %188)
  %190 = load double, ptr @A3, align 8
  %191 = fneg double %190
  %192 = call double @llvm.fmuladd.f64(double %189, double %183, double %191)
  %193 = load double, ptr @A2, align 8
  %194 = call double @llvm.fmuladd.f64(double %192, double %183, double %193)
  %195 = load double, ptr @A1, align 8
  %196 = call double @llvm.fmuladd.f64(double %194, double %183, double %195)
  %197 = call double @llvm.fmuladd.f64(double %196, double %183, double %180)
  %198 = call double @llvm.fmuladd.f64(double %182, double %197, double %177)
  %199 = add nuw i32 %178, 1
  br label %175, !llvm.loop !13

200:                                              ; preds = %175
  %.lcssa5 = phi double [ %177, %175 ]
  %201 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %202 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %203 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %204 = load double, ptr @nulltime, align 8
  %205 = fneg double %204
  %206 = call double @llvm.fmuladd.f64(double %202, double %203, double %205)
  store double %206, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %207 = load double, ptr @piref, align 8
  %208 = load double, ptr @three, align 8
  %209 = fdiv double %207, %208
  %210 = fmul double %209, %209
  store double %210, ptr %1, align 8
  %211 = load double, ptr @A6, align 8
  %212 = load double, ptr @A5, align 8
  %213 = fneg double %212
  %214 = call double @llvm.fmuladd.f64(double %211, double %210, double %213)
  %215 = load double, ptr @A4, align 8
  %216 = call double @llvm.fmuladd.f64(double %214, double %210, double %215)
  %217 = load double, ptr @A3, align 8
  %218 = fneg double %217
  %219 = call double @llvm.fmuladd.f64(double %216, double %210, double %218)
  %220 = load double, ptr @A2, align 8
  %221 = call double @llvm.fmuladd.f64(double %219, double %210, double %220)
  %222 = load double, ptr @A1, align 8
  %223 = call double @llvm.fmuladd.f64(double %221, double %210, double %222)
  %224 = load double, ptr @one, align 8
  %225 = call double @llvm.fmuladd.f64(double %223, double %210, double %224)
  %226 = fmul double %209, %225
  store double %226, ptr @sa, align 8
  %227 = fdiv double %206, 1.700000e+01
  store double %227, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %228 = load double, ptr @two, align 8
  %229 = call double @llvm.fmuladd.f64(double %228, double %.lcssa5, double %226)
  %230 = fmul double %173, %229
  %231 = fdiv double %230, %228
  store double %231, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %232 = fadd double %231, -5.000000e-01
  store double %232, ptr @sc, align 8
  %233 = fdiv double %224, %227
  store double %233, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %234 = fmul double %232, 1.000000e-30
  %235 = fmul double %206, 1.000000e-30
  %236 = fmul double %233, 1.000000e-30
  %237 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %234, double noundef %235, double noundef %236) #4
  %238 = load double, ptr @A3, align 8
  %239 = fneg double %238
  store double %239, ptr @A3, align 8
  %240 = load double, ptr @A5, align 8
  %241 = fneg double %240
  store double %241, ptr @A5, align 8
  %242 = load double, ptr @piref, align 8
  %243 = load double, ptr @three, align 8
  %244 = fmul double %243, %171
  %245 = fdiv double %242, %244
  %246 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %247

247:                                              ; preds = %250, %200
  %248 = phi double [ %267, %250 ], [ 0.000000e+00, %200 ]
  %249 = phi i32 [ %268, %250 ], [ 1, %200 ]
  %exitcond23 = icmp ne i32 %249, %smax21
  br i1 %exitcond23, label %250, label %269

250:                                              ; preds = %247
  %251 = uitofp nneg i32 %249 to double
  %252 = fmul double %245, %251
  %253 = fmul double %252, %252
  store double %253, ptr %1, align 8
  %254 = load double, ptr @B6, align 8
  %255 = load double, ptr @B5, align 8
  %256 = call double @llvm.fmuladd.f64(double %254, double %253, double %255)
  %257 = load double, ptr @B4, align 8
  %258 = call double @llvm.fmuladd.f64(double %253, double %256, double %257)
  %259 = load double, ptr @B3, align 8
  %260 = call double @llvm.fmuladd.f64(double %253, double %258, double %259)
  %261 = load double, ptr @B2, align 8
  %262 = call double @llvm.fmuladd.f64(double %253, double %260, double %261)
  %263 = load double, ptr @B1, align 8
  %264 = call double @llvm.fmuladd.f64(double %253, double %262, double %263)
  %265 = call double @llvm.fmuladd.f64(double %253, double %264, double %248)
  %266 = load double, ptr @one, align 8
  %267 = fadd double %265, %266
  %268 = add nuw i32 %249, 1
  br label %247, !llvm.loop !14

269:                                              ; preds = %247
  %.lcssa4 = phi double [ %248, %247 ]
  %270 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %271 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %272 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %273 = load double, ptr @nulltime, align 8
  %274 = fneg double %273
  %275 = call double @llvm.fmuladd.f64(double %271, double %272, double %274)
  store double %275, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %276 = load double, ptr @piref, align 8
  %277 = load double, ptr @three, align 8
  %278 = fdiv double %276, %277
  %279 = fmul double %278, %278
  store double %279, ptr %1, align 8
  %280 = load double, ptr @B6, align 8
  %281 = load double, ptr @B5, align 8
  %282 = call double @llvm.fmuladd.f64(double %280, double %279, double %281)
  %283 = load double, ptr @B4, align 8
  %284 = call double @llvm.fmuladd.f64(double %279, double %282, double %283)
  %285 = load double, ptr @B3, align 8
  %286 = call double @llvm.fmuladd.f64(double %279, double %284, double %285)
  %287 = load double, ptr @B2, align 8
  %288 = call double @llvm.fmuladd.f64(double %279, double %286, double %287)
  %289 = load double, ptr @B1, align 8
  %290 = call double @llvm.fmuladd.f64(double %279, double %288, double %289)
  %291 = load double, ptr @one, align 8
  %292 = call double @llvm.fmuladd.f64(double %279, double %290, double %291)
  store double %292, ptr @sa, align 8
  %293 = fdiv double %275, 1.500000e+01
  store double %293, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %294 = fadd double %292, %291
  %295 = load double, ptr @two, align 8
  %296 = call double @llvm.fmuladd.f64(double %295, double %.lcssa4, double %294)
  %297 = fmul double %245, %296
  %298 = fdiv double %297, %295
  store double %298, ptr @sa, align 8
  store double %279, ptr %1, align 8
  %299 = load double, ptr @A6, align 8
  %300 = load double, ptr @A5, align 8
  %301 = call double @llvm.fmuladd.f64(double %299, double %279, double %300)
  %302 = load double, ptr @A4, align 8
  %303 = call double @llvm.fmuladd.f64(double %301, double %279, double %302)
  %304 = load double, ptr @A3, align 8
  %305 = call double @llvm.fmuladd.f64(double %303, double %279, double %304)
  %306 = load double, ptr @A2, align 8
  %307 = call double @llvm.fmuladd.f64(double %305, double %279, double %306)
  %308 = load double, ptr @A1, align 8
  %309 = call double @llvm.fmuladd.f64(double %307, double %279, double %308)
  %310 = load double, ptr @A0, align 8
  %311 = call double @llvm.fmuladd.f64(double %309, double %279, double %310)
  %312 = fmul double %278, %311
  store double %312, ptr @sb, align 8
  %313 = fsub double %298, %312
  store double %313, ptr @sc, align 8
  %314 = fdiv double %291, %293
  store double %314, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %315 = fmul double %313, 1.000000e-30
  %316 = fmul double %275, 1.000000e-30
  %317 = fmul double %314, 1.000000e-30
  %318 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %315, double noundef %316, double noundef %317) #4
  %319 = load double, ptr @piref, align 8
  %320 = load double, ptr @three, align 8
  %321 = fmul double %320, %171
  %322 = fdiv double %319, %321
  %323 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %324

324:                                              ; preds = %327, %269
  %325 = phi double [ %358, %327 ], [ 0.000000e+00, %269 ]
  %326 = phi i32 [ %359, %327 ], [ 1, %269 ]
  %exitcond24 = icmp ne i32 %326, %smax21
  br i1 %exitcond24, label %327, label %360

327:                                              ; preds = %324
  %328 = uitofp nneg i32 %326 to double
  %329 = fmul double %322, %328
  %330 = fmul double %329, %329
  store double %330, ptr %1, align 8
  %331 = load double, ptr @A6, align 8
  %332 = load double, ptr @A5, align 8
  %333 = call double @llvm.fmuladd.f64(double %331, double %330, double %332)
  %334 = load double, ptr @A4, align 8
  %335 = call double @llvm.fmuladd.f64(double %333, double %330, double %334)
  %336 = load double, ptr @A3, align 8
  %337 = call double @llvm.fmuladd.f64(double %335, double %330, double %336)
  %338 = load double, ptr @A2, align 8
  %339 = call double @llvm.fmuladd.f64(double %337, double %330, double %338)
  %340 = load double, ptr @A1, align 8
  %341 = call double @llvm.fmuladd.f64(double %339, double %330, double %340)
  %342 = load double, ptr @one, align 8
  %343 = call double @llvm.fmuladd.f64(double %341, double %330, double %342)
  %344 = fmul double %329, %343
  %345 = load double, ptr @B6, align 8
  %346 = load double, ptr @B5, align 8
  %347 = call double @llvm.fmuladd.f64(double %345, double %330, double %346)
  %348 = load double, ptr @B4, align 8
  %349 = call double @llvm.fmuladd.f64(double %330, double %347, double %348)
  %350 = load double, ptr @B3, align 8
  %351 = call double @llvm.fmuladd.f64(double %330, double %349, double %350)
  %352 = load double, ptr @B2, align 8
  %353 = call double @llvm.fmuladd.f64(double %330, double %351, double %352)
  %354 = load double, ptr @B1, align 8
  %355 = call double @llvm.fmuladd.f64(double %330, double %353, double %354)
  %356 = call double @llvm.fmuladd.f64(double %330, double %355, double %342)
  %357 = fdiv double %344, %356
  %358 = fadd double %325, %357
  %359 = add nuw i32 %326, 1
  br label %324, !llvm.loop !15

360:                                              ; preds = %324
  %.lcssa3 = phi double [ %325, %324 ]
  %361 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %362 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %363 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %364 = load double, ptr @nulltime, align 8
  %365 = fneg double %364
  %366 = call double @llvm.fmuladd.f64(double %362, double %363, double %365)
  store double %366, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %367 = load double, ptr @piref, align 8
  %368 = load double, ptr @three, align 8
  %369 = fdiv double %367, %368
  %370 = fmul double %369, %369
  store double %370, ptr %1, align 8
  %371 = load double, ptr @A6, align 8
  %372 = load double, ptr @A5, align 8
  %373 = call double @llvm.fmuladd.f64(double %371, double %370, double %372)
  %374 = load double, ptr @A4, align 8
  %375 = call double @llvm.fmuladd.f64(double %373, double %370, double %374)
  %376 = load double, ptr @A3, align 8
  %377 = call double @llvm.fmuladd.f64(double %375, double %370, double %376)
  %378 = load double, ptr @A2, align 8
  %379 = call double @llvm.fmuladd.f64(double %377, double %370, double %378)
  %380 = load double, ptr @A1, align 8
  %381 = call double @llvm.fmuladd.f64(double %379, double %370, double %380)
  %382 = load double, ptr @one, align 8
  %383 = call double @llvm.fmuladd.f64(double %381, double %370, double %382)
  %384 = fmul double %369, %383
  store double %384, ptr @sa, align 8
  %385 = load double, ptr @B6, align 8
  %386 = load double, ptr @B5, align 8
  %387 = call double @llvm.fmuladd.f64(double %385, double %370, double %386)
  %388 = load double, ptr @B4, align 8
  %389 = call double @llvm.fmuladd.f64(double %370, double %387, double %388)
  %390 = load double, ptr @B3, align 8
  %391 = call double @llvm.fmuladd.f64(double %370, double %389, double %390)
  %392 = load double, ptr @B2, align 8
  %393 = call double @llvm.fmuladd.f64(double %370, double %391, double %392)
  %394 = load double, ptr @B1, align 8
  %395 = call double @llvm.fmuladd.f64(double %370, double %393, double %394)
  %396 = call double @llvm.fmuladd.f64(double %370, double %395, double %382)
  store double %396, ptr @sb, align 8
  %397 = fdiv double %384, %396
  store double %397, ptr @sa, align 8
  %398 = fdiv double %366, 2.900000e+01
  store double %398, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %399 = load double, ptr @two, align 8
  %400 = call double @llvm.fmuladd.f64(double %399, double %.lcssa3, double %397)
  %401 = fmul double %322, %400
  %402 = fdiv double %401, %399
  store double %402, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %403 = fadd double %402, f0xBFE62E42FEFA39EF
  store double %403, ptr @sc, align 8
  %404 = fdiv double %382, %398
  store double %404, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %405 = fmul double %403, 1.000000e-30
  %406 = fmul double %366, 1.000000e-30
  %407 = fmul double %404, 1.000000e-30
  %408 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %405, double noundef %406, double noundef %407) #4
  %409 = load double, ptr @piref, align 8
  %410 = load double, ptr @four, align 8
  %411 = fmul double %410, %171
  %412 = fdiv double %409, %411
  %413 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %414

414:                                              ; preds = %417, %360
  %415 = phi double [ %447, %417 ], [ 0.000000e+00, %360 ]
  %416 = phi i32 [ %448, %417 ], [ 1, %360 ]
  %exitcond25 = icmp ne i32 %416, %smax21
  br i1 %exitcond25, label %417, label %449

417:                                              ; preds = %414
  %418 = uitofp nneg i32 %416 to double
  %419 = fmul double %412, %418
  %420 = fmul double %419, %419
  store double %420, ptr %1, align 8
  %421 = load double, ptr @A6, align 8
  %422 = load double, ptr @A5, align 8
  %423 = call double @llvm.fmuladd.f64(double %421, double %420, double %422)
  %424 = load double, ptr @A4, align 8
  %425 = call double @llvm.fmuladd.f64(double %423, double %420, double %424)
  %426 = load double, ptr @A3, align 8
  %427 = call double @llvm.fmuladd.f64(double %425, double %420, double %426)
  %428 = load double, ptr @A2, align 8
  %429 = call double @llvm.fmuladd.f64(double %427, double %420, double %428)
  %430 = load double, ptr @A1, align 8
  %431 = call double @llvm.fmuladd.f64(double %429, double %420, double %430)
  %432 = load double, ptr @one, align 8
  %433 = call double @llvm.fmuladd.f64(double %431, double %420, double %432)
  %434 = fmul double %419, %433
  %435 = load double, ptr @B6, align 8
  %436 = load double, ptr @B5, align 8
  %437 = call double @llvm.fmuladd.f64(double %435, double %420, double %436)
  %438 = load double, ptr @B4, align 8
  %439 = call double @llvm.fmuladd.f64(double %420, double %437, double %438)
  %440 = load double, ptr @B3, align 8
  %441 = call double @llvm.fmuladd.f64(double %420, double %439, double %440)
  %442 = load double, ptr @B2, align 8
  %443 = call double @llvm.fmuladd.f64(double %420, double %441, double %442)
  %444 = load double, ptr @B1, align 8
  %445 = call double @llvm.fmuladd.f64(double %420, double %443, double %444)
  %446 = call double @llvm.fmuladd.f64(double %420, double %445, double %432)
  %447 = call double @llvm.fmuladd.f64(double %434, double %446, double %415)
  %448 = add nuw i32 %416, 1
  br label %414, !llvm.loop !16

449:                                              ; preds = %414
  %.lcssa2 = phi double [ %415, %414 ]
  %450 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %451 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %452 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %453 = load double, ptr @nulltime, align 8
  %454 = fneg double %453
  %455 = call double @llvm.fmuladd.f64(double %451, double %452, double %454)
  store double %455, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %456 = load double, ptr @piref, align 8
  %457 = load double, ptr @four, align 8
  %458 = fdiv double %456, %457
  %459 = fmul double %458, %458
  store double %459, ptr %1, align 8
  %460 = load double, ptr @A6, align 8
  %461 = load double, ptr @A5, align 8
  %462 = call double @llvm.fmuladd.f64(double %460, double %459, double %461)
  %463 = load double, ptr @A4, align 8
  %464 = call double @llvm.fmuladd.f64(double %462, double %459, double %463)
  %465 = load double, ptr @A3, align 8
  %466 = call double @llvm.fmuladd.f64(double %464, double %459, double %465)
  %467 = load double, ptr @A2, align 8
  %468 = call double @llvm.fmuladd.f64(double %466, double %459, double %467)
  %469 = load double, ptr @A1, align 8
  %470 = call double @llvm.fmuladd.f64(double %468, double %459, double %469)
  %471 = load double, ptr @one, align 8
  %472 = call double @llvm.fmuladd.f64(double %470, double %459, double %471)
  %473 = fmul double %458, %472
  store double %473, ptr @sa, align 8
  %474 = load double, ptr @B6, align 8
  %475 = load double, ptr @B5, align 8
  %476 = call double @llvm.fmuladd.f64(double %474, double %459, double %475)
  %477 = load double, ptr @B4, align 8
  %478 = call double @llvm.fmuladd.f64(double %459, double %476, double %477)
  %479 = load double, ptr @B3, align 8
  %480 = call double @llvm.fmuladd.f64(double %459, double %478, double %479)
  %481 = load double, ptr @B2, align 8
  %482 = call double @llvm.fmuladd.f64(double %459, double %480, double %481)
  %483 = load double, ptr @B1, align 8
  %484 = call double @llvm.fmuladd.f64(double %459, double %482, double %483)
  %485 = call double @llvm.fmuladd.f64(double %459, double %484, double %471)
  store double %485, ptr @sb, align 8
  %486 = fmul double %473, %485
  store double %486, ptr @sa, align 8
  %487 = fdiv double %455, 2.900000e+01
  store double %487, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %488 = load double, ptr @two, align 8
  %489 = call double @llvm.fmuladd.f64(double %488, double %.lcssa2, double %486)
  %490 = fmul double %412, %489
  %491 = fdiv double %490, %488
  store double %491, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %492 = fadd double %491, -2.500000e-01
  store double %492, ptr @sc, align 8
  %493 = fdiv double %471, %487
  store double %493, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %494 = fmul double %492, 1.000000e-30
  %495 = fmul double %455, 1.000000e-30
  %496 = fmul double %493, 1.000000e-30
  %497 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %494, double noundef %495, double noundef %496) #4
  %498 = load double, ptr @one, align 8
  store double %498, ptr %1, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %499 = fdiv double f0x40599541F7F192A4, %171
  %500 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %501

501:                                              ; preds = %504, %449
  %502 = phi double [ %516, %504 ], [ 0.000000e+00, %449 ]
  %503 = phi i32 [ %517, %504 ], [ 1, %449 ]
  %exitcond26 = icmp ne i32 %503, %smax21
  br i1 %exitcond26, label %504, label %518

504:                                              ; preds = %501
  %505 = uitofp nneg i32 %503 to double
  %506 = fmul double %499, %505
  %507 = fmul double %506, %506
  %508 = fadd double %506, %498
  %509 = fdiv double %498, %508
  %510 = fsub double %502, %509
  %511 = fadd double %507, %498
  %512 = fdiv double %506, %511
  %513 = fsub double %510, %512
  %514 = call double @llvm.fmuladd.f64(double %506, double %507, double %498)
  %515 = fdiv double %507, %514
  %516 = fsub double %513, %515
  %517 = add nuw i32 %503, 1
  br label %501, !llvm.loop !17

518:                                              ; preds = %501
  %.lcssa1 = phi double [ %502, %501 ]
  %519 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %520 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %521 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %522 = load double, ptr @nulltime, align 8
  %523 = fneg double %522
  %524 = call double @llvm.fmuladd.f64(double %520, double %521, double %523)
  store double %524, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %525 = fdiv double %524, 1.200000e+01
  store double %525, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %526 = load double, ptr @sa, align 8
  %527 = fmul double %526, %526
  %528 = fneg double %498
  %529 = fadd double %526, %498
  %530 = fdiv double %498, %529
  %531 = fsub double %528, %530
  %532 = fadd double %527, %498
  %533 = fdiv double %526, %532
  %534 = fsub double %531, %533
  %535 = call double @llvm.fmuladd.f64(double %526, double %527, double %498)
  %536 = fdiv double %527, %535
  %537 = fsub double %534, %536
  store double %537, ptr @sa, align 8
  %538 = fmul nnan double %499, 1.800000e+01
  %539 = load double, ptr @two, align 8
  %540 = call double @llvm.fmuladd.f64(double %539, double %.lcssa1, double %537)
  %541 = fmul double %538, %540
  store double %541, ptr @sa, align 8
  %542 = fptosi double %541 to i32
  %543 = mul nsw i32 %542, -2000
  store i32 %543, ptr %2, align 4
  %544 = sitofp i32 %543 to double
  %545 = load double, ptr @scale, align 8
  %546 = fdiv double %544, %545
  %547 = fptosi double %546 to i32
  store i32 %547, ptr %2, align 4
  %548 = fadd double %541, 5.002000e+02
  store double %548, ptr @sc, align 8
  %549 = load double, ptr @one, align 8
  %550 = fdiv double %549, %525
  store double %550, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %551 = fmul double %548, 1.000000e-30
  %552 = fmul double %524, 1.000000e-30
  %553 = fmul double %550, 1.000000e-30
  %554 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %551, double noundef %552, double noundef %553) #4
  %555 = load double, ptr @piref, align 8
  %556 = load double, ptr @three, align 8
  %557 = sitofp i32 %547 to double
  %558 = fmul double %556, %557
  %559 = fdiv double %555, %558
  %560 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %smax27 = call i32 @llvm.smax.i32(i32 %547, i32 1)
  br label %561

561:                                              ; preds = %564, %518
  %562 = phi double [ %595, %564 ], [ 0.000000e+00, %518 ]
  %563 = phi i32 [ %596, %564 ], [ 1, %518 ]
  %exitcond28 = icmp ne i32 %563, %smax27
  br i1 %exitcond28, label %564, label %597

564:                                              ; preds = %561
  %565 = uitofp nneg i32 %563 to double
  %566 = fmul double %559, %565
  %567 = fmul double %566, %566
  store double %567, ptr %1, align 8
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
  %581 = fmul double %580, %580
  %582 = fmul double %581, %566
  %583 = load double, ptr @A6, align 8
  %584 = load double, ptr @A5, align 8
  %585 = call double @llvm.fmuladd.f64(double %583, double %567, double %584)
  %586 = load double, ptr @A4, align 8
  %587 = call double @llvm.fmuladd.f64(double %585, double %567, double %586)
  %588 = load double, ptr @A3, align 8
  %589 = call double @llvm.fmuladd.f64(double %587, double %567, double %588)
  %590 = load double, ptr @A2, align 8
  %591 = call double @llvm.fmuladd.f64(double %589, double %567, double %590)
  %592 = load double, ptr @A1, align 8
  %593 = call double @llvm.fmuladd.f64(double %591, double %567, double %592)
  %594 = call double @llvm.fmuladd.f64(double %593, double %567, double %579)
  %595 = call double @llvm.fmuladd.f64(double %582, double %594, double %562)
  %596 = add nuw i32 %563, 1
  br label %561, !llvm.loop !18

597:                                              ; preds = %561
  %.lcssa = phi double [ %562, %561 ]
  %598 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %599 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %600 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %601 = load double, ptr @nulltime, align 8
  %602 = fneg double %601
  %603 = call double @llvm.fmuladd.f64(double %599, double %600, double %602)
  store double %603, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %604 = load double, ptr @piref, align 8
  %605 = load double, ptr @three, align 8
  %606 = fdiv double %604, %605
  %607 = fmul double %606, %606
  store double %607, ptr %1, align 8
  %608 = load double, ptr @A6, align 8
  %609 = load double, ptr @A5, align 8
  %610 = call double @llvm.fmuladd.f64(double %608, double %607, double %609)
  %611 = load double, ptr @A4, align 8
  %612 = call double @llvm.fmuladd.f64(double %610, double %607, double %611)
  %613 = load double, ptr @A3, align 8
  %614 = call double @llvm.fmuladd.f64(double %612, double %607, double %613)
  %615 = load double, ptr @A2, align 8
  %616 = call double @llvm.fmuladd.f64(double %614, double %607, double %615)
  %617 = load double, ptr @A1, align 8
  %618 = call double @llvm.fmuladd.f64(double %616, double %607, double %617)
  %619 = load double, ptr @one, align 8
  %620 = call double @llvm.fmuladd.f64(double %618, double %607, double %619)
  %621 = fmul double %606, %620
  store double %621, ptr @sa, align 8
  %622 = load double, ptr @B6, align 8
  %623 = load double, ptr @B5, align 8
  %624 = call double @llvm.fmuladd.f64(double %622, double %607, double %623)
  %625 = load double, ptr @B4, align 8
  %626 = call double @llvm.fmuladd.f64(double %607, double %624, double %625)
  %627 = load double, ptr @B3, align 8
  %628 = call double @llvm.fmuladd.f64(double %607, double %626, double %627)
  %629 = load double, ptr @B2, align 8
  %630 = call double @llvm.fmuladd.f64(double %607, double %628, double %629)
  %631 = load double, ptr @B1, align 8
  %632 = call double @llvm.fmuladd.f64(double %607, double %630, double %631)
  %633 = call double @llvm.fmuladd.f64(double %607, double %632, double %619)
  store double %633, ptr @sb, align 8
  %634 = fmul double %621, %633
  %635 = fmul double %634, %633
  store double %635, ptr @sa, align 8
  %636 = fdiv double %603, 3.000000e+01
  store double %636, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %637 = load double, ptr @two, align 8
  %638 = call double @llvm.fmuladd.f64(double %637, double %.lcssa, double %635)
  %639 = fmul double %559, %638
  %640 = fdiv double %639, %637
  store double %640, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %641 = fadd double %640, f0xBFD2AAAAAAAAAAAB
  store double %641, ptr @sc, align 8
  %642 = fdiv double %619, %636
  store double %642, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %643 = fmul double %641, 1.000000e-30
  %644 = fmul double %603, 1.000000e-30
  %645 = fmul double %642, 1.000000e-30
  %646 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %643, double noundef %644, double noundef %645) #4
  %647 = load double, ptr @five, align 8
  %648 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %649 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %650 = fsub double %648, %649
  %651 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %652 = call double @llvm.fmuladd.f64(double %647, double %650, double %651)
  %653 = fdiv double %652, 5.200000e+01
  store double %653, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %654 = load double, ptr @one, align 8
  %655 = fdiv double %654, %653
  store double %655, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %656 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %657 = fadd double %656, %651
  %658 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %659 = fadd double %657, %658
  %660 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %661 = fadd double %659, %660
  %662 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %663 = fadd double %661, %662
  store double %663, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %664 = load double, ptr @four, align 8
  %665 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %666 = call double @llvm.fmuladd.f64(double %664, double %665, double %663)
  %667 = fdiv double %666, 1.520000e+02
  store double %667, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %668 = fdiv double %654, %667
  store double %668, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %663, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %669 = fadd double %663, %665
  %670 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %671 = fadd double %669, %670
  %672 = fdiv double %671, 1.460000e+02
  store double %672, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %673 = fdiv double %654, %672
  store double %673, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %674 = fadd double %651, %658
  %675 = fadd double %674, %662
  %676 = fadd double %675, %670
  %677 = fdiv double %676, 9.100000e+01
  store double %677, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %678 = fdiv double %654, %677
  store double %678, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar11 = call i32 @putchar(i32 10)
  %679 = load i32, ptr %2, align 4
  %680 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %679) #4
  %681 = load double, ptr @nulltime, align 8
  %682 = fmul double %681, 1.000000e-30
  %683 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %682) #4
  %684 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %685 = fmul double %684, 1.000000e-30
  %686 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %685) #4
  %687 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %688 = fmul double %687, 1.000000e-30
  %689 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %688) #4
  %690 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %691 = fmul double %690, 1.000000e-30
  %692 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %691) #4
  %693 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %694 = fmul double %693, 1.000000e-30
  %695 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %694) #4
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
