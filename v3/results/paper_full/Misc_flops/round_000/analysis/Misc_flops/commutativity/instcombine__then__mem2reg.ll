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
  %puts1 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  %1 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %2 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  store double 0.000000e+00, ptr @sa, align 8
  br label %3

3:                                                ; preds = %37, %0
  %.031 = phi i32 [ 15625, %0 ], [ %8, %37 ]
  %.028 = phi double [ undef, %0 ], [ %11, %37 ]
  %.0 = phi double [ undef, %0 ], [ %.2, %37 ]
  %4 = load double, ptr @sa, align 8
  %5 = load double, ptr @TLimit, align 8
  %6 = fcmp olt double %4, %5
  br i1 %6, label %7, label %38

7:                                                ; preds = %3
  %8 = shl nsw i32 %.031, 1
  %9 = load double, ptr @one, align 8
  %10 = sitofp i32 %8 to double
  %11 = fdiv double %9, %10
  %12 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %13

13:                                               ; preds = %30, %7
  %.024 = phi double [ 0.000000e+00, %7 ], [ %15, %30 ]
  %.2 = phi double [ 0.000000e+00, %7 ], [ %29, %30 ]
  %storemerge = phi i32 [ 1, %7 ], [ %31, %30 ]
  %.not.not = icmp slt i32 %storemerge, %8
  br i1 %.not.not, label %14, label %32

14:                                               ; preds = %13
  %15 = fadd double %.024, %9
  %16 = fmul double %15, %11
  %17 = load double, ptr @D1, align 8
  %18 = load double, ptr @D2, align 8
  %19 = load double, ptr @D3, align 8
  %20 = call double @llvm.fmuladd.f64(double %16, double %19, double %18)
  %21 = call double @llvm.fmuladd.f64(double %16, double %20, double %17)
  %22 = load double, ptr @D1, align 8
  %23 = load double, ptr @E2, align 8
  %24 = load double, ptr @E3, align 8
  %25 = call double @llvm.fmuladd.f64(double %16, double %24, double %23)
  %26 = call double @llvm.fmuladd.f64(double %16, double %25, double %22)
  %27 = call double @llvm.fmuladd.f64(double %16, double %26, double %9)
  %28 = fdiv double %21, %27
  %29 = fadd double %.2, %28
  br label %30

30:                                               ; preds = %14
  %31 = add nsw i32 %storemerge, 1
  br label %13, !llvm.loop !7

32:                                               ; preds = %13
  %33 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %34 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %34, ptr @sa, align 8
  %35 = icmp eq i32 %8, 512000000
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %38

37:                                               ; preds = %32
  br label %3, !llvm.loop !9

38:                                               ; preds = %36, %3
  %.132 = phi i32 [ %8, %36 ], [ %.031, %3 ]
  %.129 = phi double [ %11, %36 ], [ %.028, %3 ]
  %.1 = phi double [ %.2, %36 ], [ %.0, %3 ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %39 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %40

40:                                               ; preds = %42, %38
  %storemerge3 = phi i32 [ 1, %38 ], [ %43, %42 ]
  %.not.not4 = icmp slt i32 %storemerge3, %.132
  br i1 %.not.not4, label %41, label %44

41:                                               ; preds = %40
  br label %42

42:                                               ; preds = %41
  %43 = add nsw i32 %storemerge3, 1
  br label %40, !llvm.loop !10

44:                                               ; preds = %40
  %45 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %46 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %47 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %48 = fmul double %46, %47
  %49 = fcmp olt double %48, 0.000000e+00
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %44
  %storemerge5 = phi double [ 0.000000e+00, %50 ], [ %48, %44 ]
  store double %storemerge5, ptr @nulltime, align 8
  %52 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %53 = load double, ptr @sa, align 8
  %54 = fneg double %storemerge5
  %55 = call double @llvm.fmuladd.f64(double %52, double %53, double %54)
  store double %55, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %56 = load double, ptr @D1, align 8
  %57 = load double, ptr @D2, align 8
  %58 = fadd double %56, %57
  %59 = load double, ptr @D3, align 8
  %60 = fadd double %58, %59
  %61 = load double, ptr @one, align 8
  %62 = fadd double %61, %56
  %63 = load double, ptr @E2, align 8
  %64 = fadd double %62, %63
  %65 = load double, ptr @E3, align 8
  %66 = fadd double %64, %65
  %67 = fdiv double %60, %66
  store double %67, ptr @sa, align 8
  %68 = load double, ptr @D1, align 8
  store double %68, ptr @sb, align 8
  %69 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %70 = fdiv double %69, 1.400000e+01
  store double %70, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %71 = load double, ptr @sa, align 8
  %72 = fadd double %71, %68
  %73 = load double, ptr @two, align 8
  %74 = call double @llvm.fmuladd.f64(double %73, double %.1, double %72)
  %75 = fmul double %.129, %74
  %76 = fdiv double %75, %73
  store double %76, ptr @sa, align 8
  %77 = load double, ptr @one, align 8
  %78 = fdiv double %77, %76
  store double %78, ptr @sb, align 8
  %79 = fptosi double %78 to i32
  %80 = mul nsw i32 %79, 40000
  %81 = sitofp i32 %80 to double
  %82 = load double, ptr @scale, align 8
  %83 = fdiv double %81, %82
  %84 = fptosi double %83 to i32
  %85 = load double, ptr @sb, align 8
  %86 = fadd double %85, -2.520000e+01
  store double %86, ptr @sc, align 8
  %87 = load double, ptr @one, align 8
  %88 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %89 = fdiv double %87, %88
  store double %89, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %90 = fmul double %86, 1.000000e-30
  %91 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %92 = fmul double %91, 1.000000e-30
  %93 = fmul double %89, 1.000000e-30
  %94 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %90, double noundef %92, double noundef %93) #4
  %95 = load double, ptr @five, align 8
  %96 = fneg double %95
  %97 = load double, ptr @one, align 8
  %98 = fneg double %97
  store double %98, ptr @sa, align 8
  %99 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %100

100:                                              ; preds = %105, %51
  %.3 = phi double [ %96, %51 ], [ %102, %105 ]
  %storemerge6 = phi i32 [ 1, %51 ], [ %106, %105 ]
  %.not = icmp sgt i32 %storemerge6, %84
  br i1 %.not, label %107, label %101

101:                                              ; preds = %100
  %102 = fneg double %.3
  %103 = load double, ptr @sa, align 8
  %104 = fsub double %103, %.3
  store double %104, ptr @sa, align 8
  br label %105

105:                                              ; preds = %101
  %106 = add nsw i32 %storemerge6, 1
  br label %100, !llvm.loop !11

107:                                              ; preds = %100
  %108 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %109 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %110 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %111 = fmul double %109, %110
  %112 = fcmp olt double %111, 0.000000e+00
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  br label %114

114:                                              ; preds = %113, %107
  %storemerge7 = phi double [ 0.000000e+00, %113 ], [ %111, %107 ]
  store double %storemerge7, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %115 = sitofp i32 %84 to double
  store double %115, ptr @sc, align 8
  %116 = load double, ptr @sa, align 8
  %117 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %118

118:                                              ; preds = %131, %114
  %.230 = phi double [ 0.000000e+00, %114 ], [ %126, %131 ]
  %.027 = phi double [ 0.000000e+00, %114 ], [ %130, %131 ]
  %.125 = phi double [ 0.000000e+00, %114 ], [ %128, %131 ]
  %.023 = phi double [ %116, %114 ], [ %124, %131 ]
  %.4 = phi double [ %.3, %114 ], [ %120, %131 ]
  %storemerge8 = phi i32 [ 1, %114 ], [ %132, %131 ]
  %.not9 = icmp sgt i32 %storemerge8, %84
  br i1 %.not9, label %133, label %119

119:                                              ; preds = %118
  %120 = fneg double %.4
  %121 = load double, ptr @sa, align 8
  %122 = fsub double %121, %.4
  store double %122, ptr @sa, align 8
  %123 = load double, ptr @two, align 8
  %124 = fadd double %.023, %123
  %125 = fsub double %120, %124
  %126 = fadd double %.230, %125
  %127 = fneg double %120
  %128 = call double @llvm.fmuladd.f64(double %127, double %124, double %.125)
  %129 = fdiv double %120, %124
  %130 = fadd double %.027, %129
  br label %131

131:                                              ; preds = %119
  %132 = add nsw i32 %storemerge8, 1
  br label %118, !llvm.loop !12

133:                                              ; preds = %118
  %134 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %135 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %136 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %137 = fmul double %135, %136
  store double %137, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %138 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %139 = fsub double %137, %138
  %140 = fdiv double %139, 7.000000e+00
  store double %140, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %141 = load double, ptr @sa, align 8
  %142 = fmul double %141, %.230
  %143 = load double, ptr @sc, align 8
  %144 = fdiv double %142, %143
  %145 = fptosi double %144 to i32
  %146 = load double, ptr @four, align 8
  %147 = fmul double %146, %.027
  %148 = load double, ptr @five, align 8
  %149 = fdiv double %147, %148
  store double %149, ptr @sa, align 8
  %150 = fdiv double %148, %.125
  %151 = fadd double %149, %150
  store double %151, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %152 = fmul double %.125, %.125
  %153 = fmul double %152, %.125
  %154 = fdiv double 3.125000e+01, %153
  %155 = fsub double %151, %154
  store double %155, ptr @piprg, align 8
  %156 = load double, ptr @piref, align 8
  %157 = fsub double %155, %156
  store double %157, ptr @pierr, align 8
  %158 = load double, ptr @one, align 8
  %159 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %160 = fdiv double %158, %159
  store double %160, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %161 = fmul double %157, 1.000000e-30
  %162 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %163 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %164 = fsub double %162, %163
  %165 = fmul double %164, 1.000000e-30
  %166 = fmul double %160, 1.000000e-30
  %167 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %161, double noundef %165, double noundef %166) #4
  %168 = load double, ptr @piref, align 8
  %169 = load double, ptr @three, align 8
  %170 = sitofp i32 %145 to double
  %171 = fmul double %169, %170
  %172 = fdiv double %168, %171
  %173 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %174

174:                                              ; preds = %196, %133
  %.226 = phi double [ 0.000000e+00, %133 ], [ %177, %196 ]
  %.5 = phi double [ 0.000000e+00, %133 ], [ %195, %196 ]
  %storemerge10 = phi i32 [ 1, %133 ], [ %197, %196 ]
  %.not11.not = icmp slt i32 %storemerge10, %145
  br i1 %.not11.not, label %175, label %198

175:                                              ; preds = %174
  %176 = load double, ptr @one, align 8
  %177 = fadd double %.226, %176
  %178 = fmul double %177, %172
  %179 = fmul double %178, %178
  %180 = load double, ptr @A6, align 8
  %181 = load double, ptr @A5, align 8
  %182 = fneg double %181
  %183 = call double @llvm.fmuladd.f64(double %180, double %179, double %182)
  %184 = load double, ptr @A4, align 8
  %185 = call double @llvm.fmuladd.f64(double %183, double %179, double %184)
  %186 = load double, ptr @A3, align 8
  %187 = fneg double %186
  %188 = call double @llvm.fmuladd.f64(double %185, double %179, double %187)
  %189 = load double, ptr @A2, align 8
  %190 = call double @llvm.fmuladd.f64(double %188, double %179, double %189)
  %191 = load double, ptr @A1, align 8
  %192 = call double @llvm.fmuladd.f64(double %190, double %179, double %191)
  %193 = load double, ptr @one, align 8
  %194 = call double @llvm.fmuladd.f64(double %192, double %179, double %193)
  %195 = call double @llvm.fmuladd.f64(double %178, double %194, double %.5)
  br label %196

196:                                              ; preds = %175
  %197 = add nsw i32 %storemerge10, 1
  br label %174, !llvm.loop !13

198:                                              ; preds = %174
  %199 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %200 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %201 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %202 = load double, ptr @nulltime, align 8
  %203 = fneg double %202
  %204 = call double @llvm.fmuladd.f64(double %200, double %201, double %203)
  store double %204, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %205 = load double, ptr @piref, align 8
  %206 = load double, ptr @three, align 8
  %207 = fdiv double %205, %206
  %208 = fmul double %207, %207
  %209 = load double, ptr @A6, align 8
  %210 = load double, ptr @A5, align 8
  %211 = fneg double %210
  %212 = call double @llvm.fmuladd.f64(double %209, double %208, double %211)
  %213 = load double, ptr @A4, align 8
  %214 = call double @llvm.fmuladd.f64(double %212, double %208, double %213)
  %215 = load double, ptr @A3, align 8
  %216 = fneg double %215
  %217 = call double @llvm.fmuladd.f64(double %214, double %208, double %216)
  %218 = load double, ptr @A2, align 8
  %219 = call double @llvm.fmuladd.f64(double %217, double %208, double %218)
  %220 = load double, ptr @A1, align 8
  %221 = call double @llvm.fmuladd.f64(double %219, double %208, double %220)
  %222 = load double, ptr @one, align 8
  %223 = call double @llvm.fmuladd.f64(double %221, double %208, double %222)
  %224 = fmul double %207, %223
  store double %224, ptr @sa, align 8
  %225 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %226 = fdiv double %225, 1.700000e+01
  store double %226, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %227 = load double, ptr @two, align 8
  %228 = call double @llvm.fmuladd.f64(double %227, double %.5, double %224)
  %229 = fmul double %172, %228
  %230 = fdiv double %229, %227
  store double %230, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %231 = fadd double %230, -5.000000e-01
  store double %231, ptr @sc, align 8
  %232 = load double, ptr @one, align 8
  %233 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %234 = fdiv double %232, %233
  store double %234, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %235 = fmul double %231, 1.000000e-30
  %236 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %237 = fmul double %236, 1.000000e-30
  %238 = fmul double %234, 1.000000e-30
  %239 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %235, double noundef %237, double noundef %238) #4
  %240 = load double, ptr @A3, align 8
  %241 = fneg double %240
  store double %241, ptr @A3, align 8
  %242 = load double, ptr @A5, align 8
  %243 = fneg double %242
  store double %243, ptr @A5, align 8
  %244 = load double, ptr @piref, align 8
  %245 = load double, ptr @three, align 8
  %246 = sitofp i32 %145 to double
  %247 = fmul double %245, %246
  %248 = fdiv double %244, %247
  %249 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %250

250:                                              ; preds = %269, %198
  %.6 = phi double [ 0.000000e+00, %198 ], [ %268, %269 ]
  %storemerge12 = phi i32 [ 1, %198 ], [ %270, %269 ]
  %.not13.not = icmp slt i32 %storemerge12, %145
  br i1 %.not13.not, label %251, label %271

251:                                              ; preds = %250
  %252 = sitofp i32 %storemerge12 to double
  %253 = fmul double %248, %252
  %254 = fmul double %253, %253
  %255 = load double, ptr @B6, align 8
  %256 = load double, ptr @B5, align 8
  %257 = call double @llvm.fmuladd.f64(double %255, double %254, double %256)
  %258 = load double, ptr @B4, align 8
  %259 = call double @llvm.fmuladd.f64(double %254, double %257, double %258)
  %260 = load double, ptr @B3, align 8
  %261 = call double @llvm.fmuladd.f64(double %254, double %259, double %260)
  %262 = load double, ptr @B2, align 8
  %263 = call double @llvm.fmuladd.f64(double %254, double %261, double %262)
  %264 = load double, ptr @B1, align 8
  %265 = call double @llvm.fmuladd.f64(double %254, double %263, double %264)
  %266 = call double @llvm.fmuladd.f64(double %254, double %265, double %.6)
  %267 = load double, ptr @one, align 8
  %268 = fadd double %266, %267
  br label %269

269:                                              ; preds = %251
  %270 = add nsw i32 %storemerge12, 1
  br label %250, !llvm.loop !14

271:                                              ; preds = %250
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
  %295 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %296 = fdiv double %295, 1.500000e+01
  store double %296, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %297 = load double, ptr @one, align 8
  %298 = fadd double %294, %297
  %299 = load double, ptr @two, align 8
  %300 = call double @llvm.fmuladd.f64(double %299, double %.6, double %298)
  %301 = fmul double %248, %300
  %302 = fdiv double %301, %299
  store double %302, ptr @sa, align 8
  %303 = load double, ptr @piref, align 8
  %304 = load double, ptr @three, align 8
  %305 = fdiv double %303, %304
  %306 = fmul double %305, %305
  %307 = load double, ptr @A6, align 8
  %308 = load double, ptr @A5, align 8
  %309 = call double @llvm.fmuladd.f64(double %307, double %306, double %308)
  %310 = load double, ptr @A4, align 8
  %311 = call double @llvm.fmuladd.f64(double %309, double %306, double %310)
  %312 = load double, ptr @A3, align 8
  %313 = call double @llvm.fmuladd.f64(double %311, double %306, double %312)
  %314 = load double, ptr @A2, align 8
  %315 = call double @llvm.fmuladd.f64(double %313, double %306, double %314)
  %316 = load double, ptr @A1, align 8
  %317 = call double @llvm.fmuladd.f64(double %315, double %306, double %316)
  %318 = load double, ptr @A0, align 8
  %319 = call double @llvm.fmuladd.f64(double %317, double %306, double %318)
  %320 = fmul double %305, %319
  store double %320, ptr @sb, align 8
  %321 = load double, ptr @sa, align 8
  %322 = fsub double %321, %320
  store double %322, ptr @sc, align 8
  %323 = load double, ptr @one, align 8
  %324 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %325 = fdiv double %323, %324
  store double %325, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %326 = fmul double %322, 1.000000e-30
  %327 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %328 = fmul double %327, 1.000000e-30
  %329 = fmul double %325, 1.000000e-30
  %330 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %326, double noundef %328, double noundef %329) #4
  %331 = load double, ptr @piref, align 8
  %332 = load double, ptr @three, align 8
  %333 = sitofp i32 %145 to double
  %334 = fmul double %332, %333
  %335 = fdiv double %331, %334
  %336 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %337

337:                                              ; preds = %371, %271
  %.7 = phi double [ 0.000000e+00, %271 ], [ %370, %371 ]
  %storemerge14 = phi i32 [ 1, %271 ], [ %372, %371 ]
  %.not15.not = icmp slt i32 %storemerge14, %145
  br i1 %.not15.not, label %338, label %373

338:                                              ; preds = %337
  %339 = sitofp i32 %storemerge14 to double
  %340 = fmul double %335, %339
  %341 = fmul double %340, %340
  %342 = load double, ptr @A6, align 8
  %343 = load double, ptr @A5, align 8
  %344 = call double @llvm.fmuladd.f64(double %342, double %341, double %343)
  %345 = load double, ptr @A4, align 8
  %346 = call double @llvm.fmuladd.f64(double %344, double %341, double %345)
  %347 = load double, ptr @A3, align 8
  %348 = call double @llvm.fmuladd.f64(double %346, double %341, double %347)
  %349 = load double, ptr @A2, align 8
  %350 = call double @llvm.fmuladd.f64(double %348, double %341, double %349)
  %351 = load double, ptr @A1, align 8
  %352 = call double @llvm.fmuladd.f64(double %350, double %341, double %351)
  %353 = load double, ptr @one, align 8
  %354 = call double @llvm.fmuladd.f64(double %352, double %341, double %353)
  %355 = fmul double %340, %354
  %356 = load double, ptr @B6, align 8
  %357 = load double, ptr @B5, align 8
  %358 = call double @llvm.fmuladd.f64(double %356, double %341, double %357)
  %359 = load double, ptr @B4, align 8
  %360 = call double @llvm.fmuladd.f64(double %341, double %358, double %359)
  %361 = load double, ptr @B3, align 8
  %362 = call double @llvm.fmuladd.f64(double %341, double %360, double %361)
  %363 = load double, ptr @B2, align 8
  %364 = call double @llvm.fmuladd.f64(double %341, double %362, double %363)
  %365 = load double, ptr @B1, align 8
  %366 = call double @llvm.fmuladd.f64(double %341, double %364, double %365)
  %367 = load double, ptr @one, align 8
  %368 = call double @llvm.fmuladd.f64(double %341, double %366, double %367)
  %369 = fdiv double %355, %368
  %370 = fadd double %.7, %369
  br label %371

371:                                              ; preds = %338
  %372 = add nsw i32 %storemerge14, 1
  br label %337, !llvm.loop !15

373:                                              ; preds = %337
  %374 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %375 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %376 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %377 = load double, ptr @nulltime, align 8
  %378 = fneg double %377
  %379 = call double @llvm.fmuladd.f64(double %375, double %376, double %378)
  store double %379, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %380 = load double, ptr @piref, align 8
  %381 = load double, ptr @three, align 8
  %382 = fdiv double %380, %381
  %383 = fmul double %382, %382
  %384 = load double, ptr @A6, align 8
  %385 = load double, ptr @A5, align 8
  %386 = call double @llvm.fmuladd.f64(double %384, double %383, double %385)
  %387 = load double, ptr @A4, align 8
  %388 = call double @llvm.fmuladd.f64(double %386, double %383, double %387)
  %389 = load double, ptr @A3, align 8
  %390 = call double @llvm.fmuladd.f64(double %388, double %383, double %389)
  %391 = load double, ptr @A2, align 8
  %392 = call double @llvm.fmuladd.f64(double %390, double %383, double %391)
  %393 = load double, ptr @A1, align 8
  %394 = call double @llvm.fmuladd.f64(double %392, double %383, double %393)
  %395 = load double, ptr @one, align 8
  %396 = call double @llvm.fmuladd.f64(double %394, double %383, double %395)
  %397 = fmul double %382, %396
  store double %397, ptr @sa, align 8
  %398 = load double, ptr @B6, align 8
  %399 = load double, ptr @B5, align 8
  %400 = call double @llvm.fmuladd.f64(double %398, double %383, double %399)
  %401 = load double, ptr @B4, align 8
  %402 = call double @llvm.fmuladd.f64(double %383, double %400, double %401)
  %403 = load double, ptr @B3, align 8
  %404 = call double @llvm.fmuladd.f64(double %383, double %402, double %403)
  %405 = load double, ptr @B2, align 8
  %406 = call double @llvm.fmuladd.f64(double %383, double %404, double %405)
  %407 = load double, ptr @B1, align 8
  %408 = call double @llvm.fmuladd.f64(double %383, double %406, double %407)
  %409 = load double, ptr @one, align 8
  %410 = call double @llvm.fmuladd.f64(double %383, double %408, double %409)
  store double %410, ptr @sb, align 8
  %411 = load double, ptr @sa, align 8
  %412 = fdiv double %411, %410
  store double %412, ptr @sa, align 8
  %413 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %414 = fdiv double %413, 2.900000e+01
  store double %414, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %415 = load double, ptr @two, align 8
  %416 = call double @llvm.fmuladd.f64(double %415, double %.7, double %412)
  %417 = fmul double %335, %416
  %418 = fdiv double %417, %415
  store double %418, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %419 = fadd double %418, f0xBFE62E42FEFA39EF
  store double %419, ptr @sc, align 8
  %420 = load double, ptr @one, align 8
  %421 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %422 = fdiv double %420, %421
  store double %422, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %423 = fmul double %419, 1.000000e-30
  %424 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %425 = fmul double %424, 1.000000e-30
  %426 = fmul double %422, 1.000000e-30
  %427 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %423, double noundef %425, double noundef %426) #4
  %428 = load double, ptr @piref, align 8
  %429 = load double, ptr @four, align 8
  %430 = sitofp i32 %145 to double
  %431 = fmul double %429, %430
  %432 = fdiv double %428, %431
  %433 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %434

434:                                              ; preds = %467, %373
  %.8 = phi double [ 0.000000e+00, %373 ], [ %466, %467 ]
  %storemerge16 = phi i32 [ 1, %373 ], [ %468, %467 ]
  %.not17.not = icmp slt i32 %storemerge16, %145
  br i1 %.not17.not, label %435, label %469

435:                                              ; preds = %434
  %436 = sitofp i32 %storemerge16 to double
  %437 = fmul double %432, %436
  %438 = fmul double %437, %437
  %439 = load double, ptr @A6, align 8
  %440 = load double, ptr @A5, align 8
  %441 = call double @llvm.fmuladd.f64(double %439, double %438, double %440)
  %442 = load double, ptr @A4, align 8
  %443 = call double @llvm.fmuladd.f64(double %441, double %438, double %442)
  %444 = load double, ptr @A3, align 8
  %445 = call double @llvm.fmuladd.f64(double %443, double %438, double %444)
  %446 = load double, ptr @A2, align 8
  %447 = call double @llvm.fmuladd.f64(double %445, double %438, double %446)
  %448 = load double, ptr @A1, align 8
  %449 = call double @llvm.fmuladd.f64(double %447, double %438, double %448)
  %450 = load double, ptr @one, align 8
  %451 = call double @llvm.fmuladd.f64(double %449, double %438, double %450)
  %452 = fmul double %437, %451
  %453 = load double, ptr @B6, align 8
  %454 = load double, ptr @B5, align 8
  %455 = call double @llvm.fmuladd.f64(double %453, double %438, double %454)
  %456 = load double, ptr @B4, align 8
  %457 = call double @llvm.fmuladd.f64(double %438, double %455, double %456)
  %458 = load double, ptr @B3, align 8
  %459 = call double @llvm.fmuladd.f64(double %438, double %457, double %458)
  %460 = load double, ptr @B2, align 8
  %461 = call double @llvm.fmuladd.f64(double %438, double %459, double %460)
  %462 = load double, ptr @B1, align 8
  %463 = call double @llvm.fmuladd.f64(double %438, double %461, double %462)
  %464 = load double, ptr @one, align 8
  %465 = call double @llvm.fmuladd.f64(double %438, double %463, double %464)
  %466 = call double @llvm.fmuladd.f64(double %452, double %465, double %.8)
  br label %467

467:                                              ; preds = %435
  %468 = add nsw i32 %storemerge16, 1
  br label %434, !llvm.loop !16

469:                                              ; preds = %434
  %470 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %471 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %472 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %473 = load double, ptr @nulltime, align 8
  %474 = fneg double %473
  %475 = call double @llvm.fmuladd.f64(double %471, double %472, double %474)
  store double %475, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %476 = load double, ptr @piref, align 8
  %477 = load double, ptr @four, align 8
  %478 = fdiv double %476, %477
  %479 = fmul double %478, %478
  %480 = load double, ptr @A6, align 8
  %481 = load double, ptr @A5, align 8
  %482 = call double @llvm.fmuladd.f64(double %480, double %479, double %481)
  %483 = load double, ptr @A4, align 8
  %484 = call double @llvm.fmuladd.f64(double %482, double %479, double %483)
  %485 = load double, ptr @A3, align 8
  %486 = call double @llvm.fmuladd.f64(double %484, double %479, double %485)
  %487 = load double, ptr @A2, align 8
  %488 = call double @llvm.fmuladd.f64(double %486, double %479, double %487)
  %489 = load double, ptr @A1, align 8
  %490 = call double @llvm.fmuladd.f64(double %488, double %479, double %489)
  %491 = load double, ptr @one, align 8
  %492 = call double @llvm.fmuladd.f64(double %490, double %479, double %491)
  %493 = fmul double %478, %492
  store double %493, ptr @sa, align 8
  %494 = load double, ptr @B6, align 8
  %495 = load double, ptr @B5, align 8
  %496 = call double @llvm.fmuladd.f64(double %494, double %479, double %495)
  %497 = load double, ptr @B4, align 8
  %498 = call double @llvm.fmuladd.f64(double %479, double %496, double %497)
  %499 = load double, ptr @B3, align 8
  %500 = call double @llvm.fmuladd.f64(double %479, double %498, double %499)
  %501 = load double, ptr @B2, align 8
  %502 = call double @llvm.fmuladd.f64(double %479, double %500, double %501)
  %503 = load double, ptr @B1, align 8
  %504 = call double @llvm.fmuladd.f64(double %479, double %502, double %503)
  %505 = load double, ptr @one, align 8
  %506 = call double @llvm.fmuladd.f64(double %479, double %504, double %505)
  store double %506, ptr @sb, align 8
  %507 = load double, ptr @sa, align 8
  %508 = fmul double %507, %506
  store double %508, ptr @sa, align 8
  %509 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %510 = fdiv double %509, 2.900000e+01
  store double %510, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %511 = load double, ptr @two, align 8
  %512 = call double @llvm.fmuladd.f64(double %511, double %.8, double %508)
  %513 = fmul double %432, %512
  %514 = fdiv double %513, %511
  store double %514, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %515 = fadd double %514, -2.500000e-01
  store double %515, ptr @sc, align 8
  %516 = load double, ptr @one, align 8
  %517 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %518 = fdiv double %516, %517
  store double %518, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %519 = fmul double %515, 1.000000e-30
  %520 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %521 = fmul double %520, 1.000000e-30
  %522 = fmul double %518, 1.000000e-30
  %523 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %519, double noundef %521, double noundef %522) #4
  %524 = load double, ptr @one, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %525 = sitofp i32 %145 to double
  %526 = fdiv double f0x40599541F7F192A4, %525
  %527 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %528

528:                                              ; preds = %542, %469
  %.9 = phi double [ 0.000000e+00, %469 ], [ %541, %542 ]
  %storemerge18 = phi i32 [ 1, %469 ], [ %543, %542 ]
  %.not19.not = icmp slt i32 %storemerge18, %145
  br i1 %.not19.not, label %529, label %544

529:                                              ; preds = %528
  %530 = sitofp i32 %storemerge18 to double
  %531 = fmul double %526, %530
  %532 = fmul double %531, %531
  %533 = fadd double %531, %524
  %534 = fdiv double %524, %533
  %535 = fsub double %.9, %534
  %536 = fadd double %532, %524
  %537 = fdiv double %531, %536
  %538 = fsub double %535, %537
  %539 = call double @llvm.fmuladd.f64(double %531, double %532, double %524)
  %540 = fdiv double %532, %539
  %541 = fsub double %538, %540
  br label %542

542:                                              ; preds = %529
  %543 = add nsw i32 %storemerge18, 1
  br label %528, !llvm.loop !17

544:                                              ; preds = %528
  %545 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %546 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %547 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %548 = load double, ptr @nulltime, align 8
  %549 = fneg double %548
  %550 = call double @llvm.fmuladd.f64(double %546, double %547, double %549)
  store double %550, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %551 = fdiv double %550, 1.200000e+01
  store double %551, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %552 = load double, ptr @sa, align 8
  %553 = fmul double %552, %552
  %554 = fneg double %524
  %555 = fadd double %552, %524
  %556 = fdiv double %524, %555
  %557 = fsub double %554, %556
  %558 = fadd double %553, %524
  %559 = fdiv double %552, %558
  %560 = fsub double %557, %559
  %561 = call double @llvm.fmuladd.f64(double %552, double %553, double %524)
  %562 = fdiv double %553, %561
  %563 = fsub double %560, %562
  store double %563, ptr @sa, align 8
  %564 = fmul double %526, 1.800000e+01
  %565 = load double, ptr @two, align 8
  %566 = call double @llvm.fmuladd.f64(double %565, double %.9, double %563)
  %567 = fmul double %564, %566
  store double %567, ptr @sa, align 8
  %568 = fptosi double %567 to i32
  %569 = mul nsw i32 %568, -2000
  %570 = sitofp i32 %569 to double
  %571 = load double, ptr @scale, align 8
  %572 = fdiv double %570, %571
  %573 = fptosi double %572 to i32
  %574 = load double, ptr @sa, align 8
  %575 = fadd double %574, 5.002000e+02
  store double %575, ptr @sc, align 8
  %576 = load double, ptr @one, align 8
  %577 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %578 = fdiv double %576, %577
  store double %578, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %579 = fmul double %575, 1.000000e-30
  %580 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %581 = fmul double %580, 1.000000e-30
  %582 = fmul double %578, 1.000000e-30
  %583 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %579, double noundef %581, double noundef %582) #4
  %584 = load double, ptr @piref, align 8
  %585 = load double, ptr @three, align 8
  %586 = sitofp i32 %573 to double
  %587 = fmul double %585, %586
  %588 = fdiv double %584, %587
  %589 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %590

590:                                              ; preds = %624, %544
  %.10 = phi double [ 0.000000e+00, %544 ], [ %623, %624 ]
  %storemerge20 = phi i32 [ 1, %544 ], [ %625, %624 ]
  %.not21.not = icmp slt i32 %storemerge20, %573
  br i1 %.not21.not, label %591, label %626

591:                                              ; preds = %590
  %592 = sitofp i32 %storemerge20 to double
  %593 = fmul double %588, %592
  %594 = fmul double %593, %593
  %595 = load double, ptr @B6, align 8
  %596 = load double, ptr @B5, align 8
  %597 = call double @llvm.fmuladd.f64(double %595, double %594, double %596)
  %598 = load double, ptr @B4, align 8
  %599 = call double @llvm.fmuladd.f64(double %594, double %597, double %598)
  %600 = load double, ptr @B3, align 8
  %601 = call double @llvm.fmuladd.f64(double %594, double %599, double %600)
  %602 = load double, ptr @B2, align 8
  %603 = call double @llvm.fmuladd.f64(double %594, double %601, double %602)
  %604 = load double, ptr @B1, align 8
  %605 = call double @llvm.fmuladd.f64(double %594, double %603, double %604)
  %606 = load double, ptr @one, align 8
  %607 = call double @llvm.fmuladd.f64(double %594, double %605, double %606)
  %608 = fmul double %607, %607
  %609 = fmul double %608, %593
  %610 = load double, ptr @A6, align 8
  %611 = load double, ptr @A5, align 8
  %612 = call double @llvm.fmuladd.f64(double %610, double %594, double %611)
  %613 = load double, ptr @A4, align 8
  %614 = call double @llvm.fmuladd.f64(double %612, double %594, double %613)
  %615 = load double, ptr @A3, align 8
  %616 = call double @llvm.fmuladd.f64(double %614, double %594, double %615)
  %617 = load double, ptr @A2, align 8
  %618 = call double @llvm.fmuladd.f64(double %616, double %594, double %617)
  %619 = load double, ptr @A1, align 8
  %620 = call double @llvm.fmuladd.f64(double %618, double %594, double %619)
  %621 = load double, ptr @one, align 8
  %622 = call double @llvm.fmuladd.f64(double %620, double %594, double %621)
  %623 = call double @llvm.fmuladd.f64(double %609, double %622, double %.10)
  br label %624

624:                                              ; preds = %591
  %625 = add nsw i32 %storemerge20, 1
  br label %590, !llvm.loop !18

626:                                              ; preds = %590
  %627 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %628 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %629 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %630 = load double, ptr @nulltime, align 8
  %631 = fneg double %630
  %632 = call double @llvm.fmuladd.f64(double %628, double %629, double %631)
  store double %632, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %633 = load double, ptr @piref, align 8
  %634 = load double, ptr @three, align 8
  %635 = fdiv double %633, %634
  %636 = fmul double %635, %635
  %637 = load double, ptr @A6, align 8
  %638 = load double, ptr @A5, align 8
  %639 = call double @llvm.fmuladd.f64(double %637, double %636, double %638)
  %640 = load double, ptr @A4, align 8
  %641 = call double @llvm.fmuladd.f64(double %639, double %636, double %640)
  %642 = load double, ptr @A3, align 8
  %643 = call double @llvm.fmuladd.f64(double %641, double %636, double %642)
  %644 = load double, ptr @A2, align 8
  %645 = call double @llvm.fmuladd.f64(double %643, double %636, double %644)
  %646 = load double, ptr @A1, align 8
  %647 = call double @llvm.fmuladd.f64(double %645, double %636, double %646)
  %648 = load double, ptr @one, align 8
  %649 = call double @llvm.fmuladd.f64(double %647, double %636, double %648)
  %650 = fmul double %635, %649
  store double %650, ptr @sa, align 8
  %651 = load double, ptr @B6, align 8
  %652 = load double, ptr @B5, align 8
  %653 = call double @llvm.fmuladd.f64(double %651, double %636, double %652)
  %654 = load double, ptr @B4, align 8
  %655 = call double @llvm.fmuladd.f64(double %636, double %653, double %654)
  %656 = load double, ptr @B3, align 8
  %657 = call double @llvm.fmuladd.f64(double %636, double %655, double %656)
  %658 = load double, ptr @B2, align 8
  %659 = call double @llvm.fmuladd.f64(double %636, double %657, double %658)
  %660 = load double, ptr @B1, align 8
  %661 = call double @llvm.fmuladd.f64(double %636, double %659, double %660)
  %662 = load double, ptr @one, align 8
  %663 = call double @llvm.fmuladd.f64(double %636, double %661, double %662)
  store double %663, ptr @sb, align 8
  %664 = load double, ptr @sa, align 8
  %665 = fmul double %664, %663
  %666 = fmul double %665, %663
  store double %666, ptr @sa, align 8
  %667 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %668 = fdiv double %667, 3.000000e+01
  store double %668, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %669 = load double, ptr @two, align 8
  %670 = call double @llvm.fmuladd.f64(double %669, double %.10, double %666)
  %671 = fmul double %588, %670
  %672 = fdiv double %671, %669
  store double %672, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %673 = fadd double %672, f0xBFD2AAAAAAAAAAAB
  store double %673, ptr @sc, align 8
  %674 = load double, ptr @one, align 8
  %675 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %676 = fdiv double %674, %675
  store double %676, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %677 = fmul double %673, 1.000000e-30
  %678 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %679 = fmul double %678, 1.000000e-30
  %680 = fmul double %676, 1.000000e-30
  %681 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %677, double noundef %679, double noundef %680) #4
  %682 = load double, ptr @five, align 8
  %683 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %684 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %685 = fsub double %683, %684
  %686 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %687 = call double @llvm.fmuladd.f64(double %682, double %685, double %686)
  %688 = fdiv double %687, 5.200000e+01
  store double %688, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %689 = load double, ptr @one, align 8
  %690 = fdiv double %689, %688
  store double %690, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %691 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %692 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %693 = fadd double %691, %692
  %694 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %695 = fadd double %693, %694
  %696 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %697 = fadd double %695, %696
  %698 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %699 = fadd double %697, %698
  store double %699, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %700 = load double, ptr @four, align 8
  %701 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %702 = call double @llvm.fmuladd.f64(double %700, double %701, double %699)
  %703 = fdiv double %702, 1.520000e+02
  store double %703, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %704 = load double, ptr @one, align 8
  %705 = fdiv double %704, %703
  store double %705, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %706 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %707 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %708 = fadd double %706, %707
  %709 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %710 = fadd double %708, %709
  %711 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %712 = fadd double %710, %711
  %713 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %714 = fadd double %712, %713
  store double %714, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %715 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %716 = fadd double %714, %715
  %717 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %718 = fadd double %716, %717
  %719 = fdiv double %718, 1.460000e+02
  store double %719, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %720 = load double, ptr @one, align 8
  %721 = fdiv double %720, %719
  store double %721, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %722 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %723 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %724 = fadd double %722, %723
  %725 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %726 = fadd double %724, %725
  %727 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %728 = fadd double %726, %727
  %729 = fdiv double %728, 9.100000e+01
  store double %729, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %730 = load double, ptr @one, align 8
  %731 = fdiv double %730, %729
  store double %731, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar22 = call i32 @putchar(i32 10)
  %732 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %573) #4
  %733 = load double, ptr @nulltime, align 8
  %734 = fmul double %733, 1.000000e-30
  %735 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %734) #4
  %736 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %737 = fmul double %736, 1.000000e-30
  %738 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %737) #4
  %739 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %740 = fmul double %739, 1.000000e-30
  %741 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %740) #4
  %742 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %743 = fmul double %742, 1.000000e-30
  %744 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %743) #4
  %745 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %746 = fmul double %745, 1.000000e-30
  %747 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %746) #4
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
