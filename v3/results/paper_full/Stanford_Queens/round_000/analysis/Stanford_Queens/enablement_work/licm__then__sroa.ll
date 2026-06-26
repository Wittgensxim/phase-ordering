; ModuleID = 'results\paper_full\Stanford_Queens\Stanford_Queens.ll'
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
  %5 = load i32, ptr @seed, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Try(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  store i32 0, ptr %1, align 4
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %5, i64 %7
  %9 = icmp slt i32 %0, 8
  %10 = add nsw i32 %0, 1
  br label %11

11:                                               ; preds = %65, %6
  %12 = phi i32 [ %66, %65 ], [ 0, %6 ]
  %13 = load i32, ptr %1, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = icmp ne i32 %12, 8
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi i1 [ false, %11 ], [ %16, %15 ]
  br i1 %18, label %19, label %67

19:                                               ; preds = %17
  %20 = add nsw i32 %12, 1
  store i32 0, ptr %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, ptr %3, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %65

25:                                               ; preds = %19
  %26 = add nsw i32 %0, %20
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, ptr %2, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %65

31:                                               ; preds = %25
  %32 = sub nsw i32 %0, %20
  %33 = add nsw i32 %32, 7
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, ptr %4, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %65

38:                                               ; preds = %31
  store i32 %20, ptr %8, align 4
  %39 = sext i32 %20 to i64
  %40 = getelementptr inbounds i32, ptr %3, i64 %39
  store i32 0, ptr %40, align 4
  %41 = add nsw i32 %0, %20
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, ptr %2, i64 %42
  store i32 0, ptr %43, align 4
  %44 = sub nsw i32 %0, %20
  %45 = add nsw i32 %44, 7
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, ptr %4, i64 %46
  store i32 0, ptr %47, align 4
  br i1 %9, label %48, label %62

48:                                               ; preds = %38
  call void @Try(i32 noundef %10, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %49 = load i32, ptr %1, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %48
  %52 = sext i32 %20 to i64
  %53 = getelementptr inbounds i32, ptr %3, i64 %52
  store i32 1, ptr %53, align 4
  %54 = add nsw i32 %0, %20
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, ptr %2, i64 %55
  store i32 1, ptr %56, align 4
  %57 = sub nsw i32 %0, %20
  %58 = add nsw i32 %57, 7
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, ptr %4, i64 %59
  store i32 1, ptr %60, align 4
  br label %61

61:                                               ; preds = %51, %48
  br label %63

62:                                               ; preds = %38
  store i32 1, ptr %1, align 4
  br label %63

63:                                               ; preds = %62, %61
  %64 = phi i32 [ %20, %62 ], [ %20, %61 ]
  br label %65

65:                                               ; preds = %63, %31, %25, %19
  %66 = phi i32 [ %64, %63 ], [ %20, %31 ], [ %20, %25 ], [ %20, %19 ]
  br label %11, !llvm.loop !7

67:                                               ; preds = %17
  %.lcssa = phi i32 [ %12, %17 ]
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

6:                                                ; preds = %27, %0
  %7 = phi i32 [ %28, %27 ], [ -7, %0 ]
  %8 = icmp sle i32 %7, 16
  br i1 %8, label %9, label %29

9:                                                ; preds = %6
  %10 = icmp sge i32 %7, 1
  br i1 %10, label %11, label %16

11:                                               ; preds = %9
  %12 = icmp sle i32 %7, 8
  br i1 %12, label %13, label %16

13:                                               ; preds = %11
  %14 = sext i32 %7 to i64
  %15 = getelementptr inbounds [9 x i32], ptr %2, i64 0, i64 %14
  store i32 1, ptr %15, align 4
  br label %16

16:                                               ; preds = %13, %11, %9
  %17 = icmp sge i32 %7, 2
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds [17 x i32], ptr %3, i64 0, i64 %19
  store i32 1, ptr %20, align 4
  br label %21

21:                                               ; preds = %18, %16
  %22 = icmp sle i32 %7, 7
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  %24 = add nsw i32 %7, 7
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [15 x i32], ptr %4, i64 0, i64 %25
  store i32 1, ptr %26, align 4
  br label %27

27:                                               ; preds = %23, %21
  %28 = add nsw i32 %7, 1
  br label %6, !llvm.loop !9

29:                                               ; preds = %6
  %.lcssa = phi i32 [ %7, %6 ]
  %30 = getelementptr inbounds [17 x i32], ptr %3, i64 0, i64 0
  %31 = getelementptr inbounds [9 x i32], ptr %2, i64 0, i64 0
  %32 = getelementptr inbounds [15 x i32], ptr %4, i64 0, i64 0
  %33 = getelementptr inbounds [9 x i32], ptr %5, i64 0, i64 0
  call void @Try(i32 noundef 1, ptr noundef %1, ptr noundef %30, ptr noundef %31, ptr noundef %32, ptr noundef %33)
  %34 = load i32, ptr %1, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %29
  %37 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %38

38:                                               ; preds = %36, %29
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Queens(i32 noundef %0) #0 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi i32 [ %7, %6 ], [ 1, %1 ]
  %4 = icmp sle i32 %3, 50
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  call void @Doit()
  br label %6

6:                                                ; preds = %5
  %7 = add nsw i32 %3, 1
  br label %2, !llvm.loop !10

8:                                                ; preds = %2
  %.lcssa = phi i32 [ %3, %2 ]
  %9 = add nsw i32 %0, 1
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %9)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %5, %0
  %2 = phi i32 [ %6, %5 ], [ 0, %0 ]
  %3 = icmp slt i32 %2, 100
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  call void @Queens(i32 noundef %2)
  br label %5

5:                                                ; preds = %4
  %6 = add nsw i32 %2, 1
  br label %1, !llvm.loop !11

7:                                                ; preds = %1
  %.lcssa = phi i32 [ %2, %1 ]
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
