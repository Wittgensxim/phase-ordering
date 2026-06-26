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

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 15625, ptr %7, align 4
  store double 1.000000e+00, ptr @TLimit, align 8
  store i32 512000000, ptr %8, align 4
  store double f0x400921FB54442D18, ptr @piref, align 8
  store double 1.000000e+00, ptr @one, align 8
  store double 2.000000e+00, ptr @two, align 8
  store double 3.000000e+00, ptr @three, align 8
  store double 4.000000e+00, ptr @four, align 8
  store double 5.000000e+00, ptr @five, align 8
  store double 1.000000e+00, ptr @scale, align 8
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store i32 156250000, ptr %10, align 4
  %16 = load double, ptr @five, align 8
  %17 = fneg double %16
  store double %17, ptr %2, align 8
  %18 = load double, ptr @one, align 8
  %19 = fneg double %18
  store double %19, ptr @sa, align 8
  store i32 1, ptr %9, align 4
  br i1 true, label %.lr.ph, label %._crit_edge4

._crit_edge4:                                     ; preds = %0
  br label %28

.lr.ph:                                           ; preds = %0
  br label %20

20:                                               ; preds = %.lr.ph, %20
  %21 = phi i32 [ 1, %.lr.ph ], [ %26, %20 ]
  %22 = phi double [ %19, %.lr.ph ], [ %25, %20 ]
  %23 = phi double [ %17, %.lr.ph ], [ %24, %20 ]
  %24 = fneg double %23
  store double %24, ptr %2, align 8
  %25 = fadd double %22, %24
  store double %25, ptr @sa, align 8
  %26 = add nsw i32 %21, 1
  store i32 %26, ptr %9, align 4
  %27 = icmp sle i32 %26, 156250000
  br i1 %27, label %20, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %20
  br label %28

28:                                               ; preds = %._crit_edge4, %._crit_edge
  %29 = phi double [ %17, %._crit_edge4 ], [ %24, %._crit_edge ]
  %30 = phi double [ %19, %._crit_edge4 ], [ %25, %._crit_edge ]
  store double 1.562500e+08, ptr @sc, align 8
  store double %30, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  store double 0.000000e+00, ptr %6, align 8
  store i32 1, ptr %9, align 4
  br i1 true, label %.lr.ph2, label %._crit_edge5

._crit_edge5:                                     ; preds = %28
  br label %49

.lr.ph2:                                          ; preds = %28
  %.pre = load double, ptr @two, align 8
  br label %31

31:                                               ; preds = %.lr.ph2, %31
  %32 = phi i32 [ 1, %.lr.ph2 ], [ %47, %31 ]
  %33 = phi double [ 0.000000e+00, %.lr.ph2 ], [ %46, %31 ]
  %34 = phi double [ 0.000000e+00, %.lr.ph2 ], [ %44, %31 ]
  %35 = phi double [ 0.000000e+00, %.lr.ph2 ], [ %43, %31 ]
  %36 = phi double [ %30, %.lr.ph2 ], [ %41, %31 ]
  %37 = phi double [ %30, %.lr.ph2 ], [ %40, %31 ]
  %38 = phi double [ %29, %.lr.ph2 ], [ %39, %31 ]
  %39 = fneg double %38
  store double %39, ptr %2, align 8
  %40 = fadd double %37, %39
  store double %40, ptr @sa, align 8
  %41 = fadd double %36, %.pre
  store double %41, ptr %3, align 8
  %42 = fsub double %39, %41
  %43 = fadd double %35, %42
  store double %43, ptr %6, align 8
  %44 = call double @llvm.fmuladd.f64(double %38, double %41, double %34)
  store double %44, ptr %4, align 8
  %45 = fdiv double %39, %41
  %46 = fadd double %33, %45
  store double %46, ptr %5, align 8
  %47 = add nsw i32 %32, 1
  store i32 %47, ptr %9, align 4
  %48 = icmp sle i32 %47, 156250000
  br i1 %48, label %31, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %31
  br label %49

49:                                               ; preds = %._crit_edge5, %._crit_edge3
  %50 = phi double [ 0.000000e+00, %._crit_edge5 ], [ %44, %._crit_edge3 ]
  %51 = phi double [ 0.000000e+00, %._crit_edge5 ], [ %46, %._crit_edge3 ]
  %52 = phi double [ 0.000000e+00, %._crit_edge5 ], [ %43, %._crit_edge3 ]
  %53 = phi double [ %30, %._crit_edge5 ], [ %40, %._crit_edge3 ]
  %54 = fmul double %53, %52
  %55 = fdiv double %54, 1.562500e+08
  %56 = fptosi double %55 to i32
  store i32 %56, ptr %10, align 4
  %57 = load double, ptr @four, align 8
  %58 = fmul double %57, %51
  %59 = fdiv double %58, %16
  store double %59, ptr @sa, align 8
  %60 = fdiv double %16, %50
  %61 = fadd double %59, %60
  store double %61, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %62 = fmul double %50, %50
  %63 = fmul double %62, %50
  %64 = fdiv double 3.125000e+01, %63
  %65 = fsub double %61, %64
  store double %65, ptr @piprg, align 8
  %66 = load double, ptr @piref, align 8
  %67 = fsub double %65, %66
  store double %67, ptr @pierr, align 8
  %68 = fmul double %67, 1.000000e-30
  %69 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %68, double noundef 0.000000e+00, double noundef 0.000000e+00)
  ret i32 0
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
