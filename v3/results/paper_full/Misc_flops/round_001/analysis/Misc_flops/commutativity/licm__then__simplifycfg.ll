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
  %.promoted = load double, ptr %1, align 8
  br label %5

5:                                                ; preds = %39, %0
  %6 = phi double [ %.promoted, %0 ], [ %15, %39 ]
  %7 = phi double [ undef, %0 ], [ %.lcssa9, %39 ]
  %8 = phi double [ undef, %0 ], [ %17, %39 ]
  %9 = phi i32 [ 15625, %0 ], [ %14, %39 ]
  %10 = phi double [ 0.000000e+00, %0 ], [ %41, %39 ]
  %11 = load double, ptr @TLimit, align 8
  %12 = fcmp olt double %10, %11
  br i1 %12, label %13, label %.loopexit

13:                                               ; preds = %5
  %14 = shl nsw i32 %9, 1
  %15 = load double, ptr @one, align 8
  %16 = sitofp i32 %14 to double
  %17 = fdiv double %15, %16
  %18 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %19 = load double, ptr @D1, align 8
  %20 = load double, ptr @D2, align 8
  %21 = load double, ptr @D3, align 8
  %22 = load double, ptr @E2, align 8
  %23 = load double, ptr @E3, align 8
  br label %24

24:                                               ; preds = %28, %13
  %25 = phi double [ %29, %28 ], [ 0.000000e+00, %13 ]
  %26 = phi double [ %37, %28 ], [ 0.000000e+00, %13 ]
  %27 = phi i32 [ %38, %28 ], [ 1, %13 ]
  %.not.not = icmp slt i32 %27, %14
  br i1 %.not.not, label %28, label %39

28:                                               ; preds = %24
  %29 = fadd double %25, %15
  %30 = fmul double %29, %17
  %31 = call double @llvm.fmuladd.f64(double %30, double %21, double %20)
  %32 = call double @llvm.fmuladd.f64(double %30, double %31, double %19)
  %33 = call double @llvm.fmuladd.f64(double %30, double %23, double %22)
  %34 = call double @llvm.fmuladd.f64(double %30, double %33, double %19)
  %35 = call double @llvm.fmuladd.f64(double %30, double %34, double %15)
  %36 = fdiv double %32, %35
  %37 = fadd double %26, %36
  %38 = add nuw nsw i32 %27, 1
  br label %24, !llvm.loop !7

39:                                               ; preds = %24
  %.lcssa9 = phi double [ %26, %24 ]
  %40 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %41 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %41, ptr @sa, align 8
  %42 = icmp eq i32 %9, 256000000
  br i1 %42, label %43, label %5, !llvm.loop !9

43:                                               ; preds = %39
  %.lcssa18 = phi double [ %15, %39 ]
  %.lcssa16 = phi double [ %17, %39 ]
  %.lcssa9.lcssa = phi double [ %.lcssa9, %39 ]
  store double %.lcssa18, ptr %1, align 8
  br label %44

.loopexit:                                        ; preds = %5
  %.lcssa17 = phi double [ %6, %5 ]
  %.lcssa14 = phi double [ %7, %5 ]
  %.lcssa12 = phi double [ %8, %5 ]
  %.lcssa10 = phi i32 [ %9, %5 ]
  store double %.lcssa17, ptr %1, align 8
  br label %44

44:                                               ; preds = %.loopexit, %43
  %45 = phi double [ %.lcssa9.lcssa, %43 ], [ %.lcssa14, %.loopexit ]
  %46 = phi double [ %.lcssa16, %43 ], [ %.lcssa12, %.loopexit ]
  %47 = phi i32 [ 512000000, %43 ], [ %.lcssa10, %.loopexit ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %48 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %49

49:                                               ; preds = %51, %44
  %50 = phi i32 [ %52, %51 ], [ 1, %44 ]
  %.not.not3 = icmp slt i32 %50, %47
  br i1 %.not.not3, label %51, label %53

51:                                               ; preds = %49
  %52 = add nuw nsw i32 %50, 1
  br label %49, !llvm.loop !10

53:                                               ; preds = %49
  %54 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %55 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %56 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %57 = fmul double %55, %56
  %58 = fcmp olt double %57, 0.000000e+00
  %59 = select i1 %58, double 0.000000e+00, double %57
  store double %59, ptr @nulltime, align 8
  %60 = load double, ptr @sa, align 8
  %61 = fneg double %59
  %62 = call double @llvm.fmuladd.f64(double %55, double %60, double %61)
  store double %62, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %63 = load double, ptr @D1, align 8
  %64 = load double, ptr @D2, align 8
  %65 = fadd double %63, %64
  %66 = load double, ptr @D3, align 8
  %67 = fadd double %65, %66
  %68 = load double, ptr @one, align 8
  %69 = fadd double %68, %63
  %70 = load double, ptr @E2, align 8
  %71 = fadd double %69, %70
  %72 = load double, ptr @E3, align 8
  %73 = fadd double %71, %72
  %74 = fdiv double %67, %73
  store double %74, ptr @sa, align 8
  store double %63, ptr @sb, align 8
  %75 = fdiv double %62, 1.400000e+01
  store double %75, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %76 = fadd double %74, %63
  %77 = load double, ptr @two, align 8
  %78 = call double @llvm.fmuladd.f64(double %77, double %45, double %76)
  %79 = fmul double %46, %78
  %80 = fdiv double %79, %77
  store double %80, ptr @sa, align 8
  %81 = fdiv double %68, %80
  store double %81, ptr @sb, align 8
  %82 = fptosi double %81 to i32
  %83 = mul nsw i32 %82, 40000
  %84 = sitofp i32 %83 to double
  %85 = load double, ptr @scale, align 8
  %86 = fdiv double %84, %85
  %87 = fptosi double %86 to i32
  %88 = fadd double %81, -2.520000e+01
  store double %88, ptr @sc, align 8
  %89 = fdiv double %68, %75
  store double %89, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %90 = fmul double %88, 1.000000e-30
  %91 = fmul double %62, 1.000000e-30
  %92 = fmul double %89, 1.000000e-30
  %93 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %90, double noundef %91, double noundef %92) #4
  store i32 %87, ptr %2, align 4
  %94 = load double, ptr @five, align 8
  %95 = fneg double %94
  %96 = load double, ptr @one, align 8
  %97 = fneg double %96
  store double %97, ptr @sa, align 8
  %98 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %sa.promoted = load double, ptr @sa, align 8
  br label %99

99:                                               ; preds = %103, %53
  %100 = phi double [ %105, %103 ], [ %sa.promoted, %53 ]
  %101 = phi double [ %104, %103 ], [ %95, %53 ]
  %102 = phi i32 [ %106, %103 ], [ 1, %53 ]
  %.not = icmp sgt i32 %102, %87
  br i1 %.not, label %107, label %103

103:                                              ; preds = %99
  %104 = fneg double %101
  %105 = fsub double %100, %101
  store double %105, ptr @sa, align 8
  %106 = add nuw nsw i32 %102, 1
  br label %99, !llvm.loop !11

107:                                              ; preds = %99
  %.lcssa8 = phi double [ %101, %99 ]
  %108 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %109 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %110 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %111 = fmul double %109, %110
  %112 = fcmp olt double %111, 0.000000e+00
  %storemerge = select i1 %112, double 0.000000e+00, double %111
  store double %storemerge, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %113 = sitofp i32 %87 to double
  store double %113, ptr @sc, align 8
  %114 = load double, ptr @sa, align 8
  store double 0.000000e+00, ptr %1, align 8
  %115 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %116 = load double, ptr @two, align 8
  %sa.promoted19 = load double, ptr @sa, align 8
  %.promoted20 = load double, ptr %1, align 8
  br label %117

117:                                              ; preds = %125, %107
  %118 = phi double [ %133, %125 ], [ %.promoted20, %107 ]
  %119 = phi double [ %127, %125 ], [ %sa.promoted19, %107 ]
  %120 = phi double [ %128, %125 ], [ %114, %107 ]
  %121 = phi double [ %126, %125 ], [ %.lcssa8, %107 ]
  %122 = phi double [ %131, %125 ], [ 0.000000e+00, %107 ]
  %123 = phi double [ %130, %125 ], [ 0.000000e+00, %107 ]
  %124 = phi i32 [ %134, %125 ], [ 1, %107 ]
  %.not4 = icmp sgt i32 %124, %87
  br i1 %.not4, label %135, label %125

125:                                              ; preds = %117
  %126 = fneg double %121
  %127 = fsub double %119, %121
  store double %127, ptr @sa, align 8
  %128 = fadd double %120, %116
  %129 = fsub double %126, %128
  %130 = fadd double %123, %129
  %131 = call double @llvm.fmuladd.f64(double %121, double %128, double %122)
  %132 = fdiv double %121, %128
  %133 = fsub double %118, %132
  %134 = add nuw nsw i32 %124, 1
  br label %117, !llvm.loop !12

135:                                              ; preds = %117
  %.lcssa21 = phi double [ %118, %117 ]
  %.lcssa7 = phi double [ %122, %117 ]
  %.lcssa6 = phi double [ %123, %117 ]
  store double %.lcssa21, ptr %1, align 8
  %136 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %137 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %138 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %139 = fmul double %137, %138
  store double %139, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %140 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %141 = fsub double %139, %140
  %142 = fdiv double %141, 7.000000e+00
  store double %142, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %143 = load double, ptr @sa, align 8
  %144 = fmul double %143, %.lcssa6
  %145 = load double, ptr @sc, align 8
  %146 = fdiv double %144, %145
  %147 = fptosi double %146 to i32
  store i32 %147, ptr %2, align 4
  %148 = load double, ptr @four, align 8
  %149 = load double, ptr %1, align 8
  %150 = fmul double %148, %149
  %151 = load double, ptr @five, align 8
  %152 = fdiv double %150, %151
  store double %152, ptr @sa, align 8
  %153 = fdiv double %151, %.lcssa7
  %154 = fadd double %152, %153
  store double %154, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %155 = fmul double %.lcssa7, %.lcssa7
  %156 = fmul double %155, %.lcssa7
  %157 = fdiv double 3.125000e+01, %156
  %158 = fsub double %154, %157
  store double %158, ptr @piprg, align 8
  %159 = load double, ptr @piref, align 8
  %160 = fsub double %158, %159
  store double %160, ptr @pierr, align 8
  %161 = load double, ptr @one, align 8
  %162 = fdiv double %161, %142
  store double %162, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %163 = fmul double %160, 1.000000e-30
  %164 = fmul double %141, 1.000000e-30
  %165 = fmul double %162, 1.000000e-30
  %166 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %163, double noundef %164, double noundef %165) #4
  %167 = load double, ptr @piref, align 8
  %168 = load double, ptr @three, align 8
  %169 = sitofp i32 %147 to double
  %170 = fmul double %168, %169
  %171 = fdiv double %167, %170
  %172 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %173 = load double, ptr @one, align 8
  %174 = load double, ptr @A6, align 8
  %175 = load double, ptr @A5, align 8
  %176 = fneg double %175
  %177 = load double, ptr @A4, align 8
  %178 = load double, ptr @A3, align 8
  %179 = fneg double %178
  %180 = load double, ptr @A2, align 8
  %181 = load double, ptr @A1, align 8
  %.promoted22 = load double, ptr %1, align 1
  br label %182

182:                                              ; preds = %187, %135
  %183 = phi double [ %190, %187 ], [ %.promoted22, %135 ]
  %184 = phi double [ %188, %187 ], [ 0.000000e+00, %135 ]
  %185 = phi double [ %197, %187 ], [ 0.000000e+00, %135 ]
  %186 = phi i32 [ %198, %187 ], [ 1, %135 ]
  %.not5.not = icmp slt i32 %186, %147
  br i1 %.not5.not, label %187, label %199

187:                                              ; preds = %182
  %188 = fadd double %184, %173
  %189 = fmul double %188, %171
  %190 = fmul double %189, %189
  %191 = call double @llvm.fmuladd.f64(double %174, double %190, double %176)
  %192 = call double @llvm.fmuladd.f64(double %191, double %190, double %177)
  %193 = call double @llvm.fmuladd.f64(double %192, double %190, double %179)
  %194 = call double @llvm.fmuladd.f64(double %193, double %190, double %180)
  %195 = call double @llvm.fmuladd.f64(double %194, double %190, double %181)
  %196 = call double @llvm.fmuladd.f64(double %195, double %190, double %173)
  %197 = call double @llvm.fmuladd.f64(double %189, double %196, double %185)
  %198 = add nuw nsw i32 %186, 1
  br label %182, !llvm.loop !13

199:                                              ; preds = %182
  %.lcssa23 = phi double [ %183, %182 ]
  %.lcssa5 = phi double [ %185, %182 ]
  store double %.lcssa23, ptr %1, align 1
  %200 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %201 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %202 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %203 = load double, ptr @nulltime, align 8
  %204 = fneg double %203
  %205 = call double @llvm.fmuladd.f64(double %201, double %202, double %204)
  store double %205, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %206 = load double, ptr @piref, align 8
  %207 = load double, ptr @three, align 8
  %208 = fdiv double %206, %207
  %209 = fmul double %208, %208
  store double %209, ptr %1, align 8
  %210 = load double, ptr @A6, align 8
  %211 = load double, ptr @A5, align 8
  %212 = fneg double %211
  %213 = call double @llvm.fmuladd.f64(double %210, double %209, double %212)
  %214 = load double, ptr @A4, align 8
  %215 = call double @llvm.fmuladd.f64(double %213, double %209, double %214)
  %216 = load double, ptr @A3, align 8
  %217 = fneg double %216
  %218 = call double @llvm.fmuladd.f64(double %215, double %209, double %217)
  %219 = load double, ptr @A2, align 8
  %220 = call double @llvm.fmuladd.f64(double %218, double %209, double %219)
  %221 = load double, ptr @A1, align 8
  %222 = call double @llvm.fmuladd.f64(double %220, double %209, double %221)
  %223 = load double, ptr @one, align 8
  %224 = call double @llvm.fmuladd.f64(double %222, double %209, double %223)
  %225 = fmul double %208, %224
  store double %225, ptr @sa, align 8
  %226 = fdiv double %205, 1.700000e+01
  store double %226, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %227 = load double, ptr @two, align 8
  %228 = call double @llvm.fmuladd.f64(double %227, double %.lcssa5, double %225)
  %229 = fmul double %171, %228
  %230 = fdiv double %229, %227
  store double %230, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %231 = fadd double %230, -5.000000e-01
  store double %231, ptr @sc, align 8
  %232 = fdiv double %223, %226
  store double %232, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %233 = fmul double %231, 1.000000e-30
  %234 = fmul double %205, 1.000000e-30
  %235 = fmul double %232, 1.000000e-30
  %236 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %233, double noundef %234, double noundef %235) #4
  %237 = load double, ptr @A3, align 8
  %238 = fneg double %237
  store double %238, ptr @A3, align 8
  %239 = load double, ptr @A5, align 8
  %240 = fneg double %239
  store double %240, ptr @A5, align 8
  %241 = load double, ptr @piref, align 8
  %242 = load double, ptr @three, align 8
  %243 = fmul double %242, %169
  %244 = fdiv double %241, %243
  %245 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %246 = load double, ptr @B6, align 8
  %247 = load double, ptr @B5, align 8
  %248 = load double, ptr @B4, align 8
  %249 = load double, ptr @B3, align 8
  %250 = load double, ptr @B2, align 8
  %251 = load double, ptr @B1, align 8
  %252 = load double, ptr @one, align 8
  %.promoted24 = load double, ptr %1, align 1
  br label %253

253:                                              ; preds = %257, %199
  %254 = phi double [ %260, %257 ], [ %.promoted24, %199 ]
  %255 = phi double [ %267, %257 ], [ 0.000000e+00, %199 ]
  %256 = phi i32 [ %268, %257 ], [ 1, %199 ]
  %.not6.not = icmp slt i32 %256, %147
  br i1 %.not6.not, label %257, label %269

257:                                              ; preds = %253
  %258 = uitofp nneg i32 %256 to double
  %259 = fmul double %244, %258
  %260 = fmul double %259, %259
  %261 = call double @llvm.fmuladd.f64(double %246, double %260, double %247)
  %262 = call double @llvm.fmuladd.f64(double %260, double %261, double %248)
  %263 = call double @llvm.fmuladd.f64(double %260, double %262, double %249)
  %264 = call double @llvm.fmuladd.f64(double %260, double %263, double %250)
  %265 = call double @llvm.fmuladd.f64(double %260, double %264, double %251)
  %266 = call double @llvm.fmuladd.f64(double %260, double %265, double %255)
  %267 = fadd double %266, %252
  %268 = add nuw nsw i32 %256, 1
  br label %253, !llvm.loop !14

269:                                              ; preds = %253
  %.lcssa25 = phi double [ %254, %253 ]
  %.lcssa4 = phi double [ %255, %253 ]
  store double %.lcssa25, ptr %1, align 1
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
  %297 = fmul double %244, %296
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
  %321 = fmul double %320, %169
  %322 = fdiv double %319, %321
  %323 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %324 = load double, ptr @A6, align 8
  %325 = load double, ptr @A5, align 8
  %326 = load double, ptr @A4, align 8
  %327 = load double, ptr @A3, align 8
  %328 = load double, ptr @A2, align 8
  %329 = load double, ptr @A1, align 8
  %330 = load double, ptr @one, align 8
  %331 = load double, ptr @B6, align 8
  %332 = load double, ptr @B5, align 8
  %333 = load double, ptr @B4, align 8
  %334 = load double, ptr @B3, align 8
  %335 = load double, ptr @B2, align 8
  %336 = load double, ptr @B1, align 8
  %.promoted26 = load double, ptr %1, align 1
  br label %337

337:                                              ; preds = %341, %269
  %338 = phi double [ %344, %341 ], [ %.promoted26, %269 ]
  %339 = phi double [ %359, %341 ], [ 0.000000e+00, %269 ]
  %340 = phi i32 [ %360, %341 ], [ 1, %269 ]
  %.not7.not = icmp slt i32 %340, %147
  br i1 %.not7.not, label %341, label %361

341:                                              ; preds = %337
  %342 = uitofp nneg i32 %340 to double
  %343 = fmul double %322, %342
  %344 = fmul double %343, %343
  %345 = call double @llvm.fmuladd.f64(double %324, double %344, double %325)
  %346 = call double @llvm.fmuladd.f64(double %345, double %344, double %326)
  %347 = call double @llvm.fmuladd.f64(double %346, double %344, double %327)
  %348 = call double @llvm.fmuladd.f64(double %347, double %344, double %328)
  %349 = call double @llvm.fmuladd.f64(double %348, double %344, double %329)
  %350 = call double @llvm.fmuladd.f64(double %349, double %344, double %330)
  %351 = fmul double %343, %350
  %352 = call double @llvm.fmuladd.f64(double %331, double %344, double %332)
  %353 = call double @llvm.fmuladd.f64(double %344, double %352, double %333)
  %354 = call double @llvm.fmuladd.f64(double %344, double %353, double %334)
  %355 = call double @llvm.fmuladd.f64(double %344, double %354, double %335)
  %356 = call double @llvm.fmuladd.f64(double %344, double %355, double %336)
  %357 = call double @llvm.fmuladd.f64(double %344, double %356, double %330)
  %358 = fdiv double %351, %357
  %359 = fadd double %339, %358
  %360 = add nuw nsw i32 %340, 1
  br label %337, !llvm.loop !15

361:                                              ; preds = %337
  %.lcssa27 = phi double [ %338, %337 ]
  %.lcssa3 = phi double [ %339, %337 ]
  store double %.lcssa27, ptr %1, align 1
  %362 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %363 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %364 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %365 = load double, ptr @nulltime, align 8
  %366 = fneg double %365
  %367 = call double @llvm.fmuladd.f64(double %363, double %364, double %366)
  store double %367, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %368 = load double, ptr @piref, align 8
  %369 = load double, ptr @three, align 8
  %370 = fdiv double %368, %369
  %371 = fmul double %370, %370
  store double %371, ptr %1, align 8
  %372 = load double, ptr @A6, align 8
  %373 = load double, ptr @A5, align 8
  %374 = call double @llvm.fmuladd.f64(double %372, double %371, double %373)
  %375 = load double, ptr @A4, align 8
  %376 = call double @llvm.fmuladd.f64(double %374, double %371, double %375)
  %377 = load double, ptr @A3, align 8
  %378 = call double @llvm.fmuladd.f64(double %376, double %371, double %377)
  %379 = load double, ptr @A2, align 8
  %380 = call double @llvm.fmuladd.f64(double %378, double %371, double %379)
  %381 = load double, ptr @A1, align 8
  %382 = call double @llvm.fmuladd.f64(double %380, double %371, double %381)
  %383 = load double, ptr @one, align 8
  %384 = call double @llvm.fmuladd.f64(double %382, double %371, double %383)
  %385 = fmul double %370, %384
  store double %385, ptr @sa, align 8
  %386 = load double, ptr @B6, align 8
  %387 = load double, ptr @B5, align 8
  %388 = call double @llvm.fmuladd.f64(double %386, double %371, double %387)
  %389 = load double, ptr @B4, align 8
  %390 = call double @llvm.fmuladd.f64(double %371, double %388, double %389)
  %391 = load double, ptr @B3, align 8
  %392 = call double @llvm.fmuladd.f64(double %371, double %390, double %391)
  %393 = load double, ptr @B2, align 8
  %394 = call double @llvm.fmuladd.f64(double %371, double %392, double %393)
  %395 = load double, ptr @B1, align 8
  %396 = call double @llvm.fmuladd.f64(double %371, double %394, double %395)
  %397 = call double @llvm.fmuladd.f64(double %371, double %396, double %383)
  store double %397, ptr @sb, align 8
  %398 = fdiv double %385, %397
  store double %398, ptr @sa, align 8
  %399 = fdiv double %367, 2.900000e+01
  store double %399, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %400 = load double, ptr @two, align 8
  %401 = call double @llvm.fmuladd.f64(double %400, double %.lcssa3, double %398)
  %402 = fmul double %322, %401
  %403 = fdiv double %402, %400
  store double %403, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %404 = fadd double %403, f0xBFE62E42FEFA39EF
  store double %404, ptr @sc, align 8
  %405 = fdiv double %383, %399
  store double %405, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %406 = fmul double %404, 1.000000e-30
  %407 = fmul double %367, 1.000000e-30
  %408 = fmul double %405, 1.000000e-30
  %409 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %406, double noundef %407, double noundef %408) #4
  %410 = load double, ptr @piref, align 8
  %411 = load double, ptr @four, align 8
  %412 = fmul double %411, %169
  %413 = fdiv double %410, %412
  %414 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %415 = load double, ptr @A6, align 8
  %416 = load double, ptr @A5, align 8
  %417 = load double, ptr @A4, align 8
  %418 = load double, ptr @A3, align 8
  %419 = load double, ptr @A2, align 8
  %420 = load double, ptr @A1, align 8
  %421 = load double, ptr @one, align 8
  %422 = load double, ptr @B6, align 8
  %423 = load double, ptr @B5, align 8
  %424 = load double, ptr @B4, align 8
  %425 = load double, ptr @B3, align 8
  %426 = load double, ptr @B2, align 8
  %427 = load double, ptr @B1, align 8
  %.promoted28 = load double, ptr %1, align 1
  br label %428

428:                                              ; preds = %432, %361
  %429 = phi double [ %435, %432 ], [ %.promoted28, %361 ]
  %430 = phi double [ %449, %432 ], [ 0.000000e+00, %361 ]
  %431 = phi i32 [ %450, %432 ], [ 1, %361 ]
  %.not8.not = icmp slt i32 %431, %147
  br i1 %.not8.not, label %432, label %451

432:                                              ; preds = %428
  %433 = uitofp nneg i32 %431 to double
  %434 = fmul double %413, %433
  %435 = fmul double %434, %434
  %436 = call double @llvm.fmuladd.f64(double %415, double %435, double %416)
  %437 = call double @llvm.fmuladd.f64(double %436, double %435, double %417)
  %438 = call double @llvm.fmuladd.f64(double %437, double %435, double %418)
  %439 = call double @llvm.fmuladd.f64(double %438, double %435, double %419)
  %440 = call double @llvm.fmuladd.f64(double %439, double %435, double %420)
  %441 = call double @llvm.fmuladd.f64(double %440, double %435, double %421)
  %442 = fmul double %434, %441
  %443 = call double @llvm.fmuladd.f64(double %422, double %435, double %423)
  %444 = call double @llvm.fmuladd.f64(double %435, double %443, double %424)
  %445 = call double @llvm.fmuladd.f64(double %435, double %444, double %425)
  %446 = call double @llvm.fmuladd.f64(double %435, double %445, double %426)
  %447 = call double @llvm.fmuladd.f64(double %435, double %446, double %427)
  %448 = call double @llvm.fmuladd.f64(double %435, double %447, double %421)
  %449 = call double @llvm.fmuladd.f64(double %442, double %448, double %430)
  %450 = add nuw nsw i32 %431, 1
  br label %428, !llvm.loop !16

451:                                              ; preds = %428
  %.lcssa29 = phi double [ %429, %428 ]
  %.lcssa2 = phi double [ %430, %428 ]
  store double %.lcssa29, ptr %1, align 1
  %452 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %453 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %454 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %455 = load double, ptr @nulltime, align 8
  %456 = fneg double %455
  %457 = call double @llvm.fmuladd.f64(double %453, double %454, double %456)
  store double %457, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %458 = load double, ptr @piref, align 8
  %459 = load double, ptr @four, align 8
  %460 = fdiv double %458, %459
  %461 = fmul double %460, %460
  store double %461, ptr %1, align 8
  %462 = load double, ptr @A6, align 8
  %463 = load double, ptr @A5, align 8
  %464 = call double @llvm.fmuladd.f64(double %462, double %461, double %463)
  %465 = load double, ptr @A4, align 8
  %466 = call double @llvm.fmuladd.f64(double %464, double %461, double %465)
  %467 = load double, ptr @A3, align 8
  %468 = call double @llvm.fmuladd.f64(double %466, double %461, double %467)
  %469 = load double, ptr @A2, align 8
  %470 = call double @llvm.fmuladd.f64(double %468, double %461, double %469)
  %471 = load double, ptr @A1, align 8
  %472 = call double @llvm.fmuladd.f64(double %470, double %461, double %471)
  %473 = load double, ptr @one, align 8
  %474 = call double @llvm.fmuladd.f64(double %472, double %461, double %473)
  %475 = fmul double %460, %474
  store double %475, ptr @sa, align 8
  %476 = load double, ptr @B6, align 8
  %477 = load double, ptr @B5, align 8
  %478 = call double @llvm.fmuladd.f64(double %476, double %461, double %477)
  %479 = load double, ptr @B4, align 8
  %480 = call double @llvm.fmuladd.f64(double %461, double %478, double %479)
  %481 = load double, ptr @B3, align 8
  %482 = call double @llvm.fmuladd.f64(double %461, double %480, double %481)
  %483 = load double, ptr @B2, align 8
  %484 = call double @llvm.fmuladd.f64(double %461, double %482, double %483)
  %485 = load double, ptr @B1, align 8
  %486 = call double @llvm.fmuladd.f64(double %461, double %484, double %485)
  %487 = call double @llvm.fmuladd.f64(double %461, double %486, double %473)
  store double %487, ptr @sb, align 8
  %488 = fmul double %475, %487
  store double %488, ptr @sa, align 8
  %489 = fdiv double %457, 2.900000e+01
  store double %489, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %490 = load double, ptr @two, align 8
  %491 = call double @llvm.fmuladd.f64(double %490, double %.lcssa2, double %488)
  %492 = fmul double %413, %491
  %493 = fdiv double %492, %490
  store double %493, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %494 = fadd double %493, -2.500000e-01
  store double %494, ptr @sc, align 8
  %495 = fdiv double %473, %489
  store double %495, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %496 = fmul double %494, 1.000000e-30
  %497 = fmul double %457, 1.000000e-30
  %498 = fmul double %495, 1.000000e-30
  %499 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %496, double noundef %497, double noundef %498) #4
  %500 = load double, ptr @one, align 8
  store double %500, ptr %1, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %501 = fdiv double f0x40599541F7F192A4, %169
  %502 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %503 = load double, ptr %1, align 8
  br label %504

504:                                              ; preds = %507, %451
  %505 = phi double [ %519, %507 ], [ 0.000000e+00, %451 ]
  %506 = phi i32 [ %520, %507 ], [ 1, %451 ]
  %.not9.not = icmp slt i32 %506, %147
  br i1 %.not9.not, label %507, label %521

507:                                              ; preds = %504
  %508 = uitofp nneg i32 %506 to double
  %509 = fmul double %501, %508
  %510 = fmul double %509, %509
  %511 = fadd double %509, %503
  %512 = fdiv double %503, %511
  %513 = fsub double %505, %512
  %514 = fadd double %510, %503
  %515 = fdiv double %509, %514
  %516 = fsub double %513, %515
  %517 = call double @llvm.fmuladd.f64(double %509, double %510, double %503)
  %518 = fdiv double %510, %517
  %519 = fsub double %516, %518
  %520 = add nuw nsw i32 %506, 1
  br label %504, !llvm.loop !17

521:                                              ; preds = %504
  %.lcssa1 = phi double [ %505, %504 ]
  %522 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %523 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %524 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %525 = load double, ptr @nulltime, align 8
  %526 = fneg double %525
  %527 = call double @llvm.fmuladd.f64(double %523, double %524, double %526)
  store double %527, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %528 = fdiv double %527, 1.200000e+01
  store double %528, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %529 = load double, ptr @sa, align 8
  %530 = fmul double %529, %529
  %531 = load double, ptr %1, align 8
  %532 = fneg double %531
  %533 = fadd double %529, %531
  %534 = fdiv double %531, %533
  %535 = fsub double %532, %534
  %536 = fadd double %530, %531
  %537 = fdiv double %529, %536
  %538 = fsub double %535, %537
  %539 = call double @llvm.fmuladd.f64(double %529, double %530, double %531)
  %540 = fdiv double %530, %539
  %541 = fsub double %538, %540
  store double %541, ptr @sa, align 8
  %542 = fmul nnan double %501, 1.800000e+01
  %543 = load double, ptr @two, align 8
  %544 = call double @llvm.fmuladd.f64(double %543, double %.lcssa1, double %541)
  %545 = fmul double %542, %544
  store double %545, ptr @sa, align 8
  %546 = fptosi double %545 to i32
  %547 = mul nsw i32 %546, -2000
  store i32 %547, ptr %2, align 4
  %548 = sitofp i32 %547 to double
  %549 = load double, ptr @scale, align 8
  %550 = fdiv double %548, %549
  %551 = fptosi double %550 to i32
  store i32 %551, ptr %2, align 4
  %552 = fadd double %545, 5.002000e+02
  store double %552, ptr @sc, align 8
  %553 = load double, ptr @one, align 8
  %554 = fdiv double %553, %528
  store double %554, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %555 = fmul double %552, 1.000000e-30
  %556 = fmul double %527, 1.000000e-30
  %557 = fmul double %554, 1.000000e-30
  %558 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %555, double noundef %556, double noundef %557) #4
  %559 = load double, ptr @piref, align 8
  %560 = load double, ptr @three, align 8
  %561 = sitofp i32 %551 to double
  %562 = fmul double %560, %561
  %563 = fdiv double %559, %562
  %564 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %565 = load double, ptr @B6, align 8
  %566 = load double, ptr @B5, align 8
  %567 = load double, ptr @B4, align 8
  %568 = load double, ptr @B3, align 8
  %569 = load double, ptr @B2, align 8
  %570 = load double, ptr @B1, align 8
  %571 = load double, ptr @one, align 8
  %572 = load double, ptr @A6, align 8
  %573 = load double, ptr @A5, align 8
  %574 = load double, ptr @A4, align 8
  %575 = load double, ptr @A3, align 8
  %576 = load double, ptr @A2, align 8
  %577 = load double, ptr @A1, align 8
  %.promoted30 = load double, ptr %1, align 1
  br label %578

578:                                              ; preds = %582, %521
  %579 = phi double [ %585, %582 ], [ %.promoted30, %521 ]
  %580 = phi double [ %600, %582 ], [ 0.000000e+00, %521 ]
  %581 = phi i32 [ %601, %582 ], [ 1, %521 ]
  %.not10.not = icmp slt i32 %581, %551
  br i1 %.not10.not, label %582, label %602

582:                                              ; preds = %578
  %583 = uitofp nneg i32 %581 to double
  %584 = fmul double %563, %583
  %585 = fmul double %584, %584
  %586 = call double @llvm.fmuladd.f64(double %565, double %585, double %566)
  %587 = call double @llvm.fmuladd.f64(double %585, double %586, double %567)
  %588 = call double @llvm.fmuladd.f64(double %585, double %587, double %568)
  %589 = call double @llvm.fmuladd.f64(double %585, double %588, double %569)
  %590 = call double @llvm.fmuladd.f64(double %585, double %589, double %570)
  %591 = call double @llvm.fmuladd.f64(double %585, double %590, double %571)
  %592 = fmul double %591, %591
  %593 = fmul double %592, %584
  %594 = call double @llvm.fmuladd.f64(double %572, double %585, double %573)
  %595 = call double @llvm.fmuladd.f64(double %594, double %585, double %574)
  %596 = call double @llvm.fmuladd.f64(double %595, double %585, double %575)
  %597 = call double @llvm.fmuladd.f64(double %596, double %585, double %576)
  %598 = call double @llvm.fmuladd.f64(double %597, double %585, double %577)
  %599 = call double @llvm.fmuladd.f64(double %598, double %585, double %571)
  %600 = call double @llvm.fmuladd.f64(double %593, double %599, double %580)
  %601 = add nuw nsw i32 %581, 1
  br label %578, !llvm.loop !18

602:                                              ; preds = %578
  %.lcssa31 = phi double [ %579, %578 ]
  %.lcssa = phi double [ %580, %578 ]
  store double %.lcssa31, ptr %1, align 1
  %603 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %604 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %605 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %606 = load double, ptr @nulltime, align 8
  %607 = fneg double %606
  %608 = call double @llvm.fmuladd.f64(double %604, double %605, double %607)
  store double %608, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %609 = load double, ptr @piref, align 8
  %610 = load double, ptr @three, align 8
  %611 = fdiv double %609, %610
  %612 = fmul double %611, %611
  store double %612, ptr %1, align 8
  %613 = load double, ptr @A6, align 8
  %614 = load double, ptr @A5, align 8
  %615 = call double @llvm.fmuladd.f64(double %613, double %612, double %614)
  %616 = load double, ptr @A4, align 8
  %617 = call double @llvm.fmuladd.f64(double %615, double %612, double %616)
  %618 = load double, ptr @A3, align 8
  %619 = call double @llvm.fmuladd.f64(double %617, double %612, double %618)
  %620 = load double, ptr @A2, align 8
  %621 = call double @llvm.fmuladd.f64(double %619, double %612, double %620)
  %622 = load double, ptr @A1, align 8
  %623 = call double @llvm.fmuladd.f64(double %621, double %612, double %622)
  %624 = load double, ptr @one, align 8
  %625 = call double @llvm.fmuladd.f64(double %623, double %612, double %624)
  %626 = fmul double %611, %625
  store double %626, ptr @sa, align 8
  %627 = load double, ptr @B6, align 8
  %628 = load double, ptr @B5, align 8
  %629 = call double @llvm.fmuladd.f64(double %627, double %612, double %628)
  %630 = load double, ptr @B4, align 8
  %631 = call double @llvm.fmuladd.f64(double %612, double %629, double %630)
  %632 = load double, ptr @B3, align 8
  %633 = call double @llvm.fmuladd.f64(double %612, double %631, double %632)
  %634 = load double, ptr @B2, align 8
  %635 = call double @llvm.fmuladd.f64(double %612, double %633, double %634)
  %636 = load double, ptr @B1, align 8
  %637 = call double @llvm.fmuladd.f64(double %612, double %635, double %636)
  %638 = call double @llvm.fmuladd.f64(double %612, double %637, double %624)
  store double %638, ptr @sb, align 8
  %639 = fmul double %626, %638
  %640 = fmul double %639, %638
  store double %640, ptr @sa, align 8
  %641 = fdiv double %608, 3.000000e+01
  store double %641, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %642 = load double, ptr @two, align 8
  %643 = call double @llvm.fmuladd.f64(double %642, double %.lcssa, double %640)
  %644 = fmul double %563, %643
  %645 = fdiv double %644, %642
  store double %645, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %646 = fadd double %645, f0xBFD2AAAAAAAAAAAB
  store double %646, ptr @sc, align 8
  %647 = fdiv double %624, %641
  store double %647, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %648 = fmul double %646, 1.000000e-30
  %649 = fmul double %608, 1.000000e-30
  %650 = fmul double %647, 1.000000e-30
  %651 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %648, double noundef %649, double noundef %650) #4
  %652 = load double, ptr @five, align 8
  %653 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %654 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %655 = fsub double %653, %654
  %656 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %657 = call double @llvm.fmuladd.f64(double %652, double %655, double %656)
  %658 = fdiv double %657, 5.200000e+01
  store double %658, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %659 = load double, ptr @one, align 8
  %660 = fdiv double %659, %658
  store double %660, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %661 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %662 = fadd double %661, %656
  %663 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %664 = fadd double %662, %663
  %665 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %666 = fadd double %664, %665
  %667 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %668 = fadd double %666, %667
  store double %668, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %669 = load double, ptr @four, align 8
  %670 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %671 = call double @llvm.fmuladd.f64(double %669, double %670, double %668)
  %672 = fdiv double %671, 1.520000e+02
  store double %672, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %673 = fdiv double %659, %672
  store double %673, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %668, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %674 = fadd double %668, %670
  %675 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %676 = fadd double %674, %675
  %677 = fdiv double %676, 1.460000e+02
  store double %677, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %678 = fdiv double %659, %677
  store double %678, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %679 = fadd double %656, %663
  %680 = fadd double %679, %667
  %681 = fadd double %680, %675
  %682 = fdiv double %681, 9.100000e+01
  store double %682, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %683 = fdiv double %659, %682
  store double %683, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar11 = call i32 @putchar(i32 10)
  %684 = load i32, ptr %2, align 4
  %685 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %684) #4
  %686 = load double, ptr @nulltime, align 8
  %687 = fmul double %686, 1.000000e-30
  %688 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %687) #4
  %689 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %690 = fmul double %689, 1.000000e-30
  %691 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %690) #4
  %692 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %693 = fmul double %692, 1.000000e-30
  %694 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %693) #4
  %695 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %696 = fmul double %695, 1.000000e-30
  %697 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %696) #4
  %698 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %699 = fmul double %698, 1.000000e-30
  %700 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %699) #4
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
