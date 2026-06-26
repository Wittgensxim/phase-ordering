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
  %19 = load double, ptr @three, align 8
  %20 = sitofp i32 %17 to double
  %21 = fmul double %19, %20
  %22 = fdiv double %18, %21
  store double %22, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  store i32 1, ptr %9, align 4
  %23 = load i32, ptr %10, align 4
  %24 = sub nsw i32 %23, 1
  %25 = icmp sle i32 1, %24
  br i1 %25, label %.lr.ph, label %70

.lr.ph:                                           ; preds = %0
  br label %26

26:                                               ; preds = %.lr.ph, %64
  %27 = load i32, ptr %9, align 4
  %28 = sitofp i32 %27 to double
  %29 = load double, ptr %6, align 8
  %30 = fmul double %28, %29
  store double %30, ptr %3, align 8
  %31 = fmul double %30, %30
  store double %31, ptr %5, align 8
  %32 = load double, ptr %3, align 8
  %33 = load double, ptr @A6, align 8
  %34 = load double, ptr @A5, align 8
  %35 = call double @llvm.fmuladd.f64(double %33, double %31, double %34)
  %36 = load double, ptr @A4, align 8
  %37 = call double @llvm.fmuladd.f64(double %35, double %31, double %36)
  %38 = load double, ptr @A3, align 8
  %39 = call double @llvm.fmuladd.f64(double %37, double %31, double %38)
  %40 = load double, ptr @A2, align 8
  %41 = call double @llvm.fmuladd.f64(double %39, double %31, double %40)
  %42 = load double, ptr @A1, align 8
  %43 = call double @llvm.fmuladd.f64(double %41, double %31, double %42)
  %44 = load double, ptr @one, align 8
  %45 = call double @llvm.fmuladd.f64(double %43, double %31, double %44)
  %46 = fmul double %32, %45
  store double %46, ptr %4, align 8
  %47 = load double, ptr %2, align 8
  %48 = load double, ptr %5, align 8
  %49 = load double, ptr @B6, align 8
  %50 = load double, ptr @B5, align 8
  %51 = call double @llvm.fmuladd.f64(double %49, double %48, double %50)
  %52 = load double, ptr @B4, align 8
  %53 = call double @llvm.fmuladd.f64(double %48, double %51, double %52)
  %54 = load double, ptr @B3, align 8
  %55 = call double @llvm.fmuladd.f64(double %48, double %53, double %54)
  %56 = load double, ptr @B2, align 8
  %57 = call double @llvm.fmuladd.f64(double %48, double %55, double %56)
  %58 = load double, ptr @B1, align 8
  %59 = call double @llvm.fmuladd.f64(double %48, double %57, double %58)
  %60 = load double, ptr @one, align 8
  %61 = call double @llvm.fmuladd.f64(double %48, double %59, double %60)
  %62 = fdiv double %46, %61
  %63 = fadd double %47, %62
  store double %63, ptr %2, align 8
  br label %64

64:                                               ; preds = %26
  %65 = load i32, ptr %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr %9, align 4
  %67 = load i32, ptr %10, align 4
  %68 = sub nsw i32 %67, 1
  %69 = icmp sle i32 %66, %68
  br i1 %69, label %26, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %64
  br label %70

70:                                               ; preds = %._crit_edge, %0
  %71 = load double, ptr @piref, align 8
  %72 = load double, ptr @three, align 8
  %73 = fdiv double %71, %72
  store double %73, ptr %3, align 8
  %74 = fmul double %73, %73
  store double %74, ptr %5, align 8
  %75 = load double, ptr %3, align 8
  %76 = load double, ptr @A6, align 8
  %77 = load double, ptr @A5, align 8
  %78 = call double @llvm.fmuladd.f64(double %76, double %74, double %77)
  %79 = load double, ptr @A4, align 8
  %80 = call double @llvm.fmuladd.f64(double %78, double %74, double %79)
  %81 = load double, ptr @A3, align 8
  %82 = call double @llvm.fmuladd.f64(double %80, double %74, double %81)
  %83 = load double, ptr @A2, align 8
  %84 = call double @llvm.fmuladd.f64(double %82, double %74, double %83)
  %85 = load double, ptr @A1, align 8
  %86 = call double @llvm.fmuladd.f64(double %84, double %74, double %85)
  %87 = load double, ptr @one, align 8
  %88 = call double @llvm.fmuladd.f64(double %86, double %74, double %87)
  %89 = fmul double %75, %88
  store double %89, ptr @sa, align 8
  %90 = load double, ptr %5, align 8
  %91 = load double, ptr @B6, align 8
  %92 = load double, ptr @B5, align 8
  %93 = call double @llvm.fmuladd.f64(double %91, double %90, double %92)
  %94 = load double, ptr @B4, align 8
  %95 = call double @llvm.fmuladd.f64(double %90, double %93, double %94)
  %96 = load double, ptr @B3, align 8
  %97 = call double @llvm.fmuladd.f64(double %90, double %95, double %96)
  %98 = load double, ptr @B2, align 8
  %99 = call double @llvm.fmuladd.f64(double %90, double %97, double %98)
  %100 = load double, ptr @B1, align 8
  %101 = call double @llvm.fmuladd.f64(double %90, double %99, double %100)
  %102 = load double, ptr @one, align 8
  %103 = call double @llvm.fmuladd.f64(double %90, double %101, double %102)
  store double %103, ptr @sb, align 8
  %104 = load double, ptr @sa, align 8
  %105 = fdiv double %104, %103
  store double %105, ptr @sa, align 8
  %106 = load double, ptr %6, align 8
  %107 = load double, ptr @two, align 8
  %108 = load double, ptr %2, align 8
  %109 = call double @llvm.fmuladd.f64(double %107, double %108, double %105)
  %110 = fmul double %106, %109
  %111 = fdiv double %110, %107
  store double %111, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %112 = load double, ptr @sa, align 8
  %113 = fsub double %112, f0x3FE62E42FEFA39EF
  store double %113, ptr @sc, align 8
  %114 = fmul double %113, 1.000000e-30
  %115 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %114, double noundef 0.000000e+00, double noundef 0.000000e+00)
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
