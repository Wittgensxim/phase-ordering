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
define dso_local range(i32 0, 65536) i32 @Rand() #0 {
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
  br label %6

6:                                                ; preds = %26, %1
  %7 = phi i32 [ %27, %26 ], [ 1, %1 ]
  %8 = icmp sle i32 %7, 40
  br i1 %8, label %9, label %28

9:                                                ; preds = %6
  store i32 1, ptr %5, align 4
  br label %10

10:                                               ; preds = %13, %9
  %11 = phi i32 [ %25, %13 ], [ 1, %9 ]
  %12 = icmp sle i32 %11, 40
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = call i32 @Rand()
  store i32 %14, ptr %3, align 4
  %15 = udiv i32 %14, 120
  %16 = mul nsw i32 %15, 120
  %17 = sub nsw i32 %14, %16
  %18 = sub nsw i32 %17, 60
  %19 = sitofp i32 %18 to double
  %20 = fdiv double %19, 3.000000e+00
  %21 = sext i32 %7 to i64
  %22 = getelementptr inbounds [41 x double], ptr %0, i64 %21
  %23 = sext i32 %11 to i64
  %24 = getelementptr inbounds [41 x double], ptr %22, i64 0, i64 %23
  store double %20, ptr %24, align 8
  %25 = add nsw i32 %11, 1
  store i32 %25, ptr %5, align 4
  br label %10, !llvm.loop !7

26:                                               ; preds = %10
  %27 = add nsw i32 %7, 1
  store i32 %27, ptr %4, align 4
  br label %6, !llvm.loop !9

28:                                               ; preds = %6
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
  br label %12

12:                                               ; preds = %16, %5
  %13 = phi double [ %26, %16 ], [ 0.000000e+00, %5 ]
  %14 = phi i32 [ %27, %16 ], [ 1, %5 ]
  %15 = icmp sle i32 %14, 40
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = sext i32 %3 to i64
  %18 = getelementptr inbounds [41 x double], ptr %1, i64 %17
  %19 = sext i32 %14 to i64
  %20 = getelementptr inbounds [41 x double], ptr %18, i64 0, i64 %19
  %21 = load double, ptr %20, align 8
  %22 = getelementptr inbounds [41 x double], ptr %2, i64 %19
  %23 = sext i32 %4 to i64
  %24 = getelementptr inbounds [41 x double], ptr %22, i64 0, i64 %23
  %25 = load double, ptr %24, align 8
  %26 = call double @llvm.fmuladd.f64(double %21, double %25, double %13)
  store double %26, ptr %0, align 8
  %27 = add nsw i32 %14, 1
  store i32 %27, ptr %11, align 4
  br label %12, !llvm.loop !10

28:                                               ; preds = %12
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
  br label %5

5:                                                ; preds = %18, %1
  %6 = phi i32 [ %19, %18 ], [ 1, %1 ]
  %7 = icmp sle i32 %6, 40
  br i1 %7, label %8, label %20

8:                                                ; preds = %5
  store i32 1, ptr %4, align 4
  br label %9

9:                                                ; preds = %12, %8
  %10 = phi i32 [ %17, %12 ], [ 1, %8 ]
  %11 = icmp sle i32 %10, 40
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = sext i32 %6 to i64
  %14 = getelementptr inbounds [41 x [41 x double]], ptr @rmr, i64 0, i64 %13
  %15 = sext i32 %10 to i64
  %16 = getelementptr inbounds [41 x double], ptr %14, i64 0, i64 %15
  call void @rInnerproduct(ptr noundef %16, ptr noundef @rma, ptr noundef @rmb, i32 noundef %6, i32 noundef %10)
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %4, align 4
  br label %9, !llvm.loop !11

18:                                               ; preds = %9
  %19 = add nsw i32 %6, 1
  store i32 %19, ptr %3, align 4
  br label %5, !llvm.loop !12

20:                                               ; preds = %5
  %21 = add nsw i32 %0, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [41 x [41 x double]], ptr @rmr, i64 0, i64 %22
  %24 = getelementptr inbounds [41 x double], ptr %23, i64 0, i64 %22
  %25 = load double, ptr %24, align 8
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %25)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  br label %3

3:                                                ; preds = %6, %0
  %4 = phi i32 [ %7, %6 ], [ 0, %0 ]
  %5 = icmp slt i32 %4, 10
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  call void @Mm(i32 noundef %4)
  %7 = add nsw i32 %4, 1
  store i32 %7, ptr %2, align 4
  br label %3, !llvm.loop !13

8:                                                ; preds = %3
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
