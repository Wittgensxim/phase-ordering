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

9:                                                ; preds = %30, %2
  %.057 = phi double [ 1.000000e+00, %2 ], [ %31, %30 ]
  %.056 = phi double [ 0.000000e+00, %2 ], [ %29, %30 ]
  %.055 = phi double [ 0.000000e+00, %2 ], [ %25, %30 ]
  %.054 = phi double [ 0.000000e+00, %2 ], [ %17, %30 ]
  %.0 = phi double [ 0.000000e+00, %2 ], [ %14, %30 ]
  %10 = fcmp ole double %.057, 2.500000e+06
  br i1 %10, label %11, label %32

11:                                               ; preds = %9
  %12 = fsub double %.057, 1.000000e+00
  %13 = call double @pow(double noundef f0x3FE5555555555555, double noundef %12) #4
  %14 = fadd double %.0, %13
  %15 = call double @sqrt(double noundef %.057) #4
  %16 = fdiv double 1.000000e+00, %15
  %17 = fadd double %.054, %16
  %18 = fmul double %.057, %.057
  %19 = fmul double %18, %.057
  %20 = call double @sin(double noundef %.057) #4
  %21 = call double @cos(double noundef %.057) #4
  %22 = fmul double %19, %20
  %23 = fmul double %22, %20
  %24 = fdiv double 1.000000e+00, %23
  %25 = fadd double %.055, %24
  %26 = fmul double %19, %21
  %27 = fmul double %26, %21
  %28 = fdiv double 1.000000e+00, %27
  %29 = fadd double %.056, %28
  br label %30

30:                                               ; preds = %11
  %31 = fadd double %.057, 1.000000e+00
  br label %9, !llvm.loop !7

32:                                               ; preds = %9
  %.056.lcssa = phi double [ %.056, %9 ]
  %.055.lcssa = phi double [ %.055, %9 ]
  %.054.lcssa = phi double [ %.054, %9 ]
  %.0.lcssa = phi double [ %.0, %9 ]
  %33 = fneg <2 x double> %4
  br label %34

34:                                               ; preds = %51, %32
  %.063 = phi <2 x double> [ %3, %32 ], [ %50, %51 ]
  %.062 = phi <2 x double> [ %3, %32 ], [ %47, %51 ]
  %.061 = phi <2 x double> [ %3, %32 ], [ %40, %51 ]
  %.060 = phi <2 x double> [ %3, %32 ], [ %45, %51 ]
  %.059 = phi <2 x double> [ %7, %32 ], [ %52, %51 ]
  %.058 = phi <2 x double> [ %3, %32 ], [ %42, %51 ]
  %.0.vec.extract = extractelement <2 x double> %.059, i32 0
  %35 = fcmp ole double %.0.vec.extract, 2.500000e+06
  br i1 %35, label %36, label %53

36:                                               ; preds = %34
  %37 = fadd <2 x double> %.059, %4
  %38 = fmul <2 x double> %.059, %37
  %39 = fdiv <2 x double> %4, %38
  %40 = fadd <2 x double> %.061, %39
  %41 = fdiv <2 x double> %4, %.059
  %42 = fadd <2 x double> %.058, %41
  %43 = fmul <2 x double> %.059, %.059
  %44 = fdiv <2 x double> %4, %43
  %45 = fadd <2 x double> %.060, %44
  %46 = fdiv <2 x double> %8, %.059
  %47 = fadd <2 x double> %.062, %46
  %48 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %5, <2 x double> %.059, <2 x double> %33)
  %49 = fdiv <2 x double> %8, %48
  %50 = fadd <2 x double> %.063, %49
  br label %51

51:                                               ; preds = %36
  %52 = fadd <2 x double> %.059, %5
  br label %34, !llvm.loop !9

53:                                               ; preds = %34
  %.063.lcssa = phi <2 x double> [ %.063, %34 ]
  %.062.lcssa = phi <2 x double> [ %.062, %34 ]
  %.061.lcssa = phi <2 x double> [ %.061, %34 ]
  %.060.lcssa = phi <2 x double> [ %.060, %34 ]
  %.058.lcssa = phi <2 x double> [ %.058, %34 ]
  %54 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.0.lcssa, ptr noundef @.str.1)
  %55 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.054.lcssa, ptr noundef @.str.2)
  %56 = call double @sum_vec(<2 x double> noundef %.061.lcssa)
  %57 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %56, ptr noundef @.str.3)
  %58 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.055.lcssa, ptr noundef @.str.4)
  %59 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.056.lcssa, ptr noundef @.str.5)
  %60 = call double @sum_vec(<2 x double> noundef %.058.lcssa)
  %61 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %60, ptr noundef @.str.6)
  %62 = call double @sum_vec(<2 x double> noundef %.060.lcssa)
  %63 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %62, ptr noundef @.str.7)
  %64 = call double @sum_vec(<2 x double> noundef %.062.lcssa)
  %65 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %64, ptr noundef @.str.8)
  %66 = call double @sum_vec(<2 x double> noundef %.063.lcssa)
  %67 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %66, ptr noundef @.str.9)
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
