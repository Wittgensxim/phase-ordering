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

5:                                                ; preds = %44, %0
  %6 = phi double [ %20, %44 ], [ undef, %0 ]
  %7 = phi double [ %16, %44 ], [ undef, %0 ]
  %8 = phi i32 [ %13, %44 ], [ 15625, %0 ]
  %9 = phi double [ %41, %44 ], [ 0.000000e+00, %0 ]
  %10 = load double, ptr @TLimit, align 8
  %11 = fcmp olt double %9, %10
  br i1 %11, label %12, label %45

12:                                               ; preds = %5
  %13 = shl nsw i32 %8, 1
  %14 = load double, ptr @one, align 8
  %15 = sitofp i32 %13 to double
  %16 = fdiv double %14, %15
  store double %14, ptr %1, align 8
  %17 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %18

18:                                               ; preds = %22, %12
  %19 = phi double [ %24, %22 ], [ 0.000000e+00, %12 ]
  %20 = phi double [ %37, %22 ], [ 0.000000e+00, %12 ]
  %21 = phi i32 [ %38, %22 ], [ 1, %12 ]
  %.not.not = icmp slt i32 %21, %13
  br i1 %.not.not, label %22, label %39

22:                                               ; preds = %18
  %23 = load double, ptr %1, align 8
  %24 = fadd double %19, %23
  %25 = fmul double %24, %16
  %26 = load double, ptr @D1, align 8
  %27 = load double, ptr @D2, align 8
  %28 = load double, ptr @D3, align 8
  %29 = call double @llvm.fmuladd.f64(double %25, double %28, double %27)
  %30 = call double @llvm.fmuladd.f64(double %25, double %29, double %26)
  %31 = load double, ptr @E2, align 8
  %32 = load double, ptr @E3, align 8
  %33 = call double @llvm.fmuladd.f64(double %25, double %32, double %31)
  %34 = call double @llvm.fmuladd.f64(double %25, double %33, double %26)
  %35 = call double @llvm.fmuladd.f64(double %25, double %34, double %23)
  %36 = fdiv double %30, %35
  %37 = fadd double %20, %36
  %38 = add nuw nsw i32 %21, 1
  br label %18, !llvm.loop !7

39:                                               ; preds = %18
  %40 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %41 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %41, ptr @sa, align 8
  %42 = icmp eq i32 %8, 256000000
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %45

44:                                               ; preds = %39
  br label %5, !llvm.loop !9

45:                                               ; preds = %43, %5
  %46 = phi double [ %20, %43 ], [ %6, %5 ]
  %47 = phi double [ %16, %43 ], [ %7, %5 ]
  %48 = phi i32 [ 512000000, %43 ], [ %8, %5 ]
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
  br label %102

102:                                              ; preds = %105, %61
  %103 = phi double [ %106, %105 ], [ %98, %61 ]
  %104 = phi i32 [ %109, %105 ], [ 1, %61 ]
  %.not = icmp sgt i32 %104, %90
  br i1 %.not, label %110, label %105

105:                                              ; preds = %102
  %106 = fneg double %103
  %107 = load double, ptr @sa, align 8
  %108 = fsub double %107, %103
  store double %108, ptr @sa, align 8
  %109 = add nuw nsw i32 %104, 1
  br label %102, !llvm.loop !11

110:                                              ; preds = %102
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
  br label %121

121:                                              ; preds = %127, %117
  %122 = phi double [ %132, %127 ], [ %119, %117 ]
  %123 = phi double [ %128, %127 ], [ %103, %117 ]
  %124 = phi double [ %135, %127 ], [ 0.000000e+00, %117 ]
  %125 = phi double [ %134, %127 ], [ 0.000000e+00, %117 ]
  %126 = phi i32 [ %139, %127 ], [ 1, %117 ]
  %.not4 = icmp sgt i32 %126, %90
  br i1 %.not4, label %140, label %127

127:                                              ; preds = %121
  %128 = fneg double %123
  %129 = load double, ptr @sa, align 8
  %130 = fsub double %129, %123
  store double %130, ptr @sa, align 8
  %131 = load double, ptr @two, align 8
  %132 = fadd double %122, %131
  %133 = fsub double %128, %132
  %134 = fadd double %125, %133
  %135 = call double @llvm.fmuladd.f64(double %123, double %132, double %124)
  %136 = load double, ptr %1, align 8
  %137 = fdiv double %123, %132
  %138 = fsub double %136, %137
  store double %138, ptr %1, align 8
  %139 = add nuw nsw i32 %126, 1
  br label %121, !llvm.loop !12

140:                                              ; preds = %121
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
  %149 = fmul double %148, %125
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
  %158 = fdiv double %156, %124
  %159 = fadd double %157, %158
  store double %159, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %160 = fmul double %124, %124
  %161 = fmul double %160, %124
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
  br label %178

178:                                              ; preds = %182, %140
  %179 = phi double [ %184, %182 ], [ 0.000000e+00, %140 ]
  %180 = phi double [ %201, %182 ], [ 0.000000e+00, %140 ]
  %181 = phi i32 [ %202, %182 ], [ 1, %140 ]
  %.not5.not = icmp slt i32 %181, %152
  br i1 %.not5.not, label %182, label %203

182:                                              ; preds = %178
  %183 = load double, ptr @one, align 8
  %184 = fadd double %179, %183
  %185 = fmul double %184, %176
  %186 = fmul double %185, %185
  store double %186, ptr %1, align 8
  %187 = load double, ptr @A6, align 8
  %188 = load double, ptr @A5, align 8
  %189 = fneg double %188
  %190 = call double @llvm.fmuladd.f64(double %187, double %186, double %189)
  %191 = load double, ptr @A4, align 8
  %192 = call double @llvm.fmuladd.f64(double %190, double %186, double %191)
  %193 = load double, ptr @A3, align 8
  %194 = fneg double %193
  %195 = call double @llvm.fmuladd.f64(double %192, double %186, double %194)
  %196 = load double, ptr @A2, align 8
  %197 = call double @llvm.fmuladd.f64(double %195, double %186, double %196)
  %198 = load double, ptr @A1, align 8
  %199 = call double @llvm.fmuladd.f64(double %197, double %186, double %198)
  %200 = call double @llvm.fmuladd.f64(double %199, double %186, double %183)
  %201 = call double @llvm.fmuladd.f64(double %185, double %200, double %180)
  %202 = add nuw nsw i32 %181, 1
  br label %178, !llvm.loop !13

203:                                              ; preds = %178
  %204 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %205 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %206 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %207 = load double, ptr @nulltime, align 8
  %208 = fneg double %207
  %209 = call double @llvm.fmuladd.f64(double %205, double %206, double %208)
  store double %209, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %210 = load double, ptr @piref, align 8
  %211 = load double, ptr @three, align 8
  %212 = fdiv double %210, %211
  %213 = fmul double %212, %212
  store double %213, ptr %1, align 8
  %214 = load double, ptr @A6, align 8
  %215 = load double, ptr @A5, align 8
  %216 = fneg double %215
  %217 = call double @llvm.fmuladd.f64(double %214, double %213, double %216)
  %218 = load double, ptr @A4, align 8
  %219 = call double @llvm.fmuladd.f64(double %217, double %213, double %218)
  %220 = load double, ptr @A3, align 8
  %221 = fneg double %220
  %222 = call double @llvm.fmuladd.f64(double %219, double %213, double %221)
  %223 = load double, ptr @A2, align 8
  %224 = call double @llvm.fmuladd.f64(double %222, double %213, double %223)
  %225 = load double, ptr @A1, align 8
  %226 = call double @llvm.fmuladd.f64(double %224, double %213, double %225)
  %227 = load double, ptr @one, align 8
  %228 = call double @llvm.fmuladd.f64(double %226, double %213, double %227)
  %229 = fmul double %212, %228
  store double %229, ptr @sa, align 8
  %230 = fdiv double %209, 1.700000e+01
  store double %230, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %231 = load double, ptr @two, align 8
  %232 = call double @llvm.fmuladd.f64(double %231, double %180, double %229)
  %233 = fmul double %176, %232
  %234 = fdiv double %233, %231
  store double %234, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %235 = fadd double %234, -5.000000e-01
  store double %235, ptr @sc, align 8
  %236 = fdiv double %227, %230
  store double %236, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %237 = fmul double %235, 1.000000e-30
  %238 = fmul double %209, 1.000000e-30
  %239 = fmul double %236, 1.000000e-30
  %240 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %237, double noundef %238, double noundef %239) #4
  %241 = load double, ptr @A3, align 8
  %242 = fneg double %241
  store double %242, ptr @A3, align 8
  %243 = load double, ptr @A5, align 8
  %244 = fneg double %243
  store double %244, ptr @A5, align 8
  %245 = load double, ptr @piref, align 8
  %246 = load double, ptr @three, align 8
  %247 = fmul double %246, %174
  %248 = fdiv double %245, %247
  %249 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %250

250:                                              ; preds = %253, %203
  %251 = phi double [ %270, %253 ], [ 0.000000e+00, %203 ]
  %252 = phi i32 [ %271, %253 ], [ 1, %203 ]
  %.not6.not = icmp slt i32 %252, %152
  br i1 %.not6.not, label %253, label %272

253:                                              ; preds = %250
  %254 = uitofp nneg i32 %252 to double
  %255 = fmul double %248, %254
  %256 = fmul double %255, %255
  store double %256, ptr %1, align 8
  %257 = load double, ptr @B6, align 8
  %258 = load double, ptr @B5, align 8
  %259 = call double @llvm.fmuladd.f64(double %257, double %256, double %258)
  %260 = load double, ptr @B4, align 8
  %261 = call double @llvm.fmuladd.f64(double %256, double %259, double %260)
  %262 = load double, ptr @B3, align 8
  %263 = call double @llvm.fmuladd.f64(double %256, double %261, double %262)
  %264 = load double, ptr @B2, align 8
  %265 = call double @llvm.fmuladd.f64(double %256, double %263, double %264)
  %266 = load double, ptr @B1, align 8
  %267 = call double @llvm.fmuladd.f64(double %256, double %265, double %266)
  %268 = call double @llvm.fmuladd.f64(double %256, double %267, double %251)
  %269 = load double, ptr @one, align 8
  %270 = fadd double %268, %269
  %271 = add nuw nsw i32 %252, 1
  br label %250, !llvm.loop !14

272:                                              ; preds = %250
  %273 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %274 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %275 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %276 = load double, ptr @nulltime, align 8
  %277 = fneg double %276
  %278 = call double @llvm.fmuladd.f64(double %274, double %275, double %277)
  store double %278, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %279 = load double, ptr @piref, align 8
  %280 = load double, ptr @three, align 8
  %281 = fdiv double %279, %280
  %282 = fmul double %281, %281
  store double %282, ptr %1, align 8
  %283 = load double, ptr @B6, align 8
  %284 = load double, ptr @B5, align 8
  %285 = call double @llvm.fmuladd.f64(double %283, double %282, double %284)
  %286 = load double, ptr @B4, align 8
  %287 = call double @llvm.fmuladd.f64(double %282, double %285, double %286)
  %288 = load double, ptr @B3, align 8
  %289 = call double @llvm.fmuladd.f64(double %282, double %287, double %288)
  %290 = load double, ptr @B2, align 8
  %291 = call double @llvm.fmuladd.f64(double %282, double %289, double %290)
  %292 = load double, ptr @B1, align 8
  %293 = call double @llvm.fmuladd.f64(double %282, double %291, double %292)
  %294 = load double, ptr @one, align 8
  %295 = call double @llvm.fmuladd.f64(double %282, double %293, double %294)
  store double %295, ptr @sa, align 8
  %296 = fdiv double %278, 1.500000e+01
  store double %296, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %297 = fadd double %295, %294
  %298 = load double, ptr @two, align 8
  %299 = call double @llvm.fmuladd.f64(double %298, double %251, double %297)
  %300 = fmul double %248, %299
  %301 = fdiv double %300, %298
  store double %301, ptr @sa, align 8
  store double %282, ptr %1, align 8
  %302 = load double, ptr @A6, align 8
  %303 = load double, ptr @A5, align 8
  %304 = call double @llvm.fmuladd.f64(double %302, double %282, double %303)
  %305 = load double, ptr @A4, align 8
  %306 = call double @llvm.fmuladd.f64(double %304, double %282, double %305)
  %307 = load double, ptr @A3, align 8
  %308 = call double @llvm.fmuladd.f64(double %306, double %282, double %307)
  %309 = load double, ptr @A2, align 8
  %310 = call double @llvm.fmuladd.f64(double %308, double %282, double %309)
  %311 = load double, ptr @A1, align 8
  %312 = call double @llvm.fmuladd.f64(double %310, double %282, double %311)
  %313 = load double, ptr @A0, align 8
  %314 = call double @llvm.fmuladd.f64(double %312, double %282, double %313)
  %315 = fmul double %281, %314
  store double %315, ptr @sb, align 8
  %316 = fsub double %301, %315
  store double %316, ptr @sc, align 8
  %317 = fdiv double %294, %296
  store double %317, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %318 = fmul double %316, 1.000000e-30
  %319 = fmul double %278, 1.000000e-30
  %320 = fmul double %317, 1.000000e-30
  %321 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %318, double noundef %319, double noundef %320) #4
  %322 = load double, ptr @piref, align 8
  %323 = load double, ptr @three, align 8
  %324 = fmul double %323, %174
  %325 = fdiv double %322, %324
  %326 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %327

327:                                              ; preds = %330, %272
  %328 = phi double [ %361, %330 ], [ 0.000000e+00, %272 ]
  %329 = phi i32 [ %362, %330 ], [ 1, %272 ]
  %.not7.not = icmp slt i32 %329, %152
  br i1 %.not7.not, label %330, label %363

330:                                              ; preds = %327
  %331 = uitofp nneg i32 %329 to double
  %332 = fmul double %325, %331
  %333 = fmul double %332, %332
  store double %333, ptr %1, align 8
  %334 = load double, ptr @A6, align 8
  %335 = load double, ptr @A5, align 8
  %336 = call double @llvm.fmuladd.f64(double %334, double %333, double %335)
  %337 = load double, ptr @A4, align 8
  %338 = call double @llvm.fmuladd.f64(double %336, double %333, double %337)
  %339 = load double, ptr @A3, align 8
  %340 = call double @llvm.fmuladd.f64(double %338, double %333, double %339)
  %341 = load double, ptr @A2, align 8
  %342 = call double @llvm.fmuladd.f64(double %340, double %333, double %341)
  %343 = load double, ptr @A1, align 8
  %344 = call double @llvm.fmuladd.f64(double %342, double %333, double %343)
  %345 = load double, ptr @one, align 8
  %346 = call double @llvm.fmuladd.f64(double %344, double %333, double %345)
  %347 = fmul double %332, %346
  %348 = load double, ptr @B6, align 8
  %349 = load double, ptr @B5, align 8
  %350 = call double @llvm.fmuladd.f64(double %348, double %333, double %349)
  %351 = load double, ptr @B4, align 8
  %352 = call double @llvm.fmuladd.f64(double %333, double %350, double %351)
  %353 = load double, ptr @B3, align 8
  %354 = call double @llvm.fmuladd.f64(double %333, double %352, double %353)
  %355 = load double, ptr @B2, align 8
  %356 = call double @llvm.fmuladd.f64(double %333, double %354, double %355)
  %357 = load double, ptr @B1, align 8
  %358 = call double @llvm.fmuladd.f64(double %333, double %356, double %357)
  %359 = call double @llvm.fmuladd.f64(double %333, double %358, double %345)
  %360 = fdiv double %347, %359
  %361 = fadd double %328, %360
  %362 = add nuw nsw i32 %329, 1
  br label %327, !llvm.loop !15

363:                                              ; preds = %327
  %364 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %365 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %366 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %367 = load double, ptr @nulltime, align 8
  %368 = fneg double %367
  %369 = call double @llvm.fmuladd.f64(double %365, double %366, double %368)
  store double %369, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %370 = load double, ptr @piref, align 8
  %371 = load double, ptr @three, align 8
  %372 = fdiv double %370, %371
  %373 = fmul double %372, %372
  store double %373, ptr %1, align 8
  %374 = load double, ptr @A6, align 8
  %375 = load double, ptr @A5, align 8
  %376 = call double @llvm.fmuladd.f64(double %374, double %373, double %375)
  %377 = load double, ptr @A4, align 8
  %378 = call double @llvm.fmuladd.f64(double %376, double %373, double %377)
  %379 = load double, ptr @A3, align 8
  %380 = call double @llvm.fmuladd.f64(double %378, double %373, double %379)
  %381 = load double, ptr @A2, align 8
  %382 = call double @llvm.fmuladd.f64(double %380, double %373, double %381)
  %383 = load double, ptr @A1, align 8
  %384 = call double @llvm.fmuladd.f64(double %382, double %373, double %383)
  %385 = load double, ptr @one, align 8
  %386 = call double @llvm.fmuladd.f64(double %384, double %373, double %385)
  %387 = fmul double %372, %386
  store double %387, ptr @sa, align 8
  %388 = load double, ptr @B6, align 8
  %389 = load double, ptr @B5, align 8
  %390 = call double @llvm.fmuladd.f64(double %388, double %373, double %389)
  %391 = load double, ptr @B4, align 8
  %392 = call double @llvm.fmuladd.f64(double %373, double %390, double %391)
  %393 = load double, ptr @B3, align 8
  %394 = call double @llvm.fmuladd.f64(double %373, double %392, double %393)
  %395 = load double, ptr @B2, align 8
  %396 = call double @llvm.fmuladd.f64(double %373, double %394, double %395)
  %397 = load double, ptr @B1, align 8
  %398 = call double @llvm.fmuladd.f64(double %373, double %396, double %397)
  %399 = call double @llvm.fmuladd.f64(double %373, double %398, double %385)
  store double %399, ptr @sb, align 8
  %400 = fdiv double %387, %399
  store double %400, ptr @sa, align 8
  %401 = fdiv double %369, 2.900000e+01
  store double %401, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %402 = load double, ptr @two, align 8
  %403 = call double @llvm.fmuladd.f64(double %402, double %328, double %400)
  %404 = fmul double %325, %403
  %405 = fdiv double %404, %402
  store double %405, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %406 = fadd double %405, f0xBFE62E42FEFA39EF
  store double %406, ptr @sc, align 8
  %407 = fdiv double %385, %401
  store double %407, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %408 = fmul double %406, 1.000000e-30
  %409 = fmul double %369, 1.000000e-30
  %410 = fmul double %407, 1.000000e-30
  %411 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %408, double noundef %409, double noundef %410) #4
  %412 = load double, ptr @piref, align 8
  %413 = load double, ptr @four, align 8
  %414 = fmul double %413, %174
  %415 = fdiv double %412, %414
  %416 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %417

417:                                              ; preds = %420, %363
  %418 = phi double [ %450, %420 ], [ 0.000000e+00, %363 ]
  %419 = phi i32 [ %451, %420 ], [ 1, %363 ]
  %.not8.not = icmp slt i32 %419, %152
  br i1 %.not8.not, label %420, label %452

420:                                              ; preds = %417
  %421 = uitofp nneg i32 %419 to double
  %422 = fmul double %415, %421
  %423 = fmul double %422, %422
  store double %423, ptr %1, align 8
  %424 = load double, ptr @A6, align 8
  %425 = load double, ptr @A5, align 8
  %426 = call double @llvm.fmuladd.f64(double %424, double %423, double %425)
  %427 = load double, ptr @A4, align 8
  %428 = call double @llvm.fmuladd.f64(double %426, double %423, double %427)
  %429 = load double, ptr @A3, align 8
  %430 = call double @llvm.fmuladd.f64(double %428, double %423, double %429)
  %431 = load double, ptr @A2, align 8
  %432 = call double @llvm.fmuladd.f64(double %430, double %423, double %431)
  %433 = load double, ptr @A1, align 8
  %434 = call double @llvm.fmuladd.f64(double %432, double %423, double %433)
  %435 = load double, ptr @one, align 8
  %436 = call double @llvm.fmuladd.f64(double %434, double %423, double %435)
  %437 = fmul double %422, %436
  %438 = load double, ptr @B6, align 8
  %439 = load double, ptr @B5, align 8
  %440 = call double @llvm.fmuladd.f64(double %438, double %423, double %439)
  %441 = load double, ptr @B4, align 8
  %442 = call double @llvm.fmuladd.f64(double %423, double %440, double %441)
  %443 = load double, ptr @B3, align 8
  %444 = call double @llvm.fmuladd.f64(double %423, double %442, double %443)
  %445 = load double, ptr @B2, align 8
  %446 = call double @llvm.fmuladd.f64(double %423, double %444, double %445)
  %447 = load double, ptr @B1, align 8
  %448 = call double @llvm.fmuladd.f64(double %423, double %446, double %447)
  %449 = call double @llvm.fmuladd.f64(double %423, double %448, double %435)
  %450 = call double @llvm.fmuladd.f64(double %437, double %449, double %418)
  %451 = add nuw nsw i32 %419, 1
  br label %417, !llvm.loop !16

452:                                              ; preds = %417
  %453 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %454 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %455 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %456 = load double, ptr @nulltime, align 8
  %457 = fneg double %456
  %458 = call double @llvm.fmuladd.f64(double %454, double %455, double %457)
  store double %458, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %459 = load double, ptr @piref, align 8
  %460 = load double, ptr @four, align 8
  %461 = fdiv double %459, %460
  %462 = fmul double %461, %461
  store double %462, ptr %1, align 8
  %463 = load double, ptr @A6, align 8
  %464 = load double, ptr @A5, align 8
  %465 = call double @llvm.fmuladd.f64(double %463, double %462, double %464)
  %466 = load double, ptr @A4, align 8
  %467 = call double @llvm.fmuladd.f64(double %465, double %462, double %466)
  %468 = load double, ptr @A3, align 8
  %469 = call double @llvm.fmuladd.f64(double %467, double %462, double %468)
  %470 = load double, ptr @A2, align 8
  %471 = call double @llvm.fmuladd.f64(double %469, double %462, double %470)
  %472 = load double, ptr @A1, align 8
  %473 = call double @llvm.fmuladd.f64(double %471, double %462, double %472)
  %474 = load double, ptr @one, align 8
  %475 = call double @llvm.fmuladd.f64(double %473, double %462, double %474)
  %476 = fmul double %461, %475
  store double %476, ptr @sa, align 8
  %477 = load double, ptr @B6, align 8
  %478 = load double, ptr @B5, align 8
  %479 = call double @llvm.fmuladd.f64(double %477, double %462, double %478)
  %480 = load double, ptr @B4, align 8
  %481 = call double @llvm.fmuladd.f64(double %462, double %479, double %480)
  %482 = load double, ptr @B3, align 8
  %483 = call double @llvm.fmuladd.f64(double %462, double %481, double %482)
  %484 = load double, ptr @B2, align 8
  %485 = call double @llvm.fmuladd.f64(double %462, double %483, double %484)
  %486 = load double, ptr @B1, align 8
  %487 = call double @llvm.fmuladd.f64(double %462, double %485, double %486)
  %488 = call double @llvm.fmuladd.f64(double %462, double %487, double %474)
  store double %488, ptr @sb, align 8
  %489 = fmul double %476, %488
  store double %489, ptr @sa, align 8
  %490 = fdiv double %458, 2.900000e+01
  store double %490, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %491 = load double, ptr @two, align 8
  %492 = call double @llvm.fmuladd.f64(double %491, double %418, double %489)
  %493 = fmul double %415, %492
  %494 = fdiv double %493, %491
  store double %494, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %495 = fadd double %494, -2.500000e-01
  store double %495, ptr @sc, align 8
  %496 = fdiv double %474, %490
  store double %496, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %497 = fmul double %495, 1.000000e-30
  %498 = fmul double %458, 1.000000e-30
  %499 = fmul double %496, 1.000000e-30
  %500 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %497, double noundef %498, double noundef %499) #4
  %501 = load double, ptr @one, align 8
  store double %501, ptr %1, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %502 = fdiv double f0x40599541F7F192A4, %174
  %503 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %504

504:                                              ; preds = %507, %452
  %505 = phi double [ %520, %507 ], [ 0.000000e+00, %452 ]
  %506 = phi i32 [ %521, %507 ], [ 1, %452 ]
  %.not9.not = icmp slt i32 %506, %152
  br i1 %.not9.not, label %507, label %522

507:                                              ; preds = %504
  %508 = uitofp nneg i32 %506 to double
  %509 = fmul double %502, %508
  %510 = fmul double %509, %509
  %511 = load double, ptr %1, align 8
  %512 = fadd double %509, %511
  %513 = fdiv double %511, %512
  %514 = fsub double %505, %513
  %515 = fadd double %510, %511
  %516 = fdiv double %509, %515
  %517 = fsub double %514, %516
  %518 = call double @llvm.fmuladd.f64(double %509, double %510, double %511)
  %519 = fdiv double %510, %518
  %520 = fsub double %517, %519
  %521 = add nuw nsw i32 %506, 1
  br label %504, !llvm.loop !17

522:                                              ; preds = %504
  %523 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %524 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %525 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %526 = load double, ptr @nulltime, align 8
  %527 = fneg double %526
  %528 = call double @llvm.fmuladd.f64(double %524, double %525, double %527)
  store double %528, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %529 = fdiv double %528, 1.200000e+01
  store double %529, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %530 = load double, ptr @sa, align 8
  %531 = fmul double %530, %530
  %532 = load double, ptr %1, align 8
  %533 = fneg double %532
  %534 = fadd double %530, %532
  %535 = fdiv double %532, %534
  %536 = fsub double %533, %535
  %537 = fadd double %531, %532
  %538 = fdiv double %530, %537
  %539 = fsub double %536, %538
  %540 = call double @llvm.fmuladd.f64(double %530, double %531, double %532)
  %541 = fdiv double %531, %540
  %542 = fsub double %539, %541
  store double %542, ptr @sa, align 8
  %543 = fmul nnan double %502, 1.800000e+01
  %544 = load double, ptr @two, align 8
  %545 = call double @llvm.fmuladd.f64(double %544, double %505, double %542)
  %546 = fmul double %543, %545
  store double %546, ptr @sa, align 8
  %547 = fptosi double %546 to i32
  %548 = mul nsw i32 %547, -2000
  store i32 %548, ptr %2, align 4
  %549 = sitofp i32 %548 to double
  %550 = load double, ptr @scale, align 8
  %551 = fdiv double %549, %550
  %552 = fptosi double %551 to i32
  store i32 %552, ptr %2, align 4
  %553 = fadd double %546, 5.002000e+02
  store double %553, ptr @sc, align 8
  %554 = load double, ptr @one, align 8
  %555 = fdiv double %554, %529
  store double %555, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %556 = fmul double %553, 1.000000e-30
  %557 = fmul double %528, 1.000000e-30
  %558 = fmul double %555, 1.000000e-30
  %559 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %556, double noundef %557, double noundef %558) #4
  %560 = load double, ptr @piref, align 8
  %561 = load double, ptr @three, align 8
  %562 = sitofp i32 %552 to double
  %563 = fmul double %561, %562
  %564 = fdiv double %560, %563
  %565 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %566

566:                                              ; preds = %569, %522
  %567 = phi double [ %600, %569 ], [ 0.000000e+00, %522 ]
  %568 = phi i32 [ %601, %569 ], [ 1, %522 ]
  %.not10.not = icmp slt i32 %568, %552
  br i1 %.not10.not, label %569, label %602

569:                                              ; preds = %566
  %570 = uitofp nneg i32 %568 to double
  %571 = fmul double %564, %570
  %572 = fmul double %571, %571
  store double %572, ptr %1, align 8
  %573 = load double, ptr @B6, align 8
  %574 = load double, ptr @B5, align 8
  %575 = call double @llvm.fmuladd.f64(double %573, double %572, double %574)
  %576 = load double, ptr @B4, align 8
  %577 = call double @llvm.fmuladd.f64(double %572, double %575, double %576)
  %578 = load double, ptr @B3, align 8
  %579 = call double @llvm.fmuladd.f64(double %572, double %577, double %578)
  %580 = load double, ptr @B2, align 8
  %581 = call double @llvm.fmuladd.f64(double %572, double %579, double %580)
  %582 = load double, ptr @B1, align 8
  %583 = call double @llvm.fmuladd.f64(double %572, double %581, double %582)
  %584 = load double, ptr @one, align 8
  %585 = call double @llvm.fmuladd.f64(double %572, double %583, double %584)
  %586 = fmul double %585, %585
  %587 = fmul double %586, %571
  %588 = load double, ptr @A6, align 8
  %589 = load double, ptr @A5, align 8
  %590 = call double @llvm.fmuladd.f64(double %588, double %572, double %589)
  %591 = load double, ptr @A4, align 8
  %592 = call double @llvm.fmuladd.f64(double %590, double %572, double %591)
  %593 = load double, ptr @A3, align 8
  %594 = call double @llvm.fmuladd.f64(double %592, double %572, double %593)
  %595 = load double, ptr @A2, align 8
  %596 = call double @llvm.fmuladd.f64(double %594, double %572, double %595)
  %597 = load double, ptr @A1, align 8
  %598 = call double @llvm.fmuladd.f64(double %596, double %572, double %597)
  %599 = call double @llvm.fmuladd.f64(double %598, double %572, double %584)
  %600 = call double @llvm.fmuladd.f64(double %587, double %599, double %567)
  %601 = add nuw nsw i32 %568, 1
  br label %566, !llvm.loop !18

602:                                              ; preds = %566
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
  %643 = call double @llvm.fmuladd.f64(double %642, double %567, double %640)
  %644 = fmul double %564, %643
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
