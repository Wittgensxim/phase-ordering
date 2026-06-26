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
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %70, %64
  %storemerge5 = phi double [ 0.000000e+00, %70 ], [ %68, %64 ]
  store double %storemerge5, ptr @nulltime, align 8
  %72 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %73 = load double, ptr @sa, align 8
  %74 = fneg double %storemerge5
  %75 = call double @llvm.fmuladd.f64(double %72, double %73, double %74)
  store double %75, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %76 = load double, ptr @D1, align 8
  %77 = load double, ptr @D2, align 8
  %78 = fadd double %76, %77
  %79 = load double, ptr @D3, align 8
  %80 = fadd double %78, %79
  %81 = load double, ptr @one, align 8
  %82 = fadd double %81, %76
  %83 = load double, ptr @E2, align 8
  %84 = fadd double %82, %83
  %85 = load double, ptr @E3, align 8
  %86 = fadd double %84, %85
  %87 = fdiv double %80, %86
  store double %87, ptr @sa, align 8
  %88 = load double, ptr @D1, align 8
  store double %88, ptr @sb, align 8
  %89 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %90 = fdiv double %89, 1.400000e+01
  store double %90, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %91 = load double, ptr %5, align 8
  %92 = load double, ptr @sa, align 8
  %93 = fadd double %92, %88
  %94 = load double, ptr @two, align 8
  %95 = load double, ptr %1, align 8
  %96 = call double @llvm.fmuladd.f64(double %94, double %95, double %93)
  %97 = fmul double %91, %96
  %98 = fdiv double %97, %94
  store double %98, ptr @sa, align 8
  %99 = load double, ptr @one, align 8
  %100 = fdiv double %99, %98
  store double %100, ptr @sb, align 8
  %101 = fptosi double %100 to i32
  %102 = mul nsw i32 %101, 40000
  %103 = sitofp i32 %102 to double
  %104 = load double, ptr @scale, align 8
  %105 = fdiv double %103, %104
  %106 = fptosi double %105 to i32
  store i32 %106, ptr %10, align 4
  %107 = load double, ptr @sb, align 8
  %108 = fadd double %107, -2.520000e+01
  store double %108, ptr @sc, align 8
  %109 = load double, ptr @one, align 8
  %110 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %111 = fdiv double %109, %110
  store double %111, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %112 = fmul double %108, 1.000000e-30
  %113 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %114 = fmul double %113, 1.000000e-30
  %115 = fmul double %111, 1.000000e-30
  %116 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %112, double noundef %114, double noundef %115) #4
  %117 = load i32, ptr %10, align 4
  store i32 %117, ptr %9, align 4
  %118 = load double, ptr @five, align 8
  %119 = fneg double %118
  store double %119, ptr %1, align 8
  %120 = load double, ptr @one, align 8
  %121 = fneg double %120
  store double %121, ptr @sa, align 8
  %122 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %123

123:                                              ; preds = %125, %71
  %storemerge6 = phi i32 [ 1, %71 ], [ %131, %125 ]
  store i32 %storemerge6, ptr %8, align 4
  %124 = load i32, ptr %9, align 4
  %.not = icmp sgt i32 %storemerge6, %124
  br i1 %.not, label %132, label %125

125:                                              ; preds = %123
  %126 = load double, ptr %1, align 8
  %127 = fneg double %126
  store double %127, ptr %1, align 8
  %128 = load double, ptr @sa, align 8
  %129 = fsub double %128, %126
  store double %129, ptr @sa, align 8
  %130 = load i32, ptr %8, align 4
  %131 = add nsw i32 %130, 1
  br label %123, !llvm.loop !11

132:                                              ; preds = %123
  %133 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %134 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %135 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %136 = fmul double %134, %135
  %137 = fcmp olt double %136, 0.000000e+00
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  br label %139

139:                                              ; preds = %138, %132
  %storemerge7 = phi double [ 0.000000e+00, %138 ], [ %136, %132 ]
  store double %storemerge7, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %140 = load i32, ptr %9, align 4
  %141 = sitofp i32 %140 to double
  store double %141, ptr @sc, align 8
  %142 = load double, ptr @sa, align 8
  store double %142, ptr %2, align 8
  store double 0.000000e+00, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  %143 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %144

144:                                              ; preds = %146, %139
  %storemerge8 = phi i32 [ 1, %139 ], [ %167, %146 ]
  store i32 %storemerge8, ptr %8, align 4
  %145 = load i32, ptr %9, align 4
  %.not9 = icmp sgt i32 %storemerge8, %145
  br i1 %.not9, label %168, label %146

146:                                              ; preds = %144
  %147 = load double, ptr %1, align 8
  %148 = fneg double %147
  store double %148, ptr %1, align 8
  %149 = load double, ptr @sa, align 8
  %150 = fsub double %149, %147
  store double %150, ptr @sa, align 8
  %151 = load double, ptr %2, align 8
  %152 = load double, ptr @two, align 8
  %153 = fadd double %151, %152
  store double %153, ptr %2, align 8
  %154 = load double, ptr %5, align 8
  %155 = load double, ptr %1, align 8
  %156 = fsub double %155, %153
  %157 = fadd double %154, %156
  store double %157, ptr %5, align 8
  %158 = load double, ptr %3, align 8
  %159 = load double, ptr %2, align 8
  %160 = fneg double %155
  %161 = call double @llvm.fmuladd.f64(double %160, double %159, double %158)
  store double %161, ptr %3, align 8
  %162 = load double, ptr %4, align 8
  %163 = load double, ptr %1, align 8
  %164 = fdiv double %163, %159
  %165 = fadd double %162, %164
  store double %165, ptr %4, align 8
  %166 = load i32, ptr %8, align 4
  %167 = add nsw i32 %166, 1
  br label %144, !llvm.loop !12

168:                                              ; preds = %144
  %169 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %170 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %171 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %172 = fmul double %170, %171
  store double %172, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %173 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %174 = fsub double %172, %173
  %175 = fdiv double %174, 7.000000e+00
  store double %175, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %176 = load double, ptr @sa, align 8
  %177 = load double, ptr %5, align 8
  %178 = fmul double %176, %177
  %179 = load double, ptr @sc, align 8
  %180 = fdiv double %178, %179
  %181 = fptosi double %180 to i32
  store i32 %181, ptr %9, align 4
  %182 = load double, ptr @four, align 8
  %183 = load double, ptr %4, align 8
  %184 = fmul double %182, %183
  %185 = load double, ptr @five, align 8
  %186 = fdiv double %184, %185
  store double %186, ptr @sa, align 8
  %187 = load double, ptr %3, align 8
  %188 = fdiv double %185, %187
  %189 = fadd double %186, %188
  store double %189, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %190 = fmul double %187, %187
  %191 = fmul double %190, %187
  %192 = fdiv double 3.125000e+01, %191
  %193 = fsub double %189, %192
  store double %193, ptr @piprg, align 8
  %194 = load double, ptr @piref, align 8
  %195 = fsub double %193, %194
  store double %195, ptr @pierr, align 8
  %196 = load double, ptr @one, align 8
  %197 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %198 = fdiv double %196, %197
  store double %198, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %199 = fmul double %195, 1.000000e-30
  %200 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %201 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %202 = fsub double %200, %201
  %203 = fmul double %202, 1.000000e-30
  %204 = fmul double %198, 1.000000e-30
  %205 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %199, double noundef %203, double noundef %204) #4
  %206 = load double, ptr @piref, align 8
  %207 = load double, ptr @three, align 8
  %208 = load i32, ptr %9, align 4
  %209 = sitofp i32 %208 to double
  %210 = fmul double %207, %209
  %211 = fdiv double %206, %210
  store double %211, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %212 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %213

213:                                              ; preds = %215, %168
  %storemerge10 = phi i32 [ 1, %168 ], [ %242, %215 ]
  store i32 %storemerge10, ptr %8, align 4
  %214 = load i32, ptr %9, align 4
  %.not11.not = icmp slt i32 %storemerge10, %214
  br i1 %.not11.not, label %215, label %243

215:                                              ; preds = %213
  %216 = load double, ptr %3, align 8
  %217 = load double, ptr @one, align 8
  %218 = fadd double %216, %217
  store double %218, ptr %3, align 8
  %219 = load double, ptr %5, align 8
  %220 = fmul double %218, %219
  store double %220, ptr %2, align 8
  %221 = fmul double %220, %220
  store double %221, ptr %4, align 8
  %222 = load double, ptr %1, align 8
  %223 = load double, ptr @A6, align 8
  %224 = load double, ptr @A5, align 8
  %225 = fneg double %224
  %226 = call double @llvm.fmuladd.f64(double %223, double %221, double %225)
  %227 = load double, ptr @A4, align 8
  %228 = call double @llvm.fmuladd.f64(double %226, double %221, double %227)
  %229 = load double, ptr %4, align 8
  %230 = load double, ptr @A3, align 8
  %231 = fneg double %230
  %232 = call double @llvm.fmuladd.f64(double %228, double %229, double %231)
  %233 = load double, ptr @A2, align 8
  %234 = call double @llvm.fmuladd.f64(double %232, double %229, double %233)
  %235 = load double, ptr @A1, align 8
  %236 = call double @llvm.fmuladd.f64(double %234, double %229, double %235)
  %237 = load double, ptr %4, align 8
  %238 = load double, ptr @one, align 8
  %239 = call double @llvm.fmuladd.f64(double %236, double %237, double %238)
  %240 = call double @llvm.fmuladd.f64(double %220, double %239, double %222)
  store double %240, ptr %1, align 8
  %241 = load i32, ptr %8, align 4
  %242 = add nsw i32 %241, 1
  br label %213, !llvm.loop !13

243:                                              ; preds = %213
  %244 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %245 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %246 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %247 = load double, ptr @nulltime, align 8
  %248 = fneg double %247
  %249 = call double @llvm.fmuladd.f64(double %245, double %246, double %248)
  store double %249, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %250 = load double, ptr @piref, align 8
  %251 = load double, ptr @three, align 8
  %252 = fdiv double %250, %251
  store double %252, ptr %2, align 8
  %253 = fmul double %252, %252
  store double %253, ptr %4, align 8
  %254 = load double, ptr @A6, align 8
  %255 = load double, ptr @A5, align 8
  %256 = fneg double %255
  %257 = call double @llvm.fmuladd.f64(double %254, double %253, double %256)
  %258 = load double, ptr @A4, align 8
  %259 = call double @llvm.fmuladd.f64(double %257, double %253, double %258)
  %260 = load double, ptr %4, align 8
  %261 = load double, ptr @A3, align 8
  %262 = fneg double %261
  %263 = call double @llvm.fmuladd.f64(double %259, double %260, double %262)
  %264 = load double, ptr @A2, align 8
  %265 = call double @llvm.fmuladd.f64(double %263, double %260, double %264)
  %266 = load double, ptr @A1, align 8
  %267 = call double @llvm.fmuladd.f64(double %265, double %260, double %266)
  %268 = load double, ptr %4, align 8
  %269 = load double, ptr @one, align 8
  %270 = call double @llvm.fmuladd.f64(double %267, double %268, double %269)
  %271 = fmul double %252, %270
  store double %271, ptr @sa, align 8
  %272 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %273 = fdiv double %272, 1.700000e+01
  store double %273, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %274 = load double, ptr %5, align 8
  %275 = load double, ptr @two, align 8
  %276 = load double, ptr %1, align 8
  %277 = call double @llvm.fmuladd.f64(double %275, double %276, double %271)
  %278 = fmul double %274, %277
  %279 = fdiv double %278, %275
  store double %279, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %280 = fadd double %279, -5.000000e-01
  store double %280, ptr @sc, align 8
  %281 = load double, ptr @one, align 8
  %282 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %283 = fdiv double %281, %282
  store double %283, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %284 = fmul double %280, 1.000000e-30
  %285 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %286 = fmul double %285, 1.000000e-30
  %287 = fmul double %283, 1.000000e-30
  %288 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %284, double noundef %286, double noundef %287) #4
  %289 = load double, ptr @A3, align 8
  %290 = fneg double %289
  store double %290, ptr @A3, align 8
  %291 = load double, ptr @A5, align 8
  %292 = fneg double %291
  store double %292, ptr @A5, align 8
  %293 = load double, ptr @piref, align 8
  %294 = load double, ptr @three, align 8
  %295 = load i32, ptr %9, align 4
  %296 = sitofp i32 %295 to double
  %297 = fmul double %294, %296
  %298 = fdiv double %293, %297
  store double %298, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %299 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %300

300:                                              ; preds = %302, %243
  %storemerge12 = phi i32 [ 1, %243 ], [ %324, %302 ]
  store i32 %storemerge12, ptr %8, align 4
  %301 = load i32, ptr %9, align 4
  %.not13.not = icmp slt i32 %storemerge12, %301
  br i1 %.not13.not, label %302, label %325

302:                                              ; preds = %300
  %303 = load i32, ptr %8, align 4
  %304 = sitofp i32 %303 to double
  %305 = load double, ptr %5, align 8
  %306 = fmul double %305, %304
  store double %306, ptr %2, align 8
  %307 = fmul double %306, %306
  store double %307, ptr %4, align 8
  %308 = load double, ptr %1, align 8
  %309 = load double, ptr @B6, align 8
  %310 = load double, ptr @B5, align 8
  %311 = call double @llvm.fmuladd.f64(double %309, double %307, double %310)
  %312 = load double, ptr @B4, align 8
  %313 = call double @llvm.fmuladd.f64(double %307, double %311, double %312)
  %314 = load double, ptr @B3, align 8
  %315 = call double @llvm.fmuladd.f64(double %307, double %313, double %314)
  %316 = load double, ptr @B2, align 8
  %317 = call double @llvm.fmuladd.f64(double %307, double %315, double %316)
  %318 = load double, ptr @B1, align 8
  %319 = call double @llvm.fmuladd.f64(double %307, double %317, double %318)
  %320 = call double @llvm.fmuladd.f64(double %307, double %319, double %308)
  %321 = load double, ptr @one, align 8
  %322 = fadd double %320, %321
  store double %322, ptr %1, align 8
  %323 = load i32, ptr %8, align 4
  %324 = add nsw i32 %323, 1
  br label %300, !llvm.loop !14

325:                                              ; preds = %300
  %326 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %327 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %328 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %329 = load double, ptr @nulltime, align 8
  %330 = fneg double %329
  %331 = call double @llvm.fmuladd.f64(double %327, double %328, double %330)
  store double %331, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %332 = load double, ptr @piref, align 8
  %333 = load double, ptr @three, align 8
  %334 = fdiv double %332, %333
  store double %334, ptr %2, align 8
  %335 = fmul double %334, %334
  store double %335, ptr %4, align 8
  %336 = load double, ptr @B6, align 8
  %337 = load double, ptr @B5, align 8
  %338 = call double @llvm.fmuladd.f64(double %336, double %335, double %337)
  %339 = load double, ptr @B4, align 8
  %340 = call double @llvm.fmuladd.f64(double %335, double %338, double %339)
  %341 = load double, ptr @B3, align 8
  %342 = call double @llvm.fmuladd.f64(double %335, double %340, double %341)
  %343 = load double, ptr @B2, align 8
  %344 = call double @llvm.fmuladd.f64(double %335, double %342, double %343)
  %345 = load double, ptr @B1, align 8
  %346 = call double @llvm.fmuladd.f64(double %335, double %344, double %345)
  %347 = load double, ptr @one, align 8
  %348 = call double @llvm.fmuladd.f64(double %335, double %346, double %347)
  store double %348, ptr @sa, align 8
  %349 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %350 = fdiv double %349, 1.500000e+01
  store double %350, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %351 = load double, ptr %5, align 8
  %352 = load double, ptr @one, align 8
  %353 = fadd double %348, %352
  %354 = load double, ptr @two, align 8
  %355 = load double, ptr %1, align 8
  %356 = call double @llvm.fmuladd.f64(double %354, double %355, double %353)
  %357 = fmul double %351, %356
  %358 = fdiv double %357, %354
  store double %358, ptr @sa, align 8
  %359 = load double, ptr @piref, align 8
  %360 = load double, ptr @three, align 8
  %361 = fdiv double %359, %360
  store double %361, ptr %2, align 8
  %362 = fmul double %361, %361
  store double %362, ptr %4, align 8
  %363 = load double, ptr @A6, align 8
  %364 = load double, ptr @A5, align 8
  %365 = call double @llvm.fmuladd.f64(double %363, double %362, double %364)
  %366 = load double, ptr @A4, align 8
  %367 = call double @llvm.fmuladd.f64(double %365, double %362, double %366)
  %368 = load double, ptr @A3, align 8
  %369 = call double @llvm.fmuladd.f64(double %367, double %362, double %368)
  %370 = load double, ptr %4, align 8
  %371 = load double, ptr @A2, align 8
  %372 = call double @llvm.fmuladd.f64(double %369, double %370, double %371)
  %373 = load double, ptr @A1, align 8
  %374 = call double @llvm.fmuladd.f64(double %372, double %370, double %373)
  %375 = load double, ptr @A0, align 8
  %376 = call double @llvm.fmuladd.f64(double %374, double %370, double %375)
  %377 = fmul double %361, %376
  store double %377, ptr @sb, align 8
  %378 = load double, ptr @sa, align 8
  %379 = fsub double %378, %377
  store double %379, ptr @sc, align 8
  %380 = load double, ptr @one, align 8
  %381 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %382 = fdiv double %380, %381
  store double %382, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %383 = fmul double %379, 1.000000e-30
  %384 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %385 = fmul double %384, 1.000000e-30
  %386 = fmul double %382, 1.000000e-30
  %387 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %383, double noundef %385, double noundef %386) #4
  %388 = load double, ptr @piref, align 8
  %389 = load double, ptr @three, align 8
  %390 = load i32, ptr %9, align 4
  %391 = sitofp i32 %390 to double
  %392 = fmul double %389, %391
  %393 = fdiv double %388, %392
  store double %393, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %394 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %395

395:                                              ; preds = %397, %325
  %storemerge14 = phi i32 [ 1, %325 ], [ %436, %397 ]
  store i32 %storemerge14, ptr %8, align 4
  %396 = load i32, ptr %9, align 4
  %.not15.not = icmp slt i32 %storemerge14, %396
  br i1 %.not15.not, label %397, label %437

397:                                              ; preds = %395
  %398 = load i32, ptr %8, align 4
  %399 = sitofp i32 %398 to double
  %400 = load double, ptr %5, align 8
  %401 = fmul double %400, %399
  store double %401, ptr %2, align 8
  %402 = fmul double %401, %401
  store double %402, ptr %4, align 8
  %403 = load double, ptr @A6, align 8
  %404 = load double, ptr @A5, align 8
  %405 = call double @llvm.fmuladd.f64(double %403, double %402, double %404)
  %406 = load double, ptr @A4, align 8
  %407 = call double @llvm.fmuladd.f64(double %405, double %402, double %406)
  %408 = load double, ptr @A3, align 8
  %409 = call double @llvm.fmuladd.f64(double %407, double %402, double %408)
  %410 = load double, ptr %4, align 8
  %411 = load double, ptr @A2, align 8
  %412 = call double @llvm.fmuladd.f64(double %409, double %410, double %411)
  %413 = load double, ptr @A1, align 8
  %414 = call double @llvm.fmuladd.f64(double %412, double %410, double %413)
  %415 = load double, ptr @one, align 8
  %416 = call double @llvm.fmuladd.f64(double %414, double %410, double %415)
  %417 = fmul double %401, %416
  store double %417, ptr %3, align 8
  %418 = load double, ptr %1, align 8
  %419 = load double, ptr %4, align 8
  %420 = load double, ptr @B6, align 8
  %421 = load double, ptr @B5, align 8
  %422 = call double @llvm.fmuladd.f64(double %420, double %419, double %421)
  %423 = load double, ptr @B4, align 8
  %424 = call double @llvm.fmuladd.f64(double %419, double %422, double %423)
  %425 = load double, ptr @B3, align 8
  %426 = call double @llvm.fmuladd.f64(double %419, double %424, double %425)
  %427 = load double, ptr @B2, align 8
  %428 = call double @llvm.fmuladd.f64(double %419, double %426, double %427)
  %429 = load double, ptr @B1, align 8
  %430 = call double @llvm.fmuladd.f64(double %419, double %428, double %429)
  %431 = load double, ptr @one, align 8
  %432 = call double @llvm.fmuladd.f64(double %419, double %430, double %431)
  %433 = fdiv double %417, %432
  %434 = fadd double %418, %433
  store double %434, ptr %1, align 8
  %435 = load i32, ptr %8, align 4
  %436 = add nsw i32 %435, 1
  br label %395, !llvm.loop !15

437:                                              ; preds = %395
  %438 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %439 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %440 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %441 = load double, ptr @nulltime, align 8
  %442 = fneg double %441
  %443 = call double @llvm.fmuladd.f64(double %439, double %440, double %442)
  store double %443, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %444 = load double, ptr @piref, align 8
  %445 = load double, ptr @three, align 8
  %446 = fdiv double %444, %445
  store double %446, ptr %2, align 8
  %447 = fmul double %446, %446
  store double %447, ptr %4, align 8
  %448 = load double, ptr @A6, align 8
  %449 = load double, ptr @A5, align 8
  %450 = call double @llvm.fmuladd.f64(double %448, double %447, double %449)
  %451 = load double, ptr @A4, align 8
  %452 = call double @llvm.fmuladd.f64(double %450, double %447, double %451)
  %453 = load double, ptr @A3, align 8
  %454 = call double @llvm.fmuladd.f64(double %452, double %447, double %453)
  %455 = load double, ptr %4, align 8
  %456 = load double, ptr @A2, align 8
  %457 = call double @llvm.fmuladd.f64(double %454, double %455, double %456)
  %458 = load double, ptr @A1, align 8
  %459 = call double @llvm.fmuladd.f64(double %457, double %455, double %458)
  %460 = load double, ptr @one, align 8
  %461 = call double @llvm.fmuladd.f64(double %459, double %455, double %460)
  %462 = fmul double %446, %461
  store double %462, ptr @sa, align 8
  %463 = load double, ptr %4, align 8
  %464 = load double, ptr @B6, align 8
  %465 = load double, ptr @B5, align 8
  %466 = call double @llvm.fmuladd.f64(double %464, double %463, double %465)
  %467 = load double, ptr @B4, align 8
  %468 = call double @llvm.fmuladd.f64(double %463, double %466, double %467)
  %469 = load double, ptr @B3, align 8
  %470 = call double @llvm.fmuladd.f64(double %463, double %468, double %469)
  %471 = load double, ptr @B2, align 8
  %472 = call double @llvm.fmuladd.f64(double %463, double %470, double %471)
  %473 = load double, ptr @B1, align 8
  %474 = call double @llvm.fmuladd.f64(double %463, double %472, double %473)
  %475 = load double, ptr @one, align 8
  %476 = call double @llvm.fmuladd.f64(double %463, double %474, double %475)
  store double %476, ptr @sb, align 8
  %477 = load double, ptr @sa, align 8
  %478 = fdiv double %477, %476
  store double %478, ptr @sa, align 8
  %479 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %480 = fdiv double %479, 2.900000e+01
  store double %480, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %481 = load double, ptr %5, align 8
  %482 = load double, ptr @two, align 8
  %483 = load double, ptr %1, align 8
  %484 = call double @llvm.fmuladd.f64(double %482, double %483, double %478)
  %485 = fmul double %481, %484
  %486 = fdiv double %485, %482
  store double %486, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %487 = fadd double %486, f0xBFE62E42FEFA39EF
  store double %487, ptr @sc, align 8
  %488 = load double, ptr @one, align 8
  %489 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %490 = fdiv double %488, %489
  store double %490, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %491 = fmul double %487, 1.000000e-30
  %492 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %493 = fmul double %492, 1.000000e-30
  %494 = fmul double %490, 1.000000e-30
  %495 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %491, double noundef %493, double noundef %494) #4
  %496 = load double, ptr @piref, align 8
  %497 = load double, ptr @four, align 8
  %498 = load i32, ptr %9, align 4
  %499 = sitofp i32 %498 to double
  %500 = fmul double %497, %499
  %501 = fdiv double %496, %500
  store double %501, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %502 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %503

503:                                              ; preds = %505, %437
  %storemerge16 = phi i32 [ 1, %437 ], [ %543, %505 ]
  store i32 %storemerge16, ptr %8, align 4
  %504 = load i32, ptr %9, align 4
  %.not17.not = icmp slt i32 %storemerge16, %504
  br i1 %.not17.not, label %505, label %544

505:                                              ; preds = %503
  %506 = load i32, ptr %8, align 4
  %507 = sitofp i32 %506 to double
  %508 = load double, ptr %5, align 8
  %509 = fmul double %508, %507
  store double %509, ptr %2, align 8
  %510 = fmul double %509, %509
  store double %510, ptr %4, align 8
  %511 = load double, ptr @A6, align 8
  %512 = load double, ptr @A5, align 8
  %513 = call double @llvm.fmuladd.f64(double %511, double %510, double %512)
  %514 = load double, ptr @A4, align 8
  %515 = call double @llvm.fmuladd.f64(double %513, double %510, double %514)
  %516 = load double, ptr @A3, align 8
  %517 = call double @llvm.fmuladd.f64(double %515, double %510, double %516)
  %518 = load double, ptr %4, align 8
  %519 = load double, ptr @A2, align 8
  %520 = call double @llvm.fmuladd.f64(double %517, double %518, double %519)
  %521 = load double, ptr @A1, align 8
  %522 = call double @llvm.fmuladd.f64(double %520, double %518, double %521)
  %523 = load double, ptr @one, align 8
  %524 = call double @llvm.fmuladd.f64(double %522, double %518, double %523)
  %525 = fmul double %509, %524
  store double %525, ptr %3, align 8
  %526 = load double, ptr %1, align 8
  %527 = load double, ptr %4, align 8
  %528 = load double, ptr @B6, align 8
  %529 = load double, ptr @B5, align 8
  %530 = call double @llvm.fmuladd.f64(double %528, double %527, double %529)
  %531 = load double, ptr @B4, align 8
  %532 = call double @llvm.fmuladd.f64(double %527, double %530, double %531)
  %533 = load double, ptr @B3, align 8
  %534 = call double @llvm.fmuladd.f64(double %527, double %532, double %533)
  %535 = load double, ptr @B2, align 8
  %536 = call double @llvm.fmuladd.f64(double %527, double %534, double %535)
  %537 = load double, ptr @B1, align 8
  %538 = call double @llvm.fmuladd.f64(double %527, double %536, double %537)
  %539 = load double, ptr @one, align 8
  %540 = call double @llvm.fmuladd.f64(double %527, double %538, double %539)
  %541 = call double @llvm.fmuladd.f64(double %525, double %540, double %526)
  store double %541, ptr %1, align 8
  %542 = load i32, ptr %8, align 4
  %543 = add nsw i32 %542, 1
  br label %503, !llvm.loop !16

544:                                              ; preds = %503
  %545 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %546 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %547 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %548 = load double, ptr @nulltime, align 8
  %549 = fneg double %548
  %550 = call double @llvm.fmuladd.f64(double %546, double %547, double %549)
  store double %550, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %551 = load double, ptr @piref, align 8
  %552 = load double, ptr @four, align 8
  %553 = fdiv double %551, %552
  store double %553, ptr %2, align 8
  %554 = fmul double %553, %553
  store double %554, ptr %4, align 8
  %555 = load double, ptr @A6, align 8
  %556 = load double, ptr @A5, align 8
  %557 = call double @llvm.fmuladd.f64(double %555, double %554, double %556)
  %558 = load double, ptr @A4, align 8
  %559 = call double @llvm.fmuladd.f64(double %557, double %554, double %558)
  %560 = load double, ptr @A3, align 8
  %561 = call double @llvm.fmuladd.f64(double %559, double %554, double %560)
  %562 = load double, ptr %4, align 8
  %563 = load double, ptr @A2, align 8
  %564 = call double @llvm.fmuladd.f64(double %561, double %562, double %563)
  %565 = load double, ptr @A1, align 8
  %566 = call double @llvm.fmuladd.f64(double %564, double %562, double %565)
  %567 = load double, ptr @one, align 8
  %568 = call double @llvm.fmuladd.f64(double %566, double %562, double %567)
  %569 = fmul double %553, %568
  store double %569, ptr @sa, align 8
  %570 = load double, ptr %4, align 8
  %571 = load double, ptr @B6, align 8
  %572 = load double, ptr @B5, align 8
  %573 = call double @llvm.fmuladd.f64(double %571, double %570, double %572)
  %574 = load double, ptr @B4, align 8
  %575 = call double @llvm.fmuladd.f64(double %570, double %573, double %574)
  %576 = load double, ptr @B3, align 8
  %577 = call double @llvm.fmuladd.f64(double %570, double %575, double %576)
  %578 = load double, ptr @B2, align 8
  %579 = call double @llvm.fmuladd.f64(double %570, double %577, double %578)
  %580 = load double, ptr @B1, align 8
  %581 = call double @llvm.fmuladd.f64(double %570, double %579, double %580)
  %582 = load double, ptr @one, align 8
  %583 = call double @llvm.fmuladd.f64(double %570, double %581, double %582)
  store double %583, ptr @sb, align 8
  %584 = load double, ptr @sa, align 8
  %585 = fmul double %584, %583
  store double %585, ptr @sa, align 8
  %586 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %587 = fdiv double %586, 2.900000e+01
  store double %587, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %588 = load double, ptr %5, align 8
  %589 = load double, ptr @two, align 8
  %590 = load double, ptr %1, align 8
  %591 = call double @llvm.fmuladd.f64(double %589, double %590, double %585)
  %592 = fmul double %588, %591
  %593 = fdiv double %592, %589
  store double %593, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %594 = fadd double %593, -2.500000e-01
  store double %594, ptr @sc, align 8
  %595 = load double, ptr @one, align 8
  %596 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %597 = fdiv double %595, %596
  store double %597, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %598 = fmul double %594, 1.000000e-30
  %599 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %600 = fmul double %599, 1.000000e-30
  %601 = fmul double %597, 1.000000e-30
  %602 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %598, double noundef %600, double noundef %601) #4
  store double 0.000000e+00, ptr %1, align 8
  %603 = load double, ptr @one, align 8
  store double %603, ptr %4, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %604 = load i32, ptr %9, align 4
  %605 = sitofp i32 %604 to double
  %606 = fdiv double f0x40599541F7F192A4, %605
  store double %606, ptr %3, align 8
  %607 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %608

608:                                              ; preds = %610, %544
  %storemerge18 = phi i32 [ 1, %544 ], [ %631, %610 ]
  store i32 %storemerge18, ptr %8, align 4
  %609 = load i32, ptr %9, align 4
  %.not19.not = icmp slt i32 %storemerge18, %609
  br i1 %.not19.not, label %610, label %632

610:                                              ; preds = %608
  %611 = load i32, ptr %8, align 4
  %612 = sitofp i32 %611 to double
  %613 = load double, ptr %3, align 8
  %614 = fmul double %613, %612
  store double %614, ptr %5, align 8
  %615 = fmul double %614, %614
  store double %615, ptr %2, align 8
  %616 = load double, ptr %1, align 8
  %617 = load double, ptr %4, align 8
  %618 = fadd double %614, %617
  %619 = fdiv double %617, %618
  %620 = fsub double %616, %619
  %621 = load double, ptr %5, align 8
  %622 = load double, ptr %2, align 8
  %623 = fadd double %622, %617
  %624 = fdiv double %621, %623
  %625 = fsub double %620, %624
  %626 = load double, ptr %4, align 8
  %627 = call double @llvm.fmuladd.f64(double %621, double %622, double %626)
  %628 = fdiv double %622, %627
  %629 = fsub double %625, %628
  store double %629, ptr %1, align 8
  %630 = load i32, ptr %8, align 4
  %631 = add nsw i32 %630, 1
  br label %608, !llvm.loop !17

632:                                              ; preds = %608
  %633 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %634 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %635 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %636 = load double, ptr @nulltime, align 8
  %637 = fneg double %636
  %638 = call double @llvm.fmuladd.f64(double %634, double %635, double %637)
  store double %638, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %639 = fdiv double %638, 1.200000e+01
  store double %639, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %640 = load double, ptr @sa, align 8
  store double %640, ptr %5, align 8
  %641 = fmul double %640, %640
  store double %641, ptr %2, align 8
  %642 = load double, ptr %4, align 8
  %643 = fneg double %642
  %644 = fadd double %640, %642
  %645 = fdiv double %642, %644
  %646 = fsub double %643, %645
  %647 = load double, ptr %5, align 8
  %648 = load double, ptr %2, align 8
  %649 = load double, ptr %4, align 8
  %650 = fadd double %648, %649
  %651 = fdiv double %647, %650
  %652 = fsub double %646, %651
  %653 = call double @llvm.fmuladd.f64(double %647, double %648, double %649)
  %654 = fdiv double %648, %653
  %655 = fsub double %652, %654
  store double %655, ptr @sa, align 8
  %656 = load double, ptr %3, align 8
  %657 = fmul double %656, 1.800000e+01
  %658 = load double, ptr @two, align 8
  %659 = load double, ptr %1, align 8
  %660 = call double @llvm.fmuladd.f64(double %658, double %659, double %655)
  %661 = fmul double %657, %660
  store double %661, ptr @sa, align 8
  %662 = fptosi double %661 to i32
  %663 = mul nsw i32 %662, -2000
  store i32 %663, ptr %9, align 4
  %664 = sitofp i32 %663 to double
  %665 = load double, ptr @scale, align 8
  %666 = fdiv double %664, %665
  %667 = fptosi double %666 to i32
  store i32 %667, ptr %9, align 4
  %668 = load double, ptr @sa, align 8
  %669 = fadd double %668, 5.002000e+02
  store double %669, ptr @sc, align 8
  %670 = load double, ptr @one, align 8
  %671 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %672 = fdiv double %670, %671
  store double %672, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %673 = fmul double %669, 1.000000e-30
  %674 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %675 = fmul double %674, 1.000000e-30
  %676 = fmul double %672, 1.000000e-30
  %677 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %673, double noundef %675, double noundef %676) #4
  %678 = load double, ptr @piref, align 8
  %679 = load double, ptr @three, align 8
  %680 = load i32, ptr %9, align 4
  %681 = sitofp i32 %680 to double
  %682 = fmul double %679, %681
  %683 = fdiv double %678, %682
  store double %683, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %684 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %685

685:                                              ; preds = %687, %632
  %storemerge20 = phi i32 [ 1, %632 ], [ %727, %687 ]
  store i32 %storemerge20, ptr %8, align 4
  %686 = load i32, ptr %9, align 4
  %.not21.not = icmp slt i32 %storemerge20, %686
  br i1 %.not21.not, label %687, label %728

687:                                              ; preds = %685
  %688 = load i32, ptr %8, align 4
  %689 = sitofp i32 %688 to double
  %690 = load double, ptr %5, align 8
  %691 = fmul double %690, %689
  store double %691, ptr %2, align 8
  %692 = fmul double %691, %691
  store double %692, ptr %4, align 8
  %693 = load double, ptr @B6, align 8
  %694 = load double, ptr @B5, align 8
  %695 = call double @llvm.fmuladd.f64(double %693, double %692, double %694)
  %696 = load double, ptr @B4, align 8
  %697 = call double @llvm.fmuladd.f64(double %692, double %695, double %696)
  %698 = load double, ptr @B3, align 8
  %699 = call double @llvm.fmuladd.f64(double %692, double %697, double %698)
  %700 = load double, ptr @B2, align 8
  %701 = call double @llvm.fmuladd.f64(double %692, double %699, double %700)
  %702 = load double, ptr @B1, align 8
  %703 = call double @llvm.fmuladd.f64(double %692, double %701, double %702)
  %704 = load double, ptr @one, align 8
  %705 = call double @llvm.fmuladd.f64(double %692, double %703, double %704)
  store double %705, ptr %3, align 8
  %706 = load double, ptr %1, align 8
  %707 = fmul double %705, %705
  %708 = load double, ptr %2, align 8
  %709 = fmul double %707, %708
  %710 = load double, ptr @A6, align 8
  %711 = load double, ptr %4, align 8
  %712 = load double, ptr @A5, align 8
  %713 = call double @llvm.fmuladd.f64(double %710, double %711, double %712)
  %714 = load double, ptr @A4, align 8
  %715 = call double @llvm.fmuladd.f64(double %713, double %711, double %714)
  %716 = load double, ptr @A3, align 8
  %717 = call double @llvm.fmuladd.f64(double %715, double %711, double %716)
  %718 = load double, ptr %4, align 8
  %719 = load double, ptr @A2, align 8
  %720 = call double @llvm.fmuladd.f64(double %717, double %718, double %719)
  %721 = load double, ptr @A1, align 8
  %722 = call double @llvm.fmuladd.f64(double %720, double %718, double %721)
  %723 = load double, ptr @one, align 8
  %724 = call double @llvm.fmuladd.f64(double %722, double %718, double %723)
  %725 = call double @llvm.fmuladd.f64(double %709, double %724, double %706)
  store double %725, ptr %1, align 8
  %726 = load i32, ptr %8, align 4
  %727 = add nsw i32 %726, 1
  br label %685, !llvm.loop !18

728:                                              ; preds = %685
  %729 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %730 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %731 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %732 = load double, ptr @nulltime, align 8
  %733 = fneg double %732
  %734 = call double @llvm.fmuladd.f64(double %730, double %731, double %733)
  store double %734, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %735 = load double, ptr @piref, align 8
  %736 = load double, ptr @three, align 8
  %737 = fdiv double %735, %736
  store double %737, ptr %2, align 8
  %738 = fmul double %737, %737
  store double %738, ptr %4, align 8
  %739 = load double, ptr @A6, align 8
  %740 = load double, ptr @A5, align 8
  %741 = call double @llvm.fmuladd.f64(double %739, double %738, double %740)
  %742 = load double, ptr @A4, align 8
  %743 = call double @llvm.fmuladd.f64(double %741, double %738, double %742)
  %744 = load double, ptr @A3, align 8
  %745 = call double @llvm.fmuladd.f64(double %743, double %738, double %744)
  %746 = load double, ptr %4, align 8
  %747 = load double, ptr @A2, align 8
  %748 = call double @llvm.fmuladd.f64(double %745, double %746, double %747)
  %749 = load double, ptr @A1, align 8
  %750 = call double @llvm.fmuladd.f64(double %748, double %746, double %749)
  %751 = load double, ptr @one, align 8
  %752 = call double @llvm.fmuladd.f64(double %750, double %746, double %751)
  %753 = fmul double %737, %752
  store double %753, ptr @sa, align 8
  %754 = load double, ptr %4, align 8
  %755 = load double, ptr @B6, align 8
  %756 = load double, ptr @B5, align 8
  %757 = call double @llvm.fmuladd.f64(double %755, double %754, double %756)
  %758 = load double, ptr @B4, align 8
  %759 = call double @llvm.fmuladd.f64(double %754, double %757, double %758)
  %760 = load double, ptr @B3, align 8
  %761 = call double @llvm.fmuladd.f64(double %754, double %759, double %760)
  %762 = load double, ptr @B2, align 8
  %763 = call double @llvm.fmuladd.f64(double %754, double %761, double %762)
  %764 = load double, ptr @B1, align 8
  %765 = call double @llvm.fmuladd.f64(double %754, double %763, double %764)
  %766 = load double, ptr @one, align 8
  %767 = call double @llvm.fmuladd.f64(double %754, double %765, double %766)
  store double %767, ptr @sb, align 8
  %768 = load double, ptr @sa, align 8
  %769 = fmul double %768, %767
  %770 = fmul double %769, %767
  store double %770, ptr @sa, align 8
  %771 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %772 = fdiv double %771, 3.000000e+01
  store double %772, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %773 = load double, ptr %5, align 8
  %774 = load double, ptr @two, align 8
  %775 = load double, ptr %1, align 8
  %776 = call double @llvm.fmuladd.f64(double %774, double %775, double %770)
  %777 = fmul double %773, %776
  %778 = fdiv double %777, %774
  store double %778, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %779 = fadd double %778, f0xBFD2AAAAAAAAAAAB
  store double %779, ptr @sc, align 8
  %780 = load double, ptr @one, align 8
  %781 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %782 = fdiv double %780, %781
  store double %782, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %783 = fmul double %779, 1.000000e-30
  %784 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %785 = fmul double %784, 1.000000e-30
  %786 = fmul double %782, 1.000000e-30
  %787 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %783, double noundef %785, double noundef %786) #4
  %788 = load double, ptr @five, align 8
  %789 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %790 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %791 = fsub double %789, %790
  %792 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %793 = call double @llvm.fmuladd.f64(double %788, double %791, double %792)
  %794 = fdiv double %793, 5.200000e+01
  store double %794, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %795 = load double, ptr @one, align 8
  %796 = fdiv double %795, %794
  store double %796, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %797 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %798 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %799 = fadd double %797, %798
  %800 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %801 = fadd double %799, %800
  %802 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %803 = fadd double %801, %802
  %804 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %805 = fadd double %803, %804
  store double %805, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %806 = load double, ptr @four, align 8
  %807 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %808 = call double @llvm.fmuladd.f64(double %806, double %807, double %805)
  %809 = fdiv double %808, 1.520000e+02
  store double %809, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %810 = load double, ptr @one, align 8
  %811 = fdiv double %810, %809
  store double %811, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %812 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %813 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %814 = fadd double %812, %813
  %815 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %816 = fadd double %814, %815
  %817 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %818 = fadd double %816, %817
  %819 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %820 = fadd double %818, %819
  store double %820, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %821 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %822 = fadd double %820, %821
  %823 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %824 = fadd double %822, %823
  %825 = fdiv double %824, 1.460000e+02
  store double %825, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %826 = load double, ptr @one, align 8
  %827 = fdiv double %826, %825
  store double %827, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %828 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %829 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %830 = fadd double %828, %829
  %831 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %832 = fadd double %830, %831
  %833 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %834 = fadd double %832, %833
  %835 = fdiv double %834, 9.100000e+01
  store double %835, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %836 = load double, ptr @one, align 8
  %837 = fdiv double %836, %835
  store double %837, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar22 = call i32 @putchar(i32 10)
  %838 = load i32, ptr %9, align 4
  %839 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %838) #4
  %840 = load double, ptr @nulltime, align 8
  %841 = fmul double %840, 1.000000e-30
  %842 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %841) #4
  %843 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %844 = fmul double %843, 1.000000e-30
  %845 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %844) #4
  %846 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %847 = fmul double %846, 1.000000e-30
  %848 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %847) #4
  %849 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %850 = fmul double %849, 1.000000e-30
  %851 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %850) #4
  %852 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %853 = fmul double %852, 1.000000e-30
  %854 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %853) #4
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
