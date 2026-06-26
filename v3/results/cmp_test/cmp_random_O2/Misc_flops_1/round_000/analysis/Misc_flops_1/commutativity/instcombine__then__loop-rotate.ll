; ModuleID = 'results\cmp_test\cmp_random_O2\Misc_flops_1\Misc_flops_1.ll'
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
  store double 6.400000e+01, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
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
  store double 0.000000e+00, ptr @sa, align 8
  %11 = mul nsw i32 %9, 20000
  store i32 %11, ptr %8, align 4
  %12 = load double, ptr @one, align 8
  %13 = sitofp i32 %11 to double
  %14 = fdiv double %12, %13
  store double %14, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  store double 0.000000e+00, ptr %3, align 8
  store double %12, ptr %4, align 8
  store i32 1, ptr %7, align 4
  %15 = load i32, ptr %8, align 4
  %.not.not3 = icmp slt i32 1, %15
  br i1 %.not.not3, label %.lr.ph, label %42

.lr.ph:                                           ; preds = %0
  br label %16

16:                                               ; preds = %.lr.ph, %38
  %17 = load double, ptr %3, align 8
  %18 = load double, ptr %4, align 8
  %19 = fadd double %17, %18
  store double %19, ptr %3, align 8
  %20 = load double, ptr %5, align 8
  %21 = fmul double %19, %20
  store double %21, ptr %2, align 8
  %22 = load double, ptr %1, align 8
  %23 = load double, ptr @D1, align 8
  %24 = load double, ptr @D2, align 8
  %25 = load double, ptr @D3, align 8
  %26 = call double @llvm.fmuladd.f64(double %21, double %25, double %24)
  %27 = call double @llvm.fmuladd.f64(double %21, double %26, double %23)
  %28 = load double, ptr %4, align 8
  %29 = load double, ptr %2, align 8
  %30 = load double, ptr @D1, align 8
  %31 = load double, ptr @E2, align 8
  %32 = load double, ptr @E3, align 8
  %33 = call double @llvm.fmuladd.f64(double %29, double %32, double %31)
  %34 = call double @llvm.fmuladd.f64(double %29, double %33, double %30)
  %35 = call double @llvm.fmuladd.f64(double %29, double %34, double %28)
  %36 = fdiv double %27, %35
  %37 = fadd double %22, %36
  store double %37, ptr %1, align 8
  br label %38

38:                                               ; preds = %16
  %39 = load i32, ptr %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %7, align 4
  %41 = load i32, ptr %8, align 4
  %.not.not = icmp slt i32 %40, %41
  br i1 %.not.not, label %16, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %38
  br label %42

42:                                               ; preds = %._crit_edge, %0
  %43 = load double, ptr @D1, align 8
  %44 = load double, ptr @D2, align 8
  %45 = fadd double %43, %44
  %46 = load double, ptr @D3, align 8
  %47 = fadd double %45, %46
  %48 = load double, ptr @one, align 8
  %49 = fadd double %48, %43
  %50 = load double, ptr @E2, align 8
  %51 = fadd double %49, %50
  %52 = load double, ptr @E3, align 8
  %53 = fadd double %51, %52
  %54 = fdiv double %47, %53
  store double %54, ptr @sa, align 8
  %55 = load double, ptr @D1, align 8
  store double %55, ptr @sb, align 8
  %56 = load double, ptr %5, align 8
  %57 = fadd double %54, %55
  %58 = load double, ptr @two, align 8
  %59 = load double, ptr %1, align 8
  %60 = call double @llvm.fmuladd.f64(double %58, double %59, double %57)
  %61 = fmul double %56, %60
  %62 = fdiv double %61, %58
  store double %62, ptr @sa, align 8
  %63 = load double, ptr @one, align 8
  %64 = fdiv double %63, %62
  store double %64, ptr @sb, align 8
  %65 = fptosi double %64 to i32
  %66 = mul nsw i32 %65, 40000
  %67 = sitofp i32 %66 to double
  %68 = load double, ptr @scale, align 8
  %69 = fdiv double %67, %68
  %70 = fptosi double %69 to i32
  store i32 %70, ptr %8, align 4
  %71 = load double, ptr @sb, align 8
  %72 = fadd double %71, -2.520000e+01
  store double %72, ptr @sc, align 8
  %73 = fmul double %72, 1.000000e-30
  %74 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %73, double noundef 0.000000e+00, double noundef 0.000000e+00) #4
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
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Misc/flops-1.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
