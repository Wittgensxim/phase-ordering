; ModuleID = 'results\paper_round2\Misc_flops_5\Misc_flops_5.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Misc/flops-5.c"
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
@.str.4 = private unnamed_addr constant [36 x i8] c"     5   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
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
  %14 = load double, ptr @one, align 8
  store double %14, ptr @scale, align 8
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %17 = load i32, ptr %7, align 4
  %18 = mul nsw i32 %17, 10000
  store i32 %18, ptr %10, align 4
  %19 = load double, ptr @piref, align 8
  %20 = load double, ptr @three, align 8
  %21 = load i32, ptr %10, align 4
  %22 = sitofp i32 %21 to double
  %23 = fmul double %20, %22
  %24 = fdiv double %19, %23
  store double %24, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  store i32 1, ptr %9, align 4
  %25 = load i32, ptr %10, align 4
  %26 = sub nsw i32 %25, 1
  %27 = load double, ptr %6, align 8
  %28 = load double, ptr @A6, align 8
  %29 = load double, ptr @A5, align 8
  %30 = load double, ptr @A4, align 8
  %31 = load double, ptr @A3, align 8
  %32 = load double, ptr @A2, align 8
  %33 = load double, ptr @A1, align 8
  %34 = load double, ptr @one, align 8
  %35 = load double, ptr @B6, align 8
  %36 = load double, ptr @B5, align 8
  %37 = load double, ptr @B4, align 8
  %38 = load double, ptr @B3, align 8
  %39 = load double, ptr @B2, align 8
  %40 = load double, ptr @B1, align 8
  %41 = load double, ptr @one, align 8
  %.promoted = load i32, ptr %9, align 4
  %.promoted1 = load double, ptr %3, align 8
  %.promoted3 = load double, ptr %5, align 8
  %.promoted5 = load double, ptr %4, align 8
  %.promoted7 = load double, ptr %2, align 8
  br label %42

42:                                               ; preds = %68, %0
  %43 = phi double [ %67, %68 ], [ %.promoted7, %0 ]
  %44 = phi double [ %59, %68 ], [ %.promoted5, %0 ]
  %45 = phi double [ %52, %68 ], [ %.promoted3, %0 ]
  %46 = phi double [ %51, %68 ], [ %.promoted1, %0 ]
  %47 = phi i32 [ %69, %68 ], [ %.promoted, %0 ]
  %48 = icmp sle i32 %47, %26
  br i1 %48, label %49, label %70

49:                                               ; preds = %42
  %50 = sitofp i32 %47 to double
  %51 = fmul double %50, %27
  %52 = fmul double %51, %51
  %53 = call double @llvm.fmuladd.f64(double %28, double %52, double %29)
  %54 = call double @llvm.fmuladd.f64(double %53, double %52, double %30)
  %55 = call double @llvm.fmuladd.f64(double %54, double %52, double %31)
  %56 = call double @llvm.fmuladd.f64(double %55, double %52, double %32)
  %57 = call double @llvm.fmuladd.f64(double %56, double %52, double %33)
  %58 = call double @llvm.fmuladd.f64(double %57, double %52, double %34)
  %59 = fmul double %51, %58
  %60 = call double @llvm.fmuladd.f64(double %35, double %52, double %36)
  %61 = call double @llvm.fmuladd.f64(double %52, double %60, double %37)
  %62 = call double @llvm.fmuladd.f64(double %52, double %61, double %38)
  %63 = call double @llvm.fmuladd.f64(double %52, double %62, double %39)
  %64 = call double @llvm.fmuladd.f64(double %52, double %63, double %40)
  %65 = call double @llvm.fmuladd.f64(double %52, double %64, double %41)
  %66 = fdiv double %59, %65
  %67 = fadd double %43, %66
  br label %68

68:                                               ; preds = %49
  %69 = add nsw i32 %47, 1
  br label %42, !llvm.loop !7

70:                                               ; preds = %42
  %.lcssa8 = phi double [ %43, %42 ]
  %.lcssa6 = phi double [ %44, %42 ]
  %.lcssa4 = phi double [ %45, %42 ]
  %.lcssa2 = phi double [ %46, %42 ]
  %.lcssa = phi i32 [ %47, %42 ]
  store i32 %.lcssa, ptr %9, align 4
  store double %.lcssa2, ptr %3, align 8
  store double %.lcssa4, ptr %5, align 8
  store double %.lcssa6, ptr %4, align 8
  store double %.lcssa8, ptr %2, align 8
  %71 = load double, ptr @piref, align 8
  %72 = load double, ptr @three, align 8
  %73 = fdiv double %71, %72
  store double %73, ptr %3, align 8
  %74 = load double, ptr %3, align 8
  %75 = load double, ptr %3, align 8
  %76 = fmul double %74, %75
  store double %76, ptr %5, align 8
  %77 = load double, ptr %3, align 8
  %78 = load double, ptr @A6, align 8
  %79 = load double, ptr %5, align 8
  %80 = load double, ptr @A5, align 8
  %81 = call double @llvm.fmuladd.f64(double %78, double %79, double %80)
  %82 = load double, ptr %5, align 8
  %83 = load double, ptr @A4, align 8
  %84 = call double @llvm.fmuladd.f64(double %81, double %82, double %83)
  %85 = load double, ptr %5, align 8
  %86 = load double, ptr @A3, align 8
  %87 = call double @llvm.fmuladd.f64(double %84, double %85, double %86)
  %88 = load double, ptr %5, align 8
  %89 = load double, ptr @A2, align 8
  %90 = call double @llvm.fmuladd.f64(double %87, double %88, double %89)
  %91 = load double, ptr %5, align 8
  %92 = load double, ptr @A1, align 8
  %93 = call double @llvm.fmuladd.f64(double %90, double %91, double %92)
  %94 = load double, ptr %5, align 8
  %95 = load double, ptr @one, align 8
  %96 = call double @llvm.fmuladd.f64(double %93, double %94, double %95)
  %97 = fmul double %77, %96
  store double %97, ptr @sa, align 8
  %98 = load double, ptr %5, align 8
  %99 = load double, ptr %5, align 8
  %100 = load double, ptr %5, align 8
  %101 = load double, ptr %5, align 8
  %102 = load double, ptr %5, align 8
  %103 = load double, ptr @B6, align 8
  %104 = load double, ptr %5, align 8
  %105 = load double, ptr @B5, align 8
  %106 = call double @llvm.fmuladd.f64(double %103, double %104, double %105)
  %107 = load double, ptr @B4, align 8
  %108 = call double @llvm.fmuladd.f64(double %102, double %106, double %107)
  %109 = load double, ptr @B3, align 8
  %110 = call double @llvm.fmuladd.f64(double %101, double %108, double %109)
  %111 = load double, ptr @B2, align 8
  %112 = call double @llvm.fmuladd.f64(double %100, double %110, double %111)
  %113 = load double, ptr @B1, align 8
  %114 = call double @llvm.fmuladd.f64(double %99, double %112, double %113)
  %115 = load double, ptr @one, align 8
  %116 = call double @llvm.fmuladd.f64(double %98, double %114, double %115)
  store double %116, ptr @sb, align 8
  %117 = load double, ptr @sa, align 8
  %118 = load double, ptr @sb, align 8
  %119 = fdiv double %117, %118
  store double %119, ptr @sa, align 8
  %120 = load double, ptr %6, align 8
  %121 = load double, ptr @sa, align 8
  %122 = load double, ptr @two, align 8
  %123 = load double, ptr %2, align 8
  %124 = call double @llvm.fmuladd.f64(double %122, double %123, double %121)
  %125 = fmul double %120, %124
  %126 = load double, ptr @two, align 8
  %127 = fdiv double %125, %126
  store double %127, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %128 = load double, ptr @sa, align 8
  %129 = load double, ptr @sb, align 8
  %130 = fsub double %128, %129
  store double %130, ptr @sc, align 8
  %131 = load double, ptr @sc, align 8
  %132 = fmul double %131, 1.000000e-30
  %133 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %132, double noundef 0.000000e+00, double noundef 0.000000e+00)
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
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Misc/flops-5.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
