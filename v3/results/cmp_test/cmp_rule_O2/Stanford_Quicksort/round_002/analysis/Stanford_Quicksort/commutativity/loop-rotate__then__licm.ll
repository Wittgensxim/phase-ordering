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
  %3 = load i32, ptr %1, align 4
  %4 = icmp sle i32 %3, 5000
  br i1 %4, label %.lr.ph, label %29

.lr.ph:                                           ; preds = %0
  %.promoted = load i32, ptr %1, align 4
  br label %5

5:                                                ; preds = %.lr.ph, %26
  %6 = phi i32 [ %.promoted, %.lr.ph ], [ %27, %26 ]
  %7 = call i32 @Rand()
  %8 = sdiv i32 %7, 100000
  %9 = mul nsw i32 %8, 100000
  %10 = sub nsw i32 %7, %9
  %11 = sub nsw i32 %10, 50000
  %12 = sext i32 %6 to i64
  %13 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %12
  store i32 %11, ptr %13, align 4
  %14 = sext i32 %6 to i64
  %15 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr @biggest, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 %16, ptr @biggest, align 4
  br label %25

20:                                               ; preds = %5
  %21 = load i32, ptr @littlest, align 4
  %22 = icmp slt i32 %16, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 %16, ptr @littlest, align 4
  br label %24

24:                                               ; preds = %23, %20
  br label %25

25:                                               ; preds = %24, %19
  br label %26

26:                                               ; preds = %25
  %27 = add nsw i32 %6, 1
  %28 = icmp sle i32 %27, 5000
  br i1 %28, label %5, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %26
  %.lcssa1 = phi i32 [ %27, %26 ]
  %.lcssa = phi i32 [ %7, %26 ]
  store i32 %.lcssa, ptr %2, align 1
  store i32 %.lcssa1, ptr %1, align 4
  br label %29

29:                                               ; preds = %._crit_edge, %0
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
  %11 = load i32, ptr %5, align 4
  store i32 %11, ptr %7, align 4
  %12 = load i32, ptr %6, align 4
  store i32 %12, ptr %8, align 4
  %13 = load ptr, ptr %4, align 8
  %14 = load i32, ptr %5, align 4
  %15 = load i32, ptr %6, align 4
  %16 = add nsw i32 %14, %15
  %17 = sdiv i32 %16, 2
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, ptr %13, i64 %18
  %20 = load i32, ptr %19, align 4
  store i32 %20, ptr %9, align 4
  %21 = load ptr, ptr %4, align 8
  %22 = load i32, ptr %9, align 4
  %23 = load ptr, ptr %4, align 8
  %24 = load i32, ptr %9, align 4
  %25 = load i32, ptr %9, align 4
  %26 = load ptr, ptr %4, align 8
  %27 = load i32, ptr %9, align 4
  %28 = load ptr, ptr %4, align 8
  %29 = load ptr, ptr %4, align 8
  %30 = load ptr, ptr %4, align 8
  %.promoted = load i32, ptr %7, align 4
  %.promoted10 = load i32, ptr %8, align 4
  br label %31

31:                                               ; preds = %71, %3
  %.lcssa613 = phi i32 [ %.lcssa611, %71 ], [ %.promoted10, %3 ]
  %.lcssa59 = phi i32 [ %.lcssa57, %71 ], [ %.promoted, %3 ]
  %32 = sext i32 %.lcssa59 to i64
  %33 = getelementptr inbounds i32, ptr %21, i64 %32
  %34 = load i32, ptr %33, align 4
  %35 = icmp slt i32 %34, %22
  br i1 %35, label %.lr.ph, label %43

.lr.ph:                                           ; preds = %31
  br label %36

36:                                               ; preds = %.lr.ph, %36
  %37 = phi i32 [ %.lcssa59, %.lr.ph ], [ %38, %36 ]
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, ptr %23, i64 %39
  %41 = load i32, ptr %40, align 4
  %42 = icmp slt i32 %41, %24
  br i1 %42, label %36, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %36
  %.lcssa5 = phi i32 [ %38, %36 ]
  store i32 %.lcssa5, ptr %7, align 4
  br label %43

43:                                               ; preds = %._crit_edge, %31
  %.lcssa58 = phi i32 [ %.lcssa5, %._crit_edge ], [ %.lcssa59, %31 ]
  %44 = sext i32 %.lcssa613 to i64
  %45 = getelementptr inbounds i32, ptr %26, i64 %44
  %46 = load i32, ptr %45, align 4
  %47 = icmp slt i32 %25, %46
  br i1 %47, label %.lr.ph2, label %55

.lr.ph2:                                          ; preds = %43
  br label %48

48:                                               ; preds = %.lr.ph2, %48
  %49 = phi i32 [ %.lcssa613, %.lr.ph2 ], [ %50, %48 ]
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, ptr %28, i64 %51
  %53 = load i32, ptr %52, align 4
  %54 = icmp slt i32 %27, %53
  br i1 %54, label %48, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %48
  %.lcssa6 = phi i32 [ %50, %48 ]
  %split = phi ptr [ %28, %48 ]
  %split4 = phi i32 [ %50, %48 ]
  store i32 %.lcssa6, ptr %8, align 4
  br label %55

55:                                               ; preds = %._crit_edge3, %43
  %.lcssa612 = phi i32 [ %.lcssa6, %._crit_edge3 ], [ %.lcssa613, %43 ]
  %.lcssa1 = phi ptr [ %split, %._crit_edge3 ], [ %26, %43 ]
  %.lcssa = phi i32 [ %split4, %._crit_edge3 ], [ %.lcssa613, %43 ]
  %56 = icmp sle i32 %.lcssa58, %.lcssa
  br i1 %56, label %57, label %70

57:                                               ; preds = %55
  %58 = sext i32 %.lcssa58 to i64
  %59 = getelementptr inbounds i32, ptr %.lcssa1, i64 %58
  %60 = load i32, ptr %59, align 4
  store i32 %60, ptr %10, align 4
  %61 = sext i32 %.lcssa612 to i64
  %62 = getelementptr inbounds i32, ptr %29, i64 %61
  %63 = load i32, ptr %62, align 4
  %64 = sext i32 %.lcssa58 to i64
  %65 = getelementptr inbounds i32, ptr %29, i64 %64
  store i32 %63, ptr %65, align 4
  %66 = sext i32 %.lcssa612 to i64
  %67 = getelementptr inbounds i32, ptr %30, i64 %66
  store i32 %60, ptr %67, align 4
  %68 = add nsw i32 %.lcssa58, 1
  store i32 %68, ptr %7, align 4
  %69 = sub nsw i32 %.lcssa612, 1
  store i32 %69, ptr %8, align 4
  br label %70

70:                                               ; preds = %57, %55
  %.lcssa611 = phi i32 [ %69, %57 ], [ %.lcssa612, %55 ]
  %.lcssa57 = phi i32 [ %68, %57 ], [ %.lcssa58, %55 ]
  br label %71

71:                                               ; preds = %70
  %72 = icmp sle i32 %.lcssa57, %.lcssa611
  br i1 %72, label %31, label %73, !llvm.loop !11

73:                                               ; preds = %71
  %.lcssa2 = phi i32 [ %.lcssa611, %71 ]
  %74 = load i32, ptr %5, align 4
  %75 = icmp slt i32 %74, %.lcssa2
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load ptr, ptr %4, align 8
  call void @Quicksort(ptr noundef %77, i32 noundef %74, i32 noundef %.lcssa2)
  br label %78

78:                                               ; preds = %76, %73
  %79 = load i32, ptr %7, align 4
  %80 = load i32, ptr %6, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load ptr, ptr %4, align 8
  call void @Quicksort(ptr noundef %83, i32 noundef %79, i32 noundef %80)
  br label %84

84:                                               ; preds = %82, %78
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
  %13 = load i32, ptr %2, align 4
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %17)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp slt i32 %3, 100
  br i1 %4, label %.lr.ph, label %11

.lr.ph:                                           ; preds = %0
  %.promoted = load i32, ptr %2, align 4
  br label %5

5:                                                ; preds = %.lr.ph, %8
  %6 = phi i32 [ %.promoted, %.lr.ph ], [ %9, %8 ]
  %7 = phi i32 [ %3, %.lr.ph ], [ %9, %8 ]
  call void @Quick(i32 noundef %7)
  br label %8

8:                                                ; preds = %5
  %9 = add nsw i32 %6, 1
  %10 = icmp slt i32 %9, 100
  br i1 %10, label %5, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %8
  %.lcssa = phi i32 [ %9, %8 ]
  store i32 %.lcssa, ptr %2, align 4
  br label %11

11:                                               ; preds = %._crit_edge, %0
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
