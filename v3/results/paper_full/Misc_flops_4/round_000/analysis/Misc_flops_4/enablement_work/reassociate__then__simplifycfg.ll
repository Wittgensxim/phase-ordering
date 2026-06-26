; ModuleID = 'results\paper_full\Misc_flops_4\Misc_flops_4.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Misc/flops-4.c"
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
@.str.4 = private unnamed_addr constant [36 x i8] c"     4   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
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
  store i32 0, ptr %1, align 4
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 15625, ptr %7, align 4
  store double 1.000000e+00, ptr @TLimit, align 8
  store i32 512000000, ptr %8, align 4
  store double f0x400921FB54442D18, ptr @piref, align 8
  store double 1.000000e+00, ptr @one, align 8
  store double 2.000000e+00, ptr @two, align 8
  store double 3.000000e+00, ptr @three, align 8
  store double 4.000000e+00, ptr @four, align 8
  store double 5.000000e+00, ptr @five, align 8
  %13 = load double, ptr @one, align 8
  store double %13, ptr @scale, align 8
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %16 = load i32, ptr %7, align 4
  %17 = mul nsw i32 %16, 10000
  store i32 %17, ptr %10, align 4
  %18 = load double, ptr @A3, align 8
  %19 = fneg double %18
  store double %19, ptr @A3, align 8
  %20 = load double, ptr @A5, align 8
  %21 = fneg double %20
  store double %21, ptr @A5, align 8
  %22 = load double, ptr @piref, align 8
  %23 = load double, ptr @three, align 8
  %24 = load i32, ptr %10, align 4
  %25 = sitofp i32 %24 to double
  %26 = fmul double %23, %25
  %27 = fdiv double %22, %26
  store double %27, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  store i32 1, ptr %9, align 4
  br label %28

28:                                               ; preds = %33, %0
  %29 = load i32, ptr %9, align 4
  %30 = load i32, ptr %10, align 4
  %31 = sub nsw i32 %30, 1
  %32 = icmp sle i32 %29, %31
  br i1 %32, label %33, label %64

33:                                               ; preds = %28
  %34 = load i32, ptr %9, align 4
  %35 = sitofp i32 %34 to double
  %36 = load double, ptr %6, align 8
  %37 = fmul double %35, %36
  store double %37, ptr %3, align 8
  %38 = load double, ptr %3, align 8
  %39 = load double, ptr %3, align 8
  %40 = fmul double %38, %39
  store double %40, ptr %5, align 8
  %41 = load double, ptr %2, align 8
  %42 = load double, ptr %5, align 8
  %43 = load double, ptr %5, align 8
  %44 = load double, ptr %5, align 8
  %45 = load double, ptr %5, align 8
  %46 = load double, ptr %5, align 8
  %47 = load double, ptr @B6, align 8
  %48 = load double, ptr %5, align 8
  %49 = load double, ptr @B5, align 8
  %50 = call double @llvm.fmuladd.f64(double %47, double %48, double %49)
  %51 = load double, ptr @B4, align 8
  %52 = call double @llvm.fmuladd.f64(double %46, double %50, double %51)
  %53 = load double, ptr @B3, align 8
  %54 = call double @llvm.fmuladd.f64(double %45, double %52, double %53)
  %55 = load double, ptr @B2, align 8
  %56 = call double @llvm.fmuladd.f64(double %44, double %54, double %55)
  %57 = load double, ptr @B1, align 8
  %58 = call double @llvm.fmuladd.f64(double %43, double %56, double %57)
  %59 = call double @llvm.fmuladd.f64(double %42, double %58, double %41)
  %60 = load double, ptr @one, align 8
  %61 = fadd double %60, %59
  store double %61, ptr %2, align 8
  %62 = load i32, ptr %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, ptr %9, align 4
  br label %28, !llvm.loop !7

64:                                               ; preds = %28
  %65 = load double, ptr @piref, align 8
  %66 = load double, ptr @three, align 8
  %67 = fdiv double %65, %66
  store double %67, ptr %3, align 8
  %68 = load double, ptr %3, align 8
  %69 = load double, ptr %3, align 8
  %70 = fmul double %68, %69
  store double %70, ptr %5, align 8
  %71 = load double, ptr %5, align 8
  %72 = load double, ptr %5, align 8
  %73 = load double, ptr %5, align 8
  %74 = load double, ptr %5, align 8
  %75 = load double, ptr %5, align 8
  %76 = load double, ptr @B6, align 8
  %77 = load double, ptr %5, align 8
  %78 = load double, ptr @B5, align 8
  %79 = call double @llvm.fmuladd.f64(double %76, double %77, double %78)
  %80 = load double, ptr @B4, align 8
  %81 = call double @llvm.fmuladd.f64(double %75, double %79, double %80)
  %82 = load double, ptr @B3, align 8
  %83 = call double @llvm.fmuladd.f64(double %74, double %81, double %82)
  %84 = load double, ptr @B2, align 8
  %85 = call double @llvm.fmuladd.f64(double %73, double %83, double %84)
  %86 = load double, ptr @B1, align 8
  %87 = call double @llvm.fmuladd.f64(double %72, double %85, double %86)
  %88 = load double, ptr @one, align 8
  %89 = call double @llvm.fmuladd.f64(double %71, double %87, double %88)
  store double %89, ptr @sa, align 8
  %90 = load double, ptr %6, align 8
  %91 = load double, ptr @sa, align 8
  %92 = load double, ptr @one, align 8
  %93 = fadd double %91, %92
  %94 = load double, ptr @two, align 8
  %95 = load double, ptr %2, align 8
  %96 = call double @llvm.fmuladd.f64(double %94, double %95, double %93)
  %97 = fmul double %90, %96
  %98 = load double, ptr @two, align 8
  %99 = fdiv double %97, %98
  store double %99, ptr @sa, align 8
  %100 = load double, ptr @piref, align 8
  %101 = load double, ptr @three, align 8
  %102 = fdiv double %100, %101
  store double %102, ptr %3, align 8
  %103 = load double, ptr %3, align 8
  %104 = load double, ptr %3, align 8
  %105 = fmul double %103, %104
  store double %105, ptr %5, align 8
  %106 = load double, ptr %3, align 8
  %107 = load double, ptr @A6, align 8
  %108 = load double, ptr %5, align 8
  %109 = load double, ptr @A5, align 8
  %110 = call double @llvm.fmuladd.f64(double %107, double %108, double %109)
  %111 = load double, ptr %5, align 8
  %112 = load double, ptr @A4, align 8
  %113 = call double @llvm.fmuladd.f64(double %110, double %111, double %112)
  %114 = load double, ptr %5, align 8
  %115 = load double, ptr @A3, align 8
  %116 = call double @llvm.fmuladd.f64(double %113, double %114, double %115)
  %117 = load double, ptr %5, align 8
  %118 = load double, ptr @A2, align 8
  %119 = call double @llvm.fmuladd.f64(double %116, double %117, double %118)
  %120 = load double, ptr %5, align 8
  %121 = load double, ptr @A1, align 8
  %122 = call double @llvm.fmuladd.f64(double %119, double %120, double %121)
  %123 = load double, ptr %5, align 8
  %124 = load double, ptr @A0, align 8
  %125 = call double @llvm.fmuladd.f64(double %122, double %123, double %124)
  %126 = fmul double %106, %125
  store double %126, ptr @sb, align 8
  %127 = load double, ptr @sa, align 8
  %128 = load double, ptr @sb, align 8
  %129 = fsub double %127, %128
  store double %129, ptr @sc, align 8
  %130 = load double, ptr @sc, align 8
  %131 = fmul double %130, 1.000000e-30
  %132 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %131, double noundef 0.000000e+00, double noundef 0.000000e+00)
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
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Misc/flops-4.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
