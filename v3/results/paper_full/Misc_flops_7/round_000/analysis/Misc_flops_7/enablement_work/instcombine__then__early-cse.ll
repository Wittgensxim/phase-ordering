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
  %puts1 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  %9 = load i32, ptr %6, align 4
  %10 = mul nsw i32 %9, 10000
  store i32 %10, ptr %8, align 4
  store double 0.000000e+00, ptr %1, align 8
  %11 = load double, ptr @one, align 8
  store double %11, ptr %4, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %12 = sitofp i32 %10 to double
  %13 = fdiv double f0x40599541F7F192A4, %12
  store double %13, ptr %3, align 8
  br label %14

14:                                               ; preds = %33, %0
  %storemerge = phi i32 [ 1, %0 ], [ %35, %33 ]
  store i32 %storemerge, ptr %7, align 4
  %15 = load i32, ptr %8, align 4
  %.not.not = icmp slt i32 %storemerge, %15
  br i1 %.not.not, label %16, label %36

16:                                               ; preds = %14
  %17 = sitofp i32 %storemerge to double
  %18 = load double, ptr %3, align 8
  %19 = fmul double %18, %17
  store double %19, ptr %5, align 8
  %20 = fmul double %19, %19
  store double %20, ptr %2, align 8
  %21 = load double, ptr %1, align 8
  %22 = load double, ptr %4, align 8
  %23 = fadd double %19, %22
  %24 = fdiv double %22, %23
  %25 = fsub double %21, %24
  %26 = load double, ptr %5, align 8
  %27 = fadd double %20, %22
  %28 = fdiv double %26, %27
  %29 = fsub double %25, %28
  %30 = call double @llvm.fmuladd.f64(double %26, double %20, double %22)
  %31 = fdiv double %20, %30
  %32 = fsub double %29, %31
  store double %32, ptr %1, align 8
  br label %33

33:                                               ; preds = %16
  %34 = load i32, ptr %7, align 4
  %35 = add nsw i32 %34, 1
  br label %14, !llvm.loop !7

36:                                               ; preds = %14
  %37 = load double, ptr @sa, align 8
  store double %37, ptr %5, align 8
  %38 = fmul double %37, %37
  store double %38, ptr %2, align 8
  %39 = load double, ptr %4, align 8
  %40 = fneg double %39
  %41 = fadd double %37, %39
  %42 = fdiv double %39, %41
  %43 = fsub double %40, %42
  %44 = load double, ptr %5, align 8
  %45 = fadd double %38, %39
  %46 = fdiv double %44, %45
  %47 = fsub double %43, %46
  %48 = call double @llvm.fmuladd.f64(double %44, double %38, double %39)
  %49 = fdiv double %38, %48
  %50 = fsub double %47, %49
  store double %50, ptr @sa, align 8
  %51 = load double, ptr %3, align 8
  %52 = fmul double %51, 1.800000e+01
  %53 = load double, ptr @two, align 8
  %54 = load double, ptr %1, align 8
  %55 = call double @llvm.fmuladd.f64(double %53, double %54, double %50)
  %56 = fmul double %52, %55
  store double %56, ptr @sa, align 8
  %57 = fptosi double %56 to i32
  %58 = mul nsw i32 %57, -2000
  store i32 %58, ptr %8, align 4
  %59 = sitofp i32 %58 to double
  %60 = load double, ptr @scale, align 8
  %61 = fdiv double %59, %60
  %62 = fptosi double %61 to i32
  store i32 %62, ptr %8, align 4
  %63 = load double, ptr @sa, align 8
  %64 = fadd double %63, 5.002000e+02
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
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Misc/flops-7.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
