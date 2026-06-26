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
@str = private unnamed_addr constant [57 x i8] c"   FLOPS C Program (Double Precision), V2.0 18 Dec 1992\0A\00", align 1
@str.1 = private unnamed_addr constant [47 x i8] c"   Module     Error        RunTime      MFLOPS\00", align 1
@str.2 = private unnamed_addr constant [35 x i8] c"                            (usec)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %putchar = call i32 @putchar(i32 10)
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  store i32 15625, ptr %6, align 4
  store double 6.400000e+01, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  store double 1.000000e+00, ptr @TLimit, align 8
  store i32 512000000, ptr %7, align 4
  store double f0x400921FB54442D18, ptr @piref, align 8
  store double 1.000000e+00, ptr @one, align 8
  store double 2.000000e+00, ptr @two, align 8
  store double 3.000000e+00, ptr @three, align 8
  store double 4.000000e+00, ptr @four, align 8
  store double 5.000000e+00, ptr @five, align 8
  store double 1.000000e+00, ptr @scale, align 8
  %puts1 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  %11 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %12 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %13 = load i32, ptr %6, align 4
  store i32 %13, ptr %10, align 4
  store double 0.000000e+00, ptr @sa, align 8
  br label %14

14:                                               ; preds = %57, %0
  %15 = load double, ptr @sa, align 8
  %16 = load double, ptr @TLimit, align 8
  %17 = fcmp olt double %15, %16
  br i1 %17, label %18, label %58

18:                                               ; preds = %14
  %19 = load i32, ptr %10, align 4
  %20 = shl nsw i32 %19, 1
  store i32 %20, ptr %10, align 4
  %21 = load double, ptr @one, align 8
  %22 = sitofp i32 %20 to double
  %23 = fdiv double %21, %22
  store double %23, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  store double %21, ptr %4, align 8
  %24 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %25

25:                                               ; preds = %47, %18
  %storemerge = phi i32 [ 1, %18 ], [ %49, %47 ]
  store i32 %storemerge, ptr %8, align 4
  %26 = load i32, ptr %10, align 4
  %.not.not = icmp slt i32 %storemerge, %26
  br i1 %.not.not, label %27, label %50

27:                                               ; preds = %25
  %28 = load double, ptr %3, align 8
  %29 = load double, ptr %4, align 8
  %30 = fadd double %28, %29
  store double %30, ptr %3, align 8
  %31 = load double, ptr %5, align 8
  %32 = fmul double %30, %31
  store double %32, ptr %2, align 8
  %33 = load double, ptr %1, align 8
  %34 = load double, ptr @D1, align 8
  %35 = load double, ptr @D2, align 8
  %36 = load double, ptr @D3, align 8
  %37 = call double @llvm.fmuladd.f64(double %32, double %36, double %35)
  %38 = call double @llvm.fmuladd.f64(double %32, double %37, double %34)
  %39 = load double, ptr %4, align 8
  %40 = load double, ptr @E2, align 8
  %41 = load double, ptr @E3, align 8
  %42 = call double @llvm.fmuladd.f64(double %32, double %41, double %40)
  %43 = call double @llvm.fmuladd.f64(double %32, double %42, double %34)
  %44 = call double @llvm.fmuladd.f64(double %32, double %43, double %39)
  %45 = fdiv double %38, %44
  %46 = fadd double %33, %45
  store double %46, ptr %1, align 8
  br label %47

47:                                               ; preds = %27
  %48 = load i32, ptr %8, align 4
  %49 = add nsw i32 %48, 1
  br label %25, !llvm.loop !7

50:                                               ; preds = %25
  %51 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %52 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %52, ptr @sa, align 8
  %53 = load i32, ptr %10, align 4
  %54 = load i32, ptr %7, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %58

57:                                               ; preds = %50
  br label %14, !llvm.loop !9

58:                                               ; preds = %56, %14
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %59 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %60

60:                                               ; preds = %63, %58
  %storemerge3 = phi i32 [ 1, %58 ], [ %64, %63 ]
  store i32 %storemerge3, ptr %8, align 4
  %61 = load i32, ptr %10, align 4
  %.not.not4 = icmp slt i32 %storemerge3, %61
  br i1 %.not.not4, label %62, label %65

62:                                               ; preds = %60
  br label %63

63:                                               ; preds = %62
  %64 = add nsw i32 %storemerge3, 1
  br label %60, !llvm.loop !10

65:                                               ; preds = %60
  %66 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %67 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %68 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %69 = fmul double %67, %68
  %70 = fcmp olt double %69, 0.000000e+00
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71, %65
  %storemerge5 = phi double [ 0.000000e+00, %71 ], [ %69, %65 ]
  store double %storemerge5, ptr @nulltime, align 8
  %73 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %74 = load double, ptr @sa, align 8
  %75 = fneg double %storemerge5
  %76 = call double @llvm.fmuladd.f64(double %73, double %74, double %75)
  store double %76, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %77 = load double, ptr @D1, align 8
  %78 = load double, ptr @D2, align 8
  %79 = fadd double %77, %78
  %80 = load double, ptr @D3, align 8
  %81 = fadd double %79, %80
  %82 = load double, ptr @one, align 8
  %83 = fadd double %82, %77
  %84 = load double, ptr @E2, align 8
  %85 = fadd double %83, %84
  %86 = load double, ptr @E3, align 8
  %87 = fadd double %85, %86
  %88 = fdiv double %81, %87
  store double %88, ptr @sa, align 8
  %89 = load double, ptr @D1, align 8
  store double %89, ptr @sb, align 8
  %90 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %91 = fdiv double %90, 1.400000e+01
  store double %91, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %92 = load double, ptr %5, align 8
  %93 = load double, ptr @sa, align 8
  %94 = fadd double %93, %89
  %95 = load double, ptr @two, align 8
  %96 = load double, ptr %1, align 8
  %97 = call double @llvm.fmuladd.f64(double %95, double %96, double %94)
  %98 = fmul double %92, %97
  %99 = fdiv double %98, %95
  store double %99, ptr @sa, align 8
  %100 = load double, ptr @one, align 8
  %101 = fdiv double %100, %99
  store double %101, ptr @sb, align 8
  %102 = fptosi double %101 to i32
  %103 = mul nsw i32 %102, 40000
  %104 = sitofp i32 %103 to double
  %105 = load double, ptr @scale, align 8
  %106 = fdiv double %104, %105
  %107 = fptosi double %106 to i32
  store i32 %107, ptr %10, align 4
  %108 = load double, ptr @sb, align 8
  %109 = fadd double %108, -2.520000e+01
  store double %109, ptr @sc, align 8
  %110 = load double, ptr @one, align 8
  %111 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %112 = fdiv double %110, %111
  store double %112, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %113 = fmul double %109, 1.000000e-30
  %114 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %115 = fmul double %114, 1.000000e-30
  %116 = fmul double %112, 1.000000e-30
  %117 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %113, double noundef %115, double noundef %116) #4
  %118 = load i32, ptr %10, align 4
  store i32 %118, ptr %9, align 4
  %119 = load double, ptr @five, align 8
  %120 = fneg double %119
  store double %120, ptr %1, align 8
  %121 = load double, ptr @one, align 8
  %122 = fneg double %121
  store double %122, ptr @sa, align 8
  %123 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %124

124:                                              ; preds = %131, %72
  %storemerge6 = phi i32 [ 1, %72 ], [ %133, %131 ]
  store i32 %storemerge6, ptr %8, align 4
  %125 = load i32, ptr %9, align 4
  %.not = icmp sgt i32 %storemerge6, %125
  br i1 %.not, label %134, label %126

126:                                              ; preds = %124
  %127 = load double, ptr %1, align 8
  %128 = fneg double %127
  store double %128, ptr %1, align 8
  %129 = load double, ptr @sa, align 8
  %130 = fsub double %129, %127
  store double %130, ptr @sa, align 8
  br label %131

131:                                              ; preds = %126
  %132 = load i32, ptr %8, align 4
  %133 = add nsw i32 %132, 1
  br label %124, !llvm.loop !11

134:                                              ; preds = %124
  %135 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %136 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %137 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %138 = fmul double %136, %137
  %139 = fcmp olt double %138, 0.000000e+00
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  br label %141

141:                                              ; preds = %140, %134
  %storemerge7 = phi double [ 0.000000e+00, %140 ], [ %138, %134 ]
  store double %storemerge7, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %142 = load i32, ptr %9, align 4
  %143 = sitofp i32 %142 to double
  store double %143, ptr @sc, align 8
  %144 = load double, ptr @sa, align 8
  store double %144, ptr %2, align 8
  store double 0.000000e+00, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  %145 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %146

146:                                              ; preds = %168, %141
  %storemerge8 = phi i32 [ 1, %141 ], [ %170, %168 ]
  store i32 %storemerge8, ptr %8, align 4
  %147 = load i32, ptr %9, align 4
  %.not9 = icmp sgt i32 %storemerge8, %147
  br i1 %.not9, label %171, label %148

148:                                              ; preds = %146
  %149 = load double, ptr %1, align 8
  %150 = fneg double %149
  store double %150, ptr %1, align 8
  %151 = load double, ptr @sa, align 8
  %152 = fsub double %151, %149
  store double %152, ptr @sa, align 8
  %153 = load double, ptr %2, align 8
  %154 = load double, ptr @two, align 8
  %155 = fadd double %153, %154
  store double %155, ptr %2, align 8
  %156 = load double, ptr %5, align 8
  %157 = load double, ptr %1, align 8
  %158 = fsub double %157, %155
  %159 = fadd double %156, %158
  store double %159, ptr %5, align 8
  %160 = load double, ptr %3, align 8
  %161 = load double, ptr %2, align 8
  %162 = fneg double %157
  %163 = call double @llvm.fmuladd.f64(double %162, double %161, double %160)
  store double %163, ptr %3, align 8
  %164 = load double, ptr %4, align 8
  %165 = load double, ptr %1, align 8
  %166 = fdiv double %165, %161
  %167 = fadd double %164, %166
  store double %167, ptr %4, align 8
  br label %168

168:                                              ; preds = %148
  %169 = load i32, ptr %8, align 4
  %170 = add nsw i32 %169, 1
  br label %146, !llvm.loop !12

171:                                              ; preds = %146
  %172 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %173 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %174 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %175 = fmul double %173, %174
  store double %175, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %176 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %177 = fsub double %175, %176
  %178 = fdiv double %177, 7.000000e+00
  store double %178, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %179 = load double, ptr @sa, align 8
  %180 = load double, ptr %5, align 8
  %181 = fmul double %179, %180
  %182 = load double, ptr @sc, align 8
  %183 = fdiv double %181, %182
  %184 = fptosi double %183 to i32
  store i32 %184, ptr %9, align 4
  %185 = load double, ptr @four, align 8
  %186 = load double, ptr %4, align 8
  %187 = fmul double %185, %186
  %188 = load double, ptr @five, align 8
  %189 = fdiv double %187, %188
  store double %189, ptr @sa, align 8
  %190 = load double, ptr %3, align 8
  %191 = fdiv double %188, %190
  %192 = fadd double %189, %191
  store double %192, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %193 = fmul double %190, %190
  %194 = fmul double %193, %190
  %195 = fdiv double 3.125000e+01, %194
  %196 = fsub double %192, %195
  store double %196, ptr @piprg, align 8
  %197 = load double, ptr @piref, align 8
  %198 = fsub double %196, %197
  store double %198, ptr @pierr, align 8
  %199 = load double, ptr @one, align 8
  %200 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %201 = fdiv double %199, %200
  store double %201, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %202 = fmul double %198, 1.000000e-30
  %203 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %204 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %205 = fsub double %203, %204
  %206 = fmul double %205, 1.000000e-30
  %207 = fmul double %201, 1.000000e-30
  %208 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %202, double noundef %206, double noundef %207) #4
  %209 = load double, ptr @piref, align 8
  %210 = load double, ptr @three, align 8
  %211 = load i32, ptr %9, align 4
  %212 = sitofp i32 %211 to double
  %213 = fmul double %210, %212
  %214 = fdiv double %209, %213
  store double %214, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %215 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %216

216:                                              ; preds = %242, %171
  %storemerge10 = phi i32 [ 1, %171 ], [ %244, %242 ]
  store i32 %storemerge10, ptr %8, align 4
  %217 = load i32, ptr %9, align 4
  %.not11.not = icmp slt i32 %storemerge10, %217
  br i1 %.not11.not, label %218, label %245

218:                                              ; preds = %216
  %219 = load double, ptr %3, align 8
  %220 = load double, ptr @one, align 8
  %221 = fadd double %219, %220
  store double %221, ptr %3, align 8
  %222 = load double, ptr %5, align 8
  %223 = fmul double %221, %222
  store double %223, ptr %2, align 8
  %224 = fmul double %223, %223
  store double %224, ptr %4, align 8
  %225 = load double, ptr %1, align 8
  %226 = load double, ptr @A6, align 8
  %227 = load double, ptr @A5, align 8
  %228 = fneg double %227
  %229 = call double @llvm.fmuladd.f64(double %226, double %224, double %228)
  %230 = load double, ptr @A4, align 8
  %231 = call double @llvm.fmuladd.f64(double %229, double %224, double %230)
  %232 = load double, ptr @A3, align 8
  %233 = fneg double %232
  %234 = call double @llvm.fmuladd.f64(double %231, double %224, double %233)
  %235 = load double, ptr @A2, align 8
  %236 = call double @llvm.fmuladd.f64(double %234, double %224, double %235)
  %237 = load double, ptr @A1, align 8
  %238 = call double @llvm.fmuladd.f64(double %236, double %224, double %237)
  %239 = load double, ptr @one, align 8
  %240 = call double @llvm.fmuladd.f64(double %238, double %224, double %239)
  %241 = call double @llvm.fmuladd.f64(double %223, double %240, double %225)
  store double %241, ptr %1, align 8
  br label %242

242:                                              ; preds = %218
  %243 = load i32, ptr %8, align 4
  %244 = add nsw i32 %243, 1
  br label %216, !llvm.loop !13

245:                                              ; preds = %216
  %246 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %247 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %248 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %249 = load double, ptr @nulltime, align 8
  %250 = fneg double %249
  %251 = call double @llvm.fmuladd.f64(double %247, double %248, double %250)
  store double %251, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %252 = load double, ptr @piref, align 8
  %253 = load double, ptr @three, align 8
  %254 = fdiv double %252, %253
  store double %254, ptr %2, align 8
  %255 = fmul double %254, %254
  store double %255, ptr %4, align 8
  %256 = load double, ptr @A6, align 8
  %257 = load double, ptr @A5, align 8
  %258 = fneg double %257
  %259 = call double @llvm.fmuladd.f64(double %256, double %255, double %258)
  %260 = load double, ptr @A4, align 8
  %261 = call double @llvm.fmuladd.f64(double %259, double %255, double %260)
  %262 = load double, ptr @A3, align 8
  %263 = fneg double %262
  %264 = call double @llvm.fmuladd.f64(double %261, double %255, double %263)
  %265 = load double, ptr @A2, align 8
  %266 = call double @llvm.fmuladd.f64(double %264, double %255, double %265)
  %267 = load double, ptr @A1, align 8
  %268 = call double @llvm.fmuladd.f64(double %266, double %255, double %267)
  %269 = load double, ptr @one, align 8
  %270 = call double @llvm.fmuladd.f64(double %268, double %255, double %269)
  %271 = fmul double %254, %270
  store double %271, ptr @sa, align 8
  %272 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %273 = fdiv double %272, 1.700000e+01
  store double %273, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %274 = load double, ptr %5, align 8
  %275 = load double, ptr @two, align 8
  %276 = load double, ptr %1, align 8
  %277 = call double @llvm.fmuladd.f64(double %275, double %276, double %271)
  %278 = fmul double %274, %277
  %279 = fdiv double %278, %275
  store double %279, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %280 = fadd double %279, -5.000000e-01
  store double %280, ptr @sc, align 8
  %281 = load double, ptr @one, align 8
  %282 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %283 = fdiv double %281, %282
  store double %283, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %284 = fmul double %280, 1.000000e-30
  %285 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %286 = fmul double %285, 1.000000e-30
  %287 = fmul double %283, 1.000000e-30
  %288 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %284, double noundef %286, double noundef %287) #4
  %289 = load double, ptr @A3, align 8
  %290 = fneg double %289
  store double %290, ptr @A3, align 8
  %291 = load double, ptr @A5, align 8
  %292 = fneg double %291
  store double %292, ptr @A5, align 8
  %293 = load double, ptr @piref, align 8
  %294 = load double, ptr @three, align 8
  %295 = load i32, ptr %9, align 4
  %296 = sitofp i32 %295 to double
  %297 = fmul double %294, %296
  %298 = fdiv double %293, %297
  store double %298, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %299 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %300

300:                                              ; preds = %322, %245
  %storemerge12 = phi i32 [ 1, %245 ], [ %324, %322 ]
  store i32 %storemerge12, ptr %8, align 4
  %301 = load i32, ptr %9, align 4
  %.not13.not = icmp slt i32 %storemerge12, %301
  br i1 %.not13.not, label %302, label %325

302:                                              ; preds = %300
  %303 = sitofp i32 %storemerge12 to double
  %304 = load double, ptr %5, align 8
  %305 = fmul double %304, %303
  store double %305, ptr %2, align 8
  %306 = fmul double %305, %305
  store double %306, ptr %4, align 8
  %307 = load double, ptr %1, align 8
  %308 = load double, ptr @B6, align 8
  %309 = load double, ptr @B5, align 8
  %310 = call double @llvm.fmuladd.f64(double %308, double %306, double %309)
  %311 = load double, ptr @B4, align 8
  %312 = call double @llvm.fmuladd.f64(double %306, double %310, double %311)
  %313 = load double, ptr @B3, align 8
  %314 = call double @llvm.fmuladd.f64(double %306, double %312, double %313)
  %315 = load double, ptr @B2, align 8
  %316 = call double @llvm.fmuladd.f64(double %306, double %314, double %315)
  %317 = load double, ptr @B1, align 8
  %318 = call double @llvm.fmuladd.f64(double %306, double %316, double %317)
  %319 = call double @llvm.fmuladd.f64(double %306, double %318, double %307)
  %320 = load double, ptr @one, align 8
  %321 = fadd double %319, %320
  store double %321, ptr %1, align 8
  br label %322

322:                                              ; preds = %302
  %323 = load i32, ptr %8, align 4
  %324 = add nsw i32 %323, 1
  br label %300, !llvm.loop !14

325:                                              ; preds = %300
  %326 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %327 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %328 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %329 = load double, ptr @nulltime, align 8
  %330 = fneg double %329
  %331 = call double @llvm.fmuladd.f64(double %327, double %328, double %330)
  store double %331, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %332 = load double, ptr @piref, align 8
  %333 = load double, ptr @three, align 8
  %334 = fdiv double %332, %333
  store double %334, ptr %2, align 8
  %335 = fmul double %334, %334
  store double %335, ptr %4, align 8
  %336 = load double, ptr @B6, align 8
  %337 = load double, ptr @B5, align 8
  %338 = call double @llvm.fmuladd.f64(double %336, double %335, double %337)
  %339 = load double, ptr @B4, align 8
  %340 = call double @llvm.fmuladd.f64(double %335, double %338, double %339)
  %341 = load double, ptr @B3, align 8
  %342 = call double @llvm.fmuladd.f64(double %335, double %340, double %341)
  %343 = load double, ptr @B2, align 8
  %344 = call double @llvm.fmuladd.f64(double %335, double %342, double %343)
  %345 = load double, ptr @B1, align 8
  %346 = call double @llvm.fmuladd.f64(double %335, double %344, double %345)
  %347 = load double, ptr @one, align 8
  %348 = call double @llvm.fmuladd.f64(double %335, double %346, double %347)
  store double %348, ptr @sa, align 8
  %349 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %350 = fdiv double %349, 1.500000e+01
  store double %350, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %351 = load double, ptr %5, align 8
  %352 = load double, ptr @one, align 8
  %353 = fadd double %348, %352
  %354 = load double, ptr @two, align 8
  %355 = load double, ptr %1, align 8
  %356 = call double @llvm.fmuladd.f64(double %354, double %355, double %353)
  %357 = fmul double %351, %356
  %358 = fdiv double %357, %354
  store double %358, ptr @sa, align 8
  %359 = load double, ptr @piref, align 8
  %360 = load double, ptr @three, align 8
  %361 = fdiv double %359, %360
  store double %361, ptr %2, align 8
  %362 = fmul double %361, %361
  store double %362, ptr %4, align 8
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
  %374 = load double, ptr @A0, align 8
  %375 = call double @llvm.fmuladd.f64(double %373, double %362, double %374)
  %376 = fmul double %361, %375
  store double %376, ptr @sb, align 8
  %377 = load double, ptr @sa, align 8
  %378 = fsub double %377, %376
  store double %378, ptr @sc, align 8
  %379 = load double, ptr @one, align 8
  %380 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %381 = fdiv double %379, %380
  store double %381, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %382 = fmul double %378, 1.000000e-30
  %383 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %384 = fmul double %383, 1.000000e-30
  %385 = fmul double %381, 1.000000e-30
  %386 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %382, double noundef %384, double noundef %385) #4
  %387 = load double, ptr @piref, align 8
  %388 = load double, ptr @three, align 8
  %389 = load i32, ptr %9, align 4
  %390 = sitofp i32 %389 to double
  %391 = fmul double %388, %390
  %392 = fdiv double %387, %391
  store double %392, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %393 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %394

394:                                              ; preds = %432, %325
  %storemerge14 = phi i32 [ 1, %325 ], [ %434, %432 ]
  store i32 %storemerge14, ptr %8, align 4
  %395 = load i32, ptr %9, align 4
  %.not15.not = icmp slt i32 %storemerge14, %395
  br i1 %.not15.not, label %396, label %435

396:                                              ; preds = %394
  %397 = sitofp i32 %storemerge14 to double
  %398 = load double, ptr %5, align 8
  %399 = fmul double %398, %397
  store double %399, ptr %2, align 8
  %400 = fmul double %399, %399
  store double %400, ptr %4, align 8
  %401 = load double, ptr @A6, align 8
  %402 = load double, ptr @A5, align 8
  %403 = call double @llvm.fmuladd.f64(double %401, double %400, double %402)
  %404 = load double, ptr @A4, align 8
  %405 = call double @llvm.fmuladd.f64(double %403, double %400, double %404)
  %406 = load double, ptr @A3, align 8
  %407 = call double @llvm.fmuladd.f64(double %405, double %400, double %406)
  %408 = load double, ptr @A2, align 8
  %409 = call double @llvm.fmuladd.f64(double %407, double %400, double %408)
  %410 = load double, ptr @A1, align 8
  %411 = call double @llvm.fmuladd.f64(double %409, double %400, double %410)
  %412 = load double, ptr @one, align 8
  %413 = call double @llvm.fmuladd.f64(double %411, double %400, double %412)
  %414 = fmul double %399, %413
  store double %414, ptr %3, align 8
  %415 = load double, ptr %1, align 8
  %416 = load double, ptr %4, align 8
  %417 = load double, ptr @B6, align 8
  %418 = load double, ptr @B5, align 8
  %419 = call double @llvm.fmuladd.f64(double %417, double %416, double %418)
  %420 = load double, ptr @B4, align 8
  %421 = call double @llvm.fmuladd.f64(double %416, double %419, double %420)
  %422 = load double, ptr @B3, align 8
  %423 = call double @llvm.fmuladd.f64(double %416, double %421, double %422)
  %424 = load double, ptr @B2, align 8
  %425 = call double @llvm.fmuladd.f64(double %416, double %423, double %424)
  %426 = load double, ptr @B1, align 8
  %427 = call double @llvm.fmuladd.f64(double %416, double %425, double %426)
  %428 = load double, ptr @one, align 8
  %429 = call double @llvm.fmuladd.f64(double %416, double %427, double %428)
  %430 = fdiv double %414, %429
  %431 = fadd double %415, %430
  store double %431, ptr %1, align 8
  br label %432

432:                                              ; preds = %396
  %433 = load i32, ptr %8, align 4
  %434 = add nsw i32 %433, 1
  br label %394, !llvm.loop !15

435:                                              ; preds = %394
  %436 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %437 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %438 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %439 = load double, ptr @nulltime, align 8
  %440 = fneg double %439
  %441 = call double @llvm.fmuladd.f64(double %437, double %438, double %440)
  store double %441, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %442 = load double, ptr @piref, align 8
  %443 = load double, ptr @three, align 8
  %444 = fdiv double %442, %443
  store double %444, ptr %2, align 8
  %445 = fmul double %444, %444
  store double %445, ptr %4, align 8
  %446 = load double, ptr @A6, align 8
  %447 = load double, ptr @A5, align 8
  %448 = call double @llvm.fmuladd.f64(double %446, double %445, double %447)
  %449 = load double, ptr @A4, align 8
  %450 = call double @llvm.fmuladd.f64(double %448, double %445, double %449)
  %451 = load double, ptr @A3, align 8
  %452 = call double @llvm.fmuladd.f64(double %450, double %445, double %451)
  %453 = load double, ptr @A2, align 8
  %454 = call double @llvm.fmuladd.f64(double %452, double %445, double %453)
  %455 = load double, ptr @A1, align 8
  %456 = call double @llvm.fmuladd.f64(double %454, double %445, double %455)
  %457 = load double, ptr @one, align 8
  %458 = call double @llvm.fmuladd.f64(double %456, double %445, double %457)
  %459 = fmul double %444, %458
  store double %459, ptr @sa, align 8
  %460 = load double, ptr %4, align 8
  %461 = load double, ptr @B6, align 8
  %462 = load double, ptr @B5, align 8
  %463 = call double @llvm.fmuladd.f64(double %461, double %460, double %462)
  %464 = load double, ptr @B4, align 8
  %465 = call double @llvm.fmuladd.f64(double %460, double %463, double %464)
  %466 = load double, ptr @B3, align 8
  %467 = call double @llvm.fmuladd.f64(double %460, double %465, double %466)
  %468 = load double, ptr @B2, align 8
  %469 = call double @llvm.fmuladd.f64(double %460, double %467, double %468)
  %470 = load double, ptr @B1, align 8
  %471 = call double @llvm.fmuladd.f64(double %460, double %469, double %470)
  %472 = load double, ptr @one, align 8
  %473 = call double @llvm.fmuladd.f64(double %460, double %471, double %472)
  store double %473, ptr @sb, align 8
  %474 = load double, ptr @sa, align 8
  %475 = fdiv double %474, %473
  store double %475, ptr @sa, align 8
  %476 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %477 = fdiv double %476, 2.900000e+01
  store double %477, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %478 = load double, ptr %5, align 8
  %479 = load double, ptr @two, align 8
  %480 = load double, ptr %1, align 8
  %481 = call double @llvm.fmuladd.f64(double %479, double %480, double %475)
  %482 = fmul double %478, %481
  %483 = fdiv double %482, %479
  store double %483, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %484 = fadd double %483, f0xBFE62E42FEFA39EF
  store double %484, ptr @sc, align 8
  %485 = load double, ptr @one, align 8
  %486 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %487 = fdiv double %485, %486
  store double %487, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %488 = fmul double %484, 1.000000e-30
  %489 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %490 = fmul double %489, 1.000000e-30
  %491 = fmul double %487, 1.000000e-30
  %492 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %488, double noundef %490, double noundef %491) #4
  %493 = load double, ptr @piref, align 8
  %494 = load double, ptr @four, align 8
  %495 = load i32, ptr %9, align 4
  %496 = sitofp i32 %495 to double
  %497 = fmul double %494, %496
  %498 = fdiv double %493, %497
  store double %498, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %499 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %500

500:                                              ; preds = %537, %435
  %storemerge16 = phi i32 [ 1, %435 ], [ %539, %537 ]
  store i32 %storemerge16, ptr %8, align 4
  %501 = load i32, ptr %9, align 4
  %.not17.not = icmp slt i32 %storemerge16, %501
  br i1 %.not17.not, label %502, label %540

502:                                              ; preds = %500
  %503 = sitofp i32 %storemerge16 to double
  %504 = load double, ptr %5, align 8
  %505 = fmul double %504, %503
  store double %505, ptr %2, align 8
  %506 = fmul double %505, %505
  store double %506, ptr %4, align 8
  %507 = load double, ptr @A6, align 8
  %508 = load double, ptr @A5, align 8
  %509 = call double @llvm.fmuladd.f64(double %507, double %506, double %508)
  %510 = load double, ptr @A4, align 8
  %511 = call double @llvm.fmuladd.f64(double %509, double %506, double %510)
  %512 = load double, ptr @A3, align 8
  %513 = call double @llvm.fmuladd.f64(double %511, double %506, double %512)
  %514 = load double, ptr @A2, align 8
  %515 = call double @llvm.fmuladd.f64(double %513, double %506, double %514)
  %516 = load double, ptr @A1, align 8
  %517 = call double @llvm.fmuladd.f64(double %515, double %506, double %516)
  %518 = load double, ptr @one, align 8
  %519 = call double @llvm.fmuladd.f64(double %517, double %506, double %518)
  %520 = fmul double %505, %519
  store double %520, ptr %3, align 8
  %521 = load double, ptr %1, align 8
  %522 = load double, ptr %4, align 8
  %523 = load double, ptr @B6, align 8
  %524 = load double, ptr @B5, align 8
  %525 = call double @llvm.fmuladd.f64(double %523, double %522, double %524)
  %526 = load double, ptr @B4, align 8
  %527 = call double @llvm.fmuladd.f64(double %522, double %525, double %526)
  %528 = load double, ptr @B3, align 8
  %529 = call double @llvm.fmuladd.f64(double %522, double %527, double %528)
  %530 = load double, ptr @B2, align 8
  %531 = call double @llvm.fmuladd.f64(double %522, double %529, double %530)
  %532 = load double, ptr @B1, align 8
  %533 = call double @llvm.fmuladd.f64(double %522, double %531, double %532)
  %534 = load double, ptr @one, align 8
  %535 = call double @llvm.fmuladd.f64(double %522, double %533, double %534)
  %536 = call double @llvm.fmuladd.f64(double %520, double %535, double %521)
  store double %536, ptr %1, align 8
  br label %537

537:                                              ; preds = %502
  %538 = load i32, ptr %8, align 4
  %539 = add nsw i32 %538, 1
  br label %500, !llvm.loop !16

540:                                              ; preds = %500
  %541 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %542 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %543 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %544 = load double, ptr @nulltime, align 8
  %545 = fneg double %544
  %546 = call double @llvm.fmuladd.f64(double %542, double %543, double %545)
  store double %546, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %547 = load double, ptr @piref, align 8
  %548 = load double, ptr @four, align 8
  %549 = fdiv double %547, %548
  store double %549, ptr %2, align 8
  %550 = fmul double %549, %549
  store double %550, ptr %4, align 8
  %551 = load double, ptr @A6, align 8
  %552 = load double, ptr @A5, align 8
  %553 = call double @llvm.fmuladd.f64(double %551, double %550, double %552)
  %554 = load double, ptr @A4, align 8
  %555 = call double @llvm.fmuladd.f64(double %553, double %550, double %554)
  %556 = load double, ptr @A3, align 8
  %557 = call double @llvm.fmuladd.f64(double %555, double %550, double %556)
  %558 = load double, ptr @A2, align 8
  %559 = call double @llvm.fmuladd.f64(double %557, double %550, double %558)
  %560 = load double, ptr @A1, align 8
  %561 = call double @llvm.fmuladd.f64(double %559, double %550, double %560)
  %562 = load double, ptr @one, align 8
  %563 = call double @llvm.fmuladd.f64(double %561, double %550, double %562)
  %564 = fmul double %549, %563
  store double %564, ptr @sa, align 8
  %565 = load double, ptr %4, align 8
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
  store double %578, ptr @sb, align 8
  %579 = load double, ptr @sa, align 8
  %580 = fmul double %579, %578
  store double %580, ptr @sa, align 8
  %581 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %582 = fdiv double %581, 2.900000e+01
  store double %582, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %583 = load double, ptr %5, align 8
  %584 = load double, ptr @two, align 8
  %585 = load double, ptr %1, align 8
  %586 = call double @llvm.fmuladd.f64(double %584, double %585, double %580)
  %587 = fmul double %583, %586
  %588 = fdiv double %587, %584
  store double %588, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %589 = fadd double %588, -2.500000e-01
  store double %589, ptr @sc, align 8
  %590 = load double, ptr @one, align 8
  %591 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %592 = fdiv double %590, %591
  store double %592, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %593 = fmul double %589, 1.000000e-30
  %594 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %595 = fmul double %594, 1.000000e-30
  %596 = fmul double %592, 1.000000e-30
  %597 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %593, double noundef %595, double noundef %596) #4
  store double 0.000000e+00, ptr %1, align 8
  %598 = load double, ptr @one, align 8
  store double %598, ptr %4, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %599 = load i32, ptr %9, align 4
  %600 = sitofp i32 %599 to double
  %601 = fdiv double f0x40599541F7F192A4, %600
  store double %601, ptr %3, align 8
  %602 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %603

603:                                              ; preds = %622, %540
  %storemerge18 = phi i32 [ 1, %540 ], [ %624, %622 ]
  store i32 %storemerge18, ptr %8, align 4
  %604 = load i32, ptr %9, align 4
  %.not19.not = icmp slt i32 %storemerge18, %604
  br i1 %.not19.not, label %605, label %625

605:                                              ; preds = %603
  %606 = sitofp i32 %storemerge18 to double
  %607 = load double, ptr %3, align 8
  %608 = fmul double %607, %606
  store double %608, ptr %5, align 8
  %609 = fmul double %608, %608
  store double %609, ptr %2, align 8
  %610 = load double, ptr %1, align 8
  %611 = load double, ptr %4, align 8
  %612 = fadd double %608, %611
  %613 = fdiv double %611, %612
  %614 = fsub double %610, %613
  %615 = load double, ptr %5, align 8
  %616 = fadd double %609, %611
  %617 = fdiv double %615, %616
  %618 = fsub double %614, %617
  %619 = call double @llvm.fmuladd.f64(double %615, double %609, double %611)
  %620 = fdiv double %609, %619
  %621 = fsub double %618, %620
  store double %621, ptr %1, align 8
  br label %622

622:                                              ; preds = %605
  %623 = load i32, ptr %8, align 4
  %624 = add nsw i32 %623, 1
  br label %603, !llvm.loop !17

625:                                              ; preds = %603
  %626 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %627 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %628 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %629 = load double, ptr @nulltime, align 8
  %630 = fneg double %629
  %631 = call double @llvm.fmuladd.f64(double %627, double %628, double %630)
  store double %631, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %632 = fdiv double %631, 1.200000e+01
  store double %632, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %633 = load double, ptr @sa, align 8
  store double %633, ptr %5, align 8
  %634 = fmul double %633, %633
  store double %634, ptr %2, align 8
  %635 = load double, ptr %4, align 8
  %636 = fneg double %635
  %637 = fadd double %633, %635
  %638 = fdiv double %635, %637
  %639 = fsub double %636, %638
  %640 = load double, ptr %5, align 8
  %641 = fadd double %634, %635
  %642 = fdiv double %640, %641
  %643 = fsub double %639, %642
  %644 = call double @llvm.fmuladd.f64(double %640, double %634, double %635)
  %645 = fdiv double %634, %644
  %646 = fsub double %643, %645
  store double %646, ptr @sa, align 8
  %647 = load double, ptr %3, align 8
  %648 = fmul double %647, 1.800000e+01
  %649 = load double, ptr @two, align 8
  %650 = load double, ptr %1, align 8
  %651 = call double @llvm.fmuladd.f64(double %649, double %650, double %646)
  %652 = fmul double %648, %651
  store double %652, ptr @sa, align 8
  %653 = fptosi double %652 to i32
  %654 = mul nsw i32 %653, -2000
  store i32 %654, ptr %9, align 4
  %655 = sitofp i32 %654 to double
  %656 = load double, ptr @scale, align 8
  %657 = fdiv double %655, %656
  %658 = fptosi double %657 to i32
  store i32 %658, ptr %9, align 4
  %659 = load double, ptr @sa, align 8
  %660 = fadd double %659, 5.002000e+02
  store double %660, ptr @sc, align 8
  %661 = load double, ptr @one, align 8
  %662 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %663 = fdiv double %661, %662
  store double %663, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %664 = fmul double %660, 1.000000e-30
  %665 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %666 = fmul double %665, 1.000000e-30
  %667 = fmul double %663, 1.000000e-30
  %668 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %664, double noundef %666, double noundef %667) #4
  %669 = load double, ptr @piref, align 8
  %670 = load double, ptr @three, align 8
  %671 = load i32, ptr %9, align 4
  %672 = sitofp i32 %671 to double
  %673 = fmul double %670, %672
  %674 = fdiv double %669, %673
  store double %674, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  %675 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %676

676:                                              ; preds = %715, %625
  %storemerge20 = phi i32 [ 1, %625 ], [ %717, %715 ]
  store i32 %storemerge20, ptr %8, align 4
  %677 = load i32, ptr %9, align 4
  %.not21.not = icmp slt i32 %storemerge20, %677
  br i1 %.not21.not, label %678, label %718

678:                                              ; preds = %676
  %679 = sitofp i32 %storemerge20 to double
  %680 = load double, ptr %5, align 8
  %681 = fmul double %680, %679
  store double %681, ptr %2, align 8
  %682 = fmul double %681, %681
  store double %682, ptr %4, align 8
  %683 = load double, ptr @B6, align 8
  %684 = load double, ptr @B5, align 8
  %685 = call double @llvm.fmuladd.f64(double %683, double %682, double %684)
  %686 = load double, ptr @B4, align 8
  %687 = call double @llvm.fmuladd.f64(double %682, double %685, double %686)
  %688 = load double, ptr @B3, align 8
  %689 = call double @llvm.fmuladd.f64(double %682, double %687, double %688)
  %690 = load double, ptr @B2, align 8
  %691 = call double @llvm.fmuladd.f64(double %682, double %689, double %690)
  %692 = load double, ptr @B1, align 8
  %693 = call double @llvm.fmuladd.f64(double %682, double %691, double %692)
  %694 = load double, ptr @one, align 8
  %695 = call double @llvm.fmuladd.f64(double %682, double %693, double %694)
  store double %695, ptr %3, align 8
  %696 = load double, ptr %1, align 8
  %697 = fmul double %695, %695
  %698 = load double, ptr %2, align 8
  %699 = fmul double %697, %698
  %700 = load double, ptr @A6, align 8
  %701 = load double, ptr %4, align 8
  %702 = load double, ptr @A5, align 8
  %703 = call double @llvm.fmuladd.f64(double %700, double %701, double %702)
  %704 = load double, ptr @A4, align 8
  %705 = call double @llvm.fmuladd.f64(double %703, double %701, double %704)
  %706 = load double, ptr @A3, align 8
  %707 = call double @llvm.fmuladd.f64(double %705, double %701, double %706)
  %708 = load double, ptr @A2, align 8
  %709 = call double @llvm.fmuladd.f64(double %707, double %701, double %708)
  %710 = load double, ptr @A1, align 8
  %711 = call double @llvm.fmuladd.f64(double %709, double %701, double %710)
  %712 = load double, ptr @one, align 8
  %713 = call double @llvm.fmuladd.f64(double %711, double %701, double %712)
  %714 = call double @llvm.fmuladd.f64(double %699, double %713, double %696)
  store double %714, ptr %1, align 8
  br label %715

715:                                              ; preds = %678
  %716 = load i32, ptr %8, align 4
  %717 = add nsw i32 %716, 1
  br label %676, !llvm.loop !18

718:                                              ; preds = %676
  %719 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %720 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %721 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %722 = load double, ptr @nulltime, align 8
  %723 = fneg double %722
  %724 = call double @llvm.fmuladd.f64(double %720, double %721, double %723)
  store double %724, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %725 = load double, ptr @piref, align 8
  %726 = load double, ptr @three, align 8
  %727 = fdiv double %725, %726
  store double %727, ptr %2, align 8
  %728 = fmul double %727, %727
  store double %728, ptr %4, align 8
  %729 = load double, ptr @A6, align 8
  %730 = load double, ptr @A5, align 8
  %731 = call double @llvm.fmuladd.f64(double %729, double %728, double %730)
  %732 = load double, ptr @A4, align 8
  %733 = call double @llvm.fmuladd.f64(double %731, double %728, double %732)
  %734 = load double, ptr @A3, align 8
  %735 = call double @llvm.fmuladd.f64(double %733, double %728, double %734)
  %736 = load double, ptr @A2, align 8
  %737 = call double @llvm.fmuladd.f64(double %735, double %728, double %736)
  %738 = load double, ptr @A1, align 8
  %739 = call double @llvm.fmuladd.f64(double %737, double %728, double %738)
  %740 = load double, ptr @one, align 8
  %741 = call double @llvm.fmuladd.f64(double %739, double %728, double %740)
  %742 = fmul double %727, %741
  store double %742, ptr @sa, align 8
  %743 = load double, ptr %4, align 8
  %744 = load double, ptr @B6, align 8
  %745 = load double, ptr @B5, align 8
  %746 = call double @llvm.fmuladd.f64(double %744, double %743, double %745)
  %747 = load double, ptr @B4, align 8
  %748 = call double @llvm.fmuladd.f64(double %743, double %746, double %747)
  %749 = load double, ptr @B3, align 8
  %750 = call double @llvm.fmuladd.f64(double %743, double %748, double %749)
  %751 = load double, ptr @B2, align 8
  %752 = call double @llvm.fmuladd.f64(double %743, double %750, double %751)
  %753 = load double, ptr @B1, align 8
  %754 = call double @llvm.fmuladd.f64(double %743, double %752, double %753)
  %755 = load double, ptr @one, align 8
  %756 = call double @llvm.fmuladd.f64(double %743, double %754, double %755)
  store double %756, ptr @sb, align 8
  %757 = load double, ptr @sa, align 8
  %758 = fmul double %757, %756
  %759 = fmul double %758, %756
  store double %759, ptr @sa, align 8
  %760 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %761 = fdiv double %760, 3.000000e+01
  store double %761, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %762 = load double, ptr %5, align 8
  %763 = load double, ptr @two, align 8
  %764 = load double, ptr %1, align 8
  %765 = call double @llvm.fmuladd.f64(double %763, double %764, double %759)
  %766 = fmul double %762, %765
  %767 = fdiv double %766, %763
  store double %767, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %768 = fadd double %767, f0xBFD2AAAAAAAAAAAB
  store double %768, ptr @sc, align 8
  %769 = load double, ptr @one, align 8
  %770 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %771 = fdiv double %769, %770
  store double %771, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %772 = fmul double %768, 1.000000e-30
  %773 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %774 = fmul double %773, 1.000000e-30
  %775 = fmul double %771, 1.000000e-30
  %776 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %772, double noundef %774, double noundef %775) #4
  %777 = load double, ptr @five, align 8
  %778 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %779 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %780 = fsub double %778, %779
  %781 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %782 = call double @llvm.fmuladd.f64(double %777, double %780, double %781)
  %783 = fdiv double %782, 5.200000e+01
  store double %783, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %784 = load double, ptr @one, align 8
  %785 = fdiv double %784, %783
  store double %785, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %786 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %787 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %788 = fadd double %786, %787
  %789 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %790 = fadd double %788, %789
  %791 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %792 = fadd double %790, %791
  %793 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %794 = fadd double %792, %793
  store double %794, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %795 = load double, ptr @four, align 8
  %796 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %797 = call double @llvm.fmuladd.f64(double %795, double %796, double %794)
  %798 = fdiv double %797, 1.520000e+02
  store double %798, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %799 = load double, ptr @one, align 8
  %800 = fdiv double %799, %798
  store double %800, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %801 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %802 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %803 = fadd double %801, %802
  %804 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %805 = fadd double %803, %804
  %806 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %807 = fadd double %805, %806
  %808 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %809 = fadd double %807, %808
  store double %809, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %810 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %811 = fadd double %809, %810
  %812 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %813 = fadd double %811, %812
  %814 = fdiv double %813, 1.460000e+02
  store double %814, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %815 = load double, ptr @one, align 8
  %816 = fdiv double %815, %814
  store double %816, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %817 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %818 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %819 = fadd double %817, %818
  %820 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %821 = fadd double %819, %820
  %822 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %823 = fadd double %821, %822
  %824 = fdiv double %823, 9.100000e+01
  store double %824, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %825 = load double, ptr @one, align 8
  %826 = fdiv double %825, %824
  store double %826, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar22 = call i32 @putchar(i32 10)
  %827 = load i32, ptr %9, align 4
  %828 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %827) #4
  %829 = load double, ptr @nulltime, align 8
  %830 = fmul double %829, 1.000000e-30
  %831 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %830) #4
  %832 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %833 = fmul double %832, 1.000000e-30
  %834 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %833) #4
  %835 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %836 = fmul double %835, 1.000000e-30
  %837 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %836) #4
  %838 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %839 = fmul double %838, 1.000000e-30
  %840 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %839) #4
  %841 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %842 = fmul double %841, 1.000000e-30
  %843 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %842) #4
  ret i32 0
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dtime(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca double, align 8
  store ptr %0, ptr %2, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = load double, ptr %4, align 8
  store double %5, ptr %3, align 8
  %6 = call i32 @GetTickCount() #4
  %7 = uitofp i32 %6 to double
  %8 = fmul nnan double %7, 1.000000e-03
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store double %8, ptr %10, align 8
  %11 = load double, ptr %3, align 8
  %12 = fsub double %8, %11
  %13 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store double %12, ptr %13, align 8
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
