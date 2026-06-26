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

20:                                               ; preds = %24, %0
  %21 = phi double [ %25, %24 ], [ %17, %0 ]
  %22 = phi double [ %26, %24 ], [ %19, %0 ]
  %23 = phi i32 [ %27, %24 ], [ 1, %0 ]
  %exitcond = icmp ne i32 %23, 156250001
  br i1 %exitcond, label %24, label %28

24:                                               ; preds = %20
  %25 = fneg double %21
  store double %25, ptr %2, align 8
  %26 = fadd double %22, %25
  store double %26, ptr @sa, align 8
  %27 = add nuw nsw i32 %23, 1
  store i32 %27, ptr %9, align 4
  br label %20, !llvm.loop !7

28:                                               ; preds = %20
  %.lcssa5 = phi double [ %21, %20 ]
  %.lcssa4 = phi double [ %22, %20 ]
  store double 1.562500e+08, ptr @sc, align 8
  store double %.lcssa4, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  store double 0.000000e+00, ptr %6, align 8
  store i32 1, ptr %9, align 4
  br label %29

29:                                               ; preds = %37, %28
  %30 = phi double [ %41, %37 ], [ %.lcssa4, %28 ]
  %31 = phi double [ %38, %37 ], [ %.lcssa5, %28 ]
  %32 = phi double [ %44, %37 ], [ 0.000000e+00, %28 ]
  %33 = phi double [ %46, %37 ], [ 0.000000e+00, %28 ]
  %34 = phi double [ %43, %37 ], [ 0.000000e+00, %28 ]
  %35 = phi double [ %39, %37 ], [ %.lcssa4, %28 ]
  %36 = phi i32 [ %47, %37 ], [ 1, %28 ]
  %exitcond6 = icmp ne i32 %36, 156250001
  br i1 %exitcond6, label %37, label %48

37:                                               ; preds = %29
  %38 = fneg double %31
  store double %38, ptr %2, align 8
  %39 = fadd double %35, %38
  store double %39, ptr @sa, align 8
  %40 = load double, ptr @two, align 8
  %41 = fadd double %30, %40
  store double %41, ptr %3, align 8
  %42 = fsub double %38, %41
  %43 = fadd double %34, %42
  store double %43, ptr %6, align 8
  %44 = call double @llvm.fmuladd.f64(double %31, double %41, double %32)
  store double %44, ptr %4, align 8
  %45 = fdiv double %38, %41
  %46 = fadd double %33, %45
  store double %46, ptr %5, align 8
  %47 = add nuw nsw i32 %36, 1
  store i32 %47, ptr %9, align 4
  br label %29, !llvm.loop !9

48:                                               ; preds = %29
  %.lcssa3 = phi double [ %32, %29 ]
  %.lcssa2 = phi double [ %33, %29 ]
  %.lcssa1 = phi double [ %34, %29 ]
  %.lcssa = phi double [ %35, %29 ]
  %49 = fmul double %.lcssa, %.lcssa1
  %50 = fdiv double %49, 1.562500e+08
  %51 = fptosi double %50 to i32
  store i32 %51, ptr %10, align 4
  %52 = load double, ptr @four, align 8
  %53 = fmul double %52, %.lcssa2
  %54 = fdiv double %53, %16
  store double %54, ptr @sa, align 8
  %55 = fdiv double %16, %.lcssa3
  %56 = fadd double %54, %55
  store double %56, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %57 = fmul double %.lcssa3, %.lcssa3
  %58 = fmul double %57, %.lcssa3
  %59 = fdiv double 3.125000e+01, %58
  %60 = fsub double %56, %59
  store double %60, ptr @piprg, align 8
  %61 = load double, ptr @piref, align 8
  %62 = fsub double %60, %61
  store double %62, ptr @pierr, align 8
  %63 = fmul double %62, 1.000000e-30
  %64 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %63, double noundef 0.000000e+00, double noundef 0.000000e+00)
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
