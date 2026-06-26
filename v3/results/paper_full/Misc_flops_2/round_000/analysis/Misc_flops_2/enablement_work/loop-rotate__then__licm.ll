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
  %14 = load double, ptr @one, align 8
  store double %14, ptr @scale, align 8
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %17 = load i32, ptr %7, align 4
  %18 = mul nsw i32 %17, 10000
  store i32 %18, ptr %10, align 4
  %19 = load double, ptr @five, align 8
  %20 = fneg double %19
  store double %20, ptr %2, align 8
  %21 = load double, ptr @one, align 8
  %22 = fneg double %21
  store double %22, ptr @sa, align 8
  store i32 1, ptr %9, align 4
  %23 = load i32, ptr %9, align 4
  %24 = load i32, ptr %10, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %.lr.ph, label %36

.lr.ph:                                           ; preds = %0
  %26 = load i32, ptr %10, align 4
  %.promoted = load double, ptr %2, align 8
  %sa.promoted = load double, ptr @sa, align 8
  %.promoted5 = load i32, ptr %9, align 4
  br label %27

27:                                               ; preds = %.lr.ph, %33
  %28 = phi i32 [ %.promoted5, %.lr.ph ], [ %34, %33 ]
  %29 = phi double [ %sa.promoted, %.lr.ph ], [ %32, %33 ]
  %30 = phi double [ %.promoted, %.lr.ph ], [ %31, %33 ]
  %31 = fneg double %30
  %32 = fadd double %29, %31
  br label %33

33:                                               ; preds = %27
  %34 = add nsw i32 %28, 1
  %35 = icmp sle i32 %34, %26
  br i1 %35, label %27, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %33
  %.lcssa6 = phi i32 [ %34, %33 ]
  %.lcssa4 = phi double [ %32, %33 ]
  %.lcssa = phi double [ %31, %33 ]
  store double %.lcssa, ptr %2, align 8
  store double %.lcssa4, ptr @sa, align 8
  store i32 %.lcssa6, ptr %9, align 4
  br label %36

36:                                               ; preds = %._crit_edge, %0
  %37 = load i32, ptr %10, align 4
  %38 = sitofp i32 %37 to double
  store double %38, ptr @sc, align 8
  %39 = load double, ptr @sa, align 8
  store double %39, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  store double 0.000000e+00, ptr %6, align 8
  store i32 1, ptr %9, align 4
  %40 = load i32, ptr %9, align 4
  %41 = load i32, ptr %10, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %.lr.ph2, label %65

.lr.ph2:                                          ; preds = %36
  %43 = load double, ptr @two, align 8
  %44 = load i32, ptr %10, align 4
  %.promoted7 = load double, ptr %2, align 8
  %sa.promoted9 = load double, ptr @sa, align 8
  %.promoted11 = load double, ptr %3, align 8
  %.promoted13 = load double, ptr %6, align 8
  %.promoted15 = load double, ptr %4, align 8
  %.promoted17 = load double, ptr %5, align 8
  %.promoted19 = load i32, ptr %9, align 4
  br label %45

45:                                               ; preds = %.lr.ph2, %62
  %46 = phi i32 [ %.promoted19, %.lr.ph2 ], [ %63, %62 ]
  %47 = phi double [ %.promoted17, %.lr.ph2 ], [ %61, %62 ]
  %48 = phi double [ %.promoted15, %.lr.ph2 ], [ %59, %62 ]
  %49 = phi double [ %.promoted13, %.lr.ph2 ], [ %57, %62 ]
  %50 = phi double [ %.promoted11, %.lr.ph2 ], [ %55, %62 ]
  %51 = phi double [ %sa.promoted9, %.lr.ph2 ], [ %54, %62 ]
  %52 = phi double [ %.promoted7, %.lr.ph2 ], [ %53, %62 ]
  %53 = fneg double %52
  %54 = fadd double %51, %53
  %55 = fadd double %50, %43
  %56 = fsub double %53, %55
  %57 = fadd double %49, %56
  %58 = fneg double %53
  %59 = call double @llvm.fmuladd.f64(double %58, double %55, double %48)
  %60 = fdiv double %53, %55
  %61 = fadd double %47, %60
  br label %62

62:                                               ; preds = %45
  %63 = add nsw i32 %46, 1
  %64 = icmp sle i32 %63, %44
  br i1 %64, label %45, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %62
  %.lcssa20 = phi i32 [ %63, %62 ]
  %.lcssa18 = phi double [ %61, %62 ]
  %.lcssa16 = phi double [ %59, %62 ]
  %.lcssa14 = phi double [ %57, %62 ]
  %.lcssa12 = phi double [ %55, %62 ]
  %.lcssa10 = phi double [ %54, %62 ]
  %.lcssa8 = phi double [ %53, %62 ]
  store double %.lcssa8, ptr %2, align 8
  store double %.lcssa10, ptr @sa, align 8
  store double %.lcssa12, ptr %3, align 8
  store double %.lcssa14, ptr %6, align 8
  store double %.lcssa16, ptr %4, align 8
  store double %.lcssa18, ptr %5, align 8
  store i32 %.lcssa20, ptr %9, align 4
  br label %65

65:                                               ; preds = %._crit_edge3, %36
  %66 = load double, ptr @sa, align 8
  %67 = load double, ptr %6, align 8
  %68 = fmul double %66, %67
  %69 = load double, ptr @sc, align 8
  %70 = fdiv double %68, %69
  %71 = fptosi double %70 to i32
  store i32 %71, ptr %10, align 4
  %72 = load double, ptr @four, align 8
  %73 = load double, ptr %5, align 8
  %74 = fmul double %72, %73
  %75 = load double, ptr @five, align 8
  %76 = fdiv double %74, %75
  store double %76, ptr @sa, align 8
  %77 = load double, ptr @sa, align 8
  %78 = load double, ptr @five, align 8
  %79 = load double, ptr %4, align 8
  %80 = fdiv double %78, %79
  %81 = fadd double %77, %80
  store double %81, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %82 = load double, ptr @sb, align 8
  %83 = load double, ptr @sc, align 8
  %84 = load double, ptr %4, align 8
  %85 = load double, ptr %4, align 8
  %86 = fmul double %84, %85
  %87 = load double, ptr %4, align 8
  %88 = fmul double %86, %87
  %89 = fdiv double %83, %88
  %90 = fsub double %82, %89
  store double %90, ptr @piprg, align 8
  %91 = load double, ptr @piprg, align 8
  %92 = load double, ptr @piref, align 8
  %93 = fsub double %91, %92
  store double %93, ptr @pierr, align 8
  %94 = load double, ptr @pierr, align 8
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
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Misc/flops-2.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
