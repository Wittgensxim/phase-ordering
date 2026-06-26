; ModuleID = 'results\cmp_test\cmp_random_O2\Stanford_Quicksort\Stanford_Quicksort.ll'
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
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Initarr() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void @Initrand()
  store i32 0, ptr @biggest, align 4
  store i32 0, ptr @littlest, align 4
  store i32 1, ptr %1, align 4
  %.promoted = load i32, ptr %2, align 1
  %.promoted1 = load i32, ptr %1, align 1
  br label %3

3:                                                ; preds = %24, %0
  %4 = phi i32 [ %25, %24 ], [ %.promoted1, %0 ]
  %5 = phi i32 [ %9, %24 ], [ %.promoted, %0 ]
  %6 = phi i32 [ %25, %24 ], [ 1, %0 ]
  %7 = icmp sle i32 %6, 5000
  br i1 %7, label %8, label %26

8:                                                ; preds = %3
  %9 = call i32 @Rand()
  %10 = sdiv i32 %9, 100000
  %11 = mul nsw i32 %10, 100000
  %12 = sub nsw i32 %9, %11
  %13 = sub nsw i32 %12, 50000
  %14 = sext i32 %6 to i64
  %15 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %14
  store i32 %13, ptr %15, align 4
  %16 = load i32, ptr @biggest, align 4
  %17 = icmp sgt i32 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %8
  store i32 %13, ptr @biggest, align 4
  br label %24

19:                                               ; preds = %8
  %20 = load i32, ptr @littlest, align 4
  %21 = icmp slt i32 %13, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 %13, ptr @littlest, align 4
  br label %23

23:                                               ; preds = %22, %19
  br label %24

24:                                               ; preds = %23, %18
  %25 = add nsw i32 %6, 1
  br label %3, !llvm.loop !7

26:                                               ; preds = %3
  %.lcssa2 = phi i32 [ %4, %3 ]
  %.lcssa = phi i32 [ %5, %3 ]
  store i32 %.lcssa, ptr %2, align 1
  store i32 %.lcssa2, ptr %1, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Quicksort(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  store i32 %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  %11 = add nsw i32 %1, %2
  %12 = sdiv i32 %11, 2
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, ptr %0, i64 %13
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %9, align 4
  br label %16

16:                                               ; preds = %52, %3
  %17 = phi i32 [ %53, %52 ], [ %2, %3 ]
  %18 = phi i32 [ %54, %52 ], [ %1, %3 ]
  %19 = phi ptr [ %55, %52 ], [ %0, %3 ]
  br label %20

20:                                               ; preds = %26, %16
  %21 = phi i32 [ %27, %26 ], [ %18, %16 ]
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, ptr %19, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = icmp slt i32 %24, %15
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = add nsw i32 %21, 1
  store i32 %27, ptr %7, align 4
  br label %20, !llvm.loop !9

28:                                               ; preds = %20
  %.lcssa7 = phi i64 [ %22, %20 ]
  %.lcssa1 = phi i32 [ %21, %20 ]
  %29 = getelementptr inbounds i32, ptr %19, i64 %.lcssa7
  br label %30

30:                                               ; preds = %36, %28
  %31 = phi i32 [ %37, %36 ], [ %17, %28 ]
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, ptr %19, i64 %32
  %34 = load i32, ptr %33, align 4
  %35 = icmp slt i32 %15, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = sub nsw i32 %31, 1
  store i32 %37, ptr %8, align 4
  br label %30, !llvm.loop !10

38:                                               ; preds = %30
  %.lcssa = phi i64 [ %32, %30 ]
  %.lcssa3 = phi i32 [ %31, %30 ]
  %39 = getelementptr inbounds i32, ptr %19, i64 %.lcssa
  %40 = icmp sle i32 %.lcssa1, %.lcssa3
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load i32, ptr %29, align 4
  store i32 %42, ptr %10, align 4
  %43 = load i32, ptr %39, align 4
  store i32 %43, ptr %29, align 4
  %44 = load i32, ptr %10, align 4
  %45 = load ptr, ptr %4, align 8
  %46 = load i32, ptr %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, ptr %45, i64 %47
  store i32 %44, ptr %48, align 4
  %49 = load i32, ptr %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr %7, align 4
  %51 = sub nsw i32 %46, 1
  store i32 %51, ptr %8, align 4
  br label %52

52:                                               ; preds = %41, %38
  %53 = phi i32 [ %51, %41 ], [ %.lcssa3, %38 ]
  %54 = phi i32 [ %50, %41 ], [ %.lcssa1, %38 ]
  %55 = phi ptr [ %45, %41 ], [ %19, %38 ]
  %56 = icmp sle i32 %54, %53
  br i1 %56, label %16, label %57, !llvm.loop !11

57:                                               ; preds = %52
  %.lcssa6 = phi i32 [ %53, %52 ]
  %.lcssa5 = phi i32 [ %54, %52 ]
  %.lcssa4 = phi ptr [ %55, %52 ]
  %58 = load i32, ptr %5, align 4
  %59 = icmp slt i32 %58, %.lcssa6
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  call void @Quicksort(ptr noundef %.lcssa4, i32 noundef %58, i32 noundef %.lcssa6)
  %.pre = load i32, ptr %7, align 4
  br label %61

61:                                               ; preds = %60, %57
  %62 = phi i32 [ %.pre, %60 ], [ %.lcssa5, %57 ]
  %63 = load i32, ptr %6, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load ptr, ptr %4, align 8
  call void @Quicksort(ptr noundef %66, i32 noundef %62, i32 noundef %63)
  br label %67

67:                                               ; preds = %65, %61
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Quick(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @Initarr()
  call void @Quicksort(ptr noundef @sortlist, i32 noundef 1, i32 noundef 5000)
  %3 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4
  %4 = load i32, ptr @littlest, align 4
  %5 = icmp ne i32 %3, %4
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 20000), align 16
  %8 = load i32, ptr @biggest, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %6, %1
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %12

12:                                               ; preds = %10, %6
  %13 = add nsw i32 %0, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %16)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

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
  %6 = icmp slt i32 %5, 100
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  call void @Quick(i32 noundef %5)
  %8 = add nsw i32 %5, 1
  br label %3, !llvm.loop !12

9:                                                ; preds = %3
  %.lcssa = phi i32 [ %4, %3 ]
  store i32 %.lcssa, ptr %2, align 1
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
