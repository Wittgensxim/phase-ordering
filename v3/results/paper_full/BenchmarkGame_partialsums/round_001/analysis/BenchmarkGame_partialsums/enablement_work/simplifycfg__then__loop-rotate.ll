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
  br label %10

.preheader:                                       ; preds = %10
  %.056.lcssa = phi double [ %28, %10 ]
  %.055.lcssa = phi double [ %24, %10 ]
  %.054.lcssa = phi double [ %16, %10 ]
  %.0.lcssa = phi double [ %13, %10 ]
  %.0.vec.extract6 = extractelement <2 x double> %7, i32 0
  %9 = fcmp ole double %.0.vec.extract6, 2.500000e+06
  br i1 %9, label %.lr.ph, label %49

.lr.ph:                                           ; preds = %.preheader
  br label %31

10:                                               ; preds = %2, %10
  %.05 = phi double [ 0.000000e+00, %2 ], [ %13, %10 ]
  %.0544 = phi double [ 0.000000e+00, %2 ], [ %16, %10 ]
  %.0553 = phi double [ 0.000000e+00, %2 ], [ %24, %10 ]
  %.0562 = phi double [ 0.000000e+00, %2 ], [ %28, %10 ]
  %.0571 = phi double [ 1.000000e+00, %2 ], [ %29, %10 ]
  %11 = fsub double %.0571, 1.000000e+00
  %12 = call double @pow(double noundef f0x3FE5555555555555, double noundef %11) #4
  %13 = fadd double %.05, %12
  %14 = call double @sqrt(double noundef %.0571) #4
  %15 = fdiv double 1.000000e+00, %14
  %16 = fadd double %.0544, %15
  %17 = fmul double %.0571, %.0571
  %18 = fmul double %17, %.0571
  %19 = call double @sin(double noundef %.0571) #4
  %20 = call double @cos(double noundef %.0571) #4
  %21 = fmul double %18, %19
  %22 = fmul double %21, %19
  %23 = fdiv double 1.000000e+00, %22
  %24 = fadd double %.0553, %23
  %25 = fmul double %18, %20
  %26 = fmul double %25, %20
  %27 = fdiv double 1.000000e+00, %26
  %28 = fadd double %.0562, %27
  %29 = fadd double %.0571, 1.000000e+00
  %30 = fcmp ole double %29, 2.500000e+06
  br i1 %30, label %10, label %.preheader, !llvm.loop !7

31:                                               ; preds = %.lr.ph, %31
  %.05812 = phi <2 x double> [ %3, %.lr.ph ], [ %37, %31 ]
  %.05911 = phi <2 x double> [ %7, %.lr.ph ], [ %47, %31 ]
  %.06010 = phi <2 x double> [ %3, %.lr.ph ], [ %40, %31 ]
  %.0619 = phi <2 x double> [ %3, %.lr.ph ], [ %35, %31 ]
  %.0628 = phi <2 x double> [ %3, %.lr.ph ], [ %42, %31 ]
  %.0637 = phi <2 x double> [ %3, %.lr.ph ], [ %46, %31 ]
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
  br i1 %48, label %31, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %31
  %split = phi <2 x double> [ %46, %31 ]
  %split13 = phi <2 x double> [ %42, %31 ]
  %split14 = phi <2 x double> [ %35, %31 ]
  %split15 = phi <2 x double> [ %40, %31 ]
  %split16 = phi <2 x double> [ %37, %31 ]
  br label %49

49:                                               ; preds = %._crit_edge, %.preheader
  %.063.lcssa = phi <2 x double> [ %split, %._crit_edge ], [ %3, %.preheader ]
  %.062.lcssa = phi <2 x double> [ %split13, %._crit_edge ], [ %3, %.preheader ]
  %.061.lcssa = phi <2 x double> [ %split14, %._crit_edge ], [ %3, %.preheader ]
  %.060.lcssa = phi <2 x double> [ %split15, %._crit_edge ], [ %3, %.preheader ]
  %.058.lcssa = phi <2 x double> [ %split16, %._crit_edge ], [ %3, %.preheader ]
  %50 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.0.lcssa, ptr noundef @.str.1)
  %51 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.054.lcssa, ptr noundef @.str.2)
  %52 = call double @sum_vec(<2 x double> noundef %.061.lcssa)
  %53 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %52, ptr noundef @.str.3)
  %54 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.055.lcssa, ptr noundef @.str.4)
  %55 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.056.lcssa, ptr noundef @.str.5)
  %56 = call double @sum_vec(<2 x double> noundef %.058.lcssa)
  %57 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %56, ptr noundef @.str.6)
  %58 = call double @sum_vec(<2 x double> noundef %.060.lcssa)
  %59 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %58, ptr noundef @.str.7)
  %60 = call double @sum_vec(<2 x double> noundef %.062.lcssa)
  %61 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %60, ptr noundef @.str.8)
  %62 = call double @sum_vec(<2 x double> noundef %.063.lcssa)
  %63 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %62, ptr noundef @.str.9)
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
