; ModuleID = 'results\paper_v4\Misc_flops_5\Misc_flops_5.ll'
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
@str = private unnamed_addr constant [57 x i8] c"   FLOPS C Program (Double Precision), V2.0 18 Dec 1992\0A\00", align 1
@str.1 = private unnamed_addr constant [47 x i8] c"   Module     Error        RunTime      MFLOPS\00", align 1
@str.2 = private unnamed_addr constant [35 x i8] c"                            (usec)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %putchar = call i32 @putchar(i32 10)
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  store i32 15625, ptr %6, align 4
  store double 1.000000e+00, ptr @TLimit, align 8
  store double f0x400921FB54442D18, ptr @piref, align 8
  store double 1.000000e+00, ptr @one, align 8
  store double 2.000000e+00, ptr @two, align 8
  store double 3.000000e+00, ptr @three, align 8
  store double 4.000000e+00, ptr @four, align 8
  store double 5.000000e+00, ptr @five, align 8
  store double 1.000000e+00, ptr @scale, align 8
  %puts9 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  %puts10 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  %9 = load i32, ptr %6, align 4
  %10 = mul nsw i32 %9, 10000
  store i32 %10, ptr %8, align 4
  %11 = load double, ptr @piref, align 8
  %12 = load double, ptr @three, align 8
  %13 = sitofp i32 %10 to double
  %14 = fmul double %12, %13
  %15 = fdiv double %11, %14
  store double %15, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  store i32 1, ptr %7, align 4
  %16 = load i32, ptr %8, align 4
  %17 = load double, ptr @A6, align 8
  %18 = load double, ptr @A5, align 8
  %19 = load double, ptr @A4, align 8
  %20 = load double, ptr @A3, align 8
  %21 = load double, ptr @A2, align 8
  %22 = load double, ptr @A1, align 8
  %23 = load double, ptr @one, align 8
  %24 = load double, ptr @B6, align 8
  %25 = load double, ptr @B5, align 8
  %26 = load double, ptr @B4, align 8
  %27 = load double, ptr @B3, align 8
  %28 = load double, ptr @B2, align 8
  %29 = load double, ptr @B1, align 8
  %30 = load double, ptr @one, align 8
  %.promoted = load i32, ptr %7, align 4
  %.promoted1 = load double, ptr %2, align 8
  %.promoted3 = load double, ptr %4, align 8
  %.promoted5 = load double, ptr %3, align 8
  %.promoted7 = load double, ptr %1, align 8
  br label %31

31:                                               ; preds = %38, %0
  %32 = phi double [ %56, %38 ], [ %.promoted7, %0 ]
  %33 = phi double [ %48, %38 ], [ %.promoted5, %0 ]
  %34 = phi double [ %41, %38 ], [ %.promoted3, %0 ]
  %35 = phi double [ %40, %38 ], [ %.promoted1, %0 ]
  %36 = phi i32 [ %57, %38 ], [ %.promoted, %0 ]
  %.not.not = icmp slt i32 %36, %16
  br i1 %.not.not, label %37, label %58

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37
  %39 = sitofp i32 %36 to double
  %40 = fmul double %15, %39
  %41 = fmul double %40, %40
  %42 = call double @llvm.fmuladd.f64(double %17, double %41, double %18)
  %43 = call double @llvm.fmuladd.f64(double %42, double %41, double %19)
  %44 = call double @llvm.fmuladd.f64(double %43, double %41, double %20)
  %45 = call double @llvm.fmuladd.f64(double %44, double %41, double %21)
  %46 = call double @llvm.fmuladd.f64(double %45, double %41, double %22)
  %47 = call double @llvm.fmuladd.f64(double %46, double %41, double %23)
  %48 = fmul double %40, %47
  %49 = call double @llvm.fmuladd.f64(double %24, double %41, double %25)
  %50 = call double @llvm.fmuladd.f64(double %41, double %49, double %26)
  %51 = call double @llvm.fmuladd.f64(double %41, double %50, double %27)
  %52 = call double @llvm.fmuladd.f64(double %41, double %51, double %28)
  %53 = call double @llvm.fmuladd.f64(double %41, double %52, double %29)
  %54 = call double @llvm.fmuladd.f64(double %41, double %53, double %30)
  %55 = fdiv double %48, %54
  %56 = fadd double %32, %55
  %57 = add nsw i32 %36, 1
  br label %31, !llvm.loop !7

58:                                               ; preds = %31
  store i32 %36, ptr %7, align 4
  store double %35, ptr %2, align 8
  store double %34, ptr %4, align 8
  store double %33, ptr %3, align 8
  store double %32, ptr %1, align 8
  %59 = load double, ptr @piref, align 8
  %60 = load double, ptr @three, align 8
  %61 = fdiv double %59, %60
  store double %61, ptr %2, align 8
  %62 = fmul double %61, %61
  store double %62, ptr %4, align 8
  %63 = load double, ptr @A6, align 8
  %64 = load double, ptr @A5, align 8
  %65 = call double @llvm.fmuladd.f64(double %63, double %62, double %64)
  %66 = load double, ptr @A4, align 8
  %67 = call double @llvm.fmuladd.f64(double %65, double %62, double %66)
  %68 = load double, ptr @A3, align 8
  %69 = call double @llvm.fmuladd.f64(double %67, double %62, double %68)
  %70 = load double, ptr %4, align 8
  %71 = load double, ptr @A2, align 8
  %72 = call double @llvm.fmuladd.f64(double %69, double %70, double %71)
  %73 = load double, ptr @A1, align 8
  %74 = call double @llvm.fmuladd.f64(double %72, double %70, double %73)
  %75 = load double, ptr @one, align 8
  %76 = call double @llvm.fmuladd.f64(double %74, double %70, double %75)
  %77 = fmul double %61, %76
  store double %77, ptr @sa, align 8
  %78 = load double, ptr %4, align 8
  %79 = load double, ptr @B6, align 8
  %80 = load double, ptr @B5, align 8
  %81 = call double @llvm.fmuladd.f64(double %79, double %78, double %80)
  %82 = load double, ptr @B4, align 8
  %83 = call double @llvm.fmuladd.f64(double %78, double %81, double %82)
  %84 = load double, ptr @B3, align 8
  %85 = call double @llvm.fmuladd.f64(double %78, double %83, double %84)
  %86 = load double, ptr @B2, align 8
  %87 = call double @llvm.fmuladd.f64(double %78, double %85, double %86)
  %88 = load double, ptr @B1, align 8
  %89 = call double @llvm.fmuladd.f64(double %78, double %87, double %88)
  %90 = load double, ptr @one, align 8
  %91 = call double @llvm.fmuladd.f64(double %78, double %89, double %90)
  store double %91, ptr @sb, align 8
  %92 = load double, ptr @sa, align 8
  %93 = fdiv double %92, %91
  store double %93, ptr @sa, align 8
  %94 = load double, ptr %5, align 8
  %95 = load double, ptr @two, align 8
  %96 = load double, ptr %1, align 8
  %97 = call double @llvm.fmuladd.f64(double %95, double %96, double %93)
  %98 = fmul double %94, %97
  %99 = fdiv double %98, %95
  store double %99, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %100 = fadd double %99, f0xBFE62E42FEFA39EF
  store double %100, ptr @sc, align 8
  %101 = fmul double %100, 1.000000e-30
  %102 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %101, double noundef 0.000000e+00, double noundef 0.000000e+00) #4
  ret i32 0
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #3

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }

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
