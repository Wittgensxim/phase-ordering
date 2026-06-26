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
  %6 = phi double [ %.lcssa9, %44 ], [ undef, %0 ]
  %7 = phi double [ %16, %44 ], [ undef, %0 ]
  %8 = phi i32 [ %13, %44 ], [ 15625, %0 ]
  %9 = phi double [ %41, %44 ], [ 0.000000e+00, %0 ]
  %10 = load double, ptr @TLimit, align 8
  %11 = fcmp olt double %9, %10
  br i1 %11, label %12, label %.loopexit

12:                                               ; preds = %5
  %13 = shl i32 %8, 1
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
  %exitcond = icmp ne i32 %21, %13
  br i1 %exitcond, label %22, label %39

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
  %.lcssa9 = phi double [ %20, %18 ]
  %40 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %41 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %41, ptr @sa, align 8
  %42 = icmp eq i32 %8, 256000000
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  %.lcssa16 = phi double [ %16, %39 ]
  %.lcssa9.lcssa = phi double [ %.lcssa9, %39 ]
  br label %45

44:                                               ; preds = %39
  br label %5, !llvm.loop !9

.loopexit:                                        ; preds = %5
  %.lcssa14 = phi double [ %6, %5 ]
  %.lcssa12 = phi double [ %7, %5 ]
  br label %45

45:                                               ; preds = %.loopexit, %43
  %46 = phi double [ %.lcssa9.lcssa, %43 ], [ %.lcssa14, %.loopexit ]
  %47 = phi double [ %.lcssa16, %43 ], [ %.lcssa12, %.loopexit ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %48 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %49

49:                                               ; preds = %45
  br label %50

50:                                               ; preds = %49
  %51 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %52 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %53 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %54 = fmul double %52, %53
  %55 = fcmp olt double %54, 0.000000e+00
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %50
  %58 = phi double [ 0.000000e+00, %56 ], [ %54, %50 ]
  store double %58, ptr @nulltime, align 8
  %59 = load double, ptr @sa, align 8
  %60 = fneg double %58
  %61 = call double @llvm.fmuladd.f64(double %52, double %59, double %60)
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
  %77 = call double @llvm.fmuladd.f64(double %76, double %46, double %75)
  %78 = fmul double %47, %77
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
  %smax = call i32 @llvm.smax.i32(i32 %86, i32 0)
  %98 = add nuw i32 %smax, 1
  br label %99

99:                                               ; preds = %102, %57
  %100 = phi double [ %103, %102 ], [ %94, %57 ]
  %101 = phi i32 [ %106, %102 ], [ 1, %57 ]
  %exitcond17 = icmp eq i32 %101, %98
  br i1 %exitcond17, label %107, label %102

102:                                              ; preds = %99
  %103 = fneg double %100
  %104 = load double, ptr @sa, align 8
  %105 = fsub double %104, %100
  store double %105, ptr @sa, align 8
  %106 = add nuw i32 %101, 1
  br label %99, !llvm.loop !10

107:                                              ; preds = %99
  %.lcssa8 = phi double [ %100, %99 ]
  %108 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %109 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %110 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %111 = fmul double %109, %110
  %112 = fcmp olt double %111, 0.000000e+00
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  br label %114

114:                                              ; preds = %113, %107
  %storemerge = phi double [ 0.000000e+00, %113 ], [ %111, %107 ]
  store double %storemerge, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %115 = sitofp i32 %86 to double
  store double %115, ptr @sc, align 8
  %116 = load double, ptr @sa, align 8
  store double 0.000000e+00, ptr %1, align 8
  %117 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %smax18 = call i32 @llvm.smax.i32(i32 %86, i32 0)
  %118 = add nuw i32 %smax18, 1
  br label %119

119:                                              ; preds = %125, %114
  %120 = phi double [ %130, %125 ], [ %116, %114 ]
  %121 = phi double [ %126, %125 ], [ %.lcssa8, %114 ]
  %122 = phi double [ %133, %125 ], [ 0.000000e+00, %114 ]
  %123 = phi double [ %132, %125 ], [ 0.000000e+00, %114 ]
  %124 = phi i32 [ %137, %125 ], [ 1, %114 ]
  %exitcond19 = icmp eq i32 %124, %118
  br i1 %exitcond19, label %138, label %125

125:                                              ; preds = %119
  %126 = fneg double %121
  %127 = load double, ptr @sa, align 8
  %128 = fsub double %127, %121
  store double %128, ptr @sa, align 8
  %129 = load double, ptr @two, align 8
  %130 = fadd double %120, %129
  %131 = fsub double %126, %130
  %132 = fadd double %123, %131
  %133 = call double @llvm.fmuladd.f64(double %121, double %130, double %122)
  %134 = load double, ptr %1, align 8
  %135 = fdiv double %121, %130
  %136 = fsub double %134, %135
  store double %136, ptr %1, align 8
  %137 = add nuw i32 %124, 1
  br label %119, !llvm.loop !11

138:                                              ; preds = %119
  %.lcssa7 = phi double [ %122, %119 ]
  %.lcssa6 = phi double [ %123, %119 ]
  %139 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %140 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %141 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %142 = fmul double %140, %141
  store double %142, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %143 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %144 = fsub double %142, %143
  %145 = fdiv double %144, 7.000000e+00
  store double %145, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %146 = load double, ptr @sa, align 8
  %147 = fmul double %146, %.lcssa6
  %148 = load double, ptr @sc, align 8
  %149 = fdiv double %147, %148
  %150 = fptosi double %149 to i32
  store i32 %150, ptr %2, align 4
  %151 = load double, ptr @four, align 8
  %152 = load double, ptr %1, align 8
  %153 = fmul double %151, %152
  %154 = load double, ptr @five, align 8
  %155 = fdiv double %153, %154
  store double %155, ptr @sa, align 8
  %156 = fdiv double %154, %.lcssa7
  %157 = fadd double %155, %156
  store double %157, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %158 = fmul double %.lcssa7, %.lcssa7
  %159 = fmul double %158, %.lcssa7
  %160 = fdiv double 3.125000e+01, %159
  %161 = fsub double %157, %160
  store double %161, ptr @piprg, align 8
  %162 = load double, ptr @piref, align 8
  %163 = fsub double %161, %162
  store double %163, ptr @pierr, align 8
  %164 = load double, ptr @one, align 8
  %165 = fdiv double %164, %145
  store double %165, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %166 = fmul double %163, 1.000000e-30
  %167 = fmul double %144, 1.000000e-30
  %168 = fmul double %165, 1.000000e-30
  %169 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %166, double noundef %167, double noundef %168) #4
  %170 = load double, ptr @piref, align 8
  %171 = load double, ptr @three, align 8
  %172 = sitofp i32 %150 to double
  %173 = fmul double %171, %172
  %174 = fdiv double %170, %173
  %175 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %smax20 = call i32 @llvm.smax.i32(i32 %150, i32 1)
  br label %176

176:                                              ; preds = %180, %138
  %177 = phi double [ %182, %180 ], [ 0.000000e+00, %138 ]
  %178 = phi double [ %199, %180 ], [ 0.000000e+00, %138 ]
  %179 = phi i32 [ %200, %180 ], [ 1, %138 ]
  %exitcond21 = icmp ne i32 %179, %smax20
  br i1 %exitcond21, label %180, label %201

180:                                              ; preds = %176
  %181 = load double, ptr @one, align 8
  %182 = fadd double %177, %181
  %183 = fmul double %182, %174
  %184 = fmul double %183, %183
  store double %184, ptr %1, align 8
  %185 = load double, ptr @A6, align 8
  %186 = load double, ptr @A5, align 8
  %187 = fneg double %186
  %188 = call double @llvm.fmuladd.f64(double %185, double %184, double %187)
  %189 = load double, ptr @A4, align 8
  %190 = call double @llvm.fmuladd.f64(double %188, double %184, double %189)
  %191 = load double, ptr @A3, align 8
  %192 = fneg double %191
  %193 = call double @llvm.fmuladd.f64(double %190, double %184, double %192)
  %194 = load double, ptr @A2, align 8
  %195 = call double @llvm.fmuladd.f64(double %193, double %184, double %194)
  %196 = load double, ptr @A1, align 8
  %197 = call double @llvm.fmuladd.f64(double %195, double %184, double %196)
  %198 = call double @llvm.fmuladd.f64(double %197, double %184, double %181)
  %199 = call double @llvm.fmuladd.f64(double %183, double %198, double %178)
  %200 = add nuw i32 %179, 1
  br label %176, !llvm.loop !12

201:                                              ; preds = %176
  %.lcssa5 = phi double [ %178, %176 ]
  %202 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %203 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %204 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %205 = load double, ptr @nulltime, align 8
  %206 = fneg double %205
  %207 = call double @llvm.fmuladd.f64(double %203, double %204, double %206)
  store double %207, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %208 = load double, ptr @piref, align 8
  %209 = load double, ptr @three, align 8
  %210 = fdiv double %208, %209
  %211 = fmul double %210, %210
  store double %211, ptr %1, align 8
  %212 = load double, ptr @A6, align 8
  %213 = load double, ptr @A5, align 8
  %214 = fneg double %213
  %215 = call double @llvm.fmuladd.f64(double %212, double %211, double %214)
  %216 = load double, ptr @A4, align 8
  %217 = call double @llvm.fmuladd.f64(double %215, double %211, double %216)
  %218 = load double, ptr @A3, align 8
  %219 = fneg double %218
  %220 = call double @llvm.fmuladd.f64(double %217, double %211, double %219)
  %221 = load double, ptr @A2, align 8
  %222 = call double @llvm.fmuladd.f64(double %220, double %211, double %221)
  %223 = load double, ptr @A1, align 8
  %224 = call double @llvm.fmuladd.f64(double %222, double %211, double %223)
  %225 = load double, ptr @one, align 8
  %226 = call double @llvm.fmuladd.f64(double %224, double %211, double %225)
  %227 = fmul double %210, %226
  store double %227, ptr @sa, align 8
  %228 = fdiv double %207, 1.700000e+01
  store double %228, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %229 = load double, ptr @two, align 8
  %230 = call double @llvm.fmuladd.f64(double %229, double %.lcssa5, double %227)
  %231 = fmul double %174, %230
  %232 = fdiv double %231, %229
  store double %232, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %233 = fadd double %232, -5.000000e-01
  store double %233, ptr @sc, align 8
  %234 = fdiv double %225, %228
  store double %234, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %235 = fmul double %233, 1.000000e-30
  %236 = fmul double %207, 1.000000e-30
  %237 = fmul double %234, 1.000000e-30
  %238 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %235, double noundef %236, double noundef %237) #4
  %239 = load double, ptr @A3, align 8
  %240 = fneg double %239
  store double %240, ptr @A3, align 8
  %241 = load double, ptr @A5, align 8
  %242 = fneg double %241
  store double %242, ptr @A5, align 8
  %243 = load double, ptr @piref, align 8
  %244 = load double, ptr @three, align 8
  %245 = fmul double %244, %172
  %246 = fdiv double %243, %245
  %247 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %248

248:                                              ; preds = %251, %201
  %249 = phi double [ %268, %251 ], [ 0.000000e+00, %201 ]
  %250 = phi i32 [ %269, %251 ], [ 1, %201 ]
  %exitcond22 = icmp ne i32 %250, %smax20
  br i1 %exitcond22, label %251, label %270

251:                                              ; preds = %248
  %252 = uitofp nneg i32 %250 to double
  %253 = fmul double %246, %252
  %254 = fmul double %253, %253
  store double %254, ptr %1, align 8
  %255 = load double, ptr @B6, align 8
  %256 = load double, ptr @B5, align 8
  %257 = call double @llvm.fmuladd.f64(double %255, double %254, double %256)
  %258 = load double, ptr @B4, align 8
  %259 = call double @llvm.fmuladd.f64(double %254, double %257, double %258)
  %260 = load double, ptr @B3, align 8
  %261 = call double @llvm.fmuladd.f64(double %254, double %259, double %260)
  %262 = load double, ptr @B2, align 8
  %263 = call double @llvm.fmuladd.f64(double %254, double %261, double %262)
  %264 = load double, ptr @B1, align 8
  %265 = call double @llvm.fmuladd.f64(double %254, double %263, double %264)
  %266 = call double @llvm.fmuladd.f64(double %254, double %265, double %249)
  %267 = load double, ptr @one, align 8
  %268 = fadd double %266, %267
  %269 = add nuw i32 %250, 1
  br label %248, !llvm.loop !13

270:                                              ; preds = %248
  %.lcssa4 = phi double [ %249, %248 ]
  %271 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %272 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %273 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %274 = load double, ptr @nulltime, align 8
  %275 = fneg double %274
  %276 = call double @llvm.fmuladd.f64(double %272, double %273, double %275)
  store double %276, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %277 = load double, ptr @piref, align 8
  %278 = load double, ptr @three, align 8
  %279 = fdiv double %277, %278
  %280 = fmul double %279, %279
  store double %280, ptr %1, align 8
  %281 = load double, ptr @B6, align 8
  %282 = load double, ptr @B5, align 8
  %283 = call double @llvm.fmuladd.f64(double %281, double %280, double %282)
  %284 = load double, ptr @B4, align 8
  %285 = call double @llvm.fmuladd.f64(double %280, double %283, double %284)
  %286 = load double, ptr @B3, align 8
  %287 = call double @llvm.fmuladd.f64(double %280, double %285, double %286)
  %288 = load double, ptr @B2, align 8
  %289 = call double @llvm.fmuladd.f64(double %280, double %287, double %288)
  %290 = load double, ptr @B1, align 8
  %291 = call double @llvm.fmuladd.f64(double %280, double %289, double %290)
  %292 = load double, ptr @one, align 8
  %293 = call double @llvm.fmuladd.f64(double %280, double %291, double %292)
  store double %293, ptr @sa, align 8
  %294 = fdiv double %276, 1.500000e+01
  store double %294, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %295 = fadd double %293, %292
  %296 = load double, ptr @two, align 8
  %297 = call double @llvm.fmuladd.f64(double %296, double %.lcssa4, double %295)
  %298 = fmul double %246, %297
  %299 = fdiv double %298, %296
  store double %299, ptr @sa, align 8
  store double %280, ptr %1, align 8
  %300 = load double, ptr @A6, align 8
  %301 = load double, ptr @A5, align 8
  %302 = call double @llvm.fmuladd.f64(double %300, double %280, double %301)
  %303 = load double, ptr @A4, align 8
  %304 = call double @llvm.fmuladd.f64(double %302, double %280, double %303)
  %305 = load double, ptr @A3, align 8
  %306 = call double @llvm.fmuladd.f64(double %304, double %280, double %305)
  %307 = load double, ptr @A2, align 8
  %308 = call double @llvm.fmuladd.f64(double %306, double %280, double %307)
  %309 = load double, ptr @A1, align 8
  %310 = call double @llvm.fmuladd.f64(double %308, double %280, double %309)
  %311 = load double, ptr @A0, align 8
  %312 = call double @llvm.fmuladd.f64(double %310, double %280, double %311)
  %313 = fmul double %279, %312
  store double %313, ptr @sb, align 8
  %314 = fsub double %299, %313
  store double %314, ptr @sc, align 8
  %315 = fdiv double %292, %294
  store double %315, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %316 = fmul double %314, 1.000000e-30
  %317 = fmul double %276, 1.000000e-30
  %318 = fmul double %315, 1.000000e-30
  %319 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %316, double noundef %317, double noundef %318) #4
  %320 = load double, ptr @piref, align 8
  %321 = load double, ptr @three, align 8
  %322 = fmul double %321, %172
  %323 = fdiv double %320, %322
  %324 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %325

325:                                              ; preds = %328, %270
  %326 = phi double [ %359, %328 ], [ 0.000000e+00, %270 ]
  %327 = phi i32 [ %360, %328 ], [ 1, %270 ]
  %exitcond23 = icmp ne i32 %327, %smax20
  br i1 %exitcond23, label %328, label %361

328:                                              ; preds = %325
  %329 = uitofp nneg i32 %327 to double
  %330 = fmul double %323, %329
  %331 = fmul double %330, %330
  store double %331, ptr %1, align 8
  %332 = load double, ptr @A6, align 8
  %333 = load double, ptr @A5, align 8
  %334 = call double @llvm.fmuladd.f64(double %332, double %331, double %333)
  %335 = load double, ptr @A4, align 8
  %336 = call double @llvm.fmuladd.f64(double %334, double %331, double %335)
  %337 = load double, ptr @A3, align 8
  %338 = call double @llvm.fmuladd.f64(double %336, double %331, double %337)
  %339 = load double, ptr @A2, align 8
  %340 = call double @llvm.fmuladd.f64(double %338, double %331, double %339)
  %341 = load double, ptr @A1, align 8
  %342 = call double @llvm.fmuladd.f64(double %340, double %331, double %341)
  %343 = load double, ptr @one, align 8
  %344 = call double @llvm.fmuladd.f64(double %342, double %331, double %343)
  %345 = fmul double %330, %344
  %346 = load double, ptr @B6, align 8
  %347 = load double, ptr @B5, align 8
  %348 = call double @llvm.fmuladd.f64(double %346, double %331, double %347)
  %349 = load double, ptr @B4, align 8
  %350 = call double @llvm.fmuladd.f64(double %331, double %348, double %349)
  %351 = load double, ptr @B3, align 8
  %352 = call double @llvm.fmuladd.f64(double %331, double %350, double %351)
  %353 = load double, ptr @B2, align 8
  %354 = call double @llvm.fmuladd.f64(double %331, double %352, double %353)
  %355 = load double, ptr @B1, align 8
  %356 = call double @llvm.fmuladd.f64(double %331, double %354, double %355)
  %357 = call double @llvm.fmuladd.f64(double %331, double %356, double %343)
  %358 = fdiv double %345, %357
  %359 = fadd double %326, %358
  %360 = add nuw i32 %327, 1
  br label %325, !llvm.loop !14

361:                                              ; preds = %325
  %.lcssa3 = phi double [ %326, %325 ]
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
  %402 = fmul double %323, %401
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
  %412 = fmul double %411, %172
  %413 = fdiv double %410, %412
  %414 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %415

415:                                              ; preds = %418, %361
  %416 = phi double [ %448, %418 ], [ 0.000000e+00, %361 ]
  %417 = phi i32 [ %449, %418 ], [ 1, %361 ]
  %exitcond24 = icmp ne i32 %417, %smax20
  br i1 %exitcond24, label %418, label %450

418:                                              ; preds = %415
  %419 = uitofp nneg i32 %417 to double
  %420 = fmul double %413, %419
  %421 = fmul double %420, %420
  store double %421, ptr %1, align 8
  %422 = load double, ptr @A6, align 8
  %423 = load double, ptr @A5, align 8
  %424 = call double @llvm.fmuladd.f64(double %422, double %421, double %423)
  %425 = load double, ptr @A4, align 8
  %426 = call double @llvm.fmuladd.f64(double %424, double %421, double %425)
  %427 = load double, ptr @A3, align 8
  %428 = call double @llvm.fmuladd.f64(double %426, double %421, double %427)
  %429 = load double, ptr @A2, align 8
  %430 = call double @llvm.fmuladd.f64(double %428, double %421, double %429)
  %431 = load double, ptr @A1, align 8
  %432 = call double @llvm.fmuladd.f64(double %430, double %421, double %431)
  %433 = load double, ptr @one, align 8
  %434 = call double @llvm.fmuladd.f64(double %432, double %421, double %433)
  %435 = fmul double %420, %434
  %436 = load double, ptr @B6, align 8
  %437 = load double, ptr @B5, align 8
  %438 = call double @llvm.fmuladd.f64(double %436, double %421, double %437)
  %439 = load double, ptr @B4, align 8
  %440 = call double @llvm.fmuladd.f64(double %421, double %438, double %439)
  %441 = load double, ptr @B3, align 8
  %442 = call double @llvm.fmuladd.f64(double %421, double %440, double %441)
  %443 = load double, ptr @B2, align 8
  %444 = call double @llvm.fmuladd.f64(double %421, double %442, double %443)
  %445 = load double, ptr @B1, align 8
  %446 = call double @llvm.fmuladd.f64(double %421, double %444, double %445)
  %447 = call double @llvm.fmuladd.f64(double %421, double %446, double %433)
  %448 = call double @llvm.fmuladd.f64(double %435, double %447, double %416)
  %449 = add nuw i32 %417, 1
  br label %415, !llvm.loop !15

450:                                              ; preds = %415
  %.lcssa2 = phi double [ %416, %415 ]
  %451 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %452 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %453 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %454 = load double, ptr @nulltime, align 8
  %455 = fneg double %454
  %456 = call double @llvm.fmuladd.f64(double %452, double %453, double %455)
  store double %456, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %457 = load double, ptr @piref, align 8
  %458 = load double, ptr @four, align 8
  %459 = fdiv double %457, %458
  %460 = fmul double %459, %459
  store double %460, ptr %1, align 8
  %461 = load double, ptr @A6, align 8
  %462 = load double, ptr @A5, align 8
  %463 = call double @llvm.fmuladd.f64(double %461, double %460, double %462)
  %464 = load double, ptr @A4, align 8
  %465 = call double @llvm.fmuladd.f64(double %463, double %460, double %464)
  %466 = load double, ptr @A3, align 8
  %467 = call double @llvm.fmuladd.f64(double %465, double %460, double %466)
  %468 = load double, ptr @A2, align 8
  %469 = call double @llvm.fmuladd.f64(double %467, double %460, double %468)
  %470 = load double, ptr @A1, align 8
  %471 = call double @llvm.fmuladd.f64(double %469, double %460, double %470)
  %472 = load double, ptr @one, align 8
  %473 = call double @llvm.fmuladd.f64(double %471, double %460, double %472)
  %474 = fmul double %459, %473
  store double %474, ptr @sa, align 8
  %475 = load double, ptr @B6, align 8
  %476 = load double, ptr @B5, align 8
  %477 = call double @llvm.fmuladd.f64(double %475, double %460, double %476)
  %478 = load double, ptr @B4, align 8
  %479 = call double @llvm.fmuladd.f64(double %460, double %477, double %478)
  %480 = load double, ptr @B3, align 8
  %481 = call double @llvm.fmuladd.f64(double %460, double %479, double %480)
  %482 = load double, ptr @B2, align 8
  %483 = call double @llvm.fmuladd.f64(double %460, double %481, double %482)
  %484 = load double, ptr @B1, align 8
  %485 = call double @llvm.fmuladd.f64(double %460, double %483, double %484)
  %486 = call double @llvm.fmuladd.f64(double %460, double %485, double %472)
  store double %486, ptr @sb, align 8
  %487 = fmul double %474, %486
  store double %487, ptr @sa, align 8
  %488 = fdiv double %456, 2.900000e+01
  store double %488, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %489 = load double, ptr @two, align 8
  %490 = call double @llvm.fmuladd.f64(double %489, double %.lcssa2, double %487)
  %491 = fmul double %413, %490
  %492 = fdiv double %491, %489
  store double %492, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %493 = fadd double %492, -2.500000e-01
  store double %493, ptr @sc, align 8
  %494 = fdiv double %472, %488
  store double %494, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %495 = fmul double %493, 1.000000e-30
  %496 = fmul double %456, 1.000000e-30
  %497 = fmul double %494, 1.000000e-30
  %498 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %495, double noundef %496, double noundef %497) #4
  %499 = load double, ptr @one, align 8
  store double %499, ptr %1, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %500 = fdiv double f0x40599541F7F192A4, %172
  %501 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %502

502:                                              ; preds = %505, %450
  %503 = phi double [ %518, %505 ], [ 0.000000e+00, %450 ]
  %504 = phi i32 [ %519, %505 ], [ 1, %450 ]
  %exitcond25 = icmp ne i32 %504, %smax20
  br i1 %exitcond25, label %505, label %520

505:                                              ; preds = %502
  %506 = uitofp nneg i32 %504 to double
  %507 = fmul double %500, %506
  %508 = fmul double %507, %507
  %509 = load double, ptr %1, align 8
  %510 = fadd double %507, %509
  %511 = fdiv double %509, %510
  %512 = fsub double %503, %511
  %513 = fadd double %508, %509
  %514 = fdiv double %507, %513
  %515 = fsub double %512, %514
  %516 = call double @llvm.fmuladd.f64(double %507, double %508, double %509)
  %517 = fdiv double %508, %516
  %518 = fsub double %515, %517
  %519 = add nuw i32 %504, 1
  br label %502, !llvm.loop !16

520:                                              ; preds = %502
  %.lcssa1 = phi double [ %503, %502 ]
  %521 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %522 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %523 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %524 = load double, ptr @nulltime, align 8
  %525 = fneg double %524
  %526 = call double @llvm.fmuladd.f64(double %522, double %523, double %525)
  store double %526, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %527 = fdiv double %526, 1.200000e+01
  store double %527, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %528 = load double, ptr @sa, align 8
  %529 = fmul double %528, %528
  %530 = load double, ptr %1, align 8
  %531 = fneg double %530
  %532 = fadd double %528, %530
  %533 = fdiv double %530, %532
  %534 = fsub double %531, %533
  %535 = fadd double %529, %530
  %536 = fdiv double %528, %535
  %537 = fsub double %534, %536
  %538 = call double @llvm.fmuladd.f64(double %528, double %529, double %530)
  %539 = fdiv double %529, %538
  %540 = fsub double %537, %539
  store double %540, ptr @sa, align 8
  %541 = fmul nnan double %500, 1.800000e+01
  %542 = load double, ptr @two, align 8
  %543 = call double @llvm.fmuladd.f64(double %542, double %.lcssa1, double %540)
  %544 = fmul double %541, %543
  store double %544, ptr @sa, align 8
  %545 = fptosi double %544 to i32
  %546 = mul nsw i32 %545, -2000
  store i32 %546, ptr %2, align 4
  %547 = sitofp i32 %546 to double
  %548 = load double, ptr @scale, align 8
  %549 = fdiv double %547, %548
  %550 = fptosi double %549 to i32
  store i32 %550, ptr %2, align 4
  %551 = fadd double %544, 5.002000e+02
  store double %551, ptr @sc, align 8
  %552 = load double, ptr @one, align 8
  %553 = fdiv double %552, %527
  store double %553, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %554 = fmul double %551, 1.000000e-30
  %555 = fmul double %526, 1.000000e-30
  %556 = fmul double %553, 1.000000e-30
  %557 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %554, double noundef %555, double noundef %556) #4
  %558 = load double, ptr @piref, align 8
  %559 = load double, ptr @three, align 8
  %560 = sitofp i32 %550 to double
  %561 = fmul double %559, %560
  %562 = fdiv double %558, %561
  %563 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %smax26 = call i32 @llvm.smax.i32(i32 %550, i32 1)
  br label %564

564:                                              ; preds = %567, %520
  %565 = phi double [ %598, %567 ], [ 0.000000e+00, %520 ]
  %566 = phi i32 [ %599, %567 ], [ 1, %520 ]
  %exitcond27 = icmp ne i32 %566, %smax26
  br i1 %exitcond27, label %567, label %600

567:                                              ; preds = %564
  %568 = uitofp nneg i32 %566 to double
  %569 = fmul double %562, %568
  %570 = fmul double %569, %569
  store double %570, ptr %1, align 8
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
  %584 = fmul double %583, %583
  %585 = fmul double %584, %569
  %586 = load double, ptr @A6, align 8
  %587 = load double, ptr @A5, align 8
  %588 = call double @llvm.fmuladd.f64(double %586, double %570, double %587)
  %589 = load double, ptr @A4, align 8
  %590 = call double @llvm.fmuladd.f64(double %588, double %570, double %589)
  %591 = load double, ptr @A3, align 8
  %592 = call double @llvm.fmuladd.f64(double %590, double %570, double %591)
  %593 = load double, ptr @A2, align 8
  %594 = call double @llvm.fmuladd.f64(double %592, double %570, double %593)
  %595 = load double, ptr @A1, align 8
  %596 = call double @llvm.fmuladd.f64(double %594, double %570, double %595)
  %597 = call double @llvm.fmuladd.f64(double %596, double %570, double %582)
  %598 = call double @llvm.fmuladd.f64(double %585, double %597, double %565)
  %599 = add nuw i32 %566, 1
  br label %564, !llvm.loop !17

600:                                              ; preds = %564
  %.lcssa = phi double [ %565, %564 ]
  %601 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %602 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %603 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %604 = load double, ptr @nulltime, align 8
  %605 = fneg double %604
  %606 = call double @llvm.fmuladd.f64(double %602, double %603, double %605)
  store double %606, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %607 = load double, ptr @piref, align 8
  %608 = load double, ptr @three, align 8
  %609 = fdiv double %607, %608
  %610 = fmul double %609, %609
  store double %610, ptr %1, align 8
  %611 = load double, ptr @A6, align 8
  %612 = load double, ptr @A5, align 8
  %613 = call double @llvm.fmuladd.f64(double %611, double %610, double %612)
  %614 = load double, ptr @A4, align 8
  %615 = call double @llvm.fmuladd.f64(double %613, double %610, double %614)
  %616 = load double, ptr @A3, align 8
  %617 = call double @llvm.fmuladd.f64(double %615, double %610, double %616)
  %618 = load double, ptr @A2, align 8
  %619 = call double @llvm.fmuladd.f64(double %617, double %610, double %618)
  %620 = load double, ptr @A1, align 8
  %621 = call double @llvm.fmuladd.f64(double %619, double %610, double %620)
  %622 = load double, ptr @one, align 8
  %623 = call double @llvm.fmuladd.f64(double %621, double %610, double %622)
  %624 = fmul double %609, %623
  store double %624, ptr @sa, align 8
  %625 = load double, ptr @B6, align 8
  %626 = load double, ptr @B5, align 8
  %627 = call double @llvm.fmuladd.f64(double %625, double %610, double %626)
  %628 = load double, ptr @B4, align 8
  %629 = call double @llvm.fmuladd.f64(double %610, double %627, double %628)
  %630 = load double, ptr @B3, align 8
  %631 = call double @llvm.fmuladd.f64(double %610, double %629, double %630)
  %632 = load double, ptr @B2, align 8
  %633 = call double @llvm.fmuladd.f64(double %610, double %631, double %632)
  %634 = load double, ptr @B1, align 8
  %635 = call double @llvm.fmuladd.f64(double %610, double %633, double %634)
  %636 = call double @llvm.fmuladd.f64(double %610, double %635, double %622)
  store double %636, ptr @sb, align 8
  %637 = fmul double %624, %636
  %638 = fmul double %637, %636
  store double %638, ptr @sa, align 8
  %639 = fdiv double %606, 3.000000e+01
  store double %639, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %640 = load double, ptr @two, align 8
  %641 = call double @llvm.fmuladd.f64(double %640, double %.lcssa, double %638)
  %642 = fmul double %562, %641
  %643 = fdiv double %642, %640
  store double %643, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %644 = fadd double %643, f0xBFD2AAAAAAAAAAAB
  store double %644, ptr @sc, align 8
  %645 = fdiv double %622, %639
  store double %645, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %646 = fmul double %644, 1.000000e-30
  %647 = fmul double %606, 1.000000e-30
  %648 = fmul double %645, 1.000000e-30
  %649 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %646, double noundef %647, double noundef %648) #4
  %650 = load double, ptr @five, align 8
  %651 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %652 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %653 = fsub double %651, %652
  %654 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %655 = call double @llvm.fmuladd.f64(double %650, double %653, double %654)
  %656 = fdiv double %655, 5.200000e+01
  store double %656, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %657 = load double, ptr @one, align 8
  %658 = fdiv double %657, %656
  store double %658, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %659 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %660 = fadd double %659, %654
  %661 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %662 = fadd double %660, %661
  %663 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %664 = fadd double %662, %663
  %665 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %666 = fadd double %664, %665
  store double %666, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %667 = load double, ptr @four, align 8
  %668 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %669 = call double @llvm.fmuladd.f64(double %667, double %668, double %666)
  %670 = fdiv double %669, 1.520000e+02
  store double %670, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %671 = fdiv double %657, %670
  store double %671, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %666, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %672 = fadd double %666, %668
  %673 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %674 = fadd double %672, %673
  %675 = fdiv double %674, 1.460000e+02
  store double %675, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %676 = fdiv double %657, %675
  store double %676, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %677 = fadd double %654, %661
  %678 = fadd double %677, %665
  %679 = fadd double %678, %673
  %680 = fdiv double %679, 9.100000e+01
  store double %680, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %681 = fdiv double %657, %680
  store double %681, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar11 = call i32 @putchar(i32 10)
  %682 = load i32, ptr %2, align 4
  %683 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %682) #4
  %684 = load double, ptr @nulltime, align 8
  %685 = fmul double %684, 1.000000e-30
  %686 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %685) #4
  %687 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %688 = fmul double %687, 1.000000e-30
  %689 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %688) #4
  %690 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %691 = fmul double %690, 1.000000e-30
  %692 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %691) #4
  %693 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %694 = fmul double %693, 1.000000e-30
  %695 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %694) #4
  %696 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %697 = fmul double %696, 1.000000e-30
  %698 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %697) #4
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
