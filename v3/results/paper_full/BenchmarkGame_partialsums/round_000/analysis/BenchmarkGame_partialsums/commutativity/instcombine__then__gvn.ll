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
  %3 = bitcast <2 x double> %0 to i128
  %4 = trunc i128 %3 to i64
  %5 = bitcast i64 %4 to double
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = lshr i128 %3, 64
  %8 = trunc i128 %7 to i64
  %9 = bitcast i64 %8 to double
  %10 = fadd double %5, %9
  ret double %10
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
  store <2 x double> %22, ptr %11, align 16
  store <2 x double> %22, ptr %10, align 16
  store <2 x double> %22, ptr %9, align 16
  store <2 x double> %22, ptr %8, align 16
  store <2 x double> %22, ptr %7, align 16
  br label %28

28:                                               ; preds = %35, %2
  %29 = phi double [ 0.000000e+00, %2 ], [ %53, %35 ]
  %30 = phi double [ 0.000000e+00, %2 ], [ %49, %35 ]
  %31 = phi double [ 0.000000e+00, %2 ], [ %41, %35 ]
  %32 = phi double [ 0.000000e+00, %2 ], [ %38, %35 ]
  %33 = phi double [ 1.000000e+00, %2 ], [ %54, %35 ]
  store double %33, ptr %18, align 8
  %34 = fcmp ugt double %33, 2.500000e+06
  br i1 %34, label %55, label %35

35:                                               ; preds = %28
  %36 = fadd double %33, -1.000000e+00
  %37 = call double @pow(double noundef f0x3FE5555555555555, double noundef %36) #4
  %38 = fadd double %32, %37
  store double %38, ptr %3, align 8
  %39 = call double @sqrt(double noundef %33) #4
  %40 = fdiv double 1.000000e+00, %39
  %41 = fadd double %31, %40
  store double %41, ptr %4, align 8
  %42 = fmul double %33, %33
  %43 = fmul double %42, %33
  store double %43, ptr %19, align 8
  %44 = call double @sin(double noundef %33) #4
  %45 = call double @cos(double noundef %33) #4
  store double %45, ptr %20, align 8
  %46 = fmul double %43, %44
  %47 = fmul double %46, %44
  %48 = fdiv double 1.000000e+00, %47
  %49 = fadd double %30, %48
  store double %49, ptr %5, align 8
  %50 = fmul double %43, %45
  %51 = fmul double %50, %45
  %52 = fdiv double 1.000000e+00, %51
  %53 = fadd double %29, %52
  store double %53, ptr %6, align 8
  %54 = fadd double %33, 1.000000e+00
  br label %28, !llvm.loop !7

55:                                               ; preds = %28
  br label %56

56:                                               ; preds = %67, %55
  %57 = phi <2 x double> [ %22, %55 ], [ %82, %67 ]
  %58 = phi <2 x double> [ %22, %55 ], [ %78, %67 ]
  %59 = phi <2 x double> [ %22, %55 ], [ %76, %67 ]
  %60 = phi <2 x double> [ %22, %55 ], [ %73, %67 ]
  %61 = phi <2 x double> [ %22, %55 ], [ %71, %67 ]
  %62 = phi <2 x double> [ %26, %55 ], [ %83, %67 ]
  store <2 x double> %62, ptr %16, align 16
  %63 = bitcast <2 x double> %62 to i128
  %64 = trunc i128 %63 to i64
  %65 = bitcast i64 %64 to double
  %66 = fcmp ugt double %65, 2.500000e+06
  br i1 %66, label %84, label %67

67:                                               ; preds = %56
  %68 = fadd <2 x double> %62, %23
  %69 = fmul <2 x double> %62, %68
  %70 = fdiv <2 x double> %23, %69
  %71 = fadd <2 x double> %61, %70
  store <2 x double> %71, ptr %9, align 16
  %72 = fdiv <2 x double> %23, %62
  %73 = fadd <2 x double> %60, %72
  store <2 x double> %73, ptr %7, align 16
  %74 = fmul <2 x double> %62, %62
  %75 = fdiv <2 x double> %23, %74
  %76 = fadd <2 x double> %59, %75
  store <2 x double> %76, ptr %8, align 16
  %77 = fdiv <2 x double> %27, %62
  %78 = fadd <2 x double> %58, %77
  store <2 x double> %78, ptr %10, align 16
  %79 = fneg <2 x double> %23
  %80 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %24, <2 x double> %62, <2 x double> %79)
  %81 = fdiv <2 x double> %27, %80
  %82 = fadd <2 x double> %57, %81
  store <2 x double> %82, ptr %11, align 16
  %83 = fadd <2 x double> %62, %24
  br label %56, !llvm.loop !9

84:                                               ; preds = %56
  %85 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %32, ptr noundef nonnull @.str.1) #4
  %86 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %31, ptr noundef nonnull @.str.2) #4
  %87 = call double @sum_vec(<2 x double> noundef %61)
  %88 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %87, ptr noundef nonnull @.str.3) #4
  %89 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %30, ptr noundef nonnull @.str.4) #4
  %90 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %29, ptr noundef nonnull @.str.5) #4
  %91 = call double @sum_vec(<2 x double> noundef %60)
  %92 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %91, ptr noundef nonnull @.str.6) #4
  %93 = call double @sum_vec(<2 x double> noundef %59)
  %94 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %93, ptr noundef nonnull @.str.7) #4
  %95 = call double @sum_vec(<2 x double> noundef %58)
  %96 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %95, ptr noundef nonnull @.str.8) #4
  %97 = call double @sum_vec(<2 x double> noundef %57)
  %98 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %97, ptr noundef nonnull @.str.9) #4
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
