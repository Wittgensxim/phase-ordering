; ModuleID = 'results\paper_full\Misc_flops_8\Misc_flops_8.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Misc/flops-8.c"
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
@.str.4 = private unnamed_addr constant [36 x i8] c"     8   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
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
  %11 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
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
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store i32 156250000, ptr %10, align 4
  %16 = load double, ptr @piref, align 8
  %17 = load double, ptr @three, align 8
  %18 = fmul double %17, 1.562500e+08
  %19 = fdiv double %16, %18
  store double %19, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  store i32 1, ptr %9, align 4
  %20 = load double, ptr @B6, align 8
  %21 = load double, ptr @B5, align 8
  %22 = load double, ptr @B4, align 8
  %23 = load double, ptr @B3, align 8
  %24 = load double, ptr @B2, align 8
  %25 = load double, ptr @B1, align 8
  %26 = load double, ptr @one, align 8
  %27 = load double, ptr @A6, align 8
  %28 = load double, ptr @A5, align 8
  %29 = load double, ptr @A4, align 8
  %30 = load double, ptr @A3, align 8
  %31 = load double, ptr @A2, align 8
  %32 = load double, ptr @A1, align 8
  br label %33

33:                                               ; preds = %40, %0
  %34 = phi double [ %58, %40 ], [ 0.000000e+00, %0 ]
  %35 = phi double [ %49, %40 ], [ 0.000000e+00, %0 ]
  %36 = phi double [ %43, %40 ], [ undef, %0 ]
  %37 = phi double [ %42, %40 ], [ undef, %0 ]
  %38 = phi i32 [ %59, %40 ], [ 1, %0 ]
  %39 = icmp sle i32 %38, 156249999
  br i1 %39, label %40, label %60

40:                                               ; preds = %33
  %41 = sitofp i32 %38 to double
  %42 = fmul double %41, %19
  %43 = fmul double %42, %42
  %44 = call double @llvm.fmuladd.f64(double %20, double %43, double %21)
  %45 = call double @llvm.fmuladd.f64(double %43, double %44, double %22)
  %46 = call double @llvm.fmuladd.f64(double %43, double %45, double %23)
  %47 = call double @llvm.fmuladd.f64(double %43, double %46, double %24)
  %48 = call double @llvm.fmuladd.f64(double %43, double %47, double %25)
  %49 = call double @llvm.fmuladd.f64(double %43, double %48, double %26)
  %50 = fmul double %49, %49
  %51 = fmul double %50, %42
  %52 = call double @llvm.fmuladd.f64(double %27, double %43, double %28)
  %53 = call double @llvm.fmuladd.f64(double %52, double %43, double %29)
  %54 = call double @llvm.fmuladd.f64(double %53, double %43, double %30)
  %55 = call double @llvm.fmuladd.f64(double %54, double %43, double %31)
  %56 = call double @llvm.fmuladd.f64(double %55, double %43, double %32)
  %57 = call double @llvm.fmuladd.f64(double %56, double %43, double %26)
  %58 = call double @llvm.fmuladd.f64(double %51, double %57, double %34)
  %59 = add nsw i32 %38, 1
  br label %33, !llvm.loop !7

60:                                               ; preds = %33
  store i32 %38, ptr %9, align 4
  store double %37, ptr %3, align 8
  store double %36, ptr %5, align 8
  store double %35, ptr %4, align 8
  store double %34, ptr %2, align 8
  %61 = fdiv double %16, %17
  store double %61, ptr %3, align 8
  %62 = fmul double %61, %61
  store double %62, ptr %5, align 8
  %63 = call double @llvm.fmuladd.f64(double %27, double %62, double %28)
  %64 = call double @llvm.fmuladd.f64(double %63, double %62, double %29)
  %65 = call double @llvm.fmuladd.f64(double %64, double %62, double %30)
  %66 = call double @llvm.fmuladd.f64(double %65, double %62, double %31)
  %67 = call double @llvm.fmuladd.f64(double %66, double %62, double %32)
  %68 = call double @llvm.fmuladd.f64(double %67, double %62, double %26)
  %69 = fmul double %61, %68
  store double %69, ptr @sa, align 8
  %70 = call double @llvm.fmuladd.f64(double %20, double %62, double %21)
  %71 = call double @llvm.fmuladd.f64(double %62, double %70, double %22)
  %72 = call double @llvm.fmuladd.f64(double %62, double %71, double %23)
  %73 = call double @llvm.fmuladd.f64(double %62, double %72, double %24)
  %74 = call double @llvm.fmuladd.f64(double %62, double %73, double %25)
  %75 = call double @llvm.fmuladd.f64(double %62, double %74, double %26)
  store double %75, ptr @sb, align 8
  %76 = fmul double %69, %75
  %77 = fmul double %76, %75
  store double %77, ptr @sa, align 8
  %78 = load double, ptr @two, align 8
  %79 = call double @llvm.fmuladd.f64(double %78, double %34, double %77)
  %80 = fmul double %19, %79
  %81 = fdiv double %80, %78
  store double %81, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %82 = fsub double %81, f0x3FD2AAAAAAAAAAAB
  store double %82, ptr @sc, align 8
  %83 = fmul double %82, 1.000000e-30
  %84 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %83, double noundef 0.000000e+00, double noundef 0.000000e+00)
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
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Misc/flops-8.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
