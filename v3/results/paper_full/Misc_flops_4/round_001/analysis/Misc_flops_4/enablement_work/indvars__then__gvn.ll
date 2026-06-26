; ModuleID = 'results\paper_full\Misc_flops_4\round_000\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Misc/flops-4.c"
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
@.str.4 = private unnamed_addr constant [36 x i8] c"     4   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
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
  %1 = load double, ptr @A3, align 8
  %2 = fneg double %1
  store double %2, ptr @A3, align 8
  %3 = load double, ptr @A5, align 8
  %4 = fneg double %3
  store double %4, ptr @A5, align 8
  %5 = load double, ptr @piref, align 8
  %6 = load double, ptr @three, align 8
  %7 = fmul double %6, 1.562500e+08
  %8 = fdiv double %5, %7
  br label %9

9:                                                ; preds = %12, %0
  %10 = phi double [ %29, %12 ], [ 0.000000e+00, %0 ]
  %11 = phi i32 [ %30, %12 ], [ 1, %0 ]
  %exitcond = icmp ne i32 %11, 156250000
  br i1 %exitcond, label %12, label %31

12:                                               ; preds = %9
  %13 = uitofp nneg i32 %11 to double
  %14 = fmul double %8, %13
  %15 = fmul double %14, %14
  %16 = load double, ptr @B6, align 8
  %17 = load double, ptr @B5, align 8
  %18 = call double @llvm.fmuladd.f64(double %16, double %15, double %17)
  %19 = load double, ptr @B4, align 8
  %20 = call double @llvm.fmuladd.f64(double %15, double %18, double %19)
  %21 = load double, ptr @B3, align 8
  %22 = call double @llvm.fmuladd.f64(double %15, double %20, double %21)
  %23 = load double, ptr @B2, align 8
  %24 = call double @llvm.fmuladd.f64(double %15, double %22, double %23)
  %25 = load double, ptr @B1, align 8
  %26 = call double @llvm.fmuladd.f64(double %15, double %24, double %25)
  %27 = call double @llvm.fmuladd.f64(double %15, double %26, double %10)
  %28 = load double, ptr @one, align 8
  %29 = fadd double %27, %28
  %30 = add nuw nsw i32 %11, 1
  br label %9, !llvm.loop !7

31:                                               ; preds = %9
  %32 = fdiv double %5, %6
  %33 = fmul double %32, %32
  %34 = load double, ptr @B6, align 8
  %35 = load double, ptr @B5, align 8
  %36 = call double @llvm.fmuladd.f64(double %34, double %33, double %35)
  %37 = load double, ptr @B4, align 8
  %38 = call double @llvm.fmuladd.f64(double %33, double %36, double %37)
  %39 = load double, ptr @B3, align 8
  %40 = call double @llvm.fmuladd.f64(double %33, double %38, double %39)
  %41 = load double, ptr @B2, align 8
  %42 = call double @llvm.fmuladd.f64(double %33, double %40, double %41)
  %43 = load double, ptr @B1, align 8
  %44 = call double @llvm.fmuladd.f64(double %33, double %42, double %43)
  %45 = load double, ptr @one, align 8
  %46 = call double @llvm.fmuladd.f64(double %33, double %44, double %45)
  store double %46, ptr @sa, align 8
  %47 = fadd double %46, %45
  %48 = load double, ptr @two, align 8
  %49 = call double @llvm.fmuladd.f64(double %48, double %10, double %47)
  %50 = fmul double %8, %49
  %51 = fdiv double %50, %48
  store double %51, ptr @sa, align 8
  %52 = load double, ptr @A6, align 8
  %53 = call double @llvm.fmuladd.f64(double %52, double %33, double %4)
  %54 = load double, ptr @A4, align 8
  %55 = call double @llvm.fmuladd.f64(double %53, double %33, double %54)
  %56 = call double @llvm.fmuladd.f64(double %55, double %33, double %2)
  %57 = load double, ptr @A2, align 8
  %58 = call double @llvm.fmuladd.f64(double %56, double %33, double %57)
  %59 = load double, ptr @A1, align 8
  %60 = call double @llvm.fmuladd.f64(double %58, double %33, double %59)
  %61 = load double, ptr @A0, align 8
  %62 = call double @llvm.fmuladd.f64(double %60, double %33, double %61)
  %63 = fmul double %32, %62
  store double %63, ptr @sb, align 8
  %64 = fsub double %51, %63
  store double %64, ptr @sc, align 8
  %65 = fmul double %64, 1.000000e-30
  %66 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %65, double noundef 0.000000e+00, double noundef 0.000000e+00) #4
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
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Misc/flops-4.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
