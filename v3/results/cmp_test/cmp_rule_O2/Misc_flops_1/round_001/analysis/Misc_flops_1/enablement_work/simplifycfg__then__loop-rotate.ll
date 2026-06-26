; ModuleID = 'results\cmp_test\cmp_rule_O2\Misc_flops_1\round_000\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Misc/flops-1.c"
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
@T = dso_local global [36 x double] zeroinitializer, align 16
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
@.str.4 = private unnamed_addr constant [36 x i8] c"     1   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@nulltime = dso_local global double 0.000000e+00, align 8
@TimeArray = dso_local global [3 x double] zeroinitializer, align 16
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
  %14 = load i32, ptr %7, align 4
  %15 = sitofp i32 %14 to double
  %16 = fdiv double 1.000000e+06, %15
  store double %16, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  store double 1.000000e+00, ptr @TLimit, align 8
  store i32 512000000, ptr %8, align 4
  store double f0x400921FB54442D18, ptr @piref, align 8
  store double 1.000000e+00, ptr @one, align 8
  store double 2.000000e+00, ptr @two, align 8
  store double 3.000000e+00, ptr @three, align 8
  store double 4.000000e+00, ptr @four, align 8
  store double 5.000000e+00, ptr @five, align 8
  %17 = load double, ptr @one, align 8
  store double %17, ptr @scale, align 8
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %19 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %20 = load i32, ptr %7, align 4
  %21 = mul nsw i32 %20, 10000
  store i32 %21, ptr %11, align 4
  store double 0.000000e+00, ptr @sa, align 8
  %22 = load i32, ptr %11, align 4
  %23 = mul nsw i32 2, %22
  store i32 %23, ptr %11, align 4
  %24 = load double, ptr @one, align 8
  %25 = load i32, ptr %11, align 4
  %26 = sitofp i32 %25 to double
  %27 = fdiv double %24, %26
  store double %27, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %28 = load double, ptr @one, align 8
  store double %28, ptr %5, align 8
  store i32 1, ptr %9, align 4
  %29 = load i32, ptr %11, align 4
  %30 = load double, ptr %5, align 8
  %31 = load double, ptr %6, align 8
  %32 = load double, ptr @D1, align 8
  %33 = load double, ptr @D2, align 8
  %34 = load double, ptr @D3, align 8
  %35 = load double, ptr %5, align 8
  %36 = load double, ptr @D1, align 8
  %37 = load double, ptr @E2, align 8
  %38 = load double, ptr @E3, align 8
  %.promoted = load i32, ptr %9, align 4
  %.promoted1 = load double, ptr %4, align 8
  %.promoted3 = load double, ptr %3, align 8
  %.promoted5 = load double, ptr %2, align 8
  %smax = call i32 @llvm.smax.i32(i32 %.promoted, i32 %29)
  %exitcond1 = icmp ne i32 %.promoted, %smax
  br i1 %exitcond1, label %.lr.ph, label %53

.lr.ph:                                           ; preds = %0
  br label %39

39:                                               ; preds = %.lr.ph, %39
  %40 = phi i32 [ %.promoted, %.lr.ph ], [ %52, %39 ]
  %41 = phi double [ %.promoted1, %.lr.ph ], [ %43, %39 ]
  %42 = phi double [ %.promoted5, %.lr.ph ], [ %51, %39 ]
  %43 = fadd double %41, %30
  %44 = fmul double %43, %31
  %45 = call double @llvm.fmuladd.f64(double %44, double %34, double %33)
  %46 = call double @llvm.fmuladd.f64(double %44, double %45, double %32)
  %47 = call double @llvm.fmuladd.f64(double %44, double %38, double %37)
  %48 = call double @llvm.fmuladd.f64(double %44, double %47, double %36)
  %49 = call double @llvm.fmuladd.f64(double %44, double %48, double %35)
  %50 = fdiv double %46, %49
  %51 = fadd double %42, %50
  %52 = add i32 %40, 1
  %exitcond = icmp ne i32 %52, %smax
  br i1 %exitcond, label %39, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %39
  %split = phi double [ %51, %39 ]
  %split2 = phi double [ %44, %39 ]
  %split3 = phi double [ %43, %39 ]
  br label %53

53:                                               ; preds = %._crit_edge, %0
  %.lcssa6 = phi double [ %split, %._crit_edge ], [ %.promoted5, %0 ]
  %.lcssa4 = phi double [ %split2, %._crit_edge ], [ %.promoted3, %0 ]
  %.lcssa2 = phi double [ %split3, %._crit_edge ], [ %.promoted1, %0 ]
  store i32 %smax, ptr %9, align 4
  store double %.lcssa2, ptr %4, align 8
  store double %.lcssa4, ptr %3, align 8
  store double %.lcssa6, ptr %2, align 8
  %54 = load double, ptr @D1, align 8
  %55 = load double, ptr @D2, align 8
  %56 = fadd double %54, %55
  %57 = load double, ptr @D3, align 8
  %58 = fadd double %56, %57
  %59 = load double, ptr @one, align 8
  %60 = load double, ptr @D1, align 8
  %61 = fadd double %59, %60
  %62 = load double, ptr @E2, align 8
  %63 = fadd double %61, %62
  %64 = load double, ptr @E3, align 8
  %65 = fadd double %63, %64
  %66 = fdiv double %58, %65
  store double %66, ptr @sa, align 8
  %67 = load double, ptr @D1, align 8
  store double %67, ptr @sb, align 8
  %68 = load double, ptr %6, align 8
  %69 = load double, ptr @sa, align 8
  %70 = load double, ptr @sb, align 8
  %71 = fadd double %69, %70
  %72 = load double, ptr @two, align 8
  %73 = load double, ptr %2, align 8
  %74 = call double @llvm.fmuladd.f64(double %72, double %73, double %71)
  %75 = fmul double %68, %74
  %76 = load double, ptr @two, align 8
  %77 = fdiv double %75, %76
  store double %77, ptr @sa, align 8
  %78 = load double, ptr @one, align 8
  %79 = load double, ptr @sa, align 8
  %80 = fdiv double %78, %79
  store double %80, ptr @sb, align 8
  %81 = load double, ptr @sb, align 8
  %82 = fptosi double %81 to i32
  %83 = mul nsw i32 40000, %82
  %84 = sitofp i32 %83 to double
  %85 = load double, ptr @scale, align 8
  %86 = fdiv double %84, %85
  %87 = fptosi double %86 to i32
  store i32 %87, ptr %11, align 4
  %88 = load double, ptr @sb, align 8
  %89 = fsub double %88, 2.520000e+01
  store double %89, ptr @sc, align 8
  %90 = load double, ptr @sc, align 8
  %91 = fmul double %90, 1.000000e-30
  %92 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %91, double noundef 0.000000e+00, double noundef 0.000000e+00)
  ret i32 0
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Misc/flops-1.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
