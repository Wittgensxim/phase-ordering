; ModuleID = 'results\cmp_test\cmp_oracle_O2\Stanford_Bubblesort\Stanford_Bubblesort.ll'
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
  br label %1

1:                                                ; preds = %23, %0
  %.0 = phi i32 [ 1, %0 ], [ %24, %23 ]
  %2 = icmp sle i32 %.0, 500
  br i1 %2, label %3, label %25

3:                                                ; preds = %1
  %4 = call i32 @Rand()
  %5 = sdiv i32 %4, 100000
  %6 = mul nsw i32 %5, 100000
  %7 = sub nsw i32 %4, %6
  %8 = sub nsw i32 %7, 50000
  %9 = sext i32 %.0 to i64
  %10 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %9
  store i32 %8, ptr %10, align 4
  %11 = sext i32 %.0 to i64
  %12 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr @biggest, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 %13, ptr @biggest, align 4
  br label %22

17:                                               ; preds = %3
  %18 = load i32, ptr @littlest, align 4
  %19 = icmp slt i32 %13, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 %13, ptr @littlest, align 4
  br label %21

21:                                               ; preds = %20, %17
  br label %22

22:                                               ; preds = %21, %16
  br label %23

23:                                               ; preds = %22
  %24 = add nsw i32 %.0, 1
  br label %1, !llvm.loop !7

25:                                               ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Bubble(i32 noundef %0) #0 {
  call void @bInitarr()
  store i32 500, ptr @top, align 4
  br label %2

2:                                                ; preds = %30, %1
  %3 = load i32, ptr @top, align 4
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %5, label %32

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %28, %5
  %.0 = phi i32 [ 1, %5 ], [ %29, %28 ]
  %7 = load i32, ptr @top, align 4
  %8 = icmp slt i32 %.0, %7
  br i1 %8, label %9, label %30

9:                                                ; preds = %6
  %10 = sext i32 %.0 to i64
  %11 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = add nsw i32 %.0, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %12, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %9
  %19 = add nsw i32 %.0, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4
  %23 = sext i32 %.0 to i64
  %24 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %23
  store i32 %22, ptr %24, align 4
  %25 = add nsw i32 %.0, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %26
  store i32 %12, ptr %27, align 4
  br label %28

28:                                               ; preds = %18, %9
  %29 = add nsw i32 %.0, 1
  br label %6, !llvm.loop !9

30:                                               ; preds = %6
  %31 = sub nsw i32 %7, 1
  store i32 %31, ptr @top, align 4
  br label %2, !llvm.loop !10

32:                                               ; preds = %2
  %33 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4
  %34 = load i32, ptr @littlest, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 2000), align 16
  %38 = load i32, ptr @biggest, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36, %32
  %41 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %42

42:                                               ; preds = %40, %36
  %43 = add nsw i32 %0, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4
  %47 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %46)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %.0 = phi i32 [ 0, %0 ], [ %5, %4 ]
  %2 = icmp slt i32 %.0, 100
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  call void @Bubble(i32 noundef %.0)
  br label %4

4:                                                ; preds = %3
  %5 = add nsw i32 %.0, 1
  br label %1, !llvm.loop !11

6:                                                ; preds = %1
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
