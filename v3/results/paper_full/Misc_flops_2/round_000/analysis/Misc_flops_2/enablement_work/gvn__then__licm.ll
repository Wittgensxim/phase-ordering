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
  store double 1.000000e+00, ptr @scale, align 8
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store i32 156250000, ptr %10, align 4
  %16 = load double, ptr @five, align 8
  %17 = fneg double %16
  store double %17, ptr %2, align 8
  %18 = load double, ptr @one, align 8
  %19 = fneg double %18
  store double %19, ptr @sa, align 8
  store i32 1, ptr %9, align 4
  br label %20

20:                                               ; preds = %28, %0
  %21 = phi i32 [ %31, %28 ], [ poison, %0 ]
  %22 = phi double [ %30, %28 ], [ poison, %0 ]
  %23 = phi double [ %29, %28 ], [ poison, %0 ]
  %24 = phi double [ %29, %28 ], [ %17, %0 ]
  %25 = phi double [ %30, %28 ], [ %19, %0 ]
  %26 = phi i32 [ %31, %28 ], [ 1, %0 ]
  %27 = icmp sle i32 %26, 156250000
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = fneg double %24
  %30 = fadd double %25, %29
  %31 = add nsw i32 %26, 1
  br label %20, !llvm.loop !7

32:                                               ; preds = %20
  %.lcssa8 = phi i32 [ %21, %20 ]
  %.lcssa7 = phi double [ %22, %20 ]
  %.lcssa6 = phi double [ %23, %20 ]
  %.lcssa5 = phi double [ %24, %20 ]
  %.lcssa4 = phi double [ %25, %20 ]
  store double %.lcssa6, ptr %2, align 8
  store double %.lcssa7, ptr @sa, align 8
  store i32 %.lcssa8, ptr %9, align 4
  store double 1.562500e+08, ptr @sc, align 8
  store double %.lcssa4, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  store double 0.000000e+00, ptr %6, align 8
  store i32 1, ptr %9, align 4
  %33 = load double, ptr @two, align 8
  br label %34

34:                                               ; preds = %50, %32
  %35 = phi i32 [ %59, %50 ], [ poison, %32 ]
  %36 = phi double [ %58, %50 ], [ poison, %32 ]
  %37 = phi double [ %56, %50 ], [ poison, %32 ]
  %38 = phi double [ %55, %50 ], [ poison, %32 ]
  %39 = phi double [ %53, %50 ], [ poison, %32 ]
  %40 = phi double [ %52, %50 ], [ poison, %32 ]
  %41 = phi double [ %51, %50 ], [ poison, %32 ]
  %42 = phi double [ %53, %50 ], [ %.lcssa4, %32 ]
  %43 = phi double [ %51, %50 ], [ %.lcssa5, %32 ]
  %44 = phi double [ %56, %50 ], [ 0.000000e+00, %32 ]
  %45 = phi double [ %58, %50 ], [ 0.000000e+00, %32 ]
  %46 = phi double [ %55, %50 ], [ 0.000000e+00, %32 ]
  %47 = phi double [ %52, %50 ], [ %.lcssa4, %32 ]
  %48 = phi i32 [ %59, %50 ], [ 1, %32 ]
  %49 = icmp sle i32 %48, 156250000
  br i1 %49, label %50, label %60

50:                                               ; preds = %34
  %51 = fneg double %43
  %52 = fadd double %47, %51
  %53 = fadd double %42, %33
  %54 = fsub double %51, %53
  %55 = fadd double %46, %54
  %56 = call double @llvm.fmuladd.f64(double %43, double %53, double %44)
  %57 = fdiv double %51, %53
  %58 = fadd double %45, %57
  %59 = add nsw i32 %48, 1
  br label %34, !llvm.loop !9

60:                                               ; preds = %34
  %.lcssa15 = phi i32 [ %35, %34 ]
  %.lcssa14 = phi double [ %36, %34 ]
  %.lcssa13 = phi double [ %37, %34 ]
  %.lcssa12 = phi double [ %38, %34 ]
  %.lcssa11 = phi double [ %39, %34 ]
  %.lcssa10 = phi double [ %40, %34 ]
  %.lcssa9 = phi double [ %41, %34 ]
  %.lcssa3 = phi double [ %44, %34 ]
  %.lcssa2 = phi double [ %45, %34 ]
  %.lcssa1 = phi double [ %46, %34 ]
  %.lcssa = phi double [ %47, %34 ]
  store double %.lcssa9, ptr %2, align 8
  store double %.lcssa10, ptr @sa, align 8
  store double %.lcssa11, ptr %3, align 8
  store double %.lcssa12, ptr %6, align 8
  store double %.lcssa13, ptr %4, align 8
  store double %.lcssa14, ptr %5, align 8
  store i32 %.lcssa15, ptr %9, align 4
  %61 = fmul double %.lcssa, %.lcssa1
  %62 = fdiv double %61, 1.562500e+08
  %63 = fptosi double %62 to i32
  store i32 %63, ptr %10, align 4
  %64 = load double, ptr @four, align 8
  %65 = fmul double %64, %.lcssa2
  %66 = fdiv double %65, %16
  store double %66, ptr @sa, align 8
  %67 = fdiv double %16, %.lcssa3
  %68 = fadd double %66, %67
  store double %68, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %69 = fmul double %.lcssa3, %.lcssa3
  %70 = fmul double %69, %.lcssa3
  %71 = fdiv double 3.125000e+01, %70
  %72 = fsub double %68, %71
  store double %72, ptr @piprg, align 8
  %73 = load double, ptr @piref, align 8
  %74 = fsub double %72, %73
  store double %74, ptr @pierr, align 8
  %75 = fmul double %74, 1.000000e-30
  %76 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %75, double noundef 0.000000e+00, double noundef 0.000000e+00)
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
