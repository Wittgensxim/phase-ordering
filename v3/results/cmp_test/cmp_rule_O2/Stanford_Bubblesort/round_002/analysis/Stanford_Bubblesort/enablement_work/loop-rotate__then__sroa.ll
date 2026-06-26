; ModuleID = 'results\cmp_test\cmp_rule_O2\Stanford_Bubblesort\round_001\output.ll'
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
  call void @Initrand()
  store i32 0, ptr @biggest, align 4
  store i32 0, ptr @littlest, align 4
  %1 = icmp sle i32 1, 500
  br i1 %1, label %.lr.ph, label %25

.lr.ph:                                           ; preds = %0
  br label %2

2:                                                ; preds = %.lr.ph, %22
  %.0 = phi i32 [ 1, %.lr.ph ], [ %23, %22 ]
  %3 = call i32 @Rand()
  %4 = sdiv i32 %3, 100000
  %5 = mul nsw i32 %4, 100000
  %6 = sub nsw i32 %3, %5
  %7 = sub nsw i32 %6, 50000
  %8 = sext i32 %.0 to i64
  %9 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %8
  store i32 %7, ptr %9, align 4
  %10 = sext i32 %.0 to i64
  %11 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr @biggest, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 %12, ptr @biggest, align 4
  br label %21

16:                                               ; preds = %2
  %17 = load i32, ptr @littlest, align 4
  %18 = icmp slt i32 %12, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 %12, ptr @littlest, align 4
  br label %20

20:                                               ; preds = %19, %16
  br label %21

21:                                               ; preds = %20, %15
  br label %22

22:                                               ; preds = %21
  %23 = add nsw i32 %.0, 1
  %24 = icmp sle i32 %23, 500
  br i1 %24, label %2, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %22
  br label %25

25:                                               ; preds = %._crit_edge, %0
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Bubble(i32 noundef %0) #0 {
  call void @bInitarr()
  store i32 500, ptr @top, align 4
  %2 = load i32, ptr @top, align 4
  %3 = icmp sgt i32 %2, 1
  br i1 %3, label %.lr.ph2, label %35

.lr.ph2:                                          ; preds = %1
  br label %4

4:                                                ; preds = %.lr.ph2, %31
  %5 = load i32, ptr @top, align 4
  %6 = icmp slt i32 1, %5
  br i1 %6, label %.lr.ph, label %31

.lr.ph:                                           ; preds = %4
  br label %7

7:                                                ; preds = %.lr.ph, %27
  %.0 = phi i32 [ 1, %.lr.ph ], [ %28, %27 ]
  %8 = phi i32 [ 1, %.lr.ph ], [ %28, %27 ]
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = add nsw i32 %8, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %11, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %7
  %18 = add nsw i32 %.0, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = sext i32 %.0 to i64
  %23 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %22
  store i32 %21, ptr %23, align 4
  %24 = add nsw i32 %.0, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %25
  store i32 %11, ptr %26, align 4
  br label %27

27:                                               ; preds = %17, %7
  %28 = add nsw i32 %.0, 1
  %29 = load i32, ptr @top, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %7, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %27
  %split = phi i32 [ %29, %27 ]
  br label %31

31:                                               ; preds = %._crit_edge, %4
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %5, %4 ]
  %32 = sub nsw i32 %.lcssa, 1
  store i32 %32, ptr @top, align 4
  %33 = load i32, ptr @top, align 4
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %4, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %31
  br label %35

35:                                               ; preds = %._crit_edge3, %1
  %36 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4
  %37 = load i32, ptr @littlest, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 2000), align 16
  %41 = load i32, ptr @biggest, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39, %35
  %44 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %45

45:                                               ; preds = %43, %39
  %46 = add nsw i32 %0, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %47
  %49 = load i32, ptr %48, align 4
  %50 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %49)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = icmp slt i32 0, 100
  br i1 %1, label %.lr.ph, label %7

.lr.ph:                                           ; preds = %0
  br label %2

2:                                                ; preds = %.lr.ph, %4
  %.0 = phi i32 [ 0, %.lr.ph ], [ %5, %4 ]
  %3 = phi i32 [ 0, %.lr.ph ], [ %5, %4 ]
  call void @Bubble(i32 noundef %3)
  br label %4

4:                                                ; preds = %2
  %5 = add nsw i32 %.0, 1
  %6 = icmp slt i32 %5, 100
  br i1 %6, label %2, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %4
  br label %7

7:                                                ; preds = %._crit_edge, %0
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
