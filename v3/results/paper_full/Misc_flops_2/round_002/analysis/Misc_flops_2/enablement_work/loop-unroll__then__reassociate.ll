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

5:                                                ; preds = %16, %0
  %6 = phi double [ %4, %0 ], [ %17, %16 ]
  %.05 = phi i32 [ 1, %0 ], [ %18, %16 ]
  %.0 = phi double [ %2, %0 ], [ %.0, %16 ]
  %7 = icmp samesign ult i32 %.05, 156250001
  br i1 %7, label %8, label %19

8:                                                ; preds = %5
  %9 = fneg double %.0
  %10 = fsub double %6, %.0
  store double %10, ptr @sa, align 8
  br label %11

11:                                               ; preds = %8
  %12 = fsub double %10, %9
  store double %12, ptr @sa, align 8
  br label %13

13:                                               ; preds = %11
  %14 = fneg double %.0
  %15 = fsub double %12, %.0
  store double %15, ptr @sa, align 8
  br label %16

16:                                               ; preds = %13
  %17 = fsub double %15, %14
  store double %17, ptr @sa, align 8
  %18 = add nuw nsw i32 %.05, 4
  br label %5, !llvm.loop !7

19:                                               ; preds = %5
  %.lcssa = phi double [ %6, %5 ]
  %.0.lcssa = phi double [ %.0, %5 ]
  store double 1.562500e+08, ptr @sc, align 8
  br label %20

20:                                               ; preds = %31, %19
  %21 = phi double [ %.lcssa, %19 ], [ %32, %31 ]
  %.16 = phi i32 [ 1, %19 ], [ %37, %31 ]
  %.03 = phi double [ 0.000000e+00, %19 ], [ %36, %31 ]
  %.02 = phi double [ 0.000000e+00, %19 ], [ %34, %31 ]
  %.01 = phi double [ %.lcssa, %19 ], [ %33, %31 ]
  %.1 = phi double [ %.0.lcssa, %19 ], [ %.1, %31 ]
  %22 = icmp samesign ult i32 %.16, 156250001
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  %24 = fneg double %.1
  %25 = fsub double %21, %.1
  store double %25, ptr @sa, align 8
  %26 = load double, ptr @two, align 8
  %27 = fadd double %.01, %26
  %28 = call double @llvm.fmuladd.f64(double %.1, double %27, double %.02)
  %29 = fdiv double %.1, %27
  %30 = fsub double %.03, %29
  br label %31

31:                                               ; preds = %23
  %32 = fsub double %25, %24
  store double %32, ptr @sa, align 8
  %33 = fadd double %26, %27
  %34 = call double @llvm.fmuladd.f64(double %24, double %33, double %28)
  %35 = fdiv double %24, %33
  %36 = fsub double %30, %35
  %37 = add nuw nsw i32 %.16, 2
  br label %20, !llvm.loop !9

38:                                               ; preds = %20
  %.03.lcssa = phi double [ %.03, %20 ]
  %.02.lcssa = phi double [ %.02, %20 ]
  %39 = load double, ptr @four, align 8
  %40 = fmul double %.03.lcssa, %39
  %41 = fdiv double %40, %1
  store double %41, ptr @sa, align 8
  %42 = fdiv double %1, %.02.lcssa
  %43 = fadd double %42, %41
  store double %43, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %44 = fmul double %.02.lcssa, %.02.lcssa
  %45 = fmul double %.02.lcssa, %44
  %46 = fdiv double 3.125000e+01, %45
  %47 = fsub double %43, %46
  store double %47, ptr @piprg, align 8
  %48 = load double, ptr @piref, align 8
  %49 = fsub double %47, %48
  store double %49, ptr @pierr, align 8
  %50 = fmul double %49, 1.000000e-30
  %51 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %50, double noundef 0.000000e+00, double noundef 0.000000e+00) #4
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
