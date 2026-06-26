; ModuleID = 'results\paper_full\Stanford_Towers\Stanford_Towers.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Towers.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.element = type { i32, i32 }
%struct.complex = type { float, float }

@seed = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c" Error in Towers: %s\0A\00", align 1
@stack = dso_local global [4 x i32] zeroinitializer, align 16
@freelist = dso_local global i32 0, align 4
@cellspace = dso_local global [19 x %struct.element] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [16 x i8] c"out of space   \00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"disc size error\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"nothing to pop \00", align 1
@movesdone = dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c" Error in Towers.\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@value = dso_local global float 0.000000e+00, align 4
@fixed = dso_local global float 0.000000e+00, align 4
@floated = dso_local global float 0.000000e+00, align 4
@permarray = dso_local global [11 x i32] zeroinitializer, align 16
@pctr = dso_local global i32 0, align 4
@tree = dso_local global ptr null, align 8
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
define dso_local void @Error(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %0)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Makenull(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i32], ptr @stack, i64 0, i64 %3
  store i32 0, ptr %4, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Getelement() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %2 = load i32, ptr @freelist, align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %0
  store i32 %2, ptr %1, align 4
  %5 = load i32, ptr @freelist, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [19 x %struct.element], ptr @cellspace, i64 0, i64 %6
  %8 = getelementptr inbounds nuw %struct.element, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr @freelist, align 4
  br label %11

10:                                               ; preds = %0
  call void @Error(ptr noundef @.str.1)
  br label %11

11:                                               ; preds = %10, %4
  %12 = load i32, ptr %1, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Push(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  %7 = load i32, ptr %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4 x i32], ptr @stack, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = sext i32 %10 to i64
  %14 = getelementptr inbounds [19 x %struct.element], ptr @cellspace, i64 0, i64 %13
  %15 = load i32, ptr %14, align 8
  %16 = load i32, ptr %3, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 1, ptr %5, align 4
  call void @Error(ptr noundef @.str.2)
  br label %19

19:                                               ; preds = %18, %12
  br label %20

20:                                               ; preds = %19, %2
  %21 = load i32, ptr %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %40, label %23

23:                                               ; preds = %20
  %24 = call i32 @Getelement()
  store i32 %24, ptr %6, align 4
  %25 = load i32, ptr %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i32], ptr @stack, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = sext i32 %24 to i64
  %30 = getelementptr inbounds [19 x %struct.element], ptr @cellspace, i64 0, i64 %29
  %31 = getelementptr inbounds nuw %struct.element, ptr %30, i32 0, i32 1
  store i32 %28, ptr %31, align 4
  %32 = load i32, ptr %6, align 4
  %33 = load i32, ptr %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x i32], ptr @stack, i64 0, i64 %34
  store i32 %32, ptr %35, align 4
  %36 = load i32, ptr %3, align 4
  %37 = load i32, ptr %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [19 x %struct.element], ptr @cellspace, i64 0, i64 %38
  store i32 %36, ptr %39, align 8
  br label %40

40:                                               ; preds = %23, %20
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Init(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %6 = load i32, ptr %3, align 4
  call void @Makenull(i32 noundef %6)
  %7 = load i32, ptr %4, align 4
  store i32 %7, ptr %5, align 4
  br label %8

8:                                                ; preds = %13, %2
  %9 = load i32, ptr %5, align 4
  %10 = icmp sge i32 %9, 1
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load i32, ptr %3, align 4
  call void @Push(i32 noundef %9, i32 noundef %12)
  br label %13

13:                                               ; preds = %11
  %14 = load i32, ptr %5, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, ptr %5, align 4
  br label %8, !llvm.loop !7

16:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Pop(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds [4 x i32], ptr @stack, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %39

10:                                               ; preds = %1
  %11 = sext i32 %8 to i64
  %12 = getelementptr inbounds [19 x %struct.element], ptr @cellspace, i64 0, i64 %11
  %13 = load i32, ptr %12, align 8
  store i32 %13, ptr %5, align 4
  %14 = load i32, ptr %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i32], ptr @stack, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [19 x %struct.element], ptr @cellspace, i64 0, i64 %18
  %20 = getelementptr inbounds nuw %struct.element, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr %4, align 4
  %22 = load i32, ptr @freelist, align 4
  %23 = load i32, ptr %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i32], ptr @stack, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [19 x %struct.element], ptr @cellspace, i64 0, i64 %27
  %29 = getelementptr inbounds nuw %struct.element, ptr %28, i32 0, i32 1
  store i32 %22, ptr %29, align 4
  %30 = load i32, ptr %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x i32], ptr @stack, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4
  store i32 %33, ptr @freelist, align 4
  %34 = load i32, ptr %4, align 4
  %35 = load i32, ptr %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [4 x i32], ptr @stack, i64 0, i64 %36
  store i32 %34, ptr %37, align 4
  %38 = load i32, ptr %5, align 4
  store i32 %38, ptr %2, align 4
  br label %41

39:                                               ; preds = %1
  call void @Error(ptr noundef @.str.3)
  br label %40

40:                                               ; preds = %39
  store i32 0, ptr %2, align 4
  br label %41

41:                                               ; preds = %40, %10
  %42 = load i32, ptr %2, align 4
  ret i32 %42
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Move(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %5 = load i32, ptr %3, align 4
  %6 = call i32 @Pop(i32 noundef %5)
  %7 = load i32, ptr %4, align 4
  call void @Push(i32 noundef %6, i32 noundef %7)
  %8 = load i32, ptr @movesdone, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr @movesdone, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @tower(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %8 = icmp eq i32 %2, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load i32, ptr %4, align 4
  %11 = load i32, ptr %5, align 4
  call void @Move(i32 noundef %10, i32 noundef %11)
  br label %26

12:                                               ; preds = %3
  %13 = load i32, ptr %4, align 4
  %14 = sub nsw i32 6, %13
  %15 = load i32, ptr %5, align 4
  %16 = sub nsw i32 %14, %15
  store i32 %16, ptr %7, align 4
  %17 = load i32, ptr %4, align 4
  %18 = load i32, ptr %6, align 4
  %19 = sub nsw i32 %18, 1
  call void @tower(i32 noundef %17, i32 noundef %16, i32 noundef %19)
  %20 = load i32, ptr %4, align 4
  %21 = load i32, ptr %5, align 4
  call void @Move(i32 noundef %20, i32 noundef %21)
  %22 = load i32, ptr %7, align 4
  %23 = load i32, ptr %5, align 4
  %24 = load i32, ptr %6, align 4
  %25 = sub nsw i32 %24, 1
  call void @tower(i32 noundef %22, i32 noundef %23, i32 noundef %25)
  br label %26

26:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Towers() #0 {
  %1 = alloca i32, align 4
  store i32 1, ptr %1, align 4
  br label %2

2:                                                ; preds = %10, %0
  %3 = load i32, ptr %1, align 4
  %4 = icmp sle i32 %3, 18
  br i1 %4, label %5, label %13

5:                                                ; preds = %2
  %6 = sub nsw i32 %3, 1
  %7 = sext i32 %3 to i64
  %8 = getelementptr inbounds [19 x %struct.element], ptr @cellspace, i64 0, i64 %7
  %9 = getelementptr inbounds nuw %struct.element, ptr %8, i32 0, i32 1
  store i32 %6, ptr %9, align 4
  br label %10

10:                                               ; preds = %5
  %11 = load i32, ptr %1, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr %1, align 4
  br label %2, !llvm.loop !9

13:                                               ; preds = %2
  store i32 18, ptr @freelist, align 4
  call void @Init(i32 noundef 1, i32 noundef 14)
  call void @Makenull(i32 noundef 2)
  call void @Makenull(i32 noundef 3)
  store i32 0, ptr @movesdone, align 4
  call void @tower(i32 noundef 1, i32 noundef 2, i32 noundef 14)
  %14 = load i32, ptr @movesdone, align 4
  %15 = icmp ne i32 %14, 16383
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %18

18:                                               ; preds = %16, %13
  %19 = load i32, ptr @movesdone, align 4
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %19)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  br label %3

3:                                                ; preds = %7, %0
  %4 = load i32, ptr %2, align 4
  %5 = icmp slt i32 %4, 100
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  call void @Towers()
  br label %7

7:                                                ; preds = %6
  %8 = load i32, ptr %2, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr %2, align 4
  br label %3, !llvm.loop !10

10:                                               ; preds = %3
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Towers.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
