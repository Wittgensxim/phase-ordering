; ModuleID = 'results\paper_v4\Stanford_Towers\Stanford_Towers.ll'
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
@str = private unnamed_addr constant [18 x i8] c" Error in Towers.\00", align 1

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
  %2 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %0) #3
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Makenull(i32 noundef %0) #0 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [4 x i8], ptr @stack, i64 %2
  store i32 0, ptr %3, align 4
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
  %5 = load i32, ptr @freelist, align 4
  store i32 %5, ptr %1, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [8 x i8], ptr @cellspace, i64 %6
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr @freelist, align 4
  br label %11

10:                                               ; preds = %0
  call void @Error(ptr noundef nonnull @.str.1)
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
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @stack, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load i32, ptr %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr @stack, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x i8], ptr @cellspace, i64 %16
  %18 = load i32, ptr %17, align 8
  %19 = load i32, ptr %3, align 4
  %.not = icmp sgt i32 %18, %19
  br i1 %.not, label %21, label %20

20:                                               ; preds = %11
  store i32 1, ptr %5, align 4
  call void @Error(ptr noundef nonnull @.str.2)
  br label %21

21:                                               ; preds = %20, %11
  br label %22

22:                                               ; preds = %21, %2
  %23 = load i32, ptr %5, align 4
  %.not1 = icmp eq i32 %23, 0
  br i1 %.not1, label %24, label %40

24:                                               ; preds = %22
  %25 = call i32 @Getelement()
  store i32 %25, ptr %6, align 4
  %26 = load i32, ptr %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i8], ptr @stack, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = sext i32 %25 to i64
  %31 = getelementptr inbounds [8 x i8], ptr @cellspace, i64 %30
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 4
  store i32 %29, ptr %32, align 4
  %33 = load i32, ptr %6, align 4
  %34 = load i32, ptr %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [4 x i8], ptr @stack, i64 %35
  store i32 %33, ptr %36, align 4
  %37 = load i32, ptr %3, align 4
  %38 = sext i32 %33 to i64
  %39 = getelementptr inbounds [8 x i8], ptr @cellspace, i64 %38
  store i32 %37, ptr %39, align 8
  br label %40

40:                                               ; preds = %24, %22
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Init(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @Makenull(i32 noundef %0)
  store i32 %1, ptr %4, align 4
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %.lr.ph, label %13

.lr.ph:                                           ; preds = %2
  br label %6

6:                                                ; preds = %.lr.ph, %9
  %7 = load i32, ptr %4, align 4
  %8 = load i32, ptr %3, align 4
  call void @Push(i32 noundef %7, i32 noundef %8)
  br label %9

9:                                                ; preds = %6
  %10 = load i32, ptr %4, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, ptr %4, align 4
  %12 = icmp sgt i32 %10, 1
  br i1 %12, label %6, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %9
  br label %13

13:                                               ; preds = %._crit_edge, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Pop(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds [4 x i8], ptr @stack, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %41

9:                                                ; preds = %1
  %10 = load i32, ptr %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @stack, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [8 x i8], ptr @cellspace, i64 %14
  %16 = load i32, ptr %15, align 8
  store i32 %16, ptr %4, align 4
  %17 = load i32, ptr %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i8], ptr @stack, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i8], ptr @cellspace, i64 %21
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 4
  %24 = load i32, ptr %23, align 4
  store i32 %24, ptr %3, align 4
  %25 = load i32, ptr @freelist, align 4
  %26 = load i32, ptr %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i8], ptr @stack, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [8 x i8], ptr @cellspace, i64 %30
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 4
  store i32 %25, ptr %32, align 4
  %33 = load i32, ptr %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x i8], ptr @stack, i64 %34
  %36 = load i32, ptr %35, align 4
  store i32 %36, ptr @freelist, align 4
  %37 = load i32, ptr %3, align 4
  %38 = sext i32 %33 to i64
  %39 = getelementptr inbounds [4 x i8], ptr @stack, i64 %38
  store i32 %37, ptr %39, align 4
  %40 = load i32, ptr %4, align 4
  br label %43

41:                                               ; preds = %1
  call void @Error(ptr noundef nonnull @.str.3)
  br label %42

42:                                               ; preds = %41
  br label %43

43:                                               ; preds = %42, %9
  %storemerge = phi i32 [ 0, %42 ], [ %40, %9 ]
  ret i32 %storemerge
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Move(i32 noundef %0, i32 noundef %1) #0 {
  %3 = call i32 @Pop(i32 noundef %0)
  call void @Push(i32 noundef %3, i32 noundef %1)
  %4 = load i32, ptr @movesdone, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @movesdone, align 4
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
  br label %24

12:                                               ; preds = %3
  %13 = load i32, ptr %4, align 4
  %14 = load i32, ptr %5, align 4
  %15 = add i32 %13, %14
  %16 = sub i32 6, %15
  store i32 %16, ptr %7, align 4
  %17 = load i32, ptr %6, align 4
  %18 = add nsw i32 %17, -1
  call void @tower(i32 noundef %13, i32 noundef %16, i32 noundef %18)
  %19 = load i32, ptr %4, align 4
  %20 = load i32, ptr %5, align 4
  call void @Move(i32 noundef %19, i32 noundef %20)
  %21 = load i32, ptr %7, align 4
  %22 = load i32, ptr %6, align 4
  %23 = add nsw i32 %22, -1
  call void @tower(i32 noundef %21, i32 noundef %20, i32 noundef %23)
  br label %24

24:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Towers() #0 {
  %1 = alloca i32, align 4
  store i32 1, ptr %1, align 4
  br i1 true, label %.lr.ph, label %12

.lr.ph:                                           ; preds = %0
  br label %2

2:                                                ; preds = %.lr.ph, %8
  %3 = load i32, ptr %1, align 4
  %4 = add nsw i32 %3, -1
  %5 = sext i32 %3 to i64
  %6 = getelementptr inbounds [8 x i8], ptr @cellspace, i64 %5
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %4, ptr %7, align 4
  br label %8

8:                                                ; preds = %2
  %9 = load i32, ptr %1, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr %1, align 4
  %11 = icmp slt i32 %9, 18
  br i1 %11, label %2, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %8
  br label %12

12:                                               ; preds = %._crit_edge, %0
  store i32 18, ptr @freelist, align 4
  call void @Init(i32 noundef 1, i32 noundef 14)
  call void @Makenull(i32 noundef 2)
  call void @Makenull(i32 noundef 3)
  store i32 0, ptr @movesdone, align 4
  call void @tower(i32 noundef 1, i32 noundef 2, i32 noundef 14)
  %13 = load i32, ptr @movesdone, align 4
  %.not = icmp eq i32 %13, 16383
  br i1 %.not, label %15, label %14

14:                                               ; preds = %12
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %15

15:                                               ; preds = %14, %12
  %16 = load i32, ptr @movesdone, align 4
  %17 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %16) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br i1 true, label %.lr.ph, label %7

.lr.ph:                                           ; preds = %0
  br label %2

2:                                                ; preds = %.lr.ph, %3
  call void @Towers()
  br label %3

3:                                                ; preds = %2
  %4 = load i32, ptr %1, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr %1, align 4
  %6 = icmp slt i32 %4, 99
  br i1 %6, label %2, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %3
  br label %7

7:                                                ; preds = %._crit_edge, %0
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
