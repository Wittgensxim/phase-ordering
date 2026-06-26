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
  %3 = alloca <2 x double>, align 16
  store double %0, ptr %3, align 8
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %1, ptr %4, align 8
  %5 = load <2 x double>, ptr %3, align 16
  ret <2 x double> %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @sum_vec(<2 x double> noundef %0) #0 {
  %2 = alloca <2 x double>, align 16
  store <2 x double> %0, ptr %2, align 16
  %3 = load double, ptr %2, align 8
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %5 = load double, ptr %4, align 8
  %6 = fadd double %3, %5
  ret double %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca <2 x double>, align 16
  %8 = alloca <2 x double>, align 16
  %9 = alloca <2 x double>, align 16
  %10 = alloca <2 x double>, align 16
  %11 = alloca <2 x double>, align 16
  %12 = alloca <2 x double>, align 16
  %13 = alloca <2 x double>, align 16
  %14 = alloca <2 x double>, align 16
  %15 = alloca <2 x double>, align 16
  %16 = alloca <2 x double>, align 16
  %17 = alloca <2 x double>, align 16
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  store double 0.000000e+00, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  store double 0.000000e+00, ptr %6, align 8
  store i32 2500000, ptr %21, align 4
  %22 = call <2 x double> @make_vec(double noundef 0.000000e+00, double noundef 0.000000e+00)
  store <2 x double> %22, ptr %12, align 16
  %23 = call <2 x double> @make_vec(double noundef 1.000000e+00, double noundef 1.000000e+00)
  store <2 x double> %23, ptr %13, align 16
  %24 = call <2 x double> @make_vec(double noundef 2.000000e+00, double noundef 2.000000e+00)
  store <2 x double> %24, ptr %14, align 16
  %25 = call <2 x double> @make_vec(double noundef -1.000000e+00, double noundef -1.000000e+00)
  %26 = call <2 x double> @make_vec(double noundef 1.000000e+00, double noundef 2.000000e+00)
  store <2 x double> %26, ptr %15, align 16
  %27 = call <2 x double> @make_vec(double noundef 1.000000e+00, double noundef -1.000000e+00)
  store <2 x double> %27, ptr %17, align 16
  %28 = load <2 x double>, ptr %12, align 16
  store <2 x double> %28, ptr %11, align 16
  store <2 x double> %28, ptr %10, align 16
  store <2 x double> %28, ptr %9, align 16
  store <2 x double> %28, ptr %8, align 16
  store <2 x double> %28, ptr %7, align 16
  %29 = load i32, ptr %21, align 4
  %30 = sitofp i32 %29 to double
  %.promoted1 = load double, ptr %3, align 8
  %.promoted3 = load double, ptr %4, align 8
  %.promoted5 = load double, ptr %18, align 8
  %.promoted7 = load double, ptr %19, align 8
  %.promoted9 = load double, ptr %20, align 8
  %.promoted11 = load double, ptr %5, align 8
  %.promoted13 = load double, ptr %6, align 8
  br label %31

31:                                               ; preds = %47, %2
  %32 = phi double [ %53, %47 ], [ %.promoted13, %2 ]
  %33 = phi double [ %57, %47 ], [ %.promoted11, %2 ]
  %34 = phi double [ %46, %47 ], [ %.promoted9, %2 ]
  %35 = phi double [ %45, %47 ], [ %.promoted7, %2 ]
  %36 = phi double [ %49, %47 ], [ %.promoted5, %2 ]
  %37 = phi double [ %59, %47 ], [ %.promoted3, %2 ]
  %38 = phi double [ %60, %47 ], [ %.promoted1, %2 ]
  %39 = phi double [ %61, %47 ], [ 1.000000e+00, %2 ]
  %40 = fcmp ugt double %39, %30
  br i1 %40, label %62, label %41

41:                                               ; preds = %31
  %42 = fadd double %39, -1.000000e+00
  %43 = call double @pow(double noundef f0x3FE5555555555555, double noundef %42) #4
  %44 = call double @sqrt(double noundef %39) #4
  %45 = call double @sin(double noundef %39) #4
  %46 = call double @cos(double noundef %39) #4
  br label %47

47:                                               ; preds = %41
  %48 = fmul double %39, %39
  %49 = fmul double %48, %39
  %50 = fmul double %49, %46
  %51 = fmul double %50, %46
  %52 = fdiv double 1.000000e+00, %51
  %53 = fadd double %32, %52
  %54 = fmul double %49, %45
  %55 = fmul double %54, %45
  %56 = fdiv double 1.000000e+00, %55
  %57 = fadd double %33, %56
  %58 = fdiv double 1.000000e+00, %44
  %59 = fadd double %37, %58
  %60 = fadd double %38, %43
  %61 = fadd double %39, 1.000000e+00
  br label %31, !llvm.loop !7

62:                                               ; preds = %31
  store double %38, ptr %3, align 8
  store double %37, ptr %4, align 8
  store double %36, ptr %18, align 8
  store double %35, ptr %19, align 8
  store double %34, ptr %20, align 8
  store double %33, ptr %5, align 8
  store double %32, ptr %6, align 8
  %63 = load <2 x double>, ptr %15, align 16
  store <2 x double> %63, ptr %16, align 16
  %64 = load i32, ptr %21, align 4
  %65 = sitofp i32 %64 to double
  %66 = load <2 x double>, ptr %13, align 16
  %67 = load <2 x double>, ptr %17, align 16
  %68 = load <2 x double>, ptr %14, align 16
  %69 = fneg <2 x double> %66
  %.promoted15 = load <2 x double>, ptr %9, align 16
  %.promoted17 = load <2 x double>, ptr %7, align 16
  %.promoted19 = load <2 x double>, ptr %8, align 16
  %.promoted21 = load <2 x double>, ptr %10, align 16
  %.promoted23 = load <2 x double>, ptr %11, align 16
  br label %70

70:                                               ; preds = %79, %62
  %71 = phi <2 x double> [ %83, %79 ], [ %.promoted23, %62 ]
  %72 = phi <2 x double> [ %86, %79 ], [ %.promoted21, %62 ]
  %73 = phi <2 x double> [ %90, %79 ], [ %.promoted19, %62 ]
  %74 = phi <2 x double> [ %93, %79 ], [ %.promoted17, %62 ]
  %75 = phi <2 x double> [ %98, %79 ], [ %.promoted15, %62 ]
  %76 = load double, ptr %16, align 16
  %77 = fcmp ugt double %76, %65
  br i1 %77, label %100, label %78

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78
  %80 = load <2 x double>, ptr %16, align 16
  %81 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %68, <2 x double> %80, <2 x double> %69)
  %82 = fdiv <2 x double> %67, %81
  %83 = fadd <2 x double> %71, %82
  %84 = load <2 x double>, ptr %16, align 16
  %85 = fdiv <2 x double> %67, %84
  %86 = fadd <2 x double> %72, %85
  %87 = load <2 x double>, ptr %16, align 16
  %88 = fmul <2 x double> %87, %87
  %89 = fdiv <2 x double> %66, %88
  %90 = fadd <2 x double> %73, %89
  %91 = load <2 x double>, ptr %16, align 16
  %92 = fdiv <2 x double> %66, %91
  %93 = fadd <2 x double> %74, %92
  %94 = load <2 x double>, ptr %16, align 16
  %95 = fadd <2 x double> %94, %66
  %96 = fmul <2 x double> %94, %95
  %97 = fdiv <2 x double> %66, %96
  %98 = fadd <2 x double> %75, %97
  %99 = fadd <2 x double> %94, %68
  store <2 x double> %99, ptr %16, align 16
  br label %70, !llvm.loop !9

100:                                              ; preds = %70
  store <2 x double> %75, ptr %9, align 16
  store <2 x double> %74, ptr %7, align 16
  store <2 x double> %73, ptr %8, align 16
  store <2 x double> %72, ptr %10, align 16
  store <2 x double> %71, ptr %11, align 16
  %101 = load double, ptr %3, align 8
  %102 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %101, ptr noundef nonnull @.str.1) #4
  %103 = load double, ptr %4, align 8
  %104 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %103, ptr noundef nonnull @.str.2) #4
  %105 = load <2 x double>, ptr %9, align 16
  %106 = call double @sum_vec(<2 x double> noundef %105)
  %107 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %106, ptr noundef nonnull @.str.3) #4
  %108 = load double, ptr %5, align 8
  %109 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %108, ptr noundef nonnull @.str.4) #4
  %110 = load double, ptr %6, align 8
  %111 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %110, ptr noundef nonnull @.str.5) #4
  %112 = load <2 x double>, ptr %7, align 16
  %113 = call double @sum_vec(<2 x double> noundef %112)
  %114 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %113, ptr noundef nonnull @.str.6) #4
  %115 = load <2 x double>, ptr %8, align 16
  %116 = call double @sum_vec(<2 x double> noundef %115)
  %117 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %116, ptr noundef nonnull @.str.7) #4
  %118 = load <2 x double>, ptr %10, align 16
  %119 = call double @sum_vec(<2 x double> noundef %118)
  %120 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %119, ptr noundef nonnull @.str.8) #4
  %121 = load <2 x double>, ptr %11, align 16
  %122 = call double @sum_vec(<2 x double> noundef %121)
  %123 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %122, ptr noundef nonnull @.str.9) #4
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
