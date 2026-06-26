; ModuleID = 'results\paper_full\Misc_flops_3\Misc_flops_3.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Misc/flops-3.c"
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
@.str.4 = private unnamed_addr constant [36 x i8] c"     3   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
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
  %17 = mul nsw i32 %16, 20000
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
  %25 = load double, ptr @one, align 8
  %26 = load double, ptr %6, align 8
  %27 = load double, ptr @A6, align 8
  %28 = load double, ptr @A5, align 8
  %29 = fneg double %28
  %30 = load double, ptr @A4, align 8
  %31 = load double, ptr @A3, align 8
  %32 = fneg double %31
  %33 = load double, ptr @A2, align 8
  %34 = load double, ptr @A1, align 8
  %.promoted1 = load double, ptr %4, align 8
  %.promoted3 = load double, ptr %3, align 8
  %.promoted5 = load double, ptr %5, align 8
  %.promoted7 = load double, ptr %2, align 8
  br label %35

35:                                               ; preds = %53, %0
  %36 = phi double [ %52, %53 ], [ %.promoted7, %0 ]
  %37 = phi double [ %45, %53 ], [ %.promoted5, %0 ]
  %38 = phi double [ %44, %53 ], [ %.promoted3, %0 ]
  %39 = phi double [ %43, %53 ], [ %.promoted1, %0 ]
  %40 = phi i32 [ %54, %53 ], [ 1, %0 ]
  %41 = icmp sle i32 %40, %24
  br i1 %41, label %42, label %55

42:                                               ; preds = %35
  %43 = fadd double %39, %25
  %44 = fmul double %43, %26
  %45 = fmul double %44, %44
  %46 = call double @llvm.fmuladd.f64(double %27, double %45, double %29)
  %47 = call double @llvm.fmuladd.f64(double %46, double %45, double %30)
  %48 = call double @llvm.fmuladd.f64(double %47, double %45, double %32)
  %49 = call double @llvm.fmuladd.f64(double %48, double %45, double %33)
  %50 = call double @llvm.fmuladd.f64(double %49, double %45, double %34)
  %51 = call double @llvm.fmuladd.f64(double %50, double %45, double %25)
  %52 = call double @llvm.fmuladd.f64(double %44, double %51, double %36)
  br label %53

53:                                               ; preds = %42
  %54 = add nsw i32 %40, 1
  br label %35, !llvm.loop !7

55:                                               ; preds = %35
  store i32 %40, ptr %9, align 4
  store double %39, ptr %4, align 8
  store double %38, ptr %3, align 8
  store double %37, ptr %5, align 8
  store double %36, ptr %2, align 8
  %56 = load double, ptr @piref, align 8
  %57 = load double, ptr @three, align 8
  %58 = fdiv double %56, %57
  store double %58, ptr %3, align 8
  %59 = fmul double %58, %58
  store double %59, ptr %5, align 8
  %60 = load double, ptr %3, align 8
  %61 = load double, ptr @A6, align 8
  %62 = load double, ptr @A5, align 8
  %63 = fneg double %62
  %64 = call double @llvm.fmuladd.f64(double %61, double %59, double %63)
  %65 = load double, ptr @A4, align 8
  %66 = call double @llvm.fmuladd.f64(double %64, double %59, double %65)
  %67 = load double, ptr @A3, align 8
  %68 = fneg double %67
  %69 = call double @llvm.fmuladd.f64(double %66, double %59, double %68)
  %70 = load double, ptr @A2, align 8
  %71 = call double @llvm.fmuladd.f64(double %69, double %59, double %70)
  %72 = load double, ptr @A1, align 8
  %73 = call double @llvm.fmuladd.f64(double %71, double %59, double %72)
  %74 = load double, ptr @one, align 8
  %75 = call double @llvm.fmuladd.f64(double %73, double %59, double %74)
  %76 = fmul double %60, %75
  store double %76, ptr @sa, align 8
  %77 = load double, ptr %6, align 8
  %78 = load double, ptr @two, align 8
  %79 = load double, ptr %2, align 8
  %80 = call double @llvm.fmuladd.f64(double %78, double %79, double %76)
  %81 = fmul double %77, %80
  %82 = fdiv double %81, %78
  store double %82, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %83 = load double, ptr @sa, align 8
  %84 = fsub double %83, 5.000000e-01
  store double %84, ptr @sc, align 8
  %85 = fmul double %84, 1.000000e-30
  %86 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %85, double noundef 0.000000e+00, double noundef 0.000000e+00)
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
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Misc/flops-3.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
