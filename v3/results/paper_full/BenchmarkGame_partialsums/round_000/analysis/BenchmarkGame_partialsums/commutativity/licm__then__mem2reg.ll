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
  %4 = getelementptr inbounds double, ptr %3, i64 1
  store double %1, ptr %4, align 8
  %5 = load <2 x double>, ptr %3, align 16
  ret <2 x double> %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @sum_vec(<2 x double> noundef %0) #0 {
  %2 = alloca <2 x double>, align 16
  store <2 x double> %0, ptr %2, align 16
  %3 = load double, ptr %2, align 8
  %4 = getelementptr inbounds double, ptr %2, i64 1
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
  %10 = sitofp i32 2500000 to double
  br label %11

11:                                               ; preds = %40, %2
  %12 = phi double [ %39, %40 ], [ 0.000000e+00, %2 ]
  %13 = phi double [ %35, %40 ], [ 0.000000e+00, %2 ]
  %14 = phi double [ %31, %40 ], [ undef, %2 ]
  %15 = phi double [ %30, %40 ], [ undef, %2 ]
  %16 = phi double [ %29, %40 ], [ undef, %2 ]
  %17 = phi double [ %27, %40 ], [ 0.000000e+00, %2 ]
  %18 = phi double [ %24, %40 ], [ 0.000000e+00, %2 ]
  %19 = phi double [ %41, %40 ], [ 1.000000e+00, %2 ]
  %20 = fcmp ole double %19, %10
  br i1 %20, label %21, label %42

21:                                               ; preds = %11
  %22 = fsub double %19, 1.000000e+00
  %23 = call double @pow(double noundef f0x3FE5555555555555, double noundef %22) #4
  %24 = fadd double %18, %23
  %25 = call double @sqrt(double noundef %19) #4
  %26 = fdiv double 1.000000e+00, %25
  %27 = fadd double %17, %26
  %28 = fmul double %19, %19
  %29 = fmul double %28, %19
  %30 = call double @sin(double noundef %19) #4
  %31 = call double @cos(double noundef %19) #4
  %32 = fmul double %29, %30
  %33 = fmul double %32, %30
  %34 = fdiv double 1.000000e+00, %33
  %35 = fadd double %13, %34
  %36 = fmul double %29, %31
  %37 = fmul double %36, %31
  %38 = fdiv double 1.000000e+00, %37
  %39 = fadd double %12, %38
  br label %40

40:                                               ; preds = %21
  %41 = fadd double %19, 1.000000e+00
  br label %11, !llvm.loop !7

42:                                               ; preds = %11
  %.lcssa14 = phi double [ %12, %11 ]
  %.lcssa12 = phi double [ %13, %11 ]
  %.lcssa10 = phi double [ %14, %11 ]
  %.lcssa8 = phi double [ %15, %11 ]
  %.lcssa6 = phi double [ %16, %11 ]
  %.lcssa4 = phi double [ %17, %11 ]
  %.lcssa2 = phi double [ %18, %11 ]
  %.lcssa = phi double [ %19, %11 ]
  store <2 x double> %8, ptr %3, align 16
  %43 = sitofp i32 2500000 to double
  %44 = fneg <2 x double> %5
  br label %45

45:                                               ; preds = %75, %42
  %46 = phi <2 x double> [ %74, %75 ], [ %4, %42 ]
  %47 = phi <2 x double> [ %70, %75 ], [ %4, %42 ]
  %48 = phi <2 x double> [ %67, %75 ], [ %4, %42 ]
  %49 = phi <2 x double> [ %62, %75 ], [ %4, %42 ]
  %50 = phi <2 x double> [ %59, %75 ], [ %4, %42 ]
  %51 = load double, ptr %3, align 16
  %52 = fcmp ole double %51, %43
  br i1 %52, label %53, label %78

53:                                               ; preds = %45
  %54 = load <2 x double>, ptr %3, align 16
  %55 = load <2 x double>, ptr %3, align 16
  %56 = fadd <2 x double> %55, %5
  %57 = fmul <2 x double> %54, %56
  %58 = fdiv <2 x double> %5, %57
  %59 = fadd <2 x double> %50, %58
  %60 = load <2 x double>, ptr %3, align 16
  %61 = fdiv <2 x double> %5, %60
  %62 = fadd <2 x double> %49, %61
  %63 = load <2 x double>, ptr %3, align 16
  %64 = load <2 x double>, ptr %3, align 16
  %65 = fmul <2 x double> %63, %64
  %66 = fdiv <2 x double> %5, %65
  %67 = fadd <2 x double> %48, %66
  %68 = load <2 x double>, ptr %3, align 16
  %69 = fdiv <2 x double> %9, %68
  %70 = fadd <2 x double> %47, %69
  %71 = load <2 x double>, ptr %3, align 16
  %72 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %6, <2 x double> %71, <2 x double> %44)
  %73 = fdiv <2 x double> %9, %72
  %74 = fadd <2 x double> %46, %73
  br label %75

75:                                               ; preds = %53
  %76 = load <2 x double>, ptr %3, align 16
  %77 = fadd <2 x double> %76, %6
  store <2 x double> %77, ptr %3, align 16
  br label %45, !llvm.loop !9

78:                                               ; preds = %45
  %.lcssa24 = phi <2 x double> [ %46, %45 ]
  %.lcssa22 = phi <2 x double> [ %47, %45 ]
  %.lcssa20 = phi <2 x double> [ %48, %45 ]
  %.lcssa18 = phi <2 x double> [ %49, %45 ]
  %.lcssa16 = phi <2 x double> [ %50, %45 ]
  %79 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.lcssa2, ptr noundef @.str.1)
  %80 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.lcssa4, ptr noundef @.str.2)
  %81 = call double @sum_vec(<2 x double> noundef %.lcssa16)
  %82 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %81, ptr noundef @.str.3)
  %83 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.lcssa12, ptr noundef @.str.4)
  %84 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.lcssa14, ptr noundef @.str.5)
  %85 = call double @sum_vec(<2 x double> noundef %.lcssa18)
  %86 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %85, ptr noundef @.str.6)
  %87 = call double @sum_vec(<2 x double> noundef %.lcssa20)
  %88 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %87, ptr noundef @.str.7)
  %89 = call double @sum_vec(<2 x double> noundef %.lcssa22)
  %90 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %89, ptr noundef @.str.8)
  %91 = call double @sum_vec(<2 x double> noundef %.lcssa24)
  %92 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %91, ptr noundef @.str.9)
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
