; ModuleID = 'results\paper_full\Misc_flops_2\round_002\output.ll'
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

5:                                                ; preds = %5, %0
  %.04 = phi double [ %2, %0 ], [ %14, %5 ]
  %.051 = phi i32 [ 1, %0 ], [ %16, %5 ]
  %6 = phi double [ %4, %0 ], [ %15, %5 ]
  %7 = fneg double %.04
  %8 = fsub double %6, %.04
  store double %8, ptr @sa, align 8
  %9 = fsub double %8, %7
  store double %9, ptr @sa, align 8
  %10 = fneg double %.04
  %11 = fsub double %9, %.04
  store double %11, ptr @sa, align 8
  %12 = fsub double %11, %10
  store double %12, ptr @sa, align 8
  %13 = add nuw nsw i32 %.051, 4
  %14 = fneg double %.04
  %15 = fsub double %12, %.04
  store double %15, ptr @sa, align 8
  %16 = add nuw nsw i32 %.051, 5
  %17 = icmp samesign ult i32 %13, 156250000
  br i1 %17, label %5, label %18, !llvm.loop !7

18:                                               ; preds = %5
  %.lcssa3 = phi double [ %14, %5 ]
  %.lcssa2 = phi double [ %15, %5 ]
  store double 1.562500e+08, ptr @sc, align 8
  br label %19

19:                                               ; preds = %19, %18
  %.19 = phi double [ %.lcssa3, %18 ], [ %.19, %19 ]
  %.018 = phi double [ %.lcssa2, %18 ], [ %30, %19 ]
  %.027 = phi double [ 0.000000e+00, %18 ], [ %31, %19 ]
  %.036 = phi double [ 0.000000e+00, %18 ], [ %33, %19 ]
  %.165 = phi i32 [ 1, %18 ], [ %34, %19 ]
  %20 = phi double [ %.lcssa2, %18 ], [ %29, %19 ]
  %21 = fneg double %.19
  %22 = fsub double %20, %.19
  store double %22, ptr @sa, align 8
  %23 = load double, ptr @two, align 8
  %24 = fadd double %.018, %23
  %25 = call double @llvm.fmuladd.f64(double %.19, double %24, double %.027)
  %26 = fdiv double %.19, %24
  %27 = fsub double %.036, %26
  %28 = add nuw nsw i32 %.165, 1
  %29 = fsub double %22, %21
  store double %29, ptr @sa, align 8
  %30 = fadd double %24, %23
  %31 = call double @llvm.fmuladd.f64(double %21, double %30, double %25)
  %32 = fdiv double %21, %30
  %33 = fsub double %27, %32
  %34 = add nuw nsw i32 %.165, 2
  %35 = icmp samesign ult i32 %28, 156250000
  br i1 %35, label %19, label %36, !llvm.loop !9

36:                                               ; preds = %19
  %.lcssa1 = phi double [ %31, %19 ]
  %.lcssa = phi double [ %33, %19 ]
  %37 = load double, ptr @four, align 8
  %38 = fmul double %37, %.lcssa
  %39 = fdiv double %38, %1
  store double %39, ptr @sa, align 8
  %40 = fdiv double %1, %.lcssa1
  %41 = fadd double %39, %40
  store double %41, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %42 = fmul double %.lcssa1, %.lcssa1
  %43 = fmul double %42, %.lcssa1
  %44 = fdiv double 3.125000e+01, %43
  %45 = fsub double %41, %44
  store double %45, ptr @piprg, align 8
  %46 = load double, ptr @piref, align 8
  %47 = fsub double %45, %46
  store double %47, ptr @pierr, align 8
  %48 = fmul double %47, 1.000000e-30
  %49 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %48, double noundef 0.000000e+00, double noundef 0.000000e+00) #4
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
