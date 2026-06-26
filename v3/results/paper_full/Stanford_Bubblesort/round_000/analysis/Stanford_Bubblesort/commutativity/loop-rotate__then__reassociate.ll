; ModuleID = 'results\paper_full\Stanford_Bubblesort\Stanford_Bubblesort.ll'
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
  %5 = load i32, ptr @seed, align 4
  ret i32 %5
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
  br i1 %4, label %.lr.ph, label %45

.lr.ph:                                           ; preds = %0
  br label %5

5:                                                ; preds = %.lr.ph, %40
  %6 = call i32 @Rand()
  store i32 %6, ptr %2, align 4
  %7 = load i32, ptr %2, align 4
  %8 = load i32, ptr %2, align 4
  %9 = sdiv i32 %8, 100000
  %.neg = mul i32 %9, -100000
  %10 = add i32 %7, -50000
  %11 = add i32 %10, %.neg
  %12 = load i32, ptr %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %13
  store i32 %11, ptr %14, align 4
  %15 = load i32, ptr %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr @biggest, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %5
  %22 = load i32, ptr %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr @biggest, align 4
  br label %39

26:                                               ; preds = %5
  %27 = load i32, ptr %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4
  %31 = load i32, ptr @littlest, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load i32, ptr %1, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4
  store i32 %37, ptr @littlest, align 4
  br label %38

38:                                               ; preds = %33, %26
  br label %39

39:                                               ; preds = %38, %21
  br label %40

40:                                               ; preds = %39
  %41 = load i32, ptr %1, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %1, align 4
  %43 = load i32, ptr %1, align 4
  %44 = icmp sle i32 %43, 500
  br i1 %44, label %5, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %40
  br label %45

45:                                               ; preds = %._crit_edge, %0
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
  br i1 %6, label %.lr.ph2, label %51

.lr.ph2:                                          ; preds = %1
  br label %7

7:                                                ; preds = %.lr.ph2, %46
  store i32 1, ptr %3, align 4
  %8 = load i32, ptr %3, align 4
  %9 = load i32, ptr @top, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %.lr.ph, label %46

.lr.ph:                                           ; preds = %7
  br label %11

11:                                               ; preds = %.lr.ph, %40
  %12 = load i32, ptr %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %3, align 4
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = icmp sgt i32 %15, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %11
  %23 = load i32, ptr %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4
  store i32 %26, ptr %4, align 4
  %27 = load i32, ptr %3, align 4
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4
  %32 = load i32, ptr %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %33
  store i32 %31, ptr %34, align 4
  %35 = load i32, ptr %4, align 4
  %36 = load i32, ptr %3, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %38
  store i32 %35, ptr %39, align 4
  br label %40

40:                                               ; preds = %22, %11
  %41 = load i32, ptr %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %3, align 4
  %43 = load i32, ptr %3, align 4
  %44 = load i32, ptr @top, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %11, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %40
  br label %46

46:                                               ; preds = %._crit_edge, %7
  %47 = load i32, ptr @top, align 4
  %48 = sub nsw i32 %47, 1
  store i32 %48, ptr @top, align 4
  %49 = load i32, ptr @top, align 4
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %7, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %46
  br label %51

51:                                               ; preds = %._crit_edge3, %1
  %52 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4
  %53 = load i32, ptr @littlest, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 2000), align 16
  %57 = load i32, ptr @biggest, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55, %51
  %60 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %61

61:                                               ; preds = %59, %55
  %62 = load i32, ptr %2, align 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %64
  %66 = load i32, ptr %65, align 4
  %67 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %66)
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
  br i1 %4, label %.lr.ph, label %12

.lr.ph:                                           ; preds = %0
  br label %5

5:                                                ; preds = %.lr.ph, %7
  %6 = load i32, ptr %2, align 4
  call void @Bubble(i32 noundef %6)
  br label %7

7:                                                ; preds = %5
  %8 = load i32, ptr %2, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr %2, align 4
  %10 = load i32, ptr %2, align 4
  %11 = icmp slt i32 %10, 100
  br i1 %11, label %5, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %7
  br label %12

12:                                               ; preds = %._crit_edge, %0
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
