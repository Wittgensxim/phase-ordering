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

3:                                                ; preds = %41, %0
  %4 = phi double [ %18, %41 ], [ undef, %0 ]
  %5 = phi double [ %14, %41 ], [ undef, %0 ]
  %6 = phi i32 [ %11, %41 ], [ 15625, %0 ]
  %7 = phi double [ %38, %41 ], [ 0.000000e+00, %0 ]
  %8 = load double, ptr @TLimit, align 8
  %9 = fcmp olt double %7, %8
  br i1 %9, label %10, label %.loopexit

10:                                               ; preds = %3
  %11 = shl i32 %6, 1
  %12 = load double, ptr @one, align 8
  %13 = sitofp i32 %11 to double
  %14 = fdiv double %12, %13
  %15 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %16

16:                                               ; preds = %20, %10
  %17 = phi double [ %21, %20 ], [ 0.000000e+00, %10 ]
  %18 = phi double [ %34, %20 ], [ 0.000000e+00, %10 ]
  %19 = phi i32 [ %35, %20 ], [ 1, %10 ]
  %exitcond = icmp ne i32 %19, %11
  br i1 %exitcond, label %20, label %36

20:                                               ; preds = %16
  %21 = fadd double %17, %12
  %22 = fmul double %21, %14
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
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %42

41:                                               ; preds = %36
  br label %3, !llvm.loop !9

.loopexit:                                        ; preds = %3
  br label %42

42:                                               ; preds = %.loopexit, %40
  %43 = phi double [ %18, %40 ], [ %4, %.loopexit ]
  %44 = phi double [ %14, %40 ], [ %5, %.loopexit ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %45 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %46

46:                                               ; preds = %47, %42
  br i1 false, label %47, label %48

47:                                               ; preds = %46
  br label %46, !llvm.loop !10

48:                                               ; preds = %46
  %49 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %50 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %51 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %52 = fmul double %50, %51
  %53 = fcmp olt double %52, 0.000000e+00
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %48
  %56 = phi double [ 0.000000e+00, %54 ], [ %52, %48 ]
  store double %56, ptr @nulltime, align 8
  %57 = load double, ptr @sa, align 8
  %58 = fneg double %56
  %59 = call double @llvm.fmuladd.f64(double %50, double %57, double %58)
  store double %59, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %60 = load double, ptr @D1, align 8
  %61 = load double, ptr @D2, align 8
  %62 = fadd double %60, %61
  %63 = load double, ptr @D3, align 8
  %64 = fadd double %62, %63
  %65 = load double, ptr @one, align 8
  %66 = fadd double %65, %60
  %67 = load double, ptr @E2, align 8
  %68 = fadd double %66, %67
  %69 = load double, ptr @E3, align 8
  %70 = fadd double %68, %69
  %71 = fdiv double %64, %70
  store double %71, ptr @sa, align 8
  store double %60, ptr @sb, align 8
  %72 = fdiv double %59, 1.400000e+01
  store double %72, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %73 = fadd double %71, %60
  %74 = load double, ptr @two, align 8
  %75 = call double @llvm.fmuladd.f64(double %74, double %43, double %73)
  %76 = fmul double %44, %75
  %77 = fdiv double %76, %74
  store double %77, ptr @sa, align 8
  %78 = fdiv double %65, %77
  store double %78, ptr @sb, align 8
  %79 = fptosi double %78 to i32
  %80 = mul nsw i32 %79, 40000
  %81 = sitofp i32 %80 to double
  %82 = load double, ptr @scale, align 8
  %83 = fdiv double %81, %82
  %84 = fptosi double %83 to i32
  %85 = fadd double %78, -2.520000e+01
  store double %85, ptr @sc, align 8
  %86 = fdiv double %65, %72
  store double %86, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %87 = fmul double %85, 1.000000e-30
  %88 = fmul double %59, 1.000000e-30
  %89 = fmul double %86, 1.000000e-30
  %90 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %87, double noundef %88, double noundef %89) #4
  %91 = load double, ptr @five, align 8
  %92 = fneg double %91
  %93 = load double, ptr @one, align 8
  %94 = fneg double %93
  store double %94, ptr @sa, align 8
  %95 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %smax = call i32 @llvm.smax.i32(i32 %84, i32 0)
  %96 = add nuw i32 %smax, 1
  br label %97

97:                                               ; preds = %100, %55
  %98 = phi double [ %101, %100 ], [ %92, %55 ]
  %99 = phi i32 [ %104, %100 ], [ 1, %55 ]
  %exitcond18 = icmp eq i32 %99, %96
  br i1 %exitcond18, label %105, label %100

100:                                              ; preds = %97
  %101 = fneg double %98
  %102 = load double, ptr @sa, align 8
  %103 = fsub double %102, %98
  store double %103, ptr @sa, align 8
  %104 = add nuw i32 %99, 1
  br label %97, !llvm.loop !11

105:                                              ; preds = %97
  %106 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %107 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %108 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %109 = fmul double %107, %108
  %110 = fcmp olt double %109, 0.000000e+00
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %112

112:                                              ; preds = %111, %105
  %storemerge = phi double [ 0.000000e+00, %111 ], [ %109, %105 ]
  store double %storemerge, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %113 = sitofp i32 %84 to double
  store double %113, ptr @sc, align 8
  %114 = load double, ptr @sa, align 8
  %115 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %116

116:                                              ; preds = %123, %112
  %117 = phi double [ %133, %123 ], [ 0.000000e+00, %112 ]
  %118 = phi double [ %128, %123 ], [ %114, %112 ]
  %119 = phi double [ %124, %123 ], [ %98, %112 ]
  %120 = phi double [ %131, %123 ], [ 0.000000e+00, %112 ]
  %121 = phi double [ %130, %123 ], [ 0.000000e+00, %112 ]
  %122 = phi i32 [ %134, %123 ], [ 1, %112 ]
  %exitcond20 = icmp eq i32 %122, %96
  br i1 %exitcond20, label %135, label %123

123:                                              ; preds = %116
  %124 = fneg double %119
  %125 = load double, ptr @sa, align 8
  %126 = fsub double %125, %119
  store double %126, ptr @sa, align 8
  %127 = load double, ptr @two, align 8
  %128 = fadd double %118, %127
  %129 = fsub double %124, %128
  %130 = fadd double %121, %129
  %131 = call double @llvm.fmuladd.f64(double %119, double %128, double %120)
  %132 = fdiv double %119, %128
  %133 = fsub double %117, %132
  %134 = add nuw i32 %122, 1
  br label %116, !llvm.loop !12

135:                                              ; preds = %116
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
  %144 = fmul double %143, %121
  %145 = load double, ptr @sc, align 8
  %146 = fdiv double %144, %145
  %147 = fptosi double %146 to i32
  %148 = load double, ptr @four, align 8
  %149 = fmul double %148, %117
  %150 = load double, ptr @five, align 8
  %151 = fdiv double %149, %150
  store double %151, ptr @sa, align 8
  %152 = fdiv double %150, %120
  %153 = fadd double %151, %152
  store double %153, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %154 = fmul double %120, %120
  %155 = fmul double %154, %120
  %156 = fdiv double 3.125000e+01, %155
  %157 = fsub double %153, %156
  store double %157, ptr @piprg, align 8
  %158 = load double, ptr @piref, align 8
  %159 = fsub double %157, %158
  store double %159, ptr @pierr, align 8
  %160 = load double, ptr @one, align 8
  %161 = fdiv double %160, %142
  store double %161, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %162 = fmul double %159, 1.000000e-30
  %163 = fmul double %141, 1.000000e-30
  %164 = fmul double %161, 1.000000e-30
  %165 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %162, double noundef %163, double noundef %164) #4
  %166 = load double, ptr @piref, align 8
  %167 = load double, ptr @three, align 8
  %168 = sitofp i32 %147 to double
  %169 = fmul double %167, %168
  %170 = fdiv double %166, %169
  %171 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %smax21 = call i32 @llvm.smax.i32(i32 %147, i32 1)
  br label %172

172:                                              ; preds = %176, %135
  %173 = phi double [ %178, %176 ], [ 0.000000e+00, %135 ]
  %174 = phi double [ %195, %176 ], [ 0.000000e+00, %135 ]
  %175 = phi i32 [ %196, %176 ], [ 1, %135 ]
  %exitcond22 = icmp ne i32 %175, %smax21
  br i1 %exitcond22, label %176, label %197

176:                                              ; preds = %172
  %177 = load double, ptr @one, align 8
  %178 = fadd double %173, %177
  %179 = fmul double %178, %170
  %180 = fmul double %179, %179
  %181 = load double, ptr @A6, align 8
  %182 = load double, ptr @A5, align 8
  %183 = fneg double %182
  %184 = call double @llvm.fmuladd.f64(double %181, double %180, double %183)
  %185 = load double, ptr @A4, align 8
  %186 = call double @llvm.fmuladd.f64(double %184, double %180, double %185)
  %187 = load double, ptr @A3, align 8
  %188 = fneg double %187
  %189 = call double @llvm.fmuladd.f64(double %186, double %180, double %188)
  %190 = load double, ptr @A2, align 8
  %191 = call double @llvm.fmuladd.f64(double %189, double %180, double %190)
  %192 = load double, ptr @A1, align 8
  %193 = call double @llvm.fmuladd.f64(double %191, double %180, double %192)
  %194 = call double @llvm.fmuladd.f64(double %193, double %180, double %177)
  %195 = call double @llvm.fmuladd.f64(double %179, double %194, double %174)
  %196 = add nuw i32 %175, 1
  br label %172, !llvm.loop !13

197:                                              ; preds = %172
  %198 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %199 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %200 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %201 = load double, ptr @nulltime, align 8
  %202 = fneg double %201
  %203 = call double @llvm.fmuladd.f64(double %199, double %200, double %202)
  store double %203, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %204 = load double, ptr @piref, align 8
  %205 = load double, ptr @three, align 8
  %206 = fdiv double %204, %205
  %207 = fmul double %206, %206
  %208 = load double, ptr @A6, align 8
  %209 = load double, ptr @A5, align 8
  %210 = fneg double %209
  %211 = call double @llvm.fmuladd.f64(double %208, double %207, double %210)
  %212 = load double, ptr @A4, align 8
  %213 = call double @llvm.fmuladd.f64(double %211, double %207, double %212)
  %214 = load double, ptr @A3, align 8
  %215 = fneg double %214
  %216 = call double @llvm.fmuladd.f64(double %213, double %207, double %215)
  %217 = load double, ptr @A2, align 8
  %218 = call double @llvm.fmuladd.f64(double %216, double %207, double %217)
  %219 = load double, ptr @A1, align 8
  %220 = call double @llvm.fmuladd.f64(double %218, double %207, double %219)
  %221 = load double, ptr @one, align 8
  %222 = call double @llvm.fmuladd.f64(double %220, double %207, double %221)
  %223 = fmul double %206, %222
  store double %223, ptr @sa, align 8
  %224 = fdiv double %203, 1.700000e+01
  store double %224, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %225 = load double, ptr @two, align 8
  %226 = call double @llvm.fmuladd.f64(double %225, double %174, double %223)
  %227 = fmul double %170, %226
  %228 = fdiv double %227, %225
  store double %228, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %229 = fadd double %228, -5.000000e-01
  store double %229, ptr @sc, align 8
  %230 = fdiv double %221, %224
  store double %230, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %231 = fmul double %229, 1.000000e-30
  %232 = fmul double %203, 1.000000e-30
  %233 = fmul double %230, 1.000000e-30
  %234 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %231, double noundef %232, double noundef %233) #4
  %235 = load double, ptr @A3, align 8
  %236 = fneg double %235
  store double %236, ptr @A3, align 8
  %237 = load double, ptr @A5, align 8
  %238 = fneg double %237
  store double %238, ptr @A5, align 8
  %239 = load double, ptr @piref, align 8
  %240 = load double, ptr @three, align 8
  %241 = fmul double %240, %168
  %242 = fdiv double %239, %241
  %243 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %244

244:                                              ; preds = %247, %197
  %245 = phi double [ %264, %247 ], [ 0.000000e+00, %197 ]
  %246 = phi i32 [ %265, %247 ], [ 1, %197 ]
  %exitcond23 = icmp ne i32 %246, %smax21
  br i1 %exitcond23, label %247, label %266

247:                                              ; preds = %244
  %248 = uitofp nneg i32 %246 to double
  %249 = fmul double %242, %248
  %250 = fmul double %249, %249
  %251 = load double, ptr @B6, align 8
  %252 = load double, ptr @B5, align 8
  %253 = call double @llvm.fmuladd.f64(double %251, double %250, double %252)
  %254 = load double, ptr @B4, align 8
  %255 = call double @llvm.fmuladd.f64(double %250, double %253, double %254)
  %256 = load double, ptr @B3, align 8
  %257 = call double @llvm.fmuladd.f64(double %250, double %255, double %256)
  %258 = load double, ptr @B2, align 8
  %259 = call double @llvm.fmuladd.f64(double %250, double %257, double %258)
  %260 = load double, ptr @B1, align 8
  %261 = call double @llvm.fmuladd.f64(double %250, double %259, double %260)
  %262 = call double @llvm.fmuladd.f64(double %250, double %261, double %245)
  %263 = load double, ptr @one, align 8
  %264 = fadd double %262, %263
  %265 = add nuw i32 %246, 1
  br label %244, !llvm.loop !14

266:                                              ; preds = %244
  %267 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %268 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %269 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %270 = load double, ptr @nulltime, align 8
  %271 = fneg double %270
  %272 = call double @llvm.fmuladd.f64(double %268, double %269, double %271)
  store double %272, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %273 = load double, ptr @piref, align 8
  %274 = load double, ptr @three, align 8
  %275 = fdiv double %273, %274
  %276 = fmul double %275, %275
  %277 = load double, ptr @B6, align 8
  %278 = load double, ptr @B5, align 8
  %279 = call double @llvm.fmuladd.f64(double %277, double %276, double %278)
  %280 = load double, ptr @B4, align 8
  %281 = call double @llvm.fmuladd.f64(double %276, double %279, double %280)
  %282 = load double, ptr @B3, align 8
  %283 = call double @llvm.fmuladd.f64(double %276, double %281, double %282)
  %284 = load double, ptr @B2, align 8
  %285 = call double @llvm.fmuladd.f64(double %276, double %283, double %284)
  %286 = load double, ptr @B1, align 8
  %287 = call double @llvm.fmuladd.f64(double %276, double %285, double %286)
  %288 = load double, ptr @one, align 8
  %289 = call double @llvm.fmuladd.f64(double %276, double %287, double %288)
  store double %289, ptr @sa, align 8
  %290 = fdiv double %272, 1.500000e+01
  store double %290, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %291 = fadd double %289, %288
  %292 = load double, ptr @two, align 8
  %293 = call double @llvm.fmuladd.f64(double %292, double %245, double %291)
  %294 = fmul double %242, %293
  %295 = fdiv double %294, %292
  store double %295, ptr @sa, align 8
  %296 = load double, ptr @A6, align 8
  %297 = load double, ptr @A5, align 8
  %298 = call double @llvm.fmuladd.f64(double %296, double %276, double %297)
  %299 = load double, ptr @A4, align 8
  %300 = call double @llvm.fmuladd.f64(double %298, double %276, double %299)
  %301 = load double, ptr @A3, align 8
  %302 = call double @llvm.fmuladd.f64(double %300, double %276, double %301)
  %303 = load double, ptr @A2, align 8
  %304 = call double @llvm.fmuladd.f64(double %302, double %276, double %303)
  %305 = load double, ptr @A1, align 8
  %306 = call double @llvm.fmuladd.f64(double %304, double %276, double %305)
  %307 = load double, ptr @A0, align 8
  %308 = call double @llvm.fmuladd.f64(double %306, double %276, double %307)
  %309 = fmul double %275, %308
  store double %309, ptr @sb, align 8
  %310 = fsub double %295, %309
  store double %310, ptr @sc, align 8
  %311 = fdiv double %288, %290
  store double %311, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %312 = fmul double %310, 1.000000e-30
  %313 = fmul double %272, 1.000000e-30
  %314 = fmul double %311, 1.000000e-30
  %315 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %312, double noundef %313, double noundef %314) #4
  %316 = load double, ptr @piref, align 8
  %317 = load double, ptr @three, align 8
  %318 = fmul double %317, %168
  %319 = fdiv double %316, %318
  %320 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %321

321:                                              ; preds = %324, %266
  %322 = phi double [ %355, %324 ], [ 0.000000e+00, %266 ]
  %323 = phi i32 [ %356, %324 ], [ 1, %266 ]
  %exitcond24 = icmp ne i32 %323, %smax21
  br i1 %exitcond24, label %324, label %357

324:                                              ; preds = %321
  %325 = uitofp nneg i32 %323 to double
  %326 = fmul double %319, %325
  %327 = fmul double %326, %326
  %328 = load double, ptr @A6, align 8
  %329 = load double, ptr @A5, align 8
  %330 = call double @llvm.fmuladd.f64(double %328, double %327, double %329)
  %331 = load double, ptr @A4, align 8
  %332 = call double @llvm.fmuladd.f64(double %330, double %327, double %331)
  %333 = load double, ptr @A3, align 8
  %334 = call double @llvm.fmuladd.f64(double %332, double %327, double %333)
  %335 = load double, ptr @A2, align 8
  %336 = call double @llvm.fmuladd.f64(double %334, double %327, double %335)
  %337 = load double, ptr @A1, align 8
  %338 = call double @llvm.fmuladd.f64(double %336, double %327, double %337)
  %339 = load double, ptr @one, align 8
  %340 = call double @llvm.fmuladd.f64(double %338, double %327, double %339)
  %341 = fmul double %326, %340
  %342 = load double, ptr @B6, align 8
  %343 = load double, ptr @B5, align 8
  %344 = call double @llvm.fmuladd.f64(double %342, double %327, double %343)
  %345 = load double, ptr @B4, align 8
  %346 = call double @llvm.fmuladd.f64(double %327, double %344, double %345)
  %347 = load double, ptr @B3, align 8
  %348 = call double @llvm.fmuladd.f64(double %327, double %346, double %347)
  %349 = load double, ptr @B2, align 8
  %350 = call double @llvm.fmuladd.f64(double %327, double %348, double %349)
  %351 = load double, ptr @B1, align 8
  %352 = call double @llvm.fmuladd.f64(double %327, double %350, double %351)
  %353 = call double @llvm.fmuladd.f64(double %327, double %352, double %339)
  %354 = fdiv double %341, %353
  %355 = fadd double %322, %354
  %356 = add nuw i32 %323, 1
  br label %321, !llvm.loop !15

357:                                              ; preds = %321
  %358 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %359 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %360 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %361 = load double, ptr @nulltime, align 8
  %362 = fneg double %361
  %363 = call double @llvm.fmuladd.f64(double %359, double %360, double %362)
  store double %363, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %364 = load double, ptr @piref, align 8
  %365 = load double, ptr @three, align 8
  %366 = fdiv double %364, %365
  %367 = fmul double %366, %366
  %368 = load double, ptr @A6, align 8
  %369 = load double, ptr @A5, align 8
  %370 = call double @llvm.fmuladd.f64(double %368, double %367, double %369)
  %371 = load double, ptr @A4, align 8
  %372 = call double @llvm.fmuladd.f64(double %370, double %367, double %371)
  %373 = load double, ptr @A3, align 8
  %374 = call double @llvm.fmuladd.f64(double %372, double %367, double %373)
  %375 = load double, ptr @A2, align 8
  %376 = call double @llvm.fmuladd.f64(double %374, double %367, double %375)
  %377 = load double, ptr @A1, align 8
  %378 = call double @llvm.fmuladd.f64(double %376, double %367, double %377)
  %379 = load double, ptr @one, align 8
  %380 = call double @llvm.fmuladd.f64(double %378, double %367, double %379)
  %381 = fmul double %366, %380
  store double %381, ptr @sa, align 8
  %382 = load double, ptr @B6, align 8
  %383 = load double, ptr @B5, align 8
  %384 = call double @llvm.fmuladd.f64(double %382, double %367, double %383)
  %385 = load double, ptr @B4, align 8
  %386 = call double @llvm.fmuladd.f64(double %367, double %384, double %385)
  %387 = load double, ptr @B3, align 8
  %388 = call double @llvm.fmuladd.f64(double %367, double %386, double %387)
  %389 = load double, ptr @B2, align 8
  %390 = call double @llvm.fmuladd.f64(double %367, double %388, double %389)
  %391 = load double, ptr @B1, align 8
  %392 = call double @llvm.fmuladd.f64(double %367, double %390, double %391)
  %393 = call double @llvm.fmuladd.f64(double %367, double %392, double %379)
  store double %393, ptr @sb, align 8
  %394 = fdiv double %381, %393
  store double %394, ptr @sa, align 8
  %395 = fdiv double %363, 2.900000e+01
  store double %395, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %396 = load double, ptr @two, align 8
  %397 = call double @llvm.fmuladd.f64(double %396, double %322, double %394)
  %398 = fmul double %319, %397
  %399 = fdiv double %398, %396
  store double %399, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %400 = fadd double %399, f0xBFE62E42FEFA39EF
  store double %400, ptr @sc, align 8
  %401 = fdiv double %379, %395
  store double %401, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %402 = fmul double %400, 1.000000e-30
  %403 = fmul double %363, 1.000000e-30
  %404 = fmul double %401, 1.000000e-30
  %405 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %402, double noundef %403, double noundef %404) #4
  %406 = load double, ptr @piref, align 8
  %407 = load double, ptr @four, align 8
  %408 = fmul double %407, %168
  %409 = fdiv double %406, %408
  %410 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %411

411:                                              ; preds = %414, %357
  %412 = phi double [ %444, %414 ], [ 0.000000e+00, %357 ]
  %413 = phi i32 [ %445, %414 ], [ 1, %357 ]
  %exitcond25 = icmp ne i32 %413, %smax21
  br i1 %exitcond25, label %414, label %446

414:                                              ; preds = %411
  %415 = uitofp nneg i32 %413 to double
  %416 = fmul double %409, %415
  %417 = fmul double %416, %416
  %418 = load double, ptr @A6, align 8
  %419 = load double, ptr @A5, align 8
  %420 = call double @llvm.fmuladd.f64(double %418, double %417, double %419)
  %421 = load double, ptr @A4, align 8
  %422 = call double @llvm.fmuladd.f64(double %420, double %417, double %421)
  %423 = load double, ptr @A3, align 8
  %424 = call double @llvm.fmuladd.f64(double %422, double %417, double %423)
  %425 = load double, ptr @A2, align 8
  %426 = call double @llvm.fmuladd.f64(double %424, double %417, double %425)
  %427 = load double, ptr @A1, align 8
  %428 = call double @llvm.fmuladd.f64(double %426, double %417, double %427)
  %429 = load double, ptr @one, align 8
  %430 = call double @llvm.fmuladd.f64(double %428, double %417, double %429)
  %431 = fmul double %416, %430
  %432 = load double, ptr @B6, align 8
  %433 = load double, ptr @B5, align 8
  %434 = call double @llvm.fmuladd.f64(double %432, double %417, double %433)
  %435 = load double, ptr @B4, align 8
  %436 = call double @llvm.fmuladd.f64(double %417, double %434, double %435)
  %437 = load double, ptr @B3, align 8
  %438 = call double @llvm.fmuladd.f64(double %417, double %436, double %437)
  %439 = load double, ptr @B2, align 8
  %440 = call double @llvm.fmuladd.f64(double %417, double %438, double %439)
  %441 = load double, ptr @B1, align 8
  %442 = call double @llvm.fmuladd.f64(double %417, double %440, double %441)
  %443 = call double @llvm.fmuladd.f64(double %417, double %442, double %429)
  %444 = call double @llvm.fmuladd.f64(double %431, double %443, double %412)
  %445 = add nuw i32 %413, 1
  br label %411, !llvm.loop !16

446:                                              ; preds = %411
  %447 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %448 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %449 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %450 = load double, ptr @nulltime, align 8
  %451 = fneg double %450
  %452 = call double @llvm.fmuladd.f64(double %448, double %449, double %451)
  store double %452, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %453 = load double, ptr @piref, align 8
  %454 = load double, ptr @four, align 8
  %455 = fdiv double %453, %454
  %456 = fmul double %455, %455
  %457 = load double, ptr @A6, align 8
  %458 = load double, ptr @A5, align 8
  %459 = call double @llvm.fmuladd.f64(double %457, double %456, double %458)
  %460 = load double, ptr @A4, align 8
  %461 = call double @llvm.fmuladd.f64(double %459, double %456, double %460)
  %462 = load double, ptr @A3, align 8
  %463 = call double @llvm.fmuladd.f64(double %461, double %456, double %462)
  %464 = load double, ptr @A2, align 8
  %465 = call double @llvm.fmuladd.f64(double %463, double %456, double %464)
  %466 = load double, ptr @A1, align 8
  %467 = call double @llvm.fmuladd.f64(double %465, double %456, double %466)
  %468 = load double, ptr @one, align 8
  %469 = call double @llvm.fmuladd.f64(double %467, double %456, double %468)
  %470 = fmul double %455, %469
  store double %470, ptr @sa, align 8
  %471 = load double, ptr @B6, align 8
  %472 = load double, ptr @B5, align 8
  %473 = call double @llvm.fmuladd.f64(double %471, double %456, double %472)
  %474 = load double, ptr @B4, align 8
  %475 = call double @llvm.fmuladd.f64(double %456, double %473, double %474)
  %476 = load double, ptr @B3, align 8
  %477 = call double @llvm.fmuladd.f64(double %456, double %475, double %476)
  %478 = load double, ptr @B2, align 8
  %479 = call double @llvm.fmuladd.f64(double %456, double %477, double %478)
  %480 = load double, ptr @B1, align 8
  %481 = call double @llvm.fmuladd.f64(double %456, double %479, double %480)
  %482 = call double @llvm.fmuladd.f64(double %456, double %481, double %468)
  store double %482, ptr @sb, align 8
  %483 = fmul double %470, %482
  store double %483, ptr @sa, align 8
  %484 = fdiv double %452, 2.900000e+01
  store double %484, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %485 = load double, ptr @two, align 8
  %486 = call double @llvm.fmuladd.f64(double %485, double %412, double %483)
  %487 = fmul double %409, %486
  %488 = fdiv double %487, %485
  store double %488, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %489 = fadd double %488, -2.500000e-01
  store double %489, ptr @sc, align 8
  %490 = fdiv double %468, %484
  store double %490, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %491 = fmul double %489, 1.000000e-30
  %492 = fmul double %452, 1.000000e-30
  %493 = fmul double %490, 1.000000e-30
  %494 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %491, double noundef %492, double noundef %493) #4
  %495 = load double, ptr @one, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %496 = fdiv double f0x40599541F7F192A4, %168
  %497 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %498

498:                                              ; preds = %501, %446
  %499 = phi double [ %513, %501 ], [ 0.000000e+00, %446 ]
  %500 = phi i32 [ %514, %501 ], [ 1, %446 ]
  %exitcond26 = icmp ne i32 %500, %smax21
  br i1 %exitcond26, label %501, label %515

501:                                              ; preds = %498
  %502 = uitofp nneg i32 %500 to double
  %503 = fmul double %496, %502
  %504 = fmul double %503, %503
  %505 = fadd double %503, %495
  %506 = fdiv double %495, %505
  %507 = fsub double %499, %506
  %508 = fadd double %504, %495
  %509 = fdiv double %503, %508
  %510 = fsub double %507, %509
  %511 = call double @llvm.fmuladd.f64(double %503, double %504, double %495)
  %512 = fdiv double %504, %511
  %513 = fsub double %510, %512
  %514 = add nuw i32 %500, 1
  br label %498, !llvm.loop !17

515:                                              ; preds = %498
  %516 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %517 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %518 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %519 = load double, ptr @nulltime, align 8
  %520 = fneg double %519
  %521 = call double @llvm.fmuladd.f64(double %517, double %518, double %520)
  store double %521, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %522 = fdiv double %521, 1.200000e+01
  store double %522, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %523 = load double, ptr @sa, align 8
  %524 = fmul double %523, %523
  %525 = fneg double %495
  %526 = fadd double %523, %495
  %527 = fdiv double %495, %526
  %528 = fsub double %525, %527
  %529 = fadd double %524, %495
  %530 = fdiv double %523, %529
  %531 = fsub double %528, %530
  %532 = call double @llvm.fmuladd.f64(double %523, double %524, double %495)
  %533 = fdiv double %524, %532
  %534 = fsub double %531, %533
  store double %534, ptr @sa, align 8
  %535 = fmul nnan double %496, 1.800000e+01
  %536 = load double, ptr @two, align 8
  %537 = call double @llvm.fmuladd.f64(double %536, double %499, double %534)
  %538 = fmul double %535, %537
  store double %538, ptr @sa, align 8
  %539 = fptosi double %538 to i32
  %540 = mul nsw i32 %539, -2000
  %541 = sitofp i32 %540 to double
  %542 = load double, ptr @scale, align 8
  %543 = fdiv double %541, %542
  %544 = fptosi double %543 to i32
  %545 = fadd double %538, 5.002000e+02
  store double %545, ptr @sc, align 8
  %546 = load double, ptr @one, align 8
  %547 = fdiv double %546, %522
  store double %547, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %548 = fmul double %545, 1.000000e-30
  %549 = fmul double %521, 1.000000e-30
  %550 = fmul double %547, 1.000000e-30
  %551 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %548, double noundef %549, double noundef %550) #4
  %552 = load double, ptr @piref, align 8
  %553 = load double, ptr @three, align 8
  %554 = sitofp i32 %544 to double
  %555 = fmul double %553, %554
  %556 = fdiv double %552, %555
  %557 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %smax27 = call i32 @llvm.smax.i32(i32 %544, i32 1)
  br label %558

558:                                              ; preds = %561, %515
  %559 = phi double [ %592, %561 ], [ 0.000000e+00, %515 ]
  %560 = phi i32 [ %593, %561 ], [ 1, %515 ]
  %exitcond28 = icmp ne i32 %560, %smax27
  br i1 %exitcond28, label %561, label %594

561:                                              ; preds = %558
  %562 = uitofp nneg i32 %560 to double
  %563 = fmul double %556, %562
  %564 = fmul double %563, %563
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
  %635 = call double @llvm.fmuladd.f64(double %634, double %559, double %632)
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
  %676 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %544) #4
  %677 = load double, ptr @nulltime, align 8
  %678 = fmul double %677, 1.000000e-30
  %679 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %678) #4
  %680 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %681 = fmul double %680, 1.000000e-30
  %682 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %681) #4
  %683 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %684 = fmul double %683, 1.000000e-30
  %685 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %684) #4
  %686 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %687 = fmul double %686, 1.000000e-30
  %688 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %687) #4
  %689 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %690 = fmul double %689, 1.000000e-30
  %691 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %690) #4
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
