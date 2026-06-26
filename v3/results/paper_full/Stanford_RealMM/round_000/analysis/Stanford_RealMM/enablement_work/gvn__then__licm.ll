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
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @rInitmatrix(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 1, ptr %4, align 4
  %.promoted3 = load i32, ptr %5, align 4
  %.promoted5 = load i32, ptr %3, align 1
  %.promoted = load i32, ptr %4, align 1
  br label %6

6:                                                ; preds = %29, %1
  %7 = phi i32 [ %30, %29 ], [ %.promoted, %1 ]
  %.lcssa6 = phi i32 [ %.lcssa, %29 ], [ %.promoted5, %1 ]
  %.lcssa24 = phi i32 [ %.lcssa2, %29 ], [ %.promoted3, %1 ]
  %8 = phi i32 [ %30, %29 ], [ 1, %1 ]
  %9 = icmp sle i32 %8, 40
  br i1 %9, label %10, label %31

10:                                               ; preds = %6
  %11 = sext i32 %8 to i64
  %12 = getelementptr inbounds [41 x double], ptr %0, i64 %11
  br label %13

13:                                               ; preds = %18, %10
  %14 = phi i32 [ %28, %18 ], [ 1, %10 ]
  %15 = phi i32 [ %19, %18 ], [ %.lcssa6, %10 ]
  %16 = phi i32 [ %28, %18 ], [ 1, %10 ]
  %17 = icmp sle i32 %16, 40
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = call i32 @Rand()
  %20 = sdiv i32 %19, 120
  %21 = mul nsw i32 %20, 120
  %22 = sub nsw i32 %19, %21
  %23 = sub nsw i32 %22, 60
  %24 = sitofp i32 %23 to double
  %25 = fdiv double %24, 3.000000e+00
  %26 = sext i32 %16 to i64
  %27 = getelementptr inbounds [41 x double], ptr %12, i64 0, i64 %26
  store double %25, ptr %27, align 8
  %28 = add nsw i32 %16, 1
  br label %13, !llvm.loop !7

29:                                               ; preds = %13
  %.lcssa2 = phi i32 [ %14, %13 ]
  %.lcssa = phi i32 [ %15, %13 ]
  %30 = add nsw i32 %8, 1
  br label %6, !llvm.loop !9

31:                                               ; preds = %6
  %.lcssa7 = phi i32 [ %7, %6 ]
  %.lcssa6.lcssa = phi i32 [ %.lcssa6, %6 ]
  %.lcssa24.lcssa = phi i32 [ %.lcssa24, %6 ]
  store i32 %.lcssa24.lcssa, ptr %5, align 4
  store i32 %.lcssa6.lcssa, ptr %3, align 1
  store i32 %.lcssa7, ptr %4, align 1
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
  store double 0.000000e+00, ptr %0, align 8
  store i32 1, ptr %11, align 4
  %12 = sext i32 %3 to i64
  %13 = getelementptr inbounds [41 x double], ptr %1, i64 %12
  %14 = sext i32 %4 to i64
  %invariant.gep = getelementptr [41 x double], ptr %2, i64 0, i64 %14
  br label %15

15:                                               ; preds = %20, %5
  %16 = phi i32 [ %26, %20 ], [ poison, %5 ]
  %17 = phi double [ %25, %20 ], [ 0.000000e+00, %5 ]
  %18 = phi i32 [ %26, %20 ], [ 1, %5 ]
  %19 = icmp sle i32 %18, 40
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = sext i32 %18 to i64
  %22 = getelementptr inbounds [41 x double], ptr %13, i64 0, i64 %21
  %23 = load double, ptr %22, align 8
  %gep = getelementptr [41 x double], ptr %invariant.gep, i64 %21
  %24 = load double, ptr %gep, align 8
  %25 = call double @llvm.fmuladd.f64(double %23, double %24, double %17)
  store double %25, ptr %0, align 8
  %26 = add nsw i32 %18, 1
  br label %15, !llvm.loop !10

27:                                               ; preds = %15
  %.lcssa = phi i32 [ %16, %15 ]
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
  %.promoted1 = load i32, ptr %4, align 4
  %.promoted = load i32, ptr %3, align 1
  br label %5

5:                                                ; preds = %20, %1
  %6 = phi i32 [ %21, %20 ], [ %.promoted, %1 ]
  %.lcssa2 = phi i32 [ %.lcssa, %20 ], [ %.promoted1, %1 ]
  %7 = phi i32 [ %21, %20 ], [ 1, %1 ]
  %8 = icmp sle i32 %7, 40
  br i1 %8, label %9, label %22

9:                                                ; preds = %5
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds [41 x [41 x double]], ptr @rmr, i64 0, i64 %10
  br label %12

12:                                               ; preds = %16, %9
  %13 = phi i32 [ %19, %16 ], [ 1, %9 ]
  %14 = phi i32 [ %19, %16 ], [ 1, %9 ]
  %15 = icmp sle i32 %14, 40
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = sext i32 %14 to i64
  %18 = getelementptr inbounds [41 x double], ptr %11, i64 0, i64 %17
  call void @rInnerproduct(ptr noundef %18, ptr noundef @rma, ptr noundef @rmb, i32 noundef %7, i32 noundef %14)
  %19 = add nsw i32 %14, 1
  br label %12, !llvm.loop !11

20:                                               ; preds = %12
  %.lcssa = phi i32 [ %13, %12 ]
  %21 = add nsw i32 %7, 1
  br label %5, !llvm.loop !12

22:                                               ; preds = %5
  %.lcssa3 = phi i32 [ %6, %5 ]
  %.lcssa2.lcssa = phi i32 [ %.lcssa2, %5 ]
  store i32 %.lcssa2.lcssa, ptr %4, align 4
  store i32 %.lcssa3, ptr %3, align 1
  %23 = add nsw i32 %0, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [41 x [41 x double]], ptr @rmr, i64 0, i64 %24
  %26 = getelementptr inbounds [41 x double], ptr %25, i64 0, i64 %24
  %27 = load double, ptr %26, align 8
  %28 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %27)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  %.promoted = load i32, ptr %2, align 1
  br label %3

3:                                                ; preds = %7, %0
  %4 = phi i32 [ %8, %7 ], [ %.promoted, %0 ]
  %5 = phi i32 [ %8, %7 ], [ 0, %0 ]
  %6 = icmp slt i32 %5, 10
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  call void @Mm(i32 noundef %5)
  %8 = add nsw i32 %5, 1
  br label %3, !llvm.loop !13

9:                                                ; preds = %3
  %.lcssa = phi i32 [ %4, %3 ]
  store i32 %.lcssa, ptr %2, align 1
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
