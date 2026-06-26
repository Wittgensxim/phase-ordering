; ModuleID = 'results\cmp_test\cmp_oracle_O2\Stanford_Quicksort\Stanford_Quicksort.ll'
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
  %1 = icmp sle i32 1, 5000
  br i1 %1, label %.lr.ph, label %34

.lr.ph:                                           ; preds = %0
  br label %2

2:                                                ; preds = %.lr.ph, %31
  %.0 = phi i32 [ 1, %.lr.ph ], [ %32, %31 ]
  %3 = call i32 @Rand()
  %4 = sdiv i32 %3, 100000
  %5 = mul nsw i32 %4, 100000
  %6 = sub nsw i32 %3, %5
  %7 = sub nsw i32 %6, 50000
  %8 = sext i32 %.0 to i64
  %9 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %8
  store i32 %7, ptr %9, align 4
  %10 = sext i32 %.0 to i64
  %11 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr @biggest, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = sext i32 %.0 to i64
  %17 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr @biggest, align 4
  br label %30

19:                                               ; preds = %2
  %20 = sext i32 %.0 to i64
  %21 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4
  %23 = load i32, ptr @littlest, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = sext i32 %.0 to i64
  %27 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr @littlest, align 4
  br label %29

29:                                               ; preds = %25, %19
  br label %30

30:                                               ; preds = %29, %15
  br label %31

31:                                               ; preds = %30
  %32 = add nsw i32 %.0, 1
  %33 = icmp sle i32 %32, 5000
  br i1 %33, label %2, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %31
  br label %34

34:                                               ; preds = %._crit_edge, %0
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

9:                                                ; preds = %47, %3
  %.04 = phi i32 [ %1, %3 ], [ %.37, %47 ]
  %.0 = phi i32 [ %2, %3 ], [ %.3, %47 ]
  %10 = sext i32 %.04 to i64
  %11 = getelementptr inbounds i32, ptr %0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp slt i32 %12, %8
  br i1 %13, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %9
  br label %14

14:                                               ; preds = %.lr.ph, %14
  %.15 = phi i32 [ %.04, %.lr.ph ], [ %15, %14 ]
  %15 = add nsw i32 %.15, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %0, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = icmp slt i32 %18, %8
  br i1 %19, label %14, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %14
  br label %20

20:                                               ; preds = %._crit_edge, %9
  %.26 = phi i32 [ %15, %._crit_edge ], [ %.04, %9 ]
  %21 = sext i32 %.0 to i64
  %22 = getelementptr inbounds i32, ptr %0, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = icmp slt i32 %8, %23
  br i1 %24, label %.lr.ph2, label %31

.lr.ph2:                                          ; preds = %20
  br label %25

25:                                               ; preds = %.lr.ph2, %25
  %.1 = phi i32 [ %.0, %.lr.ph2 ], [ %26, %25 ]
  %26 = sub nsw i32 %.1, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, ptr %0, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = icmp slt i32 %8, %29
  br i1 %30, label %25, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %25
  br label %31

31:                                               ; preds = %._crit_edge3, %20
  %.2 = phi i32 [ %26, %._crit_edge3 ], [ %.0, %20 ]
  %32 = icmp sle i32 %.26, %.2
  br i1 %32, label %33, label %46

33:                                               ; preds = %31
  %34 = sext i32 %.26 to i64
  %35 = getelementptr inbounds i32, ptr %0, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = sext i32 %.2 to i64
  %38 = getelementptr inbounds i32, ptr %0, i64 %37
  %39 = load i32, ptr %38, align 4
  %40 = sext i32 %.26 to i64
  %41 = getelementptr inbounds i32, ptr %0, i64 %40
  store i32 %39, ptr %41, align 4
  %42 = sext i32 %.2 to i64
  %43 = getelementptr inbounds i32, ptr %0, i64 %42
  store i32 %36, ptr %43, align 4
  %44 = add nsw i32 %.26, 1
  %45 = sub nsw i32 %.2, 1
  br label %46

46:                                               ; preds = %33, %31
  %.37 = phi i32 [ %44, %33 ], [ %.26, %31 ]
  %.3 = phi i32 [ %45, %33 ], [ %.2, %31 ]
  br label %47

47:                                               ; preds = %46
  %48 = icmp sle i32 %.37, %.3
  br i1 %48, label %9, label %49, !llvm.loop !11

49:                                               ; preds = %47
  %50 = icmp slt i32 %1, %.3
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  call void @Quicksort(ptr noundef %0, i32 noundef %1, i32 noundef %.3)
  br label %52

52:                                               ; preds = %51, %49
  %53 = icmp slt i32 %.37, %2
  br i1 %53, label %54, label %55

54:                                               ; preds = %52
  call void @Quicksort(ptr noundef %0, i32 noundef %.37, i32 noundef %2)
  br label %55

55:                                               ; preds = %54, %52
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
  %1 = icmp slt i32 0, 100
  br i1 %1, label %.lr.ph, label %6

.lr.ph:                                           ; preds = %0
  br label %2

2:                                                ; preds = %.lr.ph, %3
  %.0 = phi i32 [ 0, %.lr.ph ], [ %4, %3 ]
  call void @Quick(i32 noundef %.0)
  br label %3

3:                                                ; preds = %2
  %4 = add nsw i32 %.0, 1
  %5 = icmp slt i32 %4, 100
  br i1 %5, label %2, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %3
  br label %6

6:                                                ; preds = %._crit_edge, %0
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
