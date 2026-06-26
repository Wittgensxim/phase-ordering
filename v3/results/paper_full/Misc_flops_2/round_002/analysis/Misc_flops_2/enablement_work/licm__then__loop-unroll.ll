; ModuleID = 'results\paper_full\Misc_flops_2\round_001\output.ll'
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
  %1 = load double, ptr @five, align 8
  %2 = fneg double %1
  %3 = load double, ptr @one, align 8
  %4 = fneg double %3
  store double %4, ptr @sa, align 8
  br label %5

5:                                                ; preds = %17, %0
  %6 = phi double [ poison, %0 ], [ %18, %17 ]
  %7 = phi double [ %4, %0 ], [ %18, %17 ]
  %.05 = phi i32 [ 1, %0 ], [ %19, %17 ]
  %.0 = phi double [ %2, %0 ], [ %.0, %17 ]
  %8 = icmp samesign ult i32 %.05, 156250001
  br i1 %8, label %9, label %20

9:                                                ; preds = %5
  %10 = fneg double %.0
  %11 = fsub double %7, %.0
  br label %12

12:                                               ; preds = %9
  %13 = fsub double %11, %10
  br label %14

14:                                               ; preds = %12
  %15 = fneg double %.0
  %16 = fsub double %13, %.0
  br label %17

17:                                               ; preds = %14
  %18 = fsub double %16, %15
  %19 = add nuw nsw i32 %.05, 4
  br label %5, !llvm.loop !7

20:                                               ; preds = %5
  %.lcssa1 = phi double [ %6, %5 ]
  %.lcssa = phi double [ %7, %5 ]
  %.0.lcssa = phi double [ %.0, %5 ]
  store double %.lcssa1, ptr @sa, align 8
  store double 1.562500e+08, ptr @sc, align 8
  %21 = load double, ptr @two, align 8
  br label %22

22:                                               ; preds = %33, %20
  %23 = phi double [ poison, %20 ], [ %34, %33 ]
  %24 = phi double [ %.lcssa, %20 ], [ %34, %33 ]
  %.16 = phi i32 [ 1, %20 ], [ %39, %33 ]
  %.03 = phi double [ 0.000000e+00, %20 ], [ %38, %33 ]
  %.02 = phi double [ 0.000000e+00, %20 ], [ %36, %33 ]
  %.01 = phi double [ %.lcssa, %20 ], [ %35, %33 ]
  %.1 = phi double [ %.0.lcssa, %20 ], [ %.1, %33 ]
  %25 = icmp samesign ult i32 %.16, 156250001
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = fneg double %.1
  %28 = fsub double %24, %.1
  %29 = fadd double %.01, %21
  %30 = call double @llvm.fmuladd.f64(double %.1, double %29, double %.02)
  %31 = fdiv double %.1, %29
  %32 = fsub double %.03, %31
  br label %33

33:                                               ; preds = %26
  %34 = fsub double %28, %27
  %35 = fadd double %29, %21
  %36 = call double @llvm.fmuladd.f64(double %27, double %35, double %30)
  %37 = fdiv double %27, %35
  %38 = fsub double %32, %37
  %39 = add nuw nsw i32 %.16, 2
  br label %22, !llvm.loop !9

40:                                               ; preds = %22
  %.lcssa2 = phi double [ %23, %22 ]
  %.03.lcssa = phi double [ %.03, %22 ]
  %.02.lcssa = phi double [ %.02, %22 ]
  store double %.lcssa2, ptr @sa, align 8
  %41 = load double, ptr @four, align 8
  %42 = fmul double %41, %.03.lcssa
  %43 = fdiv double %42, %1
  store double %43, ptr @sa, align 8
  %44 = fdiv double %1, %.02.lcssa
  %45 = fadd double %43, %44
  store double %45, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %46 = fmul double %.02.lcssa, %.02.lcssa
  %47 = fmul double %46, %.02.lcssa
  %48 = fdiv double 3.125000e+01, %47
  %49 = fsub double %45, %48
  store double %49, ptr @piprg, align 8
  %50 = load double, ptr @piref, align 8
  %51 = fsub double %49, %50
  store double %51, ptr @pierr, align 8
  %52 = fmul double %51, 1.000000e-30
  %53 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %52, double noundef 0.000000e+00, double noundef 0.000000e+00) #4
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
