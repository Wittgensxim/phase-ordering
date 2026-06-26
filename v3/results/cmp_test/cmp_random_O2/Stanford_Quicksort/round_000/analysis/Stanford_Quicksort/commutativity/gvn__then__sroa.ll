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
  call void @Initrand()
  store i32 0, ptr @biggest, align 4
  store i32 0, ptr @littlest, align 4
  br label %1

1:                                                ; preds = %20, %0
  %2 = phi i32 [ %21, %20 ], [ 1, %0 ]
  %3 = icmp sle i32 %2, 5000
  br i1 %3, label %4, label %22

4:                                                ; preds = %1
  %5 = call i32 @Rand()
  %6 = sdiv i32 %5, 100000
  %7 = mul nsw i32 %6, 100000
  %8 = sub nsw i32 %5, %7
  %9 = sub nsw i32 %8, 50000
  %10 = sext i32 %2 to i64
  %11 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %10
  store i32 %9, ptr %11, align 4
  %12 = load i32, ptr @biggest, align 4
  %13 = icmp sgt i32 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 %9, ptr @biggest, align 4
  br label %20

15:                                               ; preds = %4
  %16 = load i32, ptr @littlest, align 4
  %17 = icmp slt i32 %9, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 %9, ptr @littlest, align 4
  br label %19

19:                                               ; preds = %18, %15
  br label %20

20:                                               ; preds = %19, %14
  %21 = add nsw i32 %2, 1
  br label %1, !llvm.loop !7

22:                                               ; preds = %1
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
  %.07 = phi i32 [ %2, %3 ], [ %.29, %39 ]
  %.0 = phi i32 [ %1, %3 ], [ %.2, %39 ]
  %10 = phi i32 [ %40, %39 ], [ %2, %3 ]
  %11 = phi i32 [ %41, %39 ], [ %1, %3 ]
  %12 = phi ptr [ %42, %39 ], [ %0, %3 ]
  br label %13

13:                                               ; preds = %19, %9
  %.1 = phi i32 [ %.0, %9 ], [ %20, %19 ]
  %14 = phi i32 [ %20, %19 ], [ %11, %9 ]
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %12, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = icmp slt i32 %17, %8
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = add nsw i32 %14, 1
  br label %13, !llvm.loop !9

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %28, %21
  %.18 = phi i32 [ %.07, %21 ], [ %29, %28 ]
  %23 = phi i32 [ %29, %28 ], [ %10, %21 ]
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %12, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = icmp slt i32 %8, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = sub nsw i32 %23, 1
  br label %22, !llvm.loop !10

30:                                               ; preds = %22
  %31 = icmp sle i32 %14, %23
  br i1 %31, label %32, label %39

32:                                               ; preds = %30
  %33 = load i32, ptr %16, align 4
  %34 = load i32, ptr %25, align 4
  store i32 %34, ptr %16, align 4
  %35 = sext i32 %.18 to i64
  %36 = getelementptr inbounds i32, ptr %0, i64 %35
  store i32 %33, ptr %36, align 4
  %37 = add nsw i32 %.1, 1
  %38 = sub nsw i32 %.18, 1
  br label %39

39:                                               ; preds = %32, %30
  %.29 = phi i32 [ %38, %32 ], [ %.18, %30 ]
  %.2 = phi i32 [ %37, %32 ], [ %.1, %30 ]
  %40 = phi i32 [ %38, %32 ], [ %23, %30 ]
  %41 = phi i32 [ %37, %32 ], [ %14, %30 ]
  %42 = phi ptr [ %0, %32 ], [ %12, %30 ]
  %43 = icmp sle i32 %41, %40
  br i1 %43, label %9, label %44, !llvm.loop !11

44:                                               ; preds = %39
  %45 = icmp slt i32 %1, %40
  br i1 %45, label %46, label %47

46:                                               ; preds = %44
  call void @Quicksort(ptr noundef %42, i32 noundef %1, i32 noundef %40)
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i32 [ %.2, %46 ], [ %41, %44 ]
  %49 = icmp slt i32 %48, %2
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  call void @Quicksort(ptr noundef %0, i32 noundef %48, i32 noundef %2)
  br label %51

51:                                               ; preds = %50, %47
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

1:                                                ; preds = %4, %0
  %2 = phi i32 [ %5, %4 ], [ 0, %0 ]
  %3 = icmp slt i32 %2, 100
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  call void @Quick(i32 noundef %2)
  %5 = add nsw i32 %2, 1
  br label %1, !llvm.loop !12

6:                                                ; preds = %1
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
