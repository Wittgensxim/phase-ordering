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
  call void @Initrand()
  store i32 0, ptr @biggest, align 4
  store i32 0, ptr @littlest, align 4
  br label %1

1:                                                ; preds = %25, %0
  %2 = phi i32 [ %6, %25 ], [ undef, %0 ]
  %3 = phi i32 [ %26, %25 ], [ 1, %0 ]
  %4 = icmp sle i32 %3, 5000
  br i1 %4, label %5, label %27

5:                                                ; preds = %1
  %6 = call i32 @Rand()
  %7 = sdiv i32 %6, 100000
  %8 = mul nsw i32 %7, 100000
  %9 = sub nsw i32 %6, %8
  %10 = sub nsw i32 %9, 50000
  %11 = sext i32 %3 to i64
  %12 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %11
  store i32 %10, ptr %12, align 4
  %13 = sext i32 %3 to i64
  %14 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr @biggest, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32 %15, ptr @biggest, align 4
  br label %24

19:                                               ; preds = %5
  %20 = load i32, ptr @littlest, align 4
  %21 = icmp slt i32 %15, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 %15, ptr @littlest, align 4
  br label %23

23:                                               ; preds = %22, %19
  br label %24

24:                                               ; preds = %23, %18
  br label %25

25:                                               ; preds = %24
  %26 = add nsw i32 %3, 1
  br label %1, !llvm.loop !7

27:                                               ; preds = %1
  %.lcssa2 = phi i32 [ %2, %1 ]
  %.lcssa = phi i32 [ %3, %1 ]
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

9:                                                ; preds = %45, %3
  %10 = phi i32 [ %44, %45 ], [ undef, %3 ]
  %.lcssa59 = phi i32 [ %.lcssa510, %45 ], [ %2, %3 ]
  %.lcssa37 = phi i32 [ %.lcssa38, %45 ], [ %1, %3 ]
  br label %11

11:                                               ; preds = %17, %9
  %12 = phi i32 [ %18, %17 ], [ %.lcssa37, %9 ]
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, ptr %0, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp slt i32 %15, %8
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = add nsw i32 %12, 1
  br label %11, !llvm.loop !9

19:                                               ; preds = %11
  %.lcssa3 = phi i32 [ %12, %11 ]
  br label %20

20:                                               ; preds = %26, %19
  %21 = phi i32 [ %27, %26 ], [ %.lcssa59, %19 ]
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, ptr %0, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = icmp slt i32 %8, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = sub nsw i32 %21, 1
  br label %20, !llvm.loop !10

28:                                               ; preds = %20
  %.lcssa5 = phi i32 [ %21, %20 ]
  %.lcssa1 = phi ptr [ %0, %20 ]
  %.lcssa = phi i32 [ %21, %20 ]
  %29 = icmp sle i32 %.lcssa3, %.lcssa
  br i1 %29, label %30, label %43

30:                                               ; preds = %28
  %31 = sext i32 %.lcssa3 to i64
  %32 = getelementptr inbounds i32, ptr %.lcssa1, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = sext i32 %.lcssa5 to i64
  %35 = getelementptr inbounds i32, ptr %0, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = sext i32 %.lcssa3 to i64
  %38 = getelementptr inbounds i32, ptr %0, i64 %37
  store i32 %36, ptr %38, align 4
  %39 = sext i32 %.lcssa5 to i64
  %40 = getelementptr inbounds i32, ptr %0, i64 %39
  store i32 %33, ptr %40, align 4
  %41 = add nsw i32 %.lcssa3, 1
  %42 = sub nsw i32 %.lcssa5, 1
  br label %43

43:                                               ; preds = %30, %28
  %44 = phi i32 [ %33, %30 ], [ %10, %28 ]
  %.lcssa510 = phi i32 [ %42, %30 ], [ %.lcssa5, %28 ]
  %.lcssa38 = phi i32 [ %41, %30 ], [ %.lcssa3, %28 ]
  br label %45

45:                                               ; preds = %43
  %46 = icmp sle i32 %.lcssa38, %.lcssa510
  br i1 %46, label %9, label %47, !llvm.loop !11

47:                                               ; preds = %45
  %.lcssa12 = phi i32 [ %44, %45 ]
  %.lcssa510.lcssa = phi i32 [ %.lcssa510, %45 ]
  %.lcssa38.lcssa = phi i32 [ %.lcssa38, %45 ]
  %.lcssa2 = phi i32 [ %.lcssa510, %45 ]
  %48 = icmp slt i32 %1, %.lcssa2
  br i1 %48, label %49, label %50

49:                                               ; preds = %47
  call void @Quicksort(ptr noundef %0, i32 noundef %1, i32 noundef %.lcssa2)
  br label %50

50:                                               ; preds = %49, %47
  %51 = icmp slt i32 %.lcssa38.lcssa, %2
  br i1 %51, label %52, label %53

52:                                               ; preds = %50
  call void @Quicksort(ptr noundef %0, i32 noundef %.lcssa38.lcssa, i32 noundef %2)
  br label %53

53:                                               ; preds = %52, %50
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

1:                                                ; preds = %5, %0
  %2 = phi i32 [ %6, %5 ], [ 0, %0 ]
  %3 = icmp slt i32 %2, 100
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  call void @Quick(i32 noundef %2)
  br label %5

5:                                                ; preds = %4
  %6 = add nsw i32 %2, 1
  br label %1, !llvm.loop !12

7:                                                ; preds = %1
  %.lcssa = phi i32 [ %2, %1 ]
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
