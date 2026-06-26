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
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %putchar = call i32 @putchar(i32 10)
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  store i32 15625, ptr %4, align 4
  store double 1.000000e+00, ptr @TLimit, align 8
  store double f0x400921FB54442D18, ptr @piref, align 8
  store double 1.000000e+00, ptr @one, align 8
  store double 2.000000e+00, ptr @two, align 8
  store double 3.000000e+00, ptr @three, align 8
  store double 4.000000e+00, ptr @four, align 8
  store double 5.000000e+00, ptr @five, align 8
  store double 1.000000e+00, ptr @scale, align 8
  %puts1 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  %7 = load i32, ptr %4, align 4
  %8 = mul nsw i32 %7, 10000
  store i32 %8, ptr %6, align 4
  %9 = load double, ptr @piref, align 8
  %10 = load double, ptr @three, align 8
  %11 = sitofp i32 %8 to double
  %12 = fmul double %10, %11
  %13 = fdiv double %9, %12
  store double %13, ptr %3, align 8
  store double 0.000000e+00, ptr %1, align 8
  br label %14

14:                                               ; preds = %50, %0
  %storemerge = phi i32 [ 1, %0 ], [ %52, %50 ]
  store i32 %storemerge, ptr %5, align 4
  %15 = load i32, ptr %6, align 4
  %.not.not = icmp slt i32 %storemerge, %15
  br i1 %.not.not, label %16, label %53

16:                                               ; preds = %14
  %17 = sitofp i32 %storemerge to double
  %18 = load double, ptr %3, align 8
  %19 = fmul double %18, %17
  %20 = fmul double %19, %19
  store double %20, ptr %2, align 8
  %21 = load double, ptr @A6, align 8
  %22 = load double, ptr @A5, align 8
  %23 = call double @llvm.fmuladd.f64(double %21, double %20, double %22)
  %24 = load double, ptr @A4, align 8
  %25 = call double @llvm.fmuladd.f64(double %23, double %20, double %24)
  %26 = load double, ptr @A3, align 8
  %27 = call double @llvm.fmuladd.f64(double %25, double %20, double %26)
  %28 = load double, ptr @A2, align 8
  %29 = call double @llvm.fmuladd.f64(double %27, double %20, double %28)
  %30 = load double, ptr @A1, align 8
  %31 = call double @llvm.fmuladd.f64(double %29, double %20, double %30)
  %32 = load double, ptr @one, align 8
  %33 = call double @llvm.fmuladd.f64(double %31, double %20, double %32)
  %34 = fmul double %19, %33
  %35 = load double, ptr %1, align 8
  %36 = load double, ptr @B6, align 8
  %37 = load double, ptr @B5, align 8
  %38 = call double @llvm.fmuladd.f64(double %36, double %20, double %37)
  %39 = load double, ptr @B4, align 8
  %40 = call double @llvm.fmuladd.f64(double %20, double %38, double %39)
  %41 = load double, ptr @B3, align 8
  %42 = call double @llvm.fmuladd.f64(double %20, double %40, double %41)
  %43 = load double, ptr @B2, align 8
  %44 = call double @llvm.fmuladd.f64(double %20, double %42, double %43)
  %45 = load double, ptr @B1, align 8
  %46 = call double @llvm.fmuladd.f64(double %20, double %44, double %45)
  %47 = call double @llvm.fmuladd.f64(double %20, double %46, double %32)
  %48 = fdiv double %34, %47
  %49 = fadd double %35, %48
  store double %49, ptr %1, align 8
  br label %50

50:                                               ; preds = %16
  %51 = load i32, ptr %5, align 4
  %52 = add nsw i32 %51, 1
  br label %14, !llvm.loop !7

53:                                               ; preds = %14
  %54 = load double, ptr @piref, align 8
  %55 = load double, ptr @three, align 8
  %56 = fdiv double %54, %55
  %57 = fmul double %56, %56
  store double %57, ptr %2, align 8
  %58 = load double, ptr @A6, align 8
  %59 = load double, ptr @A5, align 8
  %60 = call double @llvm.fmuladd.f64(double %58, double %57, double %59)
  %61 = load double, ptr @A4, align 8
  %62 = call double @llvm.fmuladd.f64(double %60, double %57, double %61)
  %63 = load double, ptr @A3, align 8
  %64 = call double @llvm.fmuladd.f64(double %62, double %57, double %63)
  %65 = load double, ptr @A2, align 8
  %66 = call double @llvm.fmuladd.f64(double %64, double %57, double %65)
  %67 = load double, ptr @A1, align 8
  %68 = call double @llvm.fmuladd.f64(double %66, double %57, double %67)
  %69 = load double, ptr @one, align 8
  %70 = call double @llvm.fmuladd.f64(double %68, double %57, double %69)
  %71 = fmul double %56, %70
  store double %71, ptr @sa, align 8
  %72 = load double, ptr %2, align 8
  %73 = load double, ptr @B6, align 8
  %74 = load double, ptr @B5, align 8
  %75 = call double @llvm.fmuladd.f64(double %73, double %72, double %74)
  %76 = load double, ptr @B4, align 8
  %77 = call double @llvm.fmuladd.f64(double %72, double %75, double %76)
  %78 = load double, ptr @B3, align 8
  %79 = call double @llvm.fmuladd.f64(double %72, double %77, double %78)
  %80 = load double, ptr @B2, align 8
  %81 = call double @llvm.fmuladd.f64(double %72, double %79, double %80)
  %82 = load double, ptr @B1, align 8
  %83 = call double @llvm.fmuladd.f64(double %72, double %81, double %82)
  %84 = load double, ptr @one, align 8
  %85 = call double @llvm.fmuladd.f64(double %72, double %83, double %84)
  store double %85, ptr @sb, align 8
  %86 = load double, ptr @sa, align 8
  %87 = fdiv double %86, %85
  store double %87, ptr @sa, align 8
  %88 = load double, ptr %3, align 8
  %89 = load double, ptr @two, align 8
  %90 = load double, ptr %1, align 8
  %91 = call double @llvm.fmuladd.f64(double %89, double %90, double %87)
  %92 = fmul double %88, %91
  %93 = fdiv double %92, %89
  store double %93, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %94 = fadd double %93, f0xBFE62E42FEFA39EF
  store double %94, ptr @sc, align 8
  %95 = fmul double %94, 1.000000e-30
  %96 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %95, double noundef 0.000000e+00, double noundef 0.000000e+00) #4
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
