; ModuleID = 'results\paper_full\Misc_flops_6\Misc_flops_6.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Misc/flops-6.c"
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
@.str.4 = private unnamed_addr constant [36 x i8] c"     6   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
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
  %17 = load double, ptr @four, align 8
  %18 = fmul double %17, 1.562500e+08
  %19 = fdiv double %16, %18
  store double %19, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  store i32 1, ptr %9, align 4
  br i1 true, label %.lr.ph, label %._crit_edge1

._crit_edge1:                                     ; preds = %0
  %.pre14 = load double, ptr @A6, align 8
  %.pre15 = load double, ptr @A5, align 8
  %.pre16 = load double, ptr @A4, align 8
  %.pre17 = load double, ptr @A3, align 8
  %.pre18 = load double, ptr @A2, align 8
  %.pre19 = load double, ptr @A1, align 8
  %.pre20 = load double, ptr @one, align 8
  %.pre21 = load double, ptr @B6, align 8
  %.pre22 = load double, ptr @B5, align 8
  %.pre23 = load double, ptr @B4, align 8
  %.pre24 = load double, ptr @B3, align 8
  %.pre25 = load double, ptr @B2, align 8
  %.pre26 = load double, ptr @B1, align 8
  br label %42

.lr.ph:                                           ; preds = %0
  %.pre = load double, ptr @A6, align 8
  %.pre2 = load double, ptr @A5, align 8
  %.pre3 = load double, ptr @A4, align 8
  %.pre4 = load double, ptr @A3, align 8
  %.pre5 = load double, ptr @A2, align 8
  %.pre6 = load double, ptr @A1, align 8
  %.pre7 = load double, ptr @one, align 8
  %.pre8 = load double, ptr @B6, align 8
  %.pre9 = load double, ptr @B5, align 8
  %.pre10 = load double, ptr @B4, align 8
  %.pre11 = load double, ptr @B3, align 8
  %.pre12 = load double, ptr @B2, align 8
  %.pre13 = load double, ptr @B1, align 8
  br label %20

20:                                               ; preds = %.lr.ph, %20
  %21 = phi double [ 0.000000e+00, %.lr.ph ], [ %39, %20 ]
  %22 = phi i32 [ 1, %.lr.ph ], [ %40, %20 ]
  %23 = sitofp i32 %22 to double
  %24 = fmul double %23, %19
  store double %24, ptr %3, align 8
  %25 = fmul double %24, %24
  store double %25, ptr %5, align 8
  %26 = call double @llvm.fmuladd.f64(double %.pre, double %25, double %.pre2)
  %27 = call double @llvm.fmuladd.f64(double %26, double %25, double %.pre3)
  %28 = call double @llvm.fmuladd.f64(double %27, double %25, double %.pre4)
  %29 = call double @llvm.fmuladd.f64(double %28, double %25, double %.pre5)
  %30 = call double @llvm.fmuladd.f64(double %29, double %25, double %.pre6)
  %31 = call double @llvm.fmuladd.f64(double %30, double %25, double %.pre7)
  %32 = fmul double %24, %31
  store double %32, ptr %4, align 8
  %33 = call double @llvm.fmuladd.f64(double %.pre8, double %25, double %.pre9)
  %34 = call double @llvm.fmuladd.f64(double %25, double %33, double %.pre10)
  %35 = call double @llvm.fmuladd.f64(double %25, double %34, double %.pre11)
  %36 = call double @llvm.fmuladd.f64(double %25, double %35, double %.pre12)
  %37 = call double @llvm.fmuladd.f64(double %25, double %36, double %.pre13)
  %38 = call double @llvm.fmuladd.f64(double %25, double %37, double %.pre7)
  %39 = call double @llvm.fmuladd.f64(double %32, double %38, double %21)
  store double %39, ptr %2, align 8
  %40 = add nsw i32 %22, 1
  store i32 %40, ptr %9, align 4
  %41 = icmp sle i32 %40, 156249999
  br i1 %41, label %20, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %20
  br label %42

42:                                               ; preds = %._crit_edge1, %._crit_edge
  %43 = phi double [ 0.000000e+00, %._crit_edge1 ], [ %39, %._crit_edge ]
  %44 = phi double [ poison, %._crit_edge1 ], [ %.pre7, %._crit_edge ]
  %45 = phi double [ %.pre26, %._crit_edge1 ], [ %.pre13, %._crit_edge ]
  %46 = phi double [ %.pre25, %._crit_edge1 ], [ %.pre12, %._crit_edge ]
  %47 = phi double [ %.pre24, %._crit_edge1 ], [ %.pre11, %._crit_edge ]
  %48 = phi double [ %.pre23, %._crit_edge1 ], [ %.pre10, %._crit_edge ]
  %49 = phi double [ %.pre22, %._crit_edge1 ], [ %.pre9, %._crit_edge ]
  %50 = phi double [ %.pre21, %._crit_edge1 ], [ %.pre8, %._crit_edge ]
  %51 = phi double [ %.pre20, %._crit_edge1 ], [ %.pre7, %._crit_edge ]
  %52 = phi double [ %.pre19, %._crit_edge1 ], [ %.pre6, %._crit_edge ]
  %53 = phi double [ %.pre18, %._crit_edge1 ], [ %.pre5, %._crit_edge ]
  %54 = phi double [ %.pre17, %._crit_edge1 ], [ %.pre4, %._crit_edge ]
  %55 = phi double [ %.pre16, %._crit_edge1 ], [ %.pre3, %._crit_edge ]
  %56 = phi double [ %.pre15, %._crit_edge1 ], [ %.pre2, %._crit_edge ]
  %57 = phi double [ %.pre14, %._crit_edge1 ], [ %.pre, %._crit_edge ]
  %58 = fdiv double %16, %17
  store double %58, ptr %3, align 8
  %59 = fmul double %58, %58
  store double %59, ptr %5, align 8
  %60 = call double @llvm.fmuladd.f64(double %57, double %59, double %56)
  %61 = call double @llvm.fmuladd.f64(double %60, double %59, double %55)
  %62 = call double @llvm.fmuladd.f64(double %61, double %59, double %54)
  %63 = call double @llvm.fmuladd.f64(double %62, double %59, double %53)
  %64 = call double @llvm.fmuladd.f64(double %63, double %59, double %52)
  %65 = call double @llvm.fmuladd.f64(double %64, double %59, double %51)
  %66 = fmul double %58, %65
  store double %66, ptr @sa, align 8
  %67 = call double @llvm.fmuladd.f64(double %50, double %59, double %49)
  %68 = call double @llvm.fmuladd.f64(double %59, double %67, double %48)
  %69 = call double @llvm.fmuladd.f64(double %59, double %68, double %47)
  %70 = call double @llvm.fmuladd.f64(double %59, double %69, double %46)
  %71 = call double @llvm.fmuladd.f64(double %59, double %70, double %45)
  %72 = call double @llvm.fmuladd.f64(double %59, double %71, double %44)
  store double %72, ptr @sb, align 8
  %73 = fmul double %66, %72
  store double %73, ptr @sa, align 8
  %74 = load double, ptr @two, align 8
  %75 = call double @llvm.fmuladd.f64(double %74, double %43, double %73)
  %76 = fmul double %19, %75
  %77 = fdiv double %76, %74
  store double %77, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %78 = fsub double %77, 2.500000e-01
  store double %78, ptr @sc, align 8
  %79 = fmul double %78, 1.000000e-30
  %80 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %79, double noundef 0.000000e+00, double noundef 0.000000e+00)
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
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Misc/flops-6.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
