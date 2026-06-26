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
  %1 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store double 1.000000e+00, ptr @TLimit, align 8
  store double f0x400921FB54442D18, ptr @piref, align 8
  store double 1.000000e+00, ptr @one, align 8
  store double 2.000000e+00, ptr @two, align 8
  store double 3.000000e+00, ptr @three, align 8
  store double 4.000000e+00, ptr @four, align 8
  store double 5.000000e+00, ptr @five, align 8
  store double 1.000000e+00, ptr @scale, align 8
  %3 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %4 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %5 = load double, ptr @piref, align 8
  %6 = load double, ptr @three, align 8
  %7 = fmul double %6, 3.125000e+08
  %8 = fdiv double %5, %7
  br label %9

9:                                                ; preds = %11, %0
  %.029 = phi double [ 0.000000e+00, %0 ], [ %13, %11 ]
  %.028 = phi i32 [ 1, %0 ], [ %31, %11 ]
  %.0 = phi double [ 0.000000e+00, %0 ], [ %30, %11 ]
  %10 = icmp sle i32 %.028, 312499999
  br i1 %10, label %11, label %32

11:                                               ; preds = %9
  %12 = load double, ptr @one, align 8
  %13 = fadd double %.029, %12
  %14 = fmul double %13, %8
  %15 = fmul double %14, %14
  %16 = load double, ptr @A6, align 8
  %17 = load double, ptr @A5, align 8
  %18 = fneg double %17
  %19 = call double @llvm.fmuladd.f64(double %16, double %15, double %18)
  %20 = load double, ptr @A4, align 8
  %21 = call double @llvm.fmuladd.f64(double %19, double %15, double %20)
  %22 = load double, ptr @A3, align 8
  %23 = fneg double %22
  %24 = call double @llvm.fmuladd.f64(double %21, double %15, double %23)
  %25 = load double, ptr @A2, align 8
  %26 = call double @llvm.fmuladd.f64(double %24, double %15, double %25)
  %27 = load double, ptr @A1, align 8
  %28 = call double @llvm.fmuladd.f64(double %26, double %15, double %27)
  %29 = call double @llvm.fmuladd.f64(double %28, double %15, double %12)
  %30 = call double @llvm.fmuladd.f64(double %14, double %29, double %.0)
  %31 = add nsw i32 %.028, 1
  br label %9, !llvm.loop !7

32:                                               ; preds = %9
  %33 = fdiv double %5, %6
  %34 = fmul double %33, %33
  %35 = load double, ptr @A6, align 8
  %36 = load double, ptr @A5, align 8
  %37 = fneg double %36
  %38 = call double @llvm.fmuladd.f64(double %35, double %34, double %37)
  %39 = load double, ptr @A4, align 8
  %40 = call double @llvm.fmuladd.f64(double %38, double %34, double %39)
  %41 = load double, ptr @A3, align 8
  %42 = fneg double %41
  %43 = call double @llvm.fmuladd.f64(double %40, double %34, double %42)
  %44 = load double, ptr @A2, align 8
  %45 = call double @llvm.fmuladd.f64(double %43, double %34, double %44)
  %46 = load double, ptr @A1, align 8
  %47 = call double @llvm.fmuladd.f64(double %45, double %34, double %46)
  %48 = load double, ptr @one, align 8
  %49 = call double @llvm.fmuladd.f64(double %47, double %34, double %48)
  %50 = fmul double %33, %49
  store double %50, ptr @sa, align 8
  %51 = load double, ptr @two, align 8
  %52 = call double @llvm.fmuladd.f64(double %51, double %.0, double %50)
  %53 = fmul double %8, %52
  %54 = fdiv double %53, %51
  store double %54, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %55 = fsub double %54, 5.000000e-01
  store double %55, ptr @sc, align 8
  %56 = fmul double %55, 1.000000e-30
  %57 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %56, double noundef 0.000000e+00, double noundef 0.000000e+00)
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
