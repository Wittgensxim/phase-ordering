; ModuleID = 'results\paper_round2\Misc_flops_5\Misc_flops_5.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Misc/flops-5.c"
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
@sa = dso_local global double 0.000000e+00, align 8
@sb = dso_local global double 0.000000e+00, align 8
@sc = dso_local global double 0.000000e+00, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"     5   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@nulltime = dso_local global double 0.000000e+00, align 8
@TimeArray = dso_local global [3 x double] zeroinitializer, align 16
@T = dso_local global [36 x double] zeroinitializer, align 16
@sd = dso_local global double 0.000000e+00, align 8
@piprg = dso_local global double 0.000000e+00, align 8
@pierr = dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 15625, ptr %7, align 4
  store double 1.000000e+00, ptr @TLimit, align 8
  store i32 512000000, ptr %8, align 4
  store double f0x400921FB54442D18, ptr @piref, align 8
  store double 1.000000e+00, ptr @one, align 8
  store double 2.000000e+00, ptr @two, align 8
  store double 3.000000e+00, ptr @three, align 8
  store double 4.000000e+00, ptr @four, align 8
  store double 5.000000e+00, ptr @five, align 8
  %14 = load double, ptr @one, align 8
  store double %14, ptr @scale, align 8
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %17 = load i32, ptr %7, align 4
  %18 = mul nsw i32 %17, 10000
  store i32 %18, ptr %10, align 4
  %19 = load double, ptr @piref, align 8
  %20 = load double, ptr @three, align 8
  %21 = load i32, ptr %10, align 4
  %22 = sitofp i32 %21 to double
  %23 = fmul double %20, %22
  %24 = fdiv double %19, %23
  store double %24, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  store i32 1, ptr %9, align 4
  %25 = load i32, ptr %9, align 4
  %26 = load i32, ptr %10, align 4
  %27 = sub nsw i32 %26, 1
  %28 = icmp sle i32 %25, %27
  br i1 %28, label %.lr.ph, label %87

.lr.ph:                                           ; preds = %0
  br label %29

29:                                               ; preds = %.lr.ph, %29
  %30 = load i32, ptr %9, align 4
  %31 = sitofp i32 %30 to double
  %32 = load double, ptr %6, align 8
  %33 = fmul double %31, %32
  store double %33, ptr %3, align 8
  %34 = load double, ptr %3, align 8
  %35 = load double, ptr %3, align 8
  %36 = fmul double %34, %35
  store double %36, ptr %5, align 8
  %37 = load double, ptr %3, align 8
  %38 = load double, ptr @A6, align 8
  %39 = load double, ptr %5, align 8
  %40 = load double, ptr @A5, align 8
  %41 = call double @llvm.fmuladd.f64(double %38, double %39, double %40)
  %42 = load double, ptr %5, align 8
  %43 = load double, ptr @A4, align 8
  %44 = call double @llvm.fmuladd.f64(double %41, double %42, double %43)
  %45 = load double, ptr %5, align 8
  %46 = load double, ptr @A3, align 8
  %47 = call double @llvm.fmuladd.f64(double %44, double %45, double %46)
  %48 = load double, ptr %5, align 8
  %49 = load double, ptr @A2, align 8
  %50 = call double @llvm.fmuladd.f64(double %47, double %48, double %49)
  %51 = load double, ptr %5, align 8
  %52 = load double, ptr @A1, align 8
  %53 = call double @llvm.fmuladd.f64(double %50, double %51, double %52)
  %54 = load double, ptr %5, align 8
  %55 = load double, ptr @one, align 8
  %56 = call double @llvm.fmuladd.f64(double %53, double %54, double %55)
  %57 = fmul double %37, %56
  store double %57, ptr %4, align 8
  %58 = load double, ptr %2, align 8
  %59 = load double, ptr %4, align 8
  %60 = load double, ptr %5, align 8
  %61 = load double, ptr %5, align 8
  %62 = load double, ptr %5, align 8
  %63 = load double, ptr %5, align 8
  %64 = load double, ptr %5, align 8
  %65 = load double, ptr @B6, align 8
  %66 = load double, ptr %5, align 8
  %67 = load double, ptr @B5, align 8
  %68 = call double @llvm.fmuladd.f64(double %65, double %66, double %67)
  %69 = load double, ptr @B4, align 8
  %70 = call double @llvm.fmuladd.f64(double %64, double %68, double %69)
  %71 = load double, ptr @B3, align 8
  %72 = call double @llvm.fmuladd.f64(double %63, double %70, double %71)
  %73 = load double, ptr @B2, align 8
  %74 = call double @llvm.fmuladd.f64(double %62, double %72, double %73)
  %75 = load double, ptr @B1, align 8
  %76 = call double @llvm.fmuladd.f64(double %61, double %74, double %75)
  %77 = load double, ptr @one, align 8
  %78 = call double @llvm.fmuladd.f64(double %60, double %76, double %77)
  %79 = fdiv double %59, %78
  %80 = fadd double %58, %79
  store double %80, ptr %2, align 8
  %81 = load i32, ptr %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, ptr %9, align 4
  %83 = load i32, ptr %9, align 4
  %84 = load i32, ptr %10, align 4
  %85 = sub nsw i32 %84, 1
  %86 = icmp sle i32 %83, %85
  br i1 %86, label %29, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %29
  br label %87

87:                                               ; preds = %._crit_edge, %0
  %88 = load double, ptr @piref, align 8
  %89 = load double, ptr @three, align 8
  %90 = fdiv double %88, %89
  store double %90, ptr %3, align 8
  %91 = load double, ptr %3, align 8
  %92 = load double, ptr %3, align 8
  %93 = fmul double %91, %92
  store double %93, ptr %5, align 8
  %94 = load double, ptr %3, align 8
  %95 = load double, ptr @A6, align 8
  %96 = load double, ptr %5, align 8
  %97 = load double, ptr @A5, align 8
  %98 = call double @llvm.fmuladd.f64(double %95, double %96, double %97)
  %99 = load double, ptr %5, align 8
  %100 = load double, ptr @A4, align 8
  %101 = call double @llvm.fmuladd.f64(double %98, double %99, double %100)
  %102 = load double, ptr %5, align 8
  %103 = load double, ptr @A3, align 8
  %104 = call double @llvm.fmuladd.f64(double %101, double %102, double %103)
  %105 = load double, ptr %5, align 8
  %106 = load double, ptr @A2, align 8
  %107 = call double @llvm.fmuladd.f64(double %104, double %105, double %106)
  %108 = load double, ptr %5, align 8
  %109 = load double, ptr @A1, align 8
  %110 = call double @llvm.fmuladd.f64(double %107, double %108, double %109)
  %111 = load double, ptr %5, align 8
  %112 = load double, ptr @one, align 8
  %113 = call double @llvm.fmuladd.f64(double %110, double %111, double %112)
  %114 = fmul double %94, %113
  store double %114, ptr @sa, align 8
  %115 = load double, ptr %5, align 8
  %116 = load double, ptr %5, align 8
  %117 = load double, ptr %5, align 8
  %118 = load double, ptr %5, align 8
  %119 = load double, ptr %5, align 8
  %120 = load double, ptr @B6, align 8
  %121 = load double, ptr %5, align 8
  %122 = load double, ptr @B5, align 8
  %123 = call double @llvm.fmuladd.f64(double %120, double %121, double %122)
  %124 = load double, ptr @B4, align 8
  %125 = call double @llvm.fmuladd.f64(double %119, double %123, double %124)
  %126 = load double, ptr @B3, align 8
  %127 = call double @llvm.fmuladd.f64(double %118, double %125, double %126)
  %128 = load double, ptr @B2, align 8
  %129 = call double @llvm.fmuladd.f64(double %117, double %127, double %128)
  %130 = load double, ptr @B1, align 8
  %131 = call double @llvm.fmuladd.f64(double %116, double %129, double %130)
  %132 = load double, ptr @one, align 8
  %133 = call double @llvm.fmuladd.f64(double %115, double %131, double %132)
  store double %133, ptr @sb, align 8
  %134 = load double, ptr @sa, align 8
  %135 = load double, ptr @sb, align 8
  %136 = fdiv double %134, %135
  store double %136, ptr @sa, align 8
  %137 = load double, ptr %6, align 8
  %138 = load double, ptr @sa, align 8
  %139 = load double, ptr @two, align 8
  %140 = load double, ptr %2, align 8
  %141 = call double @llvm.fmuladd.f64(double %139, double %140, double %138)
  %142 = fmul double %137, %141
  %143 = load double, ptr @two, align 8
  %144 = fdiv double %142, %143
  store double %144, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %145 = load double, ptr @sa, align 8
  %146 = load double, ptr @sb, align 8
  %147 = fsub double %145, %146
  store double %147, ptr @sc, align 8
  %148 = load double, ptr @sc, align 8
  %149 = fmul double %148, 1.000000e-30
  %150 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %149, double noundef 0.000000e+00, double noundef 0.000000e+00)
  ret i32 0
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Misc/flops-5.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
