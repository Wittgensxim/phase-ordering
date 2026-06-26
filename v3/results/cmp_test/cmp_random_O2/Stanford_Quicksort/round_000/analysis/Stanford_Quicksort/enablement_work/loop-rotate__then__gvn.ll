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
  br i1 true, label %.lr.ph, label %._crit_edge1

._crit_edge1:                                     ; preds = %0
  br label %23

.lr.ph:                                           ; preds = %0
  br label %3

3:                                                ; preds = %.lr.ph, %20
  %4 = phi i32 [ 1, %.lr.ph ], [ %21, %20 ]
  %5 = call i32 @Rand()
  store i32 %5, ptr %2, align 4
  %6 = sdiv i32 %5, 100000
  %7 = mul nsw i32 %6, 100000
  %8 = sub nsw i32 %5, %7
  %9 = sub nsw i32 %8, 50000
  %10 = sext i32 %4 to i64
  %11 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %10
  store i32 %9, ptr %11, align 4
  %12 = load i32, ptr @biggest, align 4
  %13 = icmp sgt i32 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 %9, ptr @biggest, align 4
  br label %20

15:                                               ; preds = %3
  %16 = load i32, ptr @littlest, align 4
  %17 = icmp slt i32 %9, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 %9, ptr @littlest, align 4
  br label %19

19:                                               ; preds = %18, %15
  br label %20

20:                                               ; preds = %19, %14
  %21 = add nsw i32 %4, 1
  store i32 %21, ptr %1, align 4
  %22 = icmp sle i32 %21, 5000
  br i1 %22, label %3, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %20
  br label %23

23:                                               ; preds = %._crit_edge1, %._crit_edge
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

16:                                               ; preds = %66, %3
  %17 = phi i32 [ %67, %66 ], [ %2, %3 ]
  %18 = phi i32 [ %68, %66 ], [ %1, %3 ]
  %19 = phi ptr [ %69, %66 ], [ %0, %3 ]
  %20 = phi ptr [ %70, %66 ], [ %0, %3 ]
  %21 = phi i32 [ %49, %66 ], [ %15, %3 ]
  %22 = sext i32 %18 to i64
  %23 = getelementptr inbounds i32, ptr %20, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = icmp slt i32 %24, %21
  br i1 %25, label %.lr.ph, label %33

.lr.ph:                                           ; preds = %16
  br label %26

26:                                               ; preds = %.lr.ph, %26
  %27 = phi i32 [ %18, %.lr.ph ], [ %28, %26 ]
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, ptr %20, i64 %29
  %31 = load i32, ptr %30, align 4
  %32 = icmp slt i32 %31, %21
  br i1 %32, label %26, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %26
  br label %33

33:                                               ; preds = %._crit_edge, %16
  %34 = phi i32 [ %28, %._crit_edge ], [ %18, %16 ]
  %35 = sext i32 %17 to i64
  %36 = getelementptr inbounds i32, ptr %20, i64 %35
  %37 = load i32, ptr %36, align 4
  %38 = icmp slt i32 %21, %37
  br i1 %38, label %.lr.ph2, label %46

.lr.ph2:                                          ; preds = %33
  br label %39

39:                                               ; preds = %.lr.ph2, %39
  %40 = phi i32 [ %17, %.lr.ph2 ], [ %41, %39 ]
  %41 = sub nsw i32 %40, 1
  store i32 %41, ptr %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, ptr %19, i64 %42
  %44 = load i32, ptr %43, align 4
  %45 = icmp slt i32 %15, %44
  br i1 %45, label %39, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %39
  br label %46

46:                                               ; preds = %._crit_edge3, %33
  %47 = phi i32 [ %41, %._crit_edge3 ], [ %17, %33 ]
  %48 = phi ptr [ %19, %._crit_edge3 ], [ %20, %33 ]
  %49 = phi i32 [ %15, %._crit_edge3 ], [ %21, %33 ]
  %50 = icmp sle i32 %34, %47
  br i1 %50, label %51, label %66

51:                                               ; preds = %46
  %52 = sext i32 %34 to i64
  %53 = getelementptr inbounds i32, ptr %19, i64 %52
  %54 = load i32, ptr %53, align 4
  store i32 %54, ptr %10, align 4
  %55 = sext i32 %47 to i64
  %56 = getelementptr inbounds i32, ptr %19, i64 %55
  %57 = load i32, ptr %56, align 4
  store i32 %57, ptr %53, align 4
  %58 = load i32, ptr %10, align 4
  %59 = load ptr, ptr %4, align 8
  %60 = load i32, ptr %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, ptr %59, i64 %61
  store i32 %58, ptr %62, align 4
  %63 = load i32, ptr %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, ptr %7, align 4
  %65 = sub nsw i32 %60, 1
  store i32 %65, ptr %8, align 4
  br label %66

66:                                               ; preds = %51, %46
  %67 = phi i32 [ %65, %51 ], [ %47, %46 ]
  %68 = phi i32 [ %64, %51 ], [ %34, %46 ]
  %69 = phi ptr [ %59, %51 ], [ %19, %46 ]
  %70 = phi ptr [ %59, %51 ], [ %48, %46 ]
  %71 = icmp sle i32 %68, %67
  br i1 %71, label %16, label %72, !llvm.loop !11

72:                                               ; preds = %66
  %73 = load i32, ptr %5, align 4
  %74 = icmp slt i32 %73, %67
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  call void @Quicksort(ptr noundef %69, i32 noundef %73, i32 noundef %67)
  %.pre = load i32, ptr %7, align 4
  br label %76

76:                                               ; preds = %75, %72
  %77 = phi i32 [ %.pre, %75 ], [ %68, %72 ]
  %78 = load i32, ptr %6, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load ptr, ptr %4, align 8
  call void @Quicksort(ptr noundef %81, i32 noundef %77, i32 noundef %78)
  br label %82

82:                                               ; preds = %80, %76
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
  br i1 true, label %.lr.ph, label %._crit_edge1

._crit_edge1:                                     ; preds = %0
  br label %7

.lr.ph:                                           ; preds = %0
  br label %3

3:                                                ; preds = %.lr.ph, %3
  %4 = phi i32 [ 0, %.lr.ph ], [ %5, %3 ]
  call void @Quick(i32 noundef %4)
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr %2, align 4
  %6 = icmp slt i32 %5, 100
  br i1 %6, label %3, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %3
  br label %7

7:                                                ; preds = %._crit_edge1, %._crit_edge
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
