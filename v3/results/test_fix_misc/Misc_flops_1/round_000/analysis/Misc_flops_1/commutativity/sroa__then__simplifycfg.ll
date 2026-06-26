; ModuleID = 'results\test_fix_misc\Misc_flops_1\Misc_flops_1.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Misc/flops-1.c"
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
@sa = dso_local global double 0.000000e+00, align 8
@sb = dso_local global double 0.000000e+00, align 8
@sc = dso_local global double 0.000000e+00, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"     1   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@nulltime = dso_local global double 0.000000e+00, align 8
@TimeArray = dso_local global [3 x double] zeroinitializer, align 16
@sd = dso_local global double 0.000000e+00, align 8
@piprg = dso_local global double 0.000000e+00, align 8
@pierr = dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %3 = sitofp i32 15625 to double
  %4 = fdiv double 1.000000e+06, %3
  store double %4, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  store double 1.000000e+00, ptr @TLimit, align 8
  store double f0x400921FB54442D18, ptr @piref, align 8
  store double 1.000000e+00, ptr @one, align 8
  store double 2.000000e+00, ptr @two, align 8
  store double 3.000000e+00, ptr @three, align 8
  store double 4.000000e+00, ptr @four, align 8
  store double 5.000000e+00, ptr @five, align 8
  %5 = load double, ptr @one, align 8
  store double %5, ptr @scale, align 8
  %6 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %7 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %8 = mul nsw i32 15625, 10000
  store double 0.000000e+00, ptr @sa, align 8
  %9 = mul nsw i32 2, %8
  %10 = load double, ptr @one, align 8
  %11 = sitofp i32 %9 to double
  %12 = fdiv double %10, %11
  %13 = load double, ptr @one, align 8
  br label %14

14:                                               ; preds = %17, %0
  %.020 = phi double [ 0.000000e+00, %0 ], [ %18, %17 ]
  %.019 = phi double [ 0.000000e+00, %0 ], [ %32, %17 ]
  %.0 = phi i32 [ 1, %0 ], [ %33, %17 ]
  %15 = sub nsw i32 %9, 1
  %16 = icmp sle i32 %.0, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  %18 = fadd double %.020, %13
  %19 = fmul double %18, %12
  %20 = load double, ptr @D1, align 8
  %21 = load double, ptr @D2, align 8
  %22 = load double, ptr @D3, align 8
  %23 = call double @llvm.fmuladd.f64(double %19, double %22, double %21)
  %24 = call double @llvm.fmuladd.f64(double %19, double %23, double %20)
  %25 = load double, ptr @D1, align 8
  %26 = load double, ptr @E2, align 8
  %27 = load double, ptr @E3, align 8
  %28 = call double @llvm.fmuladd.f64(double %19, double %27, double %26)
  %29 = call double @llvm.fmuladd.f64(double %19, double %28, double %25)
  %30 = call double @llvm.fmuladd.f64(double %19, double %29, double %13)
  %31 = fdiv double %24, %30
  %32 = fadd double %.019, %31
  %33 = add nsw i32 %.0, 1
  br label %14, !llvm.loop !7

34:                                               ; preds = %14
  %35 = load double, ptr @D1, align 8
  %36 = load double, ptr @D2, align 8
  %37 = fadd double %35, %36
  %38 = load double, ptr @D3, align 8
  %39 = fadd double %37, %38
  %40 = load double, ptr @one, align 8
  %41 = load double, ptr @D1, align 8
  %42 = fadd double %40, %41
  %43 = load double, ptr @E2, align 8
  %44 = fadd double %42, %43
  %45 = load double, ptr @E3, align 8
  %46 = fadd double %44, %45
  %47 = fdiv double %39, %46
  store double %47, ptr @sa, align 8
  %48 = load double, ptr @D1, align 8
  store double %48, ptr @sb, align 8
  %49 = load double, ptr @sa, align 8
  %50 = load double, ptr @sb, align 8
  %51 = fadd double %49, %50
  %52 = load double, ptr @two, align 8
  %53 = call double @llvm.fmuladd.f64(double %52, double %.019, double %51)
  %54 = fmul double %12, %53
  %55 = load double, ptr @two, align 8
  %56 = fdiv double %54, %55
  store double %56, ptr @sa, align 8
  %57 = load double, ptr @one, align 8
  %58 = load double, ptr @sa, align 8
  %59 = fdiv double %57, %58
  store double %59, ptr @sb, align 8
  %60 = load double, ptr @sb, align 8
  %61 = fptosi double %60 to i32
  %62 = mul nsw i32 40000, %61
  %63 = sitofp i32 %62 to double
  %64 = load double, ptr @scale, align 8
  %65 = fdiv double %63, %64
  %66 = fptosi double %65 to i32
  %67 = load double, ptr @sb, align 8
  %68 = fsub double %67, 2.520000e+01
  store double %68, ptr @sc, align 8
  %69 = load double, ptr @sc, align 8
  %70 = fmul double %69, 1.000000e-30
  %71 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %70, double noundef 0.000000e+00, double noundef 0.000000e+00)
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
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Misc/flops-1.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
