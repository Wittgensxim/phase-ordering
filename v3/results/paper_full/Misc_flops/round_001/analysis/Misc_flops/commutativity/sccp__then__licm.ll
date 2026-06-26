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

5:                                                ; preds = %44, %0
  %6 = phi double [ %15, %44 ], [ %.promoted, %0 ]
  %7 = phi double [ %.lcssa23, %44 ], [ undef, %0 ]
  %8 = phi double [ %17, %44 ], [ undef, %0 ]
  %9 = phi i32 [ %14, %44 ], [ 15625, %0 ]
  %10 = phi double [ %41, %44 ], [ 0.000000e+00, %0 ]
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
  %.lcssa23 = phi double [ %26, %24 ]
  %40 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %41 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %41, ptr @sa, align 8
  %42 = icmp eq i32 %9, 256000000
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  %.lcssa32 = phi double [ %15, %39 ]
  %.lcssa30 = phi double [ %17, %39 ]
  %.lcssa23.lcssa = phi double [ %.lcssa23, %39 ]
  store double %.lcssa32, ptr %1, align 8
  br label %45

44:                                               ; preds = %39
  br label %5, !llvm.loop !9

.loopexit:                                        ; preds = %5
  %.lcssa31 = phi double [ %6, %5 ]
  %.lcssa28 = phi double [ %7, %5 ]
  %.lcssa26 = phi double [ %8, %5 ]
  %.lcssa24 = phi i32 [ %9, %5 ]
  store double %.lcssa31, ptr %1, align 8
  br label %45

45:                                               ; preds = %.loopexit, %43
  %46 = phi double [ %.lcssa23.lcssa, %43 ], [ %.lcssa28, %.loopexit ]
  %47 = phi double [ %.lcssa30, %43 ], [ %.lcssa26, %.loopexit ]
  %48 = phi i32 [ 512000000, %43 ], [ %.lcssa24, %.loopexit ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %49 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %50

50:                                               ; preds = %52, %45
  %51 = phi i32 [ %53, %52 ], [ 1, %45 ]
  %.not.not3 = icmp slt i32 %51, %48
  br i1 %.not.not3, label %52, label %54

52:                                               ; preds = %50
  %53 = add nuw nsw i32 %51, 1
  br label %50, !llvm.loop !10

54:                                               ; preds = %50
  %55 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %56 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %57 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %58 = fmul double %56, %57
  %59 = fcmp olt double %58, 0.000000e+00
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %54
  %62 = phi double [ 0.000000e+00, %60 ], [ %58, %54 ]
  store double %62, ptr @nulltime, align 8
  %63 = load double, ptr @sa, align 8
  %64 = fneg double %62
  %65 = call double @llvm.fmuladd.f64(double %56, double %63, double %64)
  store double %65, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %66 = load double, ptr @D1, align 8
  %67 = load double, ptr @D2, align 8
  %68 = fadd double %66, %67
  %69 = load double, ptr @D3, align 8
  %70 = fadd double %68, %69
  %71 = load double, ptr @one, align 8
  %72 = fadd double %71, %66
  %73 = load double, ptr @E2, align 8
  %74 = fadd double %72, %73
  %75 = load double, ptr @E3, align 8
  %76 = fadd double %74, %75
  %77 = fdiv double %70, %76
  store double %77, ptr @sa, align 8
  store double %66, ptr @sb, align 8
  %78 = fdiv double %65, 1.400000e+01
  store double %78, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %79 = fadd double %77, %66
  %80 = load double, ptr @two, align 8
  %81 = call double @llvm.fmuladd.f64(double %80, double %46, double %79)
  %82 = fmul double %47, %81
  %83 = fdiv double %82, %80
  store double %83, ptr @sa, align 8
  %84 = fdiv double %71, %83
  store double %84, ptr @sb, align 8
  %85 = fptosi double %84 to i32
  %86 = mul nsw i32 %85, 40000
  %87 = sitofp i32 %86 to double
  %88 = load double, ptr @scale, align 8
  %89 = fdiv double %87, %88
  %90 = fptosi double %89 to i32
  %91 = fadd double %84, -2.520000e+01
  store double %91, ptr @sc, align 8
  %92 = fdiv double %71, %78
  store double %92, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %93 = fmul double %91, 1.000000e-30
  %94 = fmul double %65, 1.000000e-30
  %95 = fmul double %92, 1.000000e-30
  %96 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %93, double noundef %94, double noundef %95) #4
  store i32 %90, ptr %2, align 4
  %97 = load double, ptr @five, align 8
  %98 = fneg double %97
  %99 = load double, ptr @one, align 8
  %100 = fneg double %99
  store double %100, ptr @sa, align 8
  %101 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %sa.promoted = load double, ptr @sa, align 8
  br label %102

102:                                              ; preds = %106, %61
  %103 = phi double [ %108, %106 ], [ %sa.promoted, %61 ]
  %104 = phi double [ %107, %106 ], [ %98, %61 ]
  %105 = phi i32 [ %109, %106 ], [ 1, %61 ]
  %.not = icmp sgt i32 %105, %90
  br i1 %.not, label %110, label %106

106:                                              ; preds = %102
  %107 = fneg double %104
  %108 = fsub double %103, %104
  store double %108, ptr @sa, align 8
  %109 = add nuw nsw i32 %105, 1
  br label %102, !llvm.loop !11

110:                                              ; preds = %102
  %.lcssa22 = phi double [ %104, %102 ]
  %111 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %112 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %113 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %114 = fmul double %112, %113
  %115 = fcmp olt double %114, 0.000000e+00
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %117

117:                                              ; preds = %116, %110
  %storemerge = phi double [ 0.000000e+00, %116 ], [ %114, %110 ]
  store double %storemerge, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %118 = sitofp i32 %90 to double
  store double %118, ptr @sc, align 8
  %119 = load double, ptr @sa, align 8
  store double 0.000000e+00, ptr %1, align 8
  %120 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %121 = load double, ptr @two, align 8
  %sa.promoted33 = load double, ptr @sa, align 8
  %.promoted34 = load double, ptr %1, align 8
  br label %122

122:                                              ; preds = %130, %117
  %123 = phi double [ %138, %130 ], [ %.promoted34, %117 ]
  %124 = phi double [ %132, %130 ], [ %sa.promoted33, %117 ]
  %125 = phi double [ %133, %130 ], [ %119, %117 ]
  %126 = phi double [ %131, %130 ], [ %.lcssa22, %117 ]
  %127 = phi double [ %136, %130 ], [ 0.000000e+00, %117 ]
  %128 = phi double [ %135, %130 ], [ 0.000000e+00, %117 ]
  %129 = phi i32 [ %139, %130 ], [ 1, %117 ]
  %.not4 = icmp sgt i32 %129, %90
  br i1 %.not4, label %140, label %130

130:                                              ; preds = %122
  %131 = fneg double %126
  %132 = fsub double %124, %126
  store double %132, ptr @sa, align 8
  %133 = fadd double %125, %121
  %134 = fsub double %131, %133
  %135 = fadd double %128, %134
  %136 = call double @llvm.fmuladd.f64(double %126, double %133, double %127)
  %137 = fdiv double %126, %133
  %138 = fsub double %123, %137
  %139 = add nuw nsw i32 %129, 1
  br label %122, !llvm.loop !12

140:                                              ; preds = %122
  %.lcssa35 = phi double [ %123, %122 ]
  %.lcssa21 = phi double [ %127, %122 ]
  %.lcssa20 = phi double [ %128, %122 ]
  store double %.lcssa35, ptr %1, align 8
  %141 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %142 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %143 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %144 = fmul double %142, %143
  store double %144, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %145 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %146 = fsub double %144, %145
  %147 = fdiv double %146, 7.000000e+00
  store double %147, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %148 = load double, ptr @sa, align 8
  %149 = fmul double %148, %.lcssa20
  %150 = load double, ptr @sc, align 8
  %151 = fdiv double %149, %150
  %152 = fptosi double %151 to i32
  store i32 %152, ptr %2, align 4
  %153 = load double, ptr @four, align 8
  %154 = load double, ptr %1, align 8
  %155 = fmul double %153, %154
  %156 = load double, ptr @five, align 8
  %157 = fdiv double %155, %156
  store double %157, ptr @sa, align 8
  %158 = fdiv double %156, %.lcssa21
  %159 = fadd double %157, %158
  store double %159, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %160 = fmul double %.lcssa21, %.lcssa21
  %161 = fmul double %160, %.lcssa21
  %162 = fdiv double 3.125000e+01, %161
  %163 = fsub double %159, %162
  store double %163, ptr @piprg, align 8
  %164 = load double, ptr @piref, align 8
  %165 = fsub double %163, %164
  store double %165, ptr @pierr, align 8
  %166 = load double, ptr @one, align 8
  %167 = fdiv double %166, %147
  store double %167, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %168 = fmul double %165, 1.000000e-30
  %169 = fmul double %146, 1.000000e-30
  %170 = fmul double %167, 1.000000e-30
  %171 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %168, double noundef %169, double noundef %170) #4
  %172 = load double, ptr @piref, align 8
  %173 = load double, ptr @three, align 8
  %174 = sitofp i32 %152 to double
  %175 = fmul double %173, %174
  %176 = fdiv double %172, %175
  %177 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %178 = load double, ptr @one, align 8
  %179 = load double, ptr @A6, align 8
  %180 = load double, ptr @A5, align 8
  %181 = fneg double %180
  %182 = load double, ptr @A4, align 8
  %183 = load double, ptr @A3, align 8
  %184 = fneg double %183
  %185 = load double, ptr @A2, align 8
  %186 = load double, ptr @A1, align 8
  %.promoted36 = load double, ptr %1, align 1
  br label %187

187:                                              ; preds = %192, %140
  %188 = phi double [ %195, %192 ], [ %.promoted36, %140 ]
  %189 = phi double [ %193, %192 ], [ 0.000000e+00, %140 ]
  %190 = phi double [ %202, %192 ], [ 0.000000e+00, %140 ]
  %191 = phi i32 [ %203, %192 ], [ 1, %140 ]
  %.not5.not = icmp slt i32 %191, %152
  br i1 %.not5.not, label %192, label %204

192:                                              ; preds = %187
  %193 = fadd double %189, %178
  %194 = fmul double %193, %176
  %195 = fmul double %194, %194
  %196 = call double @llvm.fmuladd.f64(double %179, double %195, double %181)
  %197 = call double @llvm.fmuladd.f64(double %196, double %195, double %182)
  %198 = call double @llvm.fmuladd.f64(double %197, double %195, double %184)
  %199 = call double @llvm.fmuladd.f64(double %198, double %195, double %185)
  %200 = call double @llvm.fmuladd.f64(double %199, double %195, double %186)
  %201 = call double @llvm.fmuladd.f64(double %200, double %195, double %178)
  %202 = call double @llvm.fmuladd.f64(double %194, double %201, double %190)
  %203 = add nuw nsw i32 %191, 1
  br label %187, !llvm.loop !13

204:                                              ; preds = %187
  %.lcssa37 = phi double [ %188, %187 ]
  %.lcssa19 = phi double [ %190, %187 ]
  store double %.lcssa37, ptr %1, align 1
  %205 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %206 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %207 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %208 = load double, ptr @nulltime, align 8
  %209 = fneg double %208
  %210 = call double @llvm.fmuladd.f64(double %206, double %207, double %209)
  store double %210, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %211 = load double, ptr @piref, align 8
  %212 = load double, ptr @three, align 8
  %213 = fdiv double %211, %212
  %214 = fmul double %213, %213
  store double %214, ptr %1, align 8
  %215 = load double, ptr @A6, align 8
  %216 = load double, ptr @A5, align 8
  %217 = fneg double %216
  %218 = call double @llvm.fmuladd.f64(double %215, double %214, double %217)
  %219 = load double, ptr @A4, align 8
  %220 = call double @llvm.fmuladd.f64(double %218, double %214, double %219)
  %221 = load double, ptr @A3, align 8
  %222 = fneg double %221
  %223 = call double @llvm.fmuladd.f64(double %220, double %214, double %222)
  %224 = load double, ptr @A2, align 8
  %225 = call double @llvm.fmuladd.f64(double %223, double %214, double %224)
  %226 = load double, ptr @A1, align 8
  %227 = call double @llvm.fmuladd.f64(double %225, double %214, double %226)
  %228 = load double, ptr @one, align 8
  %229 = call double @llvm.fmuladd.f64(double %227, double %214, double %228)
  %230 = fmul double %213, %229
  store double %230, ptr @sa, align 8
  %231 = fdiv double %210, 1.700000e+01
  store double %231, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %232 = load double, ptr @two, align 8
  %233 = call double @llvm.fmuladd.f64(double %232, double %.lcssa19, double %230)
  %234 = fmul double %176, %233
  %235 = fdiv double %234, %232
  store double %235, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %236 = fadd double %235, -5.000000e-01
  store double %236, ptr @sc, align 8
  %237 = fdiv double %228, %231
  store double %237, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %238 = fmul double %236, 1.000000e-30
  %239 = fmul double %210, 1.000000e-30
  %240 = fmul double %237, 1.000000e-30
  %241 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %238, double noundef %239, double noundef %240) #4
  %242 = load double, ptr @A3, align 8
  %243 = fneg double %242
  store double %243, ptr @A3, align 8
  %244 = load double, ptr @A5, align 8
  %245 = fneg double %244
  store double %245, ptr @A5, align 8
  %246 = load double, ptr @piref, align 8
  %247 = load double, ptr @three, align 8
  %248 = fmul double %247, %174
  %249 = fdiv double %246, %248
  %250 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %251 = load double, ptr @B6, align 8
  %252 = load double, ptr @B5, align 8
  %253 = load double, ptr @B4, align 8
  %254 = load double, ptr @B3, align 8
  %255 = load double, ptr @B2, align 8
  %256 = load double, ptr @B1, align 8
  %257 = load double, ptr @one, align 8
  %.promoted38 = load double, ptr %1, align 1
  br label %258

258:                                              ; preds = %262, %204
  %259 = phi double [ %265, %262 ], [ %.promoted38, %204 ]
  %260 = phi double [ %272, %262 ], [ 0.000000e+00, %204 ]
  %261 = phi i32 [ %273, %262 ], [ 1, %204 ]
  %.not6.not = icmp slt i32 %261, %152
  br i1 %.not6.not, label %262, label %274

262:                                              ; preds = %258
  %263 = uitofp nneg i32 %261 to double
  %264 = fmul double %249, %263
  %265 = fmul double %264, %264
  %266 = call double @llvm.fmuladd.f64(double %251, double %265, double %252)
  %267 = call double @llvm.fmuladd.f64(double %265, double %266, double %253)
  %268 = call double @llvm.fmuladd.f64(double %265, double %267, double %254)
  %269 = call double @llvm.fmuladd.f64(double %265, double %268, double %255)
  %270 = call double @llvm.fmuladd.f64(double %265, double %269, double %256)
  %271 = call double @llvm.fmuladd.f64(double %265, double %270, double %260)
  %272 = fadd double %271, %257
  %273 = add nuw nsw i32 %261, 1
  br label %258, !llvm.loop !14

274:                                              ; preds = %258
  %.lcssa39 = phi double [ %259, %258 ]
  %.lcssa18 = phi double [ %260, %258 ]
  store double %.lcssa39, ptr %1, align 1
  %275 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %276 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %277 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %278 = load double, ptr @nulltime, align 8
  %279 = fneg double %278
  %280 = call double @llvm.fmuladd.f64(double %276, double %277, double %279)
  store double %280, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %281 = load double, ptr @piref, align 8
  %282 = load double, ptr @three, align 8
  %283 = fdiv double %281, %282
  %284 = fmul double %283, %283
  store double %284, ptr %1, align 8
  %285 = load double, ptr @B6, align 8
  %286 = load double, ptr @B5, align 8
  %287 = call double @llvm.fmuladd.f64(double %285, double %284, double %286)
  %288 = load double, ptr @B4, align 8
  %289 = call double @llvm.fmuladd.f64(double %284, double %287, double %288)
  %290 = load double, ptr @B3, align 8
  %291 = call double @llvm.fmuladd.f64(double %284, double %289, double %290)
  %292 = load double, ptr @B2, align 8
  %293 = call double @llvm.fmuladd.f64(double %284, double %291, double %292)
  %294 = load double, ptr @B1, align 8
  %295 = call double @llvm.fmuladd.f64(double %284, double %293, double %294)
  %296 = load double, ptr @one, align 8
  %297 = call double @llvm.fmuladd.f64(double %284, double %295, double %296)
  store double %297, ptr @sa, align 8
  %298 = fdiv double %280, 1.500000e+01
  store double %298, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %299 = fadd double %297, %296
  %300 = load double, ptr @two, align 8
  %301 = call double @llvm.fmuladd.f64(double %300, double %.lcssa18, double %299)
  %302 = fmul double %249, %301
  %303 = fdiv double %302, %300
  store double %303, ptr @sa, align 8
  store double %284, ptr %1, align 8
  %304 = load double, ptr @A6, align 8
  %305 = load double, ptr @A5, align 8
  %306 = call double @llvm.fmuladd.f64(double %304, double %284, double %305)
  %307 = load double, ptr @A4, align 8
  %308 = call double @llvm.fmuladd.f64(double %306, double %284, double %307)
  %309 = load double, ptr @A3, align 8
  %310 = call double @llvm.fmuladd.f64(double %308, double %284, double %309)
  %311 = load double, ptr @A2, align 8
  %312 = call double @llvm.fmuladd.f64(double %310, double %284, double %311)
  %313 = load double, ptr @A1, align 8
  %314 = call double @llvm.fmuladd.f64(double %312, double %284, double %313)
  %315 = load double, ptr @A0, align 8
  %316 = call double @llvm.fmuladd.f64(double %314, double %284, double %315)
  %317 = fmul double %283, %316
  store double %317, ptr @sb, align 8
  %318 = fsub double %303, %317
  store double %318, ptr @sc, align 8
  %319 = fdiv double %296, %298
  store double %319, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %320 = fmul double %318, 1.000000e-30
  %321 = fmul double %280, 1.000000e-30
  %322 = fmul double %319, 1.000000e-30
  %323 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %320, double noundef %321, double noundef %322) #4
  %324 = load double, ptr @piref, align 8
  %325 = load double, ptr @three, align 8
  %326 = fmul double %325, %174
  %327 = fdiv double %324, %326
  %328 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %329 = load double, ptr @A6, align 8
  %330 = load double, ptr @A5, align 8
  %331 = load double, ptr @A4, align 8
  %332 = load double, ptr @A3, align 8
  %333 = load double, ptr @A2, align 8
  %334 = load double, ptr @A1, align 8
  %335 = load double, ptr @one, align 8
  %336 = load double, ptr @B6, align 8
  %337 = load double, ptr @B5, align 8
  %338 = load double, ptr @B4, align 8
  %339 = load double, ptr @B3, align 8
  %340 = load double, ptr @B2, align 8
  %341 = load double, ptr @B1, align 8
  %.promoted40 = load double, ptr %1, align 1
  br label %342

342:                                              ; preds = %346, %274
  %343 = phi double [ %349, %346 ], [ %.promoted40, %274 ]
  %344 = phi double [ %364, %346 ], [ 0.000000e+00, %274 ]
  %345 = phi i32 [ %365, %346 ], [ 1, %274 ]
  %.not7.not = icmp slt i32 %345, %152
  br i1 %.not7.not, label %346, label %366

346:                                              ; preds = %342
  %347 = uitofp nneg i32 %345 to double
  %348 = fmul double %327, %347
  %349 = fmul double %348, %348
  %350 = call double @llvm.fmuladd.f64(double %329, double %349, double %330)
  %351 = call double @llvm.fmuladd.f64(double %350, double %349, double %331)
  %352 = call double @llvm.fmuladd.f64(double %351, double %349, double %332)
  %353 = call double @llvm.fmuladd.f64(double %352, double %349, double %333)
  %354 = call double @llvm.fmuladd.f64(double %353, double %349, double %334)
  %355 = call double @llvm.fmuladd.f64(double %354, double %349, double %335)
  %356 = fmul double %348, %355
  %357 = call double @llvm.fmuladd.f64(double %336, double %349, double %337)
  %358 = call double @llvm.fmuladd.f64(double %349, double %357, double %338)
  %359 = call double @llvm.fmuladd.f64(double %349, double %358, double %339)
  %360 = call double @llvm.fmuladd.f64(double %349, double %359, double %340)
  %361 = call double @llvm.fmuladd.f64(double %349, double %360, double %341)
  %362 = call double @llvm.fmuladd.f64(double %349, double %361, double %335)
  %363 = fdiv double %356, %362
  %364 = fadd double %344, %363
  %365 = add nuw nsw i32 %345, 1
  br label %342, !llvm.loop !15

366:                                              ; preds = %342
  %.lcssa41 = phi double [ %343, %342 ]
  %.lcssa17 = phi double [ %344, %342 ]
  store double %.lcssa41, ptr %1, align 1
  %367 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %368 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %369 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %370 = load double, ptr @nulltime, align 8
  %371 = fneg double %370
  %372 = call double @llvm.fmuladd.f64(double %368, double %369, double %371)
  store double %372, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %373 = load double, ptr @piref, align 8
  %374 = load double, ptr @three, align 8
  %375 = fdiv double %373, %374
  %376 = fmul double %375, %375
  store double %376, ptr %1, align 8
  %377 = load double, ptr @A6, align 8
  %378 = load double, ptr @A5, align 8
  %379 = call double @llvm.fmuladd.f64(double %377, double %376, double %378)
  %380 = load double, ptr @A4, align 8
  %381 = call double @llvm.fmuladd.f64(double %379, double %376, double %380)
  %382 = load double, ptr @A3, align 8
  %383 = call double @llvm.fmuladd.f64(double %381, double %376, double %382)
  %384 = load double, ptr @A2, align 8
  %385 = call double @llvm.fmuladd.f64(double %383, double %376, double %384)
  %386 = load double, ptr @A1, align 8
  %387 = call double @llvm.fmuladd.f64(double %385, double %376, double %386)
  %388 = load double, ptr @one, align 8
  %389 = call double @llvm.fmuladd.f64(double %387, double %376, double %388)
  %390 = fmul double %375, %389
  store double %390, ptr @sa, align 8
  %391 = load double, ptr @B6, align 8
  %392 = load double, ptr @B5, align 8
  %393 = call double @llvm.fmuladd.f64(double %391, double %376, double %392)
  %394 = load double, ptr @B4, align 8
  %395 = call double @llvm.fmuladd.f64(double %376, double %393, double %394)
  %396 = load double, ptr @B3, align 8
  %397 = call double @llvm.fmuladd.f64(double %376, double %395, double %396)
  %398 = load double, ptr @B2, align 8
  %399 = call double @llvm.fmuladd.f64(double %376, double %397, double %398)
  %400 = load double, ptr @B1, align 8
  %401 = call double @llvm.fmuladd.f64(double %376, double %399, double %400)
  %402 = call double @llvm.fmuladd.f64(double %376, double %401, double %388)
  store double %402, ptr @sb, align 8
  %403 = fdiv double %390, %402
  store double %403, ptr @sa, align 8
  %404 = fdiv double %372, 2.900000e+01
  store double %404, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %405 = load double, ptr @two, align 8
  %406 = call double @llvm.fmuladd.f64(double %405, double %.lcssa17, double %403)
  %407 = fmul double %327, %406
  %408 = fdiv double %407, %405
  store double %408, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %409 = fadd double %408, f0xBFE62E42FEFA39EF
  store double %409, ptr @sc, align 8
  %410 = fdiv double %388, %404
  store double %410, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %411 = fmul double %409, 1.000000e-30
  %412 = fmul double %372, 1.000000e-30
  %413 = fmul double %410, 1.000000e-30
  %414 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %411, double noundef %412, double noundef %413) #4
  %415 = load double, ptr @piref, align 8
  %416 = load double, ptr @four, align 8
  %417 = fmul double %416, %174
  %418 = fdiv double %415, %417
  %419 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %420 = load double, ptr @A6, align 8
  %421 = load double, ptr @A5, align 8
  %422 = load double, ptr @A4, align 8
  %423 = load double, ptr @A3, align 8
  %424 = load double, ptr @A2, align 8
  %425 = load double, ptr @A1, align 8
  %426 = load double, ptr @one, align 8
  %427 = load double, ptr @B6, align 8
  %428 = load double, ptr @B5, align 8
  %429 = load double, ptr @B4, align 8
  %430 = load double, ptr @B3, align 8
  %431 = load double, ptr @B2, align 8
  %432 = load double, ptr @B1, align 8
  %.promoted42 = load double, ptr %1, align 1
  br label %433

433:                                              ; preds = %437, %366
  %434 = phi double [ %440, %437 ], [ %.promoted42, %366 ]
  %435 = phi double [ %454, %437 ], [ 0.000000e+00, %366 ]
  %436 = phi i32 [ %455, %437 ], [ 1, %366 ]
  %.not8.not = icmp slt i32 %436, %152
  br i1 %.not8.not, label %437, label %456

437:                                              ; preds = %433
  %438 = uitofp nneg i32 %436 to double
  %439 = fmul double %418, %438
  %440 = fmul double %439, %439
  %441 = call double @llvm.fmuladd.f64(double %420, double %440, double %421)
  %442 = call double @llvm.fmuladd.f64(double %441, double %440, double %422)
  %443 = call double @llvm.fmuladd.f64(double %442, double %440, double %423)
  %444 = call double @llvm.fmuladd.f64(double %443, double %440, double %424)
  %445 = call double @llvm.fmuladd.f64(double %444, double %440, double %425)
  %446 = call double @llvm.fmuladd.f64(double %445, double %440, double %426)
  %447 = fmul double %439, %446
  %448 = call double @llvm.fmuladd.f64(double %427, double %440, double %428)
  %449 = call double @llvm.fmuladd.f64(double %440, double %448, double %429)
  %450 = call double @llvm.fmuladd.f64(double %440, double %449, double %430)
  %451 = call double @llvm.fmuladd.f64(double %440, double %450, double %431)
  %452 = call double @llvm.fmuladd.f64(double %440, double %451, double %432)
  %453 = call double @llvm.fmuladd.f64(double %440, double %452, double %426)
  %454 = call double @llvm.fmuladd.f64(double %447, double %453, double %435)
  %455 = add nuw nsw i32 %436, 1
  br label %433, !llvm.loop !16

456:                                              ; preds = %433
  %.lcssa43 = phi double [ %434, %433 ]
  %.lcssa16 = phi double [ %435, %433 ]
  store double %.lcssa43, ptr %1, align 1
  %457 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %458 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %459 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %460 = load double, ptr @nulltime, align 8
  %461 = fneg double %460
  %462 = call double @llvm.fmuladd.f64(double %458, double %459, double %461)
  store double %462, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %463 = load double, ptr @piref, align 8
  %464 = load double, ptr @four, align 8
  %465 = fdiv double %463, %464
  %466 = fmul double %465, %465
  store double %466, ptr %1, align 8
  %467 = load double, ptr @A6, align 8
  %468 = load double, ptr @A5, align 8
  %469 = call double @llvm.fmuladd.f64(double %467, double %466, double %468)
  %470 = load double, ptr @A4, align 8
  %471 = call double @llvm.fmuladd.f64(double %469, double %466, double %470)
  %472 = load double, ptr @A3, align 8
  %473 = call double @llvm.fmuladd.f64(double %471, double %466, double %472)
  %474 = load double, ptr @A2, align 8
  %475 = call double @llvm.fmuladd.f64(double %473, double %466, double %474)
  %476 = load double, ptr @A1, align 8
  %477 = call double @llvm.fmuladd.f64(double %475, double %466, double %476)
  %478 = load double, ptr @one, align 8
  %479 = call double @llvm.fmuladd.f64(double %477, double %466, double %478)
  %480 = fmul double %465, %479
  store double %480, ptr @sa, align 8
  %481 = load double, ptr @B6, align 8
  %482 = load double, ptr @B5, align 8
  %483 = call double @llvm.fmuladd.f64(double %481, double %466, double %482)
  %484 = load double, ptr @B4, align 8
  %485 = call double @llvm.fmuladd.f64(double %466, double %483, double %484)
  %486 = load double, ptr @B3, align 8
  %487 = call double @llvm.fmuladd.f64(double %466, double %485, double %486)
  %488 = load double, ptr @B2, align 8
  %489 = call double @llvm.fmuladd.f64(double %466, double %487, double %488)
  %490 = load double, ptr @B1, align 8
  %491 = call double @llvm.fmuladd.f64(double %466, double %489, double %490)
  %492 = call double @llvm.fmuladd.f64(double %466, double %491, double %478)
  store double %492, ptr @sb, align 8
  %493 = fmul double %480, %492
  store double %493, ptr @sa, align 8
  %494 = fdiv double %462, 2.900000e+01
  store double %494, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %495 = load double, ptr @two, align 8
  %496 = call double @llvm.fmuladd.f64(double %495, double %.lcssa16, double %493)
  %497 = fmul double %418, %496
  %498 = fdiv double %497, %495
  store double %498, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %499 = fadd double %498, -2.500000e-01
  store double %499, ptr @sc, align 8
  %500 = fdiv double %478, %494
  store double %500, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %501 = fmul double %499, 1.000000e-30
  %502 = fmul double %462, 1.000000e-30
  %503 = fmul double %500, 1.000000e-30
  %504 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %501, double noundef %502, double noundef %503) #4
  %505 = load double, ptr @one, align 8
  store double %505, ptr %1, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %506 = fdiv double f0x40599541F7F192A4, %174
  %507 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %508 = load double, ptr %1, align 8
  br label %509

509:                                              ; preds = %512, %456
  %510 = phi double [ %524, %512 ], [ 0.000000e+00, %456 ]
  %511 = phi i32 [ %525, %512 ], [ 1, %456 ]
  %.not9.not = icmp slt i32 %511, %152
  br i1 %.not9.not, label %512, label %526

512:                                              ; preds = %509
  %513 = uitofp nneg i32 %511 to double
  %514 = fmul double %506, %513
  %515 = fmul double %514, %514
  %516 = fadd double %514, %508
  %517 = fdiv double %508, %516
  %518 = fsub double %510, %517
  %519 = fadd double %515, %508
  %520 = fdiv double %514, %519
  %521 = fsub double %518, %520
  %522 = call double @llvm.fmuladd.f64(double %514, double %515, double %508)
  %523 = fdiv double %515, %522
  %524 = fsub double %521, %523
  %525 = add nuw nsw i32 %511, 1
  br label %509, !llvm.loop !17

526:                                              ; preds = %509
  %.lcssa15 = phi double [ %510, %509 ]
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
  %535 = fmul double %534, %534
  %536 = load double, ptr %1, align 8
  %537 = fneg double %536
  %538 = fadd double %534, %536
  %539 = fdiv double %536, %538
  %540 = fsub double %537, %539
  %541 = fadd double %535, %536
  %542 = fdiv double %534, %541
  %543 = fsub double %540, %542
  %544 = call double @llvm.fmuladd.f64(double %534, double %535, double %536)
  %545 = fdiv double %535, %544
  %546 = fsub double %543, %545
  store double %546, ptr @sa, align 8
  %547 = fmul nnan double %506, 1.800000e+01
  %548 = load double, ptr @two, align 8
  %549 = call double @llvm.fmuladd.f64(double %548, double %.lcssa15, double %546)
  %550 = fmul double %547, %549
  store double %550, ptr @sa, align 8
  %551 = fptosi double %550 to i32
  %552 = mul nsw i32 %551, -2000
  store i32 %552, ptr %2, align 4
  %553 = sitofp i32 %552 to double
  %554 = load double, ptr @scale, align 8
  %555 = fdiv double %553, %554
  %556 = fptosi double %555 to i32
  store i32 %556, ptr %2, align 4
  %557 = fadd double %550, 5.002000e+02
  store double %557, ptr @sc, align 8
  %558 = load double, ptr @one, align 8
  %559 = fdiv double %558, %533
  store double %559, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %560 = fmul double %557, 1.000000e-30
  %561 = fmul double %532, 1.000000e-30
  %562 = fmul double %559, 1.000000e-30
  %563 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %560, double noundef %561, double noundef %562) #4
  %564 = load double, ptr @piref, align 8
  %565 = load double, ptr @three, align 8
  %566 = sitofp i32 %556 to double
  %567 = fmul double %565, %566
  %568 = fdiv double %564, %567
  %569 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %570 = load double, ptr @B6, align 8
  %571 = load double, ptr @B5, align 8
  %572 = load double, ptr @B4, align 8
  %573 = load double, ptr @B3, align 8
  %574 = load double, ptr @B2, align 8
  %575 = load double, ptr @B1, align 8
  %576 = load double, ptr @one, align 8
  %577 = load double, ptr @A6, align 8
  %578 = load double, ptr @A5, align 8
  %579 = load double, ptr @A4, align 8
  %580 = load double, ptr @A3, align 8
  %581 = load double, ptr @A2, align 8
  %582 = load double, ptr @A1, align 8
  %.promoted44 = load double, ptr %1, align 1
  br label %583

583:                                              ; preds = %587, %526
  %584 = phi double [ %590, %587 ], [ %.promoted44, %526 ]
  %585 = phi double [ %605, %587 ], [ 0.000000e+00, %526 ]
  %586 = phi i32 [ %606, %587 ], [ 1, %526 ]
  %.not10.not = icmp slt i32 %586, %556
  br i1 %.not10.not, label %587, label %607

587:                                              ; preds = %583
  %588 = uitofp nneg i32 %586 to double
  %589 = fmul double %568, %588
  %590 = fmul double %589, %589
  %591 = call double @llvm.fmuladd.f64(double %570, double %590, double %571)
  %592 = call double @llvm.fmuladd.f64(double %590, double %591, double %572)
  %593 = call double @llvm.fmuladd.f64(double %590, double %592, double %573)
  %594 = call double @llvm.fmuladd.f64(double %590, double %593, double %574)
  %595 = call double @llvm.fmuladd.f64(double %590, double %594, double %575)
  %596 = call double @llvm.fmuladd.f64(double %590, double %595, double %576)
  %597 = fmul double %596, %596
  %598 = fmul double %597, %589
  %599 = call double @llvm.fmuladd.f64(double %577, double %590, double %578)
  %600 = call double @llvm.fmuladd.f64(double %599, double %590, double %579)
  %601 = call double @llvm.fmuladd.f64(double %600, double %590, double %580)
  %602 = call double @llvm.fmuladd.f64(double %601, double %590, double %581)
  %603 = call double @llvm.fmuladd.f64(double %602, double %590, double %582)
  %604 = call double @llvm.fmuladd.f64(double %603, double %590, double %576)
  %605 = call double @llvm.fmuladd.f64(double %598, double %604, double %585)
  %606 = add nuw nsw i32 %586, 1
  br label %583, !llvm.loop !18

607:                                              ; preds = %583
  %.lcssa45 = phi double [ %584, %583 ]
  %.lcssa = phi double [ %585, %583 ]
  store double %.lcssa45, ptr %1, align 1
  %608 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %609 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %610 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %611 = load double, ptr @nulltime, align 8
  %612 = fneg double %611
  %613 = call double @llvm.fmuladd.f64(double %609, double %610, double %612)
  store double %613, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %614 = load double, ptr @piref, align 8
  %615 = load double, ptr @three, align 8
  %616 = fdiv double %614, %615
  %617 = fmul double %616, %616
  store double %617, ptr %1, align 8
  %618 = load double, ptr @A6, align 8
  %619 = load double, ptr @A5, align 8
  %620 = call double @llvm.fmuladd.f64(double %618, double %617, double %619)
  %621 = load double, ptr @A4, align 8
  %622 = call double @llvm.fmuladd.f64(double %620, double %617, double %621)
  %623 = load double, ptr @A3, align 8
  %624 = call double @llvm.fmuladd.f64(double %622, double %617, double %623)
  %625 = load double, ptr @A2, align 8
  %626 = call double @llvm.fmuladd.f64(double %624, double %617, double %625)
  %627 = load double, ptr @A1, align 8
  %628 = call double @llvm.fmuladd.f64(double %626, double %617, double %627)
  %629 = load double, ptr @one, align 8
  %630 = call double @llvm.fmuladd.f64(double %628, double %617, double %629)
  %631 = fmul double %616, %630
  store double %631, ptr @sa, align 8
  %632 = load double, ptr @B6, align 8
  %633 = load double, ptr @B5, align 8
  %634 = call double @llvm.fmuladd.f64(double %632, double %617, double %633)
  %635 = load double, ptr @B4, align 8
  %636 = call double @llvm.fmuladd.f64(double %617, double %634, double %635)
  %637 = load double, ptr @B3, align 8
  %638 = call double @llvm.fmuladd.f64(double %617, double %636, double %637)
  %639 = load double, ptr @B2, align 8
  %640 = call double @llvm.fmuladd.f64(double %617, double %638, double %639)
  %641 = load double, ptr @B1, align 8
  %642 = call double @llvm.fmuladd.f64(double %617, double %640, double %641)
  %643 = call double @llvm.fmuladd.f64(double %617, double %642, double %629)
  store double %643, ptr @sb, align 8
  %644 = fmul double %631, %643
  %645 = fmul double %644, %643
  store double %645, ptr @sa, align 8
  %646 = fdiv double %613, 3.000000e+01
  store double %646, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %647 = load double, ptr @two, align 8
  %648 = call double @llvm.fmuladd.f64(double %647, double %.lcssa, double %645)
  %649 = fmul double %568, %648
  %650 = fdiv double %649, %647
  store double %650, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %651 = fadd double %650, f0xBFD2AAAAAAAAAAAB
  store double %651, ptr @sc, align 8
  %652 = fdiv double %629, %646
  store double %652, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %653 = fmul double %651, 1.000000e-30
  %654 = fmul double %613, 1.000000e-30
  %655 = fmul double %652, 1.000000e-30
  %656 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %653, double noundef %654, double noundef %655) #4
  %657 = load double, ptr @five, align 8
  %658 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %659 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %660 = fsub double %658, %659
  %661 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %662 = call double @llvm.fmuladd.f64(double %657, double %660, double %661)
  %663 = fdiv double %662, 5.200000e+01
  store double %663, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %664 = load double, ptr @one, align 8
  %665 = fdiv double %664, %663
  store double %665, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %666 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %667 = fadd double %666, %661
  %668 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %669 = fadd double %667, %668
  %670 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %671 = fadd double %669, %670
  %672 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %673 = fadd double %671, %672
  store double %673, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %674 = load double, ptr @four, align 8
  %675 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %676 = call double @llvm.fmuladd.f64(double %674, double %675, double %673)
  %677 = fdiv double %676, 1.520000e+02
  store double %677, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %678 = fdiv double %664, %677
  store double %678, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %673, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %679 = fadd double %673, %675
  %680 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %681 = fadd double %679, %680
  %682 = fdiv double %681, 1.460000e+02
  store double %682, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %683 = fdiv double %664, %682
  store double %683, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %684 = fadd double %661, %668
  %685 = fadd double %684, %672
  %686 = fadd double %685, %680
  %687 = fdiv double %686, 9.100000e+01
  store double %687, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %688 = fdiv double %664, %687
  store double %688, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar11 = call i32 @putchar(i32 10)
  %689 = load i32, ptr %2, align 4
  %690 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %689) #4
  %691 = load double, ptr @nulltime, align 8
  %692 = fmul double %691, 1.000000e-30
  %693 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %692) #4
  %694 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %695 = fmul double %694, 1.000000e-30
  %696 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %695) #4
  %697 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %698 = fmul double %697, 1.000000e-30
  %699 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %698) #4
  %700 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %701 = fmul double %700, 1.000000e-30
  %702 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %701) #4
  %703 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %704 = fmul double %703, 1.000000e-30
  %705 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %704) #4
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
