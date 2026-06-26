; ModuleID = 'results\cmp_test\cmp_random_O2\Stanford_Bubblesort\round_000\output.ll'
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
  br i1 true, label %.lr.ph, label %25

.lr.ph:                                           ; preds = %0
  %.promoted = load i32, ptr %1, align 4
  %3 = sext i32 %.promoted to i64
  br label %4

4:                                                ; preds = %22, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %22 ], [ %3, %.lr.ph ]
  %5 = call i32 @Rand()
  %6 = sdiv i32 %5, 100000
  %7 = mul nsw i32 %6, 100000
  %8 = sub nsw i32 %5, %7
  %9 = sub nsw i32 %8, 50000
  %10 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %indvars.iv
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %indvars.iv
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr @biggest, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 %12, ptr @biggest, align 4
  br label %21

16:                                               ; preds = %4
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
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %23 = icmp sle i64 %indvars.iv.next, 500
  br i1 %23, label %4, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %22
  %.lcssa1.wide = phi i64 [ %indvars.iv.next, %22 ]
  %.lcssa = phi i32 [ %5, %22 ]
  %24 = trunc nsw i64 %.lcssa1.wide to i32
  store i32 %.lcssa, ptr %2, align 1
  store i32 %24, ptr %1, align 4
  br label %25

25:                                               ; preds = %._crit_edge, %0
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
  br i1 true, label %.lr.ph2, label %29

.lr.ph2:                                          ; preds = %1
  %top.promoted = load i32, ptr @top, align 4
  %.promoted = load i32, ptr %4, align 4
  %5 = zext i32 %top.promoted to i64
  br label %6

6:                                                ; preds = %26, %.lr.ph2
  %indvars.iv9 = phi i64 [ %indvars.iv.next10, %26 ], [ %5, %.lr.ph2 ]
  %.lcssa27 = phi i32 [ %.lcssa26, %26 ], [ %.promoted, %.lr.ph2 ]
  %7 = trunc nuw i64 %indvars.iv9 to i32
  %8 = icmp slt i32 1, %7
  br i1 %8, label %.lr.ph, label %26

.lr.ph:                                           ; preds = %6
  br label %9

9:                                                ; preds = %23, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %23 ], [ 1, %.lr.ph ]
  %10 = phi i32 [ %24, %23 ], [ %.lcssa27, %.lr.ph ]
  %11 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %indvars.iv
  %12 = load i32, ptr %11, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %13 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %indvars.iv.next
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %12, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %9
  %17 = add nuw nsw i64 %indvars.iv, 1
  %18 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %indvars.iv
  store i32 %19, ptr %20, align 4
  %21 = add nuw nsw i64 %indvars.iv, 1
  %22 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %21
  store i32 %12, ptr %22, align 4
  br label %23

23:                                               ; preds = %16, %9
  %24 = phi i32 [ %12, %16 ], [ %10, %9 ]
  %exitcond = icmp ne i64 %indvars.iv.next, %indvars.iv9
  br i1 %exitcond, label %9, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %23
  %.lcssa2 = phi i32 [ %24, %23 ]
  %.lcssa.wide = phi i64 [ %indvars.iv.next, %23 ]
  %25 = trunc nuw nsw i64 %.lcssa.wide to i32
  br label %26

26:                                               ; preds = %._crit_edge, %6
  %.lcssa26 = phi i32 [ %.lcssa2, %._crit_edge ], [ %.lcssa27, %6 ]
  %.lcssa4 = phi i32 [ %25, %._crit_edge ], [ 1, %6 ]
  %indvars.iv.next10 = add nsw i64 %indvars.iv9, -1
  %indvars = trunc i64 %indvars.iv.next10 to i32
  %27 = icmp sgt i32 %indvars, 1
  br i1 %27, label %6, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %26
  %.lcssa26.lcssa = phi i32 [ %.lcssa26, %26 ]
  %.lcssa4.lcssa = phi i32 [ %.lcssa4, %26 ]
  %28 = add i32 %top.promoted, -1
  %smin = call i32 @llvm.smin.i32(i32 %28, i32 1)
  store i32 %.lcssa4.lcssa, ptr %3, align 4
  store i32 %smin, ptr @top, align 4
  store i32 %.lcssa26.lcssa, ptr %4, align 4
  br label %29

29:                                               ; preds = %._crit_edge3, %1
  %30 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4
  %31 = load i32, ptr @littlest, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 2000), align 16
  %35 = load i32, ptr @biggest, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %29
  %38 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %39

39:                                               ; preds = %37, %33
  %40 = load i32, ptr %2, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %42
  %44 = load i32, ptr %43, align 4
  %45 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %44)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  br i1 true, label %.lr.ph, label %8

.lr.ph:                                           ; preds = %0
  %.promoted = load i32, ptr %2, align 4
  br label %3

3:                                                ; preds = %5, %.lr.ph
  %4 = phi i32 [ %6, %5 ], [ %.promoted, %.lr.ph ]
  call void @Bubble(i32 noundef %4)
  br label %5

5:                                                ; preds = %3
  %6 = add nsw i32 %4, 1
  %7 = icmp slt i32 %6, 100
  br i1 %7, label %3, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %5
  %.lcssa = phi i32 [ %6, %5 ]
  store i32 %.lcssa, ptr %2, align 4
  br label %8

8:                                                ; preds = %._crit_edge, %0
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
