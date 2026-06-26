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
  store double 0.000000e+00, ptr %2, align 8
  %16 = load double, ptr @one, align 8
  store double %16, ptr %5, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  store double f0x3EA5F9C4FF20F589, ptr %4, align 8
  store i32 1, ptr %9, align 4
  br label %17

17:                                               ; preds = %25, %0
  %18 = phi i32 [ %38, %25 ], [ poison, %0 ]
  %19 = phi double [ %37, %25 ], [ poison, %0 ]
  %20 = phi double [ %28, %25 ], [ poison, %0 ]
  %21 = phi double [ %27, %25 ], [ poison, %0 ]
  %22 = phi double [ %37, %25 ], [ 0.000000e+00, %0 ]
  %23 = phi i32 [ %38, %25 ], [ 1, %0 ]
  %24 = icmp sle i32 %23, 156249999
  br i1 %24, label %25, label %39

25:                                               ; preds = %17
  %26 = sitofp i32 %23 to double
  %27 = fmul double %26, f0x3EA5F9C4FF20F589
  %28 = fmul double %27, %27
  %29 = fadd double %27, %16
  %30 = fdiv double %16, %29
  %31 = fsub double %22, %30
  %32 = fadd double %28, %16
  %33 = fdiv double %27, %32
  %34 = fsub double %31, %33
  %35 = call double @llvm.fmuladd.f64(double %27, double %28, double %16)
  %36 = fdiv double %28, %35
  %37 = fsub double %34, %36
  %38 = add nsw i32 %23, 1
  br label %17, !llvm.loop !7

39:                                               ; preds = %17
  %.lcssa4 = phi i32 [ %18, %17 ]
  %.lcssa3 = phi double [ %19, %17 ]
  %.lcssa2 = phi double [ %20, %17 ]
  %.lcssa1 = phi double [ %21, %17 ]
  %.lcssa = phi double [ %22, %17 ]
  store double %.lcssa1, ptr %6, align 8
  store double %.lcssa2, ptr %3, align 8
  store double %.lcssa3, ptr %2, align 8
  store i32 %.lcssa4, ptr %9, align 4
  store double f0x40599541F7F192A4, ptr %6, align 8
  store double f0x40C473EF42466D8C, ptr %3, align 8
  %40 = fneg double %16
  %41 = fadd double f0x40599541F7F192A4, %16
  %42 = fdiv double %16, %41
  %43 = fsub double %40, %42
  %44 = fadd double f0x40C473EF42466D8C, %16
  %45 = fdiv double f0x40599541F7F192A4, %44
  %46 = fsub double %43, %45
  %47 = call double @llvm.fmuladd.f64(double f0x40599541F7F192A4, double f0x40C473EF42466D8C, double %16)
  %48 = fdiv double f0x40C473EF42466D8C, %47
  %49 = fsub double %46, %48
  store double %49, ptr @sa, align 8
  %50 = load double, ptr @two, align 8
  %51 = call double @llvm.fmuladd.f64(double %50, double %.lcssa, double %49)
  %52 = fmul double f0x3EE8B8FD9F05143A, %51
  store double %52, ptr @sa, align 8
  %53 = fptosi double %52 to i32
  %54 = mul nsw i32 -2000, %53
  store i32 %54, ptr %10, align 4
  %55 = sitofp i32 %54 to double
  %56 = load double, ptr @scale, align 8
  %57 = fdiv double %55, %56
  %58 = fptosi double %57 to i32
  store i32 %58, ptr %10, align 4
  %59 = fadd double %52, 5.002000e+02
  store double %59, ptr @sc, align 8
  %60 = fmul double %59, 1.000000e-30
  %61 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %60, double noundef 0.000000e+00, double noundef 0.000000e+00)
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
