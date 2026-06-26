; ModuleID = 'results\cmp_test\cmp_oracle_O2\Stanford_Quicksort\Stanford_Quicksort.ll'
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

3:                                                ; preds = %0, %20
  %4 = phi i32 [ 1, %0 ], [ %21, %20 ]
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
  br i1 %22, label %3, label %23, !llvm.loop !7

23:                                               ; preds = %20
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

16:                                               ; preds = %56, %3
  %17 = phi i32 [ %57, %56 ], [ %2, %3 ]
  %18 = phi i32 [ %58, %56 ], [ %1, %3 ]
  %19 = phi ptr [ %59, %56 ], [ %0, %3 ]
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds i32, ptr %19, i64 %20
  %22 = load i32, ptr %21, align 4
  %23 = icmp slt i32 %22, %15
  br i1 %23, label %.lr.ph, label %31

.lr.ph:                                           ; preds = %16
  br label %24

24:                                               ; preds = %.lr.ph, %24
  %25 = phi i32 [ %18, %.lr.ph ], [ %26, %24 ]
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, ptr %19, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = icmp slt i32 %29, %15
  br i1 %30, label %24, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %24
  %split = phi i32 [ %26, %24 ]
  %split7 = phi ptr [ %28, %24 ]
  br label %31

31:                                               ; preds = %._crit_edge, %16
  %.lcssa1 = phi i32 [ %split, %._crit_edge ], [ %18, %16 ]
  %.lcssa = phi ptr [ %split7, %._crit_edge ], [ %21, %16 ]
  %32 = sext i32 %17 to i64
  %33 = getelementptr inbounds i32, ptr %19, i64 %32
  %34 = load i32, ptr %33, align 4
  %35 = icmp slt i32 %15, %34
  br i1 %35, label %.lr.ph9, label %43

.lr.ph9:                                          ; preds = %31
  br label %36

36:                                               ; preds = %.lr.ph9, %36
  %37 = phi i32 [ %17, %.lr.ph9 ], [ %38, %36 ]
  %38 = sub nsw i32 %37, 1
  store i32 %38, ptr %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, ptr %19, i64 %39
  %41 = load i32, ptr %40, align 4
  %42 = icmp slt i32 %15, %41
  br i1 %42, label %36, label %._crit_edge10, !llvm.loop !10

._crit_edge10:                                    ; preds = %36
  %split11 = phi i32 [ %38, %36 ]
  %split12 = phi ptr [ %40, %36 ]
  br label %43

43:                                               ; preds = %._crit_edge10, %31
  %.lcssa3 = phi i32 [ %split11, %._crit_edge10 ], [ %17, %31 ]
  %.lcssa2 = phi ptr [ %split12, %._crit_edge10 ], [ %33, %31 ]
  %44 = icmp sle i32 %.lcssa1, %.lcssa3
  br i1 %44, label %45, label %56

45:                                               ; preds = %43
  %46 = load i32, ptr %.lcssa, align 4
  store i32 %46, ptr %10, align 4
  %47 = load i32, ptr %.lcssa2, align 4
  store i32 %47, ptr %.lcssa, align 4
  %48 = load i32, ptr %10, align 4
  %49 = load ptr, ptr %4, align 8
  %50 = load i32, ptr %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, ptr %49, i64 %51
  store i32 %48, ptr %52, align 4
  %53 = load i32, ptr %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, ptr %7, align 4
  %55 = sub nsw i32 %50, 1
  store i32 %55, ptr %8, align 4
  br label %56

56:                                               ; preds = %45, %43
  %57 = phi i32 [ %55, %45 ], [ %.lcssa3, %43 ]
  %58 = phi i32 [ %54, %45 ], [ %.lcssa1, %43 ]
  %59 = phi ptr [ %49, %45 ], [ %19, %43 ]
  %60 = icmp sle i32 %58, %57
  br i1 %60, label %16, label %61, !llvm.loop !11

61:                                               ; preds = %56
  %.lcssa6 = phi i32 [ %57, %56 ]
  %.lcssa5 = phi i32 [ %58, %56 ]
  %.lcssa4 = phi ptr [ %59, %56 ]
  %62 = load i32, ptr %5, align 4
  %63 = icmp slt i32 %62, %.lcssa6
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  call void @Quicksort(ptr noundef %.lcssa4, i32 noundef %62, i32 noundef %.lcssa6)
  %.pre = load i32, ptr %7, align 4
  br label %65

65:                                               ; preds = %64, %61
  %66 = phi i32 [ %.pre, %64 ], [ %.lcssa5, %61 ]
  %67 = load i32, ptr %6, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load ptr, ptr %4, align 8
  call void @Quicksort(ptr noundef %70, i32 noundef %66, i32 noundef %67)
  br label %71

71:                                               ; preds = %69, %65
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

3:                                                ; preds = %0, %3
  %4 = phi i32 [ 0, %0 ], [ %5, %3 ]
  call void @Quick(i32 noundef %4)
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr %2, align 4
  %6 = icmp slt i32 %5, 100
  br i1 %6, label %3, label %7, !llvm.loop !12

7:                                                ; preds = %3
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
