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
  %3 = bitcast <2 x double> %0 to i128
  %4 = trunc i128 %3 to i64
  %5 = bitcast i64 %4 to double
  %6 = getelementptr inbounds double, ptr %2, i64 1
  %7 = lshr i128 %3, 64
  %8 = trunc i128 %7 to i64
  %9 = bitcast i64 %8 to double
  %10 = fadd double %5, %9
  ret double %10
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

10:                                               ; preds = %12, %2
  %.06 = phi double [ 0.000000e+00, %2 ], [ %30, %12 ]
  %.05 = phi double [ 0.000000e+00, %2 ], [ %26, %12 ]
  %.04 = phi double [ 0.000000e+00, %2 ], [ %18, %12 ]
  %.03 = phi double [ 0.000000e+00, %2 ], [ %15, %12 ]
  %.0 = phi double [ 1.000000e+00, %2 ], [ %31, %12 ]
  %11 = fcmp ole double %.0, 2.500000e+06
  br i1 %11, label %12, label %32

12:                                               ; preds = %10
  %13 = fsub double %.0, 1.000000e+00
  %14 = call double @pow(double noundef f0x3FE5555555555555, double noundef %13) #4
  %15 = fadd double %.03, %14
  %16 = call double @sqrt(double noundef %.0) #4
  %17 = fdiv double 1.000000e+00, %16
  %18 = fadd double %.04, %17
  %19 = fmul double %.0, %.0
  %20 = fmul double %19, %.0
  %21 = call double @sin(double noundef %.0) #4
  %22 = call double @cos(double noundef %.0) #4
  %23 = fmul double %20, %21
  %24 = fmul double %23, %21
  %25 = fdiv double 1.000000e+00, %24
  %26 = fadd double %.05, %25
  %27 = fmul double %20, %22
  %28 = fmul double %27, %22
  %29 = fdiv double 1.000000e+00, %28
  %30 = fadd double %.06, %29
  %31 = fadd double %.0, 1.000000e+00
  br label %10, !llvm.loop !7

32:                                               ; preds = %10
  store <2 x double> %8, ptr %3, align 16
  %33 = bitcast <2 x double> %8 to i128
  %34 = trunc i128 %33 to i64
  %35 = bitcast i64 %34 to double
  br label %36

36:                                               ; preds = %40, %32
  %37 = phi <2 x double> [ %8, %32 ], [ %56, %40 ]
  %38 = phi double [ %35, %32 ], [ %59, %40 ]
  %.09 = phi <2 x double> [ %4, %32 ], [ %44, %40 ]
  %.08 = phi <2 x double> [ %4, %32 ], [ %49, %40 ]
  %.07 = phi <2 x double> [ %4, %32 ], [ %46, %40 ]
  %.02 = phi <2 x double> [ %4, %32 ], [ %51, %40 ]
  %.01 = phi <2 x double> [ %4, %32 ], [ %55, %40 ]
  %39 = fcmp ole double %38, 2.500000e+06
  br i1 %39, label %40, label %60

40:                                               ; preds = %36
  %41 = fadd <2 x double> %37, %5
  %42 = fmul <2 x double> %37, %41
  %43 = fdiv <2 x double> %5, %42
  %44 = fadd <2 x double> %.09, %43
  %45 = fdiv <2 x double> %5, %37
  %46 = fadd <2 x double> %.07, %45
  %47 = fmul <2 x double> %37, %37
  %48 = fdiv <2 x double> %5, %47
  %49 = fadd <2 x double> %.08, %48
  %50 = fdiv <2 x double> %9, %37
  %51 = fadd <2 x double> %.02, %50
  %52 = fneg <2 x double> %5
  %53 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %6, <2 x double> %37, <2 x double> %52)
  %54 = fdiv <2 x double> %9, %53
  %55 = fadd <2 x double> %.01, %54
  %56 = fadd <2 x double> %37, %6
  store <2 x double> %56, ptr %3, align 16
  %57 = bitcast <2 x double> %56 to i128
  %58 = trunc i128 %57 to i64
  %59 = bitcast i64 %58 to double
  br label %36, !llvm.loop !9

60:                                               ; preds = %36
  %61 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.03, ptr noundef @.str.1)
  %62 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.04, ptr noundef @.str.2)
  %63 = call double @sum_vec(<2 x double> noundef %.09)
  %64 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %63, ptr noundef @.str.3)
  %65 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.05, ptr noundef @.str.4)
  %66 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %.06, ptr noundef @.str.5)
  %67 = call double @sum_vec(<2 x double> noundef %.07)
  %68 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %67, ptr noundef @.str.6)
  %69 = call double @sum_vec(<2 x double> noundef %.08)
  %70 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %69, ptr noundef @.str.7)
  %71 = call double @sum_vec(<2 x double> noundef %.02)
  %72 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %71, ptr noundef @.str.8)
  %73 = call double @sum_vec(<2 x double> noundef %.01)
  %74 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %73, ptr noundef @.str.9)
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
