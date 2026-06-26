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
  store double 1.000000e+00, ptr @scale, align 8
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store i32 156250000, ptr %10, align 4
  %15 = load double, ptr @piref, align 8
  %16 = load double, ptr @three, align 8
  %17 = fmul double %16, 1.562500e+08
  %18 = fdiv double %15, %17
  store double %18, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  store i32 1, ptr %9, align 4
  br label %19

19:                                               ; preds = %23, %0
  %20 = phi double [ %54, %23 ], [ 0.000000e+00, %0 ]
  %21 = phi i32 [ %55, %23 ], [ 1, %0 ]
  %22 = icmp sle i32 %21, 156249999
  br i1 %22, label %23, label %56

23:                                               ; preds = %19
  %24 = sitofp i32 %21 to double
  %25 = fmul double %24, %18
  store double %25, ptr %3, align 8
  %26 = fmul double %25, %25
  store double %26, ptr %5, align 8
  %27 = load double, ptr @A6, align 8
  %28 = load double, ptr @A5, align 8
  %29 = call double @llvm.fmuladd.f64(double %27, double %26, double %28)
  %30 = load double, ptr @A4, align 8
  %31 = call double @llvm.fmuladd.f64(double %29, double %26, double %30)
  %32 = load double, ptr @A3, align 8
  %33 = call double @llvm.fmuladd.f64(double %31, double %26, double %32)
  %34 = load double, ptr @A2, align 8
  %35 = call double @llvm.fmuladd.f64(double %33, double %26, double %34)
  %36 = load double, ptr @A1, align 8
  %37 = call double @llvm.fmuladd.f64(double %35, double %26, double %36)
  %38 = load double, ptr @one, align 8
  %39 = call double @llvm.fmuladd.f64(double %37, double %26, double %38)
  %40 = fmul double %25, %39
  store double %40, ptr %4, align 8
  %41 = load double, ptr @B6, align 8
  %42 = load double, ptr @B5, align 8
  %43 = call double @llvm.fmuladd.f64(double %41, double %26, double %42)
  %44 = load double, ptr @B4, align 8
  %45 = call double @llvm.fmuladd.f64(double %26, double %43, double %44)
  %46 = load double, ptr @B3, align 8
  %47 = call double @llvm.fmuladd.f64(double %26, double %45, double %46)
  %48 = load double, ptr @B2, align 8
  %49 = call double @llvm.fmuladd.f64(double %26, double %47, double %48)
  %50 = load double, ptr @B1, align 8
  %51 = call double @llvm.fmuladd.f64(double %26, double %49, double %50)
  %52 = call double @llvm.fmuladd.f64(double %26, double %51, double %38)
  %53 = fdiv double %40, %52
  %54 = fadd double %20, %53
  store double %54, ptr %2, align 8
  %55 = add nsw i32 %21, 1
  store i32 %55, ptr %9, align 4
  br label %19, !llvm.loop !7

56:                                               ; preds = %19
  %57 = fdiv double %15, %16
  store double %57, ptr %3, align 8
  %58 = fmul double %57, %57
  store double %58, ptr %5, align 8
  %59 = load double, ptr @A6, align 8
  %60 = load double, ptr @A5, align 8
  %61 = call double @llvm.fmuladd.f64(double %59, double %58, double %60)
  %62 = load double, ptr @A4, align 8
  %63 = call double @llvm.fmuladd.f64(double %61, double %58, double %62)
  %64 = load double, ptr @A3, align 8
  %65 = call double @llvm.fmuladd.f64(double %63, double %58, double %64)
  %66 = load double, ptr @A2, align 8
  %67 = call double @llvm.fmuladd.f64(double %65, double %58, double %66)
  %68 = load double, ptr @A1, align 8
  %69 = call double @llvm.fmuladd.f64(double %67, double %58, double %68)
  %70 = load double, ptr @one, align 8
  %71 = call double @llvm.fmuladd.f64(double %69, double %58, double %70)
  %72 = fmul double %57, %71
  store double %72, ptr @sa, align 8
  %73 = load double, ptr @B6, align 8
  %74 = load double, ptr @B5, align 8
  %75 = call double @llvm.fmuladd.f64(double %73, double %58, double %74)
  %76 = load double, ptr @B4, align 8
  %77 = call double @llvm.fmuladd.f64(double %58, double %75, double %76)
  %78 = load double, ptr @B3, align 8
  %79 = call double @llvm.fmuladd.f64(double %58, double %77, double %78)
  %80 = load double, ptr @B2, align 8
  %81 = call double @llvm.fmuladd.f64(double %58, double %79, double %80)
  %82 = load double, ptr @B1, align 8
  %83 = call double @llvm.fmuladd.f64(double %58, double %81, double %82)
  %84 = call double @llvm.fmuladd.f64(double %58, double %83, double %70)
  store double %84, ptr @sb, align 8
  %85 = fdiv double %72, %84
  store double %85, ptr @sa, align 8
  %86 = load double, ptr @two, align 8
  %87 = call double @llvm.fmuladd.f64(double %86, double %20, double %85)
  %88 = fmul double %18, %87
  %89 = fdiv double %88, %86
  store double %89, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %90 = fsub double %89, f0x3FE62E42FEFA39EF
  store double %90, ptr @sc, align 8
  %91 = fmul double %90, 1.000000e-30
  %92 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %91, double noundef 0.000000e+00, double noundef 0.000000e+00)
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
