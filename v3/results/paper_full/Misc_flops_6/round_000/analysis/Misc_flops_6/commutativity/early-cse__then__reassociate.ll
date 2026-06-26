; ModuleID = 'results\paper_full\Misc_flops_6\Misc_flops_6.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Misc/flops-6.c"
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
@.str.4 = private unnamed_addr constant [36 x i8] c"     6   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
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
  %18 = load double, ptr @piref, align 8
  %19 = load double, ptr @four, align 8
  %20 = sitofp i32 %17 to double
  %21 = fmul double %20, %19
  %22 = fdiv double %18, %21
  store double %22, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  store i32 1, ptr %9, align 4
  br label %23

23:                                               ; preds = %64, %0
  %24 = load i32, ptr %9, align 4
  %25 = load i32, ptr %10, align 4
  %26 = sub nsw i32 %25, 1
  %27 = icmp sle i32 %24, %26
  br i1 %27, label %28, label %67

28:                                               ; preds = %23
  %29 = sitofp i32 %24 to double
  %30 = load double, ptr %6, align 8
  %31 = fmul double %29, %30
  store double %31, ptr %3, align 8
  %32 = fmul double %31, %31
  store double %32, ptr %5, align 8
  %33 = load double, ptr %3, align 8
  %34 = load double, ptr @A6, align 8
  %35 = load double, ptr @A5, align 8
  %36 = call double @llvm.fmuladd.f64(double %34, double %32, double %35)
  %37 = load double, ptr @A4, align 8
  %38 = call double @llvm.fmuladd.f64(double %36, double %32, double %37)
  %39 = load double, ptr @A3, align 8
  %40 = call double @llvm.fmuladd.f64(double %38, double %32, double %39)
  %41 = load double, ptr @A2, align 8
  %42 = call double @llvm.fmuladd.f64(double %40, double %32, double %41)
  %43 = load double, ptr @A1, align 8
  %44 = call double @llvm.fmuladd.f64(double %42, double %32, double %43)
  %45 = load double, ptr @one, align 8
  %46 = call double @llvm.fmuladd.f64(double %44, double %32, double %45)
  %47 = fmul double %33, %46
  store double %47, ptr %4, align 8
  %48 = load double, ptr %2, align 8
  %49 = load double, ptr %5, align 8
  %50 = load double, ptr @B6, align 8
  %51 = load double, ptr @B5, align 8
  %52 = call double @llvm.fmuladd.f64(double %50, double %49, double %51)
  %53 = load double, ptr @B4, align 8
  %54 = call double @llvm.fmuladd.f64(double %49, double %52, double %53)
  %55 = load double, ptr @B3, align 8
  %56 = call double @llvm.fmuladd.f64(double %49, double %54, double %55)
  %57 = load double, ptr @B2, align 8
  %58 = call double @llvm.fmuladd.f64(double %49, double %56, double %57)
  %59 = load double, ptr @B1, align 8
  %60 = call double @llvm.fmuladd.f64(double %49, double %58, double %59)
  %61 = load double, ptr @one, align 8
  %62 = call double @llvm.fmuladd.f64(double %49, double %60, double %61)
  %63 = call double @llvm.fmuladd.f64(double %47, double %62, double %48)
  store double %63, ptr %2, align 8
  br label %64

64:                                               ; preds = %28
  %65 = load i32, ptr %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr %9, align 4
  br label %23, !llvm.loop !7

67:                                               ; preds = %23
  %68 = load double, ptr @piref, align 8
  %69 = load double, ptr @four, align 8
  %70 = fdiv double %68, %69
  store double %70, ptr %3, align 8
  %71 = fmul double %70, %70
  store double %71, ptr %5, align 8
  %72 = load double, ptr %3, align 8
  %73 = load double, ptr @A6, align 8
  %74 = load double, ptr @A5, align 8
  %75 = call double @llvm.fmuladd.f64(double %73, double %71, double %74)
  %76 = load double, ptr @A4, align 8
  %77 = call double @llvm.fmuladd.f64(double %75, double %71, double %76)
  %78 = load double, ptr @A3, align 8
  %79 = call double @llvm.fmuladd.f64(double %77, double %71, double %78)
  %80 = load double, ptr @A2, align 8
  %81 = call double @llvm.fmuladd.f64(double %79, double %71, double %80)
  %82 = load double, ptr @A1, align 8
  %83 = call double @llvm.fmuladd.f64(double %81, double %71, double %82)
  %84 = load double, ptr @one, align 8
  %85 = call double @llvm.fmuladd.f64(double %83, double %71, double %84)
  %86 = fmul double %72, %85
  store double %86, ptr @sa, align 8
  %87 = load double, ptr %5, align 8
  %88 = load double, ptr @B6, align 8
  %89 = load double, ptr @B5, align 8
  %90 = call double @llvm.fmuladd.f64(double %88, double %87, double %89)
  %91 = load double, ptr @B4, align 8
  %92 = call double @llvm.fmuladd.f64(double %87, double %90, double %91)
  %93 = load double, ptr @B3, align 8
  %94 = call double @llvm.fmuladd.f64(double %87, double %92, double %93)
  %95 = load double, ptr @B2, align 8
  %96 = call double @llvm.fmuladd.f64(double %87, double %94, double %95)
  %97 = load double, ptr @B1, align 8
  %98 = call double @llvm.fmuladd.f64(double %87, double %96, double %97)
  %99 = load double, ptr @one, align 8
  %100 = call double @llvm.fmuladd.f64(double %87, double %98, double %99)
  store double %100, ptr @sb, align 8
  %101 = load double, ptr @sa, align 8
  %102 = fmul double %100, %101
  store double %102, ptr @sa, align 8
  %103 = load double, ptr %6, align 8
  %104 = load double, ptr @two, align 8
  %105 = load double, ptr %2, align 8
  %106 = call double @llvm.fmuladd.f64(double %104, double %105, double %102)
  %107 = fmul double %103, %106
  %108 = fdiv double %107, %104
  store double %108, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %109 = load double, ptr @sa, align 8
  %110 = fsub double %109, 2.500000e-01
  store double %110, ptr @sc, align 8
  %111 = fmul double %110, 1.000000e-30
  %112 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %111, double noundef 0.000000e+00, double noundef 0.000000e+00)
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
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Misc/flops-6.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
