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
  %23 = load i32, ptr %10, align 4
  %.promoted = load i32, ptr %9, align 4
  %.promoted1 = load double, ptr %2, align 8
  %sa.promoted = load double, ptr @sa, align 8
  br label %24

24:                                               ; preds = %32, %0
  %25 = phi double [ %31, %32 ], [ %sa.promoted, %0 ]
  %26 = phi double [ %30, %32 ], [ %.promoted1, %0 ]
  %27 = phi i32 [ %33, %32 ], [ %.promoted, %0 ]
  %28 = icmp sle i32 %27, %23
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = fneg double %26
  %31 = fadd double %25, %30
  store double %31, ptr @sa, align 8
  br label %32

32:                                               ; preds = %29
  %33 = add nsw i32 %27, 1
  br label %24, !llvm.loop !7

34:                                               ; preds = %24
  %.lcssa2 = phi double [ %26, %24 ]
  %.lcssa = phi i32 [ %27, %24 ]
  store i32 %.lcssa, ptr %9, align 4
  store double %.lcssa2, ptr %2, align 8
  %35 = load i32, ptr %10, align 4
  %36 = sitofp i32 %35 to double
  store double %36, ptr @sc, align 8
  %37 = load double, ptr @sa, align 8
  store double %37, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  store double 0.000000e+00, ptr %6, align 8
  store i32 1, ptr %9, align 4
  %38 = load i32, ptr %10, align 4
  %39 = load double, ptr @two, align 8
  %.promoted3 = load i32, ptr %9, align 4
  %.promoted5 = load double, ptr %2, align 8
  %sa.promoted7 = load double, ptr @sa, align 8
  %.promoted8 = load double, ptr %3, align 8
  %.promoted10 = load double, ptr %6, align 8
  %.promoted12 = load double, ptr %4, align 8
  %.promoted14 = load double, ptr %5, align 8
  br label %40

40:                                               ; preds = %59, %34
  %41 = phi double [ %58, %59 ], [ %.promoted14, %34 ]
  %42 = phi double [ %56, %59 ], [ %.promoted12, %34 ]
  %43 = phi double [ %54, %59 ], [ %.promoted10, %34 ]
  %44 = phi double [ %52, %59 ], [ %.promoted8, %34 ]
  %45 = phi double [ %51, %59 ], [ %sa.promoted7, %34 ]
  %46 = phi double [ %50, %59 ], [ %.promoted5, %34 ]
  %47 = phi i32 [ %60, %59 ], [ %.promoted3, %34 ]
  %48 = icmp sle i32 %47, %38
  br i1 %48, label %49, label %61

49:                                               ; preds = %40
  %50 = fneg double %46
  %51 = fadd double %45, %50
  store double %51, ptr @sa, align 8
  %52 = fadd double %44, %39
  %53 = fsub double %50, %52
  %54 = fadd double %43, %53
  %55 = fneg double %50
  %56 = call double @llvm.fmuladd.f64(double %55, double %52, double %42)
  %57 = fdiv double %50, %52
  %58 = fadd double %41, %57
  br label %59

59:                                               ; preds = %49
  %60 = add nsw i32 %47, 1
  br label %40, !llvm.loop !9

61:                                               ; preds = %40
  %.lcssa15 = phi double [ %41, %40 ]
  %.lcssa13 = phi double [ %42, %40 ]
  %.lcssa11 = phi double [ %43, %40 ]
  %.lcssa9 = phi double [ %44, %40 ]
  %.lcssa6 = phi double [ %46, %40 ]
  %.lcssa4 = phi i32 [ %47, %40 ]
  store i32 %.lcssa4, ptr %9, align 4
  store double %.lcssa6, ptr %2, align 8
  store double %.lcssa9, ptr %3, align 8
  store double %.lcssa11, ptr %6, align 8
  store double %.lcssa13, ptr %4, align 8
  store double %.lcssa15, ptr %5, align 8
  %62 = load double, ptr @sa, align 8
  %63 = load double, ptr %6, align 8
  %64 = fmul double %62, %63
  %65 = load double, ptr @sc, align 8
  %66 = fdiv double %64, %65
  %67 = fptosi double %66 to i32
  store i32 %67, ptr %10, align 4
  %68 = load double, ptr @four, align 8
  %69 = load double, ptr %5, align 8
  %70 = fmul double %68, %69
  %71 = load double, ptr @five, align 8
  %72 = fdiv double %70, %71
  store double %72, ptr @sa, align 8
  %73 = load double, ptr @sa, align 8
  %74 = load double, ptr @five, align 8
  %75 = load double, ptr %4, align 8
  %76 = fdiv double %74, %75
  %77 = fadd double %73, %76
  store double %77, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %78 = load double, ptr @sb, align 8
  %79 = load double, ptr @sc, align 8
  %80 = load double, ptr %4, align 8
  %81 = load double, ptr %4, align 8
  %82 = fmul double %80, %81
  %83 = load double, ptr %4, align 8
  %84 = fmul double %82, %83
  %85 = fdiv double %79, %84
  %86 = fsub double %78, %85
  store double %86, ptr @piprg, align 8
  %87 = load double, ptr @piprg, align 8
  %88 = load double, ptr @piref, align 8
  %89 = fsub double %87, %88
  store double %89, ptr @pierr, align 8
  %90 = load double, ptr @pierr, align 8
  %91 = fmul double %90, 1.000000e-30
  %92 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %91, double noundef 0.000000e+00, double noundef 0.000000e+00)
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
