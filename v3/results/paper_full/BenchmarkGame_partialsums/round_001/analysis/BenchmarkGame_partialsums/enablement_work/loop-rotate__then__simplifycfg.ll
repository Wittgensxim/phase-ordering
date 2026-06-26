; ModuleID = 'results\paper_full\BenchmarkGame_partialsums\round_000\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/partialsums.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [9 x i8] c"%.9f\09%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"(2/3)^k\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"k^-0.5\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"1/k(k+1)\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Flint Hills\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Cookson Hills\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Harmonic\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Riemann Zeta\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Alternating Harmonic\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Gregory\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local <2 x double> @make_vec(double noundef %0, double noundef %1) #0 {
  %.0.vec.insert = insertelement <2 x double> undef, double %0, i32 0
  %.8.vec.insert = insertelement <2 x double> %.0.vec.insert, double %1, i32 1
  ret <2 x double> %.8.vec.insert
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @sum_vec(<2 x double> noundef %0) #0 {
  %.0.vec.extract = extractelement <2 x double> %0, i32 0
  %.8.vec.extract = extractelement <2 x double> %0, i32 1
  %2 = fadd double %.0.vec.extract, %.8.vec.extract
  ret double %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = call <2 x double> @make_vec(double noundef 0.000000e+00, double noundef 0.000000e+00)
  %4 = call <2 x double> @make_vec(double noundef 1.000000e+00, double noundef 1.000000e+00)
  %5 = call <2 x double> @make_vec(double noundef 2.000000e+00, double noundef 2.000000e+00)
  %6 = call <2 x double> @make_vec(double noundef -1.000000e+00, double noundef -1.000000e+00)
  %7 = call <2 x double> @make_vec(double noundef 1.000000e+00, double noundef 2.000000e+00)
  %8 = call <2 x double> @make_vec(double noundef 1.000000e+00, double noundef -1.000000e+00)
  br label %9

9:                                                ; preds = %2, %9
  %.05 = phi double [ 0.000000e+00, %2 ], [ %12, %9 ]
  %.0544 = phi double [ 0.000000e+00, %2 ], [ %15, %9 ]
  %.0553 = phi double [ 0.000000e+00, %2 ], [ %23, %9 ]
  %.0562 = phi double [ 0.000000e+00, %2 ], [ %27, %9 ]
  %.0571 = phi double [ 1.000000e+00, %2 ], [ %28, %9 ]
  %10 = fsub double %.0571, 1.000000e+00
  %11 = call double @pow(double noundef f0x3FE5555555555555, double noundef %10) #4
  %12 = fadd double %.05, %11
  %13 = call double @sqrt(double noundef %.0571) #4
  %14 = fdiv double 1.000000e+00, %13
  %15 = fadd double %.0544, %14
  %16 = fmul double %.0571, %.0571
  %17 = fmul double %16, %.0571
  %18 = call double @sin(double noundef %.0571) #4
  %19 = call double @cos(double noundef %.0571) #4
  %20 = fmul double %17, %18
  %21 = fmul double %20, %18
  %22 = fdiv double 1.000000e+00, %21
  %23 = fadd double %.0553, %22
  %24 = fmul double %17, %19
  %25 = fmul double %24, %19
  %26 = fdiv double 1.000000e+00, %25
  %27 = fadd double %.0562, %26
  %28 = fadd double %.0571, 1.000000e+00
  %29 = fcmp ole double %28, 2.500000e+06
  br i1 %29, label %9, label %30, !llvm.loop !7

30:                                               ; preds = %9
  %.056.lcssa = phi double [ %27, %9 ]
  %.055.lcssa = phi double [ %23, %9 ]
  %.054.lcssa = phi double [ %15, %9 ]
  %.0.lcssa = phi double [ %12, %9 ]
  %.0.vec.extract6 = extractelement <2 x double> %7, i32 0
  %31 = fcmp ole double %.0.vec.extract6, 2.500000e+06
  br i1 %31, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %30, %.lr.ph
  %.05812 = phi <2 x double> [ %37, %.lr.ph ], [ %3, %30 ]
  %.05911 = phi <2 x double> [ %47, %.lr.ph ], [ %7, %30 ]
  %.06010 = phi <2 x double> [ %40, %.lr.ph ], [ %3, %30 ]
  %.0619 = phi <2 x double> [ %35, %.lr.ph ], [ %3, %30 ]
  %.0628 = phi <2 x double> [ %42, %.lr.ph ], [ %3, %30 ]
  %.0637 = phi <2 x double> [ %46, %.lr.ph ], [ %3, %30 ]
  %32 = fadd <2 x double> %.05911, %4
  %33 = fmul <2 x double> %.05911, %32
  %34 = fdiv <2 x double> %4, %33
  %35 = fadd <2 x double> %.0619, %34
  %36 = fdiv <2 x double> %4, %.05911
  %37 = fadd <2 x double> %.05812, %36
  %38 = fmul <2 x double> %.05911, %.05911
  %39 = fdiv <2 x double> %4, %38
  %40 = fadd <2 x double> %.06010, %39
  %41 = fdiv <2 x double> %8, %.05911
  %42 = fadd <2 x double> %.0628, %41
  %43 = fneg <2 x double> %4
  %44 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %5, <2 x double> %.05911, <2 x double> %43)
  %45 = fdiv <2 x double> %8, %44
  %46 = fadd <2 x double> %.0637, %45
  %47 = fadd <2 x double> %.05911, %5
  %.0.vec.extract = extractelement <2 x double> %47, i32 0
  %48 = fcmp ole double %.0.vec.extract, 2.500000e+06
  br i1 %48, label %.lr.ph, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %.lr.ph, %30
  %.063.lcssa = phi <2 x double> [ %3, %30 ], [ %46, %.lr.ph ]
  %.062.lcssa = phi <2 x double> [ %3, %30 ], [ %42, %.lr.ph ]
  %.061.lcssa = phi <2 x double> [ %3, %30 ], [ %35, %.lr.ph ]
  %.060.lcssa = phi <2 x double> [ %3, %30 ], [ %40, %.lr.ph ]
  %.058.lcssa = phi <2 x double> [ %3, %30 ], [ %37, %.lr.ph ]
  %49 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.0.lcssa, ptr noundef @.str.1)
  %50 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.054.lcssa, ptr noundef @.str.2)
  %51 = call double @sum_vec(<2 x double> noundef %.061.lcssa)
  %52 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %51, ptr noundef @.str.3)
  %53 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.055.lcssa, ptr noundef @.str.4)
  %54 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.056.lcssa, ptr noundef @.str.5)
  %55 = call double @sum_vec(<2 x double> noundef %.058.lcssa)
  %56 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %55, ptr noundef @.str.6)
  %57 = call double @sum_vec(<2 x double> noundef %.060.lcssa)
  %58 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %57, ptr noundef @.str.7)
  %59 = call double @sum_vec(<2 x double> noundef %.062.lcssa)
  %60 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %59, ptr noundef @.str.8)
  %61 = call double @sum_vec(<2 x double> noundef %.063.lcssa)
  %62 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %61, ptr noundef @.str.9)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local double @pow(double noundef, double noundef) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #1

; Function Attrs: nounwind
declare dso_local double @sin(double noundef) #1

; Function Attrs: nounwind
declare dso_local double @cos(double noundef) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

declare dso_local i32 @printf(ptr noundef, ...) #3

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/partialsums.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
