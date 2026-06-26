; ModuleID = 'results\paper_full\Stanford_Quicksort\Stanford_Quicksort.ll'
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
define dso_local void @Initarr() #0 {
  call void @Initrand()
  store i32 0, ptr @biggest, align 4
  store i32 0, ptr @littlest, align 4
  br label %1

1:                                                ; preds = %0, %30
  %.09 = phi i32 [ 1, %0 ], [ %31, %30 ]
  %2 = call i32 @Rand()
  %3 = sdiv i32 %2, 100000
  %4 = mul nsw i32 %3, 100000
  %5 = sub nsw i32 %2, %4
  %6 = sub nsw i32 %5, 50000
  %7 = sext i32 %.09 to i64
  %8 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %7
  store i32 %6, ptr %8, align 4
  %9 = sext i32 %.09 to i64
  %10 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = load i32, ptr @biggest, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = sext i32 %.09 to i64
  %16 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr @biggest, align 4
  br label %29

18:                                               ; preds = %1
  %19 = sext i32 %.09 to i64
  %20 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = load i32, ptr @littlest, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = sext i32 %.09 to i64
  %26 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4
  store i32 %27, ptr @littlest, align 4
  br label %28

28:                                               ; preds = %24, %18
  br label %29

29:                                               ; preds = %28, %14
  %.010 = phi i32 [ %.09, %28 ], [ %.09, %14 ]
  br label %30

30:                                               ; preds = %29
  %31 = add nsw i32 %.010, 1
  %32 = icmp sle i32 %31, 5000
  br i1 %32, label %1, label %33, !llvm.loop !7

33:                                               ; preds = %30
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

9:                                                ; preds = %39, %3
  %.037 = phi i32 [ %2, %3 ], [ %.239, %39 ]
  %.0 = phi i32 [ %1, %3 ], [ %.2, %39 ]
  br label %10

10:                                               ; preds = %10, %9
  %.1 = phi i32 [ %.0, %9 ], [ %15, %10 ]
  %11 = sext i32 %.1 to i64
  %12 = getelementptr inbounds i32, ptr %0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = icmp slt i32 %13, %8
  %15 = add nsw i32 %.1, 1
  br i1 %14, label %10, label %16, !llvm.loop !9

16:                                               ; preds = %10
  %.1.lcssa = phi i32 [ %.1, %10 ]
  br label %17

17:                                               ; preds = %17, %16
  %.138 = phi i32 [ %.037, %16 ], [ %22, %17 ]
  %18 = sext i32 %.138 to i64
  %19 = getelementptr inbounds i32, ptr %0, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = icmp slt i32 %8, %20
  %22 = sub nsw i32 %.138, 1
  br i1 %21, label %17, label %23, !llvm.loop !10

23:                                               ; preds = %17
  %.138.lcssa = phi i32 [ %.138, %17 ]
  %24 = icmp sle i32 %.1.lcssa, %.138.lcssa
  br i1 %24, label %25, label %38

25:                                               ; preds = %23
  %26 = sext i32 %.1.lcssa to i64
  %27 = getelementptr inbounds i32, ptr %0, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = sext i32 %.138.lcssa to i64
  %30 = getelementptr inbounds i32, ptr %0, i64 %29
  %31 = load i32, ptr %30, align 4
  %32 = sext i32 %.1.lcssa to i64
  %33 = getelementptr inbounds i32, ptr %0, i64 %32
  store i32 %31, ptr %33, align 4
  %34 = sext i32 %.138.lcssa to i64
  %35 = getelementptr inbounds i32, ptr %0, i64 %34
  store i32 %28, ptr %35, align 4
  %36 = add nsw i32 %.1.lcssa, 1
  %37 = sub nsw i32 %.138.lcssa, 1
  br label %38

38:                                               ; preds = %25, %23
  %.239 = phi i32 [ %37, %25 ], [ %.138.lcssa, %23 ]
  %.2 = phi i32 [ %36, %25 ], [ %.1.lcssa, %23 ]
  br label %39

39:                                               ; preds = %38
  %40 = icmp sle i32 %.2, %.239
  br i1 %40, label %9, label %41, !llvm.loop !11

41:                                               ; preds = %39
  %.239.lcssa = phi i32 [ %.239, %39 ]
  %.2.lcssa = phi i32 [ %.2, %39 ]
  %42 = icmp slt i32 %1, %.239.lcssa
  br i1 %42, label %43, label %44

43:                                               ; preds = %41
  call void @Quicksort(ptr noundef %0, i32 noundef %1, i32 noundef %.239.lcssa)
  br label %44

44:                                               ; preds = %43, %41
  %45 = icmp slt i32 %.2.lcssa, %2
  br i1 %45, label %46, label %47

46:                                               ; preds = %44
  call void @Quicksort(ptr noundef %0, i32 noundef %.2.lcssa, i32 noundef %2)
  br label %47

47:                                               ; preds = %46, %44
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
  %.03 = phi i32 [ 0, %0 ], [ %3, %2 ]
  call void @Quick(i32 noundef %.03)
  br label %2

2:                                                ; preds = %1
  %3 = add nsw i32 %.03, 1
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
