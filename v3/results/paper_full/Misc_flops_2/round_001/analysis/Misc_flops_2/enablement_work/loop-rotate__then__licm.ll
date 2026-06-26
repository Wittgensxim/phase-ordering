; ModuleID = 'results\paper_full\Misc_flops_2\round_000\output.ll'
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
  %6 = load double, ptr @five, align 8
  %7 = fneg double %6
  %8 = load double, ptr @one, align 8
  %9 = fneg double %8
  store double %9, ptr @sa, align 8
  %sa.promoted = load double, ptr @sa, align 8
  br label %10

10:                                               ; preds = %0, %14
  %11 = phi double [ %sa.promoted, %0 ], [ %13, %14 ]
  %.06 = phi double [ %7, %0 ], [ %12, %14 ]
  %.051 = phi i32 [ 1, %0 ], [ %15, %14 ]
  %12 = fneg double %.06
  %13 = fadd double %11, %12
  br label %14

14:                                               ; preds = %10
  %15 = add nsw i32 %.051, 1
  %16 = icmp sle i32 %15, 156250000
  br i1 %16, label %10, label %17, !llvm.loop !7

17:                                               ; preds = %14
  %.lcssa = phi double [ %13, %14 ]
  %.0.lcssa = phi double [ %12, %14 ]
  store double %.lcssa, ptr @sa, align 8
  store double 1.562500e+08, ptr @sc, align 8
  %18 = load double, ptr @sa, align 8
  %19 = load double, ptr @two, align 8
  %sa.promoted13 = load double, ptr @sa, align 8
  br label %20

20:                                               ; preds = %17, %30
  %21 = phi double [ %sa.promoted13, %17 ], [ %23, %30 ]
  %.112 = phi double [ %.0.lcssa, %17 ], [ %22, %30 ]
  %.0111 = phi double [ %18, %17 ], [ %24, %30 ]
  %.0210 = phi double [ 0.000000e+00, %17 ], [ %27, %30 ]
  %.039 = phi double [ 0.000000e+00, %17 ], [ %29, %30 ]
  %.048 = phi double [ 0.000000e+00, %17 ], [ %26, %30 ]
  %.167 = phi i32 [ 1, %17 ], [ %31, %30 ]
  %22 = fneg double %.112
  %23 = fadd double %21, %22
  %24 = fadd double %.0111, %19
  %25 = fsub double %22, %24
  %26 = fadd double %.048, %25
  %27 = call double @llvm.fmuladd.f64(double %.112, double %24, double %.0210)
  %28 = fdiv double %22, %24
  %29 = fadd double %.039, %28
  br label %30

30:                                               ; preds = %20
  %31 = add nsw i32 %.167, 1
  %32 = icmp sle i32 %31, 156250000
  br i1 %32, label %20, label %33, !llvm.loop !9

33:                                               ; preds = %30
  %.lcssa14 = phi double [ %23, %30 ]
  %.04.lcssa = phi double [ %26, %30 ]
  %.03.lcssa = phi double [ %29, %30 ]
  %.02.lcssa = phi double [ %27, %30 ]
  store double %.lcssa14, ptr @sa, align 8
  %34 = load double, ptr @sa, align 8
  %35 = fmul double %34, %.04.lcssa
  %36 = load double, ptr @sc, align 8
  %37 = fdiv double %35, %36
  %38 = load double, ptr @four, align 8
  %39 = fmul double %38, %.03.lcssa
  %40 = load double, ptr @five, align 8
  %41 = fdiv double %39, %40
  store double %41, ptr @sa, align 8
  %42 = load double, ptr @five, align 8
  %43 = fdiv double %42, %.02.lcssa
  %44 = fadd double %41, %43
  store double %44, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %45 = load double, ptr @sb, align 8
  %46 = fmul double %.02.lcssa, %.02.lcssa
  %47 = fmul double %46, %.02.lcssa
  %48 = fdiv double 3.125000e+01, %47
  %49 = fsub double %45, %48
  store double %49, ptr @piprg, align 8
  %50 = load double, ptr @piref, align 8
  %51 = fsub double %49, %50
  store double %51, ptr @pierr, align 8
  %52 = fmul double %51, 1.000000e-30
  %53 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %52, double noundef 0.000000e+00, double noundef 0.000000e+00)
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
