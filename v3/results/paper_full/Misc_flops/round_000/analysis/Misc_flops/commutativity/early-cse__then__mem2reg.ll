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

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store double 6.400000e+01, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  store double 1.000000e+00, ptr @TLimit, align 8
  store double f0x400921FB54442D18, ptr @piref, align 8
  store double 1.000000e+00, ptr @one, align 8
  store double 2.000000e+00, ptr @two, align 8
  store double 3.000000e+00, ptr @three, align 8
  store double 4.000000e+00, ptr @four, align 8
  store double 5.000000e+00, ptr @five, align 8
  %3 = load double, ptr @one, align 8
  store double %3, ptr @scale, align 8
  %4 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %5 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %6 = call i32 @dtime(ptr noundef @TimeArray)
  %7 = call i32 @dtime(ptr noundef @TimeArray)
  store double 0.000000e+00, ptr @sa, align 8
  br label %8

8:                                                ; preds = %44, %0
  %.08 = phi double [ undef, %0 ], [ %16, %44 ]
  %.01 = phi double [ undef, %0 ], [ %.2, %44 ]
  %.0 = phi i32 [ 15625, %0 ], [ %13, %44 ]
  %9 = load double, ptr @sa, align 8
  %10 = load double, ptr @TLimit, align 8
  %11 = fcmp olt double %9, %10
  br i1 %11, label %12, label %45

12:                                               ; preds = %8
  %13 = mul nsw i32 2, %.0
  %14 = load double, ptr @one, align 8
  %15 = sitofp i32 %13 to double
  %16 = fdiv double %14, %15
  %17 = load double, ptr @one, align 8
  %18 = call i32 @dtime(ptr noundef @TimeArray)
  br label %19

19:                                               ; preds = %37, %12
  %.011 = phi i32 [ 1, %12 ], [ %38, %37 ]
  %.04 = phi double [ 0.000000e+00, %12 ], [ %23, %37 ]
  %.2 = phi double [ 0.000000e+00, %12 ], [ %36, %37 ]
  %20 = sub nsw i32 %13, 1
  %21 = icmp sle i32 %.011, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %19
  %23 = fadd double %.04, %17
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
  %34 = call double @llvm.fmuladd.f64(double %24, double %33, double %17)
  %35 = fdiv double %29, %34
  %36 = fadd double %.2, %35
  br label %37

37:                                               ; preds = %22
  %38 = add nsw i32 %.011, 1
  br label %19, !llvm.loop !7

39:                                               ; preds = %19
  %40 = call i32 @dtime(ptr noundef @TimeArray)
  %41 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %41, ptr @sa, align 8
  %42 = icmp eq i32 %13, 512000000
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %45

44:                                               ; preds = %39
  br label %8, !llvm.loop !9

45:                                               ; preds = %43, %8
  %.19 = phi double [ %16, %43 ], [ %.08, %8 ]
  %.12 = phi double [ %.2, %43 ], [ %.01, %8 ]
  %.1 = phi i32 [ %13, %43 ], [ %.0, %8 ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %46 = call i32 @dtime(ptr noundef @TimeArray)
  br label %47

47:                                               ; preds = %51, %45
  %.112 = phi i32 [ 1, %45 ], [ %52, %51 ]
  %48 = sub nsw i32 %.1, 1
  %49 = icmp sle i32 %.112, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  br label %51

51:                                               ; preds = %50
  %52 = add nsw i32 %.112, 1
  br label %47, !llvm.loop !10

53:                                               ; preds = %47
  %54 = call i32 @dtime(ptr noundef @TimeArray)
  %55 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %56 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %57 = fmul double %55, %56
  store double %57, ptr @nulltime, align 8
  %58 = fcmp olt double %57, 0.000000e+00
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store double 0.000000e+00, ptr @nulltime, align 8
  br label %60

60:                                               ; preds = %59, %53
  %61 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %62 = load double, ptr @sa, align 8
  %63 = load double, ptr @nulltime, align 8
  %64 = fneg double %63
  %65 = call double @llvm.fmuladd.f64(double %61, double %62, double %64)
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
  %78 = load double, ptr @D1, align 8
  store double %78, ptr @sb, align 8
  %79 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %80 = fdiv double %79, 1.400000e+01
  store double %80, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %81 = load double, ptr @sa, align 8
  %82 = load double, ptr @sb, align 8
  %83 = fadd double %81, %82
  %84 = load double, ptr @two, align 8
  %85 = call double @llvm.fmuladd.f64(double %84, double %.12, double %83)
  %86 = fmul double %.19, %85
  %87 = fdiv double %86, %84
  store double %87, ptr @sa, align 8
  %88 = load double, ptr @one, align 8
  %89 = fdiv double %88, %87
  store double %89, ptr @sb, align 8
  %90 = fptosi double %89 to i32
  %91 = mul nsw i32 40000, %90
  %92 = sitofp i32 %91 to double
  %93 = load double, ptr @scale, align 8
  %94 = fdiv double %92, %93
  %95 = fptosi double %94 to i32
  %96 = load double, ptr @sb, align 8
  %97 = fsub double %96, 2.520000e+01
  store double %97, ptr @sc, align 8
  %98 = load double, ptr @one, align 8
  %99 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %100 = fdiv double %98, %99
  store double %100, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %101 = load double, ptr @sc, align 8
  %102 = fmul double %101, 1.000000e-30
  %103 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %104 = fmul double %103, 1.000000e-30
  %105 = fmul double %100, 1.000000e-30
  %106 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %102, double noundef %104, double noundef %105)
  %107 = load double, ptr @five, align 8
  %108 = fneg double %107
  %109 = load double, ptr @one, align 8
  %110 = fneg double %109
  store double %110, ptr @sa, align 8
  %111 = call i32 @dtime(ptr noundef @TimeArray)
  br label %112

112:                                              ; preds = %118, %60
  %.213 = phi i32 [ 1, %60 ], [ %119, %118 ]
  %.3 = phi double [ %108, %60 ], [ %115, %118 ]
  %113 = icmp sle i32 %.213, %95
  br i1 %113, label %114, label %120

114:                                              ; preds = %112
  %115 = fneg double %.3
  %116 = load double, ptr @sa, align 8
  %117 = fadd double %116, %115
  store double %117, ptr @sa, align 8
  br label %118

118:                                              ; preds = %114
  %119 = add nsw i32 %.213, 1
  br label %112, !llvm.loop !11

120:                                              ; preds = %112
  %121 = call i32 @dtime(ptr noundef @TimeArray)
  %122 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %123 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %124 = fmul double %122, %123
  store double %124, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %125 = fcmp olt double %124, 0.000000e+00
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  br label %127

127:                                              ; preds = %126, %120
  %128 = sitofp i32 %95 to double
  store double %128, ptr @sc, align 8
  %129 = load double, ptr @sa, align 8
  %130 = call i32 @dtime(ptr noundef @TimeArray)
  br label %131

131:                                              ; preds = %145, %127
  %.314 = phi i32 [ 1, %127 ], [ %146, %145 ]
  %.210 = phi double [ 0.000000e+00, %127 ], [ %140, %145 ]
  %.07 = phi double [ 0.000000e+00, %127 ], [ %144, %145 ]
  %.15 = phi double [ 0.000000e+00, %127 ], [ %142, %145 ]
  %.03 = phi double [ %129, %127 ], [ %138, %145 ]
  %.4 = phi double [ %.3, %127 ], [ %134, %145 ]
  %132 = icmp sle i32 %.314, %95
  br i1 %132, label %133, label %147

133:                                              ; preds = %131
  %134 = fneg double %.4
  %135 = load double, ptr @sa, align 8
  %136 = fadd double %135, %134
  store double %136, ptr @sa, align 8
  %137 = load double, ptr @two, align 8
  %138 = fadd double %.03, %137
  %139 = fsub double %134, %138
  %140 = fadd double %.210, %139
  %141 = fneg double %134
  %142 = call double @llvm.fmuladd.f64(double %141, double %138, double %.15)
  %143 = fdiv double %134, %138
  %144 = fadd double %.07, %143
  br label %145

145:                                              ; preds = %133
  %146 = add nsw i32 %.314, 1
  br label %131, !llvm.loop !12

147:                                              ; preds = %131
  %148 = call i32 @dtime(ptr noundef @TimeArray)
  %149 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %150 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %151 = fmul double %149, %150
  store double %151, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %152 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %153 = fsub double %151, %152
  %154 = fdiv double %153, 7.000000e+00
  store double %154, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %155 = load double, ptr @sa, align 8
  %156 = fmul double %155, %.210
  %157 = load double, ptr @sc, align 8
  %158 = fdiv double %156, %157
  %159 = fptosi double %158 to i32
  %160 = load double, ptr @four, align 8
  %161 = fmul double %160, %.07
  %162 = load double, ptr @five, align 8
  %163 = fdiv double %161, %162
  store double %163, ptr @sa, align 8
  %164 = load double, ptr @five, align 8
  %165 = fdiv double %164, %.15
  %166 = fadd double %163, %165
  store double %166, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %167 = load double, ptr @sb, align 8
  %168 = fmul double %.15, %.15
  %169 = fmul double %168, %.15
  %170 = fdiv double 3.125000e+01, %169
  %171 = fsub double %167, %170
  store double %171, ptr @piprg, align 8
  %172 = load double, ptr @piref, align 8
  %173 = fsub double %171, %172
  store double %173, ptr @pierr, align 8
  %174 = load double, ptr @one, align 8
  %175 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %176 = fdiv double %174, %175
  store double %176, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %177 = load double, ptr @pierr, align 8
  %178 = fmul double %177, 1.000000e-30
  %179 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %180 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %181 = fsub double %179, %180
  %182 = fmul double %181, 1.000000e-30
  %183 = fmul double %176, 1.000000e-30
  %184 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %178, double noundef %182, double noundef %183)
  %185 = load double, ptr @piref, align 8
  %186 = load double, ptr @three, align 8
  %187 = sitofp i32 %159 to double
  %188 = fmul double %186, %187
  %189 = fdiv double %185, %188
  %190 = call i32 @dtime(ptr noundef @TimeArray)
  br label %191

191:                                              ; preds = %215, %147
  %.415 = phi i32 [ 1, %147 ], [ %216, %215 ]
  %.26 = phi double [ 0.000000e+00, %147 ], [ %196, %215 ]
  %.5 = phi double [ 0.000000e+00, %147 ], [ %214, %215 ]
  %192 = sub nsw i32 %159, 1
  %193 = icmp sle i32 %.415, %192
  br i1 %193, label %194, label %217

194:                                              ; preds = %191
  %195 = load double, ptr @one, align 8
  %196 = fadd double %.26, %195
  %197 = fmul double %196, %189
  %198 = fmul double %197, %197
  %199 = load double, ptr @A6, align 8
  %200 = load double, ptr @A5, align 8
  %201 = fneg double %200
  %202 = call double @llvm.fmuladd.f64(double %199, double %198, double %201)
  %203 = load double, ptr @A4, align 8
  %204 = call double @llvm.fmuladd.f64(double %202, double %198, double %203)
  %205 = load double, ptr @A3, align 8
  %206 = fneg double %205
  %207 = call double @llvm.fmuladd.f64(double %204, double %198, double %206)
  %208 = load double, ptr @A2, align 8
  %209 = call double @llvm.fmuladd.f64(double %207, double %198, double %208)
  %210 = load double, ptr @A1, align 8
  %211 = call double @llvm.fmuladd.f64(double %209, double %198, double %210)
  %212 = load double, ptr @one, align 8
  %213 = call double @llvm.fmuladd.f64(double %211, double %198, double %212)
  %214 = call double @llvm.fmuladd.f64(double %197, double %213, double %.5)
  br label %215

215:                                              ; preds = %194
  %216 = add nsw i32 %.415, 1
  br label %191, !llvm.loop !13

217:                                              ; preds = %191
  %218 = call i32 @dtime(ptr noundef @TimeArray)
  %219 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %220 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %221 = load double, ptr @nulltime, align 8
  %222 = fneg double %221
  %223 = call double @llvm.fmuladd.f64(double %219, double %220, double %222)
  store double %223, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %224 = load double, ptr @piref, align 8
  %225 = load double, ptr @three, align 8
  %226 = fdiv double %224, %225
  %227 = fmul double %226, %226
  %228 = load double, ptr @A6, align 8
  %229 = load double, ptr @A5, align 8
  %230 = fneg double %229
  %231 = call double @llvm.fmuladd.f64(double %228, double %227, double %230)
  %232 = load double, ptr @A4, align 8
  %233 = call double @llvm.fmuladd.f64(double %231, double %227, double %232)
  %234 = load double, ptr @A3, align 8
  %235 = fneg double %234
  %236 = call double @llvm.fmuladd.f64(double %233, double %227, double %235)
  %237 = load double, ptr @A2, align 8
  %238 = call double @llvm.fmuladd.f64(double %236, double %227, double %237)
  %239 = load double, ptr @A1, align 8
  %240 = call double @llvm.fmuladd.f64(double %238, double %227, double %239)
  %241 = load double, ptr @one, align 8
  %242 = call double @llvm.fmuladd.f64(double %240, double %227, double %241)
  %243 = fmul double %226, %242
  store double %243, ptr @sa, align 8
  %244 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %245 = fdiv double %244, 1.700000e+01
  store double %245, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %246 = load double, ptr @sa, align 8
  %247 = load double, ptr @two, align 8
  %248 = call double @llvm.fmuladd.f64(double %247, double %.5, double %246)
  %249 = fmul double %189, %248
  %250 = fdiv double %249, %247
  store double %250, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %251 = load double, ptr @sa, align 8
  %252 = fsub double %251, 5.000000e-01
  store double %252, ptr @sc, align 8
  %253 = load double, ptr @one, align 8
  %254 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %255 = fdiv double %253, %254
  store double %255, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %256 = load double, ptr @sc, align 8
  %257 = fmul double %256, 1.000000e-30
  %258 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %259 = fmul double %258, 1.000000e-30
  %260 = fmul double %255, 1.000000e-30
  %261 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %257, double noundef %259, double noundef %260)
  %262 = load double, ptr @A3, align 8
  %263 = fneg double %262
  store double %263, ptr @A3, align 8
  %264 = load double, ptr @A5, align 8
  %265 = fneg double %264
  store double %265, ptr @A5, align 8
  %266 = load double, ptr @piref, align 8
  %267 = load double, ptr @three, align 8
  %268 = sitofp i32 %159 to double
  %269 = fmul double %267, %268
  %270 = fdiv double %266, %269
  %271 = call i32 @dtime(ptr noundef @TimeArray)
  br label %272

272:                                              ; preds = %293, %217
  %.516 = phi i32 [ 1, %217 ], [ %294, %293 ]
  %.6 = phi double [ 0.000000e+00, %217 ], [ %292, %293 ]
  %273 = sub nsw i32 %159, 1
  %274 = icmp sle i32 %.516, %273
  br i1 %274, label %275, label %295

275:                                              ; preds = %272
  %276 = sitofp i32 %.516 to double
  %277 = fmul double %276, %270
  %278 = fmul double %277, %277
  %279 = load double, ptr @B6, align 8
  %280 = load double, ptr @B5, align 8
  %281 = call double @llvm.fmuladd.f64(double %279, double %278, double %280)
  %282 = load double, ptr @B4, align 8
  %283 = call double @llvm.fmuladd.f64(double %278, double %281, double %282)
  %284 = load double, ptr @B3, align 8
  %285 = call double @llvm.fmuladd.f64(double %278, double %283, double %284)
  %286 = load double, ptr @B2, align 8
  %287 = call double @llvm.fmuladd.f64(double %278, double %285, double %286)
  %288 = load double, ptr @B1, align 8
  %289 = call double @llvm.fmuladd.f64(double %278, double %287, double %288)
  %290 = call double @llvm.fmuladd.f64(double %278, double %289, double %.6)
  %291 = load double, ptr @one, align 8
  %292 = fadd double %290, %291
  br label %293

293:                                              ; preds = %275
  %294 = add nsw i32 %.516, 1
  br label %272, !llvm.loop !14

295:                                              ; preds = %272
  %296 = call i32 @dtime(ptr noundef @TimeArray)
  %297 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %298 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %299 = load double, ptr @nulltime, align 8
  %300 = fneg double %299
  %301 = call double @llvm.fmuladd.f64(double %297, double %298, double %300)
  store double %301, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %302 = load double, ptr @piref, align 8
  %303 = load double, ptr @three, align 8
  %304 = fdiv double %302, %303
  %305 = fmul double %304, %304
  %306 = load double, ptr @B6, align 8
  %307 = load double, ptr @B5, align 8
  %308 = call double @llvm.fmuladd.f64(double %306, double %305, double %307)
  %309 = load double, ptr @B4, align 8
  %310 = call double @llvm.fmuladd.f64(double %305, double %308, double %309)
  %311 = load double, ptr @B3, align 8
  %312 = call double @llvm.fmuladd.f64(double %305, double %310, double %311)
  %313 = load double, ptr @B2, align 8
  %314 = call double @llvm.fmuladd.f64(double %305, double %312, double %313)
  %315 = load double, ptr @B1, align 8
  %316 = call double @llvm.fmuladd.f64(double %305, double %314, double %315)
  %317 = load double, ptr @one, align 8
  %318 = call double @llvm.fmuladd.f64(double %305, double %316, double %317)
  store double %318, ptr @sa, align 8
  %319 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %320 = fdiv double %319, 1.500000e+01
  store double %320, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %321 = load double, ptr @sa, align 8
  %322 = load double, ptr @one, align 8
  %323 = fadd double %321, %322
  %324 = load double, ptr @two, align 8
  %325 = call double @llvm.fmuladd.f64(double %324, double %.6, double %323)
  %326 = fmul double %270, %325
  %327 = fdiv double %326, %324
  store double %327, ptr @sa, align 8
  %328 = load double, ptr @piref, align 8
  %329 = load double, ptr @three, align 8
  %330 = fdiv double %328, %329
  %331 = fmul double %330, %330
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
  %343 = load double, ptr @A0, align 8
  %344 = call double @llvm.fmuladd.f64(double %342, double %331, double %343)
  %345 = fmul double %330, %344
  store double %345, ptr @sb, align 8
  %346 = load double, ptr @sa, align 8
  %347 = fsub double %346, %345
  store double %347, ptr @sc, align 8
  %348 = load double, ptr @one, align 8
  %349 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %350 = fdiv double %348, %349
  store double %350, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %351 = load double, ptr @sc, align 8
  %352 = fmul double %351, 1.000000e-30
  %353 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %354 = fmul double %353, 1.000000e-30
  %355 = fmul double %350, 1.000000e-30
  %356 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %352, double noundef %354, double noundef %355)
  %357 = load double, ptr @piref, align 8
  %358 = load double, ptr @three, align 8
  %359 = sitofp i32 %159 to double
  %360 = fmul double %358, %359
  %361 = fdiv double %357, %360
  %362 = call i32 @dtime(ptr noundef @TimeArray)
  br label %363

363:                                              ; preds = %399, %295
  %.617 = phi i32 [ 1, %295 ], [ %400, %399 ]
  %.7 = phi double [ 0.000000e+00, %295 ], [ %398, %399 ]
  %364 = sub nsw i32 %159, 1
  %365 = icmp sle i32 %.617, %364
  br i1 %365, label %366, label %401

366:                                              ; preds = %363
  %367 = sitofp i32 %.617 to double
  %368 = fmul double %367, %361
  %369 = fmul double %368, %368
  %370 = load double, ptr @A6, align 8
  %371 = load double, ptr @A5, align 8
  %372 = call double @llvm.fmuladd.f64(double %370, double %369, double %371)
  %373 = load double, ptr @A4, align 8
  %374 = call double @llvm.fmuladd.f64(double %372, double %369, double %373)
  %375 = load double, ptr @A3, align 8
  %376 = call double @llvm.fmuladd.f64(double %374, double %369, double %375)
  %377 = load double, ptr @A2, align 8
  %378 = call double @llvm.fmuladd.f64(double %376, double %369, double %377)
  %379 = load double, ptr @A1, align 8
  %380 = call double @llvm.fmuladd.f64(double %378, double %369, double %379)
  %381 = load double, ptr @one, align 8
  %382 = call double @llvm.fmuladd.f64(double %380, double %369, double %381)
  %383 = fmul double %368, %382
  %384 = load double, ptr @B6, align 8
  %385 = load double, ptr @B5, align 8
  %386 = call double @llvm.fmuladd.f64(double %384, double %369, double %385)
  %387 = load double, ptr @B4, align 8
  %388 = call double @llvm.fmuladd.f64(double %369, double %386, double %387)
  %389 = load double, ptr @B3, align 8
  %390 = call double @llvm.fmuladd.f64(double %369, double %388, double %389)
  %391 = load double, ptr @B2, align 8
  %392 = call double @llvm.fmuladd.f64(double %369, double %390, double %391)
  %393 = load double, ptr @B1, align 8
  %394 = call double @llvm.fmuladd.f64(double %369, double %392, double %393)
  %395 = load double, ptr @one, align 8
  %396 = call double @llvm.fmuladd.f64(double %369, double %394, double %395)
  %397 = fdiv double %383, %396
  %398 = fadd double %.7, %397
  br label %399

399:                                              ; preds = %366
  %400 = add nsw i32 %.617, 1
  br label %363, !llvm.loop !15

401:                                              ; preds = %363
  %402 = call i32 @dtime(ptr noundef @TimeArray)
  %403 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %404 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %405 = load double, ptr @nulltime, align 8
  %406 = fneg double %405
  %407 = call double @llvm.fmuladd.f64(double %403, double %404, double %406)
  store double %407, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %408 = load double, ptr @piref, align 8
  %409 = load double, ptr @three, align 8
  %410 = fdiv double %408, %409
  %411 = fmul double %410, %410
  %412 = load double, ptr @A6, align 8
  %413 = load double, ptr @A5, align 8
  %414 = call double @llvm.fmuladd.f64(double %412, double %411, double %413)
  %415 = load double, ptr @A4, align 8
  %416 = call double @llvm.fmuladd.f64(double %414, double %411, double %415)
  %417 = load double, ptr @A3, align 8
  %418 = call double @llvm.fmuladd.f64(double %416, double %411, double %417)
  %419 = load double, ptr @A2, align 8
  %420 = call double @llvm.fmuladd.f64(double %418, double %411, double %419)
  %421 = load double, ptr @A1, align 8
  %422 = call double @llvm.fmuladd.f64(double %420, double %411, double %421)
  %423 = load double, ptr @one, align 8
  %424 = call double @llvm.fmuladd.f64(double %422, double %411, double %423)
  %425 = fmul double %410, %424
  store double %425, ptr @sa, align 8
  %426 = load double, ptr @B6, align 8
  %427 = load double, ptr @B5, align 8
  %428 = call double @llvm.fmuladd.f64(double %426, double %411, double %427)
  %429 = load double, ptr @B4, align 8
  %430 = call double @llvm.fmuladd.f64(double %411, double %428, double %429)
  %431 = load double, ptr @B3, align 8
  %432 = call double @llvm.fmuladd.f64(double %411, double %430, double %431)
  %433 = load double, ptr @B2, align 8
  %434 = call double @llvm.fmuladd.f64(double %411, double %432, double %433)
  %435 = load double, ptr @B1, align 8
  %436 = call double @llvm.fmuladd.f64(double %411, double %434, double %435)
  %437 = load double, ptr @one, align 8
  %438 = call double @llvm.fmuladd.f64(double %411, double %436, double %437)
  store double %438, ptr @sb, align 8
  %439 = load double, ptr @sa, align 8
  %440 = fdiv double %439, %438
  store double %440, ptr @sa, align 8
  %441 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %442 = fdiv double %441, 2.900000e+01
  store double %442, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %443 = load double, ptr @sa, align 8
  %444 = load double, ptr @two, align 8
  %445 = call double @llvm.fmuladd.f64(double %444, double %.7, double %443)
  %446 = fmul double %361, %445
  %447 = fdiv double %446, %444
  store double %447, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %448 = load double, ptr @sa, align 8
  %449 = fsub double %448, f0x3FE62E42FEFA39EF
  store double %449, ptr @sc, align 8
  %450 = load double, ptr @one, align 8
  %451 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %452 = fdiv double %450, %451
  store double %452, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %453 = load double, ptr @sc, align 8
  %454 = fmul double %453, 1.000000e-30
  %455 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %456 = fmul double %455, 1.000000e-30
  %457 = fmul double %452, 1.000000e-30
  %458 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %454, double noundef %456, double noundef %457)
  %459 = load double, ptr @piref, align 8
  %460 = load double, ptr @four, align 8
  %461 = sitofp i32 %159 to double
  %462 = fmul double %460, %461
  %463 = fdiv double %459, %462
  %464 = call i32 @dtime(ptr noundef @TimeArray)
  br label %465

465:                                              ; preds = %500, %401
  %.718 = phi i32 [ 1, %401 ], [ %501, %500 ]
  %.8 = phi double [ 0.000000e+00, %401 ], [ %499, %500 ]
  %466 = sub nsw i32 %159, 1
  %467 = icmp sle i32 %.718, %466
  br i1 %467, label %468, label %502

468:                                              ; preds = %465
  %469 = sitofp i32 %.718 to double
  %470 = fmul double %469, %463
  %471 = fmul double %470, %470
  %472 = load double, ptr @A6, align 8
  %473 = load double, ptr @A5, align 8
  %474 = call double @llvm.fmuladd.f64(double %472, double %471, double %473)
  %475 = load double, ptr @A4, align 8
  %476 = call double @llvm.fmuladd.f64(double %474, double %471, double %475)
  %477 = load double, ptr @A3, align 8
  %478 = call double @llvm.fmuladd.f64(double %476, double %471, double %477)
  %479 = load double, ptr @A2, align 8
  %480 = call double @llvm.fmuladd.f64(double %478, double %471, double %479)
  %481 = load double, ptr @A1, align 8
  %482 = call double @llvm.fmuladd.f64(double %480, double %471, double %481)
  %483 = load double, ptr @one, align 8
  %484 = call double @llvm.fmuladd.f64(double %482, double %471, double %483)
  %485 = fmul double %470, %484
  %486 = load double, ptr @B6, align 8
  %487 = load double, ptr @B5, align 8
  %488 = call double @llvm.fmuladd.f64(double %486, double %471, double %487)
  %489 = load double, ptr @B4, align 8
  %490 = call double @llvm.fmuladd.f64(double %471, double %488, double %489)
  %491 = load double, ptr @B3, align 8
  %492 = call double @llvm.fmuladd.f64(double %471, double %490, double %491)
  %493 = load double, ptr @B2, align 8
  %494 = call double @llvm.fmuladd.f64(double %471, double %492, double %493)
  %495 = load double, ptr @B1, align 8
  %496 = call double @llvm.fmuladd.f64(double %471, double %494, double %495)
  %497 = load double, ptr @one, align 8
  %498 = call double @llvm.fmuladd.f64(double %471, double %496, double %497)
  %499 = call double @llvm.fmuladd.f64(double %485, double %498, double %.8)
  br label %500

500:                                              ; preds = %468
  %501 = add nsw i32 %.718, 1
  br label %465, !llvm.loop !16

502:                                              ; preds = %465
  %503 = call i32 @dtime(ptr noundef @TimeArray)
  %504 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %505 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %506 = load double, ptr @nulltime, align 8
  %507 = fneg double %506
  %508 = call double @llvm.fmuladd.f64(double %504, double %505, double %507)
  store double %508, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %509 = load double, ptr @piref, align 8
  %510 = load double, ptr @four, align 8
  %511 = fdiv double %509, %510
  %512 = fmul double %511, %511
  %513 = load double, ptr @A6, align 8
  %514 = load double, ptr @A5, align 8
  %515 = call double @llvm.fmuladd.f64(double %513, double %512, double %514)
  %516 = load double, ptr @A4, align 8
  %517 = call double @llvm.fmuladd.f64(double %515, double %512, double %516)
  %518 = load double, ptr @A3, align 8
  %519 = call double @llvm.fmuladd.f64(double %517, double %512, double %518)
  %520 = load double, ptr @A2, align 8
  %521 = call double @llvm.fmuladd.f64(double %519, double %512, double %520)
  %522 = load double, ptr @A1, align 8
  %523 = call double @llvm.fmuladd.f64(double %521, double %512, double %522)
  %524 = load double, ptr @one, align 8
  %525 = call double @llvm.fmuladd.f64(double %523, double %512, double %524)
  %526 = fmul double %511, %525
  store double %526, ptr @sa, align 8
  %527 = load double, ptr @B6, align 8
  %528 = load double, ptr @B5, align 8
  %529 = call double @llvm.fmuladd.f64(double %527, double %512, double %528)
  %530 = load double, ptr @B4, align 8
  %531 = call double @llvm.fmuladd.f64(double %512, double %529, double %530)
  %532 = load double, ptr @B3, align 8
  %533 = call double @llvm.fmuladd.f64(double %512, double %531, double %532)
  %534 = load double, ptr @B2, align 8
  %535 = call double @llvm.fmuladd.f64(double %512, double %533, double %534)
  %536 = load double, ptr @B1, align 8
  %537 = call double @llvm.fmuladd.f64(double %512, double %535, double %536)
  %538 = load double, ptr @one, align 8
  %539 = call double @llvm.fmuladd.f64(double %512, double %537, double %538)
  store double %539, ptr @sb, align 8
  %540 = load double, ptr @sa, align 8
  %541 = fmul double %540, %539
  store double %541, ptr @sa, align 8
  %542 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %543 = fdiv double %542, 2.900000e+01
  store double %543, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %544 = load double, ptr @sa, align 8
  %545 = load double, ptr @two, align 8
  %546 = call double @llvm.fmuladd.f64(double %545, double %.8, double %544)
  %547 = fmul double %463, %546
  %548 = fdiv double %547, %545
  store double %548, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %549 = load double, ptr @sa, align 8
  %550 = fsub double %549, 2.500000e-01
  store double %550, ptr @sc, align 8
  %551 = load double, ptr @one, align 8
  %552 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %553 = fdiv double %551, %552
  store double %553, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %554 = load double, ptr @sc, align 8
  %555 = fmul double %554, 1.000000e-30
  %556 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %557 = fmul double %556, 1.000000e-30
  %558 = fmul double %553, 1.000000e-30
  %559 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, double noundef %555, double noundef %557, double noundef %558)
  %560 = load double, ptr @one, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %561 = sitofp i32 %159 to double
  %562 = fdiv double f0x40599541F7F192A4, %561
  %563 = call i32 @dtime(ptr noundef @TimeArray)
  br label %564

564:                                              ; preds = %580, %502
  %.819 = phi i32 [ 1, %502 ], [ %581, %580 ]
  %.9 = phi double [ 0.000000e+00, %502 ], [ %579, %580 ]
  %565 = sub nsw i32 %159, 1
  %566 = icmp sle i32 %.819, %565
  br i1 %566, label %567, label %582

567:                                              ; preds = %564
  %568 = sitofp i32 %.819 to double
  %569 = fmul double %568, %562
  %570 = fmul double %569, %569
  %571 = fadd double %569, %560
  %572 = fdiv double %560, %571
  %573 = fsub double %.9, %572
  %574 = fadd double %570, %560
  %575 = fdiv double %569, %574
  %576 = fsub double %573, %575
  %577 = call double @llvm.fmuladd.f64(double %569, double %570, double %560)
  %578 = fdiv double %570, %577
  %579 = fsub double %576, %578
  br label %580

580:                                              ; preds = %567
  %581 = add nsw i32 %.819, 1
  br label %564, !llvm.loop !17

582:                                              ; preds = %564
  %583 = call i32 @dtime(ptr noundef @TimeArray)
  %584 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %585 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %586 = load double, ptr @nulltime, align 8
  %587 = fneg double %586
  %588 = call double @llvm.fmuladd.f64(double %584, double %585, double %587)
  store double %588, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %589 = fdiv double %588, 1.200000e+01
  store double %589, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %590 = load double, ptr @sa, align 8
  %591 = fmul double %590, %590
  %592 = fneg double %560
  %593 = fadd double %590, %560
  %594 = fdiv double %560, %593
  %595 = fsub double %592, %594
  %596 = fadd double %591, %560
  %597 = fdiv double %590, %596
  %598 = fsub double %595, %597
  %599 = call double @llvm.fmuladd.f64(double %590, double %591, double %560)
  %600 = fdiv double %591, %599
  %601 = fsub double %598, %600
  store double %601, ptr @sa, align 8
  %602 = fmul double 1.800000e+01, %562
  %603 = load double, ptr @two, align 8
  %604 = call double @llvm.fmuladd.f64(double %603, double %.9, double %601)
  %605 = fmul double %602, %604
  store double %605, ptr @sa, align 8
  %606 = fptosi double %605 to i32
  %607 = mul nsw i32 -2000, %606
  %608 = sitofp i32 %607 to double
  %609 = load double, ptr @scale, align 8
  %610 = fdiv double %608, %609
  %611 = fptosi double %610 to i32
  %612 = load double, ptr @sa, align 8
  %613 = fadd double %612, 5.002000e+02
  store double %613, ptr @sc, align 8
  %614 = load double, ptr @one, align 8
  %615 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %616 = fdiv double %614, %615
  store double %616, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %617 = load double, ptr @sc, align 8
  %618 = fmul double %617, 1.000000e-30
  %619 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %620 = fmul double %619, 1.000000e-30
  %621 = fmul double %616, 1.000000e-30
  %622 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, double noundef %618, double noundef %620, double noundef %621)
  %623 = load double, ptr @piref, align 8
  %624 = load double, ptr @three, align 8
  %625 = sitofp i32 %611 to double
  %626 = fmul double %624, %625
  %627 = fdiv double %623, %626
  %628 = call i32 @dtime(ptr noundef @TimeArray)
  br label %629

629:                                              ; preds = %665, %582
  %.920 = phi i32 [ 1, %582 ], [ %666, %665 ]
  %.10 = phi double [ 0.000000e+00, %582 ], [ %664, %665 ]
  %630 = sub nsw i32 %611, 1
  %631 = icmp sle i32 %.920, %630
  br i1 %631, label %632, label %667

632:                                              ; preds = %629
  %633 = sitofp i32 %.920 to double
  %634 = fmul double %633, %627
  %635 = fmul double %634, %634
  %636 = load double, ptr @B6, align 8
  %637 = load double, ptr @B5, align 8
  %638 = call double @llvm.fmuladd.f64(double %636, double %635, double %637)
  %639 = load double, ptr @B4, align 8
  %640 = call double @llvm.fmuladd.f64(double %635, double %638, double %639)
  %641 = load double, ptr @B3, align 8
  %642 = call double @llvm.fmuladd.f64(double %635, double %640, double %641)
  %643 = load double, ptr @B2, align 8
  %644 = call double @llvm.fmuladd.f64(double %635, double %642, double %643)
  %645 = load double, ptr @B1, align 8
  %646 = call double @llvm.fmuladd.f64(double %635, double %644, double %645)
  %647 = load double, ptr @one, align 8
  %648 = call double @llvm.fmuladd.f64(double %635, double %646, double %647)
  %649 = fmul double %648, %648
  %650 = fmul double %649, %634
  %651 = load double, ptr @A6, align 8
  %652 = load double, ptr @A5, align 8
  %653 = call double @llvm.fmuladd.f64(double %651, double %635, double %652)
  %654 = load double, ptr @A4, align 8
  %655 = call double @llvm.fmuladd.f64(double %653, double %635, double %654)
  %656 = load double, ptr @A3, align 8
  %657 = call double @llvm.fmuladd.f64(double %655, double %635, double %656)
  %658 = load double, ptr @A2, align 8
  %659 = call double @llvm.fmuladd.f64(double %657, double %635, double %658)
  %660 = load double, ptr @A1, align 8
  %661 = call double @llvm.fmuladd.f64(double %659, double %635, double %660)
  %662 = load double, ptr @one, align 8
  %663 = call double @llvm.fmuladd.f64(double %661, double %635, double %662)
  %664 = call double @llvm.fmuladd.f64(double %650, double %663, double %.10)
  br label %665

665:                                              ; preds = %632
  %666 = add nsw i32 %.920, 1
  br label %629, !llvm.loop !18

667:                                              ; preds = %629
  %668 = call i32 @dtime(ptr noundef @TimeArray)
  %669 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %670 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %671 = load double, ptr @nulltime, align 8
  %672 = fneg double %671
  %673 = call double @llvm.fmuladd.f64(double %669, double %670, double %672)
  store double %673, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %674 = load double, ptr @piref, align 8
  %675 = load double, ptr @three, align 8
  %676 = fdiv double %674, %675
  %677 = fmul double %676, %676
  %678 = load double, ptr @A6, align 8
  %679 = load double, ptr @A5, align 8
  %680 = call double @llvm.fmuladd.f64(double %678, double %677, double %679)
  %681 = load double, ptr @A4, align 8
  %682 = call double @llvm.fmuladd.f64(double %680, double %677, double %681)
  %683 = load double, ptr @A3, align 8
  %684 = call double @llvm.fmuladd.f64(double %682, double %677, double %683)
  %685 = load double, ptr @A2, align 8
  %686 = call double @llvm.fmuladd.f64(double %684, double %677, double %685)
  %687 = load double, ptr @A1, align 8
  %688 = call double @llvm.fmuladd.f64(double %686, double %677, double %687)
  %689 = load double, ptr @one, align 8
  %690 = call double @llvm.fmuladd.f64(double %688, double %677, double %689)
  %691 = fmul double %676, %690
  store double %691, ptr @sa, align 8
  %692 = load double, ptr @B6, align 8
  %693 = load double, ptr @B5, align 8
  %694 = call double @llvm.fmuladd.f64(double %692, double %677, double %693)
  %695 = load double, ptr @B4, align 8
  %696 = call double @llvm.fmuladd.f64(double %677, double %694, double %695)
  %697 = load double, ptr @B3, align 8
  %698 = call double @llvm.fmuladd.f64(double %677, double %696, double %697)
  %699 = load double, ptr @B2, align 8
  %700 = call double @llvm.fmuladd.f64(double %677, double %698, double %699)
  %701 = load double, ptr @B1, align 8
  %702 = call double @llvm.fmuladd.f64(double %677, double %700, double %701)
  %703 = load double, ptr @one, align 8
  %704 = call double @llvm.fmuladd.f64(double %677, double %702, double %703)
  store double %704, ptr @sb, align 8
  %705 = load double, ptr @sa, align 8
  %706 = fmul double %705, %704
  %707 = fmul double %706, %704
  store double %707, ptr @sa, align 8
  %708 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %709 = fdiv double %708, 3.000000e+01
  store double %709, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %710 = load double, ptr @sa, align 8
  %711 = load double, ptr @two, align 8
  %712 = call double @llvm.fmuladd.f64(double %711, double %.10, double %710)
  %713 = fmul double %627, %712
  %714 = fdiv double %713, %711
  store double %714, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %715 = load double, ptr @sa, align 8
  %716 = fsub double %715, f0x3FD2AAAAAAAAAAAB
  store double %716, ptr @sc, align 8
  %717 = load double, ptr @one, align 8
  %718 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %719 = fdiv double %717, %718
  store double %719, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %720 = load double, ptr @sc, align 8
  %721 = fmul double %720, 1.000000e-30
  %722 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %723 = fmul double %722, 1.000000e-30
  %724 = fmul double %719, 1.000000e-30
  %725 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, double noundef %721, double noundef %723, double noundef %724)
  %726 = load double, ptr @five, align 8
  %727 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %728 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %729 = fsub double %727, %728
  %730 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %731 = call double @llvm.fmuladd.f64(double %726, double %729, double %730)
  %732 = fdiv double %731, 5.200000e+01
  store double %732, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %733 = load double, ptr @one, align 8
  %734 = fdiv double %733, %732
  store double %734, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %735 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %736 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %737 = fadd double %735, %736
  %738 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %739 = fadd double %737, %738
  %740 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %741 = fadd double %739, %740
  %742 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %743 = fadd double %741, %742
  store double %743, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %744 = load double, ptr @four, align 8
  %745 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %746 = call double @llvm.fmuladd.f64(double %744, double %745, double %743)
  %747 = fdiv double %746, 1.520000e+02
  store double %747, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %748 = load double, ptr @one, align 8
  %749 = fdiv double %748, %747
  store double %749, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %750 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %751 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %752 = fadd double %750, %751
  %753 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %754 = fadd double %752, %753
  %755 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %756 = fadd double %754, %755
  %757 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %758 = fadd double %756, %757
  store double %758, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %759 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %760 = fadd double %758, %759
  %761 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %762 = fadd double %760, %761
  %763 = fdiv double %762, 1.460000e+02
  store double %763, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %764 = load double, ptr @one, align 8
  %765 = fdiv double %764, %763
  store double %765, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %766 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %767 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %768 = fadd double %766, %767
  %769 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %770 = fadd double %768, %769
  %771 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %772 = fadd double %770, %771
  %773 = fdiv double %772, 9.100000e+01
  store double %773, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %774 = load double, ptr @one, align 8
  %775 = fdiv double %774, %773
  store double %775, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %776 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %777 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %611)
  %778 = load double, ptr @nulltime, align 8
  %779 = fmul double %778, 1.000000e-30
  %780 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, double noundef %779)
  %781 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %782 = fmul double %781, 1.000000e-30
  %783 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, double noundef %782)
  %784 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %785 = fmul double %784, 1.000000e-30
  %786 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, double noundef %785)
  %787 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %788 = fmul double %787, 1.000000e-30
  %789 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, double noundef %788)
  %790 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %791 = fmul double %790, 1.000000e-30
  %792 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, double noundef %791)
  ret i32 0
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dtime(ptr noundef %0) #0 {
  %2 = getelementptr inbounds double, ptr %0, i64 2
  %3 = load double, ptr %2, align 8
  %4 = call i32 @GetTickCount()
  %5 = uitofp i32 %4 to double
  %6 = fmul double %5, 1.000000e-03
  %7 = getelementptr inbounds double, ptr %0, i64 2
  store double %6, ptr %7, align 8
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8
  %10 = fsub double %9, %3
  %11 = getelementptr inbounds double, ptr %0, i64 1
  store double %10, ptr %11, align 8
  ret i32 0
}

declare dllimport i32 @GetTickCount() #1

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
