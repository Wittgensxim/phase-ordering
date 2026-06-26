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
  %5 = load double, ptr @TLimit, align 8
  %6 = fcmp olt double 0.000000e+00, %5
  br i1 %6, label %.lr.ph20, label %.loopexit

.lr.ph20:                                         ; preds = %0
  br label %14

7:                                                ; preds = %40
  %8 = phi double [ %.lcssa10, %40 ]
  %9 = phi double [ %19, %40 ]
  %10 = phi i32 [ %16, %40 ]
  %11 = phi double [ %42, %40 ]
  %12 = load double, ptr @TLimit, align 8
  %13 = fcmp olt double %11, %12
  br i1 %13, label %14, label %..loopexit_crit_edge, !llvm.loop !7

14:                                               ; preds = %.lr.ph20, %7
  %15 = phi i32 [ 15625, %.lr.ph20 ], [ %10, %7 ]
  %16 = shl nsw i32 %15, 1
  %17 = load double, ptr @one, align 8
  %18 = sitofp i32 %16 to double
  %19 = fdiv double %17, %18
  store double %17, ptr %1, align 8
  %20 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not.not18 = icmp slt i32 1, %16
  br i1 %.not.not18, label %.lr.ph, label %40

.lr.ph:                                           ; preds = %14
  br label %21

21:                                               ; preds = %.lr.ph, %21
  %22 = phi i32 [ 1, %.lr.ph ], [ %39, %21 ]
  %23 = phi double [ 0.000000e+00, %.lr.ph ], [ %38, %21 ]
  %24 = phi double [ 0.000000e+00, %.lr.ph ], [ %25, %21 ]
  %25 = fadd double %24, %17
  %26 = fmul double %25, %19
  %27 = load double, ptr @D1, align 8
  %28 = load double, ptr @D2, align 8
  %29 = load double, ptr @D3, align 8
  %30 = call double @llvm.fmuladd.f64(double %26, double %29, double %28)
  %31 = call double @llvm.fmuladd.f64(double %26, double %30, double %27)
  %32 = load double, ptr @E2, align 8
  %33 = load double, ptr @E3, align 8
  %34 = call double @llvm.fmuladd.f64(double %26, double %33, double %32)
  %35 = call double @llvm.fmuladd.f64(double %26, double %34, double %27)
  %36 = call double @llvm.fmuladd.f64(double %26, double %35, double %17)
  %37 = fdiv double %31, %36
  %38 = fadd double %23, %37
  %39 = add nuw nsw i32 %22, 1
  %.not.not = icmp slt i32 %39, %16
  br i1 %.not.not, label %21, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %21
  %split = phi double [ %38, %21 ]
  br label %40

40:                                               ; preds = %._crit_edge, %14
  %.lcssa10 = phi double [ %split, %._crit_edge ], [ 0.000000e+00, %14 ]
  %41 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %42 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %42, ptr @sa, align 8
  %43 = icmp eq i32 %15, 256000000
  br i1 %43, label %44, label %7

44:                                               ; preds = %40
  %.lcssa17 = phi double [ %19, %40 ]
  %.lcssa10.lcssa = phi double [ %.lcssa10, %40 ]
  br label %45

..loopexit_crit_edge:                             ; preds = %7
  %split21 = phi double [ %8, %7 ]
  %split22 = phi double [ %9, %7 ]
  %split23 = phi i32 [ %10, %7 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %0
  %.lcssa15 = phi double [ %split21, %..loopexit_crit_edge ], [ undef, %0 ]
  %.lcssa13 = phi double [ %split22, %..loopexit_crit_edge ], [ undef, %0 ]
  %.lcssa11 = phi i32 [ %split23, %..loopexit_crit_edge ], [ 15625, %0 ]
  br label %45

45:                                               ; preds = %.loopexit, %44
  %46 = phi double [ %.lcssa10.lcssa, %44 ], [ %.lcssa15, %.loopexit ]
  %47 = phi double [ %.lcssa17, %44 ], [ %.lcssa13, %.loopexit ]
  %48 = phi i32 [ 512000000, %44 ], [ %.lcssa11, %.loopexit ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %49 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %50

50:                                               ; preds = %50, %45
  %51 = phi i32 [ %52, %50 ], [ 1, %45 ]
  %.not.not3 = icmp slt i32 %51, %48
  %52 = add nuw nsw i32 %51, 1
  br i1 %.not.not3, label %50, label %53, !llvm.loop !10

53:                                               ; preds = %50
  %54 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %55 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %56 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %57 = fmul double %55, %56
  %58 = fcmp olt double %57, 0.000000e+00
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %53
  %61 = phi double [ 0.000000e+00, %59 ], [ %57, %53 ]
  store double %61, ptr @nulltime, align 8
  %62 = load double, ptr @sa, align 8
  %63 = fneg double %61
  %64 = call double @llvm.fmuladd.f64(double %55, double %62, double %63)
  store double %64, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %65 = load double, ptr @D1, align 8
  %66 = load double, ptr @D2, align 8
  %67 = fadd double %65, %66
  %68 = load double, ptr @D3, align 8
  %69 = fadd double %67, %68
  %70 = load double, ptr @one, align 8
  %71 = fadd double %70, %65
  %72 = load double, ptr @E2, align 8
  %73 = fadd double %71, %72
  %74 = load double, ptr @E3, align 8
  %75 = fadd double %73, %74
  %76 = fdiv double %69, %75
  store double %76, ptr @sa, align 8
  store double %65, ptr @sb, align 8
  %77 = fdiv double %64, 1.400000e+01
  store double %77, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %78 = fadd double %76, %65
  %79 = load double, ptr @two, align 8
  %80 = call double @llvm.fmuladd.f64(double %79, double %46, double %78)
  %81 = fmul double %47, %80
  %82 = fdiv double %81, %79
  store double %82, ptr @sa, align 8
  %83 = fdiv double %70, %82
  store double %83, ptr @sb, align 8
  %84 = fptosi double %83 to i32
  %85 = mul nsw i32 %84, 40000
  %86 = sitofp i32 %85 to double
  %87 = load double, ptr @scale, align 8
  %88 = fdiv double %86, %87
  %89 = fptosi double %88 to i32
  %90 = fadd double %83, -2.520000e+01
  store double %90, ptr @sc, align 8
  %91 = fdiv double %70, %77
  store double %91, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %92 = fmul double %90, 1.000000e-30
  %93 = fmul double %64, 1.000000e-30
  %94 = fmul double %91, 1.000000e-30
  %95 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %92, double noundef %93, double noundef %94) #4
  store i32 %89, ptr %2, align 4
  %96 = load double, ptr @five, align 8
  %97 = fneg double %96
  %98 = load double, ptr @one, align 8
  %99 = fneg double %98
  store double %99, ptr @sa, align 8
  %100 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not24 = icmp sgt i32 1, %89
  br i1 %.not24, label %108, label %.lr.ph26

.lr.ph26:                                         ; preds = %60
  br label %101

101:                                              ; preds = %.lr.ph26, %101
  %102 = phi i32 [ 1, %.lr.ph26 ], [ %107, %101 ]
  %103 = phi double [ %97, %.lr.ph26 ], [ %104, %101 ]
  %104 = fneg double %103
  %105 = load double, ptr @sa, align 8
  %106 = fsub double %105, %103
  store double %106, ptr @sa, align 8
  %107 = add nuw nsw i32 %102, 1
  %.not = icmp sgt i32 %107, %89
  br i1 %.not, label %._crit_edge27, label %101, !llvm.loop !11

._crit_edge27:                                    ; preds = %101
  %split28 = phi double [ %104, %101 ]
  br label %108

108:                                              ; preds = %._crit_edge27, %60
  %.lcssa9 = phi double [ %split28, %._crit_edge27 ], [ %97, %60 ]
  %109 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %110 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %111 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %112 = fmul double %110, %111
  %113 = fcmp olt double %112, 0.000000e+00
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %115

115:                                              ; preds = %114, %108
  %storemerge = phi double [ 0.000000e+00, %114 ], [ %112, %108 ]
  store double %storemerge, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %116 = sitofp i32 %89 to double
  store double %116, ptr @sc, align 8
  %117 = load double, ptr @sa, align 8
  store double 0.000000e+00, ptr %1, align 8
  %118 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not429 = icmp sgt i32 1, %89
  br i1 %.not429, label %137, label %.lr.ph31

.lr.ph31:                                         ; preds = %115
  br label %119

119:                                              ; preds = %.lr.ph31, %119
  %120 = phi i32 [ 1, %.lr.ph31 ], [ %136, %119 ]
  %121 = phi double [ 0.000000e+00, %.lr.ph31 ], [ %132, %119 ]
  %122 = phi double [ 0.000000e+00, %.lr.ph31 ], [ %133, %119 ]
  %123 = phi double [ %.lcssa9, %.lr.ph31 ], [ %126, %119 ]
  %124 = phi double [ %117, %.lr.ph31 ], [ %130, %119 ]
  %125 = phi double [ 0.000000e+00, %.lr.ph31 ], [ %135, %119 ]
  %126 = fneg double %123
  %127 = load double, ptr @sa, align 8
  %128 = fsub double %127, %123
  store double %128, ptr @sa, align 8
  %129 = load double, ptr @two, align 8
  %130 = fadd double %124, %129
  %131 = fsub double %126, %130
  %132 = fadd double %121, %131
  %133 = call double @llvm.fmuladd.f64(double %123, double %130, double %122)
  %134 = fdiv double %123, %130
  %135 = fsub double %125, %134
  store double %135, ptr %1, align 8
  %136 = add nuw nsw i32 %120, 1
  %.not4 = icmp sgt i32 %136, %89
  br i1 %.not4, label %._crit_edge32, label %119, !llvm.loop !12

._crit_edge32:                                    ; preds = %119
  %split33 = phi double [ %135, %119 ]
  %split34 = phi double [ %133, %119 ]
  %split35 = phi double [ %132, %119 ]
  br label %137

137:                                              ; preds = %._crit_edge32, %115
  %.lcssa8 = phi double [ %split33, %._crit_edge32 ], [ 0.000000e+00, %115 ]
  %.lcssa7 = phi double [ %split34, %._crit_edge32 ], [ 0.000000e+00, %115 ]
  %.lcssa6 = phi double [ %split35, %._crit_edge32 ], [ 0.000000e+00, %115 ]
  %138 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %139 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %140 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %141 = fmul double %139, %140
  store double %141, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %142 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %143 = fsub double %141, %142
  %144 = fdiv double %143, 7.000000e+00
  store double %144, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %145 = load double, ptr @sa, align 8
  %146 = fmul double %145, %.lcssa6
  %147 = load double, ptr @sc, align 8
  %148 = fdiv double %146, %147
  %149 = fptosi double %148 to i32
  store i32 %149, ptr %2, align 4
  %150 = load double, ptr @four, align 8
  %151 = fmul double %150, %.lcssa8
  %152 = load double, ptr @five, align 8
  %153 = fdiv double %151, %152
  store double %153, ptr @sa, align 8
  %154 = fdiv double %152, %.lcssa7
  %155 = fadd double %153, %154
  store double %155, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %156 = fmul double %.lcssa7, %.lcssa7
  %157 = fmul double %156, %.lcssa7
  %158 = fdiv double 3.125000e+01, %157
  %159 = fsub double %155, %158
  store double %159, ptr @piprg, align 8
  %160 = load double, ptr @piref, align 8
  %161 = fsub double %159, %160
  store double %161, ptr @pierr, align 8
  %162 = load double, ptr @one, align 8
  %163 = fdiv double %162, %144
  store double %163, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %164 = fmul double %161, 1.000000e-30
  %165 = fmul double %143, 1.000000e-30
  %166 = fmul double %163, 1.000000e-30
  %167 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %164, double noundef %165, double noundef %166) #4
  %168 = load double, ptr @piref, align 8
  %169 = load double, ptr @three, align 8
  %170 = sitofp i32 %149 to double
  %171 = fmul double %169, %170
  %172 = fdiv double %168, %171
  %173 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not5.not36 = icmp slt i32 1, %149
  br i1 %.not5.not36, label %.lr.ph38, label %198

.lr.ph38:                                         ; preds = %137
  br label %174

174:                                              ; preds = %.lr.ph38, %174
  %175 = phi i32 [ 1, %.lr.ph38 ], [ %197, %174 ]
  %176 = phi double [ 0.000000e+00, %.lr.ph38 ], [ %196, %174 ]
  %177 = phi double [ 0.000000e+00, %.lr.ph38 ], [ %179, %174 ]
  %178 = load double, ptr @one, align 8
  %179 = fadd double %177, %178
  %180 = fmul double %179, %172
  %181 = fmul double %180, %180
  store double %181, ptr %1, align 8
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
  %196 = call double @llvm.fmuladd.f64(double %180, double %195, double %176)
  %197 = add nuw nsw i32 %175, 1
  %.not5.not = icmp slt i32 %197, %149
  br i1 %.not5.not, label %174, label %._crit_edge39, !llvm.loop !13

._crit_edge39:                                    ; preds = %174
  %split40 = phi double [ %196, %174 ]
  br label %198

198:                                              ; preds = %._crit_edge39, %137
  %.lcssa5 = phi double [ %split40, %._crit_edge39 ], [ 0.000000e+00, %137 ]
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
  store double %208, ptr %1, align 8
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
  %227 = call double @llvm.fmuladd.f64(double %226, double %.lcssa5, double %224)
  %228 = fmul double %172, %227
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
  %242 = fmul double %241, %170
  %243 = fdiv double %240, %242
  %244 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not6.not41 = icmp slt i32 1, %149
  br i1 %.not6.not41, label %.lr.ph43, label %266

.lr.ph43:                                         ; preds = %198
  br label %245

245:                                              ; preds = %.lr.ph43, %245
  %246 = phi i32 [ 1, %.lr.ph43 ], [ %265, %245 ]
  %247 = phi double [ 0.000000e+00, %.lr.ph43 ], [ %264, %245 ]
  %248 = uitofp nneg i32 %246 to double
  %249 = fmul double %243, %248
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
  %262 = call double @llvm.fmuladd.f64(double %250, double %261, double %247)
  %263 = load double, ptr @one, align 8
  %264 = fadd double %262, %263
  %265 = add nuw nsw i32 %246, 1
  %.not6.not = icmp slt i32 %265, %149
  br i1 %.not6.not, label %245, label %._crit_edge44, !llvm.loop !14

._crit_edge44:                                    ; preds = %245
  %split45 = phi double [ %264, %245 ]
  br label %266

266:                                              ; preds = %._crit_edge44, %198
  %.lcssa4 = phi double [ %split45, %._crit_edge44 ], [ 0.000000e+00, %198 ]
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
  %293 = call double @llvm.fmuladd.f64(double %292, double %.lcssa4, double %291)
  %294 = fmul double %243, %293
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
  %318 = fmul double %317, %170
  %319 = fdiv double %316, %318
  %320 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not7.not46 = icmp slt i32 1, %149
  br i1 %.not7.not46, label %.lr.ph48, label %356

.lr.ph48:                                         ; preds = %266
  br label %321

321:                                              ; preds = %.lr.ph48, %321
  %322 = phi i32 [ 1, %.lr.ph48 ], [ %355, %321 ]
  %323 = phi double [ 0.000000e+00, %.lr.ph48 ], [ %354, %321 ]
  %324 = uitofp nneg i32 %322 to double
  %325 = fmul double %319, %324
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
  %354 = fadd double %323, %353
  %355 = add nuw nsw i32 %322, 1
  %.not7.not = icmp slt i32 %355, %149
  br i1 %.not7.not, label %321, label %._crit_edge49, !llvm.loop !15

._crit_edge49:                                    ; preds = %321
  %split50 = phi double [ %354, %321 ]
  br label %356

356:                                              ; preds = %._crit_edge49, %266
  %.lcssa3 = phi double [ %split50, %._crit_edge49 ], [ 0.000000e+00, %266 ]
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
  %397 = fmul double %319, %396
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
  %407 = fmul double %406, %170
  %408 = fdiv double %405, %407
  %409 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not8.not51 = icmp slt i32 1, %149
  br i1 %.not8.not51, label %.lr.ph53, label %444

.lr.ph53:                                         ; preds = %356
  br label %410

410:                                              ; preds = %.lr.ph53, %410
  %411 = phi i32 [ 1, %.lr.ph53 ], [ %443, %410 ]
  %412 = phi double [ 0.000000e+00, %.lr.ph53 ], [ %442, %410 ]
  %413 = uitofp nneg i32 %411 to double
  %414 = fmul double %408, %413
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
  %442 = call double @llvm.fmuladd.f64(double %429, double %441, double %412)
  %443 = add nuw nsw i32 %411, 1
  %.not8.not = icmp slt i32 %443, %149
  br i1 %.not8.not, label %410, label %._crit_edge54, !llvm.loop !16

._crit_edge54:                                    ; preds = %410
  %split55 = phi double [ %442, %410 ]
  br label %444

444:                                              ; preds = %._crit_edge54, %356
  %.lcssa2 = phi double [ %split55, %._crit_edge54 ], [ 0.000000e+00, %356 ]
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
  %484 = call double @llvm.fmuladd.f64(double %483, double %.lcssa2, double %481)
  %485 = fmul double %408, %484
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
  %494 = fdiv double f0x40599541F7F192A4, %170
  %495 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not9.not56 = icmp slt i32 1, %149
  br i1 %.not9.not56, label %.lr.ph58, label %512

.lr.ph58:                                         ; preds = %444
  br label %496

496:                                              ; preds = %.lr.ph58, %496
  %497 = phi i32 [ 1, %.lr.ph58 ], [ %511, %496 ]
  %498 = phi double [ 0.000000e+00, %.lr.ph58 ], [ %510, %496 ]
  %499 = uitofp nneg i32 %497 to double
  %500 = fmul double %494, %499
  %501 = fmul double %500, %500
  %502 = fadd double %500, %493
  %503 = fdiv double %493, %502
  %504 = fsub double %498, %503
  %505 = fadd double %501, %493
  %506 = fdiv double %500, %505
  %507 = fsub double %504, %506
  %508 = call double @llvm.fmuladd.f64(double %500, double %501, double %493)
  %509 = fdiv double %501, %508
  %510 = fsub double %507, %509
  %511 = add nuw nsw i32 %497, 1
  %.not9.not = icmp slt i32 %511, %149
  br i1 %.not9.not, label %496, label %._crit_edge59, !llvm.loop !17

._crit_edge59:                                    ; preds = %496
  %split60 = phi double [ %510, %496 ]
  br label %512

512:                                              ; preds = %._crit_edge59, %444
  %.lcssa1 = phi double [ %split60, %._crit_edge59 ], [ 0.000000e+00, %444 ]
  %513 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %514 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %515 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %516 = load double, ptr @nulltime, align 8
  %517 = fneg double %516
  %518 = call double @llvm.fmuladd.f64(double %514, double %515, double %517)
  store double %518, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %519 = fdiv double %518, 1.200000e+01
  store double %519, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %520 = load double, ptr @sa, align 8
  %521 = fmul double %520, %520
  %522 = fneg double %493
  %523 = fadd double %520, %493
  %524 = fdiv double %493, %523
  %525 = fsub double %522, %524
  %526 = fadd double %521, %493
  %527 = fdiv double %520, %526
  %528 = fsub double %525, %527
  %529 = call double @llvm.fmuladd.f64(double %520, double %521, double %493)
  %530 = fdiv double %521, %529
  %531 = fsub double %528, %530
  store double %531, ptr @sa, align 8
  %532 = fmul nnan double %494, 1.800000e+01
  %533 = load double, ptr @two, align 8
  %534 = call double @llvm.fmuladd.f64(double %533, double %.lcssa1, double %531)
  %535 = fmul double %532, %534
  store double %535, ptr @sa, align 8
  %536 = fptosi double %535 to i32
  %537 = mul nsw i32 %536, -2000
  store i32 %537, ptr %2, align 4
  %538 = sitofp i32 %537 to double
  %539 = load double, ptr @scale, align 8
  %540 = fdiv double %538, %539
  %541 = fptosi double %540 to i32
  store i32 %541, ptr %2, align 4
  %542 = fadd double %535, 5.002000e+02
  store double %542, ptr @sc, align 8
  %543 = load double, ptr @one, align 8
  %544 = fdiv double %543, %519
  store double %544, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %545 = fmul double %542, 1.000000e-30
  %546 = fmul double %518, 1.000000e-30
  %547 = fmul double %544, 1.000000e-30
  %548 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %545, double noundef %546, double noundef %547) #4
  %549 = load double, ptr @piref, align 8
  %550 = load double, ptr @three, align 8
  %551 = sitofp i32 %541 to double
  %552 = fmul double %550, %551
  %553 = fdiv double %549, %552
  %554 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not10.not61 = icmp slt i32 1, %541
  br i1 %.not10.not61, label %.lr.ph63, label %590

.lr.ph63:                                         ; preds = %512
  br label %555

555:                                              ; preds = %.lr.ph63, %555
  %556 = phi i32 [ 1, %.lr.ph63 ], [ %589, %555 ]
  %557 = phi double [ 0.000000e+00, %.lr.ph63 ], [ %588, %555 ]
  %558 = uitofp nneg i32 %556 to double
  %559 = fmul double %553, %558
  %560 = fmul double %559, %559
  store double %560, ptr %1, align 8
  %561 = load double, ptr @B6, align 8
  %562 = load double, ptr @B5, align 8
  %563 = call double @llvm.fmuladd.f64(double %561, double %560, double %562)
  %564 = load double, ptr @B4, align 8
  %565 = call double @llvm.fmuladd.f64(double %560, double %563, double %564)
  %566 = load double, ptr @B3, align 8
  %567 = call double @llvm.fmuladd.f64(double %560, double %565, double %566)
  %568 = load double, ptr @B2, align 8
  %569 = call double @llvm.fmuladd.f64(double %560, double %567, double %568)
  %570 = load double, ptr @B1, align 8
  %571 = call double @llvm.fmuladd.f64(double %560, double %569, double %570)
  %572 = load double, ptr @one, align 8
  %573 = call double @llvm.fmuladd.f64(double %560, double %571, double %572)
  %574 = fmul double %573, %573
  %575 = fmul double %574, %559
  %576 = load double, ptr @A6, align 8
  %577 = load double, ptr @A5, align 8
  %578 = call double @llvm.fmuladd.f64(double %576, double %560, double %577)
  %579 = load double, ptr @A4, align 8
  %580 = call double @llvm.fmuladd.f64(double %578, double %560, double %579)
  %581 = load double, ptr @A3, align 8
  %582 = call double @llvm.fmuladd.f64(double %580, double %560, double %581)
  %583 = load double, ptr @A2, align 8
  %584 = call double @llvm.fmuladd.f64(double %582, double %560, double %583)
  %585 = load double, ptr @A1, align 8
  %586 = call double @llvm.fmuladd.f64(double %584, double %560, double %585)
  %587 = call double @llvm.fmuladd.f64(double %586, double %560, double %572)
  %588 = call double @llvm.fmuladd.f64(double %575, double %587, double %557)
  %589 = add nuw nsw i32 %556, 1
  %.not10.not = icmp slt i32 %589, %541
  br i1 %.not10.not, label %555, label %._crit_edge64, !llvm.loop !18

._crit_edge64:                                    ; preds = %555
  %split65 = phi double [ %588, %555 ]
  br label %590

590:                                              ; preds = %._crit_edge64, %512
  %.lcssa = phi double [ %split65, %._crit_edge64 ], [ 0.000000e+00, %512 ]
  %591 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %592 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %593 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %594 = load double, ptr @nulltime, align 8
  %595 = fneg double %594
  %596 = call double @llvm.fmuladd.f64(double %592, double %593, double %595)
  store double %596, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %597 = load double, ptr @piref, align 8
  %598 = load double, ptr @three, align 8
  %599 = fdiv double %597, %598
  %600 = fmul double %599, %599
  store double %600, ptr %1, align 8
  %601 = load double, ptr @A6, align 8
  %602 = load double, ptr @A5, align 8
  %603 = call double @llvm.fmuladd.f64(double %601, double %600, double %602)
  %604 = load double, ptr @A4, align 8
  %605 = call double @llvm.fmuladd.f64(double %603, double %600, double %604)
  %606 = load double, ptr @A3, align 8
  %607 = call double @llvm.fmuladd.f64(double %605, double %600, double %606)
  %608 = load double, ptr @A2, align 8
  %609 = call double @llvm.fmuladd.f64(double %607, double %600, double %608)
  %610 = load double, ptr @A1, align 8
  %611 = call double @llvm.fmuladd.f64(double %609, double %600, double %610)
  %612 = load double, ptr @one, align 8
  %613 = call double @llvm.fmuladd.f64(double %611, double %600, double %612)
  %614 = fmul double %599, %613
  store double %614, ptr @sa, align 8
  %615 = load double, ptr @B6, align 8
  %616 = load double, ptr @B5, align 8
  %617 = call double @llvm.fmuladd.f64(double %615, double %600, double %616)
  %618 = load double, ptr @B4, align 8
  %619 = call double @llvm.fmuladd.f64(double %600, double %617, double %618)
  %620 = load double, ptr @B3, align 8
  %621 = call double @llvm.fmuladd.f64(double %600, double %619, double %620)
  %622 = load double, ptr @B2, align 8
  %623 = call double @llvm.fmuladd.f64(double %600, double %621, double %622)
  %624 = load double, ptr @B1, align 8
  %625 = call double @llvm.fmuladd.f64(double %600, double %623, double %624)
  %626 = call double @llvm.fmuladd.f64(double %600, double %625, double %612)
  store double %626, ptr @sb, align 8
  %627 = fmul double %614, %626
  %628 = fmul double %627, %626
  store double %628, ptr @sa, align 8
  %629 = fdiv double %596, 3.000000e+01
  store double %629, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %630 = load double, ptr @two, align 8
  %631 = call double @llvm.fmuladd.f64(double %630, double %.lcssa, double %628)
  %632 = fmul double %553, %631
  %633 = fdiv double %632, %630
  store double %633, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %634 = fadd double %633, f0xBFD2AAAAAAAAAAAB
  store double %634, ptr @sc, align 8
  %635 = fdiv double %612, %629
  store double %635, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %636 = fmul double %634, 1.000000e-30
  %637 = fmul double %596, 1.000000e-30
  %638 = fmul double %635, 1.000000e-30
  %639 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %636, double noundef %637, double noundef %638) #4
  %640 = load double, ptr @five, align 8
  %641 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %642 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %643 = fsub double %641, %642
  %644 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %645 = call double @llvm.fmuladd.f64(double %640, double %643, double %644)
  %646 = fdiv double %645, 5.200000e+01
  store double %646, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %647 = load double, ptr @one, align 8
  %648 = fdiv double %647, %646
  store double %648, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %649 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %650 = fadd double %649, %644
  %651 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %652 = fadd double %650, %651
  %653 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %654 = fadd double %652, %653
  %655 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %656 = fadd double %654, %655
  store double %656, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %657 = load double, ptr @four, align 8
  %658 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %659 = call double @llvm.fmuladd.f64(double %657, double %658, double %656)
  %660 = fdiv double %659, 1.520000e+02
  store double %660, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %661 = fdiv double %647, %660
  store double %661, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %656, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %662 = fadd double %656, %658
  %663 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %664 = fadd double %662, %663
  %665 = fdiv double %664, 1.460000e+02
  store double %665, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %666 = fdiv double %647, %665
  store double %666, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %667 = fadd double %644, %651
  %668 = fadd double %667, %655
  %669 = fadd double %668, %663
  %670 = fdiv double %669, 9.100000e+01
  store double %670, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %671 = fdiv double %647, %670
  store double %671, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar11 = call i32 @putchar(i32 10)
  %672 = load i32, ptr %2, align 4
  %673 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %672) #4
  %674 = load double, ptr @nulltime, align 8
  %675 = fmul double %674, 1.000000e-30
  %676 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %675) #4
  %677 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %678 = fmul double %677, 1.000000e-30
  %679 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %678) #4
  %680 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %681 = fmul double %680, 1.000000e-30
  %682 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %681) #4
  %683 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %684 = fmul double %683, 1.000000e-30
  %685 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %684) #4
  %686 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %687 = fmul double %686, 1.000000e-30
  %688 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %687) #4
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
