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
  store double 1.000000e+00, ptr @scale, align 8
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store i32 312500000, ptr %10, align 4
  %15 = load double, ptr @piref, align 8
  %16 = load double, ptr @three, align 8
  %17 = fmul double %16, 3.125000e+08
  %18 = fdiv double %15, %17
  store double %18, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  store i32 1, ptr %9, align 4
  br label %19

19:                                               ; preds = %24, %0
  %20 = phi double [ %26, %24 ], [ 0.000000e+00, %0 ]
  %21 = phi double [ %43, %24 ], [ 0.000000e+00, %0 ]
  %22 = phi i32 [ %44, %24 ], [ 1, %0 ]
  %23 = icmp sle i32 %22, 312499999
  br i1 %23, label %24, label %45

24:                                               ; preds = %19
  %25 = load double, ptr @one, align 8
  %26 = fadd double %20, %25
  store double %26, ptr %4, align 8
  %27 = fmul double %26, %18
  store double %27, ptr %3, align 8
  %28 = fmul double %27, %27
  store double %28, ptr %5, align 8
  %29 = load double, ptr @A6, align 8
  %30 = load double, ptr @A5, align 8
  %31 = fneg double %30
  %32 = call double @llvm.fmuladd.f64(double %29, double %28, double %31)
  %33 = load double, ptr @A4, align 8
  %34 = call double @llvm.fmuladd.f64(double %32, double %28, double %33)
  %35 = load double, ptr @A3, align 8
  %36 = fneg double %35
  %37 = call double @llvm.fmuladd.f64(double %34, double %28, double %36)
  %38 = load double, ptr @A2, align 8
  %39 = call double @llvm.fmuladd.f64(double %37, double %28, double %38)
  %40 = load double, ptr @A1, align 8
  %41 = call double @llvm.fmuladd.f64(double %39, double %28, double %40)
  %42 = call double @llvm.fmuladd.f64(double %41, double %28, double %25)
  %43 = call double @llvm.fmuladd.f64(double %27, double %42, double %21)
  store double %43, ptr %2, align 8
  %44 = add nsw i32 %22, 1
  store i32 %44, ptr %9, align 4
  br label %19, !llvm.loop !7

45:                                               ; preds = %19
  %46 = fdiv double %15, %16
  store double %46, ptr %3, align 8
  %47 = fmul double %46, %46
  store double %47, ptr %5, align 8
  %48 = load double, ptr @A6, align 8
  %49 = load double, ptr @A5, align 8
  %50 = fneg double %49
  %51 = call double @llvm.fmuladd.f64(double %48, double %47, double %50)
  %52 = load double, ptr @A4, align 8
  %53 = call double @llvm.fmuladd.f64(double %51, double %47, double %52)
  %54 = load double, ptr @A3, align 8
  %55 = fneg double %54
  %56 = call double @llvm.fmuladd.f64(double %53, double %47, double %55)
  %57 = load double, ptr @A2, align 8
  %58 = call double @llvm.fmuladd.f64(double %56, double %47, double %57)
  %59 = load double, ptr @A1, align 8
  %60 = call double @llvm.fmuladd.f64(double %58, double %47, double %59)
  %61 = load double, ptr @one, align 8
  %62 = call double @llvm.fmuladd.f64(double %60, double %47, double %61)
  %63 = fmul double %46, %62
  store double %63, ptr @sa, align 8
  %64 = load double, ptr @two, align 8
  %65 = call double @llvm.fmuladd.f64(double %64, double %21, double %63)
  %66 = fmul double %18, %65
  %67 = fdiv double %66, %64
  store double %67, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %68 = fsub double %67, 5.000000e-01
  store double %68, ptr @sc, align 8
  %69 = fmul double %68, 1.000000e-30
  %70 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %69, double noundef 0.000000e+00, double noundef 0.000000e+00)
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
