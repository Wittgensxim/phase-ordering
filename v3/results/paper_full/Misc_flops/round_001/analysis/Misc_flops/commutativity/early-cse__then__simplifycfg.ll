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

5:                                                ; preds = %39, %0
  %6 = phi double [ undef, %0 ], [ %20, %39 ]
  %7 = phi double [ undef, %0 ], [ %16, %39 ]
  %8 = phi i32 [ 15625, %0 ], [ %13, %39 ]
  %9 = phi double [ 0.000000e+00, %0 ], [ %41, %39 ]
  %10 = load double, ptr @TLimit, align 8
  %11 = fcmp olt double %9, %10
  br i1 %11, label %12, label %43

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
  br i1 %42, label %43, label %5, !llvm.loop !9

43:                                               ; preds = %39, %5
  %44 = phi double [ %6, %5 ], [ %20, %39 ]
  %45 = phi double [ %7, %5 ], [ %16, %39 ]
  %46 = phi i32 [ %8, %5 ], [ 512000000, %39 ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %47 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %48

48:                                               ; preds = %50, %43
  %49 = phi i32 [ %51, %50 ], [ 1, %43 ]
  %.not.not3 = icmp slt i32 %49, %46
  br i1 %.not.not3, label %50, label %52

50:                                               ; preds = %48
  %51 = add nuw nsw i32 %49, 1
  br label %48, !llvm.loop !10

52:                                               ; preds = %48
  %53 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %54 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %55 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %56 = fmul double %54, %55
  %57 = fcmp olt double %56, 0.000000e+00
  %58 = select i1 %57, double 0.000000e+00, double %56
  store double %58, ptr @nulltime, align 8
  %59 = load double, ptr @sa, align 8
  %60 = fneg double %58
  %61 = call double @llvm.fmuladd.f64(double %54, double %59, double %60)
  store double %61, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %62 = load double, ptr @D1, align 8
  %63 = load double, ptr @D2, align 8
  %64 = fadd double %62, %63
  %65 = load double, ptr @D3, align 8
  %66 = fadd double %64, %65
  %67 = load double, ptr @one, align 8
  %68 = fadd double %67, %62
  %69 = load double, ptr @E2, align 8
  %70 = fadd double %68, %69
  %71 = load double, ptr @E3, align 8
  %72 = fadd double %70, %71
  %73 = fdiv double %66, %72
  store double %73, ptr @sa, align 8
  store double %62, ptr @sb, align 8
  %74 = fdiv double %61, 1.400000e+01
  store double %74, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %75 = fadd double %73, %62
  %76 = load double, ptr @two, align 8
  %77 = call double @llvm.fmuladd.f64(double %76, double %44, double %75)
  %78 = fmul double %45, %77
  %79 = fdiv double %78, %76
  store double %79, ptr @sa, align 8
  %80 = fdiv double %67, %79
  store double %80, ptr @sb, align 8
  %81 = fptosi double %80 to i32
  %82 = mul nsw i32 %81, 40000
  %83 = sitofp i32 %82 to double
  %84 = load double, ptr @scale, align 8
  %85 = fdiv double %83, %84
  %86 = fptosi double %85 to i32
  %87 = fadd double %80, -2.520000e+01
  store double %87, ptr @sc, align 8
  %88 = fdiv double %67, %74
  store double %88, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %89 = fmul double %87, 1.000000e-30
  %90 = fmul double %61, 1.000000e-30
  %91 = fmul double %88, 1.000000e-30
  %92 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %89, double noundef %90, double noundef %91) #4
  store i32 %86, ptr %2, align 4
  %93 = load double, ptr @five, align 8
  %94 = fneg double %93
  %95 = load double, ptr @one, align 8
  %96 = fneg double %95
  store double %96, ptr @sa, align 8
  %97 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %98

98:                                               ; preds = %101, %52
  %99 = phi double [ %102, %101 ], [ %94, %52 ]
  %100 = phi i32 [ %105, %101 ], [ 1, %52 ]
  %.not = icmp sgt i32 %100, %86
  br i1 %.not, label %106, label %101

101:                                              ; preds = %98
  %102 = fneg double %99
  %103 = load double, ptr @sa, align 8
  %104 = fsub double %103, %99
  store double %104, ptr @sa, align 8
  %105 = add nuw nsw i32 %100, 1
  br label %98, !llvm.loop !11

106:                                              ; preds = %98
  %107 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %108 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %109 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %110 = fmul double %108, %109
  %111 = fcmp olt double %110, 0.000000e+00
  %storemerge = select i1 %111, double 0.000000e+00, double %110
  store double %storemerge, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %112 = sitofp i32 %86 to double
  store double %112, ptr @sc, align 8
  %113 = load double, ptr @sa, align 8
  store double 0.000000e+00, ptr %1, align 8
  %114 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %115

115:                                              ; preds = %121, %106
  %116 = phi double [ %126, %121 ], [ %113, %106 ]
  %117 = phi double [ %122, %121 ], [ %99, %106 ]
  %118 = phi double [ %129, %121 ], [ 0.000000e+00, %106 ]
  %119 = phi double [ %128, %121 ], [ 0.000000e+00, %106 ]
  %120 = phi i32 [ %133, %121 ], [ 1, %106 ]
  %.not4 = icmp sgt i32 %120, %86
  br i1 %.not4, label %134, label %121

121:                                              ; preds = %115
  %122 = fneg double %117
  %123 = load double, ptr @sa, align 8
  %124 = fsub double %123, %117
  store double %124, ptr @sa, align 8
  %125 = load double, ptr @two, align 8
  %126 = fadd double %116, %125
  %127 = fsub double %122, %126
  %128 = fadd double %119, %127
  %129 = call double @llvm.fmuladd.f64(double %117, double %126, double %118)
  %130 = load double, ptr %1, align 8
  %131 = fdiv double %117, %126
  %132 = fsub double %130, %131
  store double %132, ptr %1, align 8
  %133 = add nuw nsw i32 %120, 1
  br label %115, !llvm.loop !12

134:                                              ; preds = %115
  %135 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %136 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %137 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %138 = fmul double %136, %137
  store double %138, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %139 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %140 = fsub double %138, %139
  %141 = fdiv double %140, 7.000000e+00
  store double %141, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %142 = load double, ptr @sa, align 8
  %143 = fmul double %142, %119
  %144 = load double, ptr @sc, align 8
  %145 = fdiv double %143, %144
  %146 = fptosi double %145 to i32
  store i32 %146, ptr %2, align 4
  %147 = load double, ptr @four, align 8
  %148 = load double, ptr %1, align 8
  %149 = fmul double %147, %148
  %150 = load double, ptr @five, align 8
  %151 = fdiv double %149, %150
  store double %151, ptr @sa, align 8
  %152 = fdiv double %150, %118
  %153 = fadd double %151, %152
  store double %153, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %154 = fmul double %118, %118
  %155 = fmul double %154, %118
  %156 = fdiv double 3.125000e+01, %155
  %157 = fsub double %153, %156
  store double %157, ptr @piprg, align 8
  %158 = load double, ptr @piref, align 8
  %159 = fsub double %157, %158
  store double %159, ptr @pierr, align 8
  %160 = load double, ptr @one, align 8
  %161 = fdiv double %160, %141
  store double %161, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %162 = fmul double %159, 1.000000e-30
  %163 = fmul double %140, 1.000000e-30
  %164 = fmul double %161, 1.000000e-30
  %165 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %162, double noundef %163, double noundef %164) #4
  %166 = load double, ptr @piref, align 8
  %167 = load double, ptr @three, align 8
  %168 = sitofp i32 %146 to double
  %169 = fmul double %167, %168
  %170 = fdiv double %166, %169
  %171 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %172

172:                                              ; preds = %176, %134
  %173 = phi double [ %178, %176 ], [ 0.000000e+00, %134 ]
  %174 = phi double [ %195, %176 ], [ 0.000000e+00, %134 ]
  %175 = phi i32 [ %196, %176 ], [ 1, %134 ]
  %.not5.not = icmp slt i32 %175, %146
  br i1 %.not5.not, label %176, label %197

176:                                              ; preds = %172
  %177 = load double, ptr @one, align 8
  %178 = fadd double %173, %177
  %179 = fmul double %178, %170
  %180 = fmul double %179, %179
  store double %180, ptr %1, align 8
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
  %196 = add nuw nsw i32 %175, 1
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
  store double %207, ptr %1, align 8
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
  %.not6.not = icmp slt i32 %246, %146
  br i1 %.not6.not, label %247, label %266

247:                                              ; preds = %244
  %248 = uitofp nneg i32 %246 to double
  %249 = fmul double %242, %248
  %250 = fmul double %249, %249
  store double %250, ptr %1, align 8
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
  %265 = add nuw nsw i32 %246, 1
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
  store double %276, ptr %1, align 8
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
  store double %276, ptr %1, align 8
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
  %.not7.not = icmp slt i32 %323, %146
  br i1 %.not7.not, label %324, label %357

324:                                              ; preds = %321
  %325 = uitofp nneg i32 %323 to double
  %326 = fmul double %319, %325
  %327 = fmul double %326, %326
  store double %327, ptr %1, align 8
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
  %356 = add nuw nsw i32 %323, 1
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
  store double %367, ptr %1, align 8
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
  %.not8.not = icmp slt i32 %413, %146
  br i1 %.not8.not, label %414, label %446

414:                                              ; preds = %411
  %415 = uitofp nneg i32 %413 to double
  %416 = fmul double %409, %415
  %417 = fmul double %416, %416
  store double %417, ptr %1, align 8
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
  %445 = add nuw nsw i32 %413, 1
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
  store double %456, ptr %1, align 8
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
  store double %495, ptr %1, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %496 = fdiv double f0x40599541F7F192A4, %168
  %497 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %498

498:                                              ; preds = %501, %446
  %499 = phi double [ %514, %501 ], [ 0.000000e+00, %446 ]
  %500 = phi i32 [ %515, %501 ], [ 1, %446 ]
  %.not9.not = icmp slt i32 %500, %146
  br i1 %.not9.not, label %501, label %516

501:                                              ; preds = %498
  %502 = uitofp nneg i32 %500 to double
  %503 = fmul double %496, %502
  %504 = fmul double %503, %503
  %505 = load double, ptr %1, align 8
  %506 = fadd double %503, %505
  %507 = fdiv double %505, %506
  %508 = fsub double %499, %507
  %509 = fadd double %504, %505
  %510 = fdiv double %503, %509
  %511 = fsub double %508, %510
  %512 = call double @llvm.fmuladd.f64(double %503, double %504, double %505)
  %513 = fdiv double %504, %512
  %514 = fsub double %511, %513
  %515 = add nuw nsw i32 %500, 1
  br label %498, !llvm.loop !17

516:                                              ; preds = %498
  %517 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %518 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %519 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %520 = load double, ptr @nulltime, align 8
  %521 = fneg double %520
  %522 = call double @llvm.fmuladd.f64(double %518, double %519, double %521)
  store double %522, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %523 = fdiv double %522, 1.200000e+01
  store double %523, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %524 = load double, ptr @sa, align 8
  %525 = fmul double %524, %524
  %526 = load double, ptr %1, align 8
  %527 = fneg double %526
  %528 = fadd double %524, %526
  %529 = fdiv double %526, %528
  %530 = fsub double %527, %529
  %531 = fadd double %525, %526
  %532 = fdiv double %524, %531
  %533 = fsub double %530, %532
  %534 = call double @llvm.fmuladd.f64(double %524, double %525, double %526)
  %535 = fdiv double %525, %534
  %536 = fsub double %533, %535
  store double %536, ptr @sa, align 8
  %537 = fmul nnan double %496, 1.800000e+01
  %538 = load double, ptr @two, align 8
  %539 = call double @llvm.fmuladd.f64(double %538, double %499, double %536)
  %540 = fmul double %537, %539
  store double %540, ptr @sa, align 8
  %541 = fptosi double %540 to i32
  %542 = mul nsw i32 %541, -2000
  store i32 %542, ptr %2, align 4
  %543 = sitofp i32 %542 to double
  %544 = load double, ptr @scale, align 8
  %545 = fdiv double %543, %544
  %546 = fptosi double %545 to i32
  store i32 %546, ptr %2, align 4
  %547 = fadd double %540, 5.002000e+02
  store double %547, ptr @sc, align 8
  %548 = load double, ptr @one, align 8
  %549 = fdiv double %548, %523
  store double %549, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %550 = fmul double %547, 1.000000e-30
  %551 = fmul double %522, 1.000000e-30
  %552 = fmul double %549, 1.000000e-30
  %553 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %550, double noundef %551, double noundef %552) #4
  %554 = load double, ptr @piref, align 8
  %555 = load double, ptr @three, align 8
  %556 = sitofp i32 %546 to double
  %557 = fmul double %555, %556
  %558 = fdiv double %554, %557
  %559 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %560

560:                                              ; preds = %563, %516
  %561 = phi double [ %594, %563 ], [ 0.000000e+00, %516 ]
  %562 = phi i32 [ %595, %563 ], [ 1, %516 ]
  %.not10.not = icmp slt i32 %562, %546
  br i1 %.not10.not, label %563, label %596

563:                                              ; preds = %560
  %564 = uitofp nneg i32 %562 to double
  %565 = fmul double %558, %564
  %566 = fmul double %565, %565
  store double %566, ptr %1, align 8
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
  %580 = fmul double %579, %579
  %581 = fmul double %580, %565
  %582 = load double, ptr @A6, align 8
  %583 = load double, ptr @A5, align 8
  %584 = call double @llvm.fmuladd.f64(double %582, double %566, double %583)
  %585 = load double, ptr @A4, align 8
  %586 = call double @llvm.fmuladd.f64(double %584, double %566, double %585)
  %587 = load double, ptr @A3, align 8
  %588 = call double @llvm.fmuladd.f64(double %586, double %566, double %587)
  %589 = load double, ptr @A2, align 8
  %590 = call double @llvm.fmuladd.f64(double %588, double %566, double %589)
  %591 = load double, ptr @A1, align 8
  %592 = call double @llvm.fmuladd.f64(double %590, double %566, double %591)
  %593 = call double @llvm.fmuladd.f64(double %592, double %566, double %578)
  %594 = call double @llvm.fmuladd.f64(double %581, double %593, double %561)
  %595 = add nuw nsw i32 %562, 1
  br label %560, !llvm.loop !18

596:                                              ; preds = %560
  %597 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %598 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %599 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %600 = load double, ptr @nulltime, align 8
  %601 = fneg double %600
  %602 = call double @llvm.fmuladd.f64(double %598, double %599, double %601)
  store double %602, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %603 = load double, ptr @piref, align 8
  %604 = load double, ptr @three, align 8
  %605 = fdiv double %603, %604
  %606 = fmul double %605, %605
  store double %606, ptr %1, align 8
  %607 = load double, ptr @A6, align 8
  %608 = load double, ptr @A5, align 8
  %609 = call double @llvm.fmuladd.f64(double %607, double %606, double %608)
  %610 = load double, ptr @A4, align 8
  %611 = call double @llvm.fmuladd.f64(double %609, double %606, double %610)
  %612 = load double, ptr @A3, align 8
  %613 = call double @llvm.fmuladd.f64(double %611, double %606, double %612)
  %614 = load double, ptr @A2, align 8
  %615 = call double @llvm.fmuladd.f64(double %613, double %606, double %614)
  %616 = load double, ptr @A1, align 8
  %617 = call double @llvm.fmuladd.f64(double %615, double %606, double %616)
  %618 = load double, ptr @one, align 8
  %619 = call double @llvm.fmuladd.f64(double %617, double %606, double %618)
  %620 = fmul double %605, %619
  store double %620, ptr @sa, align 8
  %621 = load double, ptr @B6, align 8
  %622 = load double, ptr @B5, align 8
  %623 = call double @llvm.fmuladd.f64(double %621, double %606, double %622)
  %624 = load double, ptr @B4, align 8
  %625 = call double @llvm.fmuladd.f64(double %606, double %623, double %624)
  %626 = load double, ptr @B3, align 8
  %627 = call double @llvm.fmuladd.f64(double %606, double %625, double %626)
  %628 = load double, ptr @B2, align 8
  %629 = call double @llvm.fmuladd.f64(double %606, double %627, double %628)
  %630 = load double, ptr @B1, align 8
  %631 = call double @llvm.fmuladd.f64(double %606, double %629, double %630)
  %632 = call double @llvm.fmuladd.f64(double %606, double %631, double %618)
  store double %632, ptr @sb, align 8
  %633 = fmul double %620, %632
  %634 = fmul double %633, %632
  store double %634, ptr @sa, align 8
  %635 = fdiv double %602, 3.000000e+01
  store double %635, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %636 = load double, ptr @two, align 8
  %637 = call double @llvm.fmuladd.f64(double %636, double %561, double %634)
  %638 = fmul double %558, %637
  %639 = fdiv double %638, %636
  store double %639, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %640 = fadd double %639, f0xBFD2AAAAAAAAAAAB
  store double %640, ptr @sc, align 8
  %641 = fdiv double %618, %635
  store double %641, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %642 = fmul double %640, 1.000000e-30
  %643 = fmul double %602, 1.000000e-30
  %644 = fmul double %641, 1.000000e-30
  %645 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %642, double noundef %643, double noundef %644) #4
  %646 = load double, ptr @five, align 8
  %647 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %648 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %649 = fsub double %647, %648
  %650 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %651 = call double @llvm.fmuladd.f64(double %646, double %649, double %650)
  %652 = fdiv double %651, 5.200000e+01
  store double %652, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %653 = load double, ptr @one, align 8
  %654 = fdiv double %653, %652
  store double %654, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %655 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %656 = fadd double %655, %650
  %657 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %658 = fadd double %656, %657
  %659 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %660 = fadd double %658, %659
  %661 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %662 = fadd double %660, %661
  store double %662, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %663 = load double, ptr @four, align 8
  %664 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %665 = call double @llvm.fmuladd.f64(double %663, double %664, double %662)
  %666 = fdiv double %665, 1.520000e+02
  store double %666, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %667 = fdiv double %653, %666
  store double %667, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %662, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %668 = fadd double %662, %664
  %669 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %670 = fadd double %668, %669
  %671 = fdiv double %670, 1.460000e+02
  store double %671, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %672 = fdiv double %653, %671
  store double %672, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %673 = fadd double %650, %657
  %674 = fadd double %673, %661
  %675 = fadd double %674, %669
  %676 = fdiv double %675, 9.100000e+01
  store double %676, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %677 = fdiv double %653, %676
  store double %677, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar11 = call i32 @putchar(i32 10)
  %678 = load i32, ptr %2, align 4
  %679 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %678) #4
  %680 = load double, ptr @nulltime, align 8
  %681 = fmul double %680, 1.000000e-30
  %682 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %681) #4
  %683 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %684 = fmul double %683, 1.000000e-30
  %685 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %684) #4
  %686 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %687 = fmul double %686, 1.000000e-30
  %688 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %687) #4
  %689 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %690 = fmul double %689, 1.000000e-30
  %691 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %690) #4
  %692 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %693 = fmul double %692, 1.000000e-30
  %694 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %693) #4
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
