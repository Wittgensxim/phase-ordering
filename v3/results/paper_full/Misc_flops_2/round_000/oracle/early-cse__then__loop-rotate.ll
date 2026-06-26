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
  %18 = load double, ptr @five, align 8
  %19 = fneg double %18
  store double %19, ptr %2, align 8
  %20 = load double, ptr @one, align 8
  %21 = fneg double %20
  store double %21, ptr @sa, align 8
  store i32 1, ptr %9, align 4
  %22 = load i32, ptr %9, align 4
  %23 = load i32, ptr %10, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %.lr.ph, label %36

.lr.ph:                                           ; preds = %0
  br label %25

25:                                               ; preds = %.lr.ph, %30
  %26 = load double, ptr %2, align 8
  %27 = fneg double %26
  store double %27, ptr %2, align 8
  %28 = load double, ptr @sa, align 8
  %29 = fadd double %28, %27
  store double %29, ptr @sa, align 8
  br label %30

30:                                               ; preds = %25
  %31 = load i32, ptr %9, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %9, align 4
  %33 = load i32, ptr %9, align 4
  %34 = load i32, ptr %10, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %25, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %30
  %split = phi i32 [ %34, %30 ]
  br label %36

36:                                               ; preds = %._crit_edge, %0
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %23, %0 ]
  %37 = sitofp i32 %.lcssa to double
  store double %37, ptr @sc, align 8
  %38 = load double, ptr @sa, align 8
  store double %38, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  store double 0.000000e+00, ptr %6, align 8
  store i32 1, ptr %9, align 4
  %39 = load i32, ptr %9, align 4
  %40 = load i32, ptr %10, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %.lr.ph2, label %70

.lr.ph2:                                          ; preds = %36
  br label %42

42:                                               ; preds = %.lr.ph2, %64
  %43 = load double, ptr %2, align 8
  %44 = fneg double %43
  store double %44, ptr %2, align 8
  %45 = load double, ptr @sa, align 8
  %46 = fadd double %45, %44
  store double %46, ptr @sa, align 8
  %47 = load double, ptr %3, align 8
  %48 = load double, ptr @two, align 8
  %49 = fadd double %47, %48
  store double %49, ptr %3, align 8
  %50 = load double, ptr %6, align 8
  %51 = load double, ptr %2, align 8
  %52 = fsub double %51, %49
  %53 = fadd double %50, %52
  store double %53, ptr %6, align 8
  %54 = load double, ptr %4, align 8
  %55 = load double, ptr %2, align 8
  %56 = load double, ptr %3, align 8
  %57 = fneg double %55
  %58 = call double @llvm.fmuladd.f64(double %57, double %56, double %54)
  store double %58, ptr %4, align 8
  %59 = load double, ptr %5, align 8
  %60 = load double, ptr %2, align 8
  %61 = load double, ptr %3, align 8
  %62 = fdiv double %60, %61
  %63 = fadd double %59, %62
  store double %63, ptr %5, align 8
  br label %64

64:                                               ; preds = %42
  %65 = load i32, ptr %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr %9, align 4
  %67 = load i32, ptr %9, align 4
  %68 = load i32, ptr %10, align 4
  %69 = icmp sle i32 %67, %68
  br i1 %69, label %42, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %64
  br label %70

70:                                               ; preds = %._crit_edge3, %36
  %71 = load double, ptr @sa, align 8
  %72 = load double, ptr %6, align 8
  %73 = fmul double %71, %72
  %74 = load double, ptr @sc, align 8
  %75 = fdiv double %73, %74
  %76 = fptosi double %75 to i32
  store i32 %76, ptr %10, align 4
  %77 = load double, ptr @four, align 8
  %78 = load double, ptr %5, align 8
  %79 = fmul double %77, %78
  %80 = load double, ptr @five, align 8
  %81 = fdiv double %79, %80
  store double %81, ptr @sa, align 8
  %82 = load double, ptr @five, align 8
  %83 = load double, ptr %4, align 8
  %84 = fdiv double %82, %83
  %85 = fadd double %81, %84
  store double %85, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %86 = load double, ptr @sb, align 8
  %87 = load double, ptr %4, align 8
  %88 = fmul double %87, %87
  %89 = fmul double %88, %87
  %90 = fdiv double 3.125000e+01, %89
  %91 = fsub double %86, %90
  store double %91, ptr @piprg, align 8
  %92 = load double, ptr @piref, align 8
  %93 = fsub double %91, %92
  store double %93, ptr @pierr, align 8
  %94 = fmul double %93, 1.000000e-30
  %95 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %94, double noundef 0.000000e+00, double noundef 0.000000e+00)
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
