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

14:                                               ; preds = %16, %0
  %storemerge = phi i32 [ 1, %0 ], [ %37, %16 ]
  store i32 %storemerge, ptr %7, align 4
  %15 = load i32, ptr %8, align 4
  %.not.not = icmp slt i32 %storemerge, %15
  br i1 %.not.not, label %16, label %38

16:                                               ; preds = %14
  %17 = load i32, ptr %7, align 4
  %18 = sitofp i32 %17 to double
  %19 = load double, ptr %3, align 8
  %20 = fmul double %19, %18
  store double %20, ptr %5, align 8
  %21 = fmul double %20, %20
  store double %21, ptr %2, align 8
  %22 = load double, ptr %1, align 8
  %23 = load double, ptr %4, align 8
  %24 = fadd double %20, %23
  %25 = fdiv double %23, %24
  %26 = fsub double %22, %25
  %27 = load double, ptr %5, align 8
  %28 = load double, ptr %2, align 8
  %29 = fadd double %28, %23
  %30 = fdiv double %27, %29
  %31 = fsub double %26, %30
  %32 = load double, ptr %4, align 8
  %33 = call double @llvm.fmuladd.f64(double %27, double %28, double %32)
  %34 = fdiv double %28, %33
  %35 = fsub double %31, %34
  store double %35, ptr %1, align 8
  %36 = load i32, ptr %7, align 4
  %37 = add nsw i32 %36, 1
  br label %14, !llvm.loop !7

38:                                               ; preds = %14
  %39 = load double, ptr @sa, align 8
  store double %39, ptr %5, align 8
  %40 = fmul double %39, %39
  store double %40, ptr %2, align 8
  %41 = load double, ptr %4, align 8
  %42 = fneg double %41
  %43 = fadd double %39, %41
  %44 = fdiv double %41, %43
  %45 = fsub double %42, %44
  %46 = load double, ptr %5, align 8
  %47 = load double, ptr %2, align 8
  %48 = load double, ptr %4, align 8
  %49 = fadd double %47, %48
  %50 = fdiv double %46, %49
  %51 = fsub double %45, %50
  %52 = call double @llvm.fmuladd.f64(double %46, double %47, double %48)
  %53 = fdiv double %47, %52
  %54 = fsub double %51, %53
  store double %54, ptr @sa, align 8
  %55 = load double, ptr %3, align 8
  %56 = fmul double %55, 1.800000e+01
  %57 = load double, ptr @two, align 8
  %58 = load double, ptr %1, align 8
  %59 = call double @llvm.fmuladd.f64(double %57, double %58, double %54)
  %60 = fmul double %56, %59
  store double %60, ptr @sa, align 8
  %61 = fptosi double %60 to i32
  %62 = mul nsw i32 %61, -2000
  store i32 %62, ptr %8, align 4
  %63 = sitofp i32 %62 to double
  %64 = load double, ptr @scale, align 8
  %65 = fdiv double %63, %64
  %66 = fptosi double %65 to i32
  store i32 %66, ptr %8, align 4
  %67 = load double, ptr @sa, align 8
  %68 = fadd double %67, 5.002000e+02
  store double %68, ptr @sc, align 8
  %69 = fmul double %68, 1.000000e-30
  %70 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %69, double noundef 0.000000e+00, double noundef 0.000000e+00) #4
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
