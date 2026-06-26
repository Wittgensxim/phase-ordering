; ModuleID = 'results\paper_full\Misc_flops\round_001\output.ll'
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
  %4 = phi double [ undef, %0 ], [ %18, %36 ]
  %5 = phi double [ undef, %0 ], [ %14, %36 ]
  %6 = phi i32 [ 15625, %0 ], [ %11, %36 ]
  %7 = phi double [ 0.000000e+00, %0 ], [ %38, %36 ]
  %8 = load double, ptr @TLimit, align 8
  %9 = fcmp olt double %7, %8
  br i1 %9, label %10, label %40

10:                                               ; preds = %3
  %11 = shl nsw i32 %6, 1
  %12 = load double, ptr @one, align 8
  %13 = sitofp i32 %11 to double
  %14 = fdiv double %12, %13
  %15 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %16

16:                                               ; preds = %20, %10
  %17 = phi double [ %21, %20 ], [ 0.000000e+00, %10 ]
  %18 = phi double [ %34, %20 ], [ 0.000000e+00, %10 ]
  %19 = phi i32 [ %35, %20 ], [ 1, %10 ]
  %.not.not = icmp slt i32 %19, %11
  br i1 %.not.not, label %20, label %36

20:                                               ; preds = %16
  %21 = fadd double %12, %17
  %22 = fmul double %14, %21
  %23 = load double, ptr @D1, align 8
  %24 = load double, ptr @D2, align 8
  %25 = load double, ptr @D3, align 8
  %26 = call double @llvm.fmuladd.f64(double %22, double %25, double %24)
  %27 = call double @llvm.fmuladd.f64(double %22, double %26, double %23)
  %28 = load double, ptr @E2, align 8
  %29 = load double, ptr @E3, align 8
  %30 = call double @llvm.fmuladd.f64(double %22, double %29, double %28)
  %31 = call double @llvm.fmuladd.f64(double %22, double %30, double %23)
  %32 = call double @llvm.fmuladd.f64(double %22, double %31, double %12)
  %33 = fdiv double %27, %32
  %34 = fadd double %18, %33
  %35 = add nuw nsw i32 %19, 1
  br label %16, !llvm.loop !7

36:                                               ; preds = %16
  %37 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %38 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %38, ptr @sa, align 8
  %39 = icmp eq i32 %6, 256000000
  br i1 %39, label %40, label %3, !llvm.loop !9

40:                                               ; preds = %36, %3
  %41 = phi double [ %4, %3 ], [ %18, %36 ]
  %42 = phi double [ %5, %3 ], [ %14, %36 ]
  %43 = phi i32 [ %6, %3 ], [ 512000000, %36 ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %44 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %45

45:                                               ; preds = %47, %40
  %46 = phi i32 [ %48, %47 ], [ 1, %40 ]
  %.not.not3 = icmp slt i32 %46, %43
  br i1 %.not.not3, label %47, label %49

47:                                               ; preds = %45
  %48 = add nuw nsw i32 %46, 1
  br label %45, !llvm.loop !10

49:                                               ; preds = %45
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
  %65 = fadd double %59, %64
  %66 = load double, ptr @E2, align 8
  %67 = fadd double %65, %66
  %68 = load double, ptr @E3, align 8
  %69 = fadd double %67, %68
  %70 = fdiv double %63, %69
  store double %70, ptr @sa, align 8
  store double %59, ptr @sb, align 8
  %71 = fdiv double %58, 1.400000e+01
  store double %71, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %72 = fadd double %59, %70
  %73 = load double, ptr @two, align 8
  %74 = call double @llvm.fmuladd.f64(double %73, double %41, double %72)
  %75 = fmul double %42, %74
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
  %90 = load double, ptr @five, align 8
  %91 = fneg double %90
  %92 = load double, ptr @one, align 8
  %93 = fneg double %92
  store double %93, ptr @sa, align 8
  %94 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %95

95:                                               ; preds = %98, %49
  %96 = phi double [ %99, %98 ], [ %91, %49 ]
  %97 = phi i32 [ %102, %98 ], [ 1, %49 ]
  %.not = icmp sgt i32 %97, %83
  br i1 %.not, label %103, label %98

98:                                               ; preds = %95
  %99 = fneg double %96
  %100 = load double, ptr @sa, align 8
  %101 = fsub double %100, %96
  store double %101, ptr @sa, align 8
  %102 = add nuw nsw i32 %97, 1
  br label %95, !llvm.loop !11

103:                                              ; preds = %95
  %104 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %105 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %106 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %107 = fmul double %105, %106
  %108 = fcmp olt double %107, 0.000000e+00
  %storemerge = select i1 %108, double 0.000000e+00, double %107
  store double %storemerge, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %109 = sitofp i32 %83 to double
  store double %109, ptr @sc, align 8
  %110 = load double, ptr @sa, align 8
  %111 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %112

112:                                              ; preds = %119, %103
  %113 = phi double [ %129, %119 ], [ 0.000000e+00, %103 ]
  %114 = phi double [ %124, %119 ], [ %110, %103 ]
  %115 = phi double [ %120, %119 ], [ %96, %103 ]
  %116 = phi double [ %127, %119 ], [ 0.000000e+00, %103 ]
  %117 = phi double [ %126, %119 ], [ 0.000000e+00, %103 ]
  %118 = phi i32 [ %130, %119 ], [ 1, %103 ]
  %.not4 = icmp sgt i32 %118, %83
  br i1 %.not4, label %131, label %119

119:                                              ; preds = %112
  %120 = fneg double %115
  %121 = load double, ptr @sa, align 8
  %122 = fsub double %121, %115
  store double %122, ptr @sa, align 8
  %123 = load double, ptr @two, align 8
  %124 = fadd double %114, %123
  %125 = fsub double %120, %124
  %126 = fadd double %117, %125
  %127 = call double @llvm.fmuladd.f64(double %115, double %124, double %116)
  %128 = fdiv double %115, %124
  %129 = fsub double %113, %128
  %130 = add nuw nsw i32 %118, 1
  br label %112, !llvm.loop !12

131:                                              ; preds = %112
  %132 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %133 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %134 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %135 = fmul double %133, %134
  store double %135, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %136 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %137 = fsub double %135, %136
  %138 = fdiv double %137, 7.000000e+00
  store double %138, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %139 = load double, ptr @sa, align 8
  %140 = fmul double %117, %139
  %141 = load double, ptr @sc, align 8
  %142 = fdiv double %140, %141
  %143 = fptosi double %142 to i32
  %144 = load double, ptr @four, align 8
  %145 = fmul double %113, %144
  %146 = load double, ptr @five, align 8
  %147 = fdiv double %145, %146
  store double %147, ptr @sa, align 8
  %148 = fdiv double %146, %116
  %149 = fadd double %147, %148
  store double %149, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %150 = fmul double %116, %116
  %151 = fmul double %116, %150
  %152 = fdiv double 3.125000e+01, %151
  %153 = fsub double %149, %152
  store double %153, ptr @piprg, align 8
  %154 = load double, ptr @piref, align 8
  %155 = fsub double %153, %154
  store double %155, ptr @pierr, align 8
  %156 = load double, ptr @one, align 8
  %157 = fdiv double %156, %138
  store double %157, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %158 = fmul double %155, 1.000000e-30
  %159 = fmul double %137, 1.000000e-30
  %160 = fmul double %157, 1.000000e-30
  %161 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %158, double noundef %159, double noundef %160) #4
  %162 = load double, ptr @piref, align 8
  %163 = load double, ptr @three, align 8
  %164 = sitofp i32 %143 to double
  %165 = fmul double %164, %163
  %166 = fdiv double %162, %165
  %167 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %168

168:                                              ; preds = %172, %131
  %169 = phi double [ %174, %172 ], [ 0.000000e+00, %131 ]
  %170 = phi double [ %191, %172 ], [ 0.000000e+00, %131 ]
  %171 = phi i32 [ %192, %172 ], [ 1, %131 ]
  %.not5.not = icmp slt i32 %171, %143
  br i1 %.not5.not, label %172, label %193

172:                                              ; preds = %168
  %173 = load double, ptr @one, align 8
  %174 = fadd double %169, %173
  %175 = fmul double %166, %174
  %176 = fmul double %175, %175
  %177 = load double, ptr @A6, align 8
  %178 = load double, ptr @A5, align 8
  %179 = fneg double %178
  %180 = call double @llvm.fmuladd.f64(double %177, double %176, double %179)
  %181 = load double, ptr @A4, align 8
  %182 = call double @llvm.fmuladd.f64(double %180, double %176, double %181)
  %183 = load double, ptr @A3, align 8
  %184 = fneg double %183
  %185 = call double @llvm.fmuladd.f64(double %182, double %176, double %184)
  %186 = load double, ptr @A2, align 8
  %187 = call double @llvm.fmuladd.f64(double %185, double %176, double %186)
  %188 = load double, ptr @A1, align 8
  %189 = call double @llvm.fmuladd.f64(double %187, double %176, double %188)
  %190 = call double @llvm.fmuladd.f64(double %189, double %176, double %173)
  %191 = call double @llvm.fmuladd.f64(double %175, double %190, double %170)
  %192 = add nuw nsw i32 %171, 1
  br label %168, !llvm.loop !13

193:                                              ; preds = %168
  %194 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %195 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %196 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %197 = load double, ptr @nulltime, align 8
  %198 = fneg double %197
  %199 = call double @llvm.fmuladd.f64(double %195, double %196, double %198)
  store double %199, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %200 = load double, ptr @piref, align 8
  %201 = load double, ptr @three, align 8
  %202 = fdiv double %200, %201
  %203 = fmul double %202, %202
  %204 = load double, ptr @A6, align 8
  %205 = load double, ptr @A5, align 8
  %206 = fneg double %205
  %207 = call double @llvm.fmuladd.f64(double %204, double %203, double %206)
  %208 = load double, ptr @A4, align 8
  %209 = call double @llvm.fmuladd.f64(double %207, double %203, double %208)
  %210 = load double, ptr @A3, align 8
  %211 = fneg double %210
  %212 = call double @llvm.fmuladd.f64(double %209, double %203, double %211)
  %213 = load double, ptr @A2, align 8
  %214 = call double @llvm.fmuladd.f64(double %212, double %203, double %213)
  %215 = load double, ptr @A1, align 8
  %216 = call double @llvm.fmuladd.f64(double %214, double %203, double %215)
  %217 = load double, ptr @one, align 8
  %218 = call double @llvm.fmuladd.f64(double %216, double %203, double %217)
  %219 = fmul double %202, %218
  store double %219, ptr @sa, align 8
  %220 = fdiv double %199, 1.700000e+01
  store double %220, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %221 = load double, ptr @two, align 8
  %222 = call double @llvm.fmuladd.f64(double %221, double %170, double %219)
  %223 = fmul double %166, %222
  %224 = fdiv double %223, %221
  store double %224, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %225 = fadd double %224, -5.000000e-01
  store double %225, ptr @sc, align 8
  %226 = fdiv double %217, %220
  store double %226, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %227 = fmul double %225, 1.000000e-30
  %228 = fmul double %199, 1.000000e-30
  %229 = fmul double %226, 1.000000e-30
  %230 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %227, double noundef %228, double noundef %229) #4
  %231 = load double, ptr @A3, align 8
  %232 = fneg double %231
  store double %232, ptr @A3, align 8
  %233 = load double, ptr @A5, align 8
  %234 = fneg double %233
  store double %234, ptr @A5, align 8
  %235 = load double, ptr @piref, align 8
  %236 = load double, ptr @three, align 8
  %237 = fmul double %164, %236
  %238 = fdiv double %235, %237
  %239 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %240

240:                                              ; preds = %243, %193
  %241 = phi double [ %260, %243 ], [ 0.000000e+00, %193 ]
  %242 = phi i32 [ %261, %243 ], [ 1, %193 ]
  %.not6.not = icmp slt i32 %242, %143
  br i1 %.not6.not, label %243, label %262

243:                                              ; preds = %240
  %244 = uitofp nneg i32 %242 to double
  %245 = fmul double %238, %244
  %246 = fmul double %245, %245
  %247 = load double, ptr @B6, align 8
  %248 = load double, ptr @B5, align 8
  %249 = call double @llvm.fmuladd.f64(double %247, double %246, double %248)
  %250 = load double, ptr @B4, align 8
  %251 = call double @llvm.fmuladd.f64(double %246, double %249, double %250)
  %252 = load double, ptr @B3, align 8
  %253 = call double @llvm.fmuladd.f64(double %246, double %251, double %252)
  %254 = load double, ptr @B2, align 8
  %255 = call double @llvm.fmuladd.f64(double %246, double %253, double %254)
  %256 = load double, ptr @B1, align 8
  %257 = call double @llvm.fmuladd.f64(double %246, double %255, double %256)
  %258 = call double @llvm.fmuladd.f64(double %246, double %257, double %241)
  %259 = load double, ptr @one, align 8
  %260 = fadd double %259, %258
  %261 = add nuw nsw i32 %242, 1
  br label %240, !llvm.loop !14

262:                                              ; preds = %240
  %263 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %264 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %265 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %266 = load double, ptr @nulltime, align 8
  %267 = fneg double %266
  %268 = call double @llvm.fmuladd.f64(double %264, double %265, double %267)
  store double %268, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %269 = load double, ptr @piref, align 8
  %270 = load double, ptr @three, align 8
  %271 = fdiv double %269, %270
  %272 = fmul double %271, %271
  %273 = load double, ptr @B6, align 8
  %274 = load double, ptr @B5, align 8
  %275 = call double @llvm.fmuladd.f64(double %273, double %272, double %274)
  %276 = load double, ptr @B4, align 8
  %277 = call double @llvm.fmuladd.f64(double %272, double %275, double %276)
  %278 = load double, ptr @B3, align 8
  %279 = call double @llvm.fmuladd.f64(double %272, double %277, double %278)
  %280 = load double, ptr @B2, align 8
  %281 = call double @llvm.fmuladd.f64(double %272, double %279, double %280)
  %282 = load double, ptr @B1, align 8
  %283 = call double @llvm.fmuladd.f64(double %272, double %281, double %282)
  %284 = load double, ptr @one, align 8
  %285 = call double @llvm.fmuladd.f64(double %272, double %283, double %284)
  store double %285, ptr @sa, align 8
  %286 = fdiv double %268, 1.500000e+01
  store double %286, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %287 = fadd double %284, %285
  %288 = load double, ptr @two, align 8
  %289 = call double @llvm.fmuladd.f64(double %288, double %241, double %287)
  %290 = fmul double %238, %289
  %291 = fdiv double %290, %288
  store double %291, ptr @sa, align 8
  %292 = load double, ptr @A6, align 8
  %293 = load double, ptr @A5, align 8
  %294 = call double @llvm.fmuladd.f64(double %292, double %272, double %293)
  %295 = load double, ptr @A4, align 8
  %296 = call double @llvm.fmuladd.f64(double %294, double %272, double %295)
  %297 = load double, ptr @A3, align 8
  %298 = call double @llvm.fmuladd.f64(double %296, double %272, double %297)
  %299 = load double, ptr @A2, align 8
  %300 = call double @llvm.fmuladd.f64(double %298, double %272, double %299)
  %301 = load double, ptr @A1, align 8
  %302 = call double @llvm.fmuladd.f64(double %300, double %272, double %301)
  %303 = load double, ptr @A0, align 8
  %304 = call double @llvm.fmuladd.f64(double %302, double %272, double %303)
  %305 = fmul double %271, %304
  store double %305, ptr @sb, align 8
  %306 = fsub double %291, %305
  store double %306, ptr @sc, align 8
  %307 = fdiv double %284, %286
  store double %307, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %308 = fmul double %306, 1.000000e-30
  %309 = fmul double %268, 1.000000e-30
  %310 = fmul double %307, 1.000000e-30
  %311 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %308, double noundef %309, double noundef %310) #4
  %312 = load double, ptr @piref, align 8
  %313 = load double, ptr @three, align 8
  %314 = fmul double %164, %313
  %315 = fdiv double %312, %314
  %316 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %317

317:                                              ; preds = %320, %262
  %318 = phi double [ %351, %320 ], [ 0.000000e+00, %262 ]
  %319 = phi i32 [ %352, %320 ], [ 1, %262 ]
  %.not7.not = icmp slt i32 %319, %143
  br i1 %.not7.not, label %320, label %353

320:                                              ; preds = %317
  %321 = uitofp nneg i32 %319 to double
  %322 = fmul double %315, %321
  %323 = fmul double %322, %322
  %324 = load double, ptr @A6, align 8
  %325 = load double, ptr @A5, align 8
  %326 = call double @llvm.fmuladd.f64(double %324, double %323, double %325)
  %327 = load double, ptr @A4, align 8
  %328 = call double @llvm.fmuladd.f64(double %326, double %323, double %327)
  %329 = load double, ptr @A3, align 8
  %330 = call double @llvm.fmuladd.f64(double %328, double %323, double %329)
  %331 = load double, ptr @A2, align 8
  %332 = call double @llvm.fmuladd.f64(double %330, double %323, double %331)
  %333 = load double, ptr @A1, align 8
  %334 = call double @llvm.fmuladd.f64(double %332, double %323, double %333)
  %335 = load double, ptr @one, align 8
  %336 = call double @llvm.fmuladd.f64(double %334, double %323, double %335)
  %337 = fmul double %322, %336
  %338 = load double, ptr @B6, align 8
  %339 = load double, ptr @B5, align 8
  %340 = call double @llvm.fmuladd.f64(double %338, double %323, double %339)
  %341 = load double, ptr @B4, align 8
  %342 = call double @llvm.fmuladd.f64(double %323, double %340, double %341)
  %343 = load double, ptr @B3, align 8
  %344 = call double @llvm.fmuladd.f64(double %323, double %342, double %343)
  %345 = load double, ptr @B2, align 8
  %346 = call double @llvm.fmuladd.f64(double %323, double %344, double %345)
  %347 = load double, ptr @B1, align 8
  %348 = call double @llvm.fmuladd.f64(double %323, double %346, double %347)
  %349 = call double @llvm.fmuladd.f64(double %323, double %348, double %335)
  %350 = fdiv double %337, %349
  %351 = fadd double %318, %350
  %352 = add nuw nsw i32 %319, 1
  br label %317, !llvm.loop !15

353:                                              ; preds = %317
  %354 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %355 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %356 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %357 = load double, ptr @nulltime, align 8
  %358 = fneg double %357
  %359 = call double @llvm.fmuladd.f64(double %355, double %356, double %358)
  store double %359, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %360 = load double, ptr @piref, align 8
  %361 = load double, ptr @three, align 8
  %362 = fdiv double %360, %361
  %363 = fmul double %362, %362
  %364 = load double, ptr @A6, align 8
  %365 = load double, ptr @A5, align 8
  %366 = call double @llvm.fmuladd.f64(double %364, double %363, double %365)
  %367 = load double, ptr @A4, align 8
  %368 = call double @llvm.fmuladd.f64(double %366, double %363, double %367)
  %369 = load double, ptr @A3, align 8
  %370 = call double @llvm.fmuladd.f64(double %368, double %363, double %369)
  %371 = load double, ptr @A2, align 8
  %372 = call double @llvm.fmuladd.f64(double %370, double %363, double %371)
  %373 = load double, ptr @A1, align 8
  %374 = call double @llvm.fmuladd.f64(double %372, double %363, double %373)
  %375 = load double, ptr @one, align 8
  %376 = call double @llvm.fmuladd.f64(double %374, double %363, double %375)
  %377 = fmul double %362, %376
  store double %377, ptr @sa, align 8
  %378 = load double, ptr @B6, align 8
  %379 = load double, ptr @B5, align 8
  %380 = call double @llvm.fmuladd.f64(double %378, double %363, double %379)
  %381 = load double, ptr @B4, align 8
  %382 = call double @llvm.fmuladd.f64(double %363, double %380, double %381)
  %383 = load double, ptr @B3, align 8
  %384 = call double @llvm.fmuladd.f64(double %363, double %382, double %383)
  %385 = load double, ptr @B2, align 8
  %386 = call double @llvm.fmuladd.f64(double %363, double %384, double %385)
  %387 = load double, ptr @B1, align 8
  %388 = call double @llvm.fmuladd.f64(double %363, double %386, double %387)
  %389 = call double @llvm.fmuladd.f64(double %363, double %388, double %375)
  store double %389, ptr @sb, align 8
  %390 = fdiv double %377, %389
  store double %390, ptr @sa, align 8
  %391 = fdiv double %359, 2.900000e+01
  store double %391, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %392 = load double, ptr @two, align 8
  %393 = call double @llvm.fmuladd.f64(double %392, double %318, double %390)
  %394 = fmul double %315, %393
  %395 = fdiv double %394, %392
  store double %395, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %396 = fadd double %395, f0xBFE62E42FEFA39EF
  store double %396, ptr @sc, align 8
  %397 = fdiv double %375, %391
  store double %397, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %398 = fmul double %396, 1.000000e-30
  %399 = fmul double %359, 1.000000e-30
  %400 = fmul double %397, 1.000000e-30
  %401 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %398, double noundef %399, double noundef %400) #4
  %402 = load double, ptr @piref, align 8
  %403 = load double, ptr @four, align 8
  %404 = fmul double %164, %403
  %405 = fdiv double %402, %404
  %406 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %407

407:                                              ; preds = %410, %353
  %408 = phi double [ %440, %410 ], [ 0.000000e+00, %353 ]
  %409 = phi i32 [ %441, %410 ], [ 1, %353 ]
  %.not8.not = icmp slt i32 %409, %143
  br i1 %.not8.not, label %410, label %442

410:                                              ; preds = %407
  %411 = uitofp nneg i32 %409 to double
  %412 = fmul double %405, %411
  %413 = fmul double %412, %412
  %414 = load double, ptr @A6, align 8
  %415 = load double, ptr @A5, align 8
  %416 = call double @llvm.fmuladd.f64(double %414, double %413, double %415)
  %417 = load double, ptr @A4, align 8
  %418 = call double @llvm.fmuladd.f64(double %416, double %413, double %417)
  %419 = load double, ptr @A3, align 8
  %420 = call double @llvm.fmuladd.f64(double %418, double %413, double %419)
  %421 = load double, ptr @A2, align 8
  %422 = call double @llvm.fmuladd.f64(double %420, double %413, double %421)
  %423 = load double, ptr @A1, align 8
  %424 = call double @llvm.fmuladd.f64(double %422, double %413, double %423)
  %425 = load double, ptr @one, align 8
  %426 = call double @llvm.fmuladd.f64(double %424, double %413, double %425)
  %427 = fmul double %412, %426
  %428 = load double, ptr @B6, align 8
  %429 = load double, ptr @B5, align 8
  %430 = call double @llvm.fmuladd.f64(double %428, double %413, double %429)
  %431 = load double, ptr @B4, align 8
  %432 = call double @llvm.fmuladd.f64(double %413, double %430, double %431)
  %433 = load double, ptr @B3, align 8
  %434 = call double @llvm.fmuladd.f64(double %413, double %432, double %433)
  %435 = load double, ptr @B2, align 8
  %436 = call double @llvm.fmuladd.f64(double %413, double %434, double %435)
  %437 = load double, ptr @B1, align 8
  %438 = call double @llvm.fmuladd.f64(double %413, double %436, double %437)
  %439 = call double @llvm.fmuladd.f64(double %413, double %438, double %425)
  %440 = call double @llvm.fmuladd.f64(double %427, double %439, double %408)
  %441 = add nuw nsw i32 %409, 1
  br label %407, !llvm.loop !16

442:                                              ; preds = %407
  %443 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %444 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %445 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %446 = load double, ptr @nulltime, align 8
  %447 = fneg double %446
  %448 = call double @llvm.fmuladd.f64(double %444, double %445, double %447)
  store double %448, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %449 = load double, ptr @piref, align 8
  %450 = load double, ptr @four, align 8
  %451 = fdiv double %449, %450
  %452 = fmul double %451, %451
  %453 = load double, ptr @A6, align 8
  %454 = load double, ptr @A5, align 8
  %455 = call double @llvm.fmuladd.f64(double %453, double %452, double %454)
  %456 = load double, ptr @A4, align 8
  %457 = call double @llvm.fmuladd.f64(double %455, double %452, double %456)
  %458 = load double, ptr @A3, align 8
  %459 = call double @llvm.fmuladd.f64(double %457, double %452, double %458)
  %460 = load double, ptr @A2, align 8
  %461 = call double @llvm.fmuladd.f64(double %459, double %452, double %460)
  %462 = load double, ptr @A1, align 8
  %463 = call double @llvm.fmuladd.f64(double %461, double %452, double %462)
  %464 = load double, ptr @one, align 8
  %465 = call double @llvm.fmuladd.f64(double %463, double %452, double %464)
  %466 = fmul double %451, %465
  store double %466, ptr @sa, align 8
  %467 = load double, ptr @B6, align 8
  %468 = load double, ptr @B5, align 8
  %469 = call double @llvm.fmuladd.f64(double %467, double %452, double %468)
  %470 = load double, ptr @B4, align 8
  %471 = call double @llvm.fmuladd.f64(double %452, double %469, double %470)
  %472 = load double, ptr @B3, align 8
  %473 = call double @llvm.fmuladd.f64(double %452, double %471, double %472)
  %474 = load double, ptr @B2, align 8
  %475 = call double @llvm.fmuladd.f64(double %452, double %473, double %474)
  %476 = load double, ptr @B1, align 8
  %477 = call double @llvm.fmuladd.f64(double %452, double %475, double %476)
  %478 = call double @llvm.fmuladd.f64(double %452, double %477, double %464)
  store double %478, ptr @sb, align 8
  %479 = fmul double %466, %478
  store double %479, ptr @sa, align 8
  %480 = fdiv double %448, 2.900000e+01
  store double %480, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %481 = load double, ptr @two, align 8
  %482 = call double @llvm.fmuladd.f64(double %481, double %408, double %479)
  %483 = fmul double %405, %482
  %484 = fdiv double %483, %481
  store double %484, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %485 = fadd double %484, -2.500000e-01
  store double %485, ptr @sc, align 8
  %486 = fdiv double %464, %480
  store double %486, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %487 = fmul double %485, 1.000000e-30
  %488 = fmul double %448, 1.000000e-30
  %489 = fmul double %486, 1.000000e-30
  %490 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %487, double noundef %488, double noundef %489) #4
  %491 = load double, ptr @one, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %492 = fdiv double f0x40599541F7F192A4, %164
  %493 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %494

494:                                              ; preds = %497, %442
  %495 = phi double [ %509, %497 ], [ 0.000000e+00, %442 ]
  %496 = phi i32 [ %510, %497 ], [ 1, %442 ]
  %.not9.not = icmp slt i32 %496, %143
  br i1 %.not9.not, label %497, label %511

497:                                              ; preds = %494
  %498 = uitofp nneg i32 %496 to double
  %499 = fmul double %492, %498
  %500 = fmul double %499, %499
  %501 = fadd double %491, %499
  %502 = fdiv double %491, %501
  %503 = fsub double %495, %502
  %504 = fadd double %491, %500
  %505 = fdiv double %499, %504
  %506 = fsub double %503, %505
  %507 = call double @llvm.fmuladd.f64(double %499, double %500, double %491)
  %508 = fdiv double %500, %507
  %509 = fsub double %506, %508
  %510 = add nuw nsw i32 %496, 1
  br label %494, !llvm.loop !17

511:                                              ; preds = %494
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
  %521 = fneg double %491
  %522 = fadd double %491, %519
  %523 = fdiv double %491, %522
  %524 = fsub double %521, %523
  %525 = fadd double %491, %520
  %526 = fdiv double %519, %525
  %527 = fsub double %524, %526
  %528 = call double @llvm.fmuladd.f64(double %519, double %520, double %491)
  %529 = fdiv double %520, %528
  %530 = fsub double %527, %529
  store double %530, ptr @sa, align 8
  %531 = fmul nnan double %492, 1.800000e+01
  %532 = load double, ptr @two, align 8
  %533 = call double @llvm.fmuladd.f64(double %532, double %495, double %530)
  %534 = fmul double %531, %533
  store double %534, ptr @sa, align 8
  %535 = fptosi double %534 to i32
  %536 = mul nsw i32 %535, -2000
  %537 = sitofp i32 %536 to double
  %538 = load double, ptr @scale, align 8
  %539 = fdiv double %537, %538
  %540 = fptosi double %539 to i32
  %541 = fadd double %534, 5.002000e+02
  store double %541, ptr @sc, align 8
  %542 = load double, ptr @one, align 8
  %543 = fdiv double %542, %518
  store double %543, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %544 = fmul double %541, 1.000000e-30
  %545 = fmul double %517, 1.000000e-30
  %546 = fmul double %543, 1.000000e-30
  %547 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %544, double noundef %545, double noundef %546) #4
  %548 = load double, ptr @piref, align 8
  %549 = load double, ptr @three, align 8
  %550 = sitofp i32 %540 to double
  %551 = fmul double %549, %550
  %552 = fdiv double %548, %551
  %553 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %554

554:                                              ; preds = %557, %511
  %555 = phi double [ %588, %557 ], [ 0.000000e+00, %511 ]
  %556 = phi i32 [ %589, %557 ], [ 1, %511 ]
  %.not10.not = icmp slt i32 %556, %540
  br i1 %.not10.not, label %557, label %590

557:                                              ; preds = %554
  %558 = uitofp nneg i32 %556 to double
  %559 = fmul double %552, %558
  %560 = fmul double %559, %559
  %561 = load double, ptr @B6, align 8
  %562 = load double, ptr @B5, align 8
  %563 = call double @llvm.fmuladd.f64(double %561, double %560, double %562)
  %564 = load double, ptr @B4, align 8
  %565 = call double @llvm.fmuladd.f64(double %560, double %563, double %564)
  %566 = load double, ptr @B3, align 8
  %567 = call double @llvm.fmuladd.f64(double %560, double %565, double %566)
  %568 = load double, ptr @B2, align 8
  %569 = call double @llvm.fmuladd.f64(double %560, double %567, double %568)
  %570 = load double, ptr @B1, align 8
  %571 = call double @llvm.fmuladd.f64(double %560, double %569, double %570)
  %572 = load double, ptr @one, align 8
  %573 = call double @llvm.fmuladd.f64(double %560, double %571, double %572)
  %574 = fmul double %573, %573
  %575 = fmul double %559, %574
  %576 = load double, ptr @A6, align 8
  %577 = load double, ptr @A5, align 8
  %578 = call double @llvm.fmuladd.f64(double %576, double %560, double %577)
  %579 = load double, ptr @A4, align 8
  %580 = call double @llvm.fmuladd.f64(double %578, double %560, double %579)
  %581 = load double, ptr @A3, align 8
  %582 = call double @llvm.fmuladd.f64(double %580, double %560, double %581)
  %583 = load double, ptr @A2, align 8
  %584 = call double @llvm.fmuladd.f64(double %582, double %560, double %583)
  %585 = load double, ptr @A1, align 8
  %586 = call double @llvm.fmuladd.f64(double %584, double %560, double %585)
  %587 = call double @llvm.fmuladd.f64(double %586, double %560, double %572)
  %588 = call double @llvm.fmuladd.f64(double %575, double %587, double %555)
  %589 = add nuw nsw i32 %556, 1
  br label %554, !llvm.loop !18

590:                                              ; preds = %554
  %591 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %592 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %593 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %594 = load double, ptr @nulltime, align 8
  %595 = fneg double %594
  %596 = call double @llvm.fmuladd.f64(double %592, double %593, double %595)
  store double %596, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %597 = load double, ptr @piref, align 8
  %598 = load double, ptr @three, align 8
  %599 = fdiv double %597, %598
  %600 = fmul double %599, %599
  %601 = load double, ptr @A6, align 8
  %602 = load double, ptr @A5, align 8
  %603 = call double @llvm.fmuladd.f64(double %601, double %600, double %602)
  %604 = load double, ptr @A4, align 8
  %605 = call double @llvm.fmuladd.f64(double %603, double %600, double %604)
  %606 = load double, ptr @A3, align 8
  %607 = call double @llvm.fmuladd.f64(double %605, double %600, double %606)
  %608 = load double, ptr @A2, align 8
  %609 = call double @llvm.fmuladd.f64(double %607, double %600, double %608)
  %610 = load double, ptr @A1, align 8
  %611 = call double @llvm.fmuladd.f64(double %609, double %600, double %610)
  %612 = load double, ptr @one, align 8
  %613 = call double @llvm.fmuladd.f64(double %611, double %600, double %612)
  %614 = fmul double %599, %613
  store double %614, ptr @sa, align 8
  %615 = load double, ptr @B6, align 8
  %616 = load double, ptr @B5, align 8
  %617 = call double @llvm.fmuladd.f64(double %615, double %600, double %616)
  %618 = load double, ptr @B4, align 8
  %619 = call double @llvm.fmuladd.f64(double %600, double %617, double %618)
  %620 = load double, ptr @B3, align 8
  %621 = call double @llvm.fmuladd.f64(double %600, double %619, double %620)
  %622 = load double, ptr @B2, align 8
  %623 = call double @llvm.fmuladd.f64(double %600, double %621, double %622)
  %624 = load double, ptr @B1, align 8
  %625 = call double @llvm.fmuladd.f64(double %600, double %623, double %624)
  %626 = call double @llvm.fmuladd.f64(double %600, double %625, double %612)
  store double %626, ptr @sb, align 8
  %627 = fmul double %614, %626
  %628 = fmul double %626, %627
  store double %628, ptr @sa, align 8
  %629 = fdiv double %596, 3.000000e+01
  store double %629, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %630 = load double, ptr @two, align 8
  %631 = call double @llvm.fmuladd.f64(double %630, double %555, double %628)
  %632 = fmul double %552, %631
  %633 = fdiv double %632, %630
  store double %633, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %634 = fadd double %633, f0xBFD2AAAAAAAAAAAB
  store double %634, ptr @sc, align 8
  %635 = fdiv double %612, %629
  store double %635, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %636 = fmul double %634, 1.000000e-30
  %637 = fmul double %596, 1.000000e-30
  %638 = fmul double %635, 1.000000e-30
  %639 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %636, double noundef %637, double noundef %638) #4
  %640 = load double, ptr @five, align 8
  %641 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %642 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %643 = fsub double %641, %642
  %644 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %645 = call double @llvm.fmuladd.f64(double %640, double %643, double %644)
  %646 = fdiv double %645, 5.200000e+01
  store double %646, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %647 = load double, ptr @one, align 8
  %648 = fdiv double %647, %646
  store double %648, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %649 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %650 = fadd double %644, %649
  %651 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %652 = fadd double %650, %651
  %653 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %654 = fadd double %652, %653
  %655 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %656 = fadd double %654, %655
  store double %656, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %657 = load double, ptr @four, align 8
  %658 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %659 = call double @llvm.fmuladd.f64(double %657, double %658, double %656)
  %660 = fdiv double %659, 1.520000e+02
  store double %660, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %661 = fdiv double %647, %660
  store double %661, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %656, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %662 = fadd double %656, %658
  %663 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %664 = fadd double %662, %663
  %665 = fdiv double %664, 1.460000e+02
  store double %665, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %666 = fdiv double %647, %665
  store double %666, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %667 = fadd double %644, %651
  %668 = fadd double %667, %655
  %669 = fadd double %668, %663
  %670 = fdiv double %669, 9.100000e+01
  store double %670, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %671 = fdiv double %647, %670
  store double %671, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar11 = call i32 @putchar(i32 10)
  %672 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %540) #4
  %673 = load double, ptr @nulltime, align 8
  %674 = fmul double %673, 1.000000e-30
  %675 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %674) #4
  %676 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %677 = fmul double %676, 1.000000e-30
  %678 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %677) #4
  %679 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %680 = fmul double %679, 1.000000e-30
  %681 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %680) #4
  %682 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %683 = fmul double %682, 1.000000e-30
  %684 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %683) #4
  %685 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %686 = fmul double %685, 1.000000e-30
  %687 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %686) #4
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
