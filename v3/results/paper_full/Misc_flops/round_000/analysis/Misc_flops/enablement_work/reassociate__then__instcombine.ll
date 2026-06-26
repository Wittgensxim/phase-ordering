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

14:                                               ; preds = %59, %0
  %15 = load double, ptr @sa, align 8
  %16 = load double, ptr @TLimit, align 8
  %17 = fcmp olt double %15, %16
  br i1 %17, label %18, label %60

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

25:                                               ; preds = %49, %18
  %storemerge = phi i32 [ 1, %18 ], [ %51, %49 ]
  store i32 %storemerge, ptr %8, align 4
  %26 = load i32, ptr %10, align 4
  %.not.not = icmp slt i32 %storemerge, %26
  br i1 %.not.not, label %27, label %52

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
  br label %49

49:                                               ; preds = %27
  %50 = load i32, ptr %8, align 4
  %51 = add nsw i32 %50, 1
  br label %25, !llvm.loop !7

52:                                               ; preds = %25
  %53 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %54 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %54, ptr @sa, align 8
  %55 = load i32, ptr %10, align 4
  %56 = load i32, ptr %7, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %60

59:                                               ; preds = %52
  br label %14, !llvm.loop !9

60:                                               ; preds = %58, %14
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %61 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %62

62:                                               ; preds = %65, %60
  %storemerge3 = phi i32 [ 1, %60 ], [ %67, %65 ]
  store i32 %storemerge3, ptr %8, align 4
  %63 = load i32, ptr %10, align 4
  %.not.not4 = icmp slt i32 %storemerge3, %63
  br i1 %.not.not4, label %64, label %68

64:                                               ; preds = %62
  br label %65

65:                                               ; preds = %64
  %66 = load i32, ptr %8, align 4
  %67 = add nsw i32 %66, 1
  br label %62, !llvm.loop !10

68:                                               ; preds = %62
  %69 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %70 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %71 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %72 = fmul double %70, %71
  %73 = fcmp olt double %72, 0.000000e+00
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %74, %68
  %storemerge5 = phi double [ 0.000000e+00, %74 ], [ %72, %68 ]
  store double %storemerge5, ptr @nulltime, align 8
  %76 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %77 = load double, ptr @sa, align 8
  %78 = fneg double %storemerge5
  %79 = call double @llvm.fmuladd.f64(double %76, double %77, double %78)
  store double %79, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %80 = load double, ptr @D1, align 8
  %81 = load double, ptr @D2, align 8
  %82 = fadd double %80, %81
  %83 = load double, ptr @D3, align 8
  %84 = fadd double %82, %83
  %85 = load double, ptr @one, align 8
  %86 = fadd double %85, %80
  %87 = load double, ptr @E2, align 8
  %88 = fadd double %86, %87
  %89 = load double, ptr @E3, align 8
  %90 = fadd double %88, %89
  %91 = fdiv double %84, %90
  store double %91, ptr @sa, align 8
  %92 = load double, ptr @D1, align 8
  store double %92, ptr @sb, align 8
  %93 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %94 = fdiv double %93, 1.400000e+01
  store double %94, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %95 = load double, ptr %5, align 8
  %96 = load double, ptr @sa, align 8
  %97 = fadd double %96, %92
  %98 = load double, ptr @two, align 8
  %99 = load double, ptr %1, align 8
  %100 = call double @llvm.fmuladd.f64(double %98, double %99, double %97)
  %101 = fmul double %95, %100
  %102 = fdiv double %101, %98
  store double %102, ptr @sa, align 8
  %103 = load double, ptr @one, align 8
  %104 = fdiv double %103, %102
  store double %104, ptr @sb, align 8
  %105 = fptosi double %104 to i32
  %106 = mul nsw i32 %105, 40000
  %107 = sitofp i32 %106 to double
  %108 = load double, ptr @scale, align 8
  %109 = fdiv double %107, %108
  %110 = fptosi double %109 to i32
  store i32 %110, ptr %10, align 4
  %111 = load double, ptr @sb, align 8
  %112 = fadd double %111, -2.520000e+01
  store double %112, ptr @sc, align 8
  %113 = load double, ptr @one, align 8
  %114 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %115 = fdiv double %113, %114
  store double %115, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %116 = fmul double %112, 1.000000e-30
  %117 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %118 = fmul double %117, 1.000000e-30
  %119 = fmul double %115, 1.000000e-30
  %120 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %116, double noundef %118, double noundef %119) #4
  %121 = load i32, ptr %10, align 4
  store i32 %121, ptr %9, align 4
  %122 = load double, ptr @five, align 8
  %123 = fneg double %122
  store double %123, ptr %1, align 8
  %124 = load double, ptr @one, align 8
  %125 = fneg double %124
  store double %125, ptr @sa, align 8
  %126 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %127

127:                                              ; preds = %134, %75
  %storemerge6 = phi i32 [ 1, %75 ], [ %136, %134 ]
  store i32 %storemerge6, ptr %8, align 4
  %128 = load i32, ptr %9, align 4
  %.not = icmp sgt i32 %storemerge6, %128
  br i1 %.not, label %137, label %129

129:                                              ; preds = %127
  %130 = load double, ptr %1, align 8
  %131 = fneg double %130
  store double %131, ptr %1, align 8
  %132 = load double, ptr @sa, align 8
  %133 = fsub double %132, %130
  store double %133, ptr @sa, align 8
  br label %134

134:                                              ; preds = %129
  %135 = load i32, ptr %8, align 4
  %136 = add nsw i32 %135, 1
  br label %127, !llvm.loop !11

137:                                              ; preds = %127
  %138 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %139 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %140 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %141 = fmul double %139, %140
  %142 = fcmp olt double %141, 0.000000e+00
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  br label %144

144:                                              ; preds = %143, %137
  %storemerge7 = phi double [ 0.000000e+00, %143 ], [ %141, %137 ]
  store double %storemerge7, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %145 = load i32, ptr %9, align 4
  %146 = sitofp i32 %145 to double
  store double %146, ptr @sc, align 8
  %147 = load double, ptr @sa, align 8
  store double %147, ptr %2, align 8
  store double 0.000000e+00, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  %148 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %149

149:                                              ; preds = %171, %144
  %storemerge8 = phi i32 [ 1, %144 ], [ %173, %171 ]
  store i32 %storemerge8, ptr %8, align 4
  %150 = load i32, ptr %9, align 4
  %.not9 = icmp sgt i32 %storemerge8, %150
  br i1 %.not9, label %174, label %151

151:                                              ; preds = %149
  %152 = load double, ptr %1, align 8
  %153 = fneg double %152
  store double %153, ptr %1, align 8
  %154 = load double, ptr @sa, align 8
  %155 = fsub double %154, %152
  store double %155, ptr @sa, align 8
  %156 = load double, ptr %2, align 8
  %157 = load double, ptr @two, align 8
  %158 = fadd double %156, %157
  store double %158, ptr %2, align 8
  %159 = load double, ptr %5, align 8
  %160 = load double, ptr %1, align 8
  %161 = fsub double %160, %158
  %162 = fadd double %159, %161
  store double %162, ptr %5, align 8
  %163 = load double, ptr %3, align 8
  %164 = load double, ptr %2, align 8
  %165 = fneg double %160
  %166 = call double @llvm.fmuladd.f64(double %165, double %164, double %163)
  store double %166, ptr %3, align 8
  %167 = load double, ptr %4, align 8
  %168 = load double, ptr %1, align 8
  %169 = fdiv double %168, %164
  %170 = fadd double %167, %169
  store double %170, ptr %4, align 8
  br label %171

171:                                              ; preds = %151
  %172 = load i32, ptr %8, align 4
  %173 = add nsw i32 %172, 1
  br label %149, !llvm.loop !12

174:                                              ; preds = %149
  %175 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %176 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %177 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %178 = fmul double %176, %177
  store double %178, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %179 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %180 = fsub double %178, %179
  %181 = fdiv double %180, 7.000000e+00
  store double %181, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %182 = load double, ptr @sa, align 8
  %183 = load double, ptr %5, align 8
  %184 = fmul double %182, %183
  %185 = load double, ptr @sc, align 8
  %186 = fdiv double %184, %185
  %187 = fptosi double %186 to i32
  store i32 %187, ptr %9, align 4
  %188 = load double, ptr @four, align 8
  %189 = load double, ptr %4, align 8
  %190 = fmul double %188, %189
  %191 = load double, ptr @five, align 8
  %192 = fdiv double %190, %191
  store double %192, ptr @sa, align 8
  %193 = load double, ptr %3, align 8
  %194 = fdiv double %191, %193
  %195 = fadd double %192, %194
  store double %195, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %196 = fmul double %193, %193
  %197 = fmul double %196, %193
  %198 = fdiv double 3.125000e+01, %197
  %199 = fsub double %195, %198
  store double %199, ptr @piprg, align 8
  %200 = load double, ptr @piref, align 8
  %201 = fsub double %199, %200
  store double %201, ptr @pierr, align 8
  %202 = load double, ptr @one, align 8
  %203 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %204 = fdiv double %202, %203
  store double %204, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %205 = fmul double %201, 1.000000e-30
  %206 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %207 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %208 = fsub double %206, %207
  %209 = fmul double %208, 1.000000e-30
  %210 = fmul double %204, 1.000000e-30
  %211 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %205, double noundef %209, double noundef %210) #4
  %212 = load double, ptr @piref, align 8
  %213 = load double, ptr @three, align 8
  %214 = load i32, ptr %9, align 4
  %215 = sitofp i32 %214 to double
  %216 = fmul double %213, %215
  %217 = fdiv double %212, %216
  store double %217, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %218 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %219

219:                                              ; preds = %247, %174
  %storemerge10 = phi i32 [ 1, %174 ], [ %249, %247 ]
  store i32 %storemerge10, ptr %8, align 4
  %220 = load i32, ptr %9, align 4
  %.not11.not = icmp slt i32 %storemerge10, %220
  br i1 %.not11.not, label %221, label %250

221:                                              ; preds = %219
  %222 = load double, ptr %3, align 8
  %223 = load double, ptr @one, align 8
  %224 = fadd double %222, %223
  store double %224, ptr %3, align 8
  %225 = load double, ptr %5, align 8
  %226 = fmul double %224, %225
  store double %226, ptr %2, align 8
  %227 = fmul double %226, %226
  store double %227, ptr %4, align 8
  %228 = load double, ptr %1, align 8
  %229 = load double, ptr @A6, align 8
  %230 = load double, ptr @A5, align 8
  %231 = fneg double %230
  %232 = call double @llvm.fmuladd.f64(double %229, double %227, double %231)
  %233 = load double, ptr @A4, align 8
  %234 = call double @llvm.fmuladd.f64(double %232, double %227, double %233)
  %235 = load double, ptr %4, align 8
  %236 = load double, ptr @A3, align 8
  %237 = fneg double %236
  %238 = call double @llvm.fmuladd.f64(double %234, double %235, double %237)
  %239 = load double, ptr @A2, align 8
  %240 = call double @llvm.fmuladd.f64(double %238, double %235, double %239)
  %241 = load double, ptr @A1, align 8
  %242 = call double @llvm.fmuladd.f64(double %240, double %235, double %241)
  %243 = load double, ptr %4, align 8
  %244 = load double, ptr @one, align 8
  %245 = call double @llvm.fmuladd.f64(double %242, double %243, double %244)
  %246 = call double @llvm.fmuladd.f64(double %226, double %245, double %228)
  store double %246, ptr %1, align 8
  br label %247

247:                                              ; preds = %221
  %248 = load i32, ptr %8, align 4
  %249 = add nsw i32 %248, 1
  br label %219, !llvm.loop !13

250:                                              ; preds = %219
  %251 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %252 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %253 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %254 = load double, ptr @nulltime, align 8
  %255 = fneg double %254
  %256 = call double @llvm.fmuladd.f64(double %252, double %253, double %255)
  store double %256, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %257 = load double, ptr @piref, align 8
  %258 = load double, ptr @three, align 8
  %259 = fdiv double %257, %258
  store double %259, ptr %2, align 8
  %260 = fmul double %259, %259
  store double %260, ptr %4, align 8
  %261 = load double, ptr @A6, align 8
  %262 = load double, ptr @A5, align 8
  %263 = fneg double %262
  %264 = call double @llvm.fmuladd.f64(double %261, double %260, double %263)
  %265 = load double, ptr @A4, align 8
  %266 = call double @llvm.fmuladd.f64(double %264, double %260, double %265)
  %267 = load double, ptr %4, align 8
  %268 = load double, ptr @A3, align 8
  %269 = fneg double %268
  %270 = call double @llvm.fmuladd.f64(double %266, double %267, double %269)
  %271 = load double, ptr @A2, align 8
  %272 = call double @llvm.fmuladd.f64(double %270, double %267, double %271)
  %273 = load double, ptr @A1, align 8
  %274 = call double @llvm.fmuladd.f64(double %272, double %267, double %273)
  %275 = load double, ptr %4, align 8
  %276 = load double, ptr @one, align 8
  %277 = call double @llvm.fmuladd.f64(double %274, double %275, double %276)
  %278 = fmul double %259, %277
  store double %278, ptr @sa, align 8
  %279 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %280 = fdiv double %279, 1.700000e+01
  store double %280, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %281 = load double, ptr %5, align 8
  %282 = load double, ptr @two, align 8
  %283 = load double, ptr %1, align 8
  %284 = call double @llvm.fmuladd.f64(double %282, double %283, double %278)
  %285 = fmul double %281, %284
  %286 = fdiv double %285, %282
  store double %286, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %287 = fadd double %286, -5.000000e-01
  store double %287, ptr @sc, align 8
  %288 = load double, ptr @one, align 8
  %289 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %290 = fdiv double %288, %289
  store double %290, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %291 = fmul double %287, 1.000000e-30
  %292 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %293 = fmul double %292, 1.000000e-30
  %294 = fmul double %290, 1.000000e-30
  %295 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %291, double noundef %293, double noundef %294) #4
  %296 = load double, ptr @A3, align 8
  %297 = fneg double %296
  store double %297, ptr @A3, align 8
  %298 = load double, ptr @A5, align 8
  %299 = fneg double %298
  store double %299, ptr @A5, align 8
  %300 = load double, ptr @piref, align 8
  %301 = load double, ptr @three, align 8
  %302 = load i32, ptr %9, align 4
  %303 = sitofp i32 %302 to double
  %304 = fmul double %301, %303
  %305 = fdiv double %300, %304
  store double %305, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %306 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %307

307:                                              ; preds = %330, %250
  %storemerge12 = phi i32 [ 1, %250 ], [ %332, %330 ]
  store i32 %storemerge12, ptr %8, align 4
  %308 = load i32, ptr %9, align 4
  %.not13.not = icmp slt i32 %storemerge12, %308
  br i1 %.not13.not, label %309, label %333

309:                                              ; preds = %307
  %310 = load i32, ptr %8, align 4
  %311 = sitofp i32 %310 to double
  %312 = load double, ptr %5, align 8
  %313 = fmul double %312, %311
  store double %313, ptr %2, align 8
  %314 = fmul double %313, %313
  store double %314, ptr %4, align 8
  %315 = load double, ptr %1, align 8
  %316 = load double, ptr @B6, align 8
  %317 = load double, ptr @B5, align 8
  %318 = call double @llvm.fmuladd.f64(double %316, double %314, double %317)
  %319 = load double, ptr @B4, align 8
  %320 = call double @llvm.fmuladd.f64(double %314, double %318, double %319)
  %321 = load double, ptr @B3, align 8
  %322 = call double @llvm.fmuladd.f64(double %314, double %320, double %321)
  %323 = load double, ptr @B2, align 8
  %324 = call double @llvm.fmuladd.f64(double %314, double %322, double %323)
  %325 = load double, ptr @B1, align 8
  %326 = call double @llvm.fmuladd.f64(double %314, double %324, double %325)
  %327 = call double @llvm.fmuladd.f64(double %314, double %326, double %315)
  %328 = load double, ptr @one, align 8
  %329 = fadd double %328, %327
  store double %329, ptr %1, align 8
  br label %330

330:                                              ; preds = %309
  %331 = load i32, ptr %8, align 4
  %332 = add nsw i32 %331, 1
  br label %307, !llvm.loop !14

333:                                              ; preds = %307
  %334 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %335 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %336 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %337 = load double, ptr @nulltime, align 8
  %338 = fneg double %337
  %339 = call double @llvm.fmuladd.f64(double %335, double %336, double %338)
  store double %339, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %340 = load double, ptr @piref, align 8
  %341 = load double, ptr @three, align 8
  %342 = fdiv double %340, %341
  store double %342, ptr %2, align 8
  %343 = fmul double %342, %342
  store double %343, ptr %4, align 8
  %344 = load double, ptr @B6, align 8
  %345 = load double, ptr @B5, align 8
  %346 = call double @llvm.fmuladd.f64(double %344, double %343, double %345)
  %347 = load double, ptr @B4, align 8
  %348 = call double @llvm.fmuladd.f64(double %343, double %346, double %347)
  %349 = load double, ptr @B3, align 8
  %350 = call double @llvm.fmuladd.f64(double %343, double %348, double %349)
  %351 = load double, ptr @B2, align 8
  %352 = call double @llvm.fmuladd.f64(double %343, double %350, double %351)
  %353 = load double, ptr @B1, align 8
  %354 = call double @llvm.fmuladd.f64(double %343, double %352, double %353)
  %355 = load double, ptr @one, align 8
  %356 = call double @llvm.fmuladd.f64(double %343, double %354, double %355)
  store double %356, ptr @sa, align 8
  %357 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %358 = fdiv double %357, 1.500000e+01
  store double %358, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %359 = load double, ptr %5, align 8
  %360 = load double, ptr @one, align 8
  %361 = fadd double %356, %360
  %362 = load double, ptr @two, align 8
  %363 = load double, ptr %1, align 8
  %364 = call double @llvm.fmuladd.f64(double %362, double %363, double %361)
  %365 = fmul double %359, %364
  %366 = fdiv double %365, %362
  store double %366, ptr @sa, align 8
  %367 = load double, ptr @piref, align 8
  %368 = load double, ptr @three, align 8
  %369 = fdiv double %367, %368
  store double %369, ptr %2, align 8
  %370 = fmul double %369, %369
  store double %370, ptr %4, align 8
  %371 = load double, ptr @A6, align 8
  %372 = load double, ptr @A5, align 8
  %373 = call double @llvm.fmuladd.f64(double %371, double %370, double %372)
  %374 = load double, ptr @A4, align 8
  %375 = call double @llvm.fmuladd.f64(double %373, double %370, double %374)
  %376 = load double, ptr @A3, align 8
  %377 = call double @llvm.fmuladd.f64(double %375, double %370, double %376)
  %378 = load double, ptr %4, align 8
  %379 = load double, ptr @A2, align 8
  %380 = call double @llvm.fmuladd.f64(double %377, double %378, double %379)
  %381 = load double, ptr @A1, align 8
  %382 = call double @llvm.fmuladd.f64(double %380, double %378, double %381)
  %383 = load double, ptr @A0, align 8
  %384 = call double @llvm.fmuladd.f64(double %382, double %378, double %383)
  %385 = fmul double %369, %384
  store double %385, ptr @sb, align 8
  %386 = load double, ptr @sa, align 8
  %387 = fsub double %386, %385
  store double %387, ptr @sc, align 8
  %388 = load double, ptr @one, align 8
  %389 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %390 = fdiv double %388, %389
  store double %390, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %391 = fmul double %387, 1.000000e-30
  %392 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %393 = fmul double %392, 1.000000e-30
  %394 = fmul double %390, 1.000000e-30
  %395 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %391, double noundef %393, double noundef %394) #4
  %396 = load double, ptr @piref, align 8
  %397 = load double, ptr @three, align 8
  %398 = load i32, ptr %9, align 4
  %399 = sitofp i32 %398 to double
  %400 = fmul double %397, %399
  %401 = fdiv double %396, %400
  store double %401, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %402 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %403

403:                                              ; preds = %443, %333
  %storemerge14 = phi i32 [ 1, %333 ], [ %445, %443 ]
  store i32 %storemerge14, ptr %8, align 4
  %404 = load i32, ptr %9, align 4
  %.not15.not = icmp slt i32 %storemerge14, %404
  br i1 %.not15.not, label %405, label %446

405:                                              ; preds = %403
  %406 = load i32, ptr %8, align 4
  %407 = sitofp i32 %406 to double
  %408 = load double, ptr %5, align 8
  %409 = fmul double %408, %407
  store double %409, ptr %2, align 8
  %410 = fmul double %409, %409
  store double %410, ptr %4, align 8
  %411 = load double, ptr @A6, align 8
  %412 = load double, ptr @A5, align 8
  %413 = call double @llvm.fmuladd.f64(double %411, double %410, double %412)
  %414 = load double, ptr @A4, align 8
  %415 = call double @llvm.fmuladd.f64(double %413, double %410, double %414)
  %416 = load double, ptr @A3, align 8
  %417 = call double @llvm.fmuladd.f64(double %415, double %410, double %416)
  %418 = load double, ptr %4, align 8
  %419 = load double, ptr @A2, align 8
  %420 = call double @llvm.fmuladd.f64(double %417, double %418, double %419)
  %421 = load double, ptr @A1, align 8
  %422 = call double @llvm.fmuladd.f64(double %420, double %418, double %421)
  %423 = load double, ptr @one, align 8
  %424 = call double @llvm.fmuladd.f64(double %422, double %418, double %423)
  %425 = fmul double %409, %424
  store double %425, ptr %3, align 8
  %426 = load double, ptr %1, align 8
  %427 = load double, ptr %4, align 8
  %428 = load double, ptr @B6, align 8
  %429 = load double, ptr @B5, align 8
  %430 = call double @llvm.fmuladd.f64(double %428, double %427, double %429)
  %431 = load double, ptr @B4, align 8
  %432 = call double @llvm.fmuladd.f64(double %427, double %430, double %431)
  %433 = load double, ptr @B3, align 8
  %434 = call double @llvm.fmuladd.f64(double %427, double %432, double %433)
  %435 = load double, ptr @B2, align 8
  %436 = call double @llvm.fmuladd.f64(double %427, double %434, double %435)
  %437 = load double, ptr @B1, align 8
  %438 = call double @llvm.fmuladd.f64(double %427, double %436, double %437)
  %439 = load double, ptr @one, align 8
  %440 = call double @llvm.fmuladd.f64(double %427, double %438, double %439)
  %441 = fdiv double %425, %440
  %442 = fadd double %426, %441
  store double %442, ptr %1, align 8
  br label %443

443:                                              ; preds = %405
  %444 = load i32, ptr %8, align 4
  %445 = add nsw i32 %444, 1
  br label %403, !llvm.loop !15

446:                                              ; preds = %403
  %447 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %448 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %449 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %450 = load double, ptr @nulltime, align 8
  %451 = fneg double %450
  %452 = call double @llvm.fmuladd.f64(double %448, double %449, double %451)
  store double %452, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %453 = load double, ptr @piref, align 8
  %454 = load double, ptr @three, align 8
  %455 = fdiv double %453, %454
  store double %455, ptr %2, align 8
  %456 = fmul double %455, %455
  store double %456, ptr %4, align 8
  %457 = load double, ptr @A6, align 8
  %458 = load double, ptr @A5, align 8
  %459 = call double @llvm.fmuladd.f64(double %457, double %456, double %458)
  %460 = load double, ptr @A4, align 8
  %461 = call double @llvm.fmuladd.f64(double %459, double %456, double %460)
  %462 = load double, ptr @A3, align 8
  %463 = call double @llvm.fmuladd.f64(double %461, double %456, double %462)
  %464 = load double, ptr %4, align 8
  %465 = load double, ptr @A2, align 8
  %466 = call double @llvm.fmuladd.f64(double %463, double %464, double %465)
  %467 = load double, ptr @A1, align 8
  %468 = call double @llvm.fmuladd.f64(double %466, double %464, double %467)
  %469 = load double, ptr @one, align 8
  %470 = call double @llvm.fmuladd.f64(double %468, double %464, double %469)
  %471 = fmul double %455, %470
  store double %471, ptr @sa, align 8
  %472 = load double, ptr %4, align 8
  %473 = load double, ptr @B6, align 8
  %474 = load double, ptr @B5, align 8
  %475 = call double @llvm.fmuladd.f64(double %473, double %472, double %474)
  %476 = load double, ptr @B4, align 8
  %477 = call double @llvm.fmuladd.f64(double %472, double %475, double %476)
  %478 = load double, ptr @B3, align 8
  %479 = call double @llvm.fmuladd.f64(double %472, double %477, double %478)
  %480 = load double, ptr @B2, align 8
  %481 = call double @llvm.fmuladd.f64(double %472, double %479, double %480)
  %482 = load double, ptr @B1, align 8
  %483 = call double @llvm.fmuladd.f64(double %472, double %481, double %482)
  %484 = load double, ptr @one, align 8
  %485 = call double @llvm.fmuladd.f64(double %472, double %483, double %484)
  store double %485, ptr @sb, align 8
  %486 = load double, ptr @sa, align 8
  %487 = fdiv double %486, %485
  store double %487, ptr @sa, align 8
  %488 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %489 = fdiv double %488, 2.900000e+01
  store double %489, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %490 = load double, ptr %5, align 8
  %491 = load double, ptr @two, align 8
  %492 = load double, ptr %1, align 8
  %493 = call double @llvm.fmuladd.f64(double %491, double %492, double %487)
  %494 = fmul double %490, %493
  %495 = fdiv double %494, %491
  store double %495, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %496 = fadd double %495, f0xBFE62E42FEFA39EF
  store double %496, ptr @sc, align 8
  %497 = load double, ptr @one, align 8
  %498 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %499 = fdiv double %497, %498
  store double %499, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %500 = fmul double %496, 1.000000e-30
  %501 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %502 = fmul double %501, 1.000000e-30
  %503 = fmul double %499, 1.000000e-30
  %504 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %500, double noundef %502, double noundef %503) #4
  %505 = load double, ptr @piref, align 8
  %506 = load double, ptr @four, align 8
  %507 = load i32, ptr %9, align 4
  %508 = sitofp i32 %507 to double
  %509 = fmul double %506, %508
  %510 = fdiv double %505, %509
  store double %510, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %511 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %512

512:                                              ; preds = %551, %446
  %storemerge16 = phi i32 [ 1, %446 ], [ %553, %551 ]
  store i32 %storemerge16, ptr %8, align 4
  %513 = load i32, ptr %9, align 4
  %.not17.not = icmp slt i32 %storemerge16, %513
  br i1 %.not17.not, label %514, label %554

514:                                              ; preds = %512
  %515 = load i32, ptr %8, align 4
  %516 = sitofp i32 %515 to double
  %517 = load double, ptr %5, align 8
  %518 = fmul double %517, %516
  store double %518, ptr %2, align 8
  %519 = fmul double %518, %518
  store double %519, ptr %4, align 8
  %520 = load double, ptr @A6, align 8
  %521 = load double, ptr @A5, align 8
  %522 = call double @llvm.fmuladd.f64(double %520, double %519, double %521)
  %523 = load double, ptr @A4, align 8
  %524 = call double @llvm.fmuladd.f64(double %522, double %519, double %523)
  %525 = load double, ptr @A3, align 8
  %526 = call double @llvm.fmuladd.f64(double %524, double %519, double %525)
  %527 = load double, ptr %4, align 8
  %528 = load double, ptr @A2, align 8
  %529 = call double @llvm.fmuladd.f64(double %526, double %527, double %528)
  %530 = load double, ptr @A1, align 8
  %531 = call double @llvm.fmuladd.f64(double %529, double %527, double %530)
  %532 = load double, ptr @one, align 8
  %533 = call double @llvm.fmuladd.f64(double %531, double %527, double %532)
  %534 = fmul double %518, %533
  store double %534, ptr %3, align 8
  %535 = load double, ptr %1, align 8
  %536 = load double, ptr %4, align 8
  %537 = load double, ptr @B6, align 8
  %538 = load double, ptr @B5, align 8
  %539 = call double @llvm.fmuladd.f64(double %537, double %536, double %538)
  %540 = load double, ptr @B4, align 8
  %541 = call double @llvm.fmuladd.f64(double %536, double %539, double %540)
  %542 = load double, ptr @B3, align 8
  %543 = call double @llvm.fmuladd.f64(double %536, double %541, double %542)
  %544 = load double, ptr @B2, align 8
  %545 = call double @llvm.fmuladd.f64(double %536, double %543, double %544)
  %546 = load double, ptr @B1, align 8
  %547 = call double @llvm.fmuladd.f64(double %536, double %545, double %546)
  %548 = load double, ptr @one, align 8
  %549 = call double @llvm.fmuladd.f64(double %536, double %547, double %548)
  %550 = call double @llvm.fmuladd.f64(double %534, double %549, double %535)
  store double %550, ptr %1, align 8
  br label %551

551:                                              ; preds = %514
  %552 = load i32, ptr %8, align 4
  %553 = add nsw i32 %552, 1
  br label %512, !llvm.loop !16

554:                                              ; preds = %512
  %555 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %556 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %557 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %558 = load double, ptr @nulltime, align 8
  %559 = fneg double %558
  %560 = call double @llvm.fmuladd.f64(double %556, double %557, double %559)
  store double %560, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %561 = load double, ptr @piref, align 8
  %562 = load double, ptr @four, align 8
  %563 = fdiv double %561, %562
  store double %563, ptr %2, align 8
  %564 = fmul double %563, %563
  store double %564, ptr %4, align 8
  %565 = load double, ptr @A6, align 8
  %566 = load double, ptr @A5, align 8
  %567 = call double @llvm.fmuladd.f64(double %565, double %564, double %566)
  %568 = load double, ptr @A4, align 8
  %569 = call double @llvm.fmuladd.f64(double %567, double %564, double %568)
  %570 = load double, ptr @A3, align 8
  %571 = call double @llvm.fmuladd.f64(double %569, double %564, double %570)
  %572 = load double, ptr %4, align 8
  %573 = load double, ptr @A2, align 8
  %574 = call double @llvm.fmuladd.f64(double %571, double %572, double %573)
  %575 = load double, ptr @A1, align 8
  %576 = call double @llvm.fmuladd.f64(double %574, double %572, double %575)
  %577 = load double, ptr @one, align 8
  %578 = call double @llvm.fmuladd.f64(double %576, double %572, double %577)
  %579 = fmul double %563, %578
  store double %579, ptr @sa, align 8
  %580 = load double, ptr %4, align 8
  %581 = load double, ptr @B6, align 8
  %582 = load double, ptr @B5, align 8
  %583 = call double @llvm.fmuladd.f64(double %581, double %580, double %582)
  %584 = load double, ptr @B4, align 8
  %585 = call double @llvm.fmuladd.f64(double %580, double %583, double %584)
  %586 = load double, ptr @B3, align 8
  %587 = call double @llvm.fmuladd.f64(double %580, double %585, double %586)
  %588 = load double, ptr @B2, align 8
  %589 = call double @llvm.fmuladd.f64(double %580, double %587, double %588)
  %590 = load double, ptr @B1, align 8
  %591 = call double @llvm.fmuladd.f64(double %580, double %589, double %590)
  %592 = load double, ptr @one, align 8
  %593 = call double @llvm.fmuladd.f64(double %580, double %591, double %592)
  store double %593, ptr @sb, align 8
  %594 = load double, ptr @sa, align 8
  %595 = fmul double %594, %593
  store double %595, ptr @sa, align 8
  %596 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %597 = fdiv double %596, 2.900000e+01
  store double %597, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %598 = load double, ptr %5, align 8
  %599 = load double, ptr @two, align 8
  %600 = load double, ptr %1, align 8
  %601 = call double @llvm.fmuladd.f64(double %599, double %600, double %595)
  %602 = fmul double %598, %601
  %603 = fdiv double %602, %599
  store double %603, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %604 = fadd double %603, -2.500000e-01
  store double %604, ptr @sc, align 8
  %605 = load double, ptr @one, align 8
  %606 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %607 = fdiv double %605, %606
  store double %607, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %608 = fmul double %604, 1.000000e-30
  %609 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %610 = fmul double %609, 1.000000e-30
  %611 = fmul double %607, 1.000000e-30
  %612 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %608, double noundef %610, double noundef %611) #4
  store double 0.000000e+00, ptr %1, align 8
  %613 = load double, ptr @one, align 8
  store double %613, ptr %4, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %614 = load i32, ptr %9, align 4
  %615 = sitofp i32 %614 to double
  %616 = fdiv double f0x40599541F7F192A4, %615
  store double %616, ptr %3, align 8
  %617 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %618

618:                                              ; preds = %640, %554
  %storemerge18 = phi i32 [ 1, %554 ], [ %642, %640 ]
  store i32 %storemerge18, ptr %8, align 4
  %619 = load i32, ptr %9, align 4
  %.not19.not = icmp slt i32 %storemerge18, %619
  br i1 %.not19.not, label %620, label %643

620:                                              ; preds = %618
  %621 = load i32, ptr %8, align 4
  %622 = sitofp i32 %621 to double
  %623 = load double, ptr %3, align 8
  %624 = fmul double %623, %622
  store double %624, ptr %5, align 8
  %625 = fmul double %624, %624
  store double %625, ptr %2, align 8
  %626 = load double, ptr %1, align 8
  %627 = load double, ptr %4, align 8
  %628 = fadd double %624, %627
  %629 = fdiv double %627, %628
  %630 = fsub double %626, %629
  %631 = load double, ptr %5, align 8
  %632 = load double, ptr %2, align 8
  %633 = fadd double %632, %627
  %634 = fdiv double %631, %633
  %635 = fsub double %630, %634
  %636 = load double, ptr %4, align 8
  %637 = call double @llvm.fmuladd.f64(double %631, double %632, double %636)
  %638 = fdiv double %632, %637
  %639 = fsub double %635, %638
  store double %639, ptr %1, align 8
  br label %640

640:                                              ; preds = %620
  %641 = load i32, ptr %8, align 4
  %642 = add nsw i32 %641, 1
  br label %618, !llvm.loop !17

643:                                              ; preds = %618
  %644 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %645 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %646 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %647 = load double, ptr @nulltime, align 8
  %648 = fneg double %647
  %649 = call double @llvm.fmuladd.f64(double %645, double %646, double %648)
  store double %649, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %650 = fdiv double %649, 1.200000e+01
  store double %650, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %651 = load double, ptr @sa, align 8
  store double %651, ptr %5, align 8
  %652 = fmul double %651, %651
  store double %652, ptr %2, align 8
  %653 = load double, ptr %4, align 8
  %654 = fneg double %653
  %655 = fadd double %651, %653
  %656 = fdiv double %653, %655
  %657 = fsub double %654, %656
  %658 = load double, ptr %5, align 8
  %659 = load double, ptr %2, align 8
  %660 = load double, ptr %4, align 8
  %661 = fadd double %659, %660
  %662 = fdiv double %658, %661
  %663 = fsub double %657, %662
  %664 = call double @llvm.fmuladd.f64(double %658, double %659, double %660)
  %665 = fdiv double %659, %664
  %666 = fsub double %663, %665
  store double %666, ptr @sa, align 8
  %667 = load double, ptr %3, align 8
  %668 = fmul double %667, 1.800000e+01
  %669 = load double, ptr @two, align 8
  %670 = load double, ptr %1, align 8
  %671 = call double @llvm.fmuladd.f64(double %669, double %670, double %666)
  %672 = fmul double %668, %671
  store double %672, ptr @sa, align 8
  %673 = fptosi double %672 to i32
  %674 = mul nsw i32 %673, -2000
  store i32 %674, ptr %9, align 4
  %675 = sitofp i32 %674 to double
  %676 = load double, ptr @scale, align 8
  %677 = fdiv double %675, %676
  %678 = fptosi double %677 to i32
  store i32 %678, ptr %9, align 4
  %679 = load double, ptr @sa, align 8
  %680 = fadd double %679, 5.002000e+02
  store double %680, ptr @sc, align 8
  %681 = load double, ptr @one, align 8
  %682 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %683 = fdiv double %681, %682
  store double %683, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %684 = fmul double %680, 1.000000e-30
  %685 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %686 = fmul double %685, 1.000000e-30
  %687 = fmul double %683, 1.000000e-30
  %688 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %684, double noundef %686, double noundef %687) #4
  %689 = load double, ptr @piref, align 8
  %690 = load double, ptr @three, align 8
  %691 = load i32, ptr %9, align 4
  %692 = sitofp i32 %691 to double
  %693 = fmul double %690, %692
  %694 = fdiv double %689, %693
  store double %694, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %695 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %696

696:                                              ; preds = %737, %643
  %storemerge20 = phi i32 [ 1, %643 ], [ %739, %737 ]
  store i32 %storemerge20, ptr %8, align 4
  %697 = load i32, ptr %9, align 4
  %.not21.not = icmp slt i32 %storemerge20, %697
  br i1 %.not21.not, label %698, label %740

698:                                              ; preds = %696
  %699 = load i32, ptr %8, align 4
  %700 = sitofp i32 %699 to double
  %701 = load double, ptr %5, align 8
  %702 = fmul double %701, %700
  store double %702, ptr %2, align 8
  %703 = fmul double %702, %702
  store double %703, ptr %4, align 8
  %704 = load double, ptr @B6, align 8
  %705 = load double, ptr @B5, align 8
  %706 = call double @llvm.fmuladd.f64(double %704, double %703, double %705)
  %707 = load double, ptr @B4, align 8
  %708 = call double @llvm.fmuladd.f64(double %703, double %706, double %707)
  %709 = load double, ptr @B3, align 8
  %710 = call double @llvm.fmuladd.f64(double %703, double %708, double %709)
  %711 = load double, ptr @B2, align 8
  %712 = call double @llvm.fmuladd.f64(double %703, double %710, double %711)
  %713 = load double, ptr @B1, align 8
  %714 = call double @llvm.fmuladd.f64(double %703, double %712, double %713)
  %715 = load double, ptr @one, align 8
  %716 = call double @llvm.fmuladd.f64(double %703, double %714, double %715)
  store double %716, ptr %3, align 8
  %717 = load double, ptr %1, align 8
  %718 = fmul double %716, %716
  %719 = load double, ptr %2, align 8
  %720 = fmul double %718, %719
  %721 = load double, ptr @A6, align 8
  %722 = load double, ptr %4, align 8
  %723 = load double, ptr @A5, align 8
  %724 = call double @llvm.fmuladd.f64(double %721, double %722, double %723)
  %725 = load double, ptr @A4, align 8
  %726 = call double @llvm.fmuladd.f64(double %724, double %722, double %725)
  %727 = load double, ptr @A3, align 8
  %728 = call double @llvm.fmuladd.f64(double %726, double %722, double %727)
  %729 = load double, ptr %4, align 8
  %730 = load double, ptr @A2, align 8
  %731 = call double @llvm.fmuladd.f64(double %728, double %729, double %730)
  %732 = load double, ptr @A1, align 8
  %733 = call double @llvm.fmuladd.f64(double %731, double %729, double %732)
  %734 = load double, ptr @one, align 8
  %735 = call double @llvm.fmuladd.f64(double %733, double %729, double %734)
  %736 = call double @llvm.fmuladd.f64(double %720, double %735, double %717)
  store double %736, ptr %1, align 8
  br label %737

737:                                              ; preds = %698
  %738 = load i32, ptr %8, align 4
  %739 = add nsw i32 %738, 1
  br label %696, !llvm.loop !18

740:                                              ; preds = %696
  %741 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %742 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %743 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %744 = load double, ptr @nulltime, align 8
  %745 = fneg double %744
  %746 = call double @llvm.fmuladd.f64(double %742, double %743, double %745)
  store double %746, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %747 = load double, ptr @piref, align 8
  %748 = load double, ptr @three, align 8
  %749 = fdiv double %747, %748
  store double %749, ptr %2, align 8
  %750 = fmul double %749, %749
  store double %750, ptr %4, align 8
  %751 = load double, ptr @A6, align 8
  %752 = load double, ptr @A5, align 8
  %753 = call double @llvm.fmuladd.f64(double %751, double %750, double %752)
  %754 = load double, ptr @A4, align 8
  %755 = call double @llvm.fmuladd.f64(double %753, double %750, double %754)
  %756 = load double, ptr @A3, align 8
  %757 = call double @llvm.fmuladd.f64(double %755, double %750, double %756)
  %758 = load double, ptr %4, align 8
  %759 = load double, ptr @A2, align 8
  %760 = call double @llvm.fmuladd.f64(double %757, double %758, double %759)
  %761 = load double, ptr @A1, align 8
  %762 = call double @llvm.fmuladd.f64(double %760, double %758, double %761)
  %763 = load double, ptr @one, align 8
  %764 = call double @llvm.fmuladd.f64(double %762, double %758, double %763)
  %765 = fmul double %749, %764
  store double %765, ptr @sa, align 8
  %766 = load double, ptr %4, align 8
  %767 = load double, ptr @B6, align 8
  %768 = load double, ptr @B5, align 8
  %769 = call double @llvm.fmuladd.f64(double %767, double %766, double %768)
  %770 = load double, ptr @B4, align 8
  %771 = call double @llvm.fmuladd.f64(double %766, double %769, double %770)
  %772 = load double, ptr @B3, align 8
  %773 = call double @llvm.fmuladd.f64(double %766, double %771, double %772)
  %774 = load double, ptr @B2, align 8
  %775 = call double @llvm.fmuladd.f64(double %766, double %773, double %774)
  %776 = load double, ptr @B1, align 8
  %777 = call double @llvm.fmuladd.f64(double %766, double %775, double %776)
  %778 = load double, ptr @one, align 8
  %779 = call double @llvm.fmuladd.f64(double %766, double %777, double %778)
  store double %779, ptr @sb, align 8
  %780 = load double, ptr @sa, align 8
  %781 = fmul double %780, %779
  %782 = fmul double %781, %779
  store double %782, ptr @sa, align 8
  %783 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %784 = fdiv double %783, 3.000000e+01
  store double %784, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %785 = load double, ptr %5, align 8
  %786 = load double, ptr @two, align 8
  %787 = load double, ptr %1, align 8
  %788 = call double @llvm.fmuladd.f64(double %786, double %787, double %782)
  %789 = fmul double %785, %788
  %790 = fdiv double %789, %786
  store double %790, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %791 = fadd double %790, f0xBFD2AAAAAAAAAAAB
  store double %791, ptr @sc, align 8
  %792 = load double, ptr @one, align 8
  %793 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %794 = fdiv double %792, %793
  store double %794, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %795 = fmul double %791, 1.000000e-30
  %796 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %797 = fmul double %796, 1.000000e-30
  %798 = fmul double %794, 1.000000e-30
  %799 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %795, double noundef %797, double noundef %798) #4
  %800 = load double, ptr @five, align 8
  %801 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %802 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %803 = fsub double %801, %802
  %804 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %805 = call double @llvm.fmuladd.f64(double %800, double %803, double %804)
  %806 = fdiv double %805, 5.200000e+01
  store double %806, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %807 = load double, ptr @one, align 8
  %808 = fdiv double %807, %806
  store double %808, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %809 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %810 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %811 = fadd double %809, %810
  %812 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %813 = fadd double %811, %812
  %814 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %815 = fadd double %813, %814
  %816 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %817 = fadd double %815, %816
  store double %817, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %818 = load double, ptr @four, align 8
  %819 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %820 = call double @llvm.fmuladd.f64(double %818, double %819, double %817)
  %821 = fdiv double %820, 1.520000e+02
  store double %821, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %822 = load double, ptr @one, align 8
  %823 = fdiv double %822, %821
  store double %823, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %824 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %825 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %826 = fadd double %824, %825
  %827 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %828 = fadd double %826, %827
  %829 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %830 = fadd double %828, %829
  %831 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %832 = fadd double %830, %831
  store double %832, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %833 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %834 = fadd double %832, %833
  %835 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %836 = fadd double %834, %835
  %837 = fdiv double %836, 1.460000e+02
  store double %837, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %838 = load double, ptr @one, align 8
  %839 = fdiv double %838, %837
  store double %839, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %840 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %841 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %842 = fadd double %840, %841
  %843 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %844 = fadd double %842, %843
  %845 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %846 = fadd double %844, %845
  %847 = fdiv double %846, 9.100000e+01
  store double %847, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %848 = load double, ptr @one, align 8
  %849 = fdiv double %848, %847
  store double %849, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar22 = call i32 @putchar(i32 10)
  %850 = load i32, ptr %9, align 4
  %851 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %850) #4
  %852 = load double, ptr @nulltime, align 8
  %853 = fmul double %852, 1.000000e-30
  %854 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %853) #4
  %855 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %856 = fmul double %855, 1.000000e-30
  %857 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %856) #4
  %858 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %859 = fmul double %858, 1.000000e-30
  %860 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %859) #4
  %861 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %862 = fmul double %861, 1.000000e-30
  %863 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %862) #4
  %864 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %865 = fmul double %864, 1.000000e-30
  %866 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %865) #4
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
