; ModuleID = 'results\paper_full\Misc_flops_2\Misc_flops_2.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Misc/flops-2.c"
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
@sb = dso_local global double 0.000000e+00, align 8
@piprg = dso_local global double 0.000000e+00, align 8
@pierr = dso_local global double 0.000000e+00, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"     2   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@nulltime = dso_local global double 0.000000e+00, align 8
@TimeArray = dso_local global [3 x double] zeroinitializer, align 16
@T = dso_local global [36 x double] zeroinitializer, align 16
@sd = dso_local global double 0.000000e+00, align 8

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
  %7 = load double, ptr @five, align 8
  %8 = fneg double %7
  %9 = load double, ptr @one, align 8
  %10 = fneg double %9
  store double %10, ptr @sa, align 8
  br label %11

11:                                               ; preds = %0, %15
  %.034 = phi i32 [ 1, %0 ], [ %16, %15 ]
  %.02733 = phi double [ %8, %0 ], [ %12, %15 ]
  %12 = fneg double %.02733
  %13 = load double, ptr @sa, align 8
  %14 = fadd double %13, %12
  store double %14, ptr @sa, align 8
  br label %15

15:                                               ; preds = %11
  %16 = add nsw i32 %.034, 1
  %17 = icmp sle i32 %16, %6
  br i1 %17, label %11, label %18, !llvm.loop !7

18:                                               ; preds = %15
  %.027.lcssa = phi double [ %12, %15 ]
  %19 = sitofp i32 %6 to double
  store double %19, ptr @sc, align 8
  %20 = load double, ptr @sa, align 8
  br label %21

21:                                               ; preds = %18, %33
  %.140 = phi i32 [ 1, %18 ], [ %34, %33 ]
  %.12839 = phi double [ %.027.lcssa, %18 ], [ %22, %33 ]
  %.02938 = phi double [ %20, %18 ], [ %26, %33 ]
  %.03037 = phi double [ 0.000000e+00, %18 ], [ %28, %33 ]
  %.03136 = phi double [ 0.000000e+00, %18 ], [ %32, %33 ]
  %.03235 = phi double [ 0.000000e+00, %18 ], [ %30, %33 ]
  %22 = fneg double %.12839
  %23 = load double, ptr @sa, align 8
  %24 = fadd double %23, %22
  store double %24, ptr @sa, align 8
  %25 = load double, ptr @two, align 8
  %26 = fadd double %.02938, %25
  %27 = fsub double %22, %26
  %28 = fadd double %.03037, %27
  %29 = fneg double %22
  %30 = call double @llvm.fmuladd.f64(double %29, double %26, double %.03235)
  %31 = fdiv double %22, %26
  %32 = fadd double %.03136, %31
  br label %33

33:                                               ; preds = %21
  %34 = add nsw i32 %.140, 1
  %35 = icmp sle i32 %34, %6
  br i1 %35, label %21, label %36, !llvm.loop !9

36:                                               ; preds = %33
  %.032.lcssa = phi double [ %30, %33 ]
  %.031.lcssa = phi double [ %32, %33 ]
  %.030.lcssa = phi double [ %28, %33 ]
  %37 = load double, ptr @sa, align 8
  %38 = fmul double %37, %.030.lcssa
  %39 = load double, ptr @sc, align 8
  %40 = fdiv double %38, %39
  %41 = fptosi double %40 to i32
  %42 = load double, ptr @four, align 8
  %43 = fmul double %42, %.031.lcssa
  %44 = load double, ptr @five, align 8
  %45 = fdiv double %43, %44
  store double %45, ptr @sa, align 8
  %46 = load double, ptr @sa, align 8
  %47 = load double, ptr @five, align 8
  %48 = fdiv double %47, %.032.lcssa
  %49 = fadd double %46, %48
  store double %49, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %50 = load double, ptr @sb, align 8
  %51 = load double, ptr @sc, align 8
  %52 = fmul double %.032.lcssa, %.032.lcssa
  %53 = fmul double %52, %.032.lcssa
  %54 = fdiv double %51, %53
  %55 = fsub double %50, %54
  store double %55, ptr @piprg, align 8
  %56 = load double, ptr @piprg, align 8
  %57 = load double, ptr @piref, align 8
  %58 = fsub double %56, %57
  store double %58, ptr @pierr, align 8
  %59 = load double, ptr @pierr, align 8
  %60 = fmul double %59, 1.000000e-30
  %61 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %60, double noundef 0.000000e+00, double noundef 0.000000e+00)
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
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Misc/flops-2.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
