; ModuleID = 'results\paper_v4\Stanford_Queens\round_000\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Queens.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.element = type { i32, i32 }
%struct.complex = type { float, float }

@seed = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c" Error in Queens.\0A\00", align 1
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
@sortlist = dso_local global [5001 x i32] zeroinitializer, align 16
@biggest = dso_local global i32 0, align 4
@littlest = dso_local global i32 0, align 4
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
define dso_local void @Try(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  store i32 0, ptr %1, align 4
  %7 = sext i32 %0 to i64
  %8 = sext i32 %0 to i64
  br label %9

9:                                                ; preds = %39, %6
  %indvars.iv = phi i64 [ %indvars.iv.next, %39 ], [ 0, %6 ]
  %10 = load i32, ptr %1, align 4
  %11 = icmp ne i32 %10, 0
  %12 = icmp ne i64 %indvars.iv, 8
  %spec.select = select i1 %11, i1 false, i1 %12
  br i1 %spec.select, label %13, label %40

13:                                               ; preds = %9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  store i32 0, ptr %1, align 4
  %14 = getelementptr inbounds i32, ptr %3, i64 %indvars.iv.next
  %15 = load i32, ptr %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = add nsw i64 %7, %indvars.iv.next
  %19 = getelementptr inbounds i32, ptr %2, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %17
  %23 = sub nsw i64 %8, %indvars.iv.next
  %24 = add nsw i64 %23, 7
  %25 = getelementptr inbounds i32, ptr %4, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %22
  %29 = sext i32 %0 to i64
  %30 = getelementptr inbounds i32, ptr %5, i64 %29
  %31 = trunc nsw i64 %indvars.iv.next to i32
  store i32 %31, ptr %30, align 4
  store i32 0, ptr %14, align 4
  store i32 0, ptr %19, align 4
  store i32 0, ptr %25, align 4
  %32 = icmp slt i32 %0, 8
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = add nsw i32 %0, 1
  call void @Try(i32 noundef %34, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %35 = load i32, ptr %1, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  store i32 1, ptr %14, align 4
  store i32 1, ptr %19, align 4
  store i32 1, ptr %25, align 4
  br label %39

38:                                               ; preds = %28
  store i32 1, ptr %1, align 4
  br label %39

39:                                               ; preds = %38, %37, %33, %22, %17, %13
  br label %9, !llvm.loop !7

40:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Doit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [9 x i32], align 16
  %3 = alloca [17 x i32], align 16
  %4 = alloca [15 x i32], align 16
  %5 = alloca [9 x i32], align 16
  br label %6

6:                                                ; preds = %21, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %21 ], [ -7, %0 ]
  %exitcond = icmp ne i64 %indvars.iv, 17
  br i1 %exitcond, label %7, label %22

7:                                                ; preds = %6
  %8 = icmp sge i64 %indvars.iv, 1
  %9 = icmp sle i64 %indvars.iv, 8
  %or.cond = and i1 %8, %9
  br i1 %or.cond, label %10, label %12

10:                                               ; preds = %7
  %11 = getelementptr inbounds [9 x i32], ptr %2, i64 0, i64 %indvars.iv
  store i32 1, ptr %11, align 4
  br label %12

12:                                               ; preds = %10, %7
  %13 = icmp sge i64 %indvars.iv, 2
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  %15 = getelementptr inbounds [17 x i32], ptr %3, i64 0, i64 %indvars.iv
  store i32 1, ptr %15, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = icmp sle i64 %indvars.iv, 7
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = add nsw i64 %indvars.iv, 7
  %20 = getelementptr inbounds [15 x i32], ptr %4, i64 0, i64 %19
  store i32 1, ptr %20, align 4
  br label %21

21:                                               ; preds = %18, %16
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %6, !llvm.loop !9

22:                                               ; preds = %6
  call void @Try(i32 noundef 1, ptr noundef %1, ptr noundef %3, ptr noundef %2, ptr noundef %4, ptr noundef %5)
  %23 = load i32, ptr %1, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %27

27:                                               ; preds = %25, %22
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Queens(i32 noundef %0) #0 {
  br label %2

2:                                                ; preds = %3, %1
  %.0 = phi i32 [ 1, %1 ], [ %4, %3 ]
  %exitcond = icmp ne i32 %.0, 51
  br i1 %exitcond, label %3, label %5

3:                                                ; preds = %2
  call void @Doit()
  %4 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !10

5:                                                ; preds = %2
  %6 = add nsw i32 %0, 1
  %7 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %2, %0
  %.0 = phi i32 [ 0, %0 ], [ %3, %2 ]
  %exitcond = icmp ne i32 %.0, 100
  br i1 %exitcond, label %2, label %4

2:                                                ; preds = %1
  call void @Queens(i32 noundef %.0)
  %3 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !11

4:                                                ; preds = %1
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Queens.c", directory: "E:/Phase Ordering/v3")
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
