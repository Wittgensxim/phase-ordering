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

8:                                                ; preds = %45, %0
  %.08 = phi double [ undef, %0 ], [ %16, %45 ]
  %.01 = phi double [ undef, %0 ], [ %.2, %45 ]
  %.0 = phi i32 [ 15625, %0 ], [ %13, %45 ]
  %9 = load double, ptr @sa, align 8
  %10 = load double, ptr @TLimit, align 8
  %11 = fcmp olt double %9, %10
  br i1 %11, label %12, label %46

12:                                               ; preds = %8
  %13 = mul nsw i32 2, %.0
  %14 = load double, ptr @one, align 8
  %15 = sitofp i32 %13 to double
  %16 = fdiv double %14, %15
  %17 = load double, ptr @one, align 8
  %18 = call i32 @dtime(ptr noundef @TimeArray)
  br label %19

19:                                               ; preds = %38, %12
  %.011 = phi i32 [ 1, %12 ], [ %39, %38 ]
  %.04 = phi double [ 0.000000e+00, %12 ], [ %23, %38 ]
  %.2 = phi double [ 0.000000e+00, %12 ], [ %37, %38 ]
  %20 = sub nsw i32 %13, 1
  %21 = icmp sle i32 %.011, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %19
  %23 = fadd double %.04, %17
  %24 = fmul double %23, %16
  %25 = load double, ptr @D1, align 8
  %26 = load double, ptr @D2, align 8
  %27 = load double, ptr @D3, align 8
  %28 = call double @llvm.fmuladd.f64(double %24, double %27, double %26)
  %29 = call double @llvm.fmuladd.f64(double %24, double %28, double %25)
  %30 = load double, ptr @D1, align 8
  %31 = load double, ptr @E2, align 8
  %32 = load double, ptr @E3, align 8
  %33 = call double @llvm.fmuladd.f64(double %24, double %32, double %31)
  %34 = call double @llvm.fmuladd.f64(double %24, double %33, double %30)
  %35 = call double @llvm.fmuladd.f64(double %24, double %34, double %17)
  %36 = fdiv double %29, %35
  %37 = fadd double %.2, %36
  br label %38

38:                                               ; preds = %22
  %39 = add nsw i32 %.011, 1
  br label %19, !llvm.loop !7

40:                                               ; preds = %19
  %41 = call i32 @dtime(ptr noundef @TimeArray)
  %42 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %42, ptr @sa, align 8
  %43 = icmp eq i32 %13, 512000000
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %46

45:                                               ; preds = %40
  br label %8, !llvm.loop !9

46:                                               ; preds = %44, %8
  %.19 = phi double [ %16, %44 ], [ %.08, %8 ]
  %.12 = phi double [ %.2, %44 ], [ %.01, %8 ]
  %.1 = phi i32 [ 512000000, %44 ], [ %.0, %8 ]
  store double 1.589500e-02, ptr @scale, align 8
  %47 = load double, ptr @scale, align 8
  store double %47, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %48 = call i32 @dtime(ptr noundef @TimeArray)
  br label %49

49:                                               ; preds = %53, %46
  %.112 = phi i32 [ 1, %46 ], [ %54, %53 ]
  %50 = sub nsw i32 %.1, 1
  %51 = icmp sle i32 %.112, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  br label %53

53:                                               ; preds = %52
  %54 = add nsw i32 %.112, 1
  br label %49, !llvm.loop !10

55:                                               ; preds = %49
  %56 = call i32 @dtime(ptr noundef @TimeArray)
  %57 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %58 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %59 = fmul double %57, %58
  store double %59, ptr @nulltime, align 8
  %60 = load double, ptr @nulltime, align 8
  %61 = fcmp olt double %60, 0.000000e+00
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store double 0.000000e+00, ptr @nulltime, align 8
  br label %63

63:                                               ; preds = %62, %55
  %64 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %65 = load double, ptr @sa, align 8
  %66 = load double, ptr @nulltime, align 8
  %67 = fneg double %66
  %68 = call double @llvm.fmuladd.f64(double %64, double %65, double %67)
  store double %68, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %69 = load double, ptr @D1, align 8
  %70 = load double, ptr @D2, align 8
  %71 = fadd double %69, %70
  %72 = load double, ptr @D3, align 8
  %73 = fadd double %71, %72
  %74 = load double, ptr @one, align 8
  %75 = load double, ptr @D1, align 8
  %76 = fadd double %74, %75
  %77 = load double, ptr @E2, align 8
  %78 = fadd double %76, %77
  %79 = load double, ptr @E3, align 8
  %80 = fadd double %78, %79
  %81 = fdiv double %73, %80
  store double %81, ptr @sa, align 8
  %82 = load double, ptr @D1, align 8
  store double %82, ptr @sb, align 8
  %83 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %84 = fdiv double %83, 1.400000e+01
  store double %84, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %85 = load double, ptr @sa, align 8
  %86 = load double, ptr @sb, align 8
  %87 = fadd double %85, %86
  %88 = load double, ptr @two, align 8
  %89 = call double @llvm.fmuladd.f64(double %88, double %.12, double %87)
  %90 = fmul double %.19, %89
  %91 = load double, ptr @two, align 8
  %92 = fdiv double %90, %91
  store double %92, ptr @sa, align 8
  %93 = load double, ptr @one, align 8
  %94 = load double, ptr @sa, align 8
  %95 = fdiv double %93, %94
  store double %95, ptr @sb, align 8
  %96 = load double, ptr @sb, align 8
  %97 = fptosi double %96 to i32
  %98 = mul nsw i32 40000, %97
  %99 = sitofp i32 %98 to double
  %100 = load double, ptr @scale, align 8
  %101 = fdiv double %99, %100
  %102 = fptosi double %101 to i32
  %103 = load double, ptr @sb, align 8
  %104 = fsub double %103, 2.520000e+01
  store double %104, ptr @sc, align 8
  %105 = load double, ptr @one, align 8
  %106 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %107 = fdiv double %105, %106
  store double %107, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %108 = load double, ptr @sc, align 8
  %109 = fmul double %108, 1.000000e-30
  %110 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %111 = fmul double %110, 1.000000e-30
  %112 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %113 = fmul double %112, 1.000000e-30
  %114 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %109, double noundef %111, double noundef %113)
  %115 = load double, ptr @five, align 8
  %116 = fneg double %115
  %117 = load double, ptr @one, align 8
  %118 = fneg double %117
  store double %118, ptr @sa, align 8
  %119 = call i32 @dtime(ptr noundef @TimeArray)
  br label %120

120:                                              ; preds = %126, %63
  %.213 = phi i32 [ 1, %63 ], [ %127, %126 ]
  %.3 = phi double [ %116, %63 ], [ %123, %126 ]
  %121 = icmp sle i32 %.213, %102
  br i1 %121, label %122, label %128

122:                                              ; preds = %120
  %123 = fneg double %.3
  %124 = load double, ptr @sa, align 8
  %125 = fadd double %124, %123
  store double %125, ptr @sa, align 8
  br label %126

126:                                              ; preds = %122
  %127 = add nsw i32 %.213, 1
  br label %120, !llvm.loop !11

128:                                              ; preds = %120
  %129 = call i32 @dtime(ptr noundef @TimeArray)
  %130 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %131 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %132 = fmul double %130, %131
  store double %132, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %133 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %134 = fcmp olt double %133, 0.000000e+00
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  br label %136

136:                                              ; preds = %135, %128
  %137 = sitofp i32 %102 to double
  store double %137, ptr @sc, align 8
  %138 = load double, ptr @sa, align 8
  %139 = call i32 @dtime(ptr noundef @TimeArray)
  br label %140

140:                                              ; preds = %154, %136
  %.314 = phi i32 [ 1, %136 ], [ %155, %154 ]
  %.210 = phi double [ 0.000000e+00, %136 ], [ %149, %154 ]
  %.07 = phi double [ 0.000000e+00, %136 ], [ %153, %154 ]
  %.15 = phi double [ 0.000000e+00, %136 ], [ %151, %154 ]
  %.03 = phi double [ %138, %136 ], [ %147, %154 ]
  %.4 = phi double [ %.3, %136 ], [ %143, %154 ]
  %141 = icmp sle i32 %.314, %102
  br i1 %141, label %142, label %156

142:                                              ; preds = %140
  %143 = fneg double %.4
  %144 = load double, ptr @sa, align 8
  %145 = fadd double %144, %143
  store double %145, ptr @sa, align 8
  %146 = load double, ptr @two, align 8
  %147 = fadd double %.03, %146
  %148 = fsub double %143, %147
  %149 = fadd double %.210, %148
  %150 = fneg double %143
  %151 = call double @llvm.fmuladd.f64(double %150, double %147, double %.15)
  %152 = fdiv double %143, %147
  %153 = fadd double %.07, %152
  br label %154

154:                                              ; preds = %142
  %155 = add nsw i32 %.314, 1
  br label %140, !llvm.loop !12

156:                                              ; preds = %140
  %157 = call i32 @dtime(ptr noundef @TimeArray)
  %158 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %159 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %160 = fmul double %158, %159
  store double %160, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %161 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %162 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %163 = fsub double %161, %162
  %164 = fdiv double %163, 7.000000e+00
  store double %164, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %165 = load double, ptr @sa, align 8
  %166 = fmul double %165, %.210
  %167 = load double, ptr @sc, align 8
  %168 = fdiv double %166, %167
  %169 = fptosi double %168 to i32
  %170 = load double, ptr @four, align 8
  %171 = fmul double %170, %.07
  %172 = load double, ptr @five, align 8
  %173 = fdiv double %171, %172
  store double %173, ptr @sa, align 8
  %174 = load double, ptr @sa, align 8
  %175 = load double, ptr @five, align 8
  %176 = fdiv double %175, %.15
  %177 = fadd double %174, %176
  store double %177, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %178 = load double, ptr @sb, align 8
  %179 = load double, ptr @sc, align 8
  %180 = fmul double %.15, %.15
  %181 = fmul double %180, %.15
  %182 = fdiv double %179, %181
  %183 = fsub double %178, %182
  store double %183, ptr @piprg, align 8
  %184 = load double, ptr @piprg, align 8
  %185 = load double, ptr @piref, align 8
  %186 = fsub double %184, %185
  store double %186, ptr @pierr, align 8
  %187 = load double, ptr @one, align 8
  %188 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %189 = fdiv double %187, %188
  store double %189, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %190 = load double, ptr @pierr, align 8
  %191 = fmul double %190, 1.000000e-30
  %192 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %193 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %194 = fsub double %192, %193
  %195 = fmul double %194, 1.000000e-30
  %196 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %197 = fmul double %196, 1.000000e-30
  %198 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %191, double noundef %195, double noundef %197)
  %199 = load double, ptr @piref, align 8
  %200 = load double, ptr @three, align 8
  %201 = sitofp i32 %169 to double
  %202 = fmul double %200, %201
  %203 = fdiv double %199, %202
  %204 = call i32 @dtime(ptr noundef @TimeArray)
  br label %205

205:                                              ; preds = %229, %156
  %.415 = phi i32 [ 1, %156 ], [ %230, %229 ]
  %.26 = phi double [ 0.000000e+00, %156 ], [ %210, %229 ]
  %.5 = phi double [ 0.000000e+00, %156 ], [ %228, %229 ]
  %206 = sub nsw i32 %169, 1
  %207 = icmp sle i32 %.415, %206
  br i1 %207, label %208, label %231

208:                                              ; preds = %205
  %209 = load double, ptr @one, align 8
  %210 = fadd double %.26, %209
  %211 = fmul double %210, %203
  %212 = fmul double %211, %211
  %213 = load double, ptr @A6, align 8
  %214 = load double, ptr @A5, align 8
  %215 = fneg double %214
  %216 = call double @llvm.fmuladd.f64(double %213, double %212, double %215)
  %217 = load double, ptr @A4, align 8
  %218 = call double @llvm.fmuladd.f64(double %216, double %212, double %217)
  %219 = load double, ptr @A3, align 8
  %220 = fneg double %219
  %221 = call double @llvm.fmuladd.f64(double %218, double %212, double %220)
  %222 = load double, ptr @A2, align 8
  %223 = call double @llvm.fmuladd.f64(double %221, double %212, double %222)
  %224 = load double, ptr @A1, align 8
  %225 = call double @llvm.fmuladd.f64(double %223, double %212, double %224)
  %226 = load double, ptr @one, align 8
  %227 = call double @llvm.fmuladd.f64(double %225, double %212, double %226)
  %228 = call double @llvm.fmuladd.f64(double %211, double %227, double %.5)
  br label %229

229:                                              ; preds = %208
  %230 = add nsw i32 %.415, 1
  br label %205, !llvm.loop !13

231:                                              ; preds = %205
  %232 = call i32 @dtime(ptr noundef @TimeArray)
  %233 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %234 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %235 = load double, ptr @nulltime, align 8
  %236 = fneg double %235
  %237 = call double @llvm.fmuladd.f64(double %233, double %234, double %236)
  store double %237, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %238 = load double, ptr @piref, align 8
  %239 = load double, ptr @three, align 8
  %240 = fdiv double %238, %239
  %241 = fmul double %240, %240
  %242 = load double, ptr @A6, align 8
  %243 = load double, ptr @A5, align 8
  %244 = fneg double %243
  %245 = call double @llvm.fmuladd.f64(double %242, double %241, double %244)
  %246 = load double, ptr @A4, align 8
  %247 = call double @llvm.fmuladd.f64(double %245, double %241, double %246)
  %248 = load double, ptr @A3, align 8
  %249 = fneg double %248
  %250 = call double @llvm.fmuladd.f64(double %247, double %241, double %249)
  %251 = load double, ptr @A2, align 8
  %252 = call double @llvm.fmuladd.f64(double %250, double %241, double %251)
  %253 = load double, ptr @A1, align 8
  %254 = call double @llvm.fmuladd.f64(double %252, double %241, double %253)
  %255 = load double, ptr @one, align 8
  %256 = call double @llvm.fmuladd.f64(double %254, double %241, double %255)
  %257 = fmul double %240, %256
  store double %257, ptr @sa, align 8
  %258 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %259 = fdiv double %258, 1.700000e+01
  store double %259, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %260 = load double, ptr @sa, align 8
  %261 = load double, ptr @two, align 8
  %262 = call double @llvm.fmuladd.f64(double %261, double %.5, double %260)
  %263 = fmul double %203, %262
  %264 = load double, ptr @two, align 8
  %265 = fdiv double %263, %264
  store double %265, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %266 = load double, ptr @sa, align 8
  %267 = load double, ptr @sb, align 8
  %268 = fsub double %266, %267
  store double %268, ptr @sc, align 8
  %269 = load double, ptr @one, align 8
  %270 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %271 = fdiv double %269, %270
  store double %271, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %272 = load double, ptr @sc, align 8
  %273 = fmul double %272, 1.000000e-30
  %274 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %275 = fmul double %274, 1.000000e-30
  %276 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %277 = fmul double %276, 1.000000e-30
  %278 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %273, double noundef %275, double noundef %277)
  %279 = load double, ptr @A3, align 8
  %280 = fneg double %279
  store double %280, ptr @A3, align 8
  %281 = load double, ptr @A5, align 8
  %282 = fneg double %281
  store double %282, ptr @A5, align 8
  %283 = load double, ptr @piref, align 8
  %284 = load double, ptr @three, align 8
  %285 = sitofp i32 %169 to double
  %286 = fmul double %284, %285
  %287 = fdiv double %283, %286
  %288 = call i32 @dtime(ptr noundef @TimeArray)
  br label %289

289:                                              ; preds = %310, %231
  %.516 = phi i32 [ 1, %231 ], [ %311, %310 ]
  %.6 = phi double [ 0.000000e+00, %231 ], [ %309, %310 ]
  %290 = sub nsw i32 %169, 1
  %291 = icmp sle i32 %.516, %290
  br i1 %291, label %292, label %312

292:                                              ; preds = %289
  %293 = sitofp i32 %.516 to double
  %294 = fmul double %293, %287
  %295 = fmul double %294, %294
  %296 = load double, ptr @B6, align 8
  %297 = load double, ptr @B5, align 8
  %298 = call double @llvm.fmuladd.f64(double %296, double %295, double %297)
  %299 = load double, ptr @B4, align 8
  %300 = call double @llvm.fmuladd.f64(double %295, double %298, double %299)
  %301 = load double, ptr @B3, align 8
  %302 = call double @llvm.fmuladd.f64(double %295, double %300, double %301)
  %303 = load double, ptr @B2, align 8
  %304 = call double @llvm.fmuladd.f64(double %295, double %302, double %303)
  %305 = load double, ptr @B1, align 8
  %306 = call double @llvm.fmuladd.f64(double %295, double %304, double %305)
  %307 = call double @llvm.fmuladd.f64(double %295, double %306, double %.6)
  %308 = load double, ptr @one, align 8
  %309 = fadd double %307, %308
  br label %310

310:                                              ; preds = %292
  %311 = add nsw i32 %.516, 1
  br label %289, !llvm.loop !14

312:                                              ; preds = %289
  %313 = call i32 @dtime(ptr noundef @TimeArray)
  %314 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %315 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %316 = load double, ptr @nulltime, align 8
  %317 = fneg double %316
  %318 = call double @llvm.fmuladd.f64(double %314, double %315, double %317)
  store double %318, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %319 = load double, ptr @piref, align 8
  %320 = load double, ptr @three, align 8
  %321 = fdiv double %319, %320
  %322 = fmul double %321, %321
  %323 = load double, ptr @B6, align 8
  %324 = load double, ptr @B5, align 8
  %325 = call double @llvm.fmuladd.f64(double %323, double %322, double %324)
  %326 = load double, ptr @B4, align 8
  %327 = call double @llvm.fmuladd.f64(double %322, double %325, double %326)
  %328 = load double, ptr @B3, align 8
  %329 = call double @llvm.fmuladd.f64(double %322, double %327, double %328)
  %330 = load double, ptr @B2, align 8
  %331 = call double @llvm.fmuladd.f64(double %322, double %329, double %330)
  %332 = load double, ptr @B1, align 8
  %333 = call double @llvm.fmuladd.f64(double %322, double %331, double %332)
  %334 = load double, ptr @one, align 8
  %335 = call double @llvm.fmuladd.f64(double %322, double %333, double %334)
  store double %335, ptr @sa, align 8
  %336 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %337 = fdiv double %336, 1.500000e+01
  store double %337, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %338 = load double, ptr @sa, align 8
  %339 = load double, ptr @one, align 8
  %340 = fadd double %338, %339
  %341 = load double, ptr @two, align 8
  %342 = call double @llvm.fmuladd.f64(double %341, double %.6, double %340)
  %343 = fmul double %287, %342
  %344 = load double, ptr @two, align 8
  %345 = fdiv double %343, %344
  store double %345, ptr @sa, align 8
  %346 = load double, ptr @piref, align 8
  %347 = load double, ptr @three, align 8
  %348 = fdiv double %346, %347
  %349 = fmul double %348, %348
  %350 = load double, ptr @A6, align 8
  %351 = load double, ptr @A5, align 8
  %352 = call double @llvm.fmuladd.f64(double %350, double %349, double %351)
  %353 = load double, ptr @A4, align 8
  %354 = call double @llvm.fmuladd.f64(double %352, double %349, double %353)
  %355 = load double, ptr @A3, align 8
  %356 = call double @llvm.fmuladd.f64(double %354, double %349, double %355)
  %357 = load double, ptr @A2, align 8
  %358 = call double @llvm.fmuladd.f64(double %356, double %349, double %357)
  %359 = load double, ptr @A1, align 8
  %360 = call double @llvm.fmuladd.f64(double %358, double %349, double %359)
  %361 = load double, ptr @A0, align 8
  %362 = call double @llvm.fmuladd.f64(double %360, double %349, double %361)
  %363 = fmul double %348, %362
  store double %363, ptr @sb, align 8
  %364 = load double, ptr @sa, align 8
  %365 = load double, ptr @sb, align 8
  %366 = fsub double %364, %365
  store double %366, ptr @sc, align 8
  %367 = load double, ptr @one, align 8
  %368 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %369 = fdiv double %367, %368
  store double %369, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %370 = load double, ptr @sc, align 8
  %371 = fmul double %370, 1.000000e-30
  %372 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %373 = fmul double %372, 1.000000e-30
  %374 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %375 = fmul double %374, 1.000000e-30
  %376 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %371, double noundef %373, double noundef %375)
  %377 = load double, ptr @piref, align 8
  %378 = load double, ptr @three, align 8
  %379 = sitofp i32 %169 to double
  %380 = fmul double %378, %379
  %381 = fdiv double %377, %380
  %382 = call i32 @dtime(ptr noundef @TimeArray)
  br label %383

383:                                              ; preds = %419, %312
  %.617 = phi i32 [ 1, %312 ], [ %420, %419 ]
  %.7 = phi double [ 0.000000e+00, %312 ], [ %418, %419 ]
  %384 = sub nsw i32 %169, 1
  %385 = icmp sle i32 %.617, %384
  br i1 %385, label %386, label %421

386:                                              ; preds = %383
  %387 = sitofp i32 %.617 to double
  %388 = fmul double %387, %381
  %389 = fmul double %388, %388
  %390 = load double, ptr @A6, align 8
  %391 = load double, ptr @A5, align 8
  %392 = call double @llvm.fmuladd.f64(double %390, double %389, double %391)
  %393 = load double, ptr @A4, align 8
  %394 = call double @llvm.fmuladd.f64(double %392, double %389, double %393)
  %395 = load double, ptr @A3, align 8
  %396 = call double @llvm.fmuladd.f64(double %394, double %389, double %395)
  %397 = load double, ptr @A2, align 8
  %398 = call double @llvm.fmuladd.f64(double %396, double %389, double %397)
  %399 = load double, ptr @A1, align 8
  %400 = call double @llvm.fmuladd.f64(double %398, double %389, double %399)
  %401 = load double, ptr @one, align 8
  %402 = call double @llvm.fmuladd.f64(double %400, double %389, double %401)
  %403 = fmul double %388, %402
  %404 = load double, ptr @B6, align 8
  %405 = load double, ptr @B5, align 8
  %406 = call double @llvm.fmuladd.f64(double %404, double %389, double %405)
  %407 = load double, ptr @B4, align 8
  %408 = call double @llvm.fmuladd.f64(double %389, double %406, double %407)
  %409 = load double, ptr @B3, align 8
  %410 = call double @llvm.fmuladd.f64(double %389, double %408, double %409)
  %411 = load double, ptr @B2, align 8
  %412 = call double @llvm.fmuladd.f64(double %389, double %410, double %411)
  %413 = load double, ptr @B1, align 8
  %414 = call double @llvm.fmuladd.f64(double %389, double %412, double %413)
  %415 = load double, ptr @one, align 8
  %416 = call double @llvm.fmuladd.f64(double %389, double %414, double %415)
  %417 = fdiv double %403, %416
  %418 = fadd double %.7, %417
  br label %419

419:                                              ; preds = %386
  %420 = add nsw i32 %.617, 1
  br label %383, !llvm.loop !15

421:                                              ; preds = %383
  %422 = call i32 @dtime(ptr noundef @TimeArray)
  %423 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %424 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %425 = load double, ptr @nulltime, align 8
  %426 = fneg double %425
  %427 = call double @llvm.fmuladd.f64(double %423, double %424, double %426)
  store double %427, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %428 = load double, ptr @piref, align 8
  %429 = load double, ptr @three, align 8
  %430 = fdiv double %428, %429
  %431 = fmul double %430, %430
  %432 = load double, ptr @A6, align 8
  %433 = load double, ptr @A5, align 8
  %434 = call double @llvm.fmuladd.f64(double %432, double %431, double %433)
  %435 = load double, ptr @A4, align 8
  %436 = call double @llvm.fmuladd.f64(double %434, double %431, double %435)
  %437 = load double, ptr @A3, align 8
  %438 = call double @llvm.fmuladd.f64(double %436, double %431, double %437)
  %439 = load double, ptr @A2, align 8
  %440 = call double @llvm.fmuladd.f64(double %438, double %431, double %439)
  %441 = load double, ptr @A1, align 8
  %442 = call double @llvm.fmuladd.f64(double %440, double %431, double %441)
  %443 = load double, ptr @one, align 8
  %444 = call double @llvm.fmuladd.f64(double %442, double %431, double %443)
  %445 = fmul double %430, %444
  store double %445, ptr @sa, align 8
  %446 = load double, ptr @B6, align 8
  %447 = load double, ptr @B5, align 8
  %448 = call double @llvm.fmuladd.f64(double %446, double %431, double %447)
  %449 = load double, ptr @B4, align 8
  %450 = call double @llvm.fmuladd.f64(double %431, double %448, double %449)
  %451 = load double, ptr @B3, align 8
  %452 = call double @llvm.fmuladd.f64(double %431, double %450, double %451)
  %453 = load double, ptr @B2, align 8
  %454 = call double @llvm.fmuladd.f64(double %431, double %452, double %453)
  %455 = load double, ptr @B1, align 8
  %456 = call double @llvm.fmuladd.f64(double %431, double %454, double %455)
  %457 = load double, ptr @one, align 8
  %458 = call double @llvm.fmuladd.f64(double %431, double %456, double %457)
  store double %458, ptr @sb, align 8
  %459 = load double, ptr @sa, align 8
  %460 = load double, ptr @sb, align 8
  %461 = fdiv double %459, %460
  store double %461, ptr @sa, align 8
  %462 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %463 = fdiv double %462, 2.900000e+01
  store double %463, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %464 = load double, ptr @sa, align 8
  %465 = load double, ptr @two, align 8
  %466 = call double @llvm.fmuladd.f64(double %465, double %.7, double %464)
  %467 = fmul double %381, %466
  %468 = load double, ptr @two, align 8
  %469 = fdiv double %467, %468
  store double %469, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %470 = load double, ptr @sa, align 8
  %471 = load double, ptr @sb, align 8
  %472 = fsub double %470, %471
  store double %472, ptr @sc, align 8
  %473 = load double, ptr @one, align 8
  %474 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %475 = fdiv double %473, %474
  store double %475, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %476 = load double, ptr @sc, align 8
  %477 = fmul double %476, 1.000000e-30
  %478 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %479 = fmul double %478, 1.000000e-30
  %480 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %481 = fmul double %480, 1.000000e-30
  %482 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %477, double noundef %479, double noundef %481)
  %483 = load double, ptr @piref, align 8
  %484 = load double, ptr @four, align 8
  %485 = sitofp i32 %169 to double
  %486 = fmul double %484, %485
  %487 = fdiv double %483, %486
  %488 = call i32 @dtime(ptr noundef @TimeArray)
  br label %489

489:                                              ; preds = %524, %421
  %.718 = phi i32 [ 1, %421 ], [ %525, %524 ]
  %.8 = phi double [ 0.000000e+00, %421 ], [ %523, %524 ]
  %490 = sub nsw i32 %169, 1
  %491 = icmp sle i32 %.718, %490
  br i1 %491, label %492, label %526

492:                                              ; preds = %489
  %493 = sitofp i32 %.718 to double
  %494 = fmul double %493, %487
  %495 = fmul double %494, %494
  %496 = load double, ptr @A6, align 8
  %497 = load double, ptr @A5, align 8
  %498 = call double @llvm.fmuladd.f64(double %496, double %495, double %497)
  %499 = load double, ptr @A4, align 8
  %500 = call double @llvm.fmuladd.f64(double %498, double %495, double %499)
  %501 = load double, ptr @A3, align 8
  %502 = call double @llvm.fmuladd.f64(double %500, double %495, double %501)
  %503 = load double, ptr @A2, align 8
  %504 = call double @llvm.fmuladd.f64(double %502, double %495, double %503)
  %505 = load double, ptr @A1, align 8
  %506 = call double @llvm.fmuladd.f64(double %504, double %495, double %505)
  %507 = load double, ptr @one, align 8
  %508 = call double @llvm.fmuladd.f64(double %506, double %495, double %507)
  %509 = fmul double %494, %508
  %510 = load double, ptr @B6, align 8
  %511 = load double, ptr @B5, align 8
  %512 = call double @llvm.fmuladd.f64(double %510, double %495, double %511)
  %513 = load double, ptr @B4, align 8
  %514 = call double @llvm.fmuladd.f64(double %495, double %512, double %513)
  %515 = load double, ptr @B3, align 8
  %516 = call double @llvm.fmuladd.f64(double %495, double %514, double %515)
  %517 = load double, ptr @B2, align 8
  %518 = call double @llvm.fmuladd.f64(double %495, double %516, double %517)
  %519 = load double, ptr @B1, align 8
  %520 = call double @llvm.fmuladd.f64(double %495, double %518, double %519)
  %521 = load double, ptr @one, align 8
  %522 = call double @llvm.fmuladd.f64(double %495, double %520, double %521)
  %523 = call double @llvm.fmuladd.f64(double %509, double %522, double %.8)
  br label %524

524:                                              ; preds = %492
  %525 = add nsw i32 %.718, 1
  br label %489, !llvm.loop !16

526:                                              ; preds = %489
  %527 = call i32 @dtime(ptr noundef @TimeArray)
  %528 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %529 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %530 = load double, ptr @nulltime, align 8
  %531 = fneg double %530
  %532 = call double @llvm.fmuladd.f64(double %528, double %529, double %531)
  store double %532, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %533 = load double, ptr @piref, align 8
  %534 = load double, ptr @four, align 8
  %535 = fdiv double %533, %534
  %536 = fmul double %535, %535
  %537 = load double, ptr @A6, align 8
  %538 = load double, ptr @A5, align 8
  %539 = call double @llvm.fmuladd.f64(double %537, double %536, double %538)
  %540 = load double, ptr @A4, align 8
  %541 = call double @llvm.fmuladd.f64(double %539, double %536, double %540)
  %542 = load double, ptr @A3, align 8
  %543 = call double @llvm.fmuladd.f64(double %541, double %536, double %542)
  %544 = load double, ptr @A2, align 8
  %545 = call double @llvm.fmuladd.f64(double %543, double %536, double %544)
  %546 = load double, ptr @A1, align 8
  %547 = call double @llvm.fmuladd.f64(double %545, double %536, double %546)
  %548 = load double, ptr @one, align 8
  %549 = call double @llvm.fmuladd.f64(double %547, double %536, double %548)
  %550 = fmul double %535, %549
  store double %550, ptr @sa, align 8
  %551 = load double, ptr @B6, align 8
  %552 = load double, ptr @B5, align 8
  %553 = call double @llvm.fmuladd.f64(double %551, double %536, double %552)
  %554 = load double, ptr @B4, align 8
  %555 = call double @llvm.fmuladd.f64(double %536, double %553, double %554)
  %556 = load double, ptr @B3, align 8
  %557 = call double @llvm.fmuladd.f64(double %536, double %555, double %556)
  %558 = load double, ptr @B2, align 8
  %559 = call double @llvm.fmuladd.f64(double %536, double %557, double %558)
  %560 = load double, ptr @B1, align 8
  %561 = call double @llvm.fmuladd.f64(double %536, double %559, double %560)
  %562 = load double, ptr @one, align 8
  %563 = call double @llvm.fmuladd.f64(double %536, double %561, double %562)
  store double %563, ptr @sb, align 8
  %564 = load double, ptr @sa, align 8
  %565 = load double, ptr @sb, align 8
  %566 = fmul double %564, %565
  store double %566, ptr @sa, align 8
  %567 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %568 = fdiv double %567, 2.900000e+01
  store double %568, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %569 = load double, ptr @sa, align 8
  %570 = load double, ptr @two, align 8
  %571 = call double @llvm.fmuladd.f64(double %570, double %.8, double %569)
  %572 = fmul double %487, %571
  %573 = load double, ptr @two, align 8
  %574 = fdiv double %572, %573
  store double %574, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %575 = load double, ptr @sa, align 8
  %576 = load double, ptr @sb, align 8
  %577 = fsub double %575, %576
  store double %577, ptr @sc, align 8
  %578 = load double, ptr @one, align 8
  %579 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %580 = fdiv double %578, %579
  store double %580, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %581 = load double, ptr @sc, align 8
  %582 = fmul double %581, 1.000000e-30
  %583 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %584 = fmul double %583, 1.000000e-30
  %585 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %586 = fmul double %585, 1.000000e-30
  %587 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, double noundef %582, double noundef %584, double noundef %586)
  %588 = load double, ptr @one, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %589 = load double, ptr @sa, align 8
  %590 = sitofp i32 %169 to double
  %591 = fdiv double %589, %590
  %592 = call i32 @dtime(ptr noundef @TimeArray)
  br label %593

593:                                              ; preds = %609, %526
  %.819 = phi i32 [ 1, %526 ], [ %610, %609 ]
  %.9 = phi double [ 0.000000e+00, %526 ], [ %608, %609 ]
  %594 = sub nsw i32 %169, 1
  %595 = icmp sle i32 %.819, %594
  br i1 %595, label %596, label %611

596:                                              ; preds = %593
  %597 = sitofp i32 %.819 to double
  %598 = fmul double %597, %591
  %599 = fmul double %598, %598
  %600 = fadd double %598, %588
  %601 = fdiv double %588, %600
  %602 = fsub double %.9, %601
  %603 = fadd double %599, %588
  %604 = fdiv double %598, %603
  %605 = fsub double %602, %604
  %606 = call double @llvm.fmuladd.f64(double %598, double %599, double %588)
  %607 = fdiv double %599, %606
  %608 = fsub double %605, %607
  br label %609

609:                                              ; preds = %596
  %610 = add nsw i32 %.819, 1
  br label %593, !llvm.loop !17

611:                                              ; preds = %593
  %612 = call i32 @dtime(ptr noundef @TimeArray)
  %613 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %614 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %615 = load double, ptr @nulltime, align 8
  %616 = fneg double %615
  %617 = call double @llvm.fmuladd.f64(double %613, double %614, double %616)
  store double %617, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %618 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %619 = fdiv double %618, 1.200000e+01
  store double %619, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %620 = load double, ptr @sa, align 8
  %621 = fmul double %620, %620
  %622 = fneg double %588
  %623 = fadd double %620, %588
  %624 = fdiv double %588, %623
  %625 = fsub double %622, %624
  %626 = fadd double %621, %588
  %627 = fdiv double %620, %626
  %628 = fsub double %625, %627
  %629 = call double @llvm.fmuladd.f64(double %620, double %621, double %588)
  %630 = fdiv double %621, %629
  %631 = fsub double %628, %630
  store double %631, ptr @sa, align 8
  %632 = fmul double 1.800000e+01, %591
  %633 = load double, ptr @sa, align 8
  %634 = load double, ptr @two, align 8
  %635 = call double @llvm.fmuladd.f64(double %634, double %.9, double %633)
  %636 = fmul double %632, %635
  store double %636, ptr @sa, align 8
  %637 = load double, ptr @sa, align 8
  %638 = fptosi double %637 to i32
  %639 = mul nsw i32 -2000, %638
  %640 = sitofp i32 %639 to double
  %641 = load double, ptr @scale, align 8
  %642 = fdiv double %640, %641
  %643 = fptosi double %642 to i32
  %644 = load double, ptr @sa, align 8
  %645 = fadd double %644, 5.002000e+02
  store double %645, ptr @sc, align 8
  %646 = load double, ptr @one, align 8
  %647 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %648 = fdiv double %646, %647
  store double %648, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %649 = load double, ptr @sc, align 8
  %650 = fmul double %649, 1.000000e-30
  %651 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %652 = fmul double %651, 1.000000e-30
  %653 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %654 = fmul double %653, 1.000000e-30
  %655 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, double noundef %650, double noundef %652, double noundef %654)
  %656 = load double, ptr @piref, align 8
  %657 = load double, ptr @three, align 8
  %658 = sitofp i32 %643 to double
  %659 = fmul double %657, %658
  %660 = fdiv double %656, %659
  %661 = call i32 @dtime(ptr noundef @TimeArray)
  br label %662

662:                                              ; preds = %698, %611
  %.920 = phi i32 [ 1, %611 ], [ %699, %698 ]
  %.10 = phi double [ 0.000000e+00, %611 ], [ %697, %698 ]
  %663 = sub nsw i32 %643, 1
  %664 = icmp sle i32 %.920, %663
  br i1 %664, label %665, label %700

665:                                              ; preds = %662
  %666 = sitofp i32 %.920 to double
  %667 = fmul double %666, %660
  %668 = fmul double %667, %667
  %669 = load double, ptr @B6, align 8
  %670 = load double, ptr @B5, align 8
  %671 = call double @llvm.fmuladd.f64(double %669, double %668, double %670)
  %672 = load double, ptr @B4, align 8
  %673 = call double @llvm.fmuladd.f64(double %668, double %671, double %672)
  %674 = load double, ptr @B3, align 8
  %675 = call double @llvm.fmuladd.f64(double %668, double %673, double %674)
  %676 = load double, ptr @B2, align 8
  %677 = call double @llvm.fmuladd.f64(double %668, double %675, double %676)
  %678 = load double, ptr @B1, align 8
  %679 = call double @llvm.fmuladd.f64(double %668, double %677, double %678)
  %680 = load double, ptr @one, align 8
  %681 = call double @llvm.fmuladd.f64(double %668, double %679, double %680)
  %682 = fmul double %681, %681
  %683 = fmul double %682, %667
  %684 = load double, ptr @A6, align 8
  %685 = load double, ptr @A5, align 8
  %686 = call double @llvm.fmuladd.f64(double %684, double %668, double %685)
  %687 = load double, ptr @A4, align 8
  %688 = call double @llvm.fmuladd.f64(double %686, double %668, double %687)
  %689 = load double, ptr @A3, align 8
  %690 = call double @llvm.fmuladd.f64(double %688, double %668, double %689)
  %691 = load double, ptr @A2, align 8
  %692 = call double @llvm.fmuladd.f64(double %690, double %668, double %691)
  %693 = load double, ptr @A1, align 8
  %694 = call double @llvm.fmuladd.f64(double %692, double %668, double %693)
  %695 = load double, ptr @one, align 8
  %696 = call double @llvm.fmuladd.f64(double %694, double %668, double %695)
  %697 = call double @llvm.fmuladd.f64(double %683, double %696, double %.10)
  br label %698

698:                                              ; preds = %665
  %699 = add nsw i32 %.920, 1
  br label %662, !llvm.loop !18

700:                                              ; preds = %662
  %701 = call i32 @dtime(ptr noundef @TimeArray)
  %702 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %703 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %704 = load double, ptr @nulltime, align 8
  %705 = fneg double %704
  %706 = call double @llvm.fmuladd.f64(double %702, double %703, double %705)
  store double %706, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %707 = load double, ptr @piref, align 8
  %708 = load double, ptr @three, align 8
  %709 = fdiv double %707, %708
  %710 = fmul double %709, %709
  %711 = load double, ptr @A6, align 8
  %712 = load double, ptr @A5, align 8
  %713 = call double @llvm.fmuladd.f64(double %711, double %710, double %712)
  %714 = load double, ptr @A4, align 8
  %715 = call double @llvm.fmuladd.f64(double %713, double %710, double %714)
  %716 = load double, ptr @A3, align 8
  %717 = call double @llvm.fmuladd.f64(double %715, double %710, double %716)
  %718 = load double, ptr @A2, align 8
  %719 = call double @llvm.fmuladd.f64(double %717, double %710, double %718)
  %720 = load double, ptr @A1, align 8
  %721 = call double @llvm.fmuladd.f64(double %719, double %710, double %720)
  %722 = load double, ptr @one, align 8
  %723 = call double @llvm.fmuladd.f64(double %721, double %710, double %722)
  %724 = fmul double %709, %723
  store double %724, ptr @sa, align 8
  %725 = load double, ptr @B6, align 8
  %726 = load double, ptr @B5, align 8
  %727 = call double @llvm.fmuladd.f64(double %725, double %710, double %726)
  %728 = load double, ptr @B4, align 8
  %729 = call double @llvm.fmuladd.f64(double %710, double %727, double %728)
  %730 = load double, ptr @B3, align 8
  %731 = call double @llvm.fmuladd.f64(double %710, double %729, double %730)
  %732 = load double, ptr @B2, align 8
  %733 = call double @llvm.fmuladd.f64(double %710, double %731, double %732)
  %734 = load double, ptr @B1, align 8
  %735 = call double @llvm.fmuladd.f64(double %710, double %733, double %734)
  %736 = load double, ptr @one, align 8
  %737 = call double @llvm.fmuladd.f64(double %710, double %735, double %736)
  store double %737, ptr @sb, align 8
  %738 = load double, ptr @sa, align 8
  %739 = load double, ptr @sb, align 8
  %740 = fmul double %738, %739
  %741 = load double, ptr @sb, align 8
  %742 = fmul double %740, %741
  store double %742, ptr @sa, align 8
  %743 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %744 = fdiv double %743, 3.000000e+01
  store double %744, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %745 = load double, ptr @sa, align 8
  %746 = load double, ptr @two, align 8
  %747 = call double @llvm.fmuladd.f64(double %746, double %.10, double %745)
  %748 = fmul double %660, %747
  %749 = load double, ptr @two, align 8
  %750 = fdiv double %748, %749
  store double %750, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %751 = load double, ptr @sa, align 8
  %752 = load double, ptr @sb, align 8
  %753 = fsub double %751, %752
  store double %753, ptr @sc, align 8
  %754 = load double, ptr @one, align 8
  %755 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %756 = fdiv double %754, %755
  store double %756, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %757 = load double, ptr @sc, align 8
  %758 = fmul double %757, 1.000000e-30
  %759 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %760 = fmul double %759, 1.000000e-30
  %761 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %762 = fmul double %761, 1.000000e-30
  %763 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, double noundef %758, double noundef %760, double noundef %762)
  %764 = load double, ptr @five, align 8
  %765 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %766 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %767 = fsub double %765, %766
  %768 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %769 = call double @llvm.fmuladd.f64(double %764, double %767, double %768)
  %770 = fdiv double %769, 5.200000e+01
  store double %770, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %771 = load double, ptr @one, align 8
  %772 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %773 = fdiv double %771, %772
  store double %773, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %774 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %775 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %776 = fadd double %774, %775
  %777 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %778 = fadd double %776, %777
  %779 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %780 = fadd double %778, %779
  %781 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %782 = fadd double %780, %781
  store double %782, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %783 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %784 = load double, ptr @four, align 8
  %785 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %786 = call double @llvm.fmuladd.f64(double %784, double %785, double %783)
  %787 = fdiv double %786, 1.520000e+02
  store double %787, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %788 = load double, ptr @one, align 8
  %789 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %790 = fdiv double %788, %789
  store double %790, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %791 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %792 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %793 = fadd double %791, %792
  %794 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %795 = fadd double %793, %794
  %796 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %797 = fadd double %795, %796
  %798 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %799 = fadd double %797, %798
  store double %799, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %800 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %801 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %802 = fadd double %800, %801
  %803 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %804 = fadd double %802, %803
  %805 = fdiv double %804, 1.460000e+02
  store double %805, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %806 = load double, ptr @one, align 8
  %807 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %808 = fdiv double %806, %807
  store double %808, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %809 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %810 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %811 = fadd double %809, %810
  %812 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %813 = fadd double %811, %812
  %814 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %815 = fadd double %813, %814
  %816 = fdiv double %815, 9.100000e+01
  store double %816, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %817 = load double, ptr @one, align 8
  %818 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %819 = fdiv double %817, %818
  store double %819, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %820 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %821 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %643)
  %822 = load double, ptr @nulltime, align 8
  %823 = fmul double %822, 1.000000e-30
  %824 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, double noundef %823)
  %825 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %826 = fmul double %825, 1.000000e-30
  %827 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, double noundef %826)
  %828 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %829 = fmul double %828, 1.000000e-30
  %830 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, double noundef %829)
  %831 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %832 = fmul double %831, 1.000000e-30
  %833 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, double noundef %832)
  %834 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %835 = fmul double %834, 1.000000e-30
  %836 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, double noundef %835)
  ret i32 0
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dtime(ptr noundef %0) #0 {
  %2 = getelementptr inbounds nuw double, ptr %0, i64 2
  %3 = load double, ptr %2, align 8
  %4 = call i32 @GetTickCount()
  %5 = uitofp i32 %4 to double
  %6 = fmul double %5, 1.000000e-03
  %7 = getelementptr inbounds nuw double, ptr %0, i64 2
  store double %6, ptr %7, align 8
  %8 = getelementptr inbounds nuw double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8
  %10 = fsub double %9, %3
  %11 = getelementptr inbounds nuw double, ptr %0, i64 1
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
