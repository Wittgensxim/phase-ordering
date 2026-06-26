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
  br label %10

10:                                               ; preds = %0, %14
  %.06 = phi double [ %7, %0 ], [ %11, %14 ]
  %.051 = phi i32 [ 1, %0 ], [ %15, %14 ]
  %11 = fneg double %.06
  %12 = load double, ptr @sa, align 8
  %13 = fadd double %12, %11
  store double %13, ptr @sa, align 8
  br label %14

14:                                               ; preds = %10
  %15 = add nuw nsw i32 %.051, 1
  %exitcond = icmp ne i32 %15, 156250001
  br i1 %exitcond, label %10, label %16, !llvm.loop !7

16:                                               ; preds = %14
  %.0.lcssa = phi double [ %11, %14 ]
  store double 1.562500e+08, ptr @sc, align 8
  %17 = load double, ptr @sa, align 8
  br label %18

18:                                               ; preds = %16, %29
  %.112 = phi double [ %.0.lcssa, %16 ], [ %19, %29 ]
  %.0111 = phi double [ %17, %16 ], [ %23, %29 ]
  %.0210 = phi double [ 0.000000e+00, %16 ], [ %26, %29 ]
  %.039 = phi double [ 0.000000e+00, %16 ], [ %28, %29 ]
  %.048 = phi double [ 0.000000e+00, %16 ], [ %25, %29 ]
  %.167 = phi i32 [ 1, %16 ], [ %30, %29 ]
  %19 = fneg double %.112
  %20 = load double, ptr @sa, align 8
  %21 = fadd double %20, %19
  store double %21, ptr @sa, align 8
  %22 = load double, ptr @two, align 8
  %23 = fadd double %.0111, %22
  %24 = fsub double %19, %23
  %25 = fadd double %.048, %24
  %26 = call double @llvm.fmuladd.f64(double %.112, double %23, double %.0210)
  %27 = fdiv double %19, %23
  %28 = fadd double %.039, %27
  br label %29

29:                                               ; preds = %18
  %30 = add nuw nsw i32 %.167, 1
  %exitcond13 = icmp ne i32 %30, 156250001
  br i1 %exitcond13, label %18, label %31, !llvm.loop !9

31:                                               ; preds = %29
  %.04.lcssa = phi double [ %25, %29 ]
  %.03.lcssa = phi double [ %28, %29 ]
  %.02.lcssa = phi double [ %26, %29 ]
  %32 = load double, ptr @sa, align 8
  %33 = fmul double %32, %.04.lcssa
  %34 = load double, ptr @sc, align 8
  %35 = fdiv double %33, %34
  %36 = load double, ptr @four, align 8
  %37 = fmul double %36, %.03.lcssa
  %38 = load double, ptr @five, align 8
  %39 = fdiv double %37, %38
  store double %39, ptr @sa, align 8
  %40 = load double, ptr @five, align 8
  %41 = fdiv double %40, %.02.lcssa
  %42 = fadd double %39, %41
  store double %42, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %43 = load double, ptr @sb, align 8
  %44 = fmul double %.02.lcssa, %.02.lcssa
  %45 = fmul double %44, %.02.lcssa
  %46 = fdiv double 3.125000e+01, %45
  %47 = fsub double %43, %46
  store double %47, ptr @piprg, align 8
  %48 = load double, ptr @piref, align 8
  %49 = fsub double %47, %48
  store double %49, ptr @pierr, align 8
  %50 = fmul double %49, 1.000000e-30
  %51 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %50, double noundef 0.000000e+00, double noundef 0.000000e+00)
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
