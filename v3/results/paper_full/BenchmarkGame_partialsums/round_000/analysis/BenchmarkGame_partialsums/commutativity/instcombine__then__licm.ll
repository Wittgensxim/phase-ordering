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
  %.promoted = load double, ptr %3, align 8
  %.promoted2 = load double, ptr %4, align 8
  %.promoted4 = load double, ptr %19, align 8
  %.promoted6 = load double, ptr %20, align 8
  %.promoted8 = load double, ptr %5, align 8
  %.promoted10 = load double, ptr %6, align 8
  br label %31

31:                                               ; preds = %58, %2
  %32 = phi double [ %.promoted10, %2 ], [ %57, %58 ]
  %33 = phi double [ %.promoted8, %2 ], [ %53, %58 ]
  %34 = phi double [ %.promoted6, %2 ], [ %49, %58 ]
  %35 = phi double [ %.promoted4, %2 ], [ %47, %58 ]
  %36 = phi double [ %.promoted2, %2 ], [ %45, %58 ]
  %37 = phi double [ %.promoted, %2 ], [ %42, %58 ]
  %storemerge = phi double [ 1.000000e+00, %2 ], [ %59, %58 ]
  %38 = fcmp ugt double %storemerge, %30
  br i1 %38, label %60, label %39

39:                                               ; preds = %31
  %40 = fadd double %storemerge, -1.000000e+00
  %41 = call double @pow(double noundef f0x3FE5555555555555, double noundef %40) #4
  %42 = fadd double %37, %41
  %43 = call double @sqrt(double noundef %storemerge) #4
  %44 = fdiv double 1.000000e+00, %43
  %45 = fadd double %36, %44
  %46 = fmul double %storemerge, %storemerge
  %47 = fmul double %46, %storemerge
  %48 = call double @sin(double noundef %storemerge) #4
  %49 = call double @cos(double noundef %storemerge) #4
  %50 = fmul double %47, %48
  %51 = fmul double %50, %48
  %52 = fdiv double 1.000000e+00, %51
  %53 = fadd double %33, %52
  %54 = fmul double %47, %49
  %55 = fmul double %54, %49
  %56 = fdiv double 1.000000e+00, %55
  %57 = fadd double %32, %56
  br label %58

58:                                               ; preds = %39
  %59 = fadd double %storemerge, 1.000000e+00
  br label %31, !llvm.loop !7

60:                                               ; preds = %31
  %.lcssa11 = phi double [ %32, %31 ]
  %.lcssa9 = phi double [ %33, %31 ]
  %.lcssa7 = phi double [ %34, %31 ]
  %.lcssa5 = phi double [ %35, %31 ]
  %.lcssa3 = phi double [ %36, %31 ]
  %.lcssa = phi double [ %37, %31 ]
  %storemerge.lcssa = phi double [ %storemerge, %31 ]
  store double %storemerge.lcssa, ptr %18, align 8
  store double %.lcssa, ptr %3, align 8
  store double %.lcssa3, ptr %4, align 8
  store double %.lcssa5, ptr %19, align 8
  store double %.lcssa7, ptr %20, align 8
  store double %.lcssa9, ptr %5, align 8
  store double %.lcssa11, ptr %6, align 8
  %61 = load <2 x double>, ptr %15, align 16
  %62 = load i32, ptr %21, align 4
  %63 = sitofp i32 %62 to double
  %64 = load <2 x double>, ptr %13, align 16
  %65 = load <2 x double>, ptr %13, align 16
  %66 = load <2 x double>, ptr %17, align 16
  %67 = load <2 x double>, ptr %14, align 16
  %68 = load <2 x double>, ptr %13, align 16
  %69 = fneg <2 x double> %68
  %70 = load <2 x double>, ptr %14, align 16
  %.promoted12 = load <2 x double>, ptr %9, align 16
  %.promoted14 = load <2 x double>, ptr %7, align 16
  %.promoted16 = load <2 x double>, ptr %8, align 16
  %.promoted18 = load <2 x double>, ptr %10, align 16
  %.promoted20 = load <2 x double>, ptr %11, align 16
  br label %71

71:                                               ; preds = %97, %60
  %72 = phi <2 x double> [ %.promoted20, %60 ], [ %96, %97 ]
  %73 = phi <2 x double> [ %.promoted18, %60 ], [ %93, %97 ]
  %74 = phi <2 x double> [ %.promoted16, %60 ], [ %90, %97 ]
  %75 = phi <2 x double> [ %.promoted14, %60 ], [ %87, %97 ]
  %76 = phi <2 x double> [ %.promoted12, %60 ], [ %84, %97 ]
  %storemerge1 = phi <2 x double> [ %61, %60 ], [ %99, %97 ]
  store <2 x double> %storemerge1, ptr %16, align 16
  %77 = load double, ptr %16, align 16
  %78 = fcmp ugt double %77, %63
  br i1 %78, label %100, label %79

79:                                               ; preds = %71
  %80 = load <2 x double>, ptr %16, align 16
  %81 = fadd <2 x double> %80, %64
  %82 = fmul <2 x double> %80, %81
  %83 = fdiv <2 x double> %64, %82
  %84 = fadd <2 x double> %76, %83
  %85 = load <2 x double>, ptr %16, align 16
  %86 = fdiv <2 x double> %65, %85
  %87 = fadd <2 x double> %75, %86
  %88 = fmul <2 x double> %85, %85
  %89 = fdiv <2 x double> %65, %88
  %90 = fadd <2 x double> %74, %89
  %91 = load <2 x double>, ptr %16, align 16
  %92 = fdiv <2 x double> %66, %91
  %93 = fadd <2 x double> %73, %92
  %94 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %67, <2 x double> %91, <2 x double> %69)
  %95 = fdiv <2 x double> %66, %94
  %96 = fadd <2 x double> %72, %95
  br label %97

97:                                               ; preds = %79
  %98 = load <2 x double>, ptr %16, align 16
  %99 = fadd <2 x double> %98, %70
  br label %71, !llvm.loop !9

100:                                              ; preds = %71
  %.lcssa21 = phi <2 x double> [ %72, %71 ]
  %.lcssa19 = phi <2 x double> [ %73, %71 ]
  %.lcssa17 = phi <2 x double> [ %74, %71 ]
  %.lcssa15 = phi <2 x double> [ %75, %71 ]
  %.lcssa13 = phi <2 x double> [ %76, %71 ]
  store <2 x double> %.lcssa13, ptr %9, align 16
  store <2 x double> %.lcssa15, ptr %7, align 16
  store <2 x double> %.lcssa17, ptr %8, align 16
  store <2 x double> %.lcssa19, ptr %10, align 16
  store <2 x double> %.lcssa21, ptr %11, align 16
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
