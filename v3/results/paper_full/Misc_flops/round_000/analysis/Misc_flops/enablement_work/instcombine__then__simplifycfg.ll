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
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %putchar = call i32 @putchar(i32 10)
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  store i32 15625, ptr %6, align 4
  store double 6.400000e+01, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  store double 1.000000e+00, ptr @TLimit, align 8
  store i32 512000000, ptr %7, align 4
  store double f0x400921FB54442D18, ptr @piref, align 8
  store double 1.000000e+00, ptr @one, align 8
  store double 2.000000e+00, ptr @two, align 8
  store double 3.000000e+00, ptr @three, align 8
  store double 4.000000e+00, ptr @four, align 8
  store double 5.000000e+00, ptr @five, align 8
  store double 1.000000e+00, ptr @scale, align 8
  %puts1 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  %11 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %12 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %13 = load i32, ptr %6, align 4
  store i32 %13, ptr %10, align 4
  store double 0.000000e+00, ptr @sa, align 8
  br label %14

14:                                               ; preds = %51, %0
  %15 = load double, ptr @sa, align 8
  %16 = load double, ptr @TLimit, align 8
  %17 = fcmp olt double %15, %16
  br i1 %17, label %18, label %57

18:                                               ; preds = %14
  %19 = load i32, ptr %10, align 4
  %20 = shl nsw i32 %19, 1
  store i32 %20, ptr %10, align 4
  %21 = load double, ptr @one, align 8
  %22 = sitofp i32 %20 to double
  %23 = fdiv double %21, %22
  store double %23, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  store double %21, ptr %4, align 8
  %24 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %25

25:                                               ; preds = %27, %18
  %storemerge = phi i32 [ 1, %18 ], [ %50, %27 ]
  store i32 %storemerge, ptr %8, align 4
  %26 = load i32, ptr %10, align 4
  %.not.not = icmp slt i32 %storemerge, %26
  br i1 %.not.not, label %27, label %51

27:                                               ; preds = %25
  %28 = load double, ptr %3, align 8
  %29 = load double, ptr %4, align 8
  %30 = fadd double %28, %29
  store double %30, ptr %3, align 8
  %31 = load double, ptr %5, align 8
  %32 = fmul double %30, %31
  store double %32, ptr %2, align 8
  %33 = load double, ptr %1, align 8
  %34 = load double, ptr @D1, align 8
  %35 = load double, ptr @D2, align 8
  %36 = load double, ptr @D3, align 8
  %37 = call double @llvm.fmuladd.f64(double %32, double %36, double %35)
  %38 = call double @llvm.fmuladd.f64(double %32, double %37, double %34)
  %39 = load double, ptr %4, align 8
  %40 = load double, ptr %2, align 8
  %41 = load double, ptr @D1, align 8
  %42 = load double, ptr @E2, align 8
  %43 = load double, ptr @E3, align 8
  %44 = call double @llvm.fmuladd.f64(double %40, double %43, double %42)
  %45 = call double @llvm.fmuladd.f64(double %40, double %44, double %41)
  %46 = call double @llvm.fmuladd.f64(double %40, double %45, double %39)
  %47 = fdiv double %38, %46
  %48 = fadd double %33, %47
  store double %48, ptr %1, align 8
  %49 = load i32, ptr %8, align 4
  %50 = add nsw i32 %49, 1
  br label %25, !llvm.loop !7

51:                                               ; preds = %25
  %52 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %53 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %53, ptr @sa, align 8
  %54 = load i32, ptr %10, align 4
  %55 = load i32, ptr %7, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %14, !llvm.loop !9

57:                                               ; preds = %51, %14
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %58 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %59

59:                                               ; preds = %61, %57
  %storemerge3 = phi i32 [ 1, %57 ], [ %63, %61 ]
  store i32 %storemerge3, ptr %8, align 4
  %60 = load i32, ptr %10, align 4
  %.not.not4 = icmp slt i32 %storemerge3, %60
  br i1 %.not.not4, label %61, label %64

61:                                               ; preds = %59
  %62 = load i32, ptr %8, align 4
  %63 = add nsw i32 %62, 1
  br label %59, !llvm.loop !10

64:                                               ; preds = %59
  %65 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %66 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %67 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %68 = fmul double %66, %67
  %69 = fcmp olt double %68, 0.000000e+00
  %storemerge5 = select i1 %69, double 0.000000e+00, double %68
  store double %storemerge5, ptr @nulltime, align 8
  %70 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %71 = load double, ptr @sa, align 8
  %72 = fneg double %storemerge5
  %73 = call double @llvm.fmuladd.f64(double %70, double %71, double %72)
  store double %73, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %74 = load double, ptr @D1, align 8
  %75 = load double, ptr @D2, align 8
  %76 = fadd double %74, %75
  %77 = load double, ptr @D3, align 8
  %78 = fadd double %76, %77
  %79 = load double, ptr @one, align 8
  %80 = fadd double %79, %74
  %81 = load double, ptr @E2, align 8
  %82 = fadd double %80, %81
  %83 = load double, ptr @E3, align 8
  %84 = fadd double %82, %83
  %85 = fdiv double %78, %84
  store double %85, ptr @sa, align 8
  %86 = load double, ptr @D1, align 8
  store double %86, ptr @sb, align 8
  %87 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %88 = fdiv double %87, 1.400000e+01
  store double %88, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %89 = load double, ptr %5, align 8
  %90 = load double, ptr @sa, align 8
  %91 = fadd double %90, %86
  %92 = load double, ptr @two, align 8
  %93 = load double, ptr %1, align 8
  %94 = call double @llvm.fmuladd.f64(double %92, double %93, double %91)
  %95 = fmul double %89, %94
  %96 = fdiv double %95, %92
  store double %96, ptr @sa, align 8
  %97 = load double, ptr @one, align 8
  %98 = fdiv double %97, %96
  store double %98, ptr @sb, align 8
  %99 = fptosi double %98 to i32
  %100 = mul nsw i32 %99, 40000
  %101 = sitofp i32 %100 to double
  %102 = load double, ptr @scale, align 8
  %103 = fdiv double %101, %102
  %104 = fptosi double %103 to i32
  store i32 %104, ptr %10, align 4
  %105 = load double, ptr @sb, align 8
  %106 = fadd double %105, -2.520000e+01
  store double %106, ptr @sc, align 8
  %107 = load double, ptr @one, align 8
  %108 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %109 = fdiv double %107, %108
  store double %109, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %110 = fmul double %106, 1.000000e-30
  %111 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %112 = fmul double %111, 1.000000e-30
  %113 = fmul double %109, 1.000000e-30
  %114 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %110, double noundef %112, double noundef %113) #4
  %115 = load i32, ptr %10, align 4
  store i32 %115, ptr %9, align 4
  %116 = load double, ptr @five, align 8
  %117 = fneg double %116
  store double %117, ptr %1, align 8
  %118 = load double, ptr @one, align 8
  %119 = fneg double %118
  store double %119, ptr @sa, align 8
  %120 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %121

121:                                              ; preds = %123, %64
  %storemerge6 = phi i32 [ 1, %64 ], [ %129, %123 ]
  store i32 %storemerge6, ptr %8, align 4
  %122 = load i32, ptr %9, align 4
  %.not = icmp sgt i32 %storemerge6, %122
  br i1 %.not, label %130, label %123

123:                                              ; preds = %121
  %124 = load double, ptr %1, align 8
  %125 = fneg double %124
  store double %125, ptr %1, align 8
  %126 = load double, ptr @sa, align 8
  %127 = fsub double %126, %124
  store double %127, ptr @sa, align 8
  %128 = load i32, ptr %8, align 4
  %129 = add nsw i32 %128, 1
  br label %121, !llvm.loop !11

130:                                              ; preds = %121
  %131 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %132 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %133 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %134 = fmul double %132, %133
  %135 = fcmp olt double %134, 0.000000e+00
  %storemerge7 = select i1 %135, double 0.000000e+00, double %134
  store double %storemerge7, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %136 = load i32, ptr %9, align 4
  %137 = sitofp i32 %136 to double
  store double %137, ptr @sc, align 8
  %138 = load double, ptr @sa, align 8
  store double %138, ptr %2, align 8
  store double 0.000000e+00, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  %139 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %140

140:                                              ; preds = %142, %130
  %storemerge8 = phi i32 [ 1, %130 ], [ %163, %142 ]
  store i32 %storemerge8, ptr %8, align 4
  %141 = load i32, ptr %9, align 4
  %.not9 = icmp sgt i32 %storemerge8, %141
  br i1 %.not9, label %164, label %142

142:                                              ; preds = %140
  %143 = load double, ptr %1, align 8
  %144 = fneg double %143
  store double %144, ptr %1, align 8
  %145 = load double, ptr @sa, align 8
  %146 = fsub double %145, %143
  store double %146, ptr @sa, align 8
  %147 = load double, ptr %2, align 8
  %148 = load double, ptr @two, align 8
  %149 = fadd double %147, %148
  store double %149, ptr %2, align 8
  %150 = load double, ptr %5, align 8
  %151 = load double, ptr %1, align 8
  %152 = fsub double %151, %149
  %153 = fadd double %150, %152
  store double %153, ptr %5, align 8
  %154 = load double, ptr %3, align 8
  %155 = load double, ptr %2, align 8
  %156 = fneg double %151
  %157 = call double @llvm.fmuladd.f64(double %156, double %155, double %154)
  store double %157, ptr %3, align 8
  %158 = load double, ptr %4, align 8
  %159 = load double, ptr %1, align 8
  %160 = fdiv double %159, %155
  %161 = fadd double %158, %160
  store double %161, ptr %4, align 8
  %162 = load i32, ptr %8, align 4
  %163 = add nsw i32 %162, 1
  br label %140, !llvm.loop !12

164:                                              ; preds = %140
  %165 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %166 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %167 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %168 = fmul double %166, %167
  store double %168, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %169 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %170 = fsub double %168, %169
  %171 = fdiv double %170, 7.000000e+00
  store double %171, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %172 = load double, ptr @sa, align 8
  %173 = load double, ptr %5, align 8
  %174 = fmul double %172, %173
  %175 = load double, ptr @sc, align 8
  %176 = fdiv double %174, %175
  %177 = fptosi double %176 to i32
  store i32 %177, ptr %9, align 4
  %178 = load double, ptr @four, align 8
  %179 = load double, ptr %4, align 8
  %180 = fmul double %178, %179
  %181 = load double, ptr @five, align 8
  %182 = fdiv double %180, %181
  store double %182, ptr @sa, align 8
  %183 = load double, ptr %3, align 8
  %184 = fdiv double %181, %183
  %185 = fadd double %182, %184
  store double %185, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %186 = fmul double %183, %183
  %187 = fmul double %186, %183
  %188 = fdiv double 3.125000e+01, %187
  %189 = fsub double %185, %188
  store double %189, ptr @piprg, align 8
  %190 = load double, ptr @piref, align 8
  %191 = fsub double %189, %190
  store double %191, ptr @pierr, align 8
  %192 = load double, ptr @one, align 8
  %193 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %194 = fdiv double %192, %193
  store double %194, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %195 = fmul double %191, 1.000000e-30
  %196 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %197 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %198 = fsub double %196, %197
  %199 = fmul double %198, 1.000000e-30
  %200 = fmul double %194, 1.000000e-30
  %201 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %195, double noundef %199, double noundef %200) #4
  %202 = load double, ptr @piref, align 8
  %203 = load double, ptr @three, align 8
  %204 = load i32, ptr %9, align 4
  %205 = sitofp i32 %204 to double
  %206 = fmul double %203, %205
  %207 = fdiv double %202, %206
  store double %207, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %208 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %209

209:                                              ; preds = %211, %164
  %storemerge10 = phi i32 [ 1, %164 ], [ %238, %211 ]
  store i32 %storemerge10, ptr %8, align 4
  %210 = load i32, ptr %9, align 4
  %.not11.not = icmp slt i32 %storemerge10, %210
  br i1 %.not11.not, label %211, label %239

211:                                              ; preds = %209
  %212 = load double, ptr %3, align 8
  %213 = load double, ptr @one, align 8
  %214 = fadd double %212, %213
  store double %214, ptr %3, align 8
  %215 = load double, ptr %5, align 8
  %216 = fmul double %214, %215
  store double %216, ptr %2, align 8
  %217 = fmul double %216, %216
  store double %217, ptr %4, align 8
  %218 = load double, ptr %1, align 8
  %219 = load double, ptr @A6, align 8
  %220 = load double, ptr @A5, align 8
  %221 = fneg double %220
  %222 = call double @llvm.fmuladd.f64(double %219, double %217, double %221)
  %223 = load double, ptr @A4, align 8
  %224 = call double @llvm.fmuladd.f64(double %222, double %217, double %223)
  %225 = load double, ptr %4, align 8
  %226 = load double, ptr @A3, align 8
  %227 = fneg double %226
  %228 = call double @llvm.fmuladd.f64(double %224, double %225, double %227)
  %229 = load double, ptr @A2, align 8
  %230 = call double @llvm.fmuladd.f64(double %228, double %225, double %229)
  %231 = load double, ptr @A1, align 8
  %232 = call double @llvm.fmuladd.f64(double %230, double %225, double %231)
  %233 = load double, ptr %4, align 8
  %234 = load double, ptr @one, align 8
  %235 = call double @llvm.fmuladd.f64(double %232, double %233, double %234)
  %236 = call double @llvm.fmuladd.f64(double %216, double %235, double %218)
  store double %236, ptr %1, align 8
  %237 = load i32, ptr %8, align 4
  %238 = add nsw i32 %237, 1
  br label %209, !llvm.loop !13

239:                                              ; preds = %209
  %240 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %241 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %242 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %243 = load double, ptr @nulltime, align 8
  %244 = fneg double %243
  %245 = call double @llvm.fmuladd.f64(double %241, double %242, double %244)
  store double %245, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %246 = load double, ptr @piref, align 8
  %247 = load double, ptr @three, align 8
  %248 = fdiv double %246, %247
  store double %248, ptr %2, align 8
  %249 = fmul double %248, %248
  store double %249, ptr %4, align 8
  %250 = load double, ptr @A6, align 8
  %251 = load double, ptr @A5, align 8
  %252 = fneg double %251
  %253 = call double @llvm.fmuladd.f64(double %250, double %249, double %252)
  %254 = load double, ptr @A4, align 8
  %255 = call double @llvm.fmuladd.f64(double %253, double %249, double %254)
  %256 = load double, ptr %4, align 8
  %257 = load double, ptr @A3, align 8
  %258 = fneg double %257
  %259 = call double @llvm.fmuladd.f64(double %255, double %256, double %258)
  %260 = load double, ptr @A2, align 8
  %261 = call double @llvm.fmuladd.f64(double %259, double %256, double %260)
  %262 = load double, ptr @A1, align 8
  %263 = call double @llvm.fmuladd.f64(double %261, double %256, double %262)
  %264 = load double, ptr %4, align 8
  %265 = load double, ptr @one, align 8
  %266 = call double @llvm.fmuladd.f64(double %263, double %264, double %265)
  %267 = fmul double %248, %266
  store double %267, ptr @sa, align 8
  %268 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %269 = fdiv double %268, 1.700000e+01
  store double %269, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %270 = load double, ptr %5, align 8
  %271 = load double, ptr @two, align 8
  %272 = load double, ptr %1, align 8
  %273 = call double @llvm.fmuladd.f64(double %271, double %272, double %267)
  %274 = fmul double %270, %273
  %275 = fdiv double %274, %271
  store double %275, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %276 = fadd double %275, -5.000000e-01
  store double %276, ptr @sc, align 8
  %277 = load double, ptr @one, align 8
  %278 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %279 = fdiv double %277, %278
  store double %279, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %280 = fmul double %276, 1.000000e-30
  %281 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %282 = fmul double %281, 1.000000e-30
  %283 = fmul double %279, 1.000000e-30
  %284 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %280, double noundef %282, double noundef %283) #4
  %285 = load double, ptr @A3, align 8
  %286 = fneg double %285
  store double %286, ptr @A3, align 8
  %287 = load double, ptr @A5, align 8
  %288 = fneg double %287
  store double %288, ptr @A5, align 8
  %289 = load double, ptr @piref, align 8
  %290 = load double, ptr @three, align 8
  %291 = load i32, ptr %9, align 4
  %292 = sitofp i32 %291 to double
  %293 = fmul double %290, %292
  %294 = fdiv double %289, %293
  store double %294, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %295 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %296

296:                                              ; preds = %298, %239
  %storemerge12 = phi i32 [ 1, %239 ], [ %320, %298 ]
  store i32 %storemerge12, ptr %8, align 4
  %297 = load i32, ptr %9, align 4
  %.not13.not = icmp slt i32 %storemerge12, %297
  br i1 %.not13.not, label %298, label %321

298:                                              ; preds = %296
  %299 = load i32, ptr %8, align 4
  %300 = sitofp i32 %299 to double
  %301 = load double, ptr %5, align 8
  %302 = fmul double %301, %300
  store double %302, ptr %2, align 8
  %303 = fmul double %302, %302
  store double %303, ptr %4, align 8
  %304 = load double, ptr %1, align 8
  %305 = load double, ptr @B6, align 8
  %306 = load double, ptr @B5, align 8
  %307 = call double @llvm.fmuladd.f64(double %305, double %303, double %306)
  %308 = load double, ptr @B4, align 8
  %309 = call double @llvm.fmuladd.f64(double %303, double %307, double %308)
  %310 = load double, ptr @B3, align 8
  %311 = call double @llvm.fmuladd.f64(double %303, double %309, double %310)
  %312 = load double, ptr @B2, align 8
  %313 = call double @llvm.fmuladd.f64(double %303, double %311, double %312)
  %314 = load double, ptr @B1, align 8
  %315 = call double @llvm.fmuladd.f64(double %303, double %313, double %314)
  %316 = call double @llvm.fmuladd.f64(double %303, double %315, double %304)
  %317 = load double, ptr @one, align 8
  %318 = fadd double %316, %317
  store double %318, ptr %1, align 8
  %319 = load i32, ptr %8, align 4
  %320 = add nsw i32 %319, 1
  br label %296, !llvm.loop !14

321:                                              ; preds = %296
  %322 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %323 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %324 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %325 = load double, ptr @nulltime, align 8
  %326 = fneg double %325
  %327 = call double @llvm.fmuladd.f64(double %323, double %324, double %326)
  store double %327, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %328 = load double, ptr @piref, align 8
  %329 = load double, ptr @three, align 8
  %330 = fdiv double %328, %329
  store double %330, ptr %2, align 8
  %331 = fmul double %330, %330
  store double %331, ptr %4, align 8
  %332 = load double, ptr @B6, align 8
  %333 = load double, ptr @B5, align 8
  %334 = call double @llvm.fmuladd.f64(double %332, double %331, double %333)
  %335 = load double, ptr @B4, align 8
  %336 = call double @llvm.fmuladd.f64(double %331, double %334, double %335)
  %337 = load double, ptr @B3, align 8
  %338 = call double @llvm.fmuladd.f64(double %331, double %336, double %337)
  %339 = load double, ptr @B2, align 8
  %340 = call double @llvm.fmuladd.f64(double %331, double %338, double %339)
  %341 = load double, ptr @B1, align 8
  %342 = call double @llvm.fmuladd.f64(double %331, double %340, double %341)
  %343 = load double, ptr @one, align 8
  %344 = call double @llvm.fmuladd.f64(double %331, double %342, double %343)
  store double %344, ptr @sa, align 8
  %345 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %346 = fdiv double %345, 1.500000e+01
  store double %346, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %347 = load double, ptr %5, align 8
  %348 = load double, ptr @one, align 8
  %349 = fadd double %344, %348
  %350 = load double, ptr @two, align 8
  %351 = load double, ptr %1, align 8
  %352 = call double @llvm.fmuladd.f64(double %350, double %351, double %349)
  %353 = fmul double %347, %352
  %354 = fdiv double %353, %350
  store double %354, ptr @sa, align 8
  %355 = load double, ptr @piref, align 8
  %356 = load double, ptr @three, align 8
  %357 = fdiv double %355, %356
  store double %357, ptr %2, align 8
  %358 = fmul double %357, %357
  store double %358, ptr %4, align 8
  %359 = load double, ptr @A6, align 8
  %360 = load double, ptr @A5, align 8
  %361 = call double @llvm.fmuladd.f64(double %359, double %358, double %360)
  %362 = load double, ptr @A4, align 8
  %363 = call double @llvm.fmuladd.f64(double %361, double %358, double %362)
  %364 = load double, ptr @A3, align 8
  %365 = call double @llvm.fmuladd.f64(double %363, double %358, double %364)
  %366 = load double, ptr %4, align 8
  %367 = load double, ptr @A2, align 8
  %368 = call double @llvm.fmuladd.f64(double %365, double %366, double %367)
  %369 = load double, ptr @A1, align 8
  %370 = call double @llvm.fmuladd.f64(double %368, double %366, double %369)
  %371 = load double, ptr @A0, align 8
  %372 = call double @llvm.fmuladd.f64(double %370, double %366, double %371)
  %373 = fmul double %357, %372
  store double %373, ptr @sb, align 8
  %374 = load double, ptr @sa, align 8
  %375 = fsub double %374, %373
  store double %375, ptr @sc, align 8
  %376 = load double, ptr @one, align 8
  %377 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %378 = fdiv double %376, %377
  store double %378, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %379 = fmul double %375, 1.000000e-30
  %380 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %381 = fmul double %380, 1.000000e-30
  %382 = fmul double %378, 1.000000e-30
  %383 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %379, double noundef %381, double noundef %382) #4
  %384 = load double, ptr @piref, align 8
  %385 = load double, ptr @three, align 8
  %386 = load i32, ptr %9, align 4
  %387 = sitofp i32 %386 to double
  %388 = fmul double %385, %387
  %389 = fdiv double %384, %388
  store double %389, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %390 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %391

391:                                              ; preds = %393, %321
  %storemerge14 = phi i32 [ 1, %321 ], [ %432, %393 ]
  store i32 %storemerge14, ptr %8, align 4
  %392 = load i32, ptr %9, align 4
  %.not15.not = icmp slt i32 %storemerge14, %392
  br i1 %.not15.not, label %393, label %433

393:                                              ; preds = %391
  %394 = load i32, ptr %8, align 4
  %395 = sitofp i32 %394 to double
  %396 = load double, ptr %5, align 8
  %397 = fmul double %396, %395
  store double %397, ptr %2, align 8
  %398 = fmul double %397, %397
  store double %398, ptr %4, align 8
  %399 = load double, ptr @A6, align 8
  %400 = load double, ptr @A5, align 8
  %401 = call double @llvm.fmuladd.f64(double %399, double %398, double %400)
  %402 = load double, ptr @A4, align 8
  %403 = call double @llvm.fmuladd.f64(double %401, double %398, double %402)
  %404 = load double, ptr @A3, align 8
  %405 = call double @llvm.fmuladd.f64(double %403, double %398, double %404)
  %406 = load double, ptr %4, align 8
  %407 = load double, ptr @A2, align 8
  %408 = call double @llvm.fmuladd.f64(double %405, double %406, double %407)
  %409 = load double, ptr @A1, align 8
  %410 = call double @llvm.fmuladd.f64(double %408, double %406, double %409)
  %411 = load double, ptr @one, align 8
  %412 = call double @llvm.fmuladd.f64(double %410, double %406, double %411)
  %413 = fmul double %397, %412
  store double %413, ptr %3, align 8
  %414 = load double, ptr %1, align 8
  %415 = load double, ptr %4, align 8
  %416 = load double, ptr @B6, align 8
  %417 = load double, ptr @B5, align 8
  %418 = call double @llvm.fmuladd.f64(double %416, double %415, double %417)
  %419 = load double, ptr @B4, align 8
  %420 = call double @llvm.fmuladd.f64(double %415, double %418, double %419)
  %421 = load double, ptr @B3, align 8
  %422 = call double @llvm.fmuladd.f64(double %415, double %420, double %421)
  %423 = load double, ptr @B2, align 8
  %424 = call double @llvm.fmuladd.f64(double %415, double %422, double %423)
  %425 = load double, ptr @B1, align 8
  %426 = call double @llvm.fmuladd.f64(double %415, double %424, double %425)
  %427 = load double, ptr @one, align 8
  %428 = call double @llvm.fmuladd.f64(double %415, double %426, double %427)
  %429 = fdiv double %413, %428
  %430 = fadd double %414, %429
  store double %430, ptr %1, align 8
  %431 = load i32, ptr %8, align 4
  %432 = add nsw i32 %431, 1
  br label %391, !llvm.loop !15

433:                                              ; preds = %391
  %434 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %435 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %436 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %437 = load double, ptr @nulltime, align 8
  %438 = fneg double %437
  %439 = call double @llvm.fmuladd.f64(double %435, double %436, double %438)
  store double %439, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %440 = load double, ptr @piref, align 8
  %441 = load double, ptr @three, align 8
  %442 = fdiv double %440, %441
  store double %442, ptr %2, align 8
  %443 = fmul double %442, %442
  store double %443, ptr %4, align 8
  %444 = load double, ptr @A6, align 8
  %445 = load double, ptr @A5, align 8
  %446 = call double @llvm.fmuladd.f64(double %444, double %443, double %445)
  %447 = load double, ptr @A4, align 8
  %448 = call double @llvm.fmuladd.f64(double %446, double %443, double %447)
  %449 = load double, ptr @A3, align 8
  %450 = call double @llvm.fmuladd.f64(double %448, double %443, double %449)
  %451 = load double, ptr %4, align 8
  %452 = load double, ptr @A2, align 8
  %453 = call double @llvm.fmuladd.f64(double %450, double %451, double %452)
  %454 = load double, ptr @A1, align 8
  %455 = call double @llvm.fmuladd.f64(double %453, double %451, double %454)
  %456 = load double, ptr @one, align 8
  %457 = call double @llvm.fmuladd.f64(double %455, double %451, double %456)
  %458 = fmul double %442, %457
  store double %458, ptr @sa, align 8
  %459 = load double, ptr %4, align 8
  %460 = load double, ptr @B6, align 8
  %461 = load double, ptr @B5, align 8
  %462 = call double @llvm.fmuladd.f64(double %460, double %459, double %461)
  %463 = load double, ptr @B4, align 8
  %464 = call double @llvm.fmuladd.f64(double %459, double %462, double %463)
  %465 = load double, ptr @B3, align 8
  %466 = call double @llvm.fmuladd.f64(double %459, double %464, double %465)
  %467 = load double, ptr @B2, align 8
  %468 = call double @llvm.fmuladd.f64(double %459, double %466, double %467)
  %469 = load double, ptr @B1, align 8
  %470 = call double @llvm.fmuladd.f64(double %459, double %468, double %469)
  %471 = load double, ptr @one, align 8
  %472 = call double @llvm.fmuladd.f64(double %459, double %470, double %471)
  store double %472, ptr @sb, align 8
  %473 = load double, ptr @sa, align 8
  %474 = fdiv double %473, %472
  store double %474, ptr @sa, align 8
  %475 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %476 = fdiv double %475, 2.900000e+01
  store double %476, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %477 = load double, ptr %5, align 8
  %478 = load double, ptr @two, align 8
  %479 = load double, ptr %1, align 8
  %480 = call double @llvm.fmuladd.f64(double %478, double %479, double %474)
  %481 = fmul double %477, %480
  %482 = fdiv double %481, %478
  store double %482, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %483 = fadd double %482, f0xBFE62E42FEFA39EF
  store double %483, ptr @sc, align 8
  %484 = load double, ptr @one, align 8
  %485 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %486 = fdiv double %484, %485
  store double %486, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %487 = fmul double %483, 1.000000e-30
  %488 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %489 = fmul double %488, 1.000000e-30
  %490 = fmul double %486, 1.000000e-30
  %491 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %487, double noundef %489, double noundef %490) #4
  %492 = load double, ptr @piref, align 8
  %493 = load double, ptr @four, align 8
  %494 = load i32, ptr %9, align 4
  %495 = sitofp i32 %494 to double
  %496 = fmul double %493, %495
  %497 = fdiv double %492, %496
  store double %497, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %498 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %499

499:                                              ; preds = %501, %433
  %storemerge16 = phi i32 [ 1, %433 ], [ %539, %501 ]
  store i32 %storemerge16, ptr %8, align 4
  %500 = load i32, ptr %9, align 4
  %.not17.not = icmp slt i32 %storemerge16, %500
  br i1 %.not17.not, label %501, label %540

501:                                              ; preds = %499
  %502 = load i32, ptr %8, align 4
  %503 = sitofp i32 %502 to double
  %504 = load double, ptr %5, align 8
  %505 = fmul double %504, %503
  store double %505, ptr %2, align 8
  %506 = fmul double %505, %505
  store double %506, ptr %4, align 8
  %507 = load double, ptr @A6, align 8
  %508 = load double, ptr @A5, align 8
  %509 = call double @llvm.fmuladd.f64(double %507, double %506, double %508)
  %510 = load double, ptr @A4, align 8
  %511 = call double @llvm.fmuladd.f64(double %509, double %506, double %510)
  %512 = load double, ptr @A3, align 8
  %513 = call double @llvm.fmuladd.f64(double %511, double %506, double %512)
  %514 = load double, ptr %4, align 8
  %515 = load double, ptr @A2, align 8
  %516 = call double @llvm.fmuladd.f64(double %513, double %514, double %515)
  %517 = load double, ptr @A1, align 8
  %518 = call double @llvm.fmuladd.f64(double %516, double %514, double %517)
  %519 = load double, ptr @one, align 8
  %520 = call double @llvm.fmuladd.f64(double %518, double %514, double %519)
  %521 = fmul double %505, %520
  store double %521, ptr %3, align 8
  %522 = load double, ptr %1, align 8
  %523 = load double, ptr %4, align 8
  %524 = load double, ptr @B6, align 8
  %525 = load double, ptr @B5, align 8
  %526 = call double @llvm.fmuladd.f64(double %524, double %523, double %525)
  %527 = load double, ptr @B4, align 8
  %528 = call double @llvm.fmuladd.f64(double %523, double %526, double %527)
  %529 = load double, ptr @B3, align 8
  %530 = call double @llvm.fmuladd.f64(double %523, double %528, double %529)
  %531 = load double, ptr @B2, align 8
  %532 = call double @llvm.fmuladd.f64(double %523, double %530, double %531)
  %533 = load double, ptr @B1, align 8
  %534 = call double @llvm.fmuladd.f64(double %523, double %532, double %533)
  %535 = load double, ptr @one, align 8
  %536 = call double @llvm.fmuladd.f64(double %523, double %534, double %535)
  %537 = call double @llvm.fmuladd.f64(double %521, double %536, double %522)
  store double %537, ptr %1, align 8
  %538 = load i32, ptr %8, align 4
  %539 = add nsw i32 %538, 1
  br label %499, !llvm.loop !16

540:                                              ; preds = %499
  %541 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %542 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %543 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %544 = load double, ptr @nulltime, align 8
  %545 = fneg double %544
  %546 = call double @llvm.fmuladd.f64(double %542, double %543, double %545)
  store double %546, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %547 = load double, ptr @piref, align 8
  %548 = load double, ptr @four, align 8
  %549 = fdiv double %547, %548
  store double %549, ptr %2, align 8
  %550 = fmul double %549, %549
  store double %550, ptr %4, align 8
  %551 = load double, ptr @A6, align 8
  %552 = load double, ptr @A5, align 8
  %553 = call double @llvm.fmuladd.f64(double %551, double %550, double %552)
  %554 = load double, ptr @A4, align 8
  %555 = call double @llvm.fmuladd.f64(double %553, double %550, double %554)
  %556 = load double, ptr @A3, align 8
  %557 = call double @llvm.fmuladd.f64(double %555, double %550, double %556)
  %558 = load double, ptr %4, align 8
  %559 = load double, ptr @A2, align 8
  %560 = call double @llvm.fmuladd.f64(double %557, double %558, double %559)
  %561 = load double, ptr @A1, align 8
  %562 = call double @llvm.fmuladd.f64(double %560, double %558, double %561)
  %563 = load double, ptr @one, align 8
  %564 = call double @llvm.fmuladd.f64(double %562, double %558, double %563)
  %565 = fmul double %549, %564
  store double %565, ptr @sa, align 8
  %566 = load double, ptr %4, align 8
  %567 = load double, ptr @B6, align 8
  %568 = load double, ptr @B5, align 8
  %569 = call double @llvm.fmuladd.f64(double %567, double %566, double %568)
  %570 = load double, ptr @B4, align 8
  %571 = call double @llvm.fmuladd.f64(double %566, double %569, double %570)
  %572 = load double, ptr @B3, align 8
  %573 = call double @llvm.fmuladd.f64(double %566, double %571, double %572)
  %574 = load double, ptr @B2, align 8
  %575 = call double @llvm.fmuladd.f64(double %566, double %573, double %574)
  %576 = load double, ptr @B1, align 8
  %577 = call double @llvm.fmuladd.f64(double %566, double %575, double %576)
  %578 = load double, ptr @one, align 8
  %579 = call double @llvm.fmuladd.f64(double %566, double %577, double %578)
  store double %579, ptr @sb, align 8
  %580 = load double, ptr @sa, align 8
  %581 = fmul double %580, %579
  store double %581, ptr @sa, align 8
  %582 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %583 = fdiv double %582, 2.900000e+01
  store double %583, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %584 = load double, ptr %5, align 8
  %585 = load double, ptr @two, align 8
  %586 = load double, ptr %1, align 8
  %587 = call double @llvm.fmuladd.f64(double %585, double %586, double %581)
  %588 = fmul double %584, %587
  %589 = fdiv double %588, %585
  store double %589, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %590 = fadd double %589, -2.500000e-01
  store double %590, ptr @sc, align 8
  %591 = load double, ptr @one, align 8
  %592 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %593 = fdiv double %591, %592
  store double %593, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %594 = fmul double %590, 1.000000e-30
  %595 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %596 = fmul double %595, 1.000000e-30
  %597 = fmul double %593, 1.000000e-30
  %598 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %594, double noundef %596, double noundef %597) #4
  store double 0.000000e+00, ptr %1, align 8
  %599 = load double, ptr @one, align 8
  store double %599, ptr %4, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %600 = load i32, ptr %9, align 4
  %601 = sitofp i32 %600 to double
  %602 = fdiv double f0x40599541F7F192A4, %601
  store double %602, ptr %3, align 8
  %603 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %604

604:                                              ; preds = %606, %540
  %storemerge18 = phi i32 [ 1, %540 ], [ %627, %606 ]
  store i32 %storemerge18, ptr %8, align 4
  %605 = load i32, ptr %9, align 4
  %.not19.not = icmp slt i32 %storemerge18, %605
  br i1 %.not19.not, label %606, label %628

606:                                              ; preds = %604
  %607 = load i32, ptr %8, align 4
  %608 = sitofp i32 %607 to double
  %609 = load double, ptr %3, align 8
  %610 = fmul double %609, %608
  store double %610, ptr %5, align 8
  %611 = fmul double %610, %610
  store double %611, ptr %2, align 8
  %612 = load double, ptr %1, align 8
  %613 = load double, ptr %4, align 8
  %614 = fadd double %610, %613
  %615 = fdiv double %613, %614
  %616 = fsub double %612, %615
  %617 = load double, ptr %5, align 8
  %618 = load double, ptr %2, align 8
  %619 = fadd double %618, %613
  %620 = fdiv double %617, %619
  %621 = fsub double %616, %620
  %622 = load double, ptr %4, align 8
  %623 = call double @llvm.fmuladd.f64(double %617, double %618, double %622)
  %624 = fdiv double %618, %623
  %625 = fsub double %621, %624
  store double %625, ptr %1, align 8
  %626 = load i32, ptr %8, align 4
  %627 = add nsw i32 %626, 1
  br label %604, !llvm.loop !17

628:                                              ; preds = %604
  %629 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %630 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %631 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %632 = load double, ptr @nulltime, align 8
  %633 = fneg double %632
  %634 = call double @llvm.fmuladd.f64(double %630, double %631, double %633)
  store double %634, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %635 = fdiv double %634, 1.200000e+01
  store double %635, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %636 = load double, ptr @sa, align 8
  store double %636, ptr %5, align 8
  %637 = fmul double %636, %636
  store double %637, ptr %2, align 8
  %638 = load double, ptr %4, align 8
  %639 = fneg double %638
  %640 = fadd double %636, %638
  %641 = fdiv double %638, %640
  %642 = fsub double %639, %641
  %643 = load double, ptr %5, align 8
  %644 = load double, ptr %2, align 8
  %645 = load double, ptr %4, align 8
  %646 = fadd double %644, %645
  %647 = fdiv double %643, %646
  %648 = fsub double %642, %647
  %649 = call double @llvm.fmuladd.f64(double %643, double %644, double %645)
  %650 = fdiv double %644, %649
  %651 = fsub double %648, %650
  store double %651, ptr @sa, align 8
  %652 = load double, ptr %3, align 8
  %653 = fmul double %652, 1.800000e+01
  %654 = load double, ptr @two, align 8
  %655 = load double, ptr %1, align 8
  %656 = call double @llvm.fmuladd.f64(double %654, double %655, double %651)
  %657 = fmul double %653, %656
  store double %657, ptr @sa, align 8
  %658 = fptosi double %657 to i32
  %659 = mul nsw i32 %658, -2000
  store i32 %659, ptr %9, align 4
  %660 = sitofp i32 %659 to double
  %661 = load double, ptr @scale, align 8
  %662 = fdiv double %660, %661
  %663 = fptosi double %662 to i32
  store i32 %663, ptr %9, align 4
  %664 = load double, ptr @sa, align 8
  %665 = fadd double %664, 5.002000e+02
  store double %665, ptr @sc, align 8
  %666 = load double, ptr @one, align 8
  %667 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %668 = fdiv double %666, %667
  store double %668, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %669 = fmul double %665, 1.000000e-30
  %670 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %671 = fmul double %670, 1.000000e-30
  %672 = fmul double %668, 1.000000e-30
  %673 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %669, double noundef %671, double noundef %672) #4
  %674 = load double, ptr @piref, align 8
  %675 = load double, ptr @three, align 8
  %676 = load i32, ptr %9, align 4
  %677 = sitofp i32 %676 to double
  %678 = fmul double %675, %677
  %679 = fdiv double %674, %678
  store double %679, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %680 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %681

681:                                              ; preds = %683, %628
  %storemerge20 = phi i32 [ 1, %628 ], [ %723, %683 ]
  store i32 %storemerge20, ptr %8, align 4
  %682 = load i32, ptr %9, align 4
  %.not21.not = icmp slt i32 %storemerge20, %682
  br i1 %.not21.not, label %683, label %724

683:                                              ; preds = %681
  %684 = load i32, ptr %8, align 4
  %685 = sitofp i32 %684 to double
  %686 = load double, ptr %5, align 8
  %687 = fmul double %686, %685
  store double %687, ptr %2, align 8
  %688 = fmul double %687, %687
  store double %688, ptr %4, align 8
  %689 = load double, ptr @B6, align 8
  %690 = load double, ptr @B5, align 8
  %691 = call double @llvm.fmuladd.f64(double %689, double %688, double %690)
  %692 = load double, ptr @B4, align 8
  %693 = call double @llvm.fmuladd.f64(double %688, double %691, double %692)
  %694 = load double, ptr @B3, align 8
  %695 = call double @llvm.fmuladd.f64(double %688, double %693, double %694)
  %696 = load double, ptr @B2, align 8
  %697 = call double @llvm.fmuladd.f64(double %688, double %695, double %696)
  %698 = load double, ptr @B1, align 8
  %699 = call double @llvm.fmuladd.f64(double %688, double %697, double %698)
  %700 = load double, ptr @one, align 8
  %701 = call double @llvm.fmuladd.f64(double %688, double %699, double %700)
  store double %701, ptr %3, align 8
  %702 = load double, ptr %1, align 8
  %703 = fmul double %701, %701
  %704 = load double, ptr %2, align 8
  %705 = fmul double %703, %704
  %706 = load double, ptr @A6, align 8
  %707 = load double, ptr %4, align 8
  %708 = load double, ptr @A5, align 8
  %709 = call double @llvm.fmuladd.f64(double %706, double %707, double %708)
  %710 = load double, ptr @A4, align 8
  %711 = call double @llvm.fmuladd.f64(double %709, double %707, double %710)
  %712 = load double, ptr @A3, align 8
  %713 = call double @llvm.fmuladd.f64(double %711, double %707, double %712)
  %714 = load double, ptr %4, align 8
  %715 = load double, ptr @A2, align 8
  %716 = call double @llvm.fmuladd.f64(double %713, double %714, double %715)
  %717 = load double, ptr @A1, align 8
  %718 = call double @llvm.fmuladd.f64(double %716, double %714, double %717)
  %719 = load double, ptr @one, align 8
  %720 = call double @llvm.fmuladd.f64(double %718, double %714, double %719)
  %721 = call double @llvm.fmuladd.f64(double %705, double %720, double %702)
  store double %721, ptr %1, align 8
  %722 = load i32, ptr %8, align 4
  %723 = add nsw i32 %722, 1
  br label %681, !llvm.loop !18

724:                                              ; preds = %681
  %725 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %726 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %727 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %728 = load double, ptr @nulltime, align 8
  %729 = fneg double %728
  %730 = call double @llvm.fmuladd.f64(double %726, double %727, double %729)
  store double %730, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %731 = load double, ptr @piref, align 8
  %732 = load double, ptr @three, align 8
  %733 = fdiv double %731, %732
  store double %733, ptr %2, align 8
  %734 = fmul double %733, %733
  store double %734, ptr %4, align 8
  %735 = load double, ptr @A6, align 8
  %736 = load double, ptr @A5, align 8
  %737 = call double @llvm.fmuladd.f64(double %735, double %734, double %736)
  %738 = load double, ptr @A4, align 8
  %739 = call double @llvm.fmuladd.f64(double %737, double %734, double %738)
  %740 = load double, ptr @A3, align 8
  %741 = call double @llvm.fmuladd.f64(double %739, double %734, double %740)
  %742 = load double, ptr %4, align 8
  %743 = load double, ptr @A2, align 8
  %744 = call double @llvm.fmuladd.f64(double %741, double %742, double %743)
  %745 = load double, ptr @A1, align 8
  %746 = call double @llvm.fmuladd.f64(double %744, double %742, double %745)
  %747 = load double, ptr @one, align 8
  %748 = call double @llvm.fmuladd.f64(double %746, double %742, double %747)
  %749 = fmul double %733, %748
  store double %749, ptr @sa, align 8
  %750 = load double, ptr %4, align 8
  %751 = load double, ptr @B6, align 8
  %752 = load double, ptr @B5, align 8
  %753 = call double @llvm.fmuladd.f64(double %751, double %750, double %752)
  %754 = load double, ptr @B4, align 8
  %755 = call double @llvm.fmuladd.f64(double %750, double %753, double %754)
  %756 = load double, ptr @B3, align 8
  %757 = call double @llvm.fmuladd.f64(double %750, double %755, double %756)
  %758 = load double, ptr @B2, align 8
  %759 = call double @llvm.fmuladd.f64(double %750, double %757, double %758)
  %760 = load double, ptr @B1, align 8
  %761 = call double @llvm.fmuladd.f64(double %750, double %759, double %760)
  %762 = load double, ptr @one, align 8
  %763 = call double @llvm.fmuladd.f64(double %750, double %761, double %762)
  store double %763, ptr @sb, align 8
  %764 = load double, ptr @sa, align 8
  %765 = fmul double %764, %763
  %766 = fmul double %765, %763
  store double %766, ptr @sa, align 8
  %767 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %768 = fdiv double %767, 3.000000e+01
  store double %768, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %769 = load double, ptr %5, align 8
  %770 = load double, ptr @two, align 8
  %771 = load double, ptr %1, align 8
  %772 = call double @llvm.fmuladd.f64(double %770, double %771, double %766)
  %773 = fmul double %769, %772
  %774 = fdiv double %773, %770
  store double %774, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %775 = fadd double %774, f0xBFD2AAAAAAAAAAAB
  store double %775, ptr @sc, align 8
  %776 = load double, ptr @one, align 8
  %777 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %778 = fdiv double %776, %777
  store double %778, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %779 = fmul double %775, 1.000000e-30
  %780 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %781 = fmul double %780, 1.000000e-30
  %782 = fmul double %778, 1.000000e-30
  %783 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %779, double noundef %781, double noundef %782) #4
  %784 = load double, ptr @five, align 8
  %785 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %786 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %787 = fsub double %785, %786
  %788 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %789 = call double @llvm.fmuladd.f64(double %784, double %787, double %788)
  %790 = fdiv double %789, 5.200000e+01
  store double %790, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %791 = load double, ptr @one, align 8
  %792 = fdiv double %791, %790
  store double %792, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %793 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %794 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %795 = fadd double %793, %794
  %796 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %797 = fadd double %795, %796
  %798 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %799 = fadd double %797, %798
  %800 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %801 = fadd double %799, %800
  store double %801, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %802 = load double, ptr @four, align 8
  %803 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %804 = call double @llvm.fmuladd.f64(double %802, double %803, double %801)
  %805 = fdiv double %804, 1.520000e+02
  store double %805, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %806 = load double, ptr @one, align 8
  %807 = fdiv double %806, %805
  store double %807, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %808 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %809 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %810 = fadd double %808, %809
  %811 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %812 = fadd double %810, %811
  %813 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %814 = fadd double %812, %813
  %815 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %816 = fadd double %814, %815
  store double %816, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %817 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %818 = fadd double %816, %817
  %819 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %820 = fadd double %818, %819
  %821 = fdiv double %820, 1.460000e+02
  store double %821, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %822 = load double, ptr @one, align 8
  %823 = fdiv double %822, %821
  store double %823, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %824 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %825 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %826 = fadd double %824, %825
  %827 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %828 = fadd double %826, %827
  %829 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %830 = fadd double %828, %829
  %831 = fdiv double %830, 9.100000e+01
  store double %831, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %832 = load double, ptr @one, align 8
  %833 = fdiv double %832, %831
  store double %833, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar22 = call i32 @putchar(i32 10)
  %834 = load i32, ptr %9, align 4
  %835 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %834) #4
  %836 = load double, ptr @nulltime, align 8
  %837 = fmul double %836, 1.000000e-30
  %838 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %837) #4
  %839 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %840 = fmul double %839, 1.000000e-30
  %841 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %840) #4
  %842 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %843 = fmul double %842, 1.000000e-30
  %844 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %843) #4
  %845 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %846 = fmul double %845, 1.000000e-30
  %847 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %846) #4
  %848 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %849 = fmul double %848, 1.000000e-30
  %850 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %849) #4
  ret i32 0
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dtime(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca double, align 8
  store ptr %0, ptr %2, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = load double, ptr %4, align 8
  store double %5, ptr %3, align 8
  %6 = call i32 @GetTickCount() #4
  %7 = uitofp i32 %6 to double
  %8 = fmul nnan double %7, 1.000000e-03
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store double %8, ptr %10, align 8
  %11 = load double, ptr %3, align 8
  %12 = fsub double %8, %11
  %13 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store double %12, ptr %13, align 8
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
