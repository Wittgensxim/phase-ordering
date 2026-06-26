; ModuleID = 'results\paper_v4\Misc_flops_5\round_000\output.ll'
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
  %putchar = call i32 @putchar(i32 10)
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
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
  %1 = load double, ptr @piref, align 8
  %2 = load double, ptr @three, align 8
  %3 = fmul double %2, 1.562500e+08
  %4 = fdiv double %1, %3
  %5 = load double, ptr @A6, align 8
  %6 = load double, ptr @A5, align 8
  %7 = load double, ptr @A4, align 8
  %8 = load double, ptr @A3, align 8
  %9 = load double, ptr @A2, align 8
  %10 = load double, ptr @A1, align 8
  %11 = load double, ptr @one, align 8
  %12 = load double, ptr @B6, align 8
  %13 = load double, ptr @B5, align 8
  %14 = load double, ptr @B4, align 8
  %15 = load double, ptr @B3, align 8
  %16 = load double, ptr @B2, align 8
  %17 = load double, ptr @B1, align 8
  br label %18

18:                                               ; preds = %0, %18
  %19 = phi i32 [ 1, %0 ], [ %39, %18 ]
  %20 = phi double [ 0.000000e+00, %0 ], [ %38, %18 ]
  %21 = uitofp nneg i32 %19 to double
  %22 = fmul double %4, %21
  %23 = fmul double %22, %22
  %24 = call double @llvm.fmuladd.f64(double %5, double %23, double %6)
  %25 = call double @llvm.fmuladd.f64(double %24, double %23, double %7)
  %26 = call double @llvm.fmuladd.f64(double %25, double %23, double %8)
  %27 = call double @llvm.fmuladd.f64(double %26, double %23, double %9)
  %28 = call double @llvm.fmuladd.f64(double %27, double %23, double %10)
  %29 = call double @llvm.fmuladd.f64(double %28, double %23, double %11)
  %30 = fmul double %22, %29
  %31 = call double @llvm.fmuladd.f64(double %12, double %23, double %13)
  %32 = call double @llvm.fmuladd.f64(double %23, double %31, double %14)
  %33 = call double @llvm.fmuladd.f64(double %23, double %32, double %15)
  %34 = call double @llvm.fmuladd.f64(double %23, double %33, double %16)
  %35 = call double @llvm.fmuladd.f64(double %23, double %34, double %17)
  %36 = call double @llvm.fmuladd.f64(double %23, double %35, double %11)
  %37 = fdiv double %30, %36
  %38 = fadd double %20, %37
  %39 = add nuw nsw i32 %19, 1
  %40 = icmp samesign ult i32 %39, 156250000
  br i1 %40, label %18, label %41, !llvm.loop !7

41:                                               ; preds = %18
  %.lcssa = phi double [ %38, %18 ]
  %42 = fdiv double %1, %2
  %43 = fmul double %42, %42
  %44 = load double, ptr @A6, align 8
  %45 = load double, ptr @A5, align 8
  %46 = call double @llvm.fmuladd.f64(double %44, double %43, double %45)
  %47 = load double, ptr @A4, align 8
  %48 = call double @llvm.fmuladd.f64(double %46, double %43, double %47)
  %49 = load double, ptr @A3, align 8
  %50 = call double @llvm.fmuladd.f64(double %48, double %43, double %49)
  %51 = load double, ptr @A2, align 8
  %52 = call double @llvm.fmuladd.f64(double %50, double %43, double %51)
  %53 = load double, ptr @A1, align 8
  %54 = call double @llvm.fmuladd.f64(double %52, double %43, double %53)
  %55 = load double, ptr @one, align 8
  %56 = call double @llvm.fmuladd.f64(double %54, double %43, double %55)
  %57 = fmul double %42, %56
  store double %57, ptr @sa, align 8
  %58 = load double, ptr @B6, align 8
  %59 = load double, ptr @B5, align 8
  %60 = call double @llvm.fmuladd.f64(double %58, double %43, double %59)
  %61 = load double, ptr @B4, align 8
  %62 = call double @llvm.fmuladd.f64(double %43, double %60, double %61)
  %63 = load double, ptr @B3, align 8
  %64 = call double @llvm.fmuladd.f64(double %43, double %62, double %63)
  %65 = load double, ptr @B2, align 8
  %66 = call double @llvm.fmuladd.f64(double %43, double %64, double %65)
  %67 = load double, ptr @B1, align 8
  %68 = call double @llvm.fmuladd.f64(double %43, double %66, double %67)
  %69 = call double @llvm.fmuladd.f64(double %43, double %68, double %55)
  store double %69, ptr @sb, align 8
  %70 = fdiv double %57, %69
  store double %70, ptr @sa, align 8
  %71 = load double, ptr @two, align 8
  %72 = call double @llvm.fmuladd.f64(double %71, double %.lcssa, double %70)
  %73 = fmul double %4, %72
  %74 = fdiv double %73, %71
  store double %74, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %75 = fadd double %74, f0xBFE62E42FEFA39EF
  store double %75, ptr @sc, align 8
  %76 = fmul double %75, 1.000000e-30
  %77 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %76, double noundef 0.000000e+00, double noundef 0.000000e+00) #4
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
