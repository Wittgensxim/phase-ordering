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

11:                                               ; preds = %17, %0
  %.05 = phi i32 [ 1, %0 ], [ %18, %17 ]
  %.0 = phi double [ %8, %0 ], [ %14, %17 ]
  %12 = icmp sle i32 %.05, %6
  br i1 %12, label %13, label %19

13:                                               ; preds = %11
  %14 = fneg double %.0
  %15 = load double, ptr @sa, align 8
  %16 = fadd double %15, %14
  store double %16, ptr @sa, align 8
  br label %17

17:                                               ; preds = %13
  %18 = add nsw i32 %.05, 1
  br label %11, !llvm.loop !7

19:                                               ; preds = %11
  %20 = sitofp i32 %6 to double
  store double %20, ptr @sc, align 8
  %21 = load double, ptr @sa, align 8
  br label %22

22:                                               ; preds = %36, %19
  %.16 = phi i32 [ 1, %19 ], [ %37, %36 ]
  %.04 = phi double [ 0.000000e+00, %19 ], [ %31, %36 ]
  %.03 = phi double [ 0.000000e+00, %19 ], [ %35, %36 ]
  %.02 = phi double [ 0.000000e+00, %19 ], [ %33, %36 ]
  %.01 = phi double [ %21, %19 ], [ %29, %36 ]
  %.1 = phi double [ %.0, %19 ], [ %25, %36 ]
  %23 = icmp sle i32 %.16, %6
  br i1 %23, label %24, label %38

24:                                               ; preds = %22
  %25 = fneg double %.1
  %26 = load double, ptr @sa, align 8
  %27 = fadd double %26, %25
  store double %27, ptr @sa, align 8
  %28 = load double, ptr @two, align 8
  %29 = fadd double %.01, %28
  %30 = fsub double %25, %29
  %31 = fadd double %.04, %30
  %32 = fneg double %25
  %33 = call double @llvm.fmuladd.f64(double %32, double %29, double %.02)
  %34 = fdiv double %25, %29
  %35 = fadd double %.03, %34
  br label %36

36:                                               ; preds = %24
  %37 = add nsw i32 %.16, 1
  br label %22, !llvm.loop !9

38:                                               ; preds = %22
  %39 = load double, ptr @sa, align 8
  %40 = fmul double %39, %.04
  %41 = load double, ptr @sc, align 8
  %42 = fdiv double %40, %41
  %43 = fptosi double %42 to i32
  %44 = load double, ptr @four, align 8
  %45 = fmul double %44, %.03
  %46 = load double, ptr @five, align 8
  %47 = fdiv double %45, %46
  store double %47, ptr @sa, align 8
  %48 = load double, ptr @five, align 8
  %49 = fdiv double %48, %.02
  %50 = fadd double %47, %49
  store double %50, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %51 = load double, ptr @sb, align 8
  %52 = fmul double %.02, %.02
  %53 = fmul double %52, %.02
  %54 = fdiv double 3.125000e+01, %53
  %55 = fsub double %51, %54
  store double %55, ptr @piprg, align 8
  %56 = load double, ptr @piref, align 8
  %57 = fsub double %55, %56
  store double %57, ptr @pierr, align 8
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
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Misc/flops-2.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
