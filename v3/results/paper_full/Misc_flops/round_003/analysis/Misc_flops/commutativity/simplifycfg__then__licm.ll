; ModuleID = 'results\paper_full\Misc_flops\round_002\output.ll'
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

3:                                                ; preds = %36, %0
  %4 = phi double [ undef, %0 ], [ %.lcssa10, %36 ]
  %5 = phi double [ undef, %0 ], [ %14, %36 ]
  %6 = phi i32 [ 15625, %0 ], [ %11, %36 ]
  %7 = phi double [ 0.000000e+00, %0 ], [ %38, %36 ]
  %8 = load double, ptr @TLimit, align 8
  %9 = fcmp olt double %7, %8
  br i1 %9, label %10, label %.loopexit

10:                                               ; preds = %3
  %11 = shl nsw i32 %6, 1
  %12 = load double, ptr @one, align 8
  %13 = sitofp i32 %11 to double
  %14 = fdiv double %12, %13
  %15 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %16 = load double, ptr @D1, align 8
  %17 = load double, ptr @D2, align 8
  %18 = load double, ptr @D3, align 8
  %19 = load double, ptr @E2, align 8
  %20 = load double, ptr @E3, align 8
  br label %21

21:                                               ; preds = %25, %10
  %22 = phi double [ %26, %25 ], [ 0.000000e+00, %10 ]
  %23 = phi double [ %34, %25 ], [ 0.000000e+00, %10 ]
  %24 = phi i32 [ %35, %25 ], [ 1, %10 ]
  %.not.not = icmp slt i32 %24, %11
  br i1 %.not.not, label %25, label %36

25:                                               ; preds = %21
  %26 = fadd double %22, %12
  %27 = fmul double %26, %14
  %28 = call double @llvm.fmuladd.f64(double %27, double %18, double %17)
  %29 = call double @llvm.fmuladd.f64(double %27, double %28, double %16)
  %30 = call double @llvm.fmuladd.f64(double %27, double %20, double %19)
  %31 = call double @llvm.fmuladd.f64(double %27, double %30, double %16)
  %32 = call double @llvm.fmuladd.f64(double %27, double %31, double %12)
  %33 = fdiv double %29, %32
  %34 = fadd double %23, %33
  %35 = add nuw nsw i32 %24, 1
  br label %21, !llvm.loop !7

36:                                               ; preds = %21
  %.lcssa10 = phi double [ %23, %21 ]
  %37 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %38 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %38, ptr @sa, align 8
  %39 = icmp eq i32 %6, 256000000
  br i1 %39, label %.loopexit, label %3, !llvm.loop !9

.loopexit:                                        ; preds = %3, %36
  %40 = phi double [ %.lcssa10, %36 ], [ %4, %3 ]
  %41 = phi double [ %14, %36 ], [ %5, %3 ]
  %42 = phi i32 [ 512000000, %36 ], [ %6, %3 ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %43 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %44

44:                                               ; preds = %46, %.loopexit
  %45 = phi i32 [ %47, %46 ], [ 1, %.loopexit ]
  %.not.not3 = icmp slt i32 %45, %42
  br i1 %.not.not3, label %46, label %48

46:                                               ; preds = %44
  %47 = add nuw nsw i32 %45, 1
  br label %44, !llvm.loop !10

48:                                               ; preds = %44
  %49 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %50 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %51 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %52 = fmul double %50, %51
  %53 = fcmp olt double %52, 0.000000e+00
  %54 = select i1 %53, double 0.000000e+00, double %52
  store double %54, ptr @nulltime, align 8
  %55 = load double, ptr @sa, align 8
  %56 = fneg double %54
  %57 = call double @llvm.fmuladd.f64(double %50, double %55, double %56)
  store double %57, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %58 = load double, ptr @D1, align 8
  %59 = load double, ptr @D2, align 8
  %60 = fadd double %58, %59
  %61 = load double, ptr @D3, align 8
  %62 = fadd double %60, %61
  %63 = load double, ptr @one, align 8
  %64 = fadd double %63, %58
  %65 = load double, ptr @E2, align 8
  %66 = fadd double %64, %65
  %67 = load double, ptr @E3, align 8
  %68 = fadd double %66, %67
  %69 = fdiv double %62, %68
  store double %69, ptr @sa, align 8
  store double %58, ptr @sb, align 8
  %70 = fdiv double %57, 1.400000e+01
  store double %70, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %71 = fadd double %69, %58
  %72 = load double, ptr @two, align 8
  %73 = call double @llvm.fmuladd.f64(double %72, double %40, double %71)
  %74 = fmul double %41, %73
  %75 = fdiv double %74, %72
  store double %75, ptr @sa, align 8
  %76 = fdiv double %63, %75
  store double %76, ptr @sb, align 8
  %77 = fptosi double %76 to i32
  %78 = mul nsw i32 %77, 40000
  %79 = sitofp i32 %78 to double
  %80 = load double, ptr @scale, align 8
  %81 = fdiv double %79, %80
  %82 = fptosi double %81 to i32
  %83 = fadd double %76, -2.520000e+01
  store double %83, ptr @sc, align 8
  %84 = fdiv double %63, %70
  store double %84, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %85 = fmul double %83, 1.000000e-30
  %86 = fmul double %57, 1.000000e-30
  %87 = fmul double %84, 1.000000e-30
  %88 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %85, double noundef %86, double noundef %87) #4
  %89 = load double, ptr @five, align 8
  %90 = fneg double %89
  %91 = load double, ptr @one, align 8
  %92 = fneg double %91
  store double %92, ptr @sa, align 8
  %93 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %sa.promoted = load double, ptr @sa, align 8
  br label %94

94:                                               ; preds = %98, %48
  %95 = phi double [ %100, %98 ], [ %sa.promoted, %48 ]
  %96 = phi double [ %99, %98 ], [ %90, %48 ]
  %97 = phi i32 [ %101, %98 ], [ 1, %48 ]
  %.not = icmp sgt i32 %97, %82
  br i1 %.not, label %102, label %98

98:                                               ; preds = %94
  %99 = fneg double %96
  %100 = fsub double %95, %96
  store double %100, ptr @sa, align 8
  %101 = add nuw nsw i32 %97, 1
  br label %94, !llvm.loop !11

102:                                              ; preds = %94
  %.lcssa9 = phi double [ %96, %94 ]
  %103 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %104 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %105 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %106 = fmul double %104, %105
  %107 = fcmp olt double %106, 0.000000e+00
  %storemerge = select i1 %107, double 0.000000e+00, double %106
  store double %storemerge, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %108 = sitofp i32 %82 to double
  store double %108, ptr @sc, align 8
  %109 = load double, ptr @sa, align 8
  %110 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %111 = load double, ptr @two, align 8
  %sa.promoted11 = load double, ptr @sa, align 8
  br label %112

112:                                              ; preds = %120, %102
  %113 = phi double [ %122, %120 ], [ %sa.promoted11, %102 ]
  %114 = phi double [ %128, %120 ], [ 0.000000e+00, %102 ]
  %115 = phi double [ %123, %120 ], [ %109, %102 ]
  %116 = phi double [ %121, %120 ], [ %.lcssa9, %102 ]
  %117 = phi double [ %126, %120 ], [ 0.000000e+00, %102 ]
  %118 = phi double [ %125, %120 ], [ 0.000000e+00, %102 ]
  %119 = phi i32 [ %129, %120 ], [ 1, %102 ]
  %.not4 = icmp sgt i32 %119, %82
  br i1 %.not4, label %130, label %120

120:                                              ; preds = %112
  %121 = fneg double %116
  %122 = fsub double %113, %116
  store double %122, ptr @sa, align 8
  %123 = fadd double %115, %111
  %124 = fsub double %121, %123
  %125 = fadd double %118, %124
  %126 = call double @llvm.fmuladd.f64(double %116, double %123, double %117)
  %127 = fdiv double %116, %123
  %128 = fsub double %114, %127
  %129 = add nuw nsw i32 %119, 1
  br label %112, !llvm.loop !12

130:                                              ; preds = %112
  %.lcssa8 = phi double [ %114, %112 ]
  %.lcssa7 = phi double [ %117, %112 ]
  %.lcssa6 = phi double [ %118, %112 ]
  %131 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %132 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %133 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %134 = fmul double %132, %133
  store double %134, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %135 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %136 = fsub double %134, %135
  %137 = fdiv double %136, 7.000000e+00
  store double %137, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %138 = load double, ptr @sa, align 8
  %139 = fmul double %138, %.lcssa6
  %140 = load double, ptr @sc, align 8
  %141 = fdiv double %139, %140
  %142 = fptosi double %141 to i32
  %143 = load double, ptr @four, align 8
  %144 = fmul double %143, %.lcssa8
  %145 = load double, ptr @five, align 8
  %146 = fdiv double %144, %145
  store double %146, ptr @sa, align 8
  %147 = fdiv double %145, %.lcssa7
  %148 = fadd double %146, %147
  store double %148, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %149 = fmul double %.lcssa7, %.lcssa7
  %150 = fmul double %149, %.lcssa7
  %151 = fdiv double 3.125000e+01, %150
  %152 = fsub double %148, %151
  store double %152, ptr @piprg, align 8
  %153 = load double, ptr @piref, align 8
  %154 = fsub double %152, %153
  store double %154, ptr @pierr, align 8
  %155 = load double, ptr @one, align 8
  %156 = fdiv double %155, %137
  store double %156, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %157 = fmul double %154, 1.000000e-30
  %158 = fmul double %136, 1.000000e-30
  %159 = fmul double %156, 1.000000e-30
  %160 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %157, double noundef %158, double noundef %159) #4
  %161 = load double, ptr @piref, align 8
  %162 = load double, ptr @three, align 8
  %163 = sitofp i32 %142 to double
  %164 = fmul double %162, %163
  %165 = fdiv double %161, %164
  %166 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %167 = load double, ptr @one, align 8
  %168 = load double, ptr @A6, align 8
  %169 = load double, ptr @A5, align 8
  %170 = fneg double %169
  %171 = load double, ptr @A4, align 8
  %172 = load double, ptr @A3, align 8
  %173 = fneg double %172
  %174 = load double, ptr @A2, align 8
  %175 = load double, ptr @A1, align 8
  br label %176

176:                                              ; preds = %180, %130
  %177 = phi double [ %181, %180 ], [ 0.000000e+00, %130 ]
  %178 = phi double [ %190, %180 ], [ 0.000000e+00, %130 ]
  %179 = phi i32 [ %191, %180 ], [ 1, %130 ]
  %.not5.not = icmp slt i32 %179, %142
  br i1 %.not5.not, label %180, label %192

180:                                              ; preds = %176
  %181 = fadd double %177, %167
  %182 = fmul double %181, %165
  %183 = fmul double %182, %182
  %184 = call double @llvm.fmuladd.f64(double %168, double %183, double %170)
  %185 = call double @llvm.fmuladd.f64(double %184, double %183, double %171)
  %186 = call double @llvm.fmuladd.f64(double %185, double %183, double %173)
  %187 = call double @llvm.fmuladd.f64(double %186, double %183, double %174)
  %188 = call double @llvm.fmuladd.f64(double %187, double %183, double %175)
  %189 = call double @llvm.fmuladd.f64(double %188, double %183, double %167)
  %190 = call double @llvm.fmuladd.f64(double %182, double %189, double %178)
  %191 = add nuw nsw i32 %179, 1
  br label %176, !llvm.loop !13

192:                                              ; preds = %176
  %.lcssa5 = phi double [ %178, %176 ]
  %193 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %194 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %195 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %196 = load double, ptr @nulltime, align 8
  %197 = fneg double %196
  %198 = call double @llvm.fmuladd.f64(double %194, double %195, double %197)
  store double %198, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %199 = load double, ptr @piref, align 8
  %200 = load double, ptr @three, align 8
  %201 = fdiv double %199, %200
  %202 = fmul double %201, %201
  %203 = load double, ptr @A6, align 8
  %204 = load double, ptr @A5, align 8
  %205 = fneg double %204
  %206 = call double @llvm.fmuladd.f64(double %203, double %202, double %205)
  %207 = load double, ptr @A4, align 8
  %208 = call double @llvm.fmuladd.f64(double %206, double %202, double %207)
  %209 = load double, ptr @A3, align 8
  %210 = fneg double %209
  %211 = call double @llvm.fmuladd.f64(double %208, double %202, double %210)
  %212 = load double, ptr @A2, align 8
  %213 = call double @llvm.fmuladd.f64(double %211, double %202, double %212)
  %214 = load double, ptr @A1, align 8
  %215 = call double @llvm.fmuladd.f64(double %213, double %202, double %214)
  %216 = load double, ptr @one, align 8
  %217 = call double @llvm.fmuladd.f64(double %215, double %202, double %216)
  %218 = fmul double %201, %217
  store double %218, ptr @sa, align 8
  %219 = fdiv double %198, 1.700000e+01
  store double %219, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %220 = load double, ptr @two, align 8
  %221 = call double @llvm.fmuladd.f64(double %220, double %.lcssa5, double %218)
  %222 = fmul double %165, %221
  %223 = fdiv double %222, %220
  store double %223, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %224 = fadd double %223, -5.000000e-01
  store double %224, ptr @sc, align 8
  %225 = fdiv double %216, %219
  store double %225, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %226 = fmul double %224, 1.000000e-30
  %227 = fmul double %198, 1.000000e-30
  %228 = fmul double %225, 1.000000e-30
  %229 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %226, double noundef %227, double noundef %228) #4
  %230 = load double, ptr @A3, align 8
  %231 = fneg double %230
  store double %231, ptr @A3, align 8
  %232 = load double, ptr @A5, align 8
  %233 = fneg double %232
  store double %233, ptr @A5, align 8
  %234 = load double, ptr @piref, align 8
  %235 = load double, ptr @three, align 8
  %236 = fmul double %235, %163
  %237 = fdiv double %234, %236
  %238 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %239 = load double, ptr @B6, align 8
  %240 = load double, ptr @B5, align 8
  %241 = load double, ptr @B4, align 8
  %242 = load double, ptr @B3, align 8
  %243 = load double, ptr @B2, align 8
  %244 = load double, ptr @B1, align 8
  %245 = load double, ptr @one, align 8
  br label %246

246:                                              ; preds = %249, %192
  %247 = phi double [ %259, %249 ], [ 0.000000e+00, %192 ]
  %248 = phi i32 [ %260, %249 ], [ 1, %192 ]
  %.not6.not = icmp slt i32 %248, %142
  br i1 %.not6.not, label %249, label %261

249:                                              ; preds = %246
  %250 = uitofp nneg i32 %248 to double
  %251 = fmul double %237, %250
  %252 = fmul double %251, %251
  %253 = call double @llvm.fmuladd.f64(double %239, double %252, double %240)
  %254 = call double @llvm.fmuladd.f64(double %252, double %253, double %241)
  %255 = call double @llvm.fmuladd.f64(double %252, double %254, double %242)
  %256 = call double @llvm.fmuladd.f64(double %252, double %255, double %243)
  %257 = call double @llvm.fmuladd.f64(double %252, double %256, double %244)
  %258 = call double @llvm.fmuladd.f64(double %252, double %257, double %247)
  %259 = fadd double %258, %245
  %260 = add nuw nsw i32 %248, 1
  br label %246, !llvm.loop !14

261:                                              ; preds = %246
  %.lcssa4 = phi double [ %247, %246 ]
  %262 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %263 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %264 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %265 = load double, ptr @nulltime, align 8
  %266 = fneg double %265
  %267 = call double @llvm.fmuladd.f64(double %263, double %264, double %266)
  store double %267, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %268 = load double, ptr @piref, align 8
  %269 = load double, ptr @three, align 8
  %270 = fdiv double %268, %269
  %271 = fmul double %270, %270
  %272 = load double, ptr @B6, align 8
  %273 = load double, ptr @B5, align 8
  %274 = call double @llvm.fmuladd.f64(double %272, double %271, double %273)
  %275 = load double, ptr @B4, align 8
  %276 = call double @llvm.fmuladd.f64(double %271, double %274, double %275)
  %277 = load double, ptr @B3, align 8
  %278 = call double @llvm.fmuladd.f64(double %271, double %276, double %277)
  %279 = load double, ptr @B2, align 8
  %280 = call double @llvm.fmuladd.f64(double %271, double %278, double %279)
  %281 = load double, ptr @B1, align 8
  %282 = call double @llvm.fmuladd.f64(double %271, double %280, double %281)
  %283 = load double, ptr @one, align 8
  %284 = call double @llvm.fmuladd.f64(double %271, double %282, double %283)
  store double %284, ptr @sa, align 8
  %285 = fdiv double %267, 1.500000e+01
  store double %285, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %286 = fadd double %284, %283
  %287 = load double, ptr @two, align 8
  %288 = call double @llvm.fmuladd.f64(double %287, double %.lcssa4, double %286)
  %289 = fmul double %237, %288
  %290 = fdiv double %289, %287
  store double %290, ptr @sa, align 8
  %291 = load double, ptr @A6, align 8
  %292 = load double, ptr @A5, align 8
  %293 = call double @llvm.fmuladd.f64(double %291, double %271, double %292)
  %294 = load double, ptr @A4, align 8
  %295 = call double @llvm.fmuladd.f64(double %293, double %271, double %294)
  %296 = load double, ptr @A3, align 8
  %297 = call double @llvm.fmuladd.f64(double %295, double %271, double %296)
  %298 = load double, ptr @A2, align 8
  %299 = call double @llvm.fmuladd.f64(double %297, double %271, double %298)
  %300 = load double, ptr @A1, align 8
  %301 = call double @llvm.fmuladd.f64(double %299, double %271, double %300)
  %302 = load double, ptr @A0, align 8
  %303 = call double @llvm.fmuladd.f64(double %301, double %271, double %302)
  %304 = fmul double %270, %303
  store double %304, ptr @sb, align 8
  %305 = fsub double %290, %304
  store double %305, ptr @sc, align 8
  %306 = fdiv double %283, %285
  store double %306, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %307 = fmul double %305, 1.000000e-30
  %308 = fmul double %267, 1.000000e-30
  %309 = fmul double %306, 1.000000e-30
  %310 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %307, double noundef %308, double noundef %309) #4
  %311 = load double, ptr @piref, align 8
  %312 = load double, ptr @three, align 8
  %313 = fmul double %312, %163
  %314 = fdiv double %311, %313
  %315 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %316 = load double, ptr @A6, align 8
  %317 = load double, ptr @A5, align 8
  %318 = load double, ptr @A4, align 8
  %319 = load double, ptr @A3, align 8
  %320 = load double, ptr @A2, align 8
  %321 = load double, ptr @A1, align 8
  %322 = load double, ptr @one, align 8
  %323 = load double, ptr @B6, align 8
  %324 = load double, ptr @B5, align 8
  %325 = load double, ptr @B4, align 8
  %326 = load double, ptr @B3, align 8
  %327 = load double, ptr @B2, align 8
  %328 = load double, ptr @B1, align 8
  br label %329

329:                                              ; preds = %332, %261
  %330 = phi double [ %350, %332 ], [ 0.000000e+00, %261 ]
  %331 = phi i32 [ %351, %332 ], [ 1, %261 ]
  %.not7.not = icmp slt i32 %331, %142
  br i1 %.not7.not, label %332, label %352

332:                                              ; preds = %329
  %333 = uitofp nneg i32 %331 to double
  %334 = fmul double %314, %333
  %335 = fmul double %334, %334
  %336 = call double @llvm.fmuladd.f64(double %316, double %335, double %317)
  %337 = call double @llvm.fmuladd.f64(double %336, double %335, double %318)
  %338 = call double @llvm.fmuladd.f64(double %337, double %335, double %319)
  %339 = call double @llvm.fmuladd.f64(double %338, double %335, double %320)
  %340 = call double @llvm.fmuladd.f64(double %339, double %335, double %321)
  %341 = call double @llvm.fmuladd.f64(double %340, double %335, double %322)
  %342 = fmul double %334, %341
  %343 = call double @llvm.fmuladd.f64(double %323, double %335, double %324)
  %344 = call double @llvm.fmuladd.f64(double %335, double %343, double %325)
  %345 = call double @llvm.fmuladd.f64(double %335, double %344, double %326)
  %346 = call double @llvm.fmuladd.f64(double %335, double %345, double %327)
  %347 = call double @llvm.fmuladd.f64(double %335, double %346, double %328)
  %348 = call double @llvm.fmuladd.f64(double %335, double %347, double %322)
  %349 = fdiv double %342, %348
  %350 = fadd double %330, %349
  %351 = add nuw nsw i32 %331, 1
  br label %329, !llvm.loop !15

352:                                              ; preds = %329
  %.lcssa3 = phi double [ %330, %329 ]
  %353 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %354 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %355 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %356 = load double, ptr @nulltime, align 8
  %357 = fneg double %356
  %358 = call double @llvm.fmuladd.f64(double %354, double %355, double %357)
  store double %358, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %359 = load double, ptr @piref, align 8
  %360 = load double, ptr @three, align 8
  %361 = fdiv double %359, %360
  %362 = fmul double %361, %361
  %363 = load double, ptr @A6, align 8
  %364 = load double, ptr @A5, align 8
  %365 = call double @llvm.fmuladd.f64(double %363, double %362, double %364)
  %366 = load double, ptr @A4, align 8
  %367 = call double @llvm.fmuladd.f64(double %365, double %362, double %366)
  %368 = load double, ptr @A3, align 8
  %369 = call double @llvm.fmuladd.f64(double %367, double %362, double %368)
  %370 = load double, ptr @A2, align 8
  %371 = call double @llvm.fmuladd.f64(double %369, double %362, double %370)
  %372 = load double, ptr @A1, align 8
  %373 = call double @llvm.fmuladd.f64(double %371, double %362, double %372)
  %374 = load double, ptr @one, align 8
  %375 = call double @llvm.fmuladd.f64(double %373, double %362, double %374)
  %376 = fmul double %361, %375
  store double %376, ptr @sa, align 8
  %377 = load double, ptr @B6, align 8
  %378 = load double, ptr @B5, align 8
  %379 = call double @llvm.fmuladd.f64(double %377, double %362, double %378)
  %380 = load double, ptr @B4, align 8
  %381 = call double @llvm.fmuladd.f64(double %362, double %379, double %380)
  %382 = load double, ptr @B3, align 8
  %383 = call double @llvm.fmuladd.f64(double %362, double %381, double %382)
  %384 = load double, ptr @B2, align 8
  %385 = call double @llvm.fmuladd.f64(double %362, double %383, double %384)
  %386 = load double, ptr @B1, align 8
  %387 = call double @llvm.fmuladd.f64(double %362, double %385, double %386)
  %388 = call double @llvm.fmuladd.f64(double %362, double %387, double %374)
  store double %388, ptr @sb, align 8
  %389 = fdiv double %376, %388
  store double %389, ptr @sa, align 8
  %390 = fdiv double %358, 2.900000e+01
  store double %390, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %391 = load double, ptr @two, align 8
  %392 = call double @llvm.fmuladd.f64(double %391, double %.lcssa3, double %389)
  %393 = fmul double %314, %392
  %394 = fdiv double %393, %391
  store double %394, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %395 = fadd double %394, f0xBFE62E42FEFA39EF
  store double %395, ptr @sc, align 8
  %396 = fdiv double %374, %390
  store double %396, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %397 = fmul double %395, 1.000000e-30
  %398 = fmul double %358, 1.000000e-30
  %399 = fmul double %396, 1.000000e-30
  %400 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %397, double noundef %398, double noundef %399) #4
  %401 = load double, ptr @piref, align 8
  %402 = load double, ptr @four, align 8
  %403 = fmul double %402, %163
  %404 = fdiv double %401, %403
  %405 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %406 = load double, ptr @A6, align 8
  %407 = load double, ptr @A5, align 8
  %408 = load double, ptr @A4, align 8
  %409 = load double, ptr @A3, align 8
  %410 = load double, ptr @A2, align 8
  %411 = load double, ptr @A1, align 8
  %412 = load double, ptr @one, align 8
  %413 = load double, ptr @B6, align 8
  %414 = load double, ptr @B5, align 8
  %415 = load double, ptr @B4, align 8
  %416 = load double, ptr @B3, align 8
  %417 = load double, ptr @B2, align 8
  %418 = load double, ptr @B1, align 8
  br label %419

419:                                              ; preds = %422, %352
  %420 = phi double [ %439, %422 ], [ 0.000000e+00, %352 ]
  %421 = phi i32 [ %440, %422 ], [ 1, %352 ]
  %.not8.not = icmp slt i32 %421, %142
  br i1 %.not8.not, label %422, label %441

422:                                              ; preds = %419
  %423 = uitofp nneg i32 %421 to double
  %424 = fmul double %404, %423
  %425 = fmul double %424, %424
  %426 = call double @llvm.fmuladd.f64(double %406, double %425, double %407)
  %427 = call double @llvm.fmuladd.f64(double %426, double %425, double %408)
  %428 = call double @llvm.fmuladd.f64(double %427, double %425, double %409)
  %429 = call double @llvm.fmuladd.f64(double %428, double %425, double %410)
  %430 = call double @llvm.fmuladd.f64(double %429, double %425, double %411)
  %431 = call double @llvm.fmuladd.f64(double %430, double %425, double %412)
  %432 = fmul double %424, %431
  %433 = call double @llvm.fmuladd.f64(double %413, double %425, double %414)
  %434 = call double @llvm.fmuladd.f64(double %425, double %433, double %415)
  %435 = call double @llvm.fmuladd.f64(double %425, double %434, double %416)
  %436 = call double @llvm.fmuladd.f64(double %425, double %435, double %417)
  %437 = call double @llvm.fmuladd.f64(double %425, double %436, double %418)
  %438 = call double @llvm.fmuladd.f64(double %425, double %437, double %412)
  %439 = call double @llvm.fmuladd.f64(double %432, double %438, double %420)
  %440 = add nuw nsw i32 %421, 1
  br label %419, !llvm.loop !16

441:                                              ; preds = %419
  %.lcssa2 = phi double [ %420, %419 ]
  %442 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %443 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %444 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %445 = load double, ptr @nulltime, align 8
  %446 = fneg double %445
  %447 = call double @llvm.fmuladd.f64(double %443, double %444, double %446)
  store double %447, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %448 = load double, ptr @piref, align 8
  %449 = load double, ptr @four, align 8
  %450 = fdiv double %448, %449
  %451 = fmul double %450, %450
  %452 = load double, ptr @A6, align 8
  %453 = load double, ptr @A5, align 8
  %454 = call double @llvm.fmuladd.f64(double %452, double %451, double %453)
  %455 = load double, ptr @A4, align 8
  %456 = call double @llvm.fmuladd.f64(double %454, double %451, double %455)
  %457 = load double, ptr @A3, align 8
  %458 = call double @llvm.fmuladd.f64(double %456, double %451, double %457)
  %459 = load double, ptr @A2, align 8
  %460 = call double @llvm.fmuladd.f64(double %458, double %451, double %459)
  %461 = load double, ptr @A1, align 8
  %462 = call double @llvm.fmuladd.f64(double %460, double %451, double %461)
  %463 = load double, ptr @one, align 8
  %464 = call double @llvm.fmuladd.f64(double %462, double %451, double %463)
  %465 = fmul double %450, %464
  store double %465, ptr @sa, align 8
  %466 = load double, ptr @B6, align 8
  %467 = load double, ptr @B5, align 8
  %468 = call double @llvm.fmuladd.f64(double %466, double %451, double %467)
  %469 = load double, ptr @B4, align 8
  %470 = call double @llvm.fmuladd.f64(double %451, double %468, double %469)
  %471 = load double, ptr @B3, align 8
  %472 = call double @llvm.fmuladd.f64(double %451, double %470, double %471)
  %473 = load double, ptr @B2, align 8
  %474 = call double @llvm.fmuladd.f64(double %451, double %472, double %473)
  %475 = load double, ptr @B1, align 8
  %476 = call double @llvm.fmuladd.f64(double %451, double %474, double %475)
  %477 = call double @llvm.fmuladd.f64(double %451, double %476, double %463)
  store double %477, ptr @sb, align 8
  %478 = fmul double %465, %477
  store double %478, ptr @sa, align 8
  %479 = fdiv double %447, 2.900000e+01
  store double %479, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %480 = load double, ptr @two, align 8
  %481 = call double @llvm.fmuladd.f64(double %480, double %.lcssa2, double %478)
  %482 = fmul double %404, %481
  %483 = fdiv double %482, %480
  store double %483, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %484 = fadd double %483, -2.500000e-01
  store double %484, ptr @sc, align 8
  %485 = fdiv double %463, %479
  store double %485, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %486 = fmul double %484, 1.000000e-30
  %487 = fmul double %447, 1.000000e-30
  %488 = fmul double %485, 1.000000e-30
  %489 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %486, double noundef %487, double noundef %488) #4
  %490 = load double, ptr @one, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %491 = fdiv double f0x40599541F7F192A4, %163
  %492 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %493

493:                                              ; preds = %496, %441
  %494 = phi double [ %508, %496 ], [ 0.000000e+00, %441 ]
  %495 = phi i32 [ %509, %496 ], [ 1, %441 ]
  %.not9.not = icmp slt i32 %495, %142
  br i1 %.not9.not, label %496, label %510

496:                                              ; preds = %493
  %497 = uitofp nneg i32 %495 to double
  %498 = fmul double %491, %497
  %499 = fmul double %498, %498
  %500 = fadd double %498, %490
  %501 = fdiv double %490, %500
  %502 = fsub double %494, %501
  %503 = fadd double %499, %490
  %504 = fdiv double %498, %503
  %505 = fsub double %502, %504
  %506 = call double @llvm.fmuladd.f64(double %498, double %499, double %490)
  %507 = fdiv double %499, %506
  %508 = fsub double %505, %507
  %509 = add nuw nsw i32 %495, 1
  br label %493, !llvm.loop !17

510:                                              ; preds = %493
  %.lcssa1 = phi double [ %494, %493 ]
  %511 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %512 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %513 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %514 = load double, ptr @nulltime, align 8
  %515 = fneg double %514
  %516 = call double @llvm.fmuladd.f64(double %512, double %513, double %515)
  store double %516, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %517 = fdiv double %516, 1.200000e+01
  store double %517, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %518 = load double, ptr @sa, align 8
  %519 = fmul double %518, %518
  %520 = fneg double %490
  %521 = fadd double %518, %490
  %522 = fdiv double %490, %521
  %523 = fsub double %520, %522
  %524 = fadd double %519, %490
  %525 = fdiv double %518, %524
  %526 = fsub double %523, %525
  %527 = call double @llvm.fmuladd.f64(double %518, double %519, double %490)
  %528 = fdiv double %519, %527
  %529 = fsub double %526, %528
  store double %529, ptr @sa, align 8
  %530 = fmul nnan double %491, 1.800000e+01
  %531 = load double, ptr @two, align 8
  %532 = call double @llvm.fmuladd.f64(double %531, double %.lcssa1, double %529)
  %533 = fmul double %530, %532
  store double %533, ptr @sa, align 8
  %534 = fptosi double %533 to i32
  %535 = mul nsw i32 %534, -2000
  %536 = sitofp i32 %535 to double
  %537 = load double, ptr @scale, align 8
  %538 = fdiv double %536, %537
  %539 = fptosi double %538 to i32
  %540 = fadd double %533, 5.002000e+02
  store double %540, ptr @sc, align 8
  %541 = load double, ptr @one, align 8
  %542 = fdiv double %541, %517
  store double %542, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %543 = fmul double %540, 1.000000e-30
  %544 = fmul double %516, 1.000000e-30
  %545 = fmul double %542, 1.000000e-30
  %546 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %543, double noundef %544, double noundef %545) #4
  %547 = load double, ptr @piref, align 8
  %548 = load double, ptr @three, align 8
  %549 = sitofp i32 %539 to double
  %550 = fmul double %548, %549
  %551 = fdiv double %547, %550
  %552 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %553 = load double, ptr @B6, align 8
  %554 = load double, ptr @B5, align 8
  %555 = load double, ptr @B4, align 8
  %556 = load double, ptr @B3, align 8
  %557 = load double, ptr @B2, align 8
  %558 = load double, ptr @B1, align 8
  %559 = load double, ptr @one, align 8
  %560 = load double, ptr @A6, align 8
  %561 = load double, ptr @A5, align 8
  %562 = load double, ptr @A4, align 8
  %563 = load double, ptr @A3, align 8
  %564 = load double, ptr @A2, align 8
  %565 = load double, ptr @A1, align 8
  br label %566

566:                                              ; preds = %569, %510
  %567 = phi double [ %587, %569 ], [ 0.000000e+00, %510 ]
  %568 = phi i32 [ %588, %569 ], [ 1, %510 ]
  %.not10.not = icmp slt i32 %568, %539
  br i1 %.not10.not, label %569, label %589

569:                                              ; preds = %566
  %570 = uitofp nneg i32 %568 to double
  %571 = fmul double %551, %570
  %572 = fmul double %571, %571
  %573 = call double @llvm.fmuladd.f64(double %553, double %572, double %554)
  %574 = call double @llvm.fmuladd.f64(double %572, double %573, double %555)
  %575 = call double @llvm.fmuladd.f64(double %572, double %574, double %556)
  %576 = call double @llvm.fmuladd.f64(double %572, double %575, double %557)
  %577 = call double @llvm.fmuladd.f64(double %572, double %576, double %558)
  %578 = call double @llvm.fmuladd.f64(double %572, double %577, double %559)
  %579 = fmul double %578, %578
  %580 = fmul double %579, %571
  %581 = call double @llvm.fmuladd.f64(double %560, double %572, double %561)
  %582 = call double @llvm.fmuladd.f64(double %581, double %572, double %562)
  %583 = call double @llvm.fmuladd.f64(double %582, double %572, double %563)
  %584 = call double @llvm.fmuladd.f64(double %583, double %572, double %564)
  %585 = call double @llvm.fmuladd.f64(double %584, double %572, double %565)
  %586 = call double @llvm.fmuladd.f64(double %585, double %572, double %559)
  %587 = call double @llvm.fmuladd.f64(double %580, double %586, double %567)
  %588 = add nuw nsw i32 %568, 1
  br label %566, !llvm.loop !18

589:                                              ; preds = %566
  %.lcssa = phi double [ %567, %566 ]
  %590 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %591 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %592 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %593 = load double, ptr @nulltime, align 8
  %594 = fneg double %593
  %595 = call double @llvm.fmuladd.f64(double %591, double %592, double %594)
  store double %595, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %596 = load double, ptr @piref, align 8
  %597 = load double, ptr @three, align 8
  %598 = fdiv double %596, %597
  %599 = fmul double %598, %598
  %600 = load double, ptr @A6, align 8
  %601 = load double, ptr @A5, align 8
  %602 = call double @llvm.fmuladd.f64(double %600, double %599, double %601)
  %603 = load double, ptr @A4, align 8
  %604 = call double @llvm.fmuladd.f64(double %602, double %599, double %603)
  %605 = load double, ptr @A3, align 8
  %606 = call double @llvm.fmuladd.f64(double %604, double %599, double %605)
  %607 = load double, ptr @A2, align 8
  %608 = call double @llvm.fmuladd.f64(double %606, double %599, double %607)
  %609 = load double, ptr @A1, align 8
  %610 = call double @llvm.fmuladd.f64(double %608, double %599, double %609)
  %611 = load double, ptr @one, align 8
  %612 = call double @llvm.fmuladd.f64(double %610, double %599, double %611)
  %613 = fmul double %598, %612
  store double %613, ptr @sa, align 8
  %614 = load double, ptr @B6, align 8
  %615 = load double, ptr @B5, align 8
  %616 = call double @llvm.fmuladd.f64(double %614, double %599, double %615)
  %617 = load double, ptr @B4, align 8
  %618 = call double @llvm.fmuladd.f64(double %599, double %616, double %617)
  %619 = load double, ptr @B3, align 8
  %620 = call double @llvm.fmuladd.f64(double %599, double %618, double %619)
  %621 = load double, ptr @B2, align 8
  %622 = call double @llvm.fmuladd.f64(double %599, double %620, double %621)
  %623 = load double, ptr @B1, align 8
  %624 = call double @llvm.fmuladd.f64(double %599, double %622, double %623)
  %625 = call double @llvm.fmuladd.f64(double %599, double %624, double %611)
  store double %625, ptr @sb, align 8
  %626 = fmul double %613, %625
  %627 = fmul double %626, %625
  store double %627, ptr @sa, align 8
  %628 = fdiv double %595, 3.000000e+01
  store double %628, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %629 = load double, ptr @two, align 8
  %630 = call double @llvm.fmuladd.f64(double %629, double %.lcssa, double %627)
  %631 = fmul double %551, %630
  %632 = fdiv double %631, %629
  store double %632, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %633 = fadd double %632, f0xBFD2AAAAAAAAAAAB
  store double %633, ptr @sc, align 8
  %634 = fdiv double %611, %628
  store double %634, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %635 = fmul double %633, 1.000000e-30
  %636 = fmul double %595, 1.000000e-30
  %637 = fmul double %634, 1.000000e-30
  %638 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %635, double noundef %636, double noundef %637) #4
  %639 = load double, ptr @five, align 8
  %640 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %641 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %642 = fsub double %640, %641
  %643 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %644 = call double @llvm.fmuladd.f64(double %639, double %642, double %643)
  %645 = fdiv double %644, 5.200000e+01
  store double %645, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %646 = load double, ptr @one, align 8
  %647 = fdiv double %646, %645
  store double %647, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %648 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %649 = fadd double %648, %643
  %650 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %651 = fadd double %649, %650
  %652 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %653 = fadd double %651, %652
  %654 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %655 = fadd double %653, %654
  store double %655, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %656 = load double, ptr @four, align 8
  %657 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %658 = call double @llvm.fmuladd.f64(double %656, double %657, double %655)
  %659 = fdiv double %658, 1.520000e+02
  store double %659, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %660 = fdiv double %646, %659
  store double %660, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %655, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %661 = fadd double %655, %657
  %662 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %663 = fadd double %661, %662
  %664 = fdiv double %663, 1.460000e+02
  store double %664, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %665 = fdiv double %646, %664
  store double %665, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %666 = fadd double %643, %650
  %667 = fadd double %666, %654
  %668 = fadd double %667, %662
  %669 = fdiv double %668, 9.100000e+01
  store double %669, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %670 = fdiv double %646, %669
  store double %670, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar11 = call i32 @putchar(i32 10)
  %671 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %539) #4
  %672 = load double, ptr @nulltime, align 8
  %673 = fmul double %672, 1.000000e-30
  %674 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %673) #4
  %675 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %676 = fmul double %675, 1.000000e-30
  %677 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %676) #4
  %678 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %679 = fmul double %678, 1.000000e-30
  %680 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %679) #4
  %681 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %682 = fmul double %681, 1.000000e-30
  %683 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %682) #4
  %684 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %685 = fmul double %684, 1.000000e-30
  %686 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %685) #4
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
