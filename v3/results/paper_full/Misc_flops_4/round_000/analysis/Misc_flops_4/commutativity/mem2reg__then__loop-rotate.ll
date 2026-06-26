; ModuleID = 'results\paper_full\Misc_flops_4\Misc_flops_4.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Misc/flops-4.c"
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
@.str.4 = private unnamed_addr constant [36 x i8] c"     4   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
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
  %7 = load double, ptr @A3, align 8
  %8 = fneg double %7
  store double %8, ptr @A3, align 8
  %9 = load double, ptr @A5, align 8
  %10 = fneg double %9
  store double %10, ptr @A5, align 8
  %11 = load double, ptr @piref, align 8
  %12 = load double, ptr @three, align 8
  %13 = sitofp i32 %6 to double
  %14 = fmul double %12, %13
  %15 = fdiv double %11, %14
  %16 = sub nsw i32 %6, 1
  br label %17

17:                                               ; preds = %0, %35
  %.03 = phi i32 [ 1, %0 ], [ %36, %35 ]
  %.012 = phi double [ 0.000000e+00, %0 ], [ %34, %35 ]
  %18 = sitofp i32 %.03 to double
  %19 = fmul double %18, %15
  %20 = fmul double %19, %19
  %21 = load double, ptr @B6, align 8
  %22 = load double, ptr @B5, align 8
  %23 = call double @llvm.fmuladd.f64(double %21, double %20, double %22)
  %24 = load double, ptr @B4, align 8
  %25 = call double @llvm.fmuladd.f64(double %20, double %23, double %24)
  %26 = load double, ptr @B3, align 8
  %27 = call double @llvm.fmuladd.f64(double %20, double %25, double %26)
  %28 = load double, ptr @B2, align 8
  %29 = call double @llvm.fmuladd.f64(double %20, double %27, double %28)
  %30 = load double, ptr @B1, align 8
  %31 = call double @llvm.fmuladd.f64(double %20, double %29, double %30)
  %32 = call double @llvm.fmuladd.f64(double %20, double %31, double %.012)
  %33 = load double, ptr @one, align 8
  %34 = fadd double %32, %33
  br label %35

35:                                               ; preds = %17
  %36 = add nsw i32 %.03, 1
  %37 = icmp sle i32 %36, %16
  br i1 %37, label %17, label %38, !llvm.loop !7

38:                                               ; preds = %35
  %.01.lcssa = phi double [ %34, %35 ]
  %39 = load double, ptr @piref, align 8
  %40 = load double, ptr @three, align 8
  %41 = fdiv double %39, %40
  %42 = fmul double %41, %41
  %43 = load double, ptr @B6, align 8
  %44 = load double, ptr @B5, align 8
  %45 = call double @llvm.fmuladd.f64(double %43, double %42, double %44)
  %46 = load double, ptr @B4, align 8
  %47 = call double @llvm.fmuladd.f64(double %42, double %45, double %46)
  %48 = load double, ptr @B3, align 8
  %49 = call double @llvm.fmuladd.f64(double %42, double %47, double %48)
  %50 = load double, ptr @B2, align 8
  %51 = call double @llvm.fmuladd.f64(double %42, double %49, double %50)
  %52 = load double, ptr @B1, align 8
  %53 = call double @llvm.fmuladd.f64(double %42, double %51, double %52)
  %54 = load double, ptr @one, align 8
  %55 = call double @llvm.fmuladd.f64(double %42, double %53, double %54)
  store double %55, ptr @sa, align 8
  %56 = load double, ptr @sa, align 8
  %57 = load double, ptr @one, align 8
  %58 = fadd double %56, %57
  %59 = load double, ptr @two, align 8
  %60 = call double @llvm.fmuladd.f64(double %59, double %.01.lcssa, double %58)
  %61 = fmul double %15, %60
  %62 = load double, ptr @two, align 8
  %63 = fdiv double %61, %62
  store double %63, ptr @sa, align 8
  %64 = load double, ptr @piref, align 8
  %65 = load double, ptr @three, align 8
  %66 = fdiv double %64, %65
  %67 = fmul double %66, %66
  %68 = load double, ptr @A6, align 8
  %69 = load double, ptr @A5, align 8
  %70 = call double @llvm.fmuladd.f64(double %68, double %67, double %69)
  %71 = load double, ptr @A4, align 8
  %72 = call double @llvm.fmuladd.f64(double %70, double %67, double %71)
  %73 = load double, ptr @A3, align 8
  %74 = call double @llvm.fmuladd.f64(double %72, double %67, double %73)
  %75 = load double, ptr @A2, align 8
  %76 = call double @llvm.fmuladd.f64(double %74, double %67, double %75)
  %77 = load double, ptr @A1, align 8
  %78 = call double @llvm.fmuladd.f64(double %76, double %67, double %77)
  %79 = load double, ptr @A0, align 8
  %80 = call double @llvm.fmuladd.f64(double %78, double %67, double %79)
  %81 = fmul double %66, %80
  store double %81, ptr @sb, align 8
  %82 = load double, ptr @sa, align 8
  %83 = load double, ptr @sb, align 8
  %84 = fsub double %82, %83
  store double %84, ptr @sc, align 8
  %85 = load double, ptr @sc, align 8
  %86 = fmul double %85, 1.000000e-30
  %87 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %86, double noundef 0.000000e+00, double noundef 0.000000e+00)
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
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Misc/flops-4.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
