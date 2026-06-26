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
  %9 = sitofp i32 2500000 to double
  br label %10

10:                                               ; preds = %39, %2
  %11 = phi double [ %38, %39 ], [ 0.000000e+00, %2 ]
  %12 = phi double [ %34, %39 ], [ 0.000000e+00, %2 ]
  %13 = phi double [ %30, %39 ], [ undef, %2 ]
  %14 = phi double [ %29, %39 ], [ undef, %2 ]
  %15 = phi double [ %28, %39 ], [ undef, %2 ]
  %16 = phi double [ %26, %39 ], [ 0.000000e+00, %2 ]
  %17 = phi double [ %23, %39 ], [ 0.000000e+00, %2 ]
  %18 = phi double [ %40, %39 ], [ 1.000000e+00, %2 ]
  %19 = fcmp ole double %18, %9
  br i1 %19, label %20, label %41

20:                                               ; preds = %10
  %21 = fsub double %18, 1.000000e+00
  %22 = call double @pow(double noundef f0x3FE5555555555555, double noundef %21) #4
  %23 = fadd double %17, %22
  %24 = call double @sqrt(double noundef %18) #4
  %25 = fdiv double 1.000000e+00, %24
  %26 = fadd double %16, %25
  %27 = fmul double %18, %18
  %28 = fmul double %27, %18
  %29 = call double @sin(double noundef %18) #4
  %30 = call double @cos(double noundef %18) #4
  %31 = fmul double %28, %29
  %32 = fmul double %31, %29
  %33 = fdiv double 1.000000e+00, %32
  %34 = fadd double %12, %33
  %35 = fmul double %28, %30
  %36 = fmul double %35, %30
  %37 = fdiv double 1.000000e+00, %36
  %38 = fadd double %11, %37
  br label %39

39:                                               ; preds = %20
  %40 = fadd double %18, 1.000000e+00
  br label %10, !llvm.loop !7

41:                                               ; preds = %10
  %.lcssa14 = phi double [ %11, %10 ]
  %.lcssa12 = phi double [ %12, %10 ]
  %.lcssa10 = phi double [ %13, %10 ]
  %.lcssa8 = phi double [ %14, %10 ]
  %.lcssa6 = phi double [ %15, %10 ]
  %.lcssa4 = phi double [ %16, %10 ]
  %.lcssa2 = phi double [ %17, %10 ]
  %.lcssa = phi double [ %18, %10 ]
  %42 = sitofp i32 2500000 to double
  %43 = fneg <2 x double> %4
  br label %44

44:                                               ; preds = %66, %41
  %.0 = phi <2 x double> [ %7, %41 ], [ %67, %66 ]
  %45 = phi <2 x double> [ %65, %66 ], [ %3, %41 ]
  %46 = phi <2 x double> [ %62, %66 ], [ %3, %41 ]
  %47 = phi <2 x double> [ %60, %66 ], [ %3, %41 ]
  %48 = phi <2 x double> [ %57, %66 ], [ %3, %41 ]
  %49 = phi <2 x double> [ %55, %66 ], [ %3, %41 ]
  %.0.vec.extract = extractelement <2 x double> %.0, i32 0
  %50 = fcmp ole double %.0.vec.extract, %42
  br i1 %50, label %51, label %68

51:                                               ; preds = %44
  %52 = fadd <2 x double> %.0, %4
  %53 = fmul <2 x double> %.0, %52
  %54 = fdiv <2 x double> %4, %53
  %55 = fadd <2 x double> %49, %54
  %56 = fdiv <2 x double> %4, %.0
  %57 = fadd <2 x double> %48, %56
  %58 = fmul <2 x double> %.0, %.0
  %59 = fdiv <2 x double> %4, %58
  %60 = fadd <2 x double> %47, %59
  %61 = fdiv <2 x double> %8, %.0
  %62 = fadd <2 x double> %46, %61
  %63 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %5, <2 x double> %.0, <2 x double> %43)
  %64 = fdiv <2 x double> %8, %63
  %65 = fadd <2 x double> %45, %64
  br label %66

66:                                               ; preds = %51
  %67 = fadd <2 x double> %.0, %5
  br label %44, !llvm.loop !9

68:                                               ; preds = %44
  %.lcssa24 = phi <2 x double> [ %45, %44 ]
  %.lcssa22 = phi <2 x double> [ %46, %44 ]
  %.lcssa20 = phi <2 x double> [ %47, %44 ]
  %.lcssa18 = phi <2 x double> [ %48, %44 ]
  %.lcssa16 = phi <2 x double> [ %49, %44 ]
  %69 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.lcssa2, ptr noundef @.str.1)
  %70 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.lcssa4, ptr noundef @.str.2)
  %71 = call double @sum_vec(<2 x double> noundef %.lcssa16)
  %72 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %71, ptr noundef @.str.3)
  %73 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.lcssa12, ptr noundef @.str.4)
  %74 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.lcssa14, ptr noundef @.str.5)
  %75 = call double @sum_vec(<2 x double> noundef %.lcssa18)
  %76 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %75, ptr noundef @.str.6)
  %77 = call double @sum_vec(<2 x double> noundef %.lcssa20)
  %78 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %77, ptr noundef @.str.7)
  %79 = call double @sum_vec(<2 x double> noundef %.lcssa22)
  %80 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %79, ptr noundef @.str.8)
  %81 = call double @sum_vec(<2 x double> noundef %.lcssa24)
  %82 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %81, ptr noundef @.str.9)
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
