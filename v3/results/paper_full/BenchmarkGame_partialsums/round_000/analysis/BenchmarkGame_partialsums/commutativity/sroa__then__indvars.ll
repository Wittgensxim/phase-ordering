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

9:                                                ; preds = %31, %2
  %.057 = phi double [ 1.000000e+00, %2 ], [ %32, %31 ]
  %.056 = phi double [ 0.000000e+00, %2 ], [ %30, %31 ]
  %.055 = phi double [ 0.000000e+00, %2 ], [ %26, %31 ]
  %.054 = phi double [ 0.000000e+00, %2 ], [ %18, %31 ]
  %.0 = phi double [ 0.000000e+00, %2 ], [ %15, %31 ]
  %10 = sitofp i32 2500000 to double
  %11 = fcmp ole double %.057, %10
  br i1 %11, label %12, label %33

12:                                               ; preds = %9
  %13 = fsub double %.057, 1.000000e+00
  %14 = call double @pow(double noundef f0x3FE5555555555555, double noundef %13) #4
  %15 = fadd double %.0, %14
  %16 = call double @sqrt(double noundef %.057) #4
  %17 = fdiv double 1.000000e+00, %16
  %18 = fadd double %.054, %17
  %19 = fmul double %.057, %.057
  %20 = fmul double %19, %.057
  %21 = call double @sin(double noundef %.057) #4
  %22 = call double @cos(double noundef %.057) #4
  %23 = fmul double %20, %21
  %24 = fmul double %23, %21
  %25 = fdiv double 1.000000e+00, %24
  %26 = fadd double %.055, %25
  %27 = fmul double %20, %22
  %28 = fmul double %27, %22
  %29 = fdiv double 1.000000e+00, %28
  %30 = fadd double %.056, %29
  br label %31

31:                                               ; preds = %12
  %32 = fadd double %.057, 1.000000e+00
  br label %9, !llvm.loop !7

33:                                               ; preds = %9
  %.056.lcssa = phi double [ %.056, %9 ]
  %.055.lcssa = phi double [ %.055, %9 ]
  %.054.lcssa = phi double [ %.054, %9 ]
  %.0.lcssa = phi double [ %.0, %9 ]
  br label %34

34:                                               ; preds = %53, %33
  %.063 = phi <2 x double> [ %3, %33 ], [ %52, %53 ]
  %.062 = phi <2 x double> [ %3, %33 ], [ %48, %53 ]
  %.061 = phi <2 x double> [ %3, %33 ], [ %41, %53 ]
  %.060 = phi <2 x double> [ %3, %33 ], [ %46, %53 ]
  %.059 = phi <2 x double> [ %7, %33 ], [ %54, %53 ]
  %.058 = phi <2 x double> [ %3, %33 ], [ %43, %53 ]
  %.0.vec.extract = extractelement <2 x double> %.059, i32 0
  %35 = sitofp i32 2500000 to double
  %36 = fcmp ole double %.0.vec.extract, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %34
  %38 = fadd <2 x double> %.059, %4
  %39 = fmul <2 x double> %.059, %38
  %40 = fdiv <2 x double> %4, %39
  %41 = fadd <2 x double> %.061, %40
  %42 = fdiv <2 x double> %4, %.059
  %43 = fadd <2 x double> %.058, %42
  %44 = fmul <2 x double> %.059, %.059
  %45 = fdiv <2 x double> %4, %44
  %46 = fadd <2 x double> %.060, %45
  %47 = fdiv <2 x double> %8, %.059
  %48 = fadd <2 x double> %.062, %47
  %49 = fneg <2 x double> %4
  %50 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %5, <2 x double> %.059, <2 x double> %49)
  %51 = fdiv <2 x double> %8, %50
  %52 = fadd <2 x double> %.063, %51
  br label %53

53:                                               ; preds = %37
  %54 = fadd <2 x double> %.059, %5
  br label %34, !llvm.loop !9

55:                                               ; preds = %34
  %.063.lcssa = phi <2 x double> [ %.063, %34 ]
  %.062.lcssa = phi <2 x double> [ %.062, %34 ]
  %.061.lcssa = phi <2 x double> [ %.061, %34 ]
  %.060.lcssa = phi <2 x double> [ %.060, %34 ]
  %.058.lcssa = phi <2 x double> [ %.058, %34 ]
  %56 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.0.lcssa, ptr noundef @.str.1)
  %57 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.054.lcssa, ptr noundef @.str.2)
  %58 = call double @sum_vec(<2 x double> noundef %.061.lcssa)
  %59 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %58, ptr noundef @.str.3)
  %60 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.055.lcssa, ptr noundef @.str.4)
  %61 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.056.lcssa, ptr noundef @.str.5)
  %62 = call double @sum_vec(<2 x double> noundef %.058.lcssa)
  %63 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %62, ptr noundef @.str.6)
  %64 = call double @sum_vec(<2 x double> noundef %.060.lcssa)
  %65 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %64, ptr noundef @.str.7)
  %66 = call double @sum_vec(<2 x double> noundef %.062.lcssa)
  %67 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %66, ptr noundef @.str.8)
  %68 = call double @sum_vec(<2 x double> noundef %.063.lcssa)
  %69 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %68, ptr noundef @.str.9)
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
