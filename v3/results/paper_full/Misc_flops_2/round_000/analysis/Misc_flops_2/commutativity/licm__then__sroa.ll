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
  %7 = load double, ptr @five, align 8
  %8 = fneg double %7
  %9 = load double, ptr @one, align 8
  %10 = fneg double %9
  store double %10, ptr @sa, align 8
  %sa.promoted = load double, ptr @sa, align 8
  br label %11

11:                                               ; preds = %19, %0
  %12 = phi double [ %18, %19 ], [ %sa.promoted, %0 ]
  %13 = phi double [ %17, %19 ], [ %8, %0 ]
  %14 = phi i32 [ %20, %19 ], [ 1, %0 ]
  %15 = icmp sle i32 %14, %6
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = fneg double %13
  %18 = fadd double %12, %17
  store double %18, ptr @sa, align 8
  br label %19

19:                                               ; preds = %16
  %20 = add nsw i32 %14, 1
  br label %11, !llvm.loop !7

21:                                               ; preds = %11
  %.lcssa2 = phi double [ %13, %11 ]
  %.lcssa = phi i32 [ %14, %11 ]
  %22 = sitofp i32 %6 to double
  store double %22, ptr @sc, align 8
  %23 = load double, ptr @sa, align 8
  %24 = load double, ptr @two, align 8
  %sa.promoted7 = load double, ptr @sa, align 8
  br label %25

25:                                               ; preds = %44, %21
  %26 = phi double [ %43, %44 ], [ 0.000000e+00, %21 ]
  %27 = phi double [ %41, %44 ], [ 0.000000e+00, %21 ]
  %28 = phi double [ %39, %44 ], [ 0.000000e+00, %21 ]
  %29 = phi double [ %37, %44 ], [ %23, %21 ]
  %30 = phi double [ %36, %44 ], [ %sa.promoted7, %21 ]
  %31 = phi double [ %35, %44 ], [ %.lcssa2, %21 ]
  %32 = phi i32 [ %45, %44 ], [ 1, %21 ]
  %33 = icmp sle i32 %32, %6
  br i1 %33, label %34, label %46

34:                                               ; preds = %25
  %35 = fneg double %31
  %36 = fadd double %30, %35
  store double %36, ptr @sa, align 8
  %37 = fadd double %29, %24
  %38 = fsub double %35, %37
  %39 = fadd double %28, %38
  %40 = fneg double %35
  %41 = call double @llvm.fmuladd.f64(double %40, double %37, double %27)
  %42 = fdiv double %35, %37
  %43 = fadd double %26, %42
  br label %44

44:                                               ; preds = %34
  %45 = add nsw i32 %32, 1
  br label %25, !llvm.loop !9

46:                                               ; preds = %25
  %.lcssa15 = phi double [ %26, %25 ]
  %.lcssa13 = phi double [ %27, %25 ]
  %.lcssa11 = phi double [ %28, %25 ]
  %.lcssa9 = phi double [ %29, %25 ]
  %.lcssa6 = phi double [ %31, %25 ]
  %.lcssa4 = phi i32 [ %32, %25 ]
  %47 = load double, ptr @sa, align 8
  %48 = fmul double %47, %.lcssa11
  %49 = load double, ptr @sc, align 8
  %50 = fdiv double %48, %49
  %51 = fptosi double %50 to i32
  %52 = load double, ptr @four, align 8
  %53 = fmul double %52, %.lcssa15
  %54 = load double, ptr @five, align 8
  %55 = fdiv double %53, %54
  store double %55, ptr @sa, align 8
  %56 = load double, ptr @sa, align 8
  %57 = load double, ptr @five, align 8
  %58 = fdiv double %57, %.lcssa13
  %59 = fadd double %56, %58
  store double %59, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %60 = load double, ptr @sb, align 8
  %61 = load double, ptr @sc, align 8
  %62 = fmul double %.lcssa13, %.lcssa13
  %63 = fmul double %62, %.lcssa13
  %64 = fdiv double %61, %63
  %65 = fsub double %60, %64
  store double %65, ptr @piprg, align 8
  %66 = load double, ptr @piprg, align 8
  %67 = load double, ptr @piref, align 8
  %68 = fsub double %66, %67
  store double %68, ptr @pierr, align 8
  %69 = load double, ptr @pierr, align 8
  %70 = fmul double %69, 1.000000e-30
  %71 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %70, double noundef 0.000000e+00, double noundef 0.000000e+00)
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
