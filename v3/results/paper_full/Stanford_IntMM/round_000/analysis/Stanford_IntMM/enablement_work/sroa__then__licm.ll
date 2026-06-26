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
  br label %2

2:                                                ; preds = %20, %1
  %.08 = phi i32 [ 1, %1 ], [ %21, %20 ]
  %3 = icmp sle i32 %.08, 40
  br i1 %3, label %4, label %22

4:                                                ; preds = %2
  %5 = sext i32 %.08 to i64
  %6 = getelementptr inbounds [41 x i32], ptr %0, i64 %5
  br label %7

7:                                                ; preds = %17, %4
  %.0 = phi i32 [ 1, %4 ], [ %18, %17 ]
  %8 = icmp sle i32 %.0, 40
  br i1 %8, label %9, label %19

9:                                                ; preds = %7
  %10 = call i32 @Rand()
  %11 = sdiv i32 %10, 120
  %12 = mul nsw i32 %11, 120
  %13 = sub nsw i32 %10, %12
  %14 = sub nsw i32 %13, 60
  %15 = sext i32 %.0 to i64
  %16 = getelementptr inbounds [41 x i32], ptr %6, i64 0, i64 %15
  store i32 %14, ptr %16, align 4
  br label %17

17:                                               ; preds = %9
  %18 = add nsw i32 %.0, 1
  br label %7, !llvm.loop !7

19:                                               ; preds = %7
  br label %20

20:                                               ; preds = %19
  %21 = add nsw i32 %.08, 1
  br label %2, !llvm.loop !9

22:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Innerproduct(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  store i32 0, ptr %0, align 4
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds [41 x i32], ptr %1, i64 %6
  %8 = sext i32 %4 to i64
  %invariant.gep = getelementptr [41 x i32], ptr %2, i64 0, i64 %8
  %.promoted = load i32, ptr %0, align 4
  br label %9

9:                                                ; preds = %20, %5
  %10 = phi i32 [ %.promoted, %5 ], [ %19, %20 ]
  %.0 = phi i32 [ 1, %5 ], [ %21, %20 ]
  %11 = icmp sle i32 %.0, 40
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = sext i32 %.0 to i64
  %14 = getelementptr inbounds [41 x i32], ptr %7, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = sext i32 %.0 to i64
  %gep = getelementptr [41 x i32], ptr %invariant.gep, i64 %16
  %17 = load i32, ptr %gep, align 4
  %18 = mul nsw i32 %15, %17
  %19 = add nsw i32 %10, %18
  store i32 %19, ptr %0, align 4
  br label %20

20:                                               ; preds = %12
  %21 = add nsw i32 %.0, 1
  br label %9, !llvm.loop !10

22:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Intmm(i32 noundef %0) #0 {
  call void @Initrand()
  call void @Initmatrix(ptr noundef @ima)
  call void @Initmatrix(ptr noundef @imb)
  br label %2

2:                                                ; preds = %15, %1
  %.010 = phi i32 [ 1, %1 ], [ %16, %15 ]
  %3 = icmp sle i32 %.010, 40
  br i1 %3, label %4, label %17

4:                                                ; preds = %2
  %5 = sext i32 %.010 to i64
  %6 = getelementptr inbounds [41 x [41 x i32]], ptr @imr, i64 0, i64 %5
  br label %7

7:                                                ; preds = %12, %4
  %.0 = phi i32 [ 1, %4 ], [ %13, %12 ]
  %8 = icmp sle i32 %.0, 40
  br i1 %8, label %9, label %14

9:                                                ; preds = %7
  %10 = sext i32 %.0 to i64
  %11 = getelementptr inbounds [41 x i32], ptr %6, i64 0, i64 %10
  call void @Innerproduct(ptr noundef %11, ptr noundef @ima, ptr noundef @imb, i32 noundef %.010, i32 noundef %.0)
  br label %12

12:                                               ; preds = %9
  %13 = add nsw i32 %.0, 1
  br label %7, !llvm.loop !11

14:                                               ; preds = %7
  br label %15

15:                                               ; preds = %14
  %16 = add nsw i32 %.010, 1
  br label %2, !llvm.loop !12

17:                                               ; preds = %2
  %18 = add nsw i32 %0, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [41 x [41 x i32]], ptr @imr, i64 0, i64 %19
  %21 = add nsw i32 %0, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [41 x i32], ptr %20, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %24)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %.0 = phi i32 [ 0, %0 ], [ %5, %4 ]
  %2 = icmp slt i32 %.0, 10
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  call void @Intmm(i32 noundef %.0)
  br label %4

4:                                                ; preds = %3
  %5 = add nsw i32 %.0, 1
  br label %1, !llvm.loop !13

6:                                                ; preds = %1
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
