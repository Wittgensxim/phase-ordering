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
  %puts291 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  %puts292 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  %1 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %2 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  store double 0.000000e+00, ptr @sa, align 8
  br label %3

3:                                                ; preds = %36, %0
  %.0284 = phi double [ undef, %0 ], [ %11, %36 ]
  %.0273 = phi double [ undef, %0 ], [ %.2275, %36 ]
  %.0 = phi i32 [ 15625, %0 ], [ %8, %36 ]
  %4 = load double, ptr @sa, align 8
  %5 = load double, ptr @TLimit, align 8
  %6 = fcmp olt double %4, %5
  br i1 %6, label %7, label %37

7:                                                ; preds = %3
  %8 = shl nsw i32 %.0, 1
  %9 = load double, ptr @one, align 8
  %10 = sitofp i32 %8 to double
  %11 = fdiv double %9, %10
  %12 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %13

13:                                               ; preds = %15, %7
  %.0288 = phi double [ 0.000000e+00, %7 ], [ %16, %15 ]
  %.2275 = phi double [ 0.000000e+00, %7 ], [ %29, %15 ]
  %.0271 = phi i32 [ 1, %7 ], [ %30, %15 ]
  %.not.not = icmp slt i32 %.0271, %8
  br i1 %.not.not, label %14, label %31

14:                                               ; preds = %13
  br label %15

15:                                               ; preds = %14
  %16 = fadd double %.0288, %9
  %17 = fmul double %16, %11
  %18 = load double, ptr @D3, align 8
  %19 = load double, ptr @D2, align 8
  %20 = call double @llvm.fmuladd.f64(double %17, double %18, double %19)
  %21 = load double, ptr @D1, align 8
  %22 = call double @llvm.fmuladd.f64(double %17, double %20, double %21)
  %23 = load double, ptr @E3, align 8
  %24 = load double, ptr @E2, align 8
  %25 = call double @llvm.fmuladd.f64(double %17, double %23, double %24)
  %26 = call double @llvm.fmuladd.f64(double %17, double %25, double %21)
  %27 = call double @llvm.fmuladd.f64(double %17, double %26, double %9)
  %28 = fdiv double %22, %27
  %29 = fadd double %.2275, %28
  %30 = add nuw nsw i32 %.0271, 1
  br label %13, !llvm.loop !7

31:                                               ; preds = %13
  %32 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %33 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %33, ptr @sa, align 8
  %34 = icmp eq i32 %.0, 256000000
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %37

36:                                               ; preds = %31
  br label %3, !llvm.loop !9

37:                                               ; preds = %35, %3
  %.1285 = phi double [ %11, %35 ], [ %.0284, %3 ]
  %.1274 = phi double [ %.2275, %35 ], [ %.0273, %3 ]
  %.1 = phi i32 [ %8, %35 ], [ %.0, %3 ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %38 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %39

39:                                               ; preds = %41, %37
  %.1272 = phi i32 [ 1, %37 ], [ %42, %41 ]
  %.not.not293 = icmp slt i32 %.1272, %.1
  br i1 %.not.not293, label %40, label %43

40:                                               ; preds = %39
  br label %41

41:                                               ; preds = %40
  %42 = add nuw nsw i32 %.1272, 1
  br label %39, !llvm.loop !10

43:                                               ; preds = %39
  %44 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %45 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %46 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %47 = fmul double %45, %46
  %48 = fcmp olt double %47, 0.000000e+00
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %49, %43
  %storemerge = phi double [ 0.000000e+00, %49 ], [ %47, %43 ]
  store double %storemerge, ptr @nulltime, align 8
  %51 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %52 = load double, ptr @sa, align 8
  %53 = fneg double %storemerge
  %54 = call double @llvm.fmuladd.f64(double %51, double %52, double %53)
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
  %67 = load double, ptr @D1, align 8
  store double %67, ptr @sb, align 8
  %68 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %69 = fdiv double %68, 1.400000e+01
  store double %69, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %70 = fadd double %66, %67
  %71 = load double, ptr @two, align 8
  %72 = call double @llvm.fmuladd.f64(double %71, double %.1274, double %70)
  %73 = fmul double %.1285, %72
  %74 = fdiv double %73, %71
  store double %74, ptr @sa, align 8
  %75 = load double, ptr @one, align 8
  %76 = fdiv double %75, %74
  store double %76, ptr @sb, align 8
  %77 = fptosi double %76 to i32
  %78 = mul nsw i32 %77, 40000
  %79 = sitofp i32 %78 to double
  %80 = load double, ptr @scale, align 8
  %81 = fdiv double %79, %80
  %82 = fptosi double %81 to i32
  %83 = load double, ptr @sb, align 8
  %84 = fadd double %83, -2.520000e+01
  store double %84, ptr @sc, align 8
  %85 = load double, ptr @one, align 8
  %86 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %87 = fdiv double %85, %86
  store double %87, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %88 = fmul double %84, 1.000000e-30
  %89 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %90 = fmul double %89, 1.000000e-30
  %91 = fmul double %87, 1.000000e-30
  %92 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %88, double noundef %90, double noundef %91) #4
  %93 = load double, ptr @five, align 8
  %94 = fneg double %93
  %95 = load double, ptr @one, align 8
  %96 = fneg double %95
  store double %96, ptr @sa, align 8
  %97 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %98

98:                                               ; preds = %102, %50
  %.3276 = phi double [ %94, %50 ], [ %103, %102 ]
  %.2 = phi i32 [ 1, %50 ], [ %104, %102 ]
  %.not = icmp sgt i32 %.2, %82
  br i1 %.not, label %105, label %99

99:                                               ; preds = %98
  %100 = load double, ptr @sa, align 8
  %101 = fsub double %100, %.3276
  store double %101, ptr @sa, align 8
  br label %102

102:                                              ; preds = %99
  %103 = fneg double %.3276
  %104 = add nuw nsw i32 %.2, 1
  br label %98, !llvm.loop !11

105:                                              ; preds = %98
  %106 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %107 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %108 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %109 = fmul double %107, %108
  %110 = fcmp olt double %109, 0.000000e+00
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %112

112:                                              ; preds = %111, %105
  %storemerge294 = phi double [ 0.000000e+00, %111 ], [ %109, %105 ]
  store double %storemerge294, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %113 = sitofp i32 %82 to double
  store double %113, ptr @sc, align 8
  %114 = load double, ptr @sa, align 8
  %115 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %116

116:                                              ; preds = %120, %112
  %.1289 = phi double [ 0.000000e+00, %112 ], [ %126, %120 ]
  %.0287 = phi double [ 0.000000e+00, %112 ], [ %125, %120 ]
  %.2286 = phi double [ 0.000000e+00, %112 ], [ %128, %120 ]
  %.0283 = phi double [ %114, %112 ], [ %122, %120 ]
  %.4277 = phi double [ %.3276, %112 ], [ %123, %120 ]
  %.3 = phi i32 [ 1, %112 ], [ %129, %120 ]
  %.not295 = icmp sgt i32 %.3, %82
  br i1 %.not295, label %130, label %117

117:                                              ; preds = %116
  %118 = load double, ptr @sa, align 8
  %119 = fsub double %118, %.4277
  store double %119, ptr @sa, align 8
  br label %120

120:                                              ; preds = %117
  %121 = load double, ptr @two, align 8
  %122 = fadd double %.0283, %121
  %123 = fneg double %.4277
  %124 = fdiv double %.4277, %122
  %125 = fsub double %.0287, %124
  %126 = call double @llvm.fmuladd.f64(double %.4277, double %122, double %.1289)
  %127 = fsub double %123, %122
  %128 = fadd double %.2286, %127
  %129 = add nuw nsw i32 %.3, 1
  br label %116, !llvm.loop !12

130:                                              ; preds = %116
  %131 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %132 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %133 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %134 = fmul double %132, %133
  store double %134, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %135 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %136 = fsub double %134, %135
  %137 = fdiv double %136, 7.000000e+00
  store double %137, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %138 = load double, ptr @sa, align 8
  %139 = fmul double %138, %.2286
  %140 = load double, ptr @sc, align 8
  %141 = fdiv double %139, %140
  %142 = fptosi double %141 to i32
  %143 = load double, ptr @four, align 8
  %144 = fmul double %143, %.0287
  %145 = load double, ptr @five, align 8
  %146 = fdiv double %144, %145
  store double %146, ptr @sa, align 8
  %147 = fdiv double %145, %.1289
  %148 = fadd double %146, %147
  store double %148, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %149 = fmul double %.1289, %.1289
  %150 = fmul double %149, %.1289
  %151 = fdiv double 3.125000e+01, %150
  %152 = fsub double %148, %151
  store double %152, ptr @piprg, align 8
  %153 = load double, ptr @piref, align 8
  %154 = fsub double %152, %153
  store double %154, ptr @pierr, align 8
  %155 = load double, ptr @one, align 8
  %156 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %157 = fdiv double %155, %156
  store double %157, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %158 = fmul double %154, 1.000000e-30
  %159 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %160 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %161 = fsub double %159, %160
  %162 = fmul double %161, 1.000000e-30
  %163 = fmul double %157, 1.000000e-30
  %164 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %158, double noundef %162, double noundef %163) #4
  %165 = load double, ptr @piref, align 8
  %166 = load double, ptr @three, align 8
  %167 = sitofp i32 %142 to double
  %168 = fmul double %166, %167
  %169 = fdiv double %165, %168
  %170 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %171

171:                                              ; preds = %173, %130
  %.2290 = phi double [ 0.000000e+00, %130 ], [ %175, %173 ]
  %.5278 = phi double [ 0.000000e+00, %130 ], [ %193, %173 ]
  %.4 = phi i32 [ 1, %130 ], [ %194, %173 ]
  %.not296.not = icmp slt i32 %.4, %142
  br i1 %.not296.not, label %172, label %195

172:                                              ; preds = %171
  br label %173

173:                                              ; preds = %172
  %174 = load double, ptr @one, align 8
  %175 = fadd double %.2290, %174
  %176 = fmul double %175, %169
  %177 = load double, ptr @A6, align 8
  %178 = fmul double %176, %176
  %179 = load double, ptr @A5, align 8
  %180 = fneg double %179
  %181 = call double @llvm.fmuladd.f64(double %177, double %178, double %180)
  %182 = load double, ptr @A4, align 8
  %183 = call double @llvm.fmuladd.f64(double %181, double %178, double %182)
  %184 = load double, ptr @A3, align 8
  %185 = fneg double %184
  %186 = call double @llvm.fmuladd.f64(double %183, double %178, double %185)
  %187 = load double, ptr @A2, align 8
  %188 = call double @llvm.fmuladd.f64(double %186, double %178, double %187)
  %189 = load double, ptr @A1, align 8
  %190 = call double @llvm.fmuladd.f64(double %188, double %178, double %189)
  %191 = load double, ptr @one, align 8
  %192 = call double @llvm.fmuladd.f64(double %190, double %178, double %191)
  %193 = call double @llvm.fmuladd.f64(double %176, double %192, double %.5278)
  %194 = add nuw nsw i32 %.4, 1
  br label %171, !llvm.loop !13

195:                                              ; preds = %171
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
  %222 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %223 = fdiv double %222, 1.700000e+01
  store double %223, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %224 = load double, ptr @two, align 8
  %225 = call double @llvm.fmuladd.f64(double %224, double %.5278, double %221)
  %226 = fmul double %169, %225
  %227 = fdiv double %226, %224
  store double %227, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %228 = fadd double %227, -5.000000e-01
  store double %228, ptr @sc, align 8
  %229 = load double, ptr @one, align 8
  %230 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %231 = fdiv double %229, %230
  store double %231, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %232 = fmul double %228, 1.000000e-30
  %233 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %234 = fmul double %233, 1.000000e-30
  %235 = fmul double %231, 1.000000e-30
  %236 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %232, double noundef %234, double noundef %235) #4
  %237 = load double, ptr @A3, align 8
  %238 = fneg double %237
  store double %238, ptr @A3, align 8
  %239 = load double, ptr @A5, align 8
  %240 = fneg double %239
  store double %240, ptr @A5, align 8
  %241 = load double, ptr @piref, align 8
  %242 = load double, ptr @three, align 8
  %243 = sitofp i32 %142 to double
  %244 = fmul double %242, %243
  %245 = fdiv double %241, %244
  %246 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %247

247:                                              ; preds = %249, %195
  %.6279 = phi double [ 0.000000e+00, %195 ], [ %266, %249 ]
  %.5 = phi i32 [ 1, %195 ], [ %267, %249 ]
  %.not297.not = icmp slt i32 %.5, %142
  br i1 %.not297.not, label %248, label %268

248:                                              ; preds = %247
  br label %249

249:                                              ; preds = %248
  %250 = uitofp nneg i32 %.5 to double
  %251 = fmul double %245, %250
  %252 = fmul double %251, %251
  %253 = load double, ptr @B6, align 8
  %254 = load double, ptr @B5, align 8
  %255 = call double @llvm.fmuladd.f64(double %253, double %252, double %254)
  %256 = load double, ptr @B4, align 8
  %257 = call double @llvm.fmuladd.f64(double %252, double %255, double %256)
  %258 = load double, ptr @B3, align 8
  %259 = call double @llvm.fmuladd.f64(double %252, double %257, double %258)
  %260 = load double, ptr @B2, align 8
  %261 = call double @llvm.fmuladd.f64(double %252, double %259, double %260)
  %262 = load double, ptr @B1, align 8
  %263 = call double @llvm.fmuladd.f64(double %252, double %261, double %262)
  %264 = call double @llvm.fmuladd.f64(double %252, double %263, double %.6279)
  %265 = load double, ptr @one, align 8
  %266 = fadd double %264, %265
  %267 = add nuw nsw i32 %.5, 1
  br label %247, !llvm.loop !14

268:                                              ; preds = %247
  %269 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %270 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %271 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %272 = load double, ptr @nulltime, align 8
  %273 = fneg double %272
  %274 = call double @llvm.fmuladd.f64(double %270, double %271, double %273)
  store double %274, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %275 = load double, ptr @piref, align 8
  %276 = load double, ptr @three, align 8
  %277 = fdiv double %275, %276
  %278 = fmul double %277, %277
  %279 = load double, ptr @B6, align 8
  %280 = load double, ptr @B5, align 8
  %281 = call double @llvm.fmuladd.f64(double %279, double %278, double %280)
  %282 = load double, ptr @B4, align 8
  %283 = call double @llvm.fmuladd.f64(double %278, double %281, double %282)
  %284 = load double, ptr @B3, align 8
  %285 = call double @llvm.fmuladd.f64(double %278, double %283, double %284)
  %286 = load double, ptr @B2, align 8
  %287 = call double @llvm.fmuladd.f64(double %278, double %285, double %286)
  %288 = load double, ptr @B1, align 8
  %289 = call double @llvm.fmuladd.f64(double %278, double %287, double %288)
  %290 = load double, ptr @one, align 8
  %291 = call double @llvm.fmuladd.f64(double %278, double %289, double %290)
  store double %291, ptr @sa, align 8
  %292 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %293 = fdiv double %292, 1.500000e+01
  store double %293, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %294 = fadd double %291, %290
  %295 = load double, ptr @two, align 8
  %296 = call double @llvm.fmuladd.f64(double %295, double %.6279, double %294)
  %297 = fmul double %245, %296
  %298 = fdiv double %297, %295
  store double %298, ptr @sa, align 8
  %299 = load double, ptr @piref, align 8
  %300 = load double, ptr @three, align 8
  %301 = fdiv double %299, %300
  %302 = fmul double %301, %301
  %303 = load double, ptr @A6, align 8
  %304 = load double, ptr @A5, align 8
  %305 = call double @llvm.fmuladd.f64(double %303, double %302, double %304)
  %306 = load double, ptr @A4, align 8
  %307 = call double @llvm.fmuladd.f64(double %305, double %302, double %306)
  %308 = load double, ptr @A3, align 8
  %309 = call double @llvm.fmuladd.f64(double %307, double %302, double %308)
  %310 = load double, ptr @A2, align 8
  %311 = call double @llvm.fmuladd.f64(double %309, double %302, double %310)
  %312 = load double, ptr @A1, align 8
  %313 = call double @llvm.fmuladd.f64(double %311, double %302, double %312)
  %314 = load double, ptr @A0, align 8
  %315 = call double @llvm.fmuladd.f64(double %313, double %302, double %314)
  %316 = fmul double %301, %315
  store double %316, ptr @sb, align 8
  %317 = load double, ptr @sa, align 8
  %318 = fsub double %317, %316
  store double %318, ptr @sc, align 8
  %319 = load double, ptr @one, align 8
  %320 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %321 = fdiv double %319, %320
  store double %321, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %322 = fmul double %318, 1.000000e-30
  %323 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %324 = fmul double %323, 1.000000e-30
  %325 = fmul double %321, 1.000000e-30
  %326 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %322, double noundef %324, double noundef %325) #4
  %327 = load double, ptr @piref, align 8
  %328 = load double, ptr @three, align 8
  %329 = sitofp i32 %142 to double
  %330 = fmul double %328, %329
  %331 = fdiv double %327, %330
  %332 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %333

333:                                              ; preds = %335, %268
  %.7280 = phi double [ 0.000000e+00, %268 ], [ %367, %335 ]
  %.6 = phi i32 [ 1, %268 ], [ %368, %335 ]
  %.not298.not = icmp slt i32 %.6, %142
  br i1 %.not298.not, label %334, label %369

334:                                              ; preds = %333
  br label %335

335:                                              ; preds = %334
  %336 = uitofp nneg i32 %.6 to double
  %337 = fmul double %331, %336
  %338 = load double, ptr @A6, align 8
  %339 = fmul double %337, %337
  %340 = load double, ptr @A5, align 8
  %341 = call double @llvm.fmuladd.f64(double %338, double %339, double %340)
  %342 = load double, ptr @A4, align 8
  %343 = call double @llvm.fmuladd.f64(double %341, double %339, double %342)
  %344 = load double, ptr @A3, align 8
  %345 = call double @llvm.fmuladd.f64(double %343, double %339, double %344)
  %346 = load double, ptr @A2, align 8
  %347 = call double @llvm.fmuladd.f64(double %345, double %339, double %346)
  %348 = load double, ptr @A1, align 8
  %349 = call double @llvm.fmuladd.f64(double %347, double %339, double %348)
  %350 = load double, ptr @one, align 8
  %351 = call double @llvm.fmuladd.f64(double %349, double %339, double %350)
  %352 = fmul double %337, %351
  %353 = load double, ptr @B6, align 8
  %354 = load double, ptr @B5, align 8
  %355 = call double @llvm.fmuladd.f64(double %353, double %339, double %354)
  %356 = load double, ptr @B4, align 8
  %357 = call double @llvm.fmuladd.f64(double %339, double %355, double %356)
  %358 = load double, ptr @B3, align 8
  %359 = call double @llvm.fmuladd.f64(double %339, double %357, double %358)
  %360 = load double, ptr @B2, align 8
  %361 = call double @llvm.fmuladd.f64(double %339, double %359, double %360)
  %362 = load double, ptr @B1, align 8
  %363 = call double @llvm.fmuladd.f64(double %339, double %361, double %362)
  %364 = load double, ptr @one, align 8
  %365 = call double @llvm.fmuladd.f64(double %339, double %363, double %364)
  %366 = fdiv double %352, %365
  %367 = fadd double %.7280, %366
  %368 = add nuw nsw i32 %.6, 1
  br label %333, !llvm.loop !15

369:                                              ; preds = %333
  %370 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %371 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %372 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %373 = load double, ptr @nulltime, align 8
  %374 = fneg double %373
  %375 = call double @llvm.fmuladd.f64(double %371, double %372, double %374)
  store double %375, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %376 = load double, ptr @piref, align 8
  %377 = load double, ptr @three, align 8
  %378 = fdiv double %376, %377
  %379 = fmul double %378, %378
  %380 = load double, ptr @A6, align 8
  %381 = load double, ptr @A5, align 8
  %382 = call double @llvm.fmuladd.f64(double %380, double %379, double %381)
  %383 = load double, ptr @A4, align 8
  %384 = call double @llvm.fmuladd.f64(double %382, double %379, double %383)
  %385 = load double, ptr @A3, align 8
  %386 = call double @llvm.fmuladd.f64(double %384, double %379, double %385)
  %387 = load double, ptr @A2, align 8
  %388 = call double @llvm.fmuladd.f64(double %386, double %379, double %387)
  %389 = load double, ptr @A1, align 8
  %390 = call double @llvm.fmuladd.f64(double %388, double %379, double %389)
  %391 = load double, ptr @one, align 8
  %392 = call double @llvm.fmuladd.f64(double %390, double %379, double %391)
  %393 = fmul double %378, %392
  store double %393, ptr @sa, align 8
  %394 = load double, ptr @B6, align 8
  %395 = load double, ptr @B5, align 8
  %396 = call double @llvm.fmuladd.f64(double %394, double %379, double %395)
  %397 = load double, ptr @B4, align 8
  %398 = call double @llvm.fmuladd.f64(double %379, double %396, double %397)
  %399 = load double, ptr @B3, align 8
  %400 = call double @llvm.fmuladd.f64(double %379, double %398, double %399)
  %401 = load double, ptr @B2, align 8
  %402 = call double @llvm.fmuladd.f64(double %379, double %400, double %401)
  %403 = load double, ptr @B1, align 8
  %404 = call double @llvm.fmuladd.f64(double %379, double %402, double %403)
  %405 = load double, ptr @one, align 8
  %406 = call double @llvm.fmuladd.f64(double %379, double %404, double %405)
  store double %406, ptr @sb, align 8
  %407 = load double, ptr @sa, align 8
  %408 = fdiv double %407, %406
  store double %408, ptr @sa, align 8
  %409 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %410 = fdiv double %409, 2.900000e+01
  store double %410, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %411 = load double, ptr @two, align 8
  %412 = call double @llvm.fmuladd.f64(double %411, double %.7280, double %408)
  %413 = fmul double %331, %412
  %414 = fdiv double %413, %411
  store double %414, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %415 = fadd double %414, f0xBFE62E42FEFA39EF
  store double %415, ptr @sc, align 8
  %416 = load double, ptr @one, align 8
  %417 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %418 = fdiv double %416, %417
  store double %418, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %419 = fmul double %415, 1.000000e-30
  %420 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %421 = fmul double %420, 1.000000e-30
  %422 = fmul double %418, 1.000000e-30
  %423 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %419, double noundef %421, double noundef %422) #4
  %424 = load double, ptr @piref, align 8
  %425 = load double, ptr @four, align 8
  %426 = sitofp i32 %142 to double
  %427 = fmul double %425, %426
  %428 = fdiv double %424, %427
  %429 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %430

430:                                              ; preds = %432, %369
  %.8281 = phi double [ 0.000000e+00, %369 ], [ %463, %432 ]
  %.7 = phi i32 [ 1, %369 ], [ %464, %432 ]
  %.not299.not = icmp slt i32 %.7, %142
  br i1 %.not299.not, label %431, label %465

431:                                              ; preds = %430
  br label %432

432:                                              ; preds = %431
  %433 = uitofp nneg i32 %.7 to double
  %434 = fmul double %428, %433
  %435 = load double, ptr @A6, align 8
  %436 = fmul double %434, %434
  %437 = load double, ptr @A5, align 8
  %438 = call double @llvm.fmuladd.f64(double %435, double %436, double %437)
  %439 = load double, ptr @A4, align 8
  %440 = call double @llvm.fmuladd.f64(double %438, double %436, double %439)
  %441 = load double, ptr @A3, align 8
  %442 = call double @llvm.fmuladd.f64(double %440, double %436, double %441)
  %443 = load double, ptr @A2, align 8
  %444 = call double @llvm.fmuladd.f64(double %442, double %436, double %443)
  %445 = load double, ptr @A1, align 8
  %446 = call double @llvm.fmuladd.f64(double %444, double %436, double %445)
  %447 = load double, ptr @one, align 8
  %448 = call double @llvm.fmuladd.f64(double %446, double %436, double %447)
  %449 = fmul double %434, %448
  %450 = load double, ptr @B6, align 8
  %451 = load double, ptr @B5, align 8
  %452 = call double @llvm.fmuladd.f64(double %450, double %436, double %451)
  %453 = load double, ptr @B4, align 8
  %454 = call double @llvm.fmuladd.f64(double %436, double %452, double %453)
  %455 = load double, ptr @B3, align 8
  %456 = call double @llvm.fmuladd.f64(double %436, double %454, double %455)
  %457 = load double, ptr @B2, align 8
  %458 = call double @llvm.fmuladd.f64(double %436, double %456, double %457)
  %459 = load double, ptr @B1, align 8
  %460 = call double @llvm.fmuladd.f64(double %436, double %458, double %459)
  %461 = load double, ptr @one, align 8
  %462 = call double @llvm.fmuladd.f64(double %436, double %460, double %461)
  %463 = call double @llvm.fmuladd.f64(double %449, double %462, double %.8281)
  %464 = add nuw nsw i32 %.7, 1
  br label %430, !llvm.loop !16

465:                                              ; preds = %430
  %466 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %467 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %468 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %469 = load double, ptr @nulltime, align 8
  %470 = fneg double %469
  %471 = call double @llvm.fmuladd.f64(double %467, double %468, double %470)
  store double %471, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %472 = load double, ptr @piref, align 8
  %473 = load double, ptr @four, align 8
  %474 = fdiv double %472, %473
  %475 = fmul double %474, %474
  %476 = load double, ptr @A6, align 8
  %477 = load double, ptr @A5, align 8
  %478 = call double @llvm.fmuladd.f64(double %476, double %475, double %477)
  %479 = load double, ptr @A4, align 8
  %480 = call double @llvm.fmuladd.f64(double %478, double %475, double %479)
  %481 = load double, ptr @A3, align 8
  %482 = call double @llvm.fmuladd.f64(double %480, double %475, double %481)
  %483 = load double, ptr @A2, align 8
  %484 = call double @llvm.fmuladd.f64(double %482, double %475, double %483)
  %485 = load double, ptr @A1, align 8
  %486 = call double @llvm.fmuladd.f64(double %484, double %475, double %485)
  %487 = load double, ptr @one, align 8
  %488 = call double @llvm.fmuladd.f64(double %486, double %475, double %487)
  %489 = fmul double %474, %488
  store double %489, ptr @sa, align 8
  %490 = load double, ptr @B6, align 8
  %491 = load double, ptr @B5, align 8
  %492 = call double @llvm.fmuladd.f64(double %490, double %475, double %491)
  %493 = load double, ptr @B4, align 8
  %494 = call double @llvm.fmuladd.f64(double %475, double %492, double %493)
  %495 = load double, ptr @B3, align 8
  %496 = call double @llvm.fmuladd.f64(double %475, double %494, double %495)
  %497 = load double, ptr @B2, align 8
  %498 = call double @llvm.fmuladd.f64(double %475, double %496, double %497)
  %499 = load double, ptr @B1, align 8
  %500 = call double @llvm.fmuladd.f64(double %475, double %498, double %499)
  %501 = load double, ptr @one, align 8
  %502 = call double @llvm.fmuladd.f64(double %475, double %500, double %501)
  store double %502, ptr @sb, align 8
  %503 = load double, ptr @sa, align 8
  %504 = fmul double %503, %502
  store double %504, ptr @sa, align 8
  %505 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %506 = fdiv double %505, 2.900000e+01
  store double %506, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %507 = load double, ptr @two, align 8
  %508 = call double @llvm.fmuladd.f64(double %507, double %.8281, double %504)
  %509 = fmul double %428, %508
  %510 = fdiv double %509, %507
  store double %510, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %511 = fadd double %510, -2.500000e-01
  store double %511, ptr @sc, align 8
  %512 = load double, ptr @one, align 8
  %513 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %514 = fdiv double %512, %513
  store double %514, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %515 = fmul double %511, 1.000000e-30
  %516 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %517 = fmul double %516, 1.000000e-30
  %518 = fmul double %514, 1.000000e-30
  %519 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %515, double noundef %517, double noundef %518) #4
  %520 = load double, ptr @one, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %521 = sitofp i32 %142 to double
  %522 = fdiv double f0x40599541F7F192A4, %521
  %523 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %524

524:                                              ; preds = %526, %465
  %.9282 = phi double [ 0.000000e+00, %465 ], [ %538, %526 ]
  %.8 = phi i32 [ 1, %465 ], [ %539, %526 ]
  %.not300.not = icmp slt i32 %.8, %142
  br i1 %.not300.not, label %525, label %540

525:                                              ; preds = %524
  br label %526

526:                                              ; preds = %525
  %527 = uitofp nneg i32 %.8 to double
  %528 = fmul double %522, %527
  %529 = fadd double %528, %520
  %530 = fdiv double %520, %529
  %531 = fsub double %.9282, %530
  %532 = fmul double %528, %528
  %533 = fadd double %532, %520
  %534 = fdiv double %528, %533
  %535 = fsub double %531, %534
  %536 = call double @llvm.fmuladd.f64(double %528, double %532, double %520)
  %537 = fdiv double %532, %536
  %538 = fsub double %535, %537
  %539 = add nuw nsw i32 %.8, 1
  br label %524, !llvm.loop !17

540:                                              ; preds = %524
  %541 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %542 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %543 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %544 = load double, ptr @nulltime, align 8
  %545 = fneg double %544
  %546 = call double @llvm.fmuladd.f64(double %542, double %543, double %545)
  store double %546, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %547 = fdiv double %546, 1.200000e+01
  store double %547, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %548 = load double, ptr @sa, align 8
  %549 = fmul double %548, %548
  %550 = fneg double %520
  %551 = fadd double %548, %520
  %552 = fdiv double %520, %551
  %553 = fsub double %550, %552
  %554 = fadd double %549, %520
  %555 = fdiv double %548, %554
  %556 = fsub double %553, %555
  %557 = call double @llvm.fmuladd.f64(double %548, double %549, double %520)
  %558 = fdiv double %549, %557
  %559 = fsub double %556, %558
  store double %559, ptr @sa, align 8
  %560 = fmul nnan double %522, 1.800000e+01
  %561 = load double, ptr @two, align 8
  %562 = call double @llvm.fmuladd.f64(double %561, double %.9282, double %559)
  %563 = fmul double %560, %562
  store double %563, ptr @sa, align 8
  %564 = fptosi double %563 to i32
  %565 = mul nsw i32 %564, -2000
  %566 = sitofp i32 %565 to double
  %567 = load double, ptr @scale, align 8
  %568 = fdiv double %566, %567
  %569 = fptosi double %568 to i32
  %570 = load double, ptr @sa, align 8
  %571 = fadd double %570, 5.002000e+02
  store double %571, ptr @sc, align 8
  %572 = load double, ptr @one, align 8
  %573 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %574 = fdiv double %572, %573
  store double %574, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %575 = fmul double %571, 1.000000e-30
  %576 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %577 = fmul double %576, 1.000000e-30
  %578 = fmul double %574, 1.000000e-30
  %579 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %575, double noundef %577, double noundef %578) #4
  %580 = load double, ptr @piref, align 8
  %581 = load double, ptr @three, align 8
  %582 = sitofp i32 %569 to double
  %583 = fmul double %581, %582
  %584 = fdiv double %580, %583
  %585 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %586

586:                                              ; preds = %588, %540
  %.10 = phi double [ 0.000000e+00, %540 ], [ %620, %588 ]
  %.9 = phi i32 [ 1, %540 ], [ %621, %588 ]
  %.not301.not = icmp slt i32 %.9, %569
  br i1 %.not301.not, label %587, label %622

587:                                              ; preds = %586
  br label %588

588:                                              ; preds = %587
  %589 = uitofp nneg i32 %.9 to double
  %590 = fmul double %584, %589
  %591 = fmul double %590, %590
  %592 = load double, ptr @B6, align 8
  %593 = load double, ptr @B5, align 8
  %594 = call double @llvm.fmuladd.f64(double %592, double %591, double %593)
  %595 = load double, ptr @B4, align 8
  %596 = call double @llvm.fmuladd.f64(double %591, double %594, double %595)
  %597 = load double, ptr @B3, align 8
  %598 = call double @llvm.fmuladd.f64(double %591, double %596, double %597)
  %599 = load double, ptr @B2, align 8
  %600 = call double @llvm.fmuladd.f64(double %591, double %598, double %599)
  %601 = load double, ptr @B1, align 8
  %602 = call double @llvm.fmuladd.f64(double %591, double %600, double %601)
  %603 = load double, ptr @one, align 8
  %604 = call double @llvm.fmuladd.f64(double %591, double %602, double %603)
  %605 = fmul double %604, %604
  %606 = fmul double %605, %590
  %607 = load double, ptr @A6, align 8
  %608 = load double, ptr @A5, align 8
  %609 = call double @llvm.fmuladd.f64(double %607, double %591, double %608)
  %610 = load double, ptr @A4, align 8
  %611 = call double @llvm.fmuladd.f64(double %609, double %591, double %610)
  %612 = load double, ptr @A3, align 8
  %613 = call double @llvm.fmuladd.f64(double %611, double %591, double %612)
  %614 = load double, ptr @A2, align 8
  %615 = call double @llvm.fmuladd.f64(double %613, double %591, double %614)
  %616 = load double, ptr @A1, align 8
  %617 = call double @llvm.fmuladd.f64(double %615, double %591, double %616)
  %618 = load double, ptr @one, align 8
  %619 = call double @llvm.fmuladd.f64(double %617, double %591, double %618)
  %620 = call double @llvm.fmuladd.f64(double %606, double %619, double %.10)
  %621 = add nuw nsw i32 %.9, 1
  br label %586, !llvm.loop !18

622:                                              ; preds = %586
  %623 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %624 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %625 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %626 = load double, ptr @nulltime, align 8
  %627 = fneg double %626
  %628 = call double @llvm.fmuladd.f64(double %624, double %625, double %627)
  store double %628, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %629 = load double, ptr @piref, align 8
  %630 = load double, ptr @three, align 8
  %631 = fdiv double %629, %630
  %632 = fmul double %631, %631
  %633 = load double, ptr @A6, align 8
  %634 = load double, ptr @A5, align 8
  %635 = call double @llvm.fmuladd.f64(double %633, double %632, double %634)
  %636 = load double, ptr @A4, align 8
  %637 = call double @llvm.fmuladd.f64(double %635, double %632, double %636)
  %638 = load double, ptr @A3, align 8
  %639 = call double @llvm.fmuladd.f64(double %637, double %632, double %638)
  %640 = load double, ptr @A2, align 8
  %641 = call double @llvm.fmuladd.f64(double %639, double %632, double %640)
  %642 = load double, ptr @A1, align 8
  %643 = call double @llvm.fmuladd.f64(double %641, double %632, double %642)
  %644 = load double, ptr @one, align 8
  %645 = call double @llvm.fmuladd.f64(double %643, double %632, double %644)
  %646 = fmul double %631, %645
  store double %646, ptr @sa, align 8
  %647 = load double, ptr @B6, align 8
  %648 = load double, ptr @B5, align 8
  %649 = call double @llvm.fmuladd.f64(double %647, double %632, double %648)
  %650 = load double, ptr @B4, align 8
  %651 = call double @llvm.fmuladd.f64(double %632, double %649, double %650)
  %652 = load double, ptr @B3, align 8
  %653 = call double @llvm.fmuladd.f64(double %632, double %651, double %652)
  %654 = load double, ptr @B2, align 8
  %655 = call double @llvm.fmuladd.f64(double %632, double %653, double %654)
  %656 = load double, ptr @B1, align 8
  %657 = call double @llvm.fmuladd.f64(double %632, double %655, double %656)
  %658 = load double, ptr @one, align 8
  %659 = call double @llvm.fmuladd.f64(double %632, double %657, double %658)
  store double %659, ptr @sb, align 8
  %660 = load double, ptr @sa, align 8
  %661 = fmul double %660, %659
  %662 = fmul double %661, %659
  store double %662, ptr @sa, align 8
  %663 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %664 = fdiv double %663, 3.000000e+01
  store double %664, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %665 = load double, ptr @two, align 8
  %666 = call double @llvm.fmuladd.f64(double %665, double %.10, double %662)
  %667 = fmul double %584, %666
  %668 = fdiv double %667, %665
  store double %668, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %669 = fadd double %668, f0xBFD2AAAAAAAAAAAB
  store double %669, ptr @sc, align 8
  %670 = load double, ptr @one, align 8
  %671 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %672 = fdiv double %670, %671
  store double %672, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %673 = fmul double %669, 1.000000e-30
  %674 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %675 = fmul double %674, 1.000000e-30
  %676 = fmul double %672, 1.000000e-30
  %677 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %673, double noundef %675, double noundef %676) #4
  %678 = load double, ptr @five, align 8
  %679 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %680 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %681 = fsub double %679, %680
  %682 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %683 = call double @llvm.fmuladd.f64(double %678, double %681, double %682)
  %684 = fdiv double %683, 5.200000e+01
  store double %684, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %685 = load double, ptr @one, align 8
  %686 = fdiv double %685, %684
  store double %686, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %687 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %688 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %689 = fadd double %687, %688
  %690 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %691 = fadd double %689, %690
  %692 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %693 = fadd double %691, %692
  %694 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %695 = fadd double %693, %694
  store double %695, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %696 = load double, ptr @four, align 8
  %697 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %698 = call double @llvm.fmuladd.f64(double %696, double %697, double %695)
  %699 = fdiv double %698, 1.520000e+02
  store double %699, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %700 = load double, ptr @one, align 8
  %701 = fdiv double %700, %699
  store double %701, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %702 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %703 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %704 = fadd double %702, %703
  %705 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %706 = fadd double %704, %705
  %707 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %708 = fadd double %706, %707
  %709 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %710 = fadd double %708, %709
  store double %710, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %711 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %712 = fadd double %710, %711
  %713 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %714 = fadd double %712, %713
  %715 = fdiv double %714, 1.460000e+02
  store double %715, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %716 = load double, ptr @one, align 8
  %717 = fdiv double %716, %715
  store double %717, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %718 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %719 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %720 = fadd double %718, %719
  %721 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %722 = fadd double %720, %721
  %723 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %724 = fadd double %722, %723
  %725 = fdiv double %724, 9.100000e+01
  store double %725, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %726 = load double, ptr @one, align 8
  %727 = fdiv double %726, %725
  store double %727, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar302 = call i32 @putchar(i32 10)
  %728 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %569) #4
  %729 = load double, ptr @nulltime, align 8
  %730 = fmul double %729, 1.000000e-30
  %731 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %730) #4
  %732 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %733 = fmul double %732, 1.000000e-30
  %734 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %733) #4
  %735 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %736 = fmul double %735, 1.000000e-30
  %737 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %736) #4
  %738 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %739 = fmul double %738, 1.000000e-30
  %740 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %739) #4
  %741 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %742 = fmul double %741, 1.000000e-30
  %743 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %742) #4
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
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %6, ptr %7, align 8
  %8 = fsub double %6, %3
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %8, ptr %9, align 8
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
