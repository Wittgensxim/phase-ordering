; ModuleID = 'results\cmp_test\cmp_rule_O2\Stanford_Bubblesort\Stanford_Bubblesort.ll'
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
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bInitarr() #0 {
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
  %7 = icmp sle i32 %6, 500
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
define dso_local void @Bubble(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @bInitarr()
  store i32 500, ptr @top, align 4
  %.promoted3 = load i32, ptr %3, align 4
  %.promoted5 = load i32, ptr %4, align 1
  br label %5

5:                                                ; preds = %27, %1
  %6 = phi i32 [ %28, %27 ], [ poison, %1 ]
  %.lcssa6 = phi i32 [ %.lcssa, %27 ], [ %.promoted5, %1 ]
  %.lcssa24 = phi i32 [ %.lcssa2, %27 ], [ %.promoted3, %1 ]
  %7 = phi i32 [ %28, %27 ], [ 500, %1 ]
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %29

9:                                                ; preds = %5
  br label %10

10:                                               ; preds = %25, %9
  %11 = phi i32 [ %19, %25 ], [ 1, %9 ]
  %12 = phi i32 [ %26, %25 ], [ %.lcssa6, %9 ]
  %13 = phi i32 [ %19, %25 ], [ 1, %9 ]
  %14 = icmp slt i32 %13, %7
  br i1 %14, label %15, label %27

15:                                               ; preds = %10
  %16 = sext i32 %13 to i64
  %17 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = add nsw i32 %13, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4
  %23 = icmp sgt i32 %18, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store i32 %22, ptr %17, align 4
  store i32 %18, ptr %21, align 4
  br label %25

25:                                               ; preds = %24, %15
  %26 = phi i32 [ %18, %24 ], [ %12, %15 ]
  br label %10, !llvm.loop !9

27:                                               ; preds = %10
  %.lcssa2 = phi i32 [ %11, %10 ]
  %.lcssa = phi i32 [ %12, %10 ]
  %28 = sub nsw i32 %7, 1
  br label %5, !llvm.loop !10

29:                                               ; preds = %5
  %.lcssa7 = phi i32 [ %6, %5 ]
  %.lcssa6.lcssa = phi i32 [ %.lcssa6, %5 ]
  %.lcssa24.lcssa = phi i32 [ %.lcssa24, %5 ]
  store i32 %.lcssa24.lcssa, ptr %3, align 4
  store i32 %.lcssa6.lcssa, ptr %4, align 1
  store i32 %.lcssa7, ptr @top, align 4
  %30 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4
  %31 = load i32, ptr @littlest, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 2000), align 16
  %35 = load i32, ptr @biggest, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %29
  %38 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %39

39:                                               ; preds = %37, %33
  %40 = add nsw i32 %0, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4
  %44 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %43)
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
  call void @Bubble(i32 noundef %5)
  %8 = add nsw i32 %5, 1
  br label %3, !llvm.loop !11

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
