; ModuleID = 'results\cmp_test\cmp_rule_O2\Stanford_Bubblesort\round_000\output.ll'
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
  %.promoted = load i32, ptr %1, align 4
  %.promoted1 = load i32, ptr %2, align 1
  br label %3

3:                                                ; preds = %25, %0
  %4 = phi i32 [ %8, %25 ], [ %.promoted1, %0 ]
  %5 = phi i32 [ %26, %25 ], [ %.promoted, %0 ]
  %6 = icmp sle i32 %5, 500
  br i1 %6, label %7, label %27

7:                                                ; preds = %3
  %8 = call i32 @Rand()
  %9 = sdiv i32 %8, 100000
  %10 = mul nsw i32 %9, 100000
  %11 = sub nsw i32 %8, %10
  %12 = sub nsw i32 %11, 50000
  %13 = sext i32 %5 to i64
  %14 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %13
  store i32 %12, ptr %14, align 4
  %15 = sext i32 %5 to i64
  %16 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = load i32, ptr @biggest, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %7
  store i32 %17, ptr @biggest, align 4
  br label %25

21:                                               ; preds = %7
  %22 = load i32, ptr @littlest, align 4
  %23 = icmp slt i32 %17, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 %17, ptr @littlest, align 4
  br label %25

25:                                               ; preds = %20, %24, %21
  %26 = add nsw i32 %5, 1
  br label %3, !llvm.loop !7

27:                                               ; preds = %3
  %.lcssa2 = phi i32 [ %4, %3 ]
  %.lcssa = phi i32 [ %5, %3 ]
  store i32 %.lcssa, ptr %1, align 4
  store i32 %.lcssa2, ptr %2, align 1
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
  %top.promoted = load i32, ptr @top, align 4
  %.promoted4 = load i32, ptr %3, align 4
  %.promoted = load i32, ptr %4, align 4
  br label %5

5:                                                ; preds = %34, %1
  %.lcssa36 = phi i32 [ %.lcssa3, %34 ], [ %.promoted, %1 ]
  %.lcssa15 = phi i32 [ %.lcssa1, %34 ], [ %.promoted4, %1 ]
  %6 = phi i32 [ %35, %34 ], [ %top.promoted, %1 ]
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %36

8:                                                ; preds = %5, %31
  %9 = phi i32 [ %32, %31 ], [ %.lcssa36, %5 ]
  %10 = phi i32 [ %33, %31 ], [ 1, %5 ]
  %11 = icmp slt i32 %10, %6
  br i1 %11, label %12, label %34

12:                                               ; preds = %8
  %13 = sext i32 %10 to i64
  %14 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = add nsw i32 %10, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp sgt i32 %15, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %12
  %22 = add nsw i32 %10, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4
  %26 = sext i32 %10 to i64
  %27 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %26
  store i32 %25, ptr %27, align 4
  %28 = add nsw i32 %10, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %29
  store i32 %15, ptr %30, align 4
  br label %31

31:                                               ; preds = %21, %12
  %32 = phi i32 [ %15, %21 ], [ %9, %12 ]
  %33 = add nsw i32 %10, 1
  br label %8, !llvm.loop !9

34:                                               ; preds = %8
  %.lcssa3 = phi i32 [ %9, %8 ]
  %.lcssa1 = phi i32 [ %10, %8 ]
  %.lcssa = phi i32 [ %6, %8 ]
  %35 = sub nsw i32 %.lcssa, 1
  store i32 %35, ptr @top, align 4
  br label %5, !llvm.loop !10

36:                                               ; preds = %5
  %.lcssa36.lcssa = phi i32 [ %.lcssa36, %5 ]
  %.lcssa15.lcssa = phi i32 [ %.lcssa15, %5 ]
  store i32 %.lcssa15.lcssa, ptr %3, align 4
  store i32 %.lcssa36.lcssa, ptr %4, align 4
  %37 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4
  %38 = load i32, ptr @littlest, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 2000), align 16
  %42 = load i32, ptr @biggest, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40, %36
  %45 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %46

46:                                               ; preds = %44, %40
  %47 = load i32, ptr %2, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %49
  %51 = load i32, ptr %50, align 4
  %52 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %51)
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

3:                                                ; preds = %6, %0
  %4 = phi i32 [ %7, %6 ], [ %.promoted, %0 ]
  %5 = icmp slt i32 %4, 100
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  call void @Bubble(i32 noundef %4)
  %7 = add nsw i32 %4, 1
  br label %3, !llvm.loop !11

8:                                                ; preds = %3
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
