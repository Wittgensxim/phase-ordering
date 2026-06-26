; ModuleID = 'results\paper_full\Misc_flops_2\Misc_flops_2.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Misc/flops-2.c"
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
@sb = dso_local global double 0.000000e+00, align 8
@piprg = dso_local global double 0.000000e+00, align 8
@pierr = dso_local global double 0.000000e+00, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"     2   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@nulltime = dso_local global double 0.000000e+00, align 8
@TimeArray = dso_local global [3 x double] zeroinitializer, align 16
@T = dso_local global [36 x double] zeroinitializer, align 16
@sd = dso_local global double 0.000000e+00, align 8
@str = private unnamed_addr constant [57 x i8] c"   FLOPS C Program (Double Precision), V2.0 18 Dec 1992\0A\00", align 1
@str.1 = private unnamed_addr constant [47 x i8] c"   Module     Error        RunTime      MFLOPS\00", align 1
@str.2 = private unnamed_addr constant [35 x i8] c"                            (usec)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %putchar = call i32 @putchar(i32 10)
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  store i32 15625, ptr %5, align 4
  store double 1.000000e+00, ptr @TLimit, align 8
  store double f0x400921FB54442D18, ptr @piref, align 8
  store double 1.000000e+00, ptr @one, align 8
  store double 2.000000e+00, ptr @two, align 8
  store double 3.000000e+00, ptr @three, align 8
  store double 4.000000e+00, ptr @four, align 8
  store double 5.000000e+00, ptr @five, align 8
  store double 1.000000e+00, ptr @scale, align 8
  %puts16 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  %7 = load i32, ptr %5, align 4
  %8 = mul nsw i32 %7, 10000
  store i32 %8, ptr %6, align 4
  %9 = load double, ptr @five, align 8
  %10 = fneg double %9
  store double %10, ptr %1, align 8
  %11 = load double, ptr @one, align 8
  %12 = fneg double %11
  store double %12, ptr @sa, align 8
  %13 = load i32, ptr %6, align 4
  br label %14

14:                                               ; preds = %20, %0
  %15 = phi double [ %19, %20 ], [ %12, %0 ]
  %16 = phi double [ %21, %20 ], [ %10, %0 ]
  %17 = phi i32 [ %22, %20 ], [ 1, %0 ]
  %.not = icmp sgt i32 %17, %13
  br i1 %.not, label %23, label %18

18:                                               ; preds = %14
  %19 = fsub double %15, %16
  store double %19, ptr @sa, align 8
  br label %20

20:                                               ; preds = %18
  %21 = fneg double %16
  %22 = add nuw nsw i32 %17, 1
  br label %14, !llvm.loop !7

23:                                               ; preds = %14
  store double %16, ptr %1, align 8
  %24 = load i32, ptr %6, align 4
  %25 = sitofp i32 %24 to double
  store double %25, ptr @sc, align 8
  %26 = load double, ptr @sa, align 8
  store double %26, ptr %2, align 8
  store double 0.000000e+00, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  %27 = load i32, ptr %6, align 4
  %28 = load double, ptr @two, align 8
  %.promoted5 = load double, ptr %1, align 8
  %sa.promoted7 = load double, ptr @sa, align 8
  %.promoted8 = load double, ptr %2, align 8
  %.promoted12 = load double, ptr %3, align 8
  %.promoted14 = load double, ptr %4, align 8
  br label %29

29:                                               ; preds = %39, %23
  %30 = phi double [ %43, %39 ], [ %.promoted14, %23 ]
  %31 = phi double [ %44, %39 ], [ %.promoted12, %23 ]
  %32 = phi double [ %46, %39 ], [ 0.000000e+00, %23 ]
  %33 = phi double [ %40, %39 ], [ %.promoted8, %23 ]
  %34 = phi double [ %38, %39 ], [ %sa.promoted7, %23 ]
  %35 = phi double [ %41, %39 ], [ %.promoted5, %23 ]
  %36 = phi i32 [ %47, %39 ], [ 1, %23 ]
  %.not18 = icmp sgt i32 %36, %27
  br i1 %.not18, label %48, label %37

37:                                               ; preds = %29
  %38 = fsub double %34, %35
  store double %38, ptr @sa, align 8
  br label %39

39:                                               ; preds = %37
  %40 = fadd double %33, %28
  %41 = fneg double %35
  %42 = fdiv double %35, %40
  %43 = fsub double %30, %42
  %44 = call double @llvm.fmuladd.f64(double %35, double %40, double %31)
  %45 = fsub double %41, %40
  %46 = fadd double %32, %45
  %47 = add nuw nsw i32 %36, 1
  br label %29, !llvm.loop !9

48:                                               ; preds = %29
  store double %35, ptr %1, align 8
  store double %33, ptr %2, align 8
  store double %31, ptr %3, align 8
  store double %30, ptr %4, align 8
  %49 = load double, ptr @sa, align 8
  %50 = fmul double %49, %32
  %51 = load double, ptr @sc, align 8
  %52 = fdiv double %50, %51
  %53 = fptosi double %52 to i32
  store i32 %53, ptr %6, align 4
  %54 = load double, ptr @four, align 8
  %55 = load double, ptr %4, align 8
  %56 = fmul double %54, %55
  %57 = load double, ptr @five, align 8
  %58 = fdiv double %56, %57
  store double %58, ptr @sa, align 8
  %59 = load double, ptr %3, align 8
  %60 = fdiv double %57, %59
  %61 = fadd double %58, %60
  store double %61, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %62 = fmul double %59, %59
  %63 = fmul double %62, %59
  %64 = fdiv double 3.125000e+01, %63
  %65 = fsub double %61, %64
  store double %65, ptr @piprg, align 8
  %66 = load double, ptr @piref, align 8
  %67 = fsub double %65, %66
  store double %67, ptr @pierr, align 8
  %68 = fmul double %67, 1.000000e-30
  %69 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %68, double noundef 0.000000e+00, double noundef 0.000000e+00) #4
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
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Misc/flops-2.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
