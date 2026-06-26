; ModuleID = 'results\paper_full\Stanford_RealMM\Stanford_RealMM.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/RealMM.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.element = type { i32, i32 }
%struct.complex = type { double, double }

@seed = dso_local global i32 0, align 4
@rma = dso_local global [41 x [41 x double]] zeroinitializer, align 16
@rmb = dso_local global [41 x [41 x double]] zeroinitializer, align 16
@rmr = dso_local global [41 x [41 x double]] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@value = dso_local global double 0.000000e+00, align 8
@fixed = dso_local global double 0.000000e+00, align 8
@floated = dso_local global double 0.000000e+00, align 8
@permarray = dso_local global [11 x i32] zeroinitializer, align 16
@pctr = dso_local global i32 0, align 4
@tree = dso_local global ptr null, align 8
@stack = dso_local global [4 x i32] zeroinitializer, align 16
@cellspace = dso_local global [19 x %struct.element] zeroinitializer, align 16
@freelist = dso_local global i32 0, align 4
@movesdone = dso_local global i32 0, align 4
@ima = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imb = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imr = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@piececount = dso_local global [4 x i32] zeroinitializer, align 16
@class = dso_local global [13 x i32] zeroinitializer, align 16
@piecemax = dso_local global [13 x i32] zeroinitializer, align 16
@puzzl = dso_local global [512 x i32] zeroinitializer, align 16
@p = dso_local global [13 x [512 x i32]] zeroinitializer, align 16
@n = dso_local global i32 0, align 4
@kount = dso_local global i32 0, align 4
@sortlist = dso_local global [5001 x i32] zeroinitializer, align 16
@biggest = dso_local global i32 0, align 4
@littlest = dso_local global i32 0, align 4
@top = dso_local global i32 0, align 4
@z = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@w = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@e = dso_local global [130 x %struct.complex] zeroinitializer, align 16
@zr = dso_local global double 0.000000e+00, align 8
@zi = dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @Initrand() #0 {
  store i32 74755, ptr @seed, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Rand() #0 {
  %1 = load i32, ptr @seed, align 4
  %2 = mul nsw i32 %1, 1309
  %3 = add nsw i32 %2, 13849
  %4 = and i32 %3, 65535
  store i32 %4, ptr @seed, align 4
  %5 = load i32, ptr @seed, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @rInitmatrix(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 1, ptr %4, align 4
  %6 = load i32, ptr %4, align 4
  %7 = icmp sle i32 %6, 40
  br i1 %7, label %.lr.ph2, label %32

.lr.ph2:                                          ; preds = %1
  %8 = load ptr, ptr %2, align 8
  %.promoted = load i32, ptr %4, align 4
  %.promoted8 = load i32, ptr %3, align 1
  br label %9

9:                                                ; preds = %.lr.ph2, %29
  %.lcssa9 = phi i32 [ %.promoted8, %.lr.ph2 ], [ %.lcssa10, %29 ]
  %10 = phi i32 [ %.promoted, %.lr.ph2 ], [ %30, %29 ]
  %11 = icmp sle i32 1, 40
  br i1 %11, label %.lr.ph, label %28

.lr.ph:                                           ; preds = %9
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds [41 x double], ptr %8, i64 %12
  br label %14

14:                                               ; preds = %.lr.ph, %25
  %15 = phi i32 [ 1, %.lr.ph ], [ %26, %25 ]
  %16 = call i32 @Rand()
  %17 = sdiv i32 %16, 120
  %18 = mul nsw i32 %17, 120
  %19 = sub nsw i32 %16, %18
  %20 = sub nsw i32 %19, 60
  %21 = sitofp i32 %20 to double
  %22 = fdiv double %21, 3.000000e+00
  %23 = sext i32 %15 to i64
  %24 = getelementptr inbounds [41 x double], ptr %13, i64 0, i64 %23
  store double %22, ptr %24, align 8
  br label %25

25:                                               ; preds = %14
  %26 = add nsw i32 %15, 1
  %27 = icmp sle i32 %26, 40
  br i1 %27, label %14, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %25
  %.lcssa4 = phi i32 [ %26, %25 ]
  %.lcssa = phi i32 [ %16, %25 ]
  br label %28

28:                                               ; preds = %._crit_edge, %9
  %.lcssa10 = phi i32 [ %.lcssa, %._crit_edge ], [ %.lcssa9, %9 ]
  %.lcssa46 = phi i32 [ %.lcssa4, %._crit_edge ], [ 1, %9 ]
  br label %29

29:                                               ; preds = %28
  %30 = add nsw i32 %10, 1
  %31 = icmp sle i32 %30, 40
  br i1 %31, label %9, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %29
  %.lcssa10.lcssa = phi i32 [ %.lcssa10, %29 ]
  %.lcssa7 = phi i32 [ %30, %29 ]
  %.lcssa46.lcssa = phi i32 [ %.lcssa46, %29 ]
  store i32 %.lcssa46.lcssa, ptr %5, align 4
  store i32 %.lcssa7, ptr %4, align 4
  store i32 %.lcssa10.lcssa, ptr %3, align 1
  br label %32

32:                                               ; preds = %._crit_edge3, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @rInnerproduct(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store i32 %3, ptr %9, align 4
  store i32 %4, ptr %10, align 4
  %12 = load ptr, ptr %6, align 8
  store double 0.000000e+00, ptr %12, align 8
  store i32 1, ptr %11, align 4
  %13 = load i32, ptr %11, align 4
  %14 = icmp sle i32 %13, 40
  br i1 %14, label %.lr.ph, label %36

.lr.ph:                                           ; preds = %5
  %15 = load ptr, ptr %6, align 8
  %16 = load ptr, ptr %7, align 8
  %17 = load i32, ptr %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [41 x double], ptr %16, i64 %18
  %20 = load ptr, ptr %8, align 8
  %21 = load i32, ptr %10, align 4
  %22 = sext i32 %21 to i64
  %invariant.gep = getelementptr [41 x double], ptr %20, i64 0, i64 %22
  %23 = load ptr, ptr %6, align 8
  %.promoted = load i32, ptr %11, align 4
  br label %24

24:                                               ; preds = %.lr.ph, %33
  %25 = phi i32 [ %.promoted, %.lr.ph ], [ %34, %33 ]
  %26 = load double, ptr %15, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds [41 x double], ptr %19, i64 0, i64 %27
  %29 = load double, ptr %28, align 8
  %30 = sext i32 %25 to i64
  %gep = getelementptr [41 x double], ptr %invariant.gep, i64 %30
  %31 = load double, ptr %gep, align 8
  %32 = call double @llvm.fmuladd.f64(double %29, double %31, double %26)
  store double %32, ptr %23, align 8
  br label %33

33:                                               ; preds = %24
  %34 = add nsw i32 %25, 1
  %35 = icmp sle i32 %34, 40
  br i1 %35, label %24, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %33
  %.lcssa = phi i32 [ %34, %33 ]
  store i32 %.lcssa, ptr %11, align 4
  br label %36

36:                                               ; preds = %._crit_edge, %5
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Mm(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @Initrand()
  call void @rInitmatrix(ptr noundef @rma)
  call void @rInitmatrix(ptr noundef @rmb)
  store i32 1, ptr %3, align 4
  %5 = load i32, ptr %3, align 4
  %6 = icmp sle i32 %5, 40
  br i1 %6, label %.lr.ph2, label %23

.lr.ph2:                                          ; preds = %1
  %.promoted = load i32, ptr %3, align 4
  br label %7

7:                                                ; preds = %.lr.ph2, %20
  %8 = phi i32 [ %.promoted, %.lr.ph2 ], [ %21, %20 ]
  %9 = icmp sle i32 1, 40
  br i1 %9, label %.lr.ph, label %19

.lr.ph:                                           ; preds = %7
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds [41 x [41 x double]], ptr @rmr, i64 0, i64 %10
  br label %12

12:                                               ; preds = %.lr.ph, %16
  %13 = phi i32 [ 1, %.lr.ph ], [ %17, %16 ]
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [41 x double], ptr %11, i64 0, i64 %14
  call void @rInnerproduct(ptr noundef %15, ptr noundef @rma, ptr noundef @rmb, i32 noundef %8, i32 noundef %13)
  br label %16

16:                                               ; preds = %12
  %17 = add nsw i32 %13, 1
  %18 = icmp sle i32 %17, 40
  br i1 %18, label %12, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %16
  %.lcssa = phi i32 [ %17, %16 ]
  br label %19

19:                                               ; preds = %._crit_edge, %7
  %.lcssa5 = phi i32 [ %.lcssa, %._crit_edge ], [ 1, %7 ]
  br label %20

20:                                               ; preds = %19
  %21 = add nsw i32 %8, 1
  %22 = icmp sle i32 %21, 40
  br i1 %22, label %7, label %._crit_edge3, !llvm.loop !12

._crit_edge3:                                     ; preds = %20
  %.lcssa6 = phi i32 [ %21, %20 ]
  %.lcssa5.lcssa = phi i32 [ %.lcssa5, %20 ]
  store i32 %.lcssa5.lcssa, ptr %4, align 4
  store i32 %.lcssa6, ptr %3, align 4
  br label %23

23:                                               ; preds = %._crit_edge3, %1
  %24 = load i32, ptr %2, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [41 x [41 x double]], ptr @rmr, i64 0, i64 %26
  %28 = load i32, ptr %2, align 4
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [41 x double], ptr %27, i64 0, i64 %30
  %32 = load double, ptr %31, align 8
  %33 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %32)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp slt i32 %3, 10
  br i1 %4, label %.lr.ph, label %10

.lr.ph:                                           ; preds = %0
  %.promoted = load i32, ptr %2, align 4
  br label %5

5:                                                ; preds = %.lr.ph, %7
  %6 = phi i32 [ %.promoted, %.lr.ph ], [ %8, %7 ]
  call void @Mm(i32 noundef %6)
  br label %7

7:                                                ; preds = %5
  %8 = add nsw i32 %6, 1
  %9 = icmp slt i32 %8, 10
  br i1 %9, label %5, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %7
  %.lcssa = phi i32 [ %8, %7 ]
  store i32 %.lcssa, ptr %2, align 4
  br label %10

10:                                               ; preds = %._crit_edge, %0
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/RealMM.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
