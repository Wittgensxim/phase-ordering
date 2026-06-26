; ModuleID = 'results\cmp_test\cmp_random_O2\Stanford_Bubblesort\Stanford_Bubblesort.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Bubblesort.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.element = type { i32, i32 }
%struct.complex = type { float, float }

@seed = dso_local global i32 0, align 4
@biggest = dso_local global i32 0, align 4
@littlest = dso_local global i32 0, align 4
@sortlist = dso_local global [5001 x i32] zeroinitializer, align 16
@top = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Error3 in Bubble.\0A\00", align 1
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
define dso_local void @bInitarr() #0 {
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
  %32 = icmp sle i32 %31, 500
  br i1 %32, label %1, label %33, !llvm.loop !7

33:                                               ; preds = %30
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Bubble(i32 noundef %0) #0 {
  call void @bInitarr()
  store i32 500, ptr @top, align 4
  %2 = load i32, ptr @top, align 4
  %3 = icmp sgt i32 %2, 1
  br i1 %3, label %.lr.ph12, label %38

.lr.ph12:                                         ; preds = %1
  br label %4

4:                                                ; preds = %.lr.ph12, %33
  %5 = load i32, ptr @top, align 4
  %6 = icmp slt i32 1, %5
  br i1 %6, label %.lr.ph, label %33

.lr.ph:                                           ; preds = %4
  br label %7

7:                                                ; preds = %.lr.ph, %29
  %.010 = phi i32 [ 1, %.lr.ph ], [ %30, %29 ]
  %8 = sext i32 %.010 to i64
  %9 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = add nsw i32 %.010, 1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %10, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %7
  %17 = sext i32 %.010 to i64
  %18 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = add nsw i32 %.010, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = sext i32 %.010 to i64
  %25 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %24
  store i32 %23, ptr %25, align 4
  %26 = add nsw i32 %.010, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %27
  store i32 %19, ptr %28, align 4
  br label %29

29:                                               ; preds = %16, %7
  %30 = add nsw i32 %.010, 1
  %31 = load i32, ptr @top, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %7, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %29
  br label %33

33:                                               ; preds = %._crit_edge, %4
  %34 = load i32, ptr @top, align 4
  %35 = sub nsw i32 %34, 1
  store i32 %35, ptr @top, align 4
  %36 = load i32, ptr @top, align 4
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %4, label %._crit_edge13, !llvm.loop !10

._crit_edge13:                                    ; preds = %33
  br label %38

38:                                               ; preds = %._crit_edge13, %1
  %39 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4
  %40 = load i32, ptr @littlest, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 2000), align 16
  %44 = load i32, ptr @biggest, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42, %38
  %47 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %48

48:                                               ; preds = %46, %42
  %49 = add nsw i32 %0, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4
  %53 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %52)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %0, %2
  %.03 = phi i32 [ 0, %0 ], [ %3, %2 ]
  call void @Bubble(i32 noundef %.03)
  br label %2

2:                                                ; preds = %1
  %3 = add nsw i32 %.03, 1
  %4 = icmp slt i32 %3, 100
  br i1 %4, label %1, label %5, !llvm.loop !11

5:                                                ; preds = %2
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Bubblesort.c", directory: "E:/Phase Ordering/v3")
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
