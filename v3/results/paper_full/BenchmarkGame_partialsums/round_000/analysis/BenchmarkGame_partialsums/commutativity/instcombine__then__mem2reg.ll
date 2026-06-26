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
  %3 = alloca <2 x double>, align 16
  %4 = call <2 x double> @make_vec(double noundef 0.000000e+00, double noundef 0.000000e+00)
  %5 = call <2 x double> @make_vec(double noundef 1.000000e+00, double noundef 1.000000e+00)
  %6 = call <2 x double> @make_vec(double noundef 2.000000e+00, double noundef 2.000000e+00)
  %7 = call <2 x double> @make_vec(double noundef -1.000000e+00, double noundef -1.000000e+00)
  %8 = call <2 x double> @make_vec(double noundef 1.000000e+00, double noundef 2.000000e+00)
  %9 = call <2 x double> @make_vec(double noundef 1.000000e+00, double noundef -1.000000e+00)
  br label %10

10:                                               ; preds = %32, %2
  %.04 = phi double [ 0.000000e+00, %2 ], [ %31, %32 ]
  %.03 = phi double [ 0.000000e+00, %2 ], [ %27, %32 ]
  %.02 = phi double [ 0.000000e+00, %2 ], [ %19, %32 ]
  %.0 = phi double [ 0.000000e+00, %2 ], [ %16, %32 ]
  %storemerge = phi double [ 1.000000e+00, %2 ], [ %33, %32 ]
  %11 = sitofp i32 2500000 to double
  %12 = fcmp ugt double %storemerge, %11
  br i1 %12, label %34, label %13

13:                                               ; preds = %10
  %14 = fadd double %storemerge, -1.000000e+00
  %15 = call double @pow(double noundef f0x3FE5555555555555, double noundef %14) #4
  %16 = fadd double %.0, %15
  %17 = call double @sqrt(double noundef %storemerge) #4
  %18 = fdiv double 1.000000e+00, %17
  %19 = fadd double %.02, %18
  %20 = fmul double %storemerge, %storemerge
  %21 = fmul double %20, %storemerge
  %22 = call double @sin(double noundef %storemerge) #4
  %23 = call double @cos(double noundef %storemerge) #4
  %24 = fmul double %21, %22
  %25 = fmul double %24, %22
  %26 = fdiv double 1.000000e+00, %25
  %27 = fadd double %.03, %26
  %28 = fmul double %21, %23
  %29 = fmul double %28, %23
  %30 = fdiv double 1.000000e+00, %29
  %31 = fadd double %.04, %30
  br label %32

32:                                               ; preds = %13
  %33 = fadd double %storemerge, 1.000000e+00
  br label %10, !llvm.loop !7

34:                                               ; preds = %10
  br label %35

35:                                               ; preds = %58, %34
  %.09 = phi <2 x double> [ %4, %34 ], [ %57, %58 ]
  %.08 = phi <2 x double> [ %4, %34 ], [ %53, %58 ]
  %.07 = phi <2 x double> [ %4, %34 ], [ %44, %58 ]
  %.06 = phi <2 x double> [ %4, %34 ], [ %50, %58 ]
  %.05 = phi <2 x double> [ %4, %34 ], [ %47, %58 ]
  %storemerge1 = phi <2 x double> [ %8, %34 ], [ %60, %58 ]
  store <2 x double> %storemerge1, ptr %3, align 16
  %36 = load double, ptr %3, align 16
  %37 = sitofp i32 2500000 to double
  %38 = fcmp ugt double %36, %37
  br i1 %38, label %61, label %39

39:                                               ; preds = %35
  %40 = load <2 x double>, ptr %3, align 16
  %41 = fadd <2 x double> %40, %5
  %42 = fmul <2 x double> %40, %41
  %43 = fdiv <2 x double> %5, %42
  %44 = fadd <2 x double> %.07, %43
  %45 = load <2 x double>, ptr %3, align 16
  %46 = fdiv <2 x double> %5, %45
  %47 = fadd <2 x double> %.05, %46
  %48 = fmul <2 x double> %45, %45
  %49 = fdiv <2 x double> %5, %48
  %50 = fadd <2 x double> %.06, %49
  %51 = load <2 x double>, ptr %3, align 16
  %52 = fdiv <2 x double> %9, %51
  %53 = fadd <2 x double> %.08, %52
  %54 = fneg <2 x double> %5
  %55 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %6, <2 x double> %51, <2 x double> %54)
  %56 = fdiv <2 x double> %9, %55
  %57 = fadd <2 x double> %.09, %56
  br label %58

58:                                               ; preds = %39
  %59 = load <2 x double>, ptr %3, align 16
  %60 = fadd <2 x double> %59, %6
  br label %35, !llvm.loop !9

61:                                               ; preds = %35
  %62 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %.0, ptr noundef nonnull @.str.1) #4
  %63 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %.02, ptr noundef nonnull @.str.2) #4
  %64 = call double @sum_vec(<2 x double> noundef %.07)
  %65 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %64, ptr noundef nonnull @.str.3) #4
  %66 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %.03, ptr noundef nonnull @.str.4) #4
  %67 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %.04, ptr noundef nonnull @.str.5) #4
  %68 = call double @sum_vec(<2 x double> noundef %.05)
  %69 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %68, ptr noundef nonnull @.str.6) #4
  %70 = call double @sum_vec(<2 x double> noundef %.06)
  %71 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %70, ptr noundef nonnull @.str.7) #4
  %72 = call double @sum_vec(<2 x double> noundef %.08)
  %73 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %72, ptr noundef nonnull @.str.8) #4
  %74 = call double @sum_vec(<2 x double> noundef %.09)
  %75 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %74, ptr noundef nonnull @.str.9) #4
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
