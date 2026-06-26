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
  %19 = load i32, ptr %10, align 4
  %20 = sitofp i32 %19 to double
  %21 = fdiv double f0x40599541F7F192A4, %20
  store double %21, ptr %4, align 8
  store i32 1, ptr %9, align 4
  %22 = load i32, ptr %10, align 4
  %23 = sub nsw i32 %22, 1
  %24 = icmp sle i32 1, %23
  br i1 %24, label %.lr.ph, label %49

.lr.ph:                                           ; preds = %0
  br label %25

25:                                               ; preds = %.lr.ph, %43
  %26 = load i32, ptr %9, align 4
  %27 = sitofp i32 %26 to double
  %28 = load double, ptr %4, align 8
  %29 = fmul double %27, %28
  store double %29, ptr %6, align 8
  %30 = fmul double %29, %29
  store double %30, ptr %3, align 8
  %31 = load double, ptr %2, align 8
  %32 = load double, ptr %5, align 8
  %33 = load double, ptr %6, align 8
  %34 = fadd double %33, %32
  %35 = fdiv double %32, %34
  %36 = fsub double %31, %35
  %37 = fadd double %30, %32
  %38 = fdiv double %33, %37
  %39 = fsub double %36, %38
  %40 = call double @llvm.fmuladd.f64(double %33, double %30, double %32)
  %41 = fdiv double %30, %40
  %42 = fsub double %39, %41
  store double %42, ptr %2, align 8
  br label %43

43:                                               ; preds = %25
  %44 = load i32, ptr %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %9, align 4
  %46 = load i32, ptr %10, align 4
  %47 = sub nsw i32 %46, 1
  %48 = icmp sle i32 %45, %47
  br i1 %48, label %25, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %43
  br label %49

49:                                               ; preds = %._crit_edge, %0
  %50 = load double, ptr @sa, align 8
  store double %50, ptr %6, align 8
  %51 = fmul double %50, %50
  store double %51, ptr %3, align 8
  %52 = load double, ptr %5, align 8
  %53 = fneg double %52
  %54 = load double, ptr %6, align 8
  %55 = fadd double %54, %52
  %56 = fdiv double %52, %55
  %57 = fsub double %53, %56
  %58 = fadd double %51, %52
  %59 = fdiv double %54, %58
  %60 = fsub double %57, %59
  %61 = call double @llvm.fmuladd.f64(double %54, double %51, double %52)
  %62 = fdiv double %51, %61
  %63 = fsub double %60, %62
  store double %63, ptr @sa, align 8
  %64 = load double, ptr %4, align 8
  %65 = fmul double 1.800000e+01, %64
  %66 = load double, ptr @two, align 8
  %67 = load double, ptr %2, align 8
  %68 = call double @llvm.fmuladd.f64(double %66, double %67, double %63)
  %69 = fmul double %65, %68
  store double %69, ptr @sa, align 8
  %70 = fptosi double %69 to i32
  %71 = mul nsw i32 -2000, %70
  store i32 %71, ptr %10, align 4
  %72 = sitofp i32 %71 to double
  %73 = load double, ptr @scale, align 8
  %74 = fdiv double %72, %73
  %75 = fptosi double %74 to i32
  store i32 %75, ptr %10, align 4
  %76 = load double, ptr @sa, align 8
  %77 = fadd double %76, 5.002000e+02
  store double %77, ptr @sc, align 8
  %78 = fmul double %77, 1.000000e-30
  %79 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %78, double noundef 0.000000e+00, double noundef 0.000000e+00)
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
