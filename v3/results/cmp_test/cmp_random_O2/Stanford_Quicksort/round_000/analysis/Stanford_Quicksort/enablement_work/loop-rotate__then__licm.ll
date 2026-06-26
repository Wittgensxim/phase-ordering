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
  %5 = load i32, ptr @seed, align 4
  ret i32 %5
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
  br i1 %4, label %.lr.ph, label %38

.lr.ph:                                           ; preds = %0
  %.promoted = load i32, ptr %1, align 4
  br label %5

5:                                                ; preds = %.lr.ph, %35
  %6 = phi i32 [ %.promoted, %.lr.ph ], [ %36, %35 ]
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
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = sext i32 %6 to i64
  %21 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr @biggest, align 4
  br label %34

23:                                               ; preds = %5
  %24 = sext i32 %6 to i64
  %25 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr @littlest, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = sext i32 %6 to i64
  %31 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4
  store i32 %32, ptr @littlest, align 4
  br label %33

33:                                               ; preds = %29, %23
  br label %34

34:                                               ; preds = %33, %19
  br label %35

35:                                               ; preds = %34
  %36 = add nsw i32 %6, 1
  %37 = icmp sle i32 %36, 5000
  br i1 %37, label %5, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %35
  %.lcssa1 = phi i32 [ %36, %35 ]
  %.lcssa = phi i32 [ %7, %35 ]
  store i32 %.lcssa, ptr %2, align 4
  store i32 %.lcssa1, ptr %1, align 4
  br label %38

38:                                               ; preds = %._crit_edge, %0
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
  %31 = load ptr, ptr %4, align 8
  %32 = load ptr, ptr %4, align 8
  %.promoted6 = load i32, ptr %7, align 4
  %.promoted = load i32, ptr %8, align 4
  %.promoted13 = load i32, ptr %10, align 4
  br label %33

33:                                               ; preds = %75, %3
  %34 = phi i32 [ %74, %75 ], [ %.promoted13, %3 ]
  %.lcssa512 = phi i32 [ %.lcssa510, %75 ], [ %.promoted, %3 ]
  %.lcssa9 = phi i32 [ %.lcssa7, %75 ], [ %.promoted6, %3 ]
  %35 = sext i32 %.lcssa9 to i64
  %36 = getelementptr inbounds i32, ptr %21, i64 %35
  %37 = load i32, ptr %36, align 4
  %38 = icmp slt i32 %37, %22
  br i1 %38, label %.lr.ph, label %46

.lr.ph:                                           ; preds = %33
  br label %39

39:                                               ; preds = %.lr.ph, %39
  %40 = phi i32 [ %.lcssa9, %.lr.ph ], [ %41, %39 ]
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, ptr %23, i64 %42
  %44 = load i32, ptr %43, align 4
  %45 = icmp slt i32 %44, %24
  br i1 %45, label %39, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %39
  %.lcssa = phi i32 [ %41, %39 ]
  br label %46

46:                                               ; preds = %._crit_edge, %33
  %.lcssa8 = phi i32 [ %.lcssa, %._crit_edge ], [ %.lcssa9, %33 ]
  %47 = sext i32 %.lcssa512 to i64
  %48 = getelementptr inbounds i32, ptr %26, i64 %47
  %49 = load i32, ptr %48, align 4
  %50 = icmp slt i32 %25, %49
  br i1 %50, label %.lr.ph2, label %58

.lr.ph2:                                          ; preds = %46
  br label %51

51:                                               ; preds = %.lr.ph2, %51
  %52 = phi i32 [ %.lcssa512, %.lr.ph2 ], [ %53, %51 ]
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, ptr %28, i64 %54
  %56 = load i32, ptr %55, align 4
  %57 = icmp slt i32 %27, %56
  br i1 %57, label %51, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %51
  %.lcssa5 = phi i32 [ %53, %51 ]
  br label %58

58:                                               ; preds = %._crit_edge3, %46
  %.lcssa511 = phi i32 [ %.lcssa5, %._crit_edge3 ], [ %.lcssa512, %46 ]
  %59 = icmp sle i32 %.lcssa8, %.lcssa511
  br i1 %59, label %60, label %73

60:                                               ; preds = %58
  %61 = sext i32 %.lcssa8 to i64
  %62 = getelementptr inbounds i32, ptr %29, i64 %61
  %63 = load i32, ptr %62, align 4
  %64 = sext i32 %.lcssa511 to i64
  %65 = getelementptr inbounds i32, ptr %30, i64 %64
  %66 = load i32, ptr %65, align 4
  %67 = sext i32 %.lcssa8 to i64
  %68 = getelementptr inbounds i32, ptr %31, i64 %67
  store i32 %66, ptr %68, align 4
  %69 = sext i32 %.lcssa511 to i64
  %70 = getelementptr inbounds i32, ptr %32, i64 %69
  store i32 %63, ptr %70, align 4
  %71 = add nsw i32 %.lcssa8, 1
  %72 = sub nsw i32 %.lcssa511, 1
  br label %73

73:                                               ; preds = %60, %58
  %74 = phi i32 [ %63, %60 ], [ %34, %58 ]
  %.lcssa510 = phi i32 [ %72, %60 ], [ %.lcssa511, %58 ]
  %.lcssa7 = phi i32 [ %71, %60 ], [ %.lcssa8, %58 ]
  br label %75

75:                                               ; preds = %73
  %76 = icmp sle i32 %.lcssa7, %.lcssa510
  br i1 %76, label %33, label %77, !llvm.loop !11

77:                                               ; preds = %75
  %.lcssa14 = phi i32 [ %74, %75 ]
  %.lcssa510.lcssa = phi i32 [ %.lcssa510, %75 ]
  %.lcssa7.lcssa = phi i32 [ %.lcssa7, %75 ]
  store i32 %.lcssa7.lcssa, ptr %7, align 4
  store i32 %.lcssa510.lcssa, ptr %8, align 4
  store i32 %.lcssa14, ptr %10, align 4
  %78 = load i32, ptr %5, align 4
  %79 = load i32, ptr %8, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load ptr, ptr %4, align 8
  %83 = load i32, ptr %5, align 4
  %84 = load i32, ptr %8, align 4
  call void @Quicksort(ptr noundef %82, i32 noundef %83, i32 noundef %84)
  br label %85

85:                                               ; preds = %81, %77
  %86 = load i32, ptr %7, align 4
  %87 = load i32, ptr %6, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load ptr, ptr %4, align 8
  %91 = load i32, ptr %7, align 4
  %92 = load i32, ptr %6, align 4
  call void @Quicksort(ptr noundef %90, i32 noundef %91, i32 noundef %92)
  br label %93

93:                                               ; preds = %89, %85
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
  br i1 %4, label %.lr.ph, label %10

.lr.ph:                                           ; preds = %0
  %.promoted = load i32, ptr %2, align 4
  br label %5

5:                                                ; preds = %.lr.ph, %7
  %6 = phi i32 [ %.promoted, %.lr.ph ], [ %8, %7 ]
  call void @Quick(i32 noundef %6)
  br label %7

7:                                                ; preds = %5
  %8 = add nsw i32 %6, 1
  %9 = icmp slt i32 %8, 100
  br i1 %9, label %5, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %7
  %.lcssa = phi i32 [ %8, %7 ]
  store i32 %.lcssa, ptr %2, align 4
  br label %10

10:                                               ; preds = %._crit_edge, %0
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
