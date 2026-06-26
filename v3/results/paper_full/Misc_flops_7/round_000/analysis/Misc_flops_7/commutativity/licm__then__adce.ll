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
  %13 = load double, ptr @one, align 8
  store double %13, ptr @scale, align 8
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %16 = load i32, ptr %7, align 4
  %17 = mul nsw i32 %16, 10000
  store i32 %17, ptr %10, align 4
  store double 0.000000e+00, ptr %2, align 8
  %18 = load double, ptr @one, align 8
  store double %18, ptr %5, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %19 = load double, ptr @sa, align 8
  %20 = load i32, ptr %10, align 4
  %21 = sitofp i32 %20 to double
  %22 = fdiv double %19, %21
  store double %22, ptr %4, align 8
  store i32 1, ptr %9, align 4
  %23 = load i32, ptr %10, align 4
  %24 = sub nsw i32 %23, 1
  %25 = load double, ptr %4, align 8
  %26 = load double, ptr %5, align 8
  %27 = load double, ptr %5, align 8
  %28 = load double, ptr %5, align 8
  %29 = load double, ptr %5, align 8
  %.promoted = load i32, ptr %9, align 4
  %.promoted1 = load double, ptr %6, align 8
  %.promoted3 = load double, ptr %3, align 8
  %.promoted5 = load double, ptr %2, align 8
  br label %30

30:                                               ; preds = %49, %0
  %31 = phi double [ %48, %49 ], [ %.promoted5, %0 ]
  %32 = phi double [ %39, %49 ], [ %.promoted3, %0 ]
  %33 = phi double [ %38, %49 ], [ %.promoted1, %0 ]
  %34 = phi i32 [ %50, %49 ], [ %.promoted, %0 ]
  %35 = icmp sle i32 %34, %24
  br i1 %35, label %36, label %51

36:                                               ; preds = %30
  %37 = sitofp i32 %34 to double
  %38 = fmul double %37, %25
  %39 = fmul double %38, %38
  %40 = fadd double %38, %27
  %41 = fdiv double %26, %40
  %42 = fsub double %31, %41
  %43 = fadd double %39, %28
  %44 = fdiv double %38, %43
  %45 = fsub double %42, %44
  %46 = call double @llvm.fmuladd.f64(double %38, double %39, double %29)
  %47 = fdiv double %39, %46
  %48 = fsub double %45, %47
  br label %49

49:                                               ; preds = %36
  %50 = add nsw i32 %34, 1
  br label %30, !llvm.loop !7

51:                                               ; preds = %30
  %.lcssa6 = phi double [ %31, %30 ]
  %.lcssa4 = phi double [ %32, %30 ]
  %.lcssa2 = phi double [ %33, %30 ]
  %.lcssa = phi i32 [ %34, %30 ]
  store i32 %.lcssa, ptr %9, align 4
  store double %.lcssa2, ptr %6, align 8
  store double %.lcssa4, ptr %3, align 8
  store double %.lcssa6, ptr %2, align 8
  %52 = load double, ptr @sa, align 8
  store double %52, ptr %6, align 8
  %53 = load double, ptr %6, align 8
  %54 = load double, ptr %6, align 8
  %55 = fmul double %53, %54
  store double %55, ptr %3, align 8
  %56 = load double, ptr %5, align 8
  %57 = fneg double %56
  %58 = load double, ptr %5, align 8
  %59 = load double, ptr %6, align 8
  %60 = load double, ptr %5, align 8
  %61 = fadd double %59, %60
  %62 = fdiv double %58, %61
  %63 = fsub double %57, %62
  %64 = load double, ptr %6, align 8
  %65 = load double, ptr %3, align 8
  %66 = load double, ptr %5, align 8
  %67 = fadd double %65, %66
  %68 = fdiv double %64, %67
  %69 = fsub double %63, %68
  %70 = load double, ptr %3, align 8
  %71 = load double, ptr %6, align 8
  %72 = load double, ptr %3, align 8
  %73 = load double, ptr %5, align 8
  %74 = call double @llvm.fmuladd.f64(double %71, double %72, double %73)
  %75 = fdiv double %70, %74
  %76 = fsub double %69, %75
  store double %76, ptr @sa, align 8
  %77 = load double, ptr %4, align 8
  %78 = fmul double 1.800000e+01, %77
  %79 = load double, ptr @sa, align 8
  %80 = load double, ptr @two, align 8
  %81 = load double, ptr %2, align 8
  %82 = call double @llvm.fmuladd.f64(double %80, double %81, double %79)
  %83 = fmul double %78, %82
  store double %83, ptr @sa, align 8
  %84 = load double, ptr @sa, align 8
  %85 = fptosi double %84 to i32
  %86 = mul nsw i32 -2000, %85
  store i32 %86, ptr %10, align 4
  %87 = load i32, ptr %10, align 4
  %88 = sitofp i32 %87 to double
  %89 = load double, ptr @scale, align 8
  %90 = fdiv double %88, %89
  %91 = fptosi double %90 to i32
  store i32 %91, ptr %10, align 4
  %92 = load double, ptr @sa, align 8
  %93 = fadd double %92, 5.002000e+02
  store double %93, ptr @sc, align 8
  %94 = load double, ptr @sc, align 8
  %95 = fmul double %94, 1.000000e-30
  %96 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %95, double noundef 0.000000e+00, double noundef 0.000000e+00)
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
