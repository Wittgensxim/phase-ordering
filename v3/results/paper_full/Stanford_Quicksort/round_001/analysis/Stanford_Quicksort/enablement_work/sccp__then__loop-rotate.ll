; ModuleID = 'results\paper_full\Stanford_Quicksort\round_000\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Quicksort.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.element = type { i32, i32 }
%struct.complex = type { float, float }

@seed = dso_local global i32 0, align 4
@biggest = dso_local global i32 0, align 4
@littlest = dso_local global i32 0, align 4
@sortlist = dso_local global [5001 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [18 x i8] c" Error in Quick.\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
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
@ima = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imb = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imr = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
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
define dso_local range(i32 0, 65536) i32 @Rand() #0 {
  %1 = load i32, ptr @seed, align 4
  %2 = mul nsw i32 %1, 1309
  %3 = add nsw i32 %2, 13849
  %4 = and i32 %3, 65535
  store i32 %4, ptr @seed, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Initarr() #0 {
  call void @Initrand()
  store i32 0, ptr @biggest, align 4
  store i32 0, ptr @littlest, align 4
  br label %1

1:                                                ; preds = %0, %16
  %.02 = phi i32 [ 1, %0 ], [ %17, %16 ]
  %2 = call i32 @Rand()
  %3 = sub nuw nsw i32 %2, 0
  %4 = sub nsw i32 %3, 50000
  %5 = sext i32 %.02 to i64
  %6 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %5
  store i32 %4, ptr %6, align 4
  %7 = load i32, ptr @biggest, align 4
  %8 = icmp sgt i32 %4, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 %4, ptr @biggest, align 4
  br label %15

10:                                               ; preds = %1
  %11 = load i32, ptr @littlest, align 4
  %12 = icmp slt i32 %4, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 %4, ptr @littlest, align 4
  br label %14

14:                                               ; preds = %13, %10
  br label %15

15:                                               ; preds = %14, %9
  br label %16

16:                                               ; preds = %15
  %17 = add nsw i32 %.02, 1
  %18 = icmp sle i32 %17, 5000
  br i1 %18, label %1, label %19, !llvm.loop !7

19:                                               ; preds = %16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Quicksort(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = add nsw i32 %1, %2
  %5 = sdiv i32 %4, 2
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i32, ptr %0, i64 %6
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %30, %3
  %.01 = phi i32 [ %1, %3 ], [ %.23, %30 ]
  %.0 = phi i32 [ %2, %3 ], [ %.2, %30 ]
  br label %10

10:                                               ; preds = %10, %9
  %.12 = phi i32 [ %.01, %9 ], [ %15, %10 ]
  %11 = sext i32 %.12 to i64
  %12 = getelementptr inbounds i32, ptr %0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = icmp slt i32 %13, %8
  %15 = add nsw i32 %.12, 1
  br i1 %14, label %10, label %16, !llvm.loop !9

16:                                               ; preds = %10
  %.12.lcssa = phi i32 [ %.12, %10 ]
  %.lcssa = phi ptr [ %12, %10 ]
  br label %17

17:                                               ; preds = %17, %16
  %.1 = phi i32 [ %.0, %16 ], [ %22, %17 ]
  %18 = sext i32 %.1 to i64
  %19 = getelementptr inbounds i32, ptr %0, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = icmp slt i32 %8, %20
  %22 = sub nsw i32 %.1, 1
  br i1 %21, label %17, label %23, !llvm.loop !10

23:                                               ; preds = %17
  %.1.lcssa = phi i32 [ %.1, %17 ]
  %.lcssa7 = phi ptr [ %19, %17 ]
  %.lcssa6 = phi i32 [ %20, %17 ]
  %24 = icmp sle i32 %.12.lcssa, %.1.lcssa
  br i1 %24, label %25, label %29

25:                                               ; preds = %23
  %26 = load i32, ptr %.lcssa, align 4
  store i32 %.lcssa6, ptr %.lcssa, align 4
  store i32 %26, ptr %.lcssa7, align 4
  %27 = add nsw i32 %.12.lcssa, 1
  %28 = sub nsw i32 %.1.lcssa, 1
  br label %29

29:                                               ; preds = %25, %23
  %.23 = phi i32 [ %27, %25 ], [ %.12.lcssa, %23 ]
  %.2 = phi i32 [ %28, %25 ], [ %.1.lcssa, %23 ]
  br label %30

30:                                               ; preds = %29
  %31 = icmp sle i32 %.23, %.2
  br i1 %31, label %9, label %32, !llvm.loop !11

32:                                               ; preds = %30
  %.23.lcssa = phi i32 [ %.23, %30 ]
  %.2.lcssa = phi i32 [ %.2, %30 ]
  %33 = icmp slt i32 %1, %.2.lcssa
  br i1 %33, label %34, label %35

34:                                               ; preds = %32
  call void @Quicksort(ptr noundef %0, i32 noundef %1, i32 noundef %.2.lcssa)
  br label %35

35:                                               ; preds = %34, %32
  %36 = icmp slt i32 %.23.lcssa, %2
  br i1 %36, label %37, label %38

37:                                               ; preds = %35
  call void @Quicksort(ptr noundef %0, i32 noundef %.23.lcssa, i32 noundef %2)
  br label %38

38:                                               ; preds = %37, %35
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Quick(i32 noundef %0) #0 {
  call void @Initarr()
  call void @Quicksort(ptr noundef @sortlist, i32 noundef 1, i32 noundef 5000)
  %2 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4
  %3 = load i32, ptr @littlest, align 4
  %4 = icmp ne i32 %2, %3
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 20000), align 16
  %7 = load i32, ptr @biggest, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %5, %1
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %11

11:                                               ; preds = %9, %5
  %12 = add nsw i32 %0, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %15)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %0, %2
  %.01 = phi i32 [ 0, %0 ], [ %3, %2 ]
  call void @Quick(i32 noundef %.01)
  br label %2

2:                                                ; preds = %1
  %3 = add nsw i32 %.01, 1
  %4 = icmp slt i32 %3, 100
  br i1 %4, label %1, label %5, !llvm.loop !12

5:                                                ; preds = %2
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Quicksort.c", directory: "E:/Phase Ordering/v3")
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
