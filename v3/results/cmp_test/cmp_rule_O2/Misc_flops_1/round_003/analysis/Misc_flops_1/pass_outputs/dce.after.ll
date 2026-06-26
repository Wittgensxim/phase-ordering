; ModuleID = 'results\cmp_test\cmp_rule_O2\Misc_flops_1\round_002\output.ll'
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
  store i32 0, ptr %1, align 4
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 15625, ptr %7, align 4
  store double 6.400000e+01, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
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
  store double 0.000000e+00, ptr @sa, align 8
  %18 = load i32, ptr %10, align 4
  %19 = mul nsw i32 2, %18
  store i32 %19, ptr %10, align 4
  %20 = load double, ptr @one, align 8
  %21 = sitofp i32 %19 to double
  %22 = fdiv double %20, %21
  store double %22, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %23 = load double, ptr @one, align 8
  store double %23, ptr %5, align 8
  store i32 1, ptr %9, align 4
  %24 = load i32, ptr %10, align 4
  %25 = load double, ptr %5, align 8
  %26 = load double, ptr %6, align 8
  %27 = load double, ptr @D1, align 8
  %28 = load double, ptr @D2, align 8
  %29 = load double, ptr @D3, align 8
  %30 = load double, ptr @E2, align 8
  %31 = load double, ptr @E3, align 8
  %.promoted1 = load double, ptr %4, align 8
  %.promoted3 = load double, ptr %3, align 8
  %.promoted5 = load double, ptr %2, align 8
  %smax = call i32 @llvm.smax.i32(i32 1, i32 %24)
  br label %32

32:                                               ; preds = %47, %0
  %33 = phi double [ %46, %47 ], [ %.promoted5, %0 ]
  %34 = phi double [ %39, %47 ], [ %.promoted3, %0 ]
  %35 = phi double [ %38, %47 ], [ %.promoted1, %0 ]
  %36 = phi i32 [ %48, %47 ], [ 1, %0 ]
  %exitcond = icmp ne i32 %36, %smax
  br i1 %exitcond, label %37, label %49

37:                                               ; preds = %32
  %38 = fadd double %35, %25
  %39 = fmul double %38, %26
  %40 = call double @llvm.fmuladd.f64(double %39, double %29, double %28)
  %41 = call double @llvm.fmuladd.f64(double %39, double %40, double %27)
  %42 = call double @llvm.fmuladd.f64(double %39, double %31, double %30)
  %43 = call double @llvm.fmuladd.f64(double %39, double %42, double %27)
  %44 = call double @llvm.fmuladd.f64(double %39, double %43, double %25)
  %45 = fdiv double %41, %44
  %46 = fadd double %33, %45
  br label %47

47:                                               ; preds = %37
  %48 = add nuw i32 %36, 1
  br label %32, !llvm.loop !7

49:                                               ; preds = %32
  %.lcssa2 = phi double [ %33, %32 ]
  %.lcssa1 = phi double [ %34, %32 ]
  %.lcssa = phi double [ %35, %32 ]
  store i32 %smax, ptr %9, align 4
  store double %.lcssa, ptr %4, align 8
  store double %.lcssa1, ptr %3, align 8
  store double %.lcssa2, ptr %2, align 8
  %50 = load double, ptr @D1, align 8
  %51 = load double, ptr @D2, align 8
  %52 = fadd double %50, %51
  %53 = load double, ptr @D3, align 8
  %54 = fadd double %52, %53
  %55 = load double, ptr @one, align 8
  %56 = fadd double %55, %50
  %57 = load double, ptr @E2, align 8
  %58 = fadd double %56, %57
  %59 = load double, ptr @E3, align 8
  %60 = fadd double %58, %59
  %61 = fdiv double %54, %60
  store double %61, ptr @sa, align 8
  %62 = load double, ptr @D1, align 8
  store double %62, ptr @sb, align 8
  %63 = load double, ptr %6, align 8
  %64 = load double, ptr @sa, align 8
  %65 = fadd double %64, %62
  %66 = load double, ptr @two, align 8
  %67 = load double, ptr %2, align 8
  %68 = call double @llvm.fmuladd.f64(double %66, double %67, double %65)
  %69 = fmul double %63, %68
  %70 = fdiv double %69, %66
  store double %70, ptr @sa, align 8
  %71 = load double, ptr @one, align 8
  %72 = fdiv double %71, %70
  store double %72, ptr @sb, align 8
  %73 = fptosi double %72 to i32
  %74 = mul nsw i32 40000, %73
  %75 = sitofp i32 %74 to double
  %76 = load double, ptr @scale, align 8
  %77 = fdiv double %75, %76
  %78 = fptosi double %77 to i32
  store i32 %78, ptr %10, align 4
  %79 = load double, ptr @sb, align 8
  %80 = fsub double %79, 2.520000e+01
  store double %80, ptr @sc, align 8
  %81 = fmul double %80, 1.000000e-30
  %82 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %81, double noundef 0.000000e+00, double noundef 0.000000e+00)
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
