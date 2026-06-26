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
@str = private unnamed_addr constant [18 x i8] c" Error in Queens.\00", align 1

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

14:                                               ; preds = %56, %6
  %15 = phi ptr [ %57, %56 ], [ %1, %6 ]
  %16 = phi ptr [ %58, %56 ], [ %1, %6 ]
  %17 = phi i32 [ %24, %56 ], [ 0, %6 ]
  %18 = phi i32 [ %.pre, %56 ], [ 0, %6 ]
  %.not = icmp eq i32 %18, 0
  br i1 %.not, label %19, label %21

19:                                               ; preds = %14
  %20 = icmp ne i32 %17, 8
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi i1 [ false, %14 ], [ %20, %19 ]
  br i1 %22, label %23, label %59

23:                                               ; preds = %21
  %24 = add nsw i32 %17, 1
  store i32 %24, ptr %13, align 4
  store i32 0, ptr %16, align 4
  %25 = load ptr, ptr %10, align 8
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds [4 x i8], ptr %25, i64 %26
  %28 = load i32, ptr %27, align 4
  %.not1 = icmp eq i32 %28, 0
  br i1 %.not1, label %56, label %29

29:                                               ; preds = %23
  %30 = load ptr, ptr %9, align 8
  %31 = load i32, ptr %7, align 4
  %32 = add nsw i32 %31, %24
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4 x i8], ptr %30, i64 %33
  %35 = load i32, ptr %34, align 4
  %.not2 = icmp eq i32 %35, 0
  br i1 %.not2, label %56, label %36

36:                                               ; preds = %29
  %37 = load ptr, ptr %11, align 8
  %38 = sub nsw i32 %31, %24
  %39 = sext i32 %38 to i64
  %40 = getelementptr [4 x i8], ptr %37, i64 %39
  %41 = getelementptr i8, ptr %40, i64 28
  %42 = load i32, ptr %41, align 4
  %.not3 = icmp eq i32 %42, 0
  br i1 %.not3, label %56, label %43

43:                                               ; preds = %36
  %44 = load ptr, ptr %12, align 8
  %45 = sext i32 %31 to i64
  %46 = getelementptr inbounds [4 x i8], ptr %44, i64 %45
  store i32 %24, ptr %46, align 4
  store i32 0, ptr %27, align 4
  store i32 0, ptr %34, align 4
  store i32 0, ptr %41, align 4
  %47 = icmp slt i32 %31, 8
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = add nsw i32 %31, 1
  call void @Try(i32 noundef %49, ptr noundef %1, ptr noundef %30, ptr noundef %25, ptr noundef %37, ptr noundef %44)
  %50 = load i32, ptr %1, align 4
  %.not4 = icmp eq i32 %50, 0
  br i1 %.not4, label %51, label %52

51:                                               ; preds = %48
  store i32 1, ptr %27, align 4
  store i32 1, ptr %34, align 4
  store i32 1, ptr %41, align 4
  %.pre.pre.pre.pre = load i32, ptr %1, align 4
  br label %52

52:                                               ; preds = %51, %48
  %.pre.pre.pre = phi i32 [ %.pre.pre.pre.pre, %51 ], [ %50, %48 ]
  br label %54

53:                                               ; preds = %43
  store i32 1, ptr %15, align 4
  br label %54

54:                                               ; preds = %53, %52
  %.pre.pre = phi i32 [ 1, %53 ], [ %.pre.pre.pre, %52 ]
  %55 = phi ptr [ %15, %53 ], [ %1, %52 ]
  br label %56

56:                                               ; preds = %54, %36, %29, %23
  %.pre = phi i32 [ %.pre.pre, %54 ], [ 0, %36 ], [ 0, %29 ], [ 0, %23 ]
  %57 = phi ptr [ %55, %54 ], [ %15, %36 ], [ %15, %29 ], [ %15, %23 ]
  %58 = phi ptr [ %55, %54 ], [ %16, %36 ], [ %16, %29 ], [ %16, %23 ]
  br label %14, !llvm.loop !7

59:                                               ; preds = %21
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
  br label %7

7:                                                ; preds = %28, %0
  %8 = phi i32 [ -7, %0 ], [ %29, %28 ]
  store i32 %8, ptr %1, align 4
  %9 = icmp slt i32 %8, 17
  br i1 %9, label %10, label %30

10:                                               ; preds = %7
  %11 = icmp sgt i32 %8, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %10
  %13 = icmp slt i32 %8, 9
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = sext i32 %8 to i64
  %16 = getelementptr inbounds [4 x i8], ptr %3, i64 %15
  store i32 1, ptr %16, align 4
  br label %17

17:                                               ; preds = %14, %12, %10
  %18 = icmp sgt i32 %8, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = sext i32 %8 to i64
  %21 = getelementptr inbounds [4 x i8], ptr %4, i64 %20
  store i32 1, ptr %21, align 4
  br label %22

22:                                               ; preds = %19, %17
  %23 = icmp slt i32 %8, 8
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = sext i32 %8 to i64
  %26 = getelementptr [4 x i8], ptr %5, i64 %25
  %27 = getelementptr i8, ptr %26, i64 28
  store i32 1, ptr %27, align 4
  br label %28

28:                                               ; preds = %24, %22
  %29 = add nsw i32 %8, 1
  br label %7, !llvm.loop !9

30:                                               ; preds = %7
  call void @Try(i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %31 = load i32, ptr %2, align 4
  %.not = icmp eq i32 %31, 0
  br i1 %.not, label %32, label %33

32:                                               ; preds = %30
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %33

33:                                               ; preds = %32, %30
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Queens(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  br label %4

4:                                                ; preds = %7, %1
  %5 = phi i32 [ 1, %1 ], [ %8, %7 ]
  store i32 %5, ptr %3, align 4
  %6 = icmp slt i32 %5, 51
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  call void @Doit()
  %8 = add nsw i32 %5, 1
  br label %4, !llvm.loop !10

9:                                                ; preds = %4
  %10 = add nsw i32 %0, 1
  %11 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %10) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %5, %0
  %3 = phi i32 [ 0, %0 ], [ %6, %5 ]
  store i32 %3, ptr %1, align 4
  %4 = icmp slt i32 %3, 100
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  call void @Queens(i32 noundef %3)
  %6 = add nsw i32 %3, 1
  br label %2, !llvm.loop !11

7:                                                ; preds = %2
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
