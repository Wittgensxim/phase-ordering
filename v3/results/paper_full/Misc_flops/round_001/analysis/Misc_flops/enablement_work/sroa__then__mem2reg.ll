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
  br i1 %9, label %10, label %42

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

42:                                               ; preds = %40, %3
  %43 = phi double [ %18, %40 ], [ %4, %3 ]
  %44 = phi double [ %14, %40 ], [ %5, %3 ]
  %45 = phi i32 [ 512000000, %40 ], [ %6, %3 ]
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
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57, %51
  %59 = phi double [ 0.000000e+00, %57 ], [ %55, %51 ]
  store double %59, ptr @nulltime, align 8
  %60 = load double, ptr @sa, align 8
  %61 = fneg double %59
  %62 = call double @llvm.fmuladd.f64(double %53, double %60, double %61)
  store double %62, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %63 = load double, ptr @D1, align 8
  %64 = load double, ptr @D2, align 8
  %65 = fadd double %63, %64
  %66 = load double, ptr @D3, align 8
  %67 = fadd double %65, %66
  %68 = load double, ptr @one, align 8
  %69 = fadd double %68, %63
  %70 = load double, ptr @E2, align 8
  %71 = fadd double %69, %70
  %72 = load double, ptr @E3, align 8
  %73 = fadd double %71, %72
  %74 = fdiv double %67, %73
  store double %74, ptr @sa, align 8
  store double %63, ptr @sb, align 8
  %75 = fdiv double %62, 1.400000e+01
  store double %75, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %76 = fadd double %74, %63
  %77 = load double, ptr @two, align 8
  %78 = call double @llvm.fmuladd.f64(double %77, double %43, double %76)
  %79 = fmul double %44, %78
  %80 = fdiv double %79, %77
  store double %80, ptr @sa, align 8
  %81 = fdiv double %68, %80
  store double %81, ptr @sb, align 8
  %82 = fptosi double %81 to i32
  %83 = mul nsw i32 %82, 40000
  %84 = sitofp i32 %83 to double
  %85 = load double, ptr @scale, align 8
  %86 = fdiv double %84, %85
  %87 = fptosi double %86 to i32
  %88 = fadd double %81, -2.520000e+01
  store double %88, ptr @sc, align 8
  %89 = fdiv double %68, %75
  store double %89, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %90 = fmul double %88, 1.000000e-30
  %91 = fmul double %62, 1.000000e-30
  %92 = fmul double %89, 1.000000e-30
  %93 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %90, double noundef %91, double noundef %92) #4
  %94 = load double, ptr @five, align 8
  %95 = fneg double %94
  %96 = load double, ptr @one, align 8
  %97 = fneg double %96
  store double %97, ptr @sa, align 8
  %98 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %99

99:                                               ; preds = %102, %58
  %100 = phi double [ %103, %102 ], [ %95, %58 ]
  %101 = phi i32 [ %106, %102 ], [ 1, %58 ]
  %.not = icmp sgt i32 %101, %87
  br i1 %.not, label %107, label %102

102:                                              ; preds = %99
  %103 = fneg double %100
  %104 = load double, ptr @sa, align 8
  %105 = fsub double %104, %100
  store double %105, ptr @sa, align 8
  %106 = add nuw nsw i32 %101, 1
  br label %99, !llvm.loop !11

107:                                              ; preds = %99
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
  %115 = sitofp i32 %87 to double
  store double %115, ptr @sc, align 8
  %116 = load double, ptr @sa, align 8
  %117 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %118

118:                                              ; preds = %124, %114
  %.0 = phi double [ 0.000000e+00, %114 ], [ %134, %124 ]
  %119 = phi double [ %129, %124 ], [ %116, %114 ]
  %120 = phi double [ %125, %124 ], [ %100, %114 ]
  %121 = phi double [ %132, %124 ], [ 0.000000e+00, %114 ]
  %122 = phi double [ %131, %124 ], [ 0.000000e+00, %114 ]
  %123 = phi i32 [ %135, %124 ], [ 1, %114 ]
  %.not4 = icmp sgt i32 %123, %87
  br i1 %.not4, label %136, label %124

124:                                              ; preds = %118
  %125 = fneg double %120
  %126 = load double, ptr @sa, align 8
  %127 = fsub double %126, %120
  store double %127, ptr @sa, align 8
  %128 = load double, ptr @two, align 8
  %129 = fadd double %119, %128
  %130 = fsub double %125, %129
  %131 = fadd double %122, %130
  %132 = call double @llvm.fmuladd.f64(double %120, double %129, double %121)
  %133 = fdiv double %120, %129
  %134 = fsub double %.0, %133
  %135 = add nuw nsw i32 %123, 1
  br label %118, !llvm.loop !12

136:                                              ; preds = %118
  %137 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %138 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %139 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %140 = fmul double %138, %139
  store double %140, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %141 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %142 = fsub double %140, %141
  %143 = fdiv double %142, 7.000000e+00
  store double %143, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %144 = load double, ptr @sa, align 8
  %145 = fmul double %144, %122
  %146 = load double, ptr @sc, align 8
  %147 = fdiv double %145, %146
  %148 = fptosi double %147 to i32
  %149 = load double, ptr @four, align 8
  %150 = fmul double %149, %.0
  %151 = load double, ptr @five, align 8
  %152 = fdiv double %150, %151
  store double %152, ptr @sa, align 8
  %153 = fdiv double %151, %121
  %154 = fadd double %152, %153
  store double %154, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %155 = fmul double %121, %121
  %156 = fmul double %155, %121
  %157 = fdiv double 3.125000e+01, %156
  %158 = fsub double %154, %157
  store double %158, ptr @piprg, align 8
  %159 = load double, ptr @piref, align 8
  %160 = fsub double %158, %159
  store double %160, ptr @pierr, align 8
  %161 = load double, ptr @one, align 8
  %162 = fdiv double %161, %143
  store double %162, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %163 = fmul double %160, 1.000000e-30
  %164 = fmul double %142, 1.000000e-30
  %165 = fmul double %162, 1.000000e-30
  %166 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %163, double noundef %164, double noundef %165) #4
  %167 = load double, ptr @piref, align 8
  %168 = load double, ptr @three, align 8
  %169 = sitofp i32 %148 to double
  %170 = fmul double %168, %169
  %171 = fdiv double %167, %170
  %172 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %173

173:                                              ; preds = %177, %136
  %174 = phi double [ %179, %177 ], [ 0.000000e+00, %136 ]
  %175 = phi double [ %196, %177 ], [ 0.000000e+00, %136 ]
  %176 = phi i32 [ %197, %177 ], [ 1, %136 ]
  %.not5.not = icmp slt i32 %176, %148
  br i1 %.not5.not, label %177, label %198

177:                                              ; preds = %173
  %178 = load double, ptr @one, align 8
  %179 = fadd double %174, %178
  %180 = fmul double %179, %171
  %181 = fmul double %180, %180
  %182 = load double, ptr @A6, align 8
  %183 = load double, ptr @A5, align 8
  %184 = fneg double %183
  %185 = call double @llvm.fmuladd.f64(double %182, double %181, double %184)
  %186 = load double, ptr @A4, align 8
  %187 = call double @llvm.fmuladd.f64(double %185, double %181, double %186)
  %188 = load double, ptr @A3, align 8
  %189 = fneg double %188
  %190 = call double @llvm.fmuladd.f64(double %187, double %181, double %189)
  %191 = load double, ptr @A2, align 8
  %192 = call double @llvm.fmuladd.f64(double %190, double %181, double %191)
  %193 = load double, ptr @A1, align 8
  %194 = call double @llvm.fmuladd.f64(double %192, double %181, double %193)
  %195 = call double @llvm.fmuladd.f64(double %194, double %181, double %178)
  %196 = call double @llvm.fmuladd.f64(double %180, double %195, double %175)
  %197 = add nuw nsw i32 %176, 1
  br label %173, !llvm.loop !13

198:                                              ; preds = %173
  %199 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %200 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %201 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %202 = load double, ptr @nulltime, align 8
  %203 = fneg double %202
  %204 = call double @llvm.fmuladd.f64(double %200, double %201, double %203)
  store double %204, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %205 = load double, ptr @piref, align 8
  %206 = load double, ptr @three, align 8
  %207 = fdiv double %205, %206
  %208 = fmul double %207, %207
  %209 = load double, ptr @A6, align 8
  %210 = load double, ptr @A5, align 8
  %211 = fneg double %210
  %212 = call double @llvm.fmuladd.f64(double %209, double %208, double %211)
  %213 = load double, ptr @A4, align 8
  %214 = call double @llvm.fmuladd.f64(double %212, double %208, double %213)
  %215 = load double, ptr @A3, align 8
  %216 = fneg double %215
  %217 = call double @llvm.fmuladd.f64(double %214, double %208, double %216)
  %218 = load double, ptr @A2, align 8
  %219 = call double @llvm.fmuladd.f64(double %217, double %208, double %218)
  %220 = load double, ptr @A1, align 8
  %221 = call double @llvm.fmuladd.f64(double %219, double %208, double %220)
  %222 = load double, ptr @one, align 8
  %223 = call double @llvm.fmuladd.f64(double %221, double %208, double %222)
  %224 = fmul double %207, %223
  store double %224, ptr @sa, align 8
  %225 = fdiv double %204, 1.700000e+01
  store double %225, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %226 = load double, ptr @two, align 8
  %227 = call double @llvm.fmuladd.f64(double %226, double %175, double %224)
  %228 = fmul double %171, %227
  %229 = fdiv double %228, %226
  store double %229, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %230 = fadd double %229, -5.000000e-01
  store double %230, ptr @sc, align 8
  %231 = fdiv double %222, %225
  store double %231, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %232 = fmul double %230, 1.000000e-30
  %233 = fmul double %204, 1.000000e-30
  %234 = fmul double %231, 1.000000e-30
  %235 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %232, double noundef %233, double noundef %234) #4
  %236 = load double, ptr @A3, align 8
  %237 = fneg double %236
  store double %237, ptr @A3, align 8
  %238 = load double, ptr @A5, align 8
  %239 = fneg double %238
  store double %239, ptr @A5, align 8
  %240 = load double, ptr @piref, align 8
  %241 = load double, ptr @three, align 8
  %242 = fmul double %241, %169
  %243 = fdiv double %240, %242
  %244 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %245

245:                                              ; preds = %248, %198
  %246 = phi double [ %265, %248 ], [ 0.000000e+00, %198 ]
  %247 = phi i32 [ %266, %248 ], [ 1, %198 ]
  %.not6.not = icmp slt i32 %247, %148
  br i1 %.not6.not, label %248, label %267

248:                                              ; preds = %245
  %249 = uitofp nneg i32 %247 to double
  %250 = fmul double %243, %249
  %251 = fmul double %250, %250
  %252 = load double, ptr @B6, align 8
  %253 = load double, ptr @B5, align 8
  %254 = call double @llvm.fmuladd.f64(double %252, double %251, double %253)
  %255 = load double, ptr @B4, align 8
  %256 = call double @llvm.fmuladd.f64(double %251, double %254, double %255)
  %257 = load double, ptr @B3, align 8
  %258 = call double @llvm.fmuladd.f64(double %251, double %256, double %257)
  %259 = load double, ptr @B2, align 8
  %260 = call double @llvm.fmuladd.f64(double %251, double %258, double %259)
  %261 = load double, ptr @B1, align 8
  %262 = call double @llvm.fmuladd.f64(double %251, double %260, double %261)
  %263 = call double @llvm.fmuladd.f64(double %251, double %262, double %246)
  %264 = load double, ptr @one, align 8
  %265 = fadd double %263, %264
  %266 = add nuw nsw i32 %247, 1
  br label %245, !llvm.loop !14

267:                                              ; preds = %245
  %268 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %269 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %270 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %271 = load double, ptr @nulltime, align 8
  %272 = fneg double %271
  %273 = call double @llvm.fmuladd.f64(double %269, double %270, double %272)
  store double %273, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %274 = load double, ptr @piref, align 8
  %275 = load double, ptr @three, align 8
  %276 = fdiv double %274, %275
  %277 = fmul double %276, %276
  %278 = load double, ptr @B6, align 8
  %279 = load double, ptr @B5, align 8
  %280 = call double @llvm.fmuladd.f64(double %278, double %277, double %279)
  %281 = load double, ptr @B4, align 8
  %282 = call double @llvm.fmuladd.f64(double %277, double %280, double %281)
  %283 = load double, ptr @B3, align 8
  %284 = call double @llvm.fmuladd.f64(double %277, double %282, double %283)
  %285 = load double, ptr @B2, align 8
  %286 = call double @llvm.fmuladd.f64(double %277, double %284, double %285)
  %287 = load double, ptr @B1, align 8
  %288 = call double @llvm.fmuladd.f64(double %277, double %286, double %287)
  %289 = load double, ptr @one, align 8
  %290 = call double @llvm.fmuladd.f64(double %277, double %288, double %289)
  store double %290, ptr @sa, align 8
  %291 = fdiv double %273, 1.500000e+01
  store double %291, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %292 = fadd double %290, %289
  %293 = load double, ptr @two, align 8
  %294 = call double @llvm.fmuladd.f64(double %293, double %246, double %292)
  %295 = fmul double %243, %294
  %296 = fdiv double %295, %293
  store double %296, ptr @sa, align 8
  %297 = load double, ptr @A6, align 8
  %298 = load double, ptr @A5, align 8
  %299 = call double @llvm.fmuladd.f64(double %297, double %277, double %298)
  %300 = load double, ptr @A4, align 8
  %301 = call double @llvm.fmuladd.f64(double %299, double %277, double %300)
  %302 = load double, ptr @A3, align 8
  %303 = call double @llvm.fmuladd.f64(double %301, double %277, double %302)
  %304 = load double, ptr @A2, align 8
  %305 = call double @llvm.fmuladd.f64(double %303, double %277, double %304)
  %306 = load double, ptr @A1, align 8
  %307 = call double @llvm.fmuladd.f64(double %305, double %277, double %306)
  %308 = load double, ptr @A0, align 8
  %309 = call double @llvm.fmuladd.f64(double %307, double %277, double %308)
  %310 = fmul double %276, %309
  store double %310, ptr @sb, align 8
  %311 = fsub double %296, %310
  store double %311, ptr @sc, align 8
  %312 = fdiv double %289, %291
  store double %312, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %313 = fmul double %311, 1.000000e-30
  %314 = fmul double %273, 1.000000e-30
  %315 = fmul double %312, 1.000000e-30
  %316 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %313, double noundef %314, double noundef %315) #4
  %317 = load double, ptr @piref, align 8
  %318 = load double, ptr @three, align 8
  %319 = fmul double %318, %169
  %320 = fdiv double %317, %319
  %321 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %322

322:                                              ; preds = %325, %267
  %323 = phi double [ %356, %325 ], [ 0.000000e+00, %267 ]
  %324 = phi i32 [ %357, %325 ], [ 1, %267 ]
  %.not7.not = icmp slt i32 %324, %148
  br i1 %.not7.not, label %325, label %358

325:                                              ; preds = %322
  %326 = uitofp nneg i32 %324 to double
  %327 = fmul double %320, %326
  %328 = fmul double %327, %327
  %329 = load double, ptr @A6, align 8
  %330 = load double, ptr @A5, align 8
  %331 = call double @llvm.fmuladd.f64(double %329, double %328, double %330)
  %332 = load double, ptr @A4, align 8
  %333 = call double @llvm.fmuladd.f64(double %331, double %328, double %332)
  %334 = load double, ptr @A3, align 8
  %335 = call double @llvm.fmuladd.f64(double %333, double %328, double %334)
  %336 = load double, ptr @A2, align 8
  %337 = call double @llvm.fmuladd.f64(double %335, double %328, double %336)
  %338 = load double, ptr @A1, align 8
  %339 = call double @llvm.fmuladd.f64(double %337, double %328, double %338)
  %340 = load double, ptr @one, align 8
  %341 = call double @llvm.fmuladd.f64(double %339, double %328, double %340)
  %342 = fmul double %327, %341
  %343 = load double, ptr @B6, align 8
  %344 = load double, ptr @B5, align 8
  %345 = call double @llvm.fmuladd.f64(double %343, double %328, double %344)
  %346 = load double, ptr @B4, align 8
  %347 = call double @llvm.fmuladd.f64(double %328, double %345, double %346)
  %348 = load double, ptr @B3, align 8
  %349 = call double @llvm.fmuladd.f64(double %328, double %347, double %348)
  %350 = load double, ptr @B2, align 8
  %351 = call double @llvm.fmuladd.f64(double %328, double %349, double %350)
  %352 = load double, ptr @B1, align 8
  %353 = call double @llvm.fmuladd.f64(double %328, double %351, double %352)
  %354 = call double @llvm.fmuladd.f64(double %328, double %353, double %340)
  %355 = fdiv double %342, %354
  %356 = fadd double %323, %355
  %357 = add nuw nsw i32 %324, 1
  br label %322, !llvm.loop !15

358:                                              ; preds = %322
  %359 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %360 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %361 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %362 = load double, ptr @nulltime, align 8
  %363 = fneg double %362
  %364 = call double @llvm.fmuladd.f64(double %360, double %361, double %363)
  store double %364, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %365 = load double, ptr @piref, align 8
  %366 = load double, ptr @three, align 8
  %367 = fdiv double %365, %366
  %368 = fmul double %367, %367
  %369 = load double, ptr @A6, align 8
  %370 = load double, ptr @A5, align 8
  %371 = call double @llvm.fmuladd.f64(double %369, double %368, double %370)
  %372 = load double, ptr @A4, align 8
  %373 = call double @llvm.fmuladd.f64(double %371, double %368, double %372)
  %374 = load double, ptr @A3, align 8
  %375 = call double @llvm.fmuladd.f64(double %373, double %368, double %374)
  %376 = load double, ptr @A2, align 8
  %377 = call double @llvm.fmuladd.f64(double %375, double %368, double %376)
  %378 = load double, ptr @A1, align 8
  %379 = call double @llvm.fmuladd.f64(double %377, double %368, double %378)
  %380 = load double, ptr @one, align 8
  %381 = call double @llvm.fmuladd.f64(double %379, double %368, double %380)
  %382 = fmul double %367, %381
  store double %382, ptr @sa, align 8
  %383 = load double, ptr @B6, align 8
  %384 = load double, ptr @B5, align 8
  %385 = call double @llvm.fmuladd.f64(double %383, double %368, double %384)
  %386 = load double, ptr @B4, align 8
  %387 = call double @llvm.fmuladd.f64(double %368, double %385, double %386)
  %388 = load double, ptr @B3, align 8
  %389 = call double @llvm.fmuladd.f64(double %368, double %387, double %388)
  %390 = load double, ptr @B2, align 8
  %391 = call double @llvm.fmuladd.f64(double %368, double %389, double %390)
  %392 = load double, ptr @B1, align 8
  %393 = call double @llvm.fmuladd.f64(double %368, double %391, double %392)
  %394 = call double @llvm.fmuladd.f64(double %368, double %393, double %380)
  store double %394, ptr @sb, align 8
  %395 = fdiv double %382, %394
  store double %395, ptr @sa, align 8
  %396 = fdiv double %364, 2.900000e+01
  store double %396, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %397 = load double, ptr @two, align 8
  %398 = call double @llvm.fmuladd.f64(double %397, double %323, double %395)
  %399 = fmul double %320, %398
  %400 = fdiv double %399, %397
  store double %400, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %401 = fadd double %400, f0xBFE62E42FEFA39EF
  store double %401, ptr @sc, align 8
  %402 = fdiv double %380, %396
  store double %402, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %403 = fmul double %401, 1.000000e-30
  %404 = fmul double %364, 1.000000e-30
  %405 = fmul double %402, 1.000000e-30
  %406 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %403, double noundef %404, double noundef %405) #4
  %407 = load double, ptr @piref, align 8
  %408 = load double, ptr @four, align 8
  %409 = fmul double %408, %169
  %410 = fdiv double %407, %409
  %411 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %412

412:                                              ; preds = %415, %358
  %413 = phi double [ %445, %415 ], [ 0.000000e+00, %358 ]
  %414 = phi i32 [ %446, %415 ], [ 1, %358 ]
  %.not8.not = icmp slt i32 %414, %148
  br i1 %.not8.not, label %415, label %447

415:                                              ; preds = %412
  %416 = uitofp nneg i32 %414 to double
  %417 = fmul double %410, %416
  %418 = fmul double %417, %417
  %419 = load double, ptr @A6, align 8
  %420 = load double, ptr @A5, align 8
  %421 = call double @llvm.fmuladd.f64(double %419, double %418, double %420)
  %422 = load double, ptr @A4, align 8
  %423 = call double @llvm.fmuladd.f64(double %421, double %418, double %422)
  %424 = load double, ptr @A3, align 8
  %425 = call double @llvm.fmuladd.f64(double %423, double %418, double %424)
  %426 = load double, ptr @A2, align 8
  %427 = call double @llvm.fmuladd.f64(double %425, double %418, double %426)
  %428 = load double, ptr @A1, align 8
  %429 = call double @llvm.fmuladd.f64(double %427, double %418, double %428)
  %430 = load double, ptr @one, align 8
  %431 = call double @llvm.fmuladd.f64(double %429, double %418, double %430)
  %432 = fmul double %417, %431
  %433 = load double, ptr @B6, align 8
  %434 = load double, ptr @B5, align 8
  %435 = call double @llvm.fmuladd.f64(double %433, double %418, double %434)
  %436 = load double, ptr @B4, align 8
  %437 = call double @llvm.fmuladd.f64(double %418, double %435, double %436)
  %438 = load double, ptr @B3, align 8
  %439 = call double @llvm.fmuladd.f64(double %418, double %437, double %438)
  %440 = load double, ptr @B2, align 8
  %441 = call double @llvm.fmuladd.f64(double %418, double %439, double %440)
  %442 = load double, ptr @B1, align 8
  %443 = call double @llvm.fmuladd.f64(double %418, double %441, double %442)
  %444 = call double @llvm.fmuladd.f64(double %418, double %443, double %430)
  %445 = call double @llvm.fmuladd.f64(double %432, double %444, double %413)
  %446 = add nuw nsw i32 %414, 1
  br label %412, !llvm.loop !16

447:                                              ; preds = %412
  %448 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %449 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %450 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %451 = load double, ptr @nulltime, align 8
  %452 = fneg double %451
  %453 = call double @llvm.fmuladd.f64(double %449, double %450, double %452)
  store double %453, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %454 = load double, ptr @piref, align 8
  %455 = load double, ptr @four, align 8
  %456 = fdiv double %454, %455
  %457 = fmul double %456, %456
  %458 = load double, ptr @A6, align 8
  %459 = load double, ptr @A5, align 8
  %460 = call double @llvm.fmuladd.f64(double %458, double %457, double %459)
  %461 = load double, ptr @A4, align 8
  %462 = call double @llvm.fmuladd.f64(double %460, double %457, double %461)
  %463 = load double, ptr @A3, align 8
  %464 = call double @llvm.fmuladd.f64(double %462, double %457, double %463)
  %465 = load double, ptr @A2, align 8
  %466 = call double @llvm.fmuladd.f64(double %464, double %457, double %465)
  %467 = load double, ptr @A1, align 8
  %468 = call double @llvm.fmuladd.f64(double %466, double %457, double %467)
  %469 = load double, ptr @one, align 8
  %470 = call double @llvm.fmuladd.f64(double %468, double %457, double %469)
  %471 = fmul double %456, %470
  store double %471, ptr @sa, align 8
  %472 = load double, ptr @B6, align 8
  %473 = load double, ptr @B5, align 8
  %474 = call double @llvm.fmuladd.f64(double %472, double %457, double %473)
  %475 = load double, ptr @B4, align 8
  %476 = call double @llvm.fmuladd.f64(double %457, double %474, double %475)
  %477 = load double, ptr @B3, align 8
  %478 = call double @llvm.fmuladd.f64(double %457, double %476, double %477)
  %479 = load double, ptr @B2, align 8
  %480 = call double @llvm.fmuladd.f64(double %457, double %478, double %479)
  %481 = load double, ptr @B1, align 8
  %482 = call double @llvm.fmuladd.f64(double %457, double %480, double %481)
  %483 = call double @llvm.fmuladd.f64(double %457, double %482, double %469)
  store double %483, ptr @sb, align 8
  %484 = fmul double %471, %483
  store double %484, ptr @sa, align 8
  %485 = fdiv double %453, 2.900000e+01
  store double %485, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %486 = load double, ptr @two, align 8
  %487 = call double @llvm.fmuladd.f64(double %486, double %413, double %484)
  %488 = fmul double %410, %487
  %489 = fdiv double %488, %486
  store double %489, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %490 = fadd double %489, -2.500000e-01
  store double %490, ptr @sc, align 8
  %491 = fdiv double %469, %485
  store double %491, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %492 = fmul double %490, 1.000000e-30
  %493 = fmul double %453, 1.000000e-30
  %494 = fmul double %491, 1.000000e-30
  %495 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %492, double noundef %493, double noundef %494) #4
  %496 = load double, ptr @one, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %497 = fdiv double f0x40599541F7F192A4, %169
  %498 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %499

499:                                              ; preds = %502, %447
  %500 = phi double [ %514, %502 ], [ 0.000000e+00, %447 ]
  %501 = phi i32 [ %515, %502 ], [ 1, %447 ]
  %.not9.not = icmp slt i32 %501, %148
  br i1 %.not9.not, label %502, label %516

502:                                              ; preds = %499
  %503 = uitofp nneg i32 %501 to double
  %504 = fmul double %497, %503
  %505 = fmul double %504, %504
  %506 = fadd double %504, %496
  %507 = fdiv double %496, %506
  %508 = fsub double %500, %507
  %509 = fadd double %505, %496
  %510 = fdiv double %504, %509
  %511 = fsub double %508, %510
  %512 = call double @llvm.fmuladd.f64(double %504, double %505, double %496)
  %513 = fdiv double %505, %512
  %514 = fsub double %511, %513
  %515 = add nuw nsw i32 %501, 1
  br label %499, !llvm.loop !17

516:                                              ; preds = %499
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
  %526 = fneg double %496
  %527 = fadd double %524, %496
  %528 = fdiv double %496, %527
  %529 = fsub double %526, %528
  %530 = fadd double %525, %496
  %531 = fdiv double %524, %530
  %532 = fsub double %529, %531
  %533 = call double @llvm.fmuladd.f64(double %524, double %525, double %496)
  %534 = fdiv double %525, %533
  %535 = fsub double %532, %534
  store double %535, ptr @sa, align 8
  %536 = fmul nnan double %497, 1.800000e+01
  %537 = load double, ptr @two, align 8
  %538 = call double @llvm.fmuladd.f64(double %537, double %500, double %535)
  %539 = fmul double %536, %538
  store double %539, ptr @sa, align 8
  %540 = fptosi double %539 to i32
  %541 = mul nsw i32 %540, -2000
  %542 = sitofp i32 %541 to double
  %543 = load double, ptr @scale, align 8
  %544 = fdiv double %542, %543
  %545 = fptosi double %544 to i32
  %546 = fadd double %539, 5.002000e+02
  store double %546, ptr @sc, align 8
  %547 = load double, ptr @one, align 8
  %548 = fdiv double %547, %523
  store double %548, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %549 = fmul double %546, 1.000000e-30
  %550 = fmul double %522, 1.000000e-30
  %551 = fmul double %548, 1.000000e-30
  %552 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %549, double noundef %550, double noundef %551) #4
  %553 = load double, ptr @piref, align 8
  %554 = load double, ptr @three, align 8
  %555 = sitofp i32 %545 to double
  %556 = fmul double %554, %555
  %557 = fdiv double %553, %556
  %558 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %559

559:                                              ; preds = %562, %516
  %560 = phi double [ %593, %562 ], [ 0.000000e+00, %516 ]
  %561 = phi i32 [ %594, %562 ], [ 1, %516 ]
  %.not10.not = icmp slt i32 %561, %545
  br i1 %.not10.not, label %562, label %595

562:                                              ; preds = %559
  %563 = uitofp nneg i32 %561 to double
  %564 = fmul double %557, %563
  %565 = fmul double %564, %564
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
  %636 = call double @llvm.fmuladd.f64(double %635, double %560, double %633)
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
  %677 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %545) #4
  %678 = load double, ptr @nulltime, align 8
  %679 = fmul double %678, 1.000000e-30
  %680 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %679) #4
  %681 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %682 = fmul double %681, 1.000000e-30
  %683 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %682) #4
  %684 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %685 = fmul double %684, 1.000000e-30
  %686 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %685) #4
  %687 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %688 = fmul double %687, 1.000000e-30
  %689 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %688) #4
  %690 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %691 = fmul double %690, 1.000000e-30
  %692 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %691) #4
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
