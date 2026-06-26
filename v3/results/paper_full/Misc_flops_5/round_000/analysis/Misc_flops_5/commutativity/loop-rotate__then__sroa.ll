; ModuleID = 'results\paper_full\Misc_flops_5\Misc_flops_5.ll'
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
  %7 = load double, ptr @piref, align 8
  %8 = load double, ptr @three, align 8
  %9 = sitofp i32 %6 to double
  %10 = fmul double %8, %9
  %11 = fdiv double %7, %10
  %12 = sub nsw i32 %6, 1
  %13 = icmp sle i32 1, %12
  br i1 %13, label %.lr.ph, label %51

.lr.ph:                                           ; preds = %0
  br label %14

14:                                               ; preds = %.lr.ph, %47
  %.042 = phi i32 [ 1, %.lr.ph ], [ %48, %47 ]
  %.0 = phi double [ 0.000000e+00, %.lr.ph ], [ %46, %47 ]
  %15 = sitofp i32 %.042 to double
  %16 = fmul double %15, %11
  %17 = fmul double %16, %16
  %18 = load double, ptr @A6, align 8
  %19 = load double, ptr @A5, align 8
  %20 = call double @llvm.fmuladd.f64(double %18, double %17, double %19)
  %21 = load double, ptr @A4, align 8
  %22 = call double @llvm.fmuladd.f64(double %20, double %17, double %21)
  %23 = load double, ptr @A3, align 8
  %24 = call double @llvm.fmuladd.f64(double %22, double %17, double %23)
  %25 = load double, ptr @A2, align 8
  %26 = call double @llvm.fmuladd.f64(double %24, double %17, double %25)
  %27 = load double, ptr @A1, align 8
  %28 = call double @llvm.fmuladd.f64(double %26, double %17, double %27)
  %29 = load double, ptr @one, align 8
  %30 = call double @llvm.fmuladd.f64(double %28, double %17, double %29)
  %31 = fmul double %16, %30
  %32 = load double, ptr @B6, align 8
  %33 = load double, ptr @B5, align 8
  %34 = call double @llvm.fmuladd.f64(double %32, double %17, double %33)
  %35 = load double, ptr @B4, align 8
  %36 = call double @llvm.fmuladd.f64(double %17, double %34, double %35)
  %37 = load double, ptr @B3, align 8
  %38 = call double @llvm.fmuladd.f64(double %17, double %36, double %37)
  %39 = load double, ptr @B2, align 8
  %40 = call double @llvm.fmuladd.f64(double %17, double %38, double %39)
  %41 = load double, ptr @B1, align 8
  %42 = call double @llvm.fmuladd.f64(double %17, double %40, double %41)
  %43 = load double, ptr @one, align 8
  %44 = call double @llvm.fmuladd.f64(double %17, double %42, double %43)
  %45 = fdiv double %31, %44
  %46 = fadd double %.0, %45
  br label %47

47:                                               ; preds = %14
  %48 = add nsw i32 %.042, 1
  %49 = sub nsw i32 %6, 1
  %50 = icmp sle i32 %48, %49
  br i1 %50, label %14, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %47
  br label %51

51:                                               ; preds = %._crit_edge, %0
  %.1 = phi double [ %46, %._crit_edge ], [ 0.000000e+00, %0 ]
  %52 = load double, ptr @piref, align 8
  %53 = load double, ptr @three, align 8
  %54 = fdiv double %52, %53
  %55 = fmul double %54, %54
  %56 = load double, ptr @A6, align 8
  %57 = load double, ptr @A5, align 8
  %58 = call double @llvm.fmuladd.f64(double %56, double %55, double %57)
  %59 = load double, ptr @A4, align 8
  %60 = call double @llvm.fmuladd.f64(double %58, double %55, double %59)
  %61 = load double, ptr @A3, align 8
  %62 = call double @llvm.fmuladd.f64(double %60, double %55, double %61)
  %63 = load double, ptr @A2, align 8
  %64 = call double @llvm.fmuladd.f64(double %62, double %55, double %63)
  %65 = load double, ptr @A1, align 8
  %66 = call double @llvm.fmuladd.f64(double %64, double %55, double %65)
  %67 = load double, ptr @one, align 8
  %68 = call double @llvm.fmuladd.f64(double %66, double %55, double %67)
  %69 = fmul double %54, %68
  store double %69, ptr @sa, align 8
  %70 = load double, ptr @B6, align 8
  %71 = load double, ptr @B5, align 8
  %72 = call double @llvm.fmuladd.f64(double %70, double %55, double %71)
  %73 = load double, ptr @B4, align 8
  %74 = call double @llvm.fmuladd.f64(double %55, double %72, double %73)
  %75 = load double, ptr @B3, align 8
  %76 = call double @llvm.fmuladd.f64(double %55, double %74, double %75)
  %77 = load double, ptr @B2, align 8
  %78 = call double @llvm.fmuladd.f64(double %55, double %76, double %77)
  %79 = load double, ptr @B1, align 8
  %80 = call double @llvm.fmuladd.f64(double %55, double %78, double %79)
  %81 = load double, ptr @one, align 8
  %82 = call double @llvm.fmuladd.f64(double %55, double %80, double %81)
  store double %82, ptr @sb, align 8
  %83 = load double, ptr @sa, align 8
  %84 = load double, ptr @sb, align 8
  %85 = fdiv double %83, %84
  store double %85, ptr @sa, align 8
  %86 = load double, ptr @sa, align 8
  %87 = load double, ptr @two, align 8
  %88 = call double @llvm.fmuladd.f64(double %87, double %.1, double %86)
  %89 = fmul double %11, %88
  %90 = load double, ptr @two, align 8
  %91 = fdiv double %89, %90
  store double %91, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %92 = load double, ptr @sa, align 8
  %93 = load double, ptr @sb, align 8
  %94 = fsub double %92, %93
  store double %94, ptr @sc, align 8
  %95 = load double, ptr @sc, align 8
  %96 = fmul double %95, 1.000000e-30
  %97 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %96, double noundef 0.000000e+00, double noundef 0.000000e+00)
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
