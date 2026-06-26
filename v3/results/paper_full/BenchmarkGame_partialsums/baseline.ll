; ModuleID = 'results\paper_full\BenchmarkGame_partialsums\BenchmarkGame_partialsums.ll'
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
  %2 = bitcast <2 x double> %0 to i128
  %3 = trunc i128 %2 to i64
  %4 = bitcast i64 %3 to double
  %5 = lshr i128 %2, 64
  %6 = trunc nuw i128 %5 to i64
  %7 = bitcast i64 %6 to double
  %8 = fadd double %4, %7
  ret double %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = call <2 x double> @make_vec(double noundef 0.000000e+00, double noundef 0.000000e+00)
  %4 = call <2 x double> @make_vec(double noundef 1.000000e+00, double noundef 1.000000e+00)
  %5 = call <2 x double> @make_vec(double noundef 2.000000e+00, double noundef 2.000000e+00)
  %6 = call <2 x double> @make_vec(double noundef -1.000000e+00, double noundef -1.000000e+00)
  %7 = call <2 x double> @make_vec(double noundef 1.000000e+00, double noundef 2.000000e+00)
  %8 = call <2 x double> @make_vec(double noundef 1.000000e+00, double noundef -1.000000e+00)
  br label %13

.preheader:                                       ; preds = %13
  %.06.lcssa = phi double [ %24, %13 ]
  %.05.lcssa = phi double [ %28, %13 ]
  %.04.lcssa = phi double [ %30, %13 ]
  %.03.lcssa = phi double [ %31, %13 ]
  %9 = bitcast <2 x double> %7 to i128
  %10 = trunc i128 %9 to i64
  %11 = bitcast i64 %10 to double
  %12 = fcmp ugt double %11, 2.500000e+06
  br i1 %12, label %56, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  br label %34

13:                                               ; preds = %2, %13
  %.014 = phi double [ 1.000000e+00, %2 ], [ %32, %13 ]
  %.0313 = phi double [ 0.000000e+00, %2 ], [ %31, %13 ]
  %.0412 = phi double [ 0.000000e+00, %2 ], [ %30, %13 ]
  %.0511 = phi double [ 0.000000e+00, %2 ], [ %28, %13 ]
  %.0610 = phi double [ 0.000000e+00, %2 ], [ %24, %13 ]
  %14 = fadd double %.014, -1.000000e+00
  %15 = call double @pow(double noundef f0x3FE5555555555555, double noundef %14) #4
  %16 = call double @sqrt(double noundef %.014) #4
  %17 = call double @sin(double noundef %.014) #4
  %18 = call double @cos(double noundef %.014) #4
  %19 = fmul double %.014, %.014
  %20 = fmul double %19, %.014
  %21 = fmul double %20, %18
  %22 = fmul double %21, %18
  %23 = fdiv double 1.000000e+00, %22
  %24 = fadd double %.0610, %23
  %25 = fmul double %20, %17
  %26 = fmul double %25, %17
  %27 = fdiv double 1.000000e+00, %26
  %28 = fadd double %.0511, %27
  %29 = fdiv double 1.000000e+00, %16
  %30 = fadd double %.0412, %29
  %31 = fadd double %.0313, %15
  %32 = fadd double %.014, 1.000000e+00
  %33 = fcmp ugt double %32, 2.500000e+06
  br i1 %33, label %.preheader, label %13, !llvm.loop !7

34:                                               ; preds = %.lr.ph, %34
  %.0119 = phi <2 x double> [ %3, %.lr.ph ], [ %39, %34 ]
  %.0218 = phi <2 x double> [ %3, %.lr.ph ], [ %41, %34 ]
  %.0717 = phi <2 x double> [ %3, %.lr.ph ], [ %46, %34 ]
  %.0816 = phi <2 x double> [ %3, %.lr.ph ], [ %44, %34 ]
  %.0915 = phi <2 x double> [ %3, %.lr.ph ], [ %50, %34 ]
  %35 = phi <2 x double> [ %7, %.lr.ph ], [ %51, %34 ]
  %36 = fneg <2 x double> %4
  %37 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %5, <2 x double> %35, <2 x double> %36)
  %38 = fdiv <2 x double> %8, %37
  %39 = fadd <2 x double> %.0119, %38
  %40 = fdiv <2 x double> %8, %35
  %41 = fadd <2 x double> %.0218, %40
  %42 = fmul <2 x double> %35, %35
  %43 = fdiv <2 x double> %4, %42
  %44 = fadd <2 x double> %.0816, %43
  %45 = fdiv <2 x double> %4, %35
  %46 = fadd <2 x double> %.0717, %45
  %47 = fadd <2 x double> %35, %4
  %48 = fmul <2 x double> %35, %47
  %49 = fdiv <2 x double> %4, %48
  %50 = fadd <2 x double> %.0915, %49
  %51 = fadd <2 x double> %35, %5
  %52 = bitcast <2 x double> %51 to i128
  %53 = trunc i128 %52 to i64
  %54 = bitcast i64 %53 to double
  %55 = fcmp ugt double %54, 2.500000e+06
  br i1 %55, label %._crit_edge, label %34, !llvm.loop !9

._crit_edge:                                      ; preds = %34
  %split = phi <2 x double> [ %50, %34 ]
  %split20 = phi <2 x double> [ %44, %34 ]
  %split21 = phi <2 x double> [ %46, %34 ]
  %split22 = phi <2 x double> [ %41, %34 ]
  %split23 = phi <2 x double> [ %39, %34 ]
  br label %56

56:                                               ; preds = %._crit_edge, %.preheader
  %.09.lcssa = phi <2 x double> [ %split, %._crit_edge ], [ %3, %.preheader ]
  %.08.lcssa = phi <2 x double> [ %split20, %._crit_edge ], [ %3, %.preheader ]
  %.07.lcssa = phi <2 x double> [ %split21, %._crit_edge ], [ %3, %.preheader ]
  %.02.lcssa = phi <2 x double> [ %split22, %._crit_edge ], [ %3, %.preheader ]
  %.01.lcssa = phi <2 x double> [ %split23, %._crit_edge ], [ %3, %.preheader ]
  %57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %.03.lcssa, ptr noundef nonnull @.str.1) #4
  %58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %.04.lcssa, ptr noundef nonnull @.str.2) #4
  %59 = call double @sum_vec(<2 x double> noundef %.09.lcssa)
  %60 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %59, ptr noundef nonnull @.str.3) #4
  %61 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %.05.lcssa, ptr noundef nonnull @.str.4) #4
  %62 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %.06.lcssa, ptr noundef nonnull @.str.5) #4
  %63 = call double @sum_vec(<2 x double> noundef %.07.lcssa)
  %64 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %63, ptr noundef nonnull @.str.6) #4
  %65 = call double @sum_vec(<2 x double> noundef %.08.lcssa)
  %66 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %65, ptr noundef nonnull @.str.7) #4
  %67 = call double @sum_vec(<2 x double> noundef %.02.lcssa)
  %68 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %67, ptr noundef nonnull @.str.8) #4
  %69 = call double @sum_vec(<2 x double> noundef %.01.lcssa)
  %70 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %69, ptr noundef nonnull @.str.9) #4
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
