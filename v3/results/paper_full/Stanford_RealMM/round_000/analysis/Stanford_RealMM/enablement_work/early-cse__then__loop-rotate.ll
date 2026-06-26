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
  %6 = load i32, ptr %4, align 4
  %7 = icmp sle i32 %6, 40
  br i1 %7, label %.lr.ph2, label %37

.lr.ph2:                                          ; preds = %1
  br label %8

8:                                                ; preds = %.lr.ph2, %32
  store i32 1, ptr %5, align 4
  %9 = load i32, ptr %5, align 4
  %10 = icmp sle i32 %9, 40
  br i1 %10, label %.lr.ph, label %31

.lr.ph:                                           ; preds = %8
  br label %11

11:                                               ; preds = %.lr.ph, %26
  %12 = call i32 @Rand()
  store i32 %12, ptr %3, align 4
  %13 = sdiv i32 %12, 120
  %14 = mul nsw i32 %13, 120
  %15 = sub nsw i32 %12, %14
  %16 = sub nsw i32 %15, 60
  %17 = sitofp i32 %16 to double
  %18 = fdiv double %17, 3.000000e+00
  %19 = load ptr, ptr %2, align 8
  %20 = load i32, ptr %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [41 x double], ptr %19, i64 %21
  %23 = load i32, ptr %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [41 x double], ptr %22, i64 0, i64 %24
  store double %18, ptr %25, align 8
  br label %26

26:                                               ; preds = %11
  %27 = load i32, ptr %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %5, align 4
  %29 = load i32, ptr %5, align 4
  %30 = icmp sle i32 %29, 40
  br i1 %30, label %11, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %26
  br label %31

31:                                               ; preds = %._crit_edge, %8
  br label %32

32:                                               ; preds = %31
  %33 = load i32, ptr %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %4, align 4
  %35 = load i32, ptr %4, align 4
  %36 = icmp sle i32 %35, 40
  br i1 %36, label %8, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %32
  br label %37

37:                                               ; preds = %._crit_edge3, %1
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
  br i1 %14, label %.lr.ph, label %38

.lr.ph:                                           ; preds = %5
  br label %15

15:                                               ; preds = %.lr.ph, %33
  %16 = phi i32 [ %13, %.lr.ph ], [ %36, %33 ]
  %17 = load ptr, ptr %6, align 8
  %18 = load double, ptr %17, align 8
  %19 = load ptr, ptr %7, align 8
  %20 = load i32, ptr %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [41 x double], ptr %19, i64 %21
  %23 = sext i32 %16 to i64
  %24 = getelementptr inbounds [41 x double], ptr %22, i64 0, i64 %23
  %25 = load double, ptr %24, align 8
  %26 = load ptr, ptr %8, align 8
  %27 = getelementptr inbounds [41 x double], ptr %26, i64 %23
  %28 = load i32, ptr %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [41 x double], ptr %27, i64 0, i64 %29
  %31 = load double, ptr %30, align 8
  %32 = call double @llvm.fmuladd.f64(double %25, double %31, double %18)
  store double %32, ptr %17, align 8
  br label %33

33:                                               ; preds = %15
  %34 = load i32, ptr %11, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %11, align 4
  %36 = load i32, ptr %11, align 4
  %37 = icmp sle i32 %36, 40
  br i1 %37, label %15, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %33
  br label %38

38:                                               ; preds = %._crit_edge, %5
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
  br i1 %6, label %.lr.ph2, label %28

.lr.ph2:                                          ; preds = %1
  br label %7

7:                                                ; preds = %.lr.ph2, %23
  store i32 1, ptr %4, align 4
  %8 = load i32, ptr %4, align 4
  %9 = icmp sle i32 %8, 40
  br i1 %9, label %.lr.ph, label %22

.lr.ph:                                           ; preds = %7
  br label %10

10:                                               ; preds = %.lr.ph, %17
  %11 = phi i32 [ %8, %.lr.ph ], [ %20, %17 ]
  %12 = load i32, ptr %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [41 x [41 x double]], ptr @rmr, i64 0, i64 %13
  %15 = sext i32 %11 to i64
  %16 = getelementptr inbounds [41 x double], ptr %14, i64 0, i64 %15
  call void @rInnerproduct(ptr noundef %16, ptr noundef @rma, ptr noundef @rmb, i32 noundef %12, i32 noundef %11)
  br label %17

17:                                               ; preds = %10
  %18 = load i32, ptr %4, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %4, align 4
  %20 = load i32, ptr %4, align 4
  %21 = icmp sle i32 %20, 40
  br i1 %21, label %10, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %17
  br label %22

22:                                               ; preds = %._crit_edge, %7
  br label %23

23:                                               ; preds = %22
  %24 = load i32, ptr %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %3, align 4
  %26 = load i32, ptr %3, align 4
  %27 = icmp sle i32 %26, 40
  br i1 %27, label %7, label %._crit_edge3, !llvm.loop !12

._crit_edge3:                                     ; preds = %23
  br label %28

28:                                               ; preds = %._crit_edge3, %1
  %29 = load i32, ptr %2, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [41 x [41 x double]], ptr @rmr, i64 0, i64 %31
  %33 = getelementptr inbounds [41 x double], ptr %32, i64 0, i64 %31
  %34 = load double, ptr %33, align 8
  %35 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %34)
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
  br i1 %4, label %.lr.ph, label %12

.lr.ph:                                           ; preds = %0
  br label %5

5:                                                ; preds = %.lr.ph, %7
  %6 = phi i32 [ %3, %.lr.ph ], [ %10, %7 ]
  call void @Mm(i32 noundef %6)
  br label %7

7:                                                ; preds = %5
  %8 = load i32, ptr %2, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr %2, align 4
  %10 = load i32, ptr %2, align 4
  %11 = icmp slt i32 %10, 10
  br i1 %11, label %5, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %7
  br label %12

12:                                               ; preds = %._crit_edge, %0
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
