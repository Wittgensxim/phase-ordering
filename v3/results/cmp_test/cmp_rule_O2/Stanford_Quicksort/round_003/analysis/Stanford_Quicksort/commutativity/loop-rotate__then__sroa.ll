; ModuleID = 'results\cmp_test\cmp_rule_O2\Stanford_Quicksort\round_002\output.ll'
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
@str = private unnamed_addr constant [17 x i8] c" Error in Quick.\00", align 1

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

1:                                                ; preds = %0, %19
  %.0 = phi i32 [ 1, %0 ], [ %20, %19 ]
  %2 = call i32 @Rand()
  %.fr = freeze i32 %2
  %3 = srem i32 %.fr, 100000
  %4 = add nsw i32 %3, -50000
  %5 = sext i32 %.0 to i64
  %6 = getelementptr inbounds [4 x i8], ptr @sortlist, i64 %5
  store i32 %4, ptr %6, align 4
  %7 = sext i32 %.0 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @sortlist, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr @biggest, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 %9, ptr @biggest, align 4
  br label %18

13:                                               ; preds = %1
  %14 = load i32, ptr @littlest, align 4
  %15 = icmp slt i32 %9, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 %9, ptr @littlest, align 4
  br label %17

17:                                               ; preds = %16, %13
  br label %18

18:                                               ; preds = %17, %12
  br label %19

19:                                               ; preds = %18
  %20 = add nsw i32 %.0, 1
  %21 = icmp slt i32 %20, 5001
  br i1 %21, label %1, label %22, !llvm.loop !7

22:                                               ; preds = %19
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Quicksort(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = add nsw i32 %1, %2
  %5 = sdiv i32 %4, 2
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [4 x i8], ptr %0, i64 %6
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %48, %3
  %.031 = phi i32 [ %2, %3 ], [ %.233, %48 ]
  %.0 = phi i32 [ %1, %3 ], [ %.2, %48 ]
  %10 = sext i32 %.0 to i64
  %11 = getelementptr inbounds [4 x i8], ptr %0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp slt i32 %12, %8
  br i1 %13, label %.lr.ph, label %21

.lr.ph:                                           ; preds = %9
  br label %14

14:                                               ; preds = %.lr.ph, %14
  %15 = phi i32 [ %.0, %.lr.ph ], [ %16, %14 ]
  %16 = add nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8], ptr %0, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp slt i32 %19, %8
  br i1 %20, label %14, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %14
  br label %21

21:                                               ; preds = %._crit_edge, %9
  %.1 = phi i32 [ %16, %._crit_edge ], [ %.0, %9 ]
  %22 = sext i32 %.031 to i64
  %23 = getelementptr inbounds [4 x i8], ptr %0, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = icmp slt i32 %8, %24
  br i1 %25, label %.lr.ph2, label %33

.lr.ph2:                                          ; preds = %21
  br label %26

26:                                               ; preds = %.lr.ph2, %26
  %27 = phi i32 [ %.031, %.lr.ph2 ], [ %28, %26 ]
  %28 = add nsw i32 %27, -1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4 x i8], ptr %0, i64 %29
  %31 = load i32, ptr %30, align 4
  %32 = icmp slt i32 %8, %31
  br i1 %32, label %26, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %26
  %split = phi ptr [ %0, %26 ]
  %split4 = phi i32 [ %28, %26 ]
  br label %33

33:                                               ; preds = %._crit_edge3, %21
  %.132 = phi i32 [ %28, %._crit_edge3 ], [ %.031, %21 ]
  %.lcssa2 = phi ptr [ %split, %._crit_edge3 ], [ %0, %21 ]
  %.lcssa = phi i32 [ %split4, %._crit_edge3 ], [ %.031, %21 ]
  %.not = icmp sgt i32 %.1, %.lcssa
  br i1 %.not, label %47, label %34

34:                                               ; preds = %33
  %35 = sext i32 %.1 to i64
  %36 = getelementptr inbounds [4 x i8], ptr %.lcssa2, i64 %35
  %37 = load i32, ptr %36, align 4
  %38 = sext i32 %.132 to i64
  %39 = getelementptr inbounds [4 x i8], ptr %0, i64 %38
  %40 = load i32, ptr %39, align 4
  %41 = sext i32 %.1 to i64
  %42 = getelementptr inbounds [4 x i8], ptr %0, i64 %41
  store i32 %40, ptr %42, align 4
  %43 = sext i32 %.132 to i64
  %44 = getelementptr inbounds [4 x i8], ptr %0, i64 %43
  store i32 %37, ptr %44, align 4
  %45 = add nsw i32 %.1, 1
  %46 = add nsw i32 %.132, -1
  br label %47

47:                                               ; preds = %34, %33
  %.233 = phi i32 [ %.132, %33 ], [ %46, %34 ]
  %.2 = phi i32 [ %.1, %33 ], [ %45, %34 ]
  br label %48

48:                                               ; preds = %47
  %.not1 = icmp sgt i32 %.2, %.233
  br i1 %.not1, label %49, label %9, !llvm.loop !11

49:                                               ; preds = %48
  %.lcssa3 = phi i32 [ %.233, %48 ]
  %50 = icmp slt i32 %1, %.lcssa3
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  call void @Quicksort(ptr noundef %0, i32 noundef %1, i32 noundef %.lcssa3)
  br label %52

52:                                               ; preds = %51, %49
  %53 = icmp slt i32 %.2, %2
  br i1 %53, label %54, label %55

54:                                               ; preds = %52
  call void @Quicksort(ptr noundef %0, i32 noundef %.2, i32 noundef %2)
  br label %55

55:                                               ; preds = %54, %52
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Quick(i32 noundef %0) #0 {
  call void @Initarr()
  call void @Quicksort(ptr noundef nonnull @sortlist, i32 noundef 1, i32 noundef 5000)
  %2 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4
  %3 = load i32, ptr @littlest, align 4
  %.not = icmp eq i32 %2, %3
  br i1 %.not, label %4, label %7

4:                                                ; preds = %1
  %5 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 20000), align 16
  %6 = load i32, ptr @biggest, align 4
  %.not1 = icmp eq i32 %5, %6
  br i1 %.not1, label %8, label %7

7:                                                ; preds = %4, %1
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %8

8:                                                ; preds = %7, %4
  %9 = sext i32 %0 to i64
  %10 = getelementptr [4 x i8], ptr @sortlist, i64 %9
  %11 = getelementptr i8, ptr %10, i64 4
  %12 = load i32, ptr %11, align 4
  %13 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %12) #3
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %0, %2
  %.0 = phi i32 [ 0, %0 ], [ %3, %2 ]
  %storemerge1 = phi i32 [ 0, %0 ], [ %3, %2 ]
  call void @Quick(i32 noundef %storemerge1)
  br label %2

2:                                                ; preds = %1
  %3 = add nsw i32 %.0, 1
  %4 = icmp slt i32 %3, 100
  br i1 %4, label %1, label %5, !llvm.loop !12

5:                                                ; preds = %2
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #2

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind }

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
