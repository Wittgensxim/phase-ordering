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
  %6 = phi double [ undef, %0 ], [ %.lcssa9, %39 ]
  %7 = phi double [ undef, %0 ], [ %16, %39 ]
  %8 = phi i32 [ 15625, %0 ], [ %13, %39 ]
  %9 = phi double [ 0.000000e+00, %0 ], [ %41, %39 ]
  %10 = load double, ptr @TLimit, align 8
  %11 = fcmp olt double %9, %10
  br i1 %11, label %12, label %.loopexit

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
  %.lcssa9 = phi double [ %20, %18 ]
  %40 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %41 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %41, ptr @sa, align 8
  %42 = icmp eq i32 %8, 256000000
  br i1 %42, label %.loopexit, label %5, !llvm.loop !9

.loopexit:                                        ; preds = %5, %39
  %43 = phi double [ %.lcssa9, %39 ], [ %6, %5 ]
  %44 = phi double [ %16, %39 ], [ %7, %5 ]
  %45 = phi i32 [ 512000000, %39 ], [ %8, %5 ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %46 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %47

47:                                               ; preds = %49, %.loopexit
  %48 = phi i32 [ %50, %49 ], [ 1, %.loopexit ]
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
  %.lcssa8 = phi double [ %98, %97 ]
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

114:                                              ; preds = %120, %105
  %115 = phi double [ %125, %120 ], [ %112, %105 ]
  %116 = phi double [ %121, %120 ], [ %.lcssa8, %105 ]
  %117 = phi double [ %128, %120 ], [ 0.000000e+00, %105 ]
  %118 = phi double [ %127, %120 ], [ 0.000000e+00, %105 ]
  %119 = phi i32 [ %132, %120 ], [ 1, %105 ]
  %.not4 = icmp sgt i32 %119, %85
  br i1 %.not4, label %133, label %120

120:                                              ; preds = %114
  %121 = fneg double %116
  %122 = load double, ptr @sa, align 8
  %123 = fsub double %122, %116
  store double %123, ptr @sa, align 8
  %124 = load double, ptr @two, align 8
  %125 = fadd double %115, %124
  %126 = fsub double %121, %125
  %127 = fadd double %118, %126
  %128 = call double @llvm.fmuladd.f64(double %116, double %125, double %117)
  %129 = load double, ptr %1, align 8
  %130 = fdiv double %116, %125
  %131 = fsub double %129, %130
  store double %131, ptr %1, align 8
  %132 = add nuw nsw i32 %119, 1
  br label %114, !llvm.loop !12

133:                                              ; preds = %114
  %.lcssa7 = phi double [ %117, %114 ]
  %.lcssa6 = phi double [ %118, %114 ]
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
  %142 = fmul double %141, %.lcssa6
  %143 = load double, ptr @sc, align 8
  %144 = fdiv double %142, %143
  %145 = fptosi double %144 to i32
  store i32 %145, ptr %2, align 4
  %146 = load double, ptr @four, align 8
  %147 = load double, ptr %1, align 8
  %148 = fmul double %146, %147
  %149 = load double, ptr @five, align 8
  %150 = fdiv double %148, %149
  store double %150, ptr @sa, align 8
  %151 = fdiv double %149, %.lcssa7
  %152 = fadd double %150, %151
  store double %152, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %153 = fmul double %.lcssa7, %.lcssa7
  %154 = fmul double %153, %.lcssa7
  %155 = fdiv double 3.125000e+01, %154
  %156 = fsub double %152, %155
  store double %156, ptr @piprg, align 8
  %157 = load double, ptr @piref, align 8
  %158 = fsub double %156, %157
  store double %158, ptr @pierr, align 8
  %159 = load double, ptr @one, align 8
  %160 = fdiv double %159, %140
  store double %160, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %161 = fmul double %158, 1.000000e-30
  %162 = fmul double %139, 1.000000e-30
  %163 = fmul double %160, 1.000000e-30
  %164 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %161, double noundef %162, double noundef %163) #4
  %165 = load double, ptr @piref, align 8
  %166 = load double, ptr @three, align 8
  %167 = sitofp i32 %145 to double
  %168 = fmul double %166, %167
  %169 = fdiv double %165, %168
  %170 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %171

171:                                              ; preds = %175, %133
  %172 = phi double [ %177, %175 ], [ 0.000000e+00, %133 ]
  %173 = phi double [ %194, %175 ], [ 0.000000e+00, %133 ]
  %174 = phi i32 [ %195, %175 ], [ 1, %133 ]
  %.not5.not = icmp slt i32 %174, %145
  br i1 %.not5.not, label %175, label %196

175:                                              ; preds = %171
  %176 = load double, ptr @one, align 8
  %177 = fadd double %172, %176
  %178 = fmul double %177, %169
  %179 = fmul double %178, %178
  store double %179, ptr %1, align 8
  %180 = load double, ptr @A6, align 8
  %181 = load double, ptr @A5, align 8
  %182 = fneg double %181
  %183 = call double @llvm.fmuladd.f64(double %180, double %179, double %182)
  %184 = load double, ptr @A4, align 8
  %185 = call double @llvm.fmuladd.f64(double %183, double %179, double %184)
  %186 = load double, ptr @A3, align 8
  %187 = fneg double %186
  %188 = call double @llvm.fmuladd.f64(double %185, double %179, double %187)
  %189 = load double, ptr @A2, align 8
  %190 = call double @llvm.fmuladd.f64(double %188, double %179, double %189)
  %191 = load double, ptr @A1, align 8
  %192 = call double @llvm.fmuladd.f64(double %190, double %179, double %191)
  %193 = call double @llvm.fmuladd.f64(double %192, double %179, double %176)
  %194 = call double @llvm.fmuladd.f64(double %178, double %193, double %173)
  %195 = add nuw nsw i32 %174, 1
  br label %171, !llvm.loop !13

196:                                              ; preds = %171
  %.lcssa5 = phi double [ %173, %171 ]
  %197 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %198 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %199 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %200 = load double, ptr @nulltime, align 8
  %201 = fneg double %200
  %202 = call double @llvm.fmuladd.f64(double %198, double %199, double %201)
  store double %202, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %203 = load double, ptr @piref, align 8
  %204 = load double, ptr @three, align 8
  %205 = fdiv double %203, %204
  %206 = fmul double %205, %205
  store double %206, ptr %1, align 8
  %207 = load double, ptr @A6, align 8
  %208 = load double, ptr @A5, align 8
  %209 = fneg double %208
  %210 = call double @llvm.fmuladd.f64(double %207, double %206, double %209)
  %211 = load double, ptr @A4, align 8
  %212 = call double @llvm.fmuladd.f64(double %210, double %206, double %211)
  %213 = load double, ptr @A3, align 8
  %214 = fneg double %213
  %215 = call double @llvm.fmuladd.f64(double %212, double %206, double %214)
  %216 = load double, ptr @A2, align 8
  %217 = call double @llvm.fmuladd.f64(double %215, double %206, double %216)
  %218 = load double, ptr @A1, align 8
  %219 = call double @llvm.fmuladd.f64(double %217, double %206, double %218)
  %220 = load double, ptr @one, align 8
  %221 = call double @llvm.fmuladd.f64(double %219, double %206, double %220)
  %222 = fmul double %205, %221
  store double %222, ptr @sa, align 8
  %223 = fdiv double %202, 1.700000e+01
  store double %223, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %224 = load double, ptr @two, align 8
  %225 = call double @llvm.fmuladd.f64(double %224, double %.lcssa5, double %222)
  %226 = fmul double %169, %225
  %227 = fdiv double %226, %224
  store double %227, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %228 = fadd double %227, -5.000000e-01
  store double %228, ptr @sc, align 8
  %229 = fdiv double %220, %223
  store double %229, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %230 = fmul double %228, 1.000000e-30
  %231 = fmul double %202, 1.000000e-30
  %232 = fmul double %229, 1.000000e-30
  %233 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %230, double noundef %231, double noundef %232) #4
  %234 = load double, ptr @A3, align 8
  %235 = fneg double %234
  store double %235, ptr @A3, align 8
  %236 = load double, ptr @A5, align 8
  %237 = fneg double %236
  store double %237, ptr @A5, align 8
  %238 = load double, ptr @piref, align 8
  %239 = load double, ptr @three, align 8
  %240 = fmul double %239, %167
  %241 = fdiv double %238, %240
  %242 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %243

243:                                              ; preds = %246, %196
  %244 = phi double [ %263, %246 ], [ 0.000000e+00, %196 ]
  %245 = phi i32 [ %264, %246 ], [ 1, %196 ]
  %.not6.not = icmp slt i32 %245, %145
  br i1 %.not6.not, label %246, label %265

246:                                              ; preds = %243
  %247 = uitofp nneg i32 %245 to double
  %248 = fmul double %241, %247
  %249 = fmul double %248, %248
  store double %249, ptr %1, align 8
  %250 = load double, ptr @B6, align 8
  %251 = load double, ptr @B5, align 8
  %252 = call double @llvm.fmuladd.f64(double %250, double %249, double %251)
  %253 = load double, ptr @B4, align 8
  %254 = call double @llvm.fmuladd.f64(double %249, double %252, double %253)
  %255 = load double, ptr @B3, align 8
  %256 = call double @llvm.fmuladd.f64(double %249, double %254, double %255)
  %257 = load double, ptr @B2, align 8
  %258 = call double @llvm.fmuladd.f64(double %249, double %256, double %257)
  %259 = load double, ptr @B1, align 8
  %260 = call double @llvm.fmuladd.f64(double %249, double %258, double %259)
  %261 = call double @llvm.fmuladd.f64(double %249, double %260, double %244)
  %262 = load double, ptr @one, align 8
  %263 = fadd double %261, %262
  %264 = add nuw nsw i32 %245, 1
  br label %243, !llvm.loop !14

265:                                              ; preds = %243
  %.lcssa4 = phi double [ %244, %243 ]
  %266 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %267 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %268 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %269 = load double, ptr @nulltime, align 8
  %270 = fneg double %269
  %271 = call double @llvm.fmuladd.f64(double %267, double %268, double %270)
  store double %271, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %272 = load double, ptr @piref, align 8
  %273 = load double, ptr @three, align 8
  %274 = fdiv double %272, %273
  %275 = fmul double %274, %274
  store double %275, ptr %1, align 8
  %276 = load double, ptr @B6, align 8
  %277 = load double, ptr @B5, align 8
  %278 = call double @llvm.fmuladd.f64(double %276, double %275, double %277)
  %279 = load double, ptr @B4, align 8
  %280 = call double @llvm.fmuladd.f64(double %275, double %278, double %279)
  %281 = load double, ptr @B3, align 8
  %282 = call double @llvm.fmuladd.f64(double %275, double %280, double %281)
  %283 = load double, ptr @B2, align 8
  %284 = call double @llvm.fmuladd.f64(double %275, double %282, double %283)
  %285 = load double, ptr @B1, align 8
  %286 = call double @llvm.fmuladd.f64(double %275, double %284, double %285)
  %287 = load double, ptr @one, align 8
  %288 = call double @llvm.fmuladd.f64(double %275, double %286, double %287)
  store double %288, ptr @sa, align 8
  %289 = fdiv double %271, 1.500000e+01
  store double %289, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %290 = fadd double %288, %287
  %291 = load double, ptr @two, align 8
  %292 = call double @llvm.fmuladd.f64(double %291, double %.lcssa4, double %290)
  %293 = fmul double %241, %292
  %294 = fdiv double %293, %291
  store double %294, ptr @sa, align 8
  store double %275, ptr %1, align 8
  %295 = load double, ptr @A6, align 8
  %296 = load double, ptr @A5, align 8
  %297 = call double @llvm.fmuladd.f64(double %295, double %275, double %296)
  %298 = load double, ptr @A4, align 8
  %299 = call double @llvm.fmuladd.f64(double %297, double %275, double %298)
  %300 = load double, ptr @A3, align 8
  %301 = call double @llvm.fmuladd.f64(double %299, double %275, double %300)
  %302 = load double, ptr @A2, align 8
  %303 = call double @llvm.fmuladd.f64(double %301, double %275, double %302)
  %304 = load double, ptr @A1, align 8
  %305 = call double @llvm.fmuladd.f64(double %303, double %275, double %304)
  %306 = load double, ptr @A0, align 8
  %307 = call double @llvm.fmuladd.f64(double %305, double %275, double %306)
  %308 = fmul double %274, %307
  store double %308, ptr @sb, align 8
  %309 = fsub double %294, %308
  store double %309, ptr @sc, align 8
  %310 = fdiv double %287, %289
  store double %310, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %311 = fmul double %309, 1.000000e-30
  %312 = fmul double %271, 1.000000e-30
  %313 = fmul double %310, 1.000000e-30
  %314 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %311, double noundef %312, double noundef %313) #4
  %315 = load double, ptr @piref, align 8
  %316 = load double, ptr @three, align 8
  %317 = fmul double %316, %167
  %318 = fdiv double %315, %317
  %319 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %320

320:                                              ; preds = %323, %265
  %321 = phi double [ %354, %323 ], [ 0.000000e+00, %265 ]
  %322 = phi i32 [ %355, %323 ], [ 1, %265 ]
  %.not7.not = icmp slt i32 %322, %145
  br i1 %.not7.not, label %323, label %356

323:                                              ; preds = %320
  %324 = uitofp nneg i32 %322 to double
  %325 = fmul double %318, %324
  %326 = fmul double %325, %325
  store double %326, ptr %1, align 8
  %327 = load double, ptr @A6, align 8
  %328 = load double, ptr @A5, align 8
  %329 = call double @llvm.fmuladd.f64(double %327, double %326, double %328)
  %330 = load double, ptr @A4, align 8
  %331 = call double @llvm.fmuladd.f64(double %329, double %326, double %330)
  %332 = load double, ptr @A3, align 8
  %333 = call double @llvm.fmuladd.f64(double %331, double %326, double %332)
  %334 = load double, ptr @A2, align 8
  %335 = call double @llvm.fmuladd.f64(double %333, double %326, double %334)
  %336 = load double, ptr @A1, align 8
  %337 = call double @llvm.fmuladd.f64(double %335, double %326, double %336)
  %338 = load double, ptr @one, align 8
  %339 = call double @llvm.fmuladd.f64(double %337, double %326, double %338)
  %340 = fmul double %325, %339
  %341 = load double, ptr @B6, align 8
  %342 = load double, ptr @B5, align 8
  %343 = call double @llvm.fmuladd.f64(double %341, double %326, double %342)
  %344 = load double, ptr @B4, align 8
  %345 = call double @llvm.fmuladd.f64(double %326, double %343, double %344)
  %346 = load double, ptr @B3, align 8
  %347 = call double @llvm.fmuladd.f64(double %326, double %345, double %346)
  %348 = load double, ptr @B2, align 8
  %349 = call double @llvm.fmuladd.f64(double %326, double %347, double %348)
  %350 = load double, ptr @B1, align 8
  %351 = call double @llvm.fmuladd.f64(double %326, double %349, double %350)
  %352 = call double @llvm.fmuladd.f64(double %326, double %351, double %338)
  %353 = fdiv double %340, %352
  %354 = fadd double %321, %353
  %355 = add nuw nsw i32 %322, 1
  br label %320, !llvm.loop !15

356:                                              ; preds = %320
  %.lcssa3 = phi double [ %321, %320 ]
  %357 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %358 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %359 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %360 = load double, ptr @nulltime, align 8
  %361 = fneg double %360
  %362 = call double @llvm.fmuladd.f64(double %358, double %359, double %361)
  store double %362, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %363 = load double, ptr @piref, align 8
  %364 = load double, ptr @three, align 8
  %365 = fdiv double %363, %364
  %366 = fmul double %365, %365
  store double %366, ptr %1, align 8
  %367 = load double, ptr @A6, align 8
  %368 = load double, ptr @A5, align 8
  %369 = call double @llvm.fmuladd.f64(double %367, double %366, double %368)
  %370 = load double, ptr @A4, align 8
  %371 = call double @llvm.fmuladd.f64(double %369, double %366, double %370)
  %372 = load double, ptr @A3, align 8
  %373 = call double @llvm.fmuladd.f64(double %371, double %366, double %372)
  %374 = load double, ptr @A2, align 8
  %375 = call double @llvm.fmuladd.f64(double %373, double %366, double %374)
  %376 = load double, ptr @A1, align 8
  %377 = call double @llvm.fmuladd.f64(double %375, double %366, double %376)
  %378 = load double, ptr @one, align 8
  %379 = call double @llvm.fmuladd.f64(double %377, double %366, double %378)
  %380 = fmul double %365, %379
  store double %380, ptr @sa, align 8
  %381 = load double, ptr @B6, align 8
  %382 = load double, ptr @B5, align 8
  %383 = call double @llvm.fmuladd.f64(double %381, double %366, double %382)
  %384 = load double, ptr @B4, align 8
  %385 = call double @llvm.fmuladd.f64(double %366, double %383, double %384)
  %386 = load double, ptr @B3, align 8
  %387 = call double @llvm.fmuladd.f64(double %366, double %385, double %386)
  %388 = load double, ptr @B2, align 8
  %389 = call double @llvm.fmuladd.f64(double %366, double %387, double %388)
  %390 = load double, ptr @B1, align 8
  %391 = call double @llvm.fmuladd.f64(double %366, double %389, double %390)
  %392 = call double @llvm.fmuladd.f64(double %366, double %391, double %378)
  store double %392, ptr @sb, align 8
  %393 = fdiv double %380, %392
  store double %393, ptr @sa, align 8
  %394 = fdiv double %362, 2.900000e+01
  store double %394, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %395 = load double, ptr @two, align 8
  %396 = call double @llvm.fmuladd.f64(double %395, double %.lcssa3, double %393)
  %397 = fmul double %318, %396
  %398 = fdiv double %397, %395
  store double %398, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %399 = fadd double %398, f0xBFE62E42FEFA39EF
  store double %399, ptr @sc, align 8
  %400 = fdiv double %378, %394
  store double %400, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %401 = fmul double %399, 1.000000e-30
  %402 = fmul double %362, 1.000000e-30
  %403 = fmul double %400, 1.000000e-30
  %404 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %401, double noundef %402, double noundef %403) #4
  %405 = load double, ptr @piref, align 8
  %406 = load double, ptr @four, align 8
  %407 = fmul double %406, %167
  %408 = fdiv double %405, %407
  %409 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %410

410:                                              ; preds = %413, %356
  %411 = phi double [ %443, %413 ], [ 0.000000e+00, %356 ]
  %412 = phi i32 [ %444, %413 ], [ 1, %356 ]
  %.not8.not = icmp slt i32 %412, %145
  br i1 %.not8.not, label %413, label %445

413:                                              ; preds = %410
  %414 = uitofp nneg i32 %412 to double
  %415 = fmul double %408, %414
  %416 = fmul double %415, %415
  store double %416, ptr %1, align 8
  %417 = load double, ptr @A6, align 8
  %418 = load double, ptr @A5, align 8
  %419 = call double @llvm.fmuladd.f64(double %417, double %416, double %418)
  %420 = load double, ptr @A4, align 8
  %421 = call double @llvm.fmuladd.f64(double %419, double %416, double %420)
  %422 = load double, ptr @A3, align 8
  %423 = call double @llvm.fmuladd.f64(double %421, double %416, double %422)
  %424 = load double, ptr @A2, align 8
  %425 = call double @llvm.fmuladd.f64(double %423, double %416, double %424)
  %426 = load double, ptr @A1, align 8
  %427 = call double @llvm.fmuladd.f64(double %425, double %416, double %426)
  %428 = load double, ptr @one, align 8
  %429 = call double @llvm.fmuladd.f64(double %427, double %416, double %428)
  %430 = fmul double %415, %429
  %431 = load double, ptr @B6, align 8
  %432 = load double, ptr @B5, align 8
  %433 = call double @llvm.fmuladd.f64(double %431, double %416, double %432)
  %434 = load double, ptr @B4, align 8
  %435 = call double @llvm.fmuladd.f64(double %416, double %433, double %434)
  %436 = load double, ptr @B3, align 8
  %437 = call double @llvm.fmuladd.f64(double %416, double %435, double %436)
  %438 = load double, ptr @B2, align 8
  %439 = call double @llvm.fmuladd.f64(double %416, double %437, double %438)
  %440 = load double, ptr @B1, align 8
  %441 = call double @llvm.fmuladd.f64(double %416, double %439, double %440)
  %442 = call double @llvm.fmuladd.f64(double %416, double %441, double %428)
  %443 = call double @llvm.fmuladd.f64(double %430, double %442, double %411)
  %444 = add nuw nsw i32 %412, 1
  br label %410, !llvm.loop !16

445:                                              ; preds = %410
  %.lcssa2 = phi double [ %411, %410 ]
  %446 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %447 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %448 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %449 = load double, ptr @nulltime, align 8
  %450 = fneg double %449
  %451 = call double @llvm.fmuladd.f64(double %447, double %448, double %450)
  store double %451, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %452 = load double, ptr @piref, align 8
  %453 = load double, ptr @four, align 8
  %454 = fdiv double %452, %453
  %455 = fmul double %454, %454
  store double %455, ptr %1, align 8
  %456 = load double, ptr @A6, align 8
  %457 = load double, ptr @A5, align 8
  %458 = call double @llvm.fmuladd.f64(double %456, double %455, double %457)
  %459 = load double, ptr @A4, align 8
  %460 = call double @llvm.fmuladd.f64(double %458, double %455, double %459)
  %461 = load double, ptr @A3, align 8
  %462 = call double @llvm.fmuladd.f64(double %460, double %455, double %461)
  %463 = load double, ptr @A2, align 8
  %464 = call double @llvm.fmuladd.f64(double %462, double %455, double %463)
  %465 = load double, ptr @A1, align 8
  %466 = call double @llvm.fmuladd.f64(double %464, double %455, double %465)
  %467 = load double, ptr @one, align 8
  %468 = call double @llvm.fmuladd.f64(double %466, double %455, double %467)
  %469 = fmul double %454, %468
  store double %469, ptr @sa, align 8
  %470 = load double, ptr @B6, align 8
  %471 = load double, ptr @B5, align 8
  %472 = call double @llvm.fmuladd.f64(double %470, double %455, double %471)
  %473 = load double, ptr @B4, align 8
  %474 = call double @llvm.fmuladd.f64(double %455, double %472, double %473)
  %475 = load double, ptr @B3, align 8
  %476 = call double @llvm.fmuladd.f64(double %455, double %474, double %475)
  %477 = load double, ptr @B2, align 8
  %478 = call double @llvm.fmuladd.f64(double %455, double %476, double %477)
  %479 = load double, ptr @B1, align 8
  %480 = call double @llvm.fmuladd.f64(double %455, double %478, double %479)
  %481 = call double @llvm.fmuladd.f64(double %455, double %480, double %467)
  store double %481, ptr @sb, align 8
  %482 = fmul double %469, %481
  store double %482, ptr @sa, align 8
  %483 = fdiv double %451, 2.900000e+01
  store double %483, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %484 = load double, ptr @two, align 8
  %485 = call double @llvm.fmuladd.f64(double %484, double %.lcssa2, double %482)
  %486 = fmul double %408, %485
  %487 = fdiv double %486, %484
  store double %487, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %488 = fadd double %487, -2.500000e-01
  store double %488, ptr @sc, align 8
  %489 = fdiv double %467, %483
  store double %489, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %490 = fmul double %488, 1.000000e-30
  %491 = fmul double %451, 1.000000e-30
  %492 = fmul double %489, 1.000000e-30
  %493 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %490, double noundef %491, double noundef %492) #4
  %494 = load double, ptr @one, align 8
  store double %494, ptr %1, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %495 = fdiv double f0x40599541F7F192A4, %167
  %496 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %497

497:                                              ; preds = %500, %445
  %498 = phi double [ %513, %500 ], [ 0.000000e+00, %445 ]
  %499 = phi i32 [ %514, %500 ], [ 1, %445 ]
  %.not9.not = icmp slt i32 %499, %145
  br i1 %.not9.not, label %500, label %515

500:                                              ; preds = %497
  %501 = uitofp nneg i32 %499 to double
  %502 = fmul double %495, %501
  %503 = fmul double %502, %502
  %504 = load double, ptr %1, align 8
  %505 = fadd double %502, %504
  %506 = fdiv double %504, %505
  %507 = fsub double %498, %506
  %508 = fadd double %503, %504
  %509 = fdiv double %502, %508
  %510 = fsub double %507, %509
  %511 = call double @llvm.fmuladd.f64(double %502, double %503, double %504)
  %512 = fdiv double %503, %511
  %513 = fsub double %510, %512
  %514 = add nuw nsw i32 %499, 1
  br label %497, !llvm.loop !17

515:                                              ; preds = %497
  %.lcssa1 = phi double [ %498, %497 ]
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
  %525 = load double, ptr %1, align 8
  %526 = fneg double %525
  %527 = fadd double %523, %525
  %528 = fdiv double %525, %527
  %529 = fsub double %526, %528
  %530 = fadd double %524, %525
  %531 = fdiv double %523, %530
  %532 = fsub double %529, %531
  %533 = call double @llvm.fmuladd.f64(double %523, double %524, double %525)
  %534 = fdiv double %524, %533
  %535 = fsub double %532, %534
  store double %535, ptr @sa, align 8
  %536 = fmul nnan double %495, 1.800000e+01
  %537 = load double, ptr @two, align 8
  %538 = call double @llvm.fmuladd.f64(double %537, double %.lcssa1, double %535)
  %539 = fmul double %536, %538
  store double %539, ptr @sa, align 8
  %540 = fptosi double %539 to i32
  %541 = mul nsw i32 %540, -2000
  store i32 %541, ptr %2, align 4
  %542 = sitofp i32 %541 to double
  %543 = load double, ptr @scale, align 8
  %544 = fdiv double %542, %543
  %545 = fptosi double %544 to i32
  store i32 %545, ptr %2, align 4
  %546 = fadd double %539, 5.002000e+02
  store double %546, ptr @sc, align 8
  %547 = load double, ptr @one, align 8
  %548 = fdiv double %547, %522
  store double %548, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %549 = fmul double %546, 1.000000e-30
  %550 = fmul double %521, 1.000000e-30
  %551 = fmul double %548, 1.000000e-30
  %552 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %549, double noundef %550, double noundef %551) #4
  %553 = load double, ptr @piref, align 8
  %554 = load double, ptr @three, align 8
  %555 = sitofp i32 %545 to double
  %556 = fmul double %554, %555
  %557 = fdiv double %553, %556
  %558 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %559

559:                                              ; preds = %562, %515
  %560 = phi double [ %593, %562 ], [ 0.000000e+00, %515 ]
  %561 = phi i32 [ %594, %562 ], [ 1, %515 ]
  %.not10.not = icmp slt i32 %561, %545
  br i1 %.not10.not, label %562, label %595

562:                                              ; preds = %559
  %563 = uitofp nneg i32 %561 to double
  %564 = fmul double %557, %563
  %565 = fmul double %564, %564
  store double %565, ptr %1, align 8
  %566 = load double, ptr @B6, align 8
  %567 = load double, ptr @B5, align 8
  %568 = call double @llvm.fmuladd.f64(double %566, double %565, double %567)
  %569 = load double, ptr @B4, align 8
  %570 = call double @llvm.fmuladd.f64(double %565, double %568, double %569)
  %571 = load double, ptr @B3, align 8
  %572 = call double @llvm.fmuladd.f64(double %565, double %570, double %571)
  %573 = load double, ptr @B2, align 8
  %574 = call double @llvm.fmuladd.f64(double %565, double %572, double %573)
  %575 = load double, ptr @B1, align 8
  %576 = call double @llvm.fmuladd.f64(double %565, double %574, double %575)
  %577 = load double, ptr @one, align 8
  %578 = call double @llvm.fmuladd.f64(double %565, double %576, double %577)
  %579 = fmul double %578, %578
  %580 = fmul double %579, %564
  %581 = load double, ptr @A6, align 8
  %582 = load double, ptr @A5, align 8
  %583 = call double @llvm.fmuladd.f64(double %581, double %565, double %582)
  %584 = load double, ptr @A4, align 8
  %585 = call double @llvm.fmuladd.f64(double %583, double %565, double %584)
  %586 = load double, ptr @A3, align 8
  %587 = call double @llvm.fmuladd.f64(double %585, double %565, double %586)
  %588 = load double, ptr @A2, align 8
  %589 = call double @llvm.fmuladd.f64(double %587, double %565, double %588)
  %590 = load double, ptr @A1, align 8
  %591 = call double @llvm.fmuladd.f64(double %589, double %565, double %590)
  %592 = call double @llvm.fmuladd.f64(double %591, double %565, double %577)
  %593 = call double @llvm.fmuladd.f64(double %580, double %592, double %560)
  %594 = add nuw nsw i32 %561, 1
  br label %559, !llvm.loop !18

595:                                              ; preds = %559
  %.lcssa = phi double [ %560, %559 ]
  %596 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %597 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %598 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %599 = load double, ptr @nulltime, align 8
  %600 = fneg double %599
  %601 = call double @llvm.fmuladd.f64(double %597, double %598, double %600)
  store double %601, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %602 = load double, ptr @piref, align 8
  %603 = load double, ptr @three, align 8
  %604 = fdiv double %602, %603
  %605 = fmul double %604, %604
  store double %605, ptr %1, align 8
  %606 = load double, ptr @A6, align 8
  %607 = load double, ptr @A5, align 8
  %608 = call double @llvm.fmuladd.f64(double %606, double %605, double %607)
  %609 = load double, ptr @A4, align 8
  %610 = call double @llvm.fmuladd.f64(double %608, double %605, double %609)
  %611 = load double, ptr @A3, align 8
  %612 = call double @llvm.fmuladd.f64(double %610, double %605, double %611)
  %613 = load double, ptr @A2, align 8
  %614 = call double @llvm.fmuladd.f64(double %612, double %605, double %613)
  %615 = load double, ptr @A1, align 8
  %616 = call double @llvm.fmuladd.f64(double %614, double %605, double %615)
  %617 = load double, ptr @one, align 8
  %618 = call double @llvm.fmuladd.f64(double %616, double %605, double %617)
  %619 = fmul double %604, %618
  store double %619, ptr @sa, align 8
  %620 = load double, ptr @B6, align 8
  %621 = load double, ptr @B5, align 8
  %622 = call double @llvm.fmuladd.f64(double %620, double %605, double %621)
  %623 = load double, ptr @B4, align 8
  %624 = call double @llvm.fmuladd.f64(double %605, double %622, double %623)
  %625 = load double, ptr @B3, align 8
  %626 = call double @llvm.fmuladd.f64(double %605, double %624, double %625)
  %627 = load double, ptr @B2, align 8
  %628 = call double @llvm.fmuladd.f64(double %605, double %626, double %627)
  %629 = load double, ptr @B1, align 8
  %630 = call double @llvm.fmuladd.f64(double %605, double %628, double %629)
  %631 = call double @llvm.fmuladd.f64(double %605, double %630, double %617)
  store double %631, ptr @sb, align 8
  %632 = fmul double %619, %631
  %633 = fmul double %632, %631
  store double %633, ptr @sa, align 8
  %634 = fdiv double %601, 3.000000e+01
  store double %634, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %635 = load double, ptr @two, align 8
  %636 = call double @llvm.fmuladd.f64(double %635, double %.lcssa, double %633)
  %637 = fmul double %557, %636
  %638 = fdiv double %637, %635
  store double %638, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %639 = fadd double %638, f0xBFD2AAAAAAAAAAAB
  store double %639, ptr @sc, align 8
  %640 = fdiv double %617, %634
  store double %640, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %641 = fmul double %639, 1.000000e-30
  %642 = fmul double %601, 1.000000e-30
  %643 = fmul double %640, 1.000000e-30
  %644 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %641, double noundef %642, double noundef %643) #4
  %645 = load double, ptr @five, align 8
  %646 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %647 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %648 = fsub double %646, %647
  %649 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %650 = call double @llvm.fmuladd.f64(double %645, double %648, double %649)
  %651 = fdiv double %650, 5.200000e+01
  store double %651, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %652 = load double, ptr @one, align 8
  %653 = fdiv double %652, %651
  store double %653, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %654 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %655 = fadd double %654, %649
  %656 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %657 = fadd double %655, %656
  %658 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %659 = fadd double %657, %658
  %660 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %661 = fadd double %659, %660
  store double %661, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %662 = load double, ptr @four, align 8
  %663 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %664 = call double @llvm.fmuladd.f64(double %662, double %663, double %661)
  %665 = fdiv double %664, 1.520000e+02
  store double %665, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %666 = fdiv double %652, %665
  store double %666, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %661, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %667 = fadd double %661, %663
  %668 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %669 = fadd double %667, %668
  %670 = fdiv double %669, 1.460000e+02
  store double %670, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %671 = fdiv double %652, %670
  store double %671, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %672 = fadd double %649, %656
  %673 = fadd double %672, %660
  %674 = fadd double %673, %668
  %675 = fdiv double %674, 9.100000e+01
  store double %675, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %676 = fdiv double %652, %675
  store double %676, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar11 = call i32 @putchar(i32 10)
  %677 = load i32, ptr %2, align 4
  %678 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %677) #4
  %679 = load double, ptr @nulltime, align 8
  %680 = fmul double %679, 1.000000e-30
  %681 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %680) #4
  %682 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %683 = fmul double %682, 1.000000e-30
  %684 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %683) #4
  %685 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %686 = fmul double %685, 1.000000e-30
  %687 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %686) #4
  %688 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %689 = fmul double %688, 1.000000e-30
  %690 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %689) #4
  %691 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %692 = fmul double %691, 1.000000e-30
  %693 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %692) #4
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
