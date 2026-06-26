; ModuleID = 'results\paper_full\Misc_flops\round_004\output.ll'
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
  %4 = phi double [ %23, %41 ], [ undef, %0 ]
  %5 = phi double [ %14, %41 ], [ undef, %0 ]
  %6 = phi i32 [ %11, %41 ], [ 15625, %0 ]
  %7 = phi double [ %38, %41 ], [ 0.000000e+00, %0 ]
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
  %37 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %38 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %38, ptr @sa, align 8
  %39 = icmp eq i32 %6, 256000000
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %42

41:                                               ; preds = %36
  br label %3, !llvm.loop !9

.loopexit:                                        ; preds = %3
  br label %42

42:                                               ; preds = %.loopexit, %40
  %43 = phi double [ %23, %40 ], [ %4, %.loopexit ]
  %44 = phi double [ %14, %40 ], [ %5, %.loopexit ]
  %45 = phi i32 [ 512000000, %40 ], [ %6, %.loopexit ]
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
  %sa.promoted = load double, ptr @sa, align 8
  br label %99

99:                                               ; preds = %103, %58
  %100 = phi double [ %105, %103 ], [ %sa.promoted, %58 ]
  %101 = phi double [ %104, %103 ], [ %95, %58 ]
  %102 = phi i32 [ %106, %103 ], [ 1, %58 ]
  %.not = icmp sgt i32 %102, %87
  br i1 %.not, label %107, label %103

103:                                              ; preds = %99
  %104 = fneg double %101
  %105 = fsub double %100, %101
  store double %105, ptr @sa, align 8
  %106 = add nuw nsw i32 %102, 1
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
  %118 = load double, ptr @two, align 8
  %sa.promoted18 = load double, ptr @sa, align 8
  br label %119

119:                                              ; preds = %127, %114
  %120 = phi double [ %129, %127 ], [ %sa.promoted18, %114 ]
  %121 = phi double [ %135, %127 ], [ 0.000000e+00, %114 ]
  %122 = phi double [ %130, %127 ], [ %116, %114 ]
  %123 = phi double [ %128, %127 ], [ %101, %114 ]
  %124 = phi double [ %133, %127 ], [ 0.000000e+00, %114 ]
  %125 = phi double [ %132, %127 ], [ 0.000000e+00, %114 ]
  %126 = phi i32 [ %136, %127 ], [ 1, %114 ]
  %.not4 = icmp sgt i32 %126, %87
  br i1 %.not4, label %137, label %127

127:                                              ; preds = %119
  %128 = fneg double %123
  %129 = fsub double %120, %123
  store double %129, ptr @sa, align 8
  %130 = fadd double %122, %118
  %131 = fsub double %128, %130
  %132 = fadd double %125, %131
  %133 = call double @llvm.fmuladd.f64(double %123, double %130, double %124)
  %134 = fdiv double %123, %130
  %135 = fsub double %121, %134
  %136 = add nuw nsw i32 %126, 1
  br label %119, !llvm.loop !12

137:                                              ; preds = %119
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
  %146 = fmul double %145, %125
  %147 = load double, ptr @sc, align 8
  %148 = fdiv double %146, %147
  %149 = fptosi double %148 to i32
  %150 = load double, ptr @four, align 8
  %151 = fmul double %150, %121
  %152 = load double, ptr @five, align 8
  %153 = fdiv double %151, %152
  store double %153, ptr @sa, align 8
  %154 = fdiv double %152, %124
  %155 = fadd double %153, %154
  store double %155, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %156 = fmul double %124, %124
  %157 = fmul double %156, %124
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
  %174 = load double, ptr @one, align 8
  %175 = load double, ptr @A6, align 8
  %176 = load double, ptr @A5, align 8
  %177 = fneg double %176
  %178 = load double, ptr @A4, align 8
  %179 = load double, ptr @A3, align 8
  %180 = fneg double %179
  %181 = load double, ptr @A2, align 8
  %182 = load double, ptr @A1, align 8
  br label %183

183:                                              ; preds = %187, %137
  %184 = phi double [ %188, %187 ], [ 0.000000e+00, %137 ]
  %185 = phi double [ %197, %187 ], [ 0.000000e+00, %137 ]
  %186 = phi i32 [ %198, %187 ], [ 1, %137 ]
  %.not5.not = icmp slt i32 %186, %149
  br i1 %.not5.not, label %187, label %199

187:                                              ; preds = %183
  %188 = fadd double %184, %174
  %189 = fmul double %188, %172
  %190 = fmul double %189, %189
  %191 = call double @llvm.fmuladd.f64(double %175, double %190, double %177)
  %192 = call double @llvm.fmuladd.f64(double %191, double %190, double %178)
  %193 = call double @llvm.fmuladd.f64(double %192, double %190, double %180)
  %194 = call double @llvm.fmuladd.f64(double %193, double %190, double %181)
  %195 = call double @llvm.fmuladd.f64(double %194, double %190, double %182)
  %196 = call double @llvm.fmuladd.f64(double %195, double %190, double %174)
  %197 = call double @llvm.fmuladd.f64(double %189, double %196, double %185)
  %198 = add nuw nsw i32 %186, 1
  br label %183, !llvm.loop !13

199:                                              ; preds = %183
  %200 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %201 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %202 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %203 = load double, ptr @nulltime, align 8
  %204 = fneg double %203
  %205 = call double @llvm.fmuladd.f64(double %201, double %202, double %204)
  store double %205, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %206 = load double, ptr @piref, align 8
  %207 = load double, ptr @three, align 8
  %208 = fdiv double %206, %207
  %209 = fmul double %208, %208
  %210 = load double, ptr @A6, align 8
  %211 = load double, ptr @A5, align 8
  %212 = fneg double %211
  %213 = call double @llvm.fmuladd.f64(double %210, double %209, double %212)
  %214 = load double, ptr @A4, align 8
  %215 = call double @llvm.fmuladd.f64(double %213, double %209, double %214)
  %216 = load double, ptr @A3, align 8
  %217 = fneg double %216
  %218 = call double @llvm.fmuladd.f64(double %215, double %209, double %217)
  %219 = load double, ptr @A2, align 8
  %220 = call double @llvm.fmuladd.f64(double %218, double %209, double %219)
  %221 = load double, ptr @A1, align 8
  %222 = call double @llvm.fmuladd.f64(double %220, double %209, double %221)
  %223 = load double, ptr @one, align 8
  %224 = call double @llvm.fmuladd.f64(double %222, double %209, double %223)
  %225 = fmul double %208, %224
  store double %225, ptr @sa, align 8
  %226 = fdiv double %205, 1.700000e+01
  store double %226, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %227 = load double, ptr @two, align 8
  %228 = call double @llvm.fmuladd.f64(double %227, double %185, double %225)
  %229 = fmul double %172, %228
  %230 = fdiv double %229, %227
  store double %230, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %231 = fadd double %230, -5.000000e-01
  store double %231, ptr @sc, align 8
  %232 = fdiv double %223, %226
  store double %232, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %233 = fmul double %231, 1.000000e-30
  %234 = fmul double %205, 1.000000e-30
  %235 = fmul double %232, 1.000000e-30
  %236 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %233, double noundef %234, double noundef %235) #4
  %237 = load double, ptr @A3, align 8
  %238 = fneg double %237
  store double %238, ptr @A3, align 8
  %239 = load double, ptr @A5, align 8
  %240 = fneg double %239
  store double %240, ptr @A5, align 8
  %241 = load double, ptr @piref, align 8
  %242 = load double, ptr @three, align 8
  %243 = fmul double %242, %170
  %244 = fdiv double %241, %243
  %245 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %246 = load double, ptr @B6, align 8
  %247 = load double, ptr @B5, align 8
  %248 = load double, ptr @B4, align 8
  %249 = load double, ptr @B3, align 8
  %250 = load double, ptr @B2, align 8
  %251 = load double, ptr @B1, align 8
  %252 = load double, ptr @one, align 8
  br label %253

253:                                              ; preds = %256, %199
  %254 = phi double [ %266, %256 ], [ 0.000000e+00, %199 ]
  %255 = phi i32 [ %267, %256 ], [ 1, %199 ]
  %.not6.not = icmp slt i32 %255, %149
  br i1 %.not6.not, label %256, label %268

256:                                              ; preds = %253
  %257 = uitofp nneg i32 %255 to double
  %258 = fmul double %244, %257
  %259 = fmul double %258, %258
  %260 = call double @llvm.fmuladd.f64(double %246, double %259, double %247)
  %261 = call double @llvm.fmuladd.f64(double %259, double %260, double %248)
  %262 = call double @llvm.fmuladd.f64(double %259, double %261, double %249)
  %263 = call double @llvm.fmuladd.f64(double %259, double %262, double %250)
  %264 = call double @llvm.fmuladd.f64(double %259, double %263, double %251)
  %265 = call double @llvm.fmuladd.f64(double %259, double %264, double %254)
  %266 = fadd double %265, %252
  %267 = add nuw nsw i32 %255, 1
  br label %253, !llvm.loop !14

268:                                              ; preds = %253
  %269 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %270 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %271 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %272 = load double, ptr @nulltime, align 8
  %273 = fneg double %272
  %274 = call double @llvm.fmuladd.f64(double %270, double %271, double %273)
  store double %274, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %275 = load double, ptr @piref, align 8
  %276 = load double, ptr @three, align 8
  %277 = fdiv double %275, %276
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
  %290 = load double, ptr @one, align 8
  %291 = call double @llvm.fmuladd.f64(double %278, double %289, double %290)
  store double %291, ptr @sa, align 8
  %292 = fdiv double %274, 1.500000e+01
  store double %292, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %293 = fadd double %291, %290
  %294 = load double, ptr @two, align 8
  %295 = call double @llvm.fmuladd.f64(double %294, double %254, double %293)
  %296 = fmul double %244, %295
  %297 = fdiv double %296, %294
  store double %297, ptr @sa, align 8
  %298 = load double, ptr @A6, align 8
  %299 = load double, ptr @A5, align 8
  %300 = call double @llvm.fmuladd.f64(double %298, double %278, double %299)
  %301 = load double, ptr @A4, align 8
  %302 = call double @llvm.fmuladd.f64(double %300, double %278, double %301)
  %303 = load double, ptr @A3, align 8
  %304 = call double @llvm.fmuladd.f64(double %302, double %278, double %303)
  %305 = load double, ptr @A2, align 8
  %306 = call double @llvm.fmuladd.f64(double %304, double %278, double %305)
  %307 = load double, ptr @A1, align 8
  %308 = call double @llvm.fmuladd.f64(double %306, double %278, double %307)
  %309 = load double, ptr @A0, align 8
  %310 = call double @llvm.fmuladd.f64(double %308, double %278, double %309)
  %311 = fmul double %277, %310
  store double %311, ptr @sb, align 8
  %312 = fsub double %297, %311
  store double %312, ptr @sc, align 8
  %313 = fdiv double %290, %292
  store double %313, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %314 = fmul double %312, 1.000000e-30
  %315 = fmul double %274, 1.000000e-30
  %316 = fmul double %313, 1.000000e-30
  %317 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %314, double noundef %315, double noundef %316) #4
  %318 = load double, ptr @piref, align 8
  %319 = load double, ptr @three, align 8
  %320 = fmul double %319, %170
  %321 = fdiv double %318, %320
  %322 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %323 = load double, ptr @A6, align 8
  %324 = load double, ptr @A5, align 8
  %325 = load double, ptr @A4, align 8
  %326 = load double, ptr @A3, align 8
  %327 = load double, ptr @A2, align 8
  %328 = load double, ptr @A1, align 8
  %329 = load double, ptr @one, align 8
  %330 = load double, ptr @B6, align 8
  %331 = load double, ptr @B5, align 8
  %332 = load double, ptr @B4, align 8
  %333 = load double, ptr @B3, align 8
  %334 = load double, ptr @B2, align 8
  %335 = load double, ptr @B1, align 8
  br label %336

336:                                              ; preds = %339, %268
  %337 = phi double [ %357, %339 ], [ 0.000000e+00, %268 ]
  %338 = phi i32 [ %358, %339 ], [ 1, %268 ]
  %.not7.not = icmp slt i32 %338, %149
  br i1 %.not7.not, label %339, label %359

339:                                              ; preds = %336
  %340 = uitofp nneg i32 %338 to double
  %341 = fmul double %321, %340
  %342 = fmul double %341, %341
  %343 = call double @llvm.fmuladd.f64(double %323, double %342, double %324)
  %344 = call double @llvm.fmuladd.f64(double %343, double %342, double %325)
  %345 = call double @llvm.fmuladd.f64(double %344, double %342, double %326)
  %346 = call double @llvm.fmuladd.f64(double %345, double %342, double %327)
  %347 = call double @llvm.fmuladd.f64(double %346, double %342, double %328)
  %348 = call double @llvm.fmuladd.f64(double %347, double %342, double %329)
  %349 = fmul double %341, %348
  %350 = call double @llvm.fmuladd.f64(double %330, double %342, double %331)
  %351 = call double @llvm.fmuladd.f64(double %342, double %350, double %332)
  %352 = call double @llvm.fmuladd.f64(double %342, double %351, double %333)
  %353 = call double @llvm.fmuladd.f64(double %342, double %352, double %334)
  %354 = call double @llvm.fmuladd.f64(double %342, double %353, double %335)
  %355 = call double @llvm.fmuladd.f64(double %342, double %354, double %329)
  %356 = fdiv double %349, %355
  %357 = fadd double %337, %356
  %358 = add nuw nsw i32 %338, 1
  br label %336, !llvm.loop !15

359:                                              ; preds = %336
  %360 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %361 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %362 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %363 = load double, ptr @nulltime, align 8
  %364 = fneg double %363
  %365 = call double @llvm.fmuladd.f64(double %361, double %362, double %364)
  store double %365, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %366 = load double, ptr @piref, align 8
  %367 = load double, ptr @three, align 8
  %368 = fdiv double %366, %367
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
  store double %383, ptr @sa, align 8
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
  %395 = call double @llvm.fmuladd.f64(double %369, double %394, double %381)
  store double %395, ptr @sb, align 8
  %396 = fdiv double %383, %395
  store double %396, ptr @sa, align 8
  %397 = fdiv double %365, 2.900000e+01
  store double %397, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %398 = load double, ptr @two, align 8
  %399 = call double @llvm.fmuladd.f64(double %398, double %337, double %396)
  %400 = fmul double %321, %399
  %401 = fdiv double %400, %398
  store double %401, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %402 = fadd double %401, f0xBFE62E42FEFA39EF
  store double %402, ptr @sc, align 8
  %403 = fdiv double %381, %397
  store double %403, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %404 = fmul double %402, 1.000000e-30
  %405 = fmul double %365, 1.000000e-30
  %406 = fmul double %403, 1.000000e-30
  %407 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %404, double noundef %405, double noundef %406) #4
  %408 = load double, ptr @piref, align 8
  %409 = load double, ptr @four, align 8
  %410 = fmul double %409, %170
  %411 = fdiv double %408, %410
  %412 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %413 = load double, ptr @A6, align 8
  %414 = load double, ptr @A5, align 8
  %415 = load double, ptr @A4, align 8
  %416 = load double, ptr @A3, align 8
  %417 = load double, ptr @A2, align 8
  %418 = load double, ptr @A1, align 8
  %419 = load double, ptr @one, align 8
  %420 = load double, ptr @B6, align 8
  %421 = load double, ptr @B5, align 8
  %422 = load double, ptr @B4, align 8
  %423 = load double, ptr @B3, align 8
  %424 = load double, ptr @B2, align 8
  %425 = load double, ptr @B1, align 8
  br label %426

426:                                              ; preds = %429, %359
  %427 = phi double [ %446, %429 ], [ 0.000000e+00, %359 ]
  %428 = phi i32 [ %447, %429 ], [ 1, %359 ]
  %.not8.not = icmp slt i32 %428, %149
  br i1 %.not8.not, label %429, label %448

429:                                              ; preds = %426
  %430 = uitofp nneg i32 %428 to double
  %431 = fmul double %411, %430
  %432 = fmul double %431, %431
  %433 = call double @llvm.fmuladd.f64(double %413, double %432, double %414)
  %434 = call double @llvm.fmuladd.f64(double %433, double %432, double %415)
  %435 = call double @llvm.fmuladd.f64(double %434, double %432, double %416)
  %436 = call double @llvm.fmuladd.f64(double %435, double %432, double %417)
  %437 = call double @llvm.fmuladd.f64(double %436, double %432, double %418)
  %438 = call double @llvm.fmuladd.f64(double %437, double %432, double %419)
  %439 = fmul double %431, %438
  %440 = call double @llvm.fmuladd.f64(double %420, double %432, double %421)
  %441 = call double @llvm.fmuladd.f64(double %432, double %440, double %422)
  %442 = call double @llvm.fmuladd.f64(double %432, double %441, double %423)
  %443 = call double @llvm.fmuladd.f64(double %432, double %442, double %424)
  %444 = call double @llvm.fmuladd.f64(double %432, double %443, double %425)
  %445 = call double @llvm.fmuladd.f64(double %432, double %444, double %419)
  %446 = call double @llvm.fmuladd.f64(double %439, double %445, double %427)
  %447 = add nuw nsw i32 %428, 1
  br label %426, !llvm.loop !16

448:                                              ; preds = %426
  %449 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %450 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %451 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %452 = load double, ptr @nulltime, align 8
  %453 = fneg double %452
  %454 = call double @llvm.fmuladd.f64(double %450, double %451, double %453)
  store double %454, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %455 = load double, ptr @piref, align 8
  %456 = load double, ptr @four, align 8
  %457 = fdiv double %455, %456
  %458 = fmul double %457, %457
  %459 = load double, ptr @A6, align 8
  %460 = load double, ptr @A5, align 8
  %461 = call double @llvm.fmuladd.f64(double %459, double %458, double %460)
  %462 = load double, ptr @A4, align 8
  %463 = call double @llvm.fmuladd.f64(double %461, double %458, double %462)
  %464 = load double, ptr @A3, align 8
  %465 = call double @llvm.fmuladd.f64(double %463, double %458, double %464)
  %466 = load double, ptr @A2, align 8
  %467 = call double @llvm.fmuladd.f64(double %465, double %458, double %466)
  %468 = load double, ptr @A1, align 8
  %469 = call double @llvm.fmuladd.f64(double %467, double %458, double %468)
  %470 = load double, ptr @one, align 8
  %471 = call double @llvm.fmuladd.f64(double %469, double %458, double %470)
  %472 = fmul double %457, %471
  store double %472, ptr @sa, align 8
  %473 = load double, ptr @B6, align 8
  %474 = load double, ptr @B5, align 8
  %475 = call double @llvm.fmuladd.f64(double %473, double %458, double %474)
  %476 = load double, ptr @B4, align 8
  %477 = call double @llvm.fmuladd.f64(double %458, double %475, double %476)
  %478 = load double, ptr @B3, align 8
  %479 = call double @llvm.fmuladd.f64(double %458, double %477, double %478)
  %480 = load double, ptr @B2, align 8
  %481 = call double @llvm.fmuladd.f64(double %458, double %479, double %480)
  %482 = load double, ptr @B1, align 8
  %483 = call double @llvm.fmuladd.f64(double %458, double %481, double %482)
  %484 = call double @llvm.fmuladd.f64(double %458, double %483, double %470)
  store double %484, ptr @sb, align 8
  %485 = fmul double %472, %484
  store double %485, ptr @sa, align 8
  %486 = fdiv double %454, 2.900000e+01
  store double %486, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %487 = load double, ptr @two, align 8
  %488 = call double @llvm.fmuladd.f64(double %487, double %427, double %485)
  %489 = fmul double %411, %488
  %490 = fdiv double %489, %487
  store double %490, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %491 = fadd double %490, -2.500000e-01
  store double %491, ptr @sc, align 8
  %492 = fdiv double %470, %486
  store double %492, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %493 = fmul double %491, 1.000000e-30
  %494 = fmul double %454, 1.000000e-30
  %495 = fmul double %492, 1.000000e-30
  %496 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %493, double noundef %494, double noundef %495) #4
  %497 = load double, ptr @one, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %498 = fdiv double f0x40599541F7F192A4, %170
  %499 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %500

500:                                              ; preds = %503, %448
  %501 = phi double [ %515, %503 ], [ 0.000000e+00, %448 ]
  %502 = phi i32 [ %516, %503 ], [ 1, %448 ]
  %.not9.not = icmp slt i32 %502, %149
  br i1 %.not9.not, label %503, label %517

503:                                              ; preds = %500
  %504 = uitofp nneg i32 %502 to double
  %505 = fmul double %498, %504
  %506 = fmul double %505, %505
  %507 = fadd double %505, %497
  %508 = fdiv double %497, %507
  %509 = fsub double %501, %508
  %510 = fadd double %506, %497
  %511 = fdiv double %505, %510
  %512 = fsub double %509, %511
  %513 = call double @llvm.fmuladd.f64(double %505, double %506, double %497)
  %514 = fdiv double %506, %513
  %515 = fsub double %512, %514
  %516 = add nuw nsw i32 %502, 1
  br label %500, !llvm.loop !17

517:                                              ; preds = %500
  %518 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %519 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %520 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %521 = load double, ptr @nulltime, align 8
  %522 = fneg double %521
  %523 = call double @llvm.fmuladd.f64(double %519, double %520, double %522)
  store double %523, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %524 = fdiv double %523, 1.200000e+01
  store double %524, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %525 = load double, ptr @sa, align 8
  %526 = fmul double %525, %525
  %527 = fneg double %497
  %528 = fadd double %525, %497
  %529 = fdiv double %497, %528
  %530 = fsub double %527, %529
  %531 = fadd double %526, %497
  %532 = fdiv double %525, %531
  %533 = fsub double %530, %532
  %534 = call double @llvm.fmuladd.f64(double %525, double %526, double %497)
  %535 = fdiv double %526, %534
  %536 = fsub double %533, %535
  store double %536, ptr @sa, align 8
  %537 = fmul nnan double %498, 1.800000e+01
  %538 = load double, ptr @two, align 8
  %539 = call double @llvm.fmuladd.f64(double %538, double %501, double %536)
  %540 = fmul double %537, %539
  store double %540, ptr @sa, align 8
  %541 = fptosi double %540 to i32
  %542 = mul nsw i32 %541, -2000
  %543 = sitofp i32 %542 to double
  %544 = load double, ptr @scale, align 8
  %545 = fdiv double %543, %544
  %546 = fptosi double %545 to i32
  %547 = fadd double %540, 5.002000e+02
  store double %547, ptr @sc, align 8
  %548 = load double, ptr @one, align 8
  %549 = fdiv double %548, %524
  store double %549, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %550 = fmul double %547, 1.000000e-30
  %551 = fmul double %523, 1.000000e-30
  %552 = fmul double %549, 1.000000e-30
  %553 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %550, double noundef %551, double noundef %552) #4
  %554 = load double, ptr @piref, align 8
  %555 = load double, ptr @three, align 8
  %556 = sitofp i32 %546 to double
  %557 = fmul double %555, %556
  %558 = fdiv double %554, %557
  %559 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %560 = load double, ptr @B6, align 8
  %561 = load double, ptr @B5, align 8
  %562 = load double, ptr @B4, align 8
  %563 = load double, ptr @B3, align 8
  %564 = load double, ptr @B2, align 8
  %565 = load double, ptr @B1, align 8
  %566 = load double, ptr @one, align 8
  %567 = load double, ptr @A6, align 8
  %568 = load double, ptr @A5, align 8
  %569 = load double, ptr @A4, align 8
  %570 = load double, ptr @A3, align 8
  %571 = load double, ptr @A2, align 8
  %572 = load double, ptr @A1, align 8
  br label %573

573:                                              ; preds = %576, %517
  %574 = phi double [ %594, %576 ], [ 0.000000e+00, %517 ]
  %575 = phi i32 [ %595, %576 ], [ 1, %517 ]
  %.not10.not = icmp slt i32 %575, %546
  br i1 %.not10.not, label %576, label %596

576:                                              ; preds = %573
  %577 = uitofp nneg i32 %575 to double
  %578 = fmul double %558, %577
  %579 = fmul double %578, %578
  %580 = call double @llvm.fmuladd.f64(double %560, double %579, double %561)
  %581 = call double @llvm.fmuladd.f64(double %579, double %580, double %562)
  %582 = call double @llvm.fmuladd.f64(double %579, double %581, double %563)
  %583 = call double @llvm.fmuladd.f64(double %579, double %582, double %564)
  %584 = call double @llvm.fmuladd.f64(double %579, double %583, double %565)
  %585 = call double @llvm.fmuladd.f64(double %579, double %584, double %566)
  %586 = fmul double %585, %585
  %587 = fmul double %586, %578
  %588 = call double @llvm.fmuladd.f64(double %567, double %579, double %568)
  %589 = call double @llvm.fmuladd.f64(double %588, double %579, double %569)
  %590 = call double @llvm.fmuladd.f64(double %589, double %579, double %570)
  %591 = call double @llvm.fmuladd.f64(double %590, double %579, double %571)
  %592 = call double @llvm.fmuladd.f64(double %591, double %579, double %572)
  %593 = call double @llvm.fmuladd.f64(double %592, double %579, double %566)
  %594 = call double @llvm.fmuladd.f64(double %587, double %593, double %574)
  %595 = add nuw nsw i32 %575, 1
  br label %573, !llvm.loop !18

596:                                              ; preds = %573
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
  %637 = call double @llvm.fmuladd.f64(double %636, double %574, double %634)
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
  %678 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %546) #4
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
