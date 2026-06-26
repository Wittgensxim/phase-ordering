; ModuleID = 'results\paper_full\Misc_flops_7\Misc_flops_7.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Misc/flops-7.c"
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
@sc = dso_local global double 0.000000e+00, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"     7   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@nulltime = dso_local global double 0.000000e+00, align 8
@TimeArray = dso_local global [3 x double] zeroinitializer, align 16
@T = dso_local global [36 x double] zeroinitializer, align 16
@sb = dso_local global double 0.000000e+00, align 8
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
  %3 = load double, ptr @one, align 8
  store double %3, ptr @scale, align 8
  %4 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %5 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %6 = mul nsw i32 15625, 10000
  %7 = load double, ptr @one, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %8 = load double, ptr @sa, align 8
  %9 = sitofp i32 %6 to double
  %10 = fdiv double %8, %9
  %11 = sub nsw i32 %6, 1
  %12 = icmp sle i32 1, %11
  br i1 %12, label %.lr.ph, label %30

.lr.ph:                                           ; preds = %0
  br label %13

13:                                               ; preds = %.lr.ph, %26
  %.01 = phi i32 [ 1, %.lr.ph ], [ %27, %26 ]
  %.0 = phi double [ 0.000000e+00, %.lr.ph ], [ %25, %26 ]
  %14 = sitofp i32 %.01 to double
  %15 = fmul double %14, %10
  %16 = fmul double %15, %15
  %17 = fadd double %15, %7
  %18 = fdiv double %7, %17
  %19 = fsub double %.0, %18
  %20 = fadd double %16, %7
  %21 = fdiv double %15, %20
  %22 = fsub double %19, %21
  %23 = call double @llvm.fmuladd.f64(double %15, double %16, double %7)
  %24 = fdiv double %16, %23
  %25 = fsub double %22, %24
  br label %26

26:                                               ; preds = %13
  %27 = add nsw i32 %.01, 1
  %28 = sub nsw i32 %6, 1
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %13, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %26
  br label %30

30:                                               ; preds = %._crit_edge, %0
  %.1 = phi double [ %25, %._crit_edge ], [ 0.000000e+00, %0 ]
  %31 = load double, ptr @sa, align 8
  %32 = fmul double %31, %31
  %33 = fneg double %7
  %34 = fadd double %31, %7
  %35 = fdiv double %7, %34
  %36 = fsub double %33, %35
  %37 = fadd double %32, %7
  %38 = fdiv double %31, %37
  %39 = fsub double %36, %38
  %40 = call double @llvm.fmuladd.f64(double %31, double %32, double %7)
  %41 = fdiv double %32, %40
  %42 = fsub double %39, %41
  store double %42, ptr @sa, align 8
  %43 = fmul double 1.800000e+01, %10
  %44 = load double, ptr @sa, align 8
  %45 = load double, ptr @two, align 8
  %46 = call double @llvm.fmuladd.f64(double %45, double %.1, double %44)
  %47 = fmul double %43, %46
  store double %47, ptr @sa, align 8
  %48 = load double, ptr @sa, align 8
  %49 = fptosi double %48 to i32
  %50 = mul nsw i32 -2000, %49
  %51 = sitofp i32 %50 to double
  %52 = load double, ptr @scale, align 8
  %53 = fdiv double %51, %52
  %54 = fptosi double %53 to i32
  %55 = load double, ptr @sa, align 8
  %56 = fadd double %55, 5.002000e+02
  store double %56, ptr @sc, align 8
  %57 = load double, ptr @sc, align 8
  %58 = fmul double %57, 1.000000e-30
  %59 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %58, double noundef 0.000000e+00, double noundef 0.000000e+00)
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
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Misc/flops-7.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
