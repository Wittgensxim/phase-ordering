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
  %6 = load ptr, ptr %2, align 8
  %.promoted3 = load i32, ptr %4, align 4
  %.promoted5 = load i32, ptr %5, align 4
  %.promoted = load i32, ptr %3, align 4
  %7 = icmp sle i32 %.promoted3, 40
  br i1 %7, label %.lr.ph, label %30

.lr.ph:                                           ; preds = %1
  br label %8

8:                                                ; preds = %.lr.ph, %27
  %9 = phi i32 [ %.promoted3, %.lr.ph ], [ %28, %27 ]
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [41 x double], ptr %6, i64 %10
  br label %12

12:                                               ; preds = %8, %23
  %13 = phi i32 [ 1, %8 ], [ %24, %23 ]
  %14 = call i32 @Rand()
  %15 = sdiv i32 %14, 120
  %16 = mul nsw i32 %15, 120
  %17 = sub nsw i32 %14, %16
  %18 = sub nsw i32 %17, 60
  %19 = sitofp i32 %18 to double
  %20 = fdiv double %19, 3.000000e+00
  %21 = sext i32 %13 to i64
  %22 = getelementptr inbounds [41 x double], ptr %11, i64 0, i64 %21
  store double %20, ptr %22, align 8
  br label %23

23:                                               ; preds = %12
  %24 = add nsw i32 %13, 1
  %25 = icmp sle i32 %24, 40
  br i1 %25, label %12, label %26, !llvm.loop !7

26:                                               ; preds = %23
  %.lcssa2 = phi i32 [ %14, %23 ]
  %.lcssa = phi i32 [ %24, %23 ]
  br label %27

27:                                               ; preds = %26
  %28 = add nsw i32 %9, 1
  %29 = icmp sle i32 %28, 40
  br i1 %29, label %8, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %27
  %split = phi i32 [ %.lcssa2, %27 ]
  %split8 = phi i32 [ %.lcssa, %27 ]
  %split9 = phi i32 [ %28, %27 ]
  br label %30

30:                                               ; preds = %._crit_edge, %1
  %.lcssa27.lcssa = phi i32 [ %split, %._crit_edge ], [ %.promoted, %1 ]
  %.lcssa6.lcssa = phi i32 [ %split8, %._crit_edge ], [ %.promoted5, %1 ]
  %.lcssa4 = phi i32 [ %split9, %._crit_edge ], [ %.promoted3, %1 ]
  store i32 %.lcssa4, ptr %4, align 4
  store i32 %.lcssa6.lcssa, ptr %5, align 4
  store i32 %.lcssa27.lcssa, ptr %3, align 4
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
  %13 = load ptr, ptr %6, align 8
  %14 = load ptr, ptr %7, align 8
  %15 = load i32, ptr %9, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [41 x double], ptr %14, i64 %16
  %18 = load ptr, ptr %8, align 8
  %19 = load i32, ptr %10, align 4
  %20 = sext i32 %19 to i64
  %invariant.gep = getelementptr [41 x double], ptr %18, i64 0, i64 %20
  %21 = load ptr, ptr %6, align 8
  %.promoted = load i32, ptr %11, align 4
  %22 = icmp sle i32 %.promoted, 40
  br i1 %22, label %.lr.ph, label %35

.lr.ph:                                           ; preds = %5
  br label %23

23:                                               ; preds = %.lr.ph, %32
  %24 = phi i32 [ %.promoted, %.lr.ph ], [ %33, %32 ]
  %25 = load double, ptr %13, align 8
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds [41 x double], ptr %17, i64 0, i64 %26
  %28 = load double, ptr %27, align 8
  %29 = sext i32 %24 to i64
  %gep = getelementptr [41 x double], ptr %invariant.gep, i64 %29
  %30 = load double, ptr %gep, align 8
  %31 = call double @llvm.fmuladd.f64(double %28, double %30, double %25)
  store double %31, ptr %21, align 8
  br label %32

32:                                               ; preds = %23
  %33 = add nsw i32 %24, 1
  %34 = icmp sle i32 %33, 40
  br i1 %34, label %23, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %32
  %split = phi i32 [ %33, %32 ]
  br label %35

35:                                               ; preds = %._crit_edge, %5
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %.promoted, %5 ]
  store i32 %.lcssa, ptr %11, align 4
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
  %.promoted1 = load i32, ptr %3, align 4
  %.promoted3 = load i32, ptr %4, align 4
  %5 = icmp sle i32 %.promoted1, 40
  br i1 %5, label %.lr.ph, label %21

.lr.ph:                                           ; preds = %1
  br label %6

6:                                                ; preds = %.lr.ph, %18
  %7 = phi i32 [ %.promoted1, %.lr.ph ], [ %19, %18 ]
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [41 x [41 x double]], ptr @rmr, i64 0, i64 %8
  br label %10

10:                                               ; preds = %6, %14
  %11 = phi i32 [ 1, %6 ], [ %15, %14 ]
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [41 x double], ptr %9, i64 0, i64 %12
  call void @rInnerproduct(ptr noundef %13, ptr noundef @rma, ptr noundef @rmb, i32 noundef %7, i32 noundef %11)
  br label %14

14:                                               ; preds = %10
  %15 = add nsw i32 %11, 1
  %16 = icmp sle i32 %15, 40
  br i1 %16, label %10, label %17, !llvm.loop !11

17:                                               ; preds = %14
  %.lcssa = phi i32 [ %15, %14 ]
  br label %18

18:                                               ; preds = %17
  %19 = add nsw i32 %7, 1
  %20 = icmp sle i32 %19, 40
  br i1 %20, label %6, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %18
  %split = phi i32 [ %.lcssa, %18 ]
  %split5 = phi i32 [ %19, %18 ]
  br label %21

21:                                               ; preds = %._crit_edge, %1
  %.lcssa4.lcssa = phi i32 [ %split, %._crit_edge ], [ %.promoted3, %1 ]
  %.lcssa2 = phi i32 [ %split5, %._crit_edge ], [ %.promoted1, %1 ]
  store i32 %.lcssa2, ptr %3, align 4
  store i32 %.lcssa4.lcssa, ptr %4, align 4
  %22 = load i32, ptr %2, align 4
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [41 x [41 x double]], ptr @rmr, i64 0, i64 %24
  %26 = load i32, ptr %2, align 4
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [41 x double], ptr %25, i64 0, i64 %28
  %30 = load double, ptr %29, align 8
  %31 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %30)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  %.promoted = load i32, ptr %2, align 4
  %3 = icmp slt i32 %.promoted, 10
  br i1 %3, label %.lr.ph, label %9

.lr.ph:                                           ; preds = %0
  br label %4

4:                                                ; preds = %.lr.ph, %6
  %5 = phi i32 [ %.promoted, %.lr.ph ], [ %7, %6 ]
  call void @Mm(i32 noundef %5)
  br label %6

6:                                                ; preds = %4
  %7 = add nsw i32 %5, 1
  %8 = icmp slt i32 %7, 10
  br i1 %8, label %4, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %6
  %split = phi i32 [ %7, %6 ]
  br label %9

9:                                                ; preds = %._crit_edge, %0
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %.promoted, %0 ]
  store i32 %.lcssa, ptr %2, align 4
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
