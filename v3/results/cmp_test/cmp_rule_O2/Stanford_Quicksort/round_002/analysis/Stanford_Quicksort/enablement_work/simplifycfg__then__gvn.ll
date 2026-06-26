; ModuleID = 'results\cmp_test\cmp_rule_O2\Stanford_Quicksort\round_001\output.ll'
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
  br label %3

3:                                                ; preds = %21, %0
  %4 = phi i32 [ %22, %21 ], [ 1, %0 ]
  %5 = icmp sle i32 %4, 5000
  br i1 %5, label %6, label %23

6:                                                ; preds = %3
  %7 = call i32 @Rand()
  store i32 %7, ptr %2, align 4
  %8 = sdiv i32 %7, 100000
  %9 = mul nsw i32 %8, 100000
  %10 = sub nsw i32 %7, %9
  %11 = sub nsw i32 %10, 50000
  %12 = sext i32 %4 to i64
  %13 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %12
  store i32 %11, ptr %13, align 4
  %14 = load i32, ptr @biggest, align 4
  %15 = icmp sgt i32 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %6
  store i32 %11, ptr @biggest, align 4
  br label %21

17:                                               ; preds = %6
  %18 = load i32, ptr @littlest, align 4
  %19 = icmp slt i32 %11, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 %11, ptr @littlest, align 4
  br label %21

21:                                               ; preds = %16, %20, %17
  %22 = add nsw i32 %4, 1
  store i32 %22, ptr %1, align 4
  br label %3, !llvm.loop !7

23:                                               ; preds = %3
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

16:                                               ; preds = %49, %3
  %17 = phi i32 [ %50, %49 ], [ %2, %3 ]
  %18 = phi i32 [ %51, %49 ], [ %1, %3 ]
  %19 = phi ptr [ %52, %49 ], [ %0, %3 ]
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

28:                                               ; preds = %20, %34
  %29 = phi i32 [ %17, %20 ], [ %35, %34 ]
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, ptr %19, i64 %30
  %32 = load i32, ptr %31, align 4
  %33 = icmp slt i32 %15, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = sub nsw i32 %29, 1
  store i32 %35, ptr %8, align 4
  br label %28, !llvm.loop !10

36:                                               ; preds = %28
  %37 = icmp sle i32 %21, %29
  br i1 %37, label %38, label %49

38:                                               ; preds = %36
  %39 = load i32, ptr %23, align 4
  store i32 %39, ptr %10, align 4
  %40 = load i32, ptr %31, align 4
  store i32 %40, ptr %23, align 4
  %41 = load i32, ptr %10, align 4
  %42 = load ptr, ptr %4, align 8
  %43 = load i32, ptr %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, ptr %42, i64 %44
  store i32 %41, ptr %45, align 4
  %46 = load i32, ptr %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %7, align 4
  %48 = sub nsw i32 %43, 1
  store i32 %48, ptr %8, align 4
  br label %49

49:                                               ; preds = %36, %38
  %50 = phi i32 [ %29, %36 ], [ %48, %38 ]
  %51 = phi i32 [ %21, %36 ], [ %47, %38 ]
  %52 = phi ptr [ %19, %36 ], [ %42, %38 ]
  %53 = icmp sle i32 %51, %50
  br i1 %53, label %16, label %54, !llvm.loop !11

54:                                               ; preds = %49
  %55 = load i32, ptr %5, align 4
  %56 = icmp slt i32 %55, %50
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  call void @Quicksort(ptr noundef %52, i32 noundef %55, i32 noundef %50)
  %.pre = load i32, ptr %7, align 4
  br label %58

58:                                               ; preds = %57, %54
  %59 = phi i32 [ %.pre, %57 ], [ %51, %54 ]
  %60 = load i32, ptr %6, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load ptr, ptr %4, align 8
  call void @Quicksort(ptr noundef %63, i32 noundef %59, i32 noundef %60)
  br label %64

64:                                               ; preds = %62, %58
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
  br label %3

3:                                                ; preds = %6, %0
  %4 = phi i32 [ %7, %6 ], [ 0, %0 ]
  %5 = icmp slt i32 %4, 100
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  call void @Quick(i32 noundef %4)
  %7 = add nsw i32 %4, 1
  store i32 %7, ptr %2, align 4
  br label %3, !llvm.loop !12

8:                                                ; preds = %3
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
