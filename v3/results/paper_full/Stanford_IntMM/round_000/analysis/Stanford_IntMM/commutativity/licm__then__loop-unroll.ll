; ModuleID = 'results\paper_full\Stanford_IntMM\Stanford_IntMM.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/IntMM.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.element = type { i32, i32 }
%struct.complex = type { float, float }

@seed = dso_local global i32 0, align 4
@ima = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imb = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imr = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@value = dso_local global float 0.000000e+00, align 4
@fixed = dso_local global float 0.000000e+00, align 4
@floated = dso_local global float 0.000000e+00, align 4
@permarray = dso_local global [11 x i32] zeroinitializer, align 16
@pctr = dso_local global i32 0, align 4
@tree = dso_local global ptr null, align 8
@stack = dso_local global [4 x i32] zeroinitializer, align 16
@cellspace = dso_local global [19 x %struct.element] zeroinitializer, align 16
@freelist = dso_local global i32 0, align 4
@movesdone = dso_local global i32 0, align 4
@rma = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmb = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmr = dso_local global [41 x [41 x float]] zeroinitializer, align 16
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
@zr = dso_local global float 0.000000e+00, align 4
@zi = dso_local global float 0.000000e+00, align 4

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
define dso_local void @Initmatrix(ptr noundef %0) #0 {
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
  br label %7

7:                                                ; preds = %28, %1
  %.lcssa27 = phi i32 [ %.lcssa2, %28 ], [ %.promoted, %1 ]
  %.lcssa6 = phi i32 [ %.lcssa, %28 ], [ %.promoted5, %1 ]
  %8 = phi i32 [ %29, %28 ], [ %.promoted3, %1 ]
  %9 = icmp sle i32 %8, 40
  br i1 %9, label %10, label %30

10:                                               ; preds = %7
  %11 = sext i32 %8 to i64
  %12 = getelementptr inbounds [41 x i32], ptr %6, i64 %11
  br label %13

13:                                               ; preds = %25, %10
  %14 = phi i32 [ %18, %25 ], [ %.lcssa27, %10 ]
  %15 = phi i32 [ %26, %25 ], [ 1, %10 ]
  %16 = icmp sle i32 %15, 40
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = call i32 @Rand()
  %19 = sdiv i32 %18, 120
  %20 = mul nsw i32 %19, 120
  %21 = sub nsw i32 %18, %20
  %22 = sub nsw i32 %21, 60
  %23 = sext i32 %15 to i64
  %24 = getelementptr inbounds [41 x i32], ptr %12, i64 0, i64 %23
  store i32 %22, ptr %24, align 4
  br label %25

25:                                               ; preds = %17
  %26 = add nsw i32 %15, 1
  br label %13, !llvm.loop !7

27:                                               ; preds = %13
  %.lcssa2 = phi i32 [ %14, %13 ]
  %.lcssa = phi i32 [ %15, %13 ]
  br label %28

28:                                               ; preds = %27
  %29 = add nsw i32 %8, 1
  br label %7, !llvm.loop !9

30:                                               ; preds = %7
  %.lcssa27.lcssa = phi i32 [ %.lcssa27, %7 ]
  %.lcssa6.lcssa = phi i32 [ %.lcssa6, %7 ]
  %.lcssa4 = phi i32 [ %8, %7 ]
  store i32 %.lcssa4, ptr %4, align 4
  store i32 %.lcssa6.lcssa, ptr %5, align 4
  store i32 %.lcssa27.lcssa, ptr %3, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Innerproduct(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
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
  store i32 0, ptr %12, align 4
  store i32 1, ptr %11, align 4
  %13 = load ptr, ptr %6, align 8
  %14 = load ptr, ptr %7, align 8
  %15 = load i32, ptr %9, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [41 x i32], ptr %14, i64 %16
  %18 = load ptr, ptr %8, align 8
  %19 = load i32, ptr %10, align 4
  %20 = sext i32 %19 to i64
  %invariant.gep = getelementptr [41 x i32], ptr %18, i64 0, i64 %20
  %21 = load ptr, ptr %6, align 8
  %.promoted = load i32, ptr %11, align 4
  br label %22

22:                                               ; preds = %34, %5
  %23 = phi i32 [ %35, %34 ], [ %.promoted, %5 ]
  %24 = icmp sle i32 %23, 40
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = load i32, ptr %13, align 4
  %27 = sext i32 %23 to i64
  %28 = getelementptr inbounds [41 x i32], ptr %17, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = sext i32 %23 to i64
  %gep = getelementptr [41 x i32], ptr %invariant.gep, i64 %30
  %31 = load i32, ptr %gep, align 4
  %32 = mul nsw i32 %29, %31
  %33 = add nsw i32 %26, %32
  store i32 %33, ptr %21, align 4
  br label %34

34:                                               ; preds = %25
  %35 = add nsw i32 %23, 1
  br label %22, !llvm.loop !10

36:                                               ; preds = %22
  %.lcssa = phi i32 [ %23, %22 ]
  store i32 %.lcssa, ptr %11, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Intmm(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @Initrand()
  call void @Initmatrix(ptr noundef @ima)
  call void @Initmatrix(ptr noundef @imb)
  store i32 1, ptr %3, align 4
  %.promoted1 = load i32, ptr %3, align 4
  %.promoted3 = load i32, ptr %4, align 4
  br label %5

5:                                                ; preds = %20, %1
  %.lcssa4 = phi i32 [ %.lcssa, %20 ], [ %.promoted3, %1 ]
  %6 = phi i32 [ %21, %20 ], [ %.promoted1, %1 ]
  %7 = icmp sle i32 %6, 40
  br i1 %7, label %8, label %22

8:                                                ; preds = %5
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds [41 x [41 x i32]], ptr @imr, i64 0, i64 %9
  br label %11

11:                                               ; preds = %17, %8
  %12 = phi i32 [ %18, %17 ], [ 1, %8 ]
  %13 = icmp sle i32 %12, 40
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds [41 x i32], ptr %10, i64 0, i64 %15
  call void @Innerproduct(ptr noundef %16, ptr noundef @ima, ptr noundef @imb, i32 noundef %6, i32 noundef %12)
  br label %17

17:                                               ; preds = %14
  %18 = add nsw i32 %12, 1
  br label %11, !llvm.loop !11

19:                                               ; preds = %11
  %.lcssa = phi i32 [ %12, %11 ]
  br label %20

20:                                               ; preds = %19
  %21 = add nsw i32 %6, 1
  br label %5, !llvm.loop !12

22:                                               ; preds = %5
  %.lcssa4.lcssa = phi i32 [ %.lcssa4, %5 ]
  %.lcssa2 = phi i32 [ %6, %5 ]
  store i32 %.lcssa2, ptr %3, align 4
  store i32 %.lcssa4.lcssa, ptr %4, align 4
  %23 = load i32, ptr %2, align 4
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [41 x [41 x i32]], ptr @imr, i64 0, i64 %25
  %27 = load i32, ptr %2, align 4
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [41 x i32], ptr %26, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4
  %32 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %31)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  %.promoted = load i32, ptr %2, align 4
  br label %3

3:                                                ; preds = %7, %0
  %4 = phi i32 [ %8, %7 ], [ %.promoted, %0 ]
  %5 = icmp slt i32 %4, 10
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  call void @Intmm(i32 noundef %4)
  br label %7

7:                                                ; preds = %6
  %8 = add nsw i32 %4, 1
  br label %3, !llvm.loop !13

9:                                                ; preds = %3
  %.lcssa = phi i32 [ %4, %3 ]
  store i32 %.lcssa, ptr %2, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/IntMM.c", directory: "E:/Phase Ordering/v3")
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
