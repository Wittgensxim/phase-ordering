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

5:                                                ; preds = %38, %0
  %6 = phi double [ undef, %0 ], [ %20, %38 ]
  %7 = phi double [ undef, %0 ], [ %16, %38 ]
  %8 = phi i32 [ 15625, %0 ], [ %13, %38 ]
  %9 = phi double [ 0.000000e+00, %0 ], [ %40, %38 ]
  %10 = load double, ptr @TLimit, align 8
  %11 = fcmp olt double %9, %10
  br i1 %11, label %12, label %42

12:                                               ; preds = %5
  %13 = shl nsw i32 %8, 1
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
  %.not.not = icmp slt i32 %21, %13
  br i1 %.not.not, label %22, label %38

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
  %39 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %40 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %40, ptr @sa, align 8
  %41 = icmp eq i32 %8, 256000000
  br i1 %41, label %42, label %5, !llvm.loop !9

42:                                               ; preds = %38, %5
  %43 = phi double [ %6, %5 ], [ %20, %38 ]
  %44 = phi double [ %7, %5 ], [ %16, %38 ]
  %45 = phi i32 [ %8, %5 ], [ 512000000, %38 ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %46 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %47

47:                                               ; preds = %49, %42
  %48 = phi i32 [ %50, %49 ], [ 1, %42 ]
  %.not.not3 = icmp slt i32 %48, %45
  br i1 %.not.not3, label %49, label %51

49:                                               ; preds = %47
  %50 = add nuw nsw i32 %48, 1
  br label %47, !llvm.loop !10

51:                                               ; preds = %47
  %52 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %53 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %54 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %55 = fmul double %53, %54
  %56 = fcmp olt double %55, 0.000000e+00
  %57 = select i1 %56, double 0.000000e+00, double %55
  store double %57, ptr @nulltime, align 8
  %58 = load double, ptr @sa, align 8
  %59 = fneg double %57
  %60 = call double @llvm.fmuladd.f64(double %53, double %58, double %59)
  store double %60, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %61 = load double, ptr @D1, align 8
  %62 = load double, ptr @D2, align 8
  %63 = fadd double %61, %62
  %64 = load double, ptr @D3, align 8
  %65 = fadd double %63, %64
  %66 = load double, ptr @one, align 8
  %67 = fadd double %66, %61
  %68 = load double, ptr @E2, align 8
  %69 = fadd double %67, %68
  %70 = load double, ptr @E3, align 8
  %71 = fadd double %69, %70
  %72 = fdiv double %65, %71
  store double %72, ptr @sa, align 8
  store double %61, ptr @sb, align 8
  %73 = fdiv double %60, 1.400000e+01
  store double %73, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %74 = fadd double %72, %61
  %75 = load double, ptr @two, align 8
  %76 = call double @llvm.fmuladd.f64(double %75, double %43, double %74)
  %77 = fmul double %44, %76
  %78 = fdiv double %77, %75
  store double %78, ptr @sa, align 8
  %79 = fdiv double %66, %78
  store double %79, ptr @sb, align 8
  %80 = fptosi double %79 to i32
  %81 = mul nsw i32 %80, 40000
  %82 = sitofp i32 %81 to double
  %83 = load double, ptr @scale, align 8
  %84 = fdiv double %82, %83
  %85 = fptosi double %84 to i32
  %86 = fadd double %79, -2.520000e+01
  store double %86, ptr @sc, align 8
  %87 = fdiv double %66, %73
  store double %87, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %88 = fmul double %86, 1.000000e-30
  %89 = fmul double %60, 1.000000e-30
  %90 = fmul double %87, 1.000000e-30
  %91 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %88, double noundef %89, double noundef %90) #4
  store i32 %85, ptr %2, align 4
  %92 = load double, ptr @five, align 8
  %93 = fneg double %92
  %94 = load double, ptr @one, align 8
  %95 = fneg double %94
  store double %95, ptr @sa, align 8
  %96 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %97

97:                                               ; preds = %100, %51
  %98 = phi double [ %101, %100 ], [ %93, %51 ]
  %99 = phi i32 [ %104, %100 ], [ 1, %51 ]
  %.not = icmp sgt i32 %99, %85
  br i1 %.not, label %105, label %100

100:                                              ; preds = %97
  %101 = fneg double %98
  %102 = load double, ptr @sa, align 8
  %103 = fsub double %102, %98
  store double %103, ptr @sa, align 8
  %104 = add nuw nsw i32 %99, 1
  br label %97, !llvm.loop !11

105:                                              ; preds = %97
  %106 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %107 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %108 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %109 = fmul double %107, %108
  %110 = fcmp olt double %109, 0.000000e+00
  %storemerge = select i1 %110, double 0.000000e+00, double %109
  store double %storemerge, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %111 = sitofp i32 %85 to double
  store double %111, ptr @sc, align 8
  %112 = load double, ptr @sa, align 8
  store double 0.000000e+00, ptr %1, align 8
  %113 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %114

114:                                              ; preds = %121, %105
  %115 = phi double [ %131, %121 ], [ 0.000000e+00, %105 ]
  %116 = phi double [ %126, %121 ], [ %112, %105 ]
  %117 = phi double [ %122, %121 ], [ %98, %105 ]
  %118 = phi double [ %129, %121 ], [ 0.000000e+00, %105 ]
  %119 = phi double [ %128, %121 ], [ 0.000000e+00, %105 ]
  %120 = phi i32 [ %132, %121 ], [ 1, %105 ]
  %.not4 = icmp sgt i32 %120, %85
  br i1 %.not4, label %133, label %121

121:                                              ; preds = %114
  %122 = fneg double %117
  %123 = load double, ptr @sa, align 8
  %124 = fsub double %123, %117
  store double %124, ptr @sa, align 8
  %125 = load double, ptr @two, align 8
  %126 = fadd double %116, %125
  %127 = fsub double %122, %126
  %128 = fadd double %119, %127
  %129 = call double @llvm.fmuladd.f64(double %117, double %126, double %118)
  %130 = fdiv double %117, %126
  %131 = fsub double %115, %130
  store double %131, ptr %1, align 8
  %132 = add nuw nsw i32 %120, 1
  br label %114, !llvm.loop !12

133:                                              ; preds = %114
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
  %142 = fmul double %141, %119
  %143 = load double, ptr @sc, align 8
  %144 = fdiv double %142, %143
  %145 = fptosi double %144 to i32
  store i32 %145, ptr %2, align 4
  %146 = load double, ptr @four, align 8
  %147 = fmul double %146, %115
  %148 = load double, ptr @five, align 8
  %149 = fdiv double %147, %148
  store double %149, ptr @sa, align 8
  %150 = fdiv double %148, %118
  %151 = fadd double %149, %150
  store double %151, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %152 = fmul double %118, %118
  %153 = fmul double %152, %118
  %154 = fdiv double 3.125000e+01, %153
  %155 = fsub double %151, %154
  store double %155, ptr @piprg, align 8
  %156 = load double, ptr @piref, align 8
  %157 = fsub double %155, %156
  store double %157, ptr @pierr, align 8
  %158 = load double, ptr @one, align 8
  %159 = fdiv double %158, %140
  store double %159, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %160 = fmul double %157, 1.000000e-30
  %161 = fmul double %139, 1.000000e-30
  %162 = fmul double %159, 1.000000e-30
  %163 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %160, double noundef %161, double noundef %162) #4
  %164 = load double, ptr @piref, align 8
  %165 = load double, ptr @three, align 8
  %166 = sitofp i32 %145 to double
  %167 = fmul double %165, %166
  %168 = fdiv double %164, %167
  %169 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %170

170:                                              ; preds = %174, %133
  %171 = phi double [ %176, %174 ], [ 0.000000e+00, %133 ]
  %172 = phi double [ %193, %174 ], [ 0.000000e+00, %133 ]
  %173 = phi i32 [ %194, %174 ], [ 1, %133 ]
  %.not5.not = icmp slt i32 %173, %145
  br i1 %.not5.not, label %174, label %195

174:                                              ; preds = %170
  %175 = load double, ptr @one, align 8
  %176 = fadd double %171, %175
  %177 = fmul double %176, %168
  %178 = fmul double %177, %177
  store double %178, ptr %1, align 8
  %179 = load double, ptr @A6, align 8
  %180 = load double, ptr @A5, align 8
  %181 = fneg double %180
  %182 = call double @llvm.fmuladd.f64(double %179, double %178, double %181)
  %183 = load double, ptr @A4, align 8
  %184 = call double @llvm.fmuladd.f64(double %182, double %178, double %183)
  %185 = load double, ptr @A3, align 8
  %186 = fneg double %185
  %187 = call double @llvm.fmuladd.f64(double %184, double %178, double %186)
  %188 = load double, ptr @A2, align 8
  %189 = call double @llvm.fmuladd.f64(double %187, double %178, double %188)
  %190 = load double, ptr @A1, align 8
  %191 = call double @llvm.fmuladd.f64(double %189, double %178, double %190)
  %192 = call double @llvm.fmuladd.f64(double %191, double %178, double %175)
  %193 = call double @llvm.fmuladd.f64(double %177, double %192, double %172)
  %194 = add nuw nsw i32 %173, 1
  br label %170, !llvm.loop !13

195:                                              ; preds = %170
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
  store double %205, ptr %1, align 8
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
  %222 = fdiv double %201, 1.700000e+01
  store double %222, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %223 = load double, ptr @two, align 8
  %224 = call double @llvm.fmuladd.f64(double %223, double %172, double %221)
  %225 = fmul double %168, %224
  %226 = fdiv double %225, %223
  store double %226, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %227 = fadd double %226, -5.000000e-01
  store double %227, ptr @sc, align 8
  %228 = fdiv double %219, %222
  store double %228, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %229 = fmul double %227, 1.000000e-30
  %230 = fmul double %201, 1.000000e-30
  %231 = fmul double %228, 1.000000e-30
  %232 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %229, double noundef %230, double noundef %231) #4
  %233 = load double, ptr @A3, align 8
  %234 = fneg double %233
  store double %234, ptr @A3, align 8
  %235 = load double, ptr @A5, align 8
  %236 = fneg double %235
  store double %236, ptr @A5, align 8
  %237 = load double, ptr @piref, align 8
  %238 = load double, ptr @three, align 8
  %239 = fmul double %238, %166
  %240 = fdiv double %237, %239
  %241 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %242

242:                                              ; preds = %245, %195
  %243 = phi double [ %262, %245 ], [ 0.000000e+00, %195 ]
  %244 = phi i32 [ %263, %245 ], [ 1, %195 ]
  %.not6.not = icmp slt i32 %244, %145
  br i1 %.not6.not, label %245, label %264

245:                                              ; preds = %242
  %246 = uitofp nneg i32 %244 to double
  %247 = fmul double %240, %246
  %248 = fmul double %247, %247
  store double %248, ptr %1, align 8
  %249 = load double, ptr @B6, align 8
  %250 = load double, ptr @B5, align 8
  %251 = call double @llvm.fmuladd.f64(double %249, double %248, double %250)
  %252 = load double, ptr @B4, align 8
  %253 = call double @llvm.fmuladd.f64(double %248, double %251, double %252)
  %254 = load double, ptr @B3, align 8
  %255 = call double @llvm.fmuladd.f64(double %248, double %253, double %254)
  %256 = load double, ptr @B2, align 8
  %257 = call double @llvm.fmuladd.f64(double %248, double %255, double %256)
  %258 = load double, ptr @B1, align 8
  %259 = call double @llvm.fmuladd.f64(double %248, double %257, double %258)
  %260 = call double @llvm.fmuladd.f64(double %248, double %259, double %243)
  %261 = load double, ptr @one, align 8
  %262 = fadd double %260, %261
  %263 = add nuw nsw i32 %244, 1
  br label %242, !llvm.loop !14

264:                                              ; preds = %242
  %265 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %266 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %267 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %268 = load double, ptr @nulltime, align 8
  %269 = fneg double %268
  %270 = call double @llvm.fmuladd.f64(double %266, double %267, double %269)
  store double %270, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %271 = load double, ptr @piref, align 8
  %272 = load double, ptr @three, align 8
  %273 = fdiv double %271, %272
  %274 = fmul double %273, %273
  store double %274, ptr %1, align 8
  %275 = load double, ptr @B6, align 8
  %276 = load double, ptr @B5, align 8
  %277 = call double @llvm.fmuladd.f64(double %275, double %274, double %276)
  %278 = load double, ptr @B4, align 8
  %279 = call double @llvm.fmuladd.f64(double %274, double %277, double %278)
  %280 = load double, ptr @B3, align 8
  %281 = call double @llvm.fmuladd.f64(double %274, double %279, double %280)
  %282 = load double, ptr @B2, align 8
  %283 = call double @llvm.fmuladd.f64(double %274, double %281, double %282)
  %284 = load double, ptr @B1, align 8
  %285 = call double @llvm.fmuladd.f64(double %274, double %283, double %284)
  %286 = load double, ptr @one, align 8
  %287 = call double @llvm.fmuladd.f64(double %274, double %285, double %286)
  store double %287, ptr @sa, align 8
  %288 = fdiv double %270, 1.500000e+01
  store double %288, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %289 = fadd double %287, %286
  %290 = load double, ptr @two, align 8
  %291 = call double @llvm.fmuladd.f64(double %290, double %243, double %289)
  %292 = fmul double %240, %291
  %293 = fdiv double %292, %290
  store double %293, ptr @sa, align 8
  store double %274, ptr %1, align 8
  %294 = load double, ptr @A6, align 8
  %295 = load double, ptr @A5, align 8
  %296 = call double @llvm.fmuladd.f64(double %294, double %274, double %295)
  %297 = load double, ptr @A4, align 8
  %298 = call double @llvm.fmuladd.f64(double %296, double %274, double %297)
  %299 = load double, ptr @A3, align 8
  %300 = call double @llvm.fmuladd.f64(double %298, double %274, double %299)
  %301 = load double, ptr @A2, align 8
  %302 = call double @llvm.fmuladd.f64(double %300, double %274, double %301)
  %303 = load double, ptr @A1, align 8
  %304 = call double @llvm.fmuladd.f64(double %302, double %274, double %303)
  %305 = load double, ptr @A0, align 8
  %306 = call double @llvm.fmuladd.f64(double %304, double %274, double %305)
  %307 = fmul double %273, %306
  store double %307, ptr @sb, align 8
  %308 = fsub double %293, %307
  store double %308, ptr @sc, align 8
  %309 = fdiv double %286, %288
  store double %309, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %310 = fmul double %308, 1.000000e-30
  %311 = fmul double %270, 1.000000e-30
  %312 = fmul double %309, 1.000000e-30
  %313 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %310, double noundef %311, double noundef %312) #4
  %314 = load double, ptr @piref, align 8
  %315 = load double, ptr @three, align 8
  %316 = fmul double %315, %166
  %317 = fdiv double %314, %316
  %318 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %319

319:                                              ; preds = %322, %264
  %320 = phi double [ %353, %322 ], [ 0.000000e+00, %264 ]
  %321 = phi i32 [ %354, %322 ], [ 1, %264 ]
  %.not7.not = icmp slt i32 %321, %145
  br i1 %.not7.not, label %322, label %355

322:                                              ; preds = %319
  %323 = uitofp nneg i32 %321 to double
  %324 = fmul double %317, %323
  %325 = fmul double %324, %324
  store double %325, ptr %1, align 8
  %326 = load double, ptr @A6, align 8
  %327 = load double, ptr @A5, align 8
  %328 = call double @llvm.fmuladd.f64(double %326, double %325, double %327)
  %329 = load double, ptr @A4, align 8
  %330 = call double @llvm.fmuladd.f64(double %328, double %325, double %329)
  %331 = load double, ptr @A3, align 8
  %332 = call double @llvm.fmuladd.f64(double %330, double %325, double %331)
  %333 = load double, ptr @A2, align 8
  %334 = call double @llvm.fmuladd.f64(double %332, double %325, double %333)
  %335 = load double, ptr @A1, align 8
  %336 = call double @llvm.fmuladd.f64(double %334, double %325, double %335)
  %337 = load double, ptr @one, align 8
  %338 = call double @llvm.fmuladd.f64(double %336, double %325, double %337)
  %339 = fmul double %324, %338
  %340 = load double, ptr @B6, align 8
  %341 = load double, ptr @B5, align 8
  %342 = call double @llvm.fmuladd.f64(double %340, double %325, double %341)
  %343 = load double, ptr @B4, align 8
  %344 = call double @llvm.fmuladd.f64(double %325, double %342, double %343)
  %345 = load double, ptr @B3, align 8
  %346 = call double @llvm.fmuladd.f64(double %325, double %344, double %345)
  %347 = load double, ptr @B2, align 8
  %348 = call double @llvm.fmuladd.f64(double %325, double %346, double %347)
  %349 = load double, ptr @B1, align 8
  %350 = call double @llvm.fmuladd.f64(double %325, double %348, double %349)
  %351 = call double @llvm.fmuladd.f64(double %325, double %350, double %337)
  %352 = fdiv double %339, %351
  %353 = fadd double %320, %352
  %354 = add nuw nsw i32 %321, 1
  br label %319, !llvm.loop !15

355:                                              ; preds = %319
  %356 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %357 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %358 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %359 = load double, ptr @nulltime, align 8
  %360 = fneg double %359
  %361 = call double @llvm.fmuladd.f64(double %357, double %358, double %360)
  store double %361, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %362 = load double, ptr @piref, align 8
  %363 = load double, ptr @three, align 8
  %364 = fdiv double %362, %363
  %365 = fmul double %364, %364
  store double %365, ptr %1, align 8
  %366 = load double, ptr @A6, align 8
  %367 = load double, ptr @A5, align 8
  %368 = call double @llvm.fmuladd.f64(double %366, double %365, double %367)
  %369 = load double, ptr @A4, align 8
  %370 = call double @llvm.fmuladd.f64(double %368, double %365, double %369)
  %371 = load double, ptr @A3, align 8
  %372 = call double @llvm.fmuladd.f64(double %370, double %365, double %371)
  %373 = load double, ptr @A2, align 8
  %374 = call double @llvm.fmuladd.f64(double %372, double %365, double %373)
  %375 = load double, ptr @A1, align 8
  %376 = call double @llvm.fmuladd.f64(double %374, double %365, double %375)
  %377 = load double, ptr @one, align 8
  %378 = call double @llvm.fmuladd.f64(double %376, double %365, double %377)
  %379 = fmul double %364, %378
  store double %379, ptr @sa, align 8
  %380 = load double, ptr @B6, align 8
  %381 = load double, ptr @B5, align 8
  %382 = call double @llvm.fmuladd.f64(double %380, double %365, double %381)
  %383 = load double, ptr @B4, align 8
  %384 = call double @llvm.fmuladd.f64(double %365, double %382, double %383)
  %385 = load double, ptr @B3, align 8
  %386 = call double @llvm.fmuladd.f64(double %365, double %384, double %385)
  %387 = load double, ptr @B2, align 8
  %388 = call double @llvm.fmuladd.f64(double %365, double %386, double %387)
  %389 = load double, ptr @B1, align 8
  %390 = call double @llvm.fmuladd.f64(double %365, double %388, double %389)
  %391 = call double @llvm.fmuladd.f64(double %365, double %390, double %377)
  store double %391, ptr @sb, align 8
  %392 = fdiv double %379, %391
  store double %392, ptr @sa, align 8
  %393 = fdiv double %361, 2.900000e+01
  store double %393, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %394 = load double, ptr @two, align 8
  %395 = call double @llvm.fmuladd.f64(double %394, double %320, double %392)
  %396 = fmul double %317, %395
  %397 = fdiv double %396, %394
  store double %397, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %398 = fadd double %397, f0xBFE62E42FEFA39EF
  store double %398, ptr @sc, align 8
  %399 = fdiv double %377, %393
  store double %399, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %400 = fmul double %398, 1.000000e-30
  %401 = fmul double %361, 1.000000e-30
  %402 = fmul double %399, 1.000000e-30
  %403 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %400, double noundef %401, double noundef %402) #4
  %404 = load double, ptr @piref, align 8
  %405 = load double, ptr @four, align 8
  %406 = fmul double %405, %166
  %407 = fdiv double %404, %406
  %408 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %409

409:                                              ; preds = %412, %355
  %410 = phi double [ %442, %412 ], [ 0.000000e+00, %355 ]
  %411 = phi i32 [ %443, %412 ], [ 1, %355 ]
  %.not8.not = icmp slt i32 %411, %145
  br i1 %.not8.not, label %412, label %444

412:                                              ; preds = %409
  %413 = uitofp nneg i32 %411 to double
  %414 = fmul double %407, %413
  %415 = fmul double %414, %414
  store double %415, ptr %1, align 8
  %416 = load double, ptr @A6, align 8
  %417 = load double, ptr @A5, align 8
  %418 = call double @llvm.fmuladd.f64(double %416, double %415, double %417)
  %419 = load double, ptr @A4, align 8
  %420 = call double @llvm.fmuladd.f64(double %418, double %415, double %419)
  %421 = load double, ptr @A3, align 8
  %422 = call double @llvm.fmuladd.f64(double %420, double %415, double %421)
  %423 = load double, ptr @A2, align 8
  %424 = call double @llvm.fmuladd.f64(double %422, double %415, double %423)
  %425 = load double, ptr @A1, align 8
  %426 = call double @llvm.fmuladd.f64(double %424, double %415, double %425)
  %427 = load double, ptr @one, align 8
  %428 = call double @llvm.fmuladd.f64(double %426, double %415, double %427)
  %429 = fmul double %414, %428
  %430 = load double, ptr @B6, align 8
  %431 = load double, ptr @B5, align 8
  %432 = call double @llvm.fmuladd.f64(double %430, double %415, double %431)
  %433 = load double, ptr @B4, align 8
  %434 = call double @llvm.fmuladd.f64(double %415, double %432, double %433)
  %435 = load double, ptr @B3, align 8
  %436 = call double @llvm.fmuladd.f64(double %415, double %434, double %435)
  %437 = load double, ptr @B2, align 8
  %438 = call double @llvm.fmuladd.f64(double %415, double %436, double %437)
  %439 = load double, ptr @B1, align 8
  %440 = call double @llvm.fmuladd.f64(double %415, double %438, double %439)
  %441 = call double @llvm.fmuladd.f64(double %415, double %440, double %427)
  %442 = call double @llvm.fmuladd.f64(double %429, double %441, double %410)
  %443 = add nuw nsw i32 %411, 1
  br label %409, !llvm.loop !16

444:                                              ; preds = %409
  %445 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %446 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %447 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %448 = load double, ptr @nulltime, align 8
  %449 = fneg double %448
  %450 = call double @llvm.fmuladd.f64(double %446, double %447, double %449)
  store double %450, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %451 = load double, ptr @piref, align 8
  %452 = load double, ptr @four, align 8
  %453 = fdiv double %451, %452
  %454 = fmul double %453, %453
  store double %454, ptr %1, align 8
  %455 = load double, ptr @A6, align 8
  %456 = load double, ptr @A5, align 8
  %457 = call double @llvm.fmuladd.f64(double %455, double %454, double %456)
  %458 = load double, ptr @A4, align 8
  %459 = call double @llvm.fmuladd.f64(double %457, double %454, double %458)
  %460 = load double, ptr @A3, align 8
  %461 = call double @llvm.fmuladd.f64(double %459, double %454, double %460)
  %462 = load double, ptr @A2, align 8
  %463 = call double @llvm.fmuladd.f64(double %461, double %454, double %462)
  %464 = load double, ptr @A1, align 8
  %465 = call double @llvm.fmuladd.f64(double %463, double %454, double %464)
  %466 = load double, ptr @one, align 8
  %467 = call double @llvm.fmuladd.f64(double %465, double %454, double %466)
  %468 = fmul double %453, %467
  store double %468, ptr @sa, align 8
  %469 = load double, ptr @B6, align 8
  %470 = load double, ptr @B5, align 8
  %471 = call double @llvm.fmuladd.f64(double %469, double %454, double %470)
  %472 = load double, ptr @B4, align 8
  %473 = call double @llvm.fmuladd.f64(double %454, double %471, double %472)
  %474 = load double, ptr @B3, align 8
  %475 = call double @llvm.fmuladd.f64(double %454, double %473, double %474)
  %476 = load double, ptr @B2, align 8
  %477 = call double @llvm.fmuladd.f64(double %454, double %475, double %476)
  %478 = load double, ptr @B1, align 8
  %479 = call double @llvm.fmuladd.f64(double %454, double %477, double %478)
  %480 = call double @llvm.fmuladd.f64(double %454, double %479, double %466)
  store double %480, ptr @sb, align 8
  %481 = fmul double %468, %480
  store double %481, ptr @sa, align 8
  %482 = fdiv double %450, 2.900000e+01
  store double %482, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %483 = load double, ptr @two, align 8
  %484 = call double @llvm.fmuladd.f64(double %483, double %410, double %481)
  %485 = fmul double %407, %484
  %486 = fdiv double %485, %483
  store double %486, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %487 = fadd double %486, -2.500000e-01
  store double %487, ptr @sc, align 8
  %488 = fdiv double %466, %482
  store double %488, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %489 = fmul double %487, 1.000000e-30
  %490 = fmul double %450, 1.000000e-30
  %491 = fmul double %488, 1.000000e-30
  %492 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %489, double noundef %490, double noundef %491) #4
  %493 = load double, ptr @one, align 8
  store double %493, ptr %1, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %494 = fdiv double f0x40599541F7F192A4, %166
  %495 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %496

496:                                              ; preds = %499, %444
  %497 = phi double [ %511, %499 ], [ 0.000000e+00, %444 ]
  %498 = phi i32 [ %512, %499 ], [ 1, %444 ]
  %.not9.not = icmp slt i32 %498, %145
  br i1 %.not9.not, label %499, label %513

499:                                              ; preds = %496
  %500 = uitofp nneg i32 %498 to double
  %501 = fmul double %494, %500
  %502 = fmul double %501, %501
  %503 = fadd double %501, %493
  %504 = fdiv double %493, %503
  %505 = fsub double %497, %504
  %506 = fadd double %502, %493
  %507 = fdiv double %501, %506
  %508 = fsub double %505, %507
  %509 = call double @llvm.fmuladd.f64(double %501, double %502, double %493)
  %510 = fdiv double %502, %509
  %511 = fsub double %508, %510
  %512 = add nuw nsw i32 %498, 1
  br label %496, !llvm.loop !17

513:                                              ; preds = %496
  %514 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %515 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %516 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %517 = load double, ptr @nulltime, align 8
  %518 = fneg double %517
  %519 = call double @llvm.fmuladd.f64(double %515, double %516, double %518)
  store double %519, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %520 = fdiv double %519, 1.200000e+01
  store double %520, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %521 = load double, ptr @sa, align 8
  %522 = fmul double %521, %521
  %523 = fneg double %493
  %524 = fadd double %521, %493
  %525 = fdiv double %493, %524
  %526 = fsub double %523, %525
  %527 = fadd double %522, %493
  %528 = fdiv double %521, %527
  %529 = fsub double %526, %528
  %530 = call double @llvm.fmuladd.f64(double %521, double %522, double %493)
  %531 = fdiv double %522, %530
  %532 = fsub double %529, %531
  store double %532, ptr @sa, align 8
  %533 = fmul nnan double %494, 1.800000e+01
  %534 = load double, ptr @two, align 8
  %535 = call double @llvm.fmuladd.f64(double %534, double %497, double %532)
  %536 = fmul double %533, %535
  store double %536, ptr @sa, align 8
  %537 = fptosi double %536 to i32
  %538 = mul nsw i32 %537, -2000
  store i32 %538, ptr %2, align 4
  %539 = sitofp i32 %538 to double
  %540 = load double, ptr @scale, align 8
  %541 = fdiv double %539, %540
  %542 = fptosi double %541 to i32
  store i32 %542, ptr %2, align 4
  %543 = fadd double %536, 5.002000e+02
  store double %543, ptr @sc, align 8
  %544 = load double, ptr @one, align 8
  %545 = fdiv double %544, %520
  store double %545, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %546 = fmul double %543, 1.000000e-30
  %547 = fmul double %519, 1.000000e-30
  %548 = fmul double %545, 1.000000e-30
  %549 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %546, double noundef %547, double noundef %548) #4
  %550 = load double, ptr @piref, align 8
  %551 = load double, ptr @three, align 8
  %552 = sitofp i32 %542 to double
  %553 = fmul double %551, %552
  %554 = fdiv double %550, %553
  %555 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %556

556:                                              ; preds = %559, %513
  %557 = phi double [ %590, %559 ], [ 0.000000e+00, %513 ]
  %558 = phi i32 [ %591, %559 ], [ 1, %513 ]
  %.not10.not = icmp slt i32 %558, %542
  br i1 %.not10.not, label %559, label %592

559:                                              ; preds = %556
  %560 = uitofp nneg i32 %558 to double
  %561 = fmul double %554, %560
  %562 = fmul double %561, %561
  store double %562, ptr %1, align 8
  %563 = load double, ptr @B6, align 8
  %564 = load double, ptr @B5, align 8
  %565 = call double @llvm.fmuladd.f64(double %563, double %562, double %564)
  %566 = load double, ptr @B4, align 8
  %567 = call double @llvm.fmuladd.f64(double %562, double %565, double %566)
  %568 = load double, ptr @B3, align 8
  %569 = call double @llvm.fmuladd.f64(double %562, double %567, double %568)
  %570 = load double, ptr @B2, align 8
  %571 = call double @llvm.fmuladd.f64(double %562, double %569, double %570)
  %572 = load double, ptr @B1, align 8
  %573 = call double @llvm.fmuladd.f64(double %562, double %571, double %572)
  %574 = load double, ptr @one, align 8
  %575 = call double @llvm.fmuladd.f64(double %562, double %573, double %574)
  %576 = fmul double %575, %575
  %577 = fmul double %576, %561
  %578 = load double, ptr @A6, align 8
  %579 = load double, ptr @A5, align 8
  %580 = call double @llvm.fmuladd.f64(double %578, double %562, double %579)
  %581 = load double, ptr @A4, align 8
  %582 = call double @llvm.fmuladd.f64(double %580, double %562, double %581)
  %583 = load double, ptr @A3, align 8
  %584 = call double @llvm.fmuladd.f64(double %582, double %562, double %583)
  %585 = load double, ptr @A2, align 8
  %586 = call double @llvm.fmuladd.f64(double %584, double %562, double %585)
  %587 = load double, ptr @A1, align 8
  %588 = call double @llvm.fmuladd.f64(double %586, double %562, double %587)
  %589 = call double @llvm.fmuladd.f64(double %588, double %562, double %574)
  %590 = call double @llvm.fmuladd.f64(double %577, double %589, double %557)
  %591 = add nuw nsw i32 %558, 1
  br label %556, !llvm.loop !18

592:                                              ; preds = %556
  %593 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %594 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %595 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %596 = load double, ptr @nulltime, align 8
  %597 = fneg double %596
  %598 = call double @llvm.fmuladd.f64(double %594, double %595, double %597)
  store double %598, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %599 = load double, ptr @piref, align 8
  %600 = load double, ptr @three, align 8
  %601 = fdiv double %599, %600
  %602 = fmul double %601, %601
  store double %602, ptr %1, align 8
  %603 = load double, ptr @A6, align 8
  %604 = load double, ptr @A5, align 8
  %605 = call double @llvm.fmuladd.f64(double %603, double %602, double %604)
  %606 = load double, ptr @A4, align 8
  %607 = call double @llvm.fmuladd.f64(double %605, double %602, double %606)
  %608 = load double, ptr @A3, align 8
  %609 = call double @llvm.fmuladd.f64(double %607, double %602, double %608)
  %610 = load double, ptr @A2, align 8
  %611 = call double @llvm.fmuladd.f64(double %609, double %602, double %610)
  %612 = load double, ptr @A1, align 8
  %613 = call double @llvm.fmuladd.f64(double %611, double %602, double %612)
  %614 = load double, ptr @one, align 8
  %615 = call double @llvm.fmuladd.f64(double %613, double %602, double %614)
  %616 = fmul double %601, %615
  store double %616, ptr @sa, align 8
  %617 = load double, ptr @B6, align 8
  %618 = load double, ptr @B5, align 8
  %619 = call double @llvm.fmuladd.f64(double %617, double %602, double %618)
  %620 = load double, ptr @B4, align 8
  %621 = call double @llvm.fmuladd.f64(double %602, double %619, double %620)
  %622 = load double, ptr @B3, align 8
  %623 = call double @llvm.fmuladd.f64(double %602, double %621, double %622)
  %624 = load double, ptr @B2, align 8
  %625 = call double @llvm.fmuladd.f64(double %602, double %623, double %624)
  %626 = load double, ptr @B1, align 8
  %627 = call double @llvm.fmuladd.f64(double %602, double %625, double %626)
  %628 = call double @llvm.fmuladd.f64(double %602, double %627, double %614)
  store double %628, ptr @sb, align 8
  %629 = fmul double %616, %628
  %630 = fmul double %629, %628
  store double %630, ptr @sa, align 8
  %631 = fdiv double %598, 3.000000e+01
  store double %631, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %632 = load double, ptr @two, align 8
  %633 = call double @llvm.fmuladd.f64(double %632, double %557, double %630)
  %634 = fmul double %554, %633
  %635 = fdiv double %634, %632
  store double %635, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %636 = fadd double %635, f0xBFD2AAAAAAAAAAAB
  store double %636, ptr @sc, align 8
  %637 = fdiv double %614, %631
  store double %637, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %638 = fmul double %636, 1.000000e-30
  %639 = fmul double %598, 1.000000e-30
  %640 = fmul double %637, 1.000000e-30
  %641 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %638, double noundef %639, double noundef %640) #4
  %642 = load double, ptr @five, align 8
  %643 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %644 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %645 = fsub double %643, %644
  %646 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %647 = call double @llvm.fmuladd.f64(double %642, double %645, double %646)
  %648 = fdiv double %647, 5.200000e+01
  store double %648, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %649 = load double, ptr @one, align 8
  %650 = fdiv double %649, %648
  store double %650, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %651 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %652 = fadd double %651, %646
  %653 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %654 = fadd double %652, %653
  %655 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %656 = fadd double %654, %655
  %657 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %658 = fadd double %656, %657
  store double %658, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %659 = load double, ptr @four, align 8
  %660 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %661 = call double @llvm.fmuladd.f64(double %659, double %660, double %658)
  %662 = fdiv double %661, 1.520000e+02
  store double %662, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %663 = fdiv double %649, %662
  store double %663, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %658, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %664 = fadd double %658, %660
  %665 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %666 = fadd double %664, %665
  %667 = fdiv double %666, 1.460000e+02
  store double %667, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %668 = fdiv double %649, %667
  store double %668, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %669 = fadd double %646, %653
  %670 = fadd double %669, %657
  %671 = fadd double %670, %665
  %672 = fdiv double %671, 9.100000e+01
  store double %672, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %673 = fdiv double %649, %672
  store double %673, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar11 = call i32 @putchar(i32 10)
  %674 = load i32, ptr %2, align 4
  %675 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %674) #4
  %676 = load double, ptr @nulltime, align 8
  %677 = fmul double %676, 1.000000e-30
  %678 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %677) #4
  %679 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %680 = fmul double %679, 1.000000e-30
  %681 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %680) #4
  %682 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %683 = fmul double %682, 1.000000e-30
  %684 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %683) #4
  %685 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %686 = fmul double %685, 1.000000e-30
  %687 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %686) #4
  %688 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %689 = fmul double %688, 1.000000e-30
  %690 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %689) #4
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
