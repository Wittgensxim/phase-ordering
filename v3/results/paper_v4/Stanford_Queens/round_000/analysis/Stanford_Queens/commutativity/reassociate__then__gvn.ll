; ModuleID = 'results\paper_v4\Stanford_Queens\Stanford_Queens.ll'
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
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  store i32 %0, ptr %7, align 4
  store ptr %1, ptr %8, align 8
  store ptr %2, ptr %9, align 8
  store ptr %3, ptr %10, align 8
  store ptr %4, ptr %11, align 8
  store ptr %5, ptr %12, align 8
  store i32 0, ptr %13, align 4
  store i32 0, ptr %1, align 4
  br label %14

14:                                               ; preds = %75, %6
  %15 = phi ptr [ %76, %75 ], [ %1, %6 ]
  %16 = phi ptr [ %77, %75 ], [ %1, %6 ]
  %17 = phi i32 [ %27, %75 ], [ 0, %6 ]
  %18 = phi i32 [ %.pre, %75 ], [ 0, %6 ]
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = icmp ne i32 %17, 8
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i1 [ false, %14 ], [ %21, %20 ]
  br i1 %23, label %24, label %78

24:                                               ; preds = %22
  %25 = add nsw i32 %17, 1
  store i32 %25, ptr %13, align 4
  store i32 0, ptr %16, align 4
  %26 = load ptr, ptr %10, align 8
  %27 = load i32, ptr %13, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, ptr %26, i64 %28
  %30 = load i32, ptr %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %75

32:                                               ; preds = %24
  %33 = load ptr, ptr %9, align 8
  %34 = load i32, ptr %7, align 4
  %35 = add nsw i32 %27, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, ptr %33, i64 %36
  %38 = load i32, ptr %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %75

40:                                               ; preds = %32
  %41 = load ptr, ptr %11, align 8
  %.neg = sub i32 0, %27
  %42 = add i32 %34, 7
  %43 = add i32 %42, %.neg
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, ptr %41, i64 %44
  %46 = load i32, ptr %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %75

48:                                               ; preds = %40
  %49 = load ptr, ptr %12, align 8
  %50 = sext i32 %34 to i64
  %51 = getelementptr inbounds i32, ptr %49, i64 %50
  store i32 %27, ptr %51, align 4
  store i32 0, ptr %29, align 4
  store i32 0, ptr %37, align 4
  store i32 0, ptr %45, align 4
  %52 = icmp slt i32 %34, 8
  br i1 %52, label %53, label %72

53:                                               ; preds = %48
  %54 = add nsw i32 %34, 1
  call void @Try(i32 noundef %54, ptr noundef %15, ptr noundef %33, ptr noundef %26, ptr noundef %41, ptr noundef %49)
  %55 = load ptr, ptr %8, align 8
  %56 = load i32, ptr %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %71, label %58

58:                                               ; preds = %53
  %59 = load ptr, ptr %10, align 8
  %60 = getelementptr inbounds i32, ptr %59, i64 %28
  store i32 1, ptr %60, align 4
  %61 = load ptr, ptr %9, align 8
  %62 = load i32, ptr %7, align 4
  %63 = add nsw i32 %27, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, ptr %61, i64 %64
  store i32 1, ptr %65, align 4
  %66 = load ptr, ptr %11, align 8
  %67 = add i32 %62, 7
  %68 = add i32 %67, %.neg
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, ptr %66, i64 %69
  store i32 1, ptr %70, align 4
  %.pre.pre.pre.pre = load i32, ptr %55, align 4
  br label %71

71:                                               ; preds = %58, %53
  %.pre.pre.pre = phi i32 [ %.pre.pre.pre.pre, %58 ], [ %56, %53 ]
  br label %73

72:                                               ; preds = %48
  store i32 1, ptr %15, align 4
  br label %73

73:                                               ; preds = %72, %71
  %.pre.pre = phi i32 [ 1, %72 ], [ %.pre.pre.pre, %71 ]
  %74 = phi ptr [ %15, %72 ], [ %55, %71 ]
  br label %75

75:                                               ; preds = %73, %40, %32, %24
  %.pre = phi i32 [ %.pre.pre, %73 ], [ 0, %40 ], [ 0, %32 ], [ 0, %24 ]
  %76 = phi ptr [ %74, %73 ], [ %15, %40 ], [ %15, %32 ], [ %15, %24 ]
  %77 = phi ptr [ %74, %73 ], [ %16, %40 ], [ %16, %32 ], [ %16, %24 ]
  br label %14, !llvm.loop !7

78:                                               ; preds = %22
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Doit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [9 x i32], align 16
  %4 = alloca [17 x i32], align 16
  %5 = alloca [15 x i32], align 16
  %6 = alloca [9 x i32], align 16
  store i32 -7, ptr %1, align 4
  br label %7

7:                                                ; preds = %28, %0
  %8 = phi i32 [ %29, %28 ], [ -7, %0 ]
  %9 = icmp sle i32 %8, 16
  br i1 %9, label %10, label %30

10:                                               ; preds = %7
  %11 = icmp sge i32 %8, 1
  br i1 %11, label %12, label %17

12:                                               ; preds = %10
  %13 = icmp sle i32 %8, 8
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = sext i32 %8 to i64
  %16 = getelementptr inbounds [9 x i32], ptr %3, i64 0, i64 %15
  store i32 1, ptr %16, align 4
  br label %17

17:                                               ; preds = %14, %12, %10
  %18 = icmp sge i32 %8, 2
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = sext i32 %8 to i64
  %21 = getelementptr inbounds [17 x i32], ptr %4, i64 0, i64 %20
  store i32 1, ptr %21, align 4
  br label %22

22:                                               ; preds = %19, %17
  %23 = icmp sle i32 %8, 7
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = add nsw i32 %8, 7
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [15 x i32], ptr %5, i64 0, i64 %26
  store i32 1, ptr %27, align 4
  br label %28

28:                                               ; preds = %24, %22
  %29 = add nsw i32 %8, 1
  store i32 %29, ptr %1, align 4
  br label %7, !llvm.loop !9

30:                                               ; preds = %7
  call void @Try(i32 noundef 1, ptr noundef %2, ptr noundef %4, ptr noundef %3, ptr noundef %5, ptr noundef %6)
  %31 = load i32, ptr %2, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %35

35:                                               ; preds = %33, %30
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Queens(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  store i32 1, ptr %3, align 4
  br label %4

4:                                                ; preds = %7, %1
  %5 = phi i32 [ %8, %7 ], [ 1, %1 ]
  %6 = icmp sle i32 %5, 50
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  call void @Doit()
  %8 = add nsw i32 %5, 1
  store i32 %8, ptr %3, align 4
  br label %4, !llvm.loop !10

9:                                                ; preds = %4
  %10 = add nsw i32 %0, 1
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  br label %3

3:                                                ; preds = %6, %0
  %4 = phi i32 [ %7, %6 ], [ 0, %0 ]
  %5 = icmp slt i32 %4, 100
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  call void @Queens(i32 noundef %4)
  %7 = add nsw i32 %4, 1
  store i32 %7, ptr %2, align 4
  br label %3, !llvm.loop !11

8:                                                ; preds = %3
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
