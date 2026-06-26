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
  %.0.vec.insert = insertelement <2 x double> poison, double %0, i64 0
  %.8.vec.insert = insertelement <2 x double> %.0.vec.insert, double %1, i64 1
  ret <2 x double> %.8.vec.insert
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @sum_vec(<2 x double> noundef %0) #0 {
  %.0.vec.extract = extractelement <2 x double> %0, i64 0
  %.8.vec.extract = extractelement <2 x double> %0, i64 1
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

9:                                                ; preds = %2, %15
  %.05 = phi double [ 0.000000e+00, %2 ], [ %28, %15 ]
  %.0544 = phi double [ 0.000000e+00, %2 ], [ %27, %15 ]
  %.0553 = phi double [ 0.000000e+00, %2 ], [ %25, %15 ]
  %.0562 = phi double [ 0.000000e+00, %2 ], [ %21, %15 ]
  %.0571 = phi double [ 1.000000e+00, %2 ], [ %29, %15 ]
  %10 = fadd double %.0571, -1.000000e+00
  %11 = call double @pow(double noundef f0x3FE5555555555555, double noundef %10) #4
  %12 = call double @sqrt(double noundef %.0571) #4
  %13 = call double @sin(double noundef %.0571) #4
  %14 = call double @cos(double noundef %.0571) #4
  br label %15

15:                                               ; preds = %9
  %16 = fmul double %.0571, %.0571
  %17 = fmul double %16, %.0571
  %18 = fmul double %17, %14
  %19 = fmul double %18, %14
  %20 = fdiv double 1.000000e+00, %19
  %21 = fadd double %.0562, %20
  %22 = fmul double %17, %13
  %23 = fmul double %22, %13
  %24 = fdiv double 1.000000e+00, %23
  %25 = fadd double %.0553, %24
  %26 = fdiv double 1.000000e+00, %12
  %27 = fadd double %.0544, %26
  %28 = fadd double %.05, %11
  %29 = fadd double %.0571, 1.000000e+00
  %30 = fcmp ugt double %29, 2.500000e+06
  br i1 %30, label %31, label %9, !llvm.loop !7

31:                                               ; preds = %15
  %.0.vec.extract6 = extractelement <2 x double> %7, i64 0
  %32 = fcmp ugt double %.0.vec.extract6, 2.500000e+06
  br i1 %32, label %52, label %.lr.ph

.lr.ph:                                           ; preds = %31
  br label %33

33:                                               ; preds = %.lr.ph, %34
  %.05812 = phi <2 x double> [ %3, %.lr.ph ], [ %45, %34 ]
  %.05911 = phi <2 x double> [ %7, %.lr.ph ], [ %50, %34 ]
  %.06010 = phi <2 x double> [ %3, %.lr.ph ], [ %43, %34 ]
  %.0619 = phi <2 x double> [ %3, %.lr.ph ], [ %49, %34 ]
  %.0628 = phi <2 x double> [ %3, %.lr.ph ], [ %40, %34 ]
  %.0637 = phi <2 x double> [ %3, %.lr.ph ], [ %38, %34 ]
  br label %34

34:                                               ; preds = %33
  %35 = fneg <2 x double> %4
  %36 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %5, <2 x double> %.05911, <2 x double> %35)
  %37 = fdiv <2 x double> %8, %36
  %38 = fadd <2 x double> %.0637, %37
  %39 = fdiv <2 x double> %8, %.05911
  %40 = fadd <2 x double> %.0628, %39
  %41 = fmul <2 x double> %.05911, %.05911
  %42 = fdiv <2 x double> %4, %41
  %43 = fadd <2 x double> %.06010, %42
  %44 = fdiv <2 x double> %4, %.05911
  %45 = fadd <2 x double> %.05812, %44
  %46 = fadd <2 x double> %.05911, %4
  %47 = fmul <2 x double> %.05911, %46
  %48 = fdiv <2 x double> %4, %47
  %49 = fadd <2 x double> %.0619, %48
  %50 = fadd <2 x double> %.05911, %5
  %.0.vec.extract = extractelement <2 x double> %50, i64 0
  %51 = fcmp ugt double %.0.vec.extract, 2.500000e+06
  br i1 %51, label %._crit_edge, label %33, !llvm.loop !9

._crit_edge:                                      ; preds = %34
  br label %52

52:                                               ; preds = %._crit_edge, %31
  %.063.lcssa = phi <2 x double> [ %38, %._crit_edge ], [ %3, %31 ]
  %.062.lcssa = phi <2 x double> [ %40, %._crit_edge ], [ %3, %31 ]
  %.061.lcssa = phi <2 x double> [ %49, %._crit_edge ], [ %3, %31 ]
  %.060.lcssa = phi <2 x double> [ %43, %._crit_edge ], [ %3, %31 ]
  %.058.lcssa = phi <2 x double> [ %45, %._crit_edge ], [ %3, %31 ]
  %53 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %28, ptr noundef nonnull @.str.1) #4
  %54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %27, ptr noundef nonnull @.str.2) #4
  %55 = call double @sum_vec(<2 x double> noundef %.061.lcssa)
  %56 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %55, ptr noundef nonnull @.str.3) #4
  %57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %25, ptr noundef nonnull @.str.4) #4
  %58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %21, ptr noundef nonnull @.str.5) #4
  %59 = call double @sum_vec(<2 x double> noundef %.058.lcssa)
  %60 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %59, ptr noundef nonnull @.str.6) #4
  %61 = call double @sum_vec(<2 x double> noundef %.060.lcssa)
  %62 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %61, ptr noundef nonnull @.str.7) #4
  %63 = call double @sum_vec(<2 x double> noundef %.062.lcssa)
  %64 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %63, ptr noundef nonnull @.str.8) #4
  %65 = call double @sum_vec(<2 x double> noundef %.063.lcssa)
  %66 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %65, ptr noundef nonnull @.str.9) #4
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
