; ModuleID = 'results\cmp_test\cmp_rule_O2\Stanford_Quicksort\round_000\output.ll'
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
  %.promoted = load i32, ptr %1, align 4
  %.promoted1 = load i32, ptr %2, align 1
  br label %3

3:                                                ; preds = %25, %0
  %4 = phi i32 [ %8, %25 ], [ %.promoted1, %0 ]
  %5 = phi i32 [ %26, %25 ], [ %.promoted, %0 ]
  %6 = icmp sle i32 %5, 5000
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
  %23 = load i32, ptr %9, align 4
  %24 = load ptr, ptr %4, align 8
  %25 = load ptr, ptr %4, align 8
  %26 = load ptr, ptr %4, align 8
  %.promoted6 = load i32, ptr %7, align 4
  %.promoted = load i32, ptr %8, align 4
  %.promoted11 = load i32, ptr %10, align 4
  br label %27

27:                                               ; preds = %60, %3
  %28 = phi i32 [ %61, %60 ], [ %.promoted11, %3 ]
  %.lcssa59 = phi i32 [ %.lcssa510, %60 ], [ %.promoted, %3 ]
  %.lcssa37 = phi i32 [ %.lcssa38, %60 ], [ %.promoted6, %3 ]
  br label %29

29:                                               ; preds = %35, %27
  %30 = phi i32 [ %36, %35 ], [ %.lcssa37, %27 ]
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, ptr %21, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = icmp slt i32 %33, %22
  br i1 %34, label %35, label %.preheader

.preheader:                                       ; preds = %29
  %.lcssa3 = phi i32 [ %30, %29 ]
  br label %37

35:                                               ; preds = %29
  %36 = add nsw i32 %30, 1
  br label %29, !llvm.loop !9

37:                                               ; preds = %.preheader, %43
  %38 = phi i32 [ %.lcssa59, %.preheader ], [ %44, %43 ]
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, ptr %24, i64 %39
  %41 = load i32, ptr %40, align 4
  %42 = icmp slt i32 %23, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = sub nsw i32 %38, 1
  br label %37, !llvm.loop !10

45:                                               ; preds = %37
  %.lcssa5 = phi i32 [ %38, %37 ]
  %.lcssa1 = phi ptr [ %24, %37 ]
  %.lcssa = phi i32 [ %38, %37 ]
  %46 = icmp sle i32 %.lcssa3, %.lcssa
  br i1 %46, label %47, label %60

47:                                               ; preds = %45
  %48 = sext i32 %.lcssa3 to i64
  %49 = getelementptr inbounds i32, ptr %.lcssa1, i64 %48
  %50 = load i32, ptr %49, align 4
  %51 = sext i32 %.lcssa5 to i64
  %52 = getelementptr inbounds i32, ptr %25, i64 %51
  %53 = load i32, ptr %52, align 4
  %54 = sext i32 %.lcssa3 to i64
  %55 = getelementptr inbounds i32, ptr %25, i64 %54
  store i32 %53, ptr %55, align 4
  %56 = sext i32 %.lcssa5 to i64
  %57 = getelementptr inbounds i32, ptr %26, i64 %56
  store i32 %50, ptr %57, align 4
  %58 = add nsw i32 %.lcssa3, 1
  %59 = sub nsw i32 %.lcssa5, 1
  br label %60

60:                                               ; preds = %45, %47
  %61 = phi i32 [ %28, %45 ], [ %50, %47 ]
  %.lcssa510 = phi i32 [ %.lcssa5, %45 ], [ %59, %47 ]
  %.lcssa38 = phi i32 [ %.lcssa3, %45 ], [ %58, %47 ]
  %62 = icmp sle i32 %.lcssa38, %.lcssa510
  br i1 %62, label %27, label %63, !llvm.loop !11

63:                                               ; preds = %60
  %.lcssa12 = phi i32 [ %61, %60 ]
  %.lcssa510.lcssa = phi i32 [ %.lcssa510, %60 ]
  %.lcssa38.lcssa = phi i32 [ %.lcssa38, %60 ]
  %.lcssa2 = phi i32 [ %.lcssa510, %60 ]
  store i32 %.lcssa38.lcssa, ptr %7, align 4
  store i32 %.lcssa510.lcssa, ptr %8, align 4
  store i32 %.lcssa12, ptr %10, align 4
  %64 = load i32, ptr %5, align 4
  %65 = icmp slt i32 %64, %.lcssa2
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load ptr, ptr %4, align 8
  call void @Quicksort(ptr noundef %67, i32 noundef %64, i32 noundef %.lcssa2)
  br label %68

68:                                               ; preds = %66, %63
  %69 = load i32, ptr %7, align 4
  %70 = load i32, ptr %6, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load ptr, ptr %4, align 8
  call void @Quicksort(ptr noundef %73, i32 noundef %69, i32 noundef %70)
  br label %74

74:                                               ; preds = %72, %68
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
  %.promoted = load i32, ptr %2, align 4
  br label %3

3:                                                ; preds = %6, %0
  %4 = phi i32 [ %7, %6 ], [ %.promoted, %0 ]
  %5 = icmp slt i32 %4, 100
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  call void @Quick(i32 noundef %4)
  %7 = add nsw i32 %4, 1
  br label %3, !llvm.loop !12

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
