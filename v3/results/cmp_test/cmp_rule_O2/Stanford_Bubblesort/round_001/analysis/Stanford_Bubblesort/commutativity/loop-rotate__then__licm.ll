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
  %3 = load i32, ptr %1, align 4
  %4 = icmp sle i32 %3, 500
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
  %28 = icmp sle i32 %27, 500
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
define dso_local void @Bubble(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @bInitarr()
  store i32 500, ptr @top, align 4
  %5 = load i32, ptr @top, align 4
  %6 = icmp sgt i32 %5, 1
  br i1 %6, label %.lr.ph2, label %39

.lr.ph2:                                          ; preds = %1
  %top.promoted = load i32, ptr @top, align 4
  %.promoted10 = load i32, ptr %4, align 4
  br label %7

7:                                                ; preds = %.lr.ph2, %36
  %.lcssa412 = phi i32 [ %.promoted10, %.lr.ph2 ], [ %.lcssa411, %36 ]
  %8 = phi i32 [ %top.promoted, %.lr.ph2 ], [ %37, %36 ]
  %9 = icmp slt i32 1, %8
  br i1 %9, label %.lr.ph, label %36

.lr.ph:                                           ; preds = %7
  br label %10

10:                                               ; preds = %.lr.ph, %32
  %11 = phi i32 [ 1, %.lr.ph ], [ %34, %32 ]
  %12 = phi i32 [ %.lcssa412, %.lr.ph ], [ %33, %32 ]
  %13 = phi i32 [ 1, %.lr.ph ], [ %34, %32 ]
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = add nsw i32 %13, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = icmp sgt i32 %16, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %10
  %23 = add nsw i32 %11, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = sext i32 %11 to i64
  %28 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %27
  store i32 %26, ptr %28, align 4
  %29 = add nsw i32 %11, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %30
  store i32 %16, ptr %31, align 4
  br label %32

32:                                               ; preds = %22, %10
  %33 = phi i32 [ %16, %22 ], [ %12, %10 ]
  %34 = add nsw i32 %11, 1
  %35 = icmp slt i32 %34, %8
  br i1 %35, label %10, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %32
  %.lcssa6 = phi i32 [ %34, %32 ]
  %.lcssa4 = phi i32 [ %33, %32 ]
  %split = phi i32 [ %8, %32 ]
  br label %36

36:                                               ; preds = %._crit_edge, %7
  %.lcssa411 = phi i32 [ %.lcssa4, %._crit_edge ], [ %.lcssa412, %7 ]
  %.lcssa68 = phi i32 [ %.lcssa6, %._crit_edge ], [ 1, %7 ]
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %8, %7 ]
  %37 = sub nsw i32 %.lcssa, 1
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %7, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %36
  %.lcssa411.lcssa = phi i32 [ %.lcssa411, %36 ]
  %.lcssa9 = phi i32 [ %37, %36 ]
  %.lcssa68.lcssa = phi i32 [ %.lcssa68, %36 ]
  store i32 %.lcssa68.lcssa, ptr %3, align 4
  store i32 %.lcssa9, ptr @top, align 4
  store i32 %.lcssa411.lcssa, ptr %4, align 4
  br label %39

39:                                               ; preds = %._crit_edge3, %1
  %40 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4
  %41 = load i32, ptr @littlest, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 2000), align 16
  %45 = load i32, ptr @biggest, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43, %39
  %48 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %49

49:                                               ; preds = %47, %43
  %50 = load i32, ptr %2, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %52
  %54 = load i32, ptr %53, align 4
  %55 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %54)
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
  call void @Bubble(i32 noundef %7)
  br label %8

8:                                                ; preds = %5
  %9 = add nsw i32 %6, 1
  %10 = icmp slt i32 %9, 100
  br i1 %10, label %5, label %._crit_edge, !llvm.loop !11

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
