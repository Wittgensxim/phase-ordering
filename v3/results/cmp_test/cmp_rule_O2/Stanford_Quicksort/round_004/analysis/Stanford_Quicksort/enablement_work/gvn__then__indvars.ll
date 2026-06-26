; ModuleID = 'results\cmp_test\cmp_rule_O2\Stanford_Quicksort\round_003\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Quicksort.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.element = type { i32, i32 }
%struct.complex = type { float, float }

@seed = dso_local global i32 0, align 4
@biggest = dso_local global i32 0, align 4
@littlest = dso_local global i32 0, align 4
@sortlist = dso_local global [5001 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [18 x i8] c" Error in Quick.\0A\00", align 1
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
@top = dso_local global i32 0, align 4
@z = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@w = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@e = dso_local global [130 x %struct.complex] zeroinitializer, align 16
@zr = dso_local global float 0.000000e+00, align 4
@zi = dso_local global float 0.000000e+00, align 4
@str = private unnamed_addr constant [17 x i8] c" Error in Quick.\00", align 1

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
define dso_local void @Initarr() #0 {
  %1 = alloca i32, align 4
  call void @Initrand()
  store i32 0, ptr @biggest, align 4
  store i32 0, ptr @littlest, align 4
  br label %2

2:                                                ; preds = %16, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %16 ], [ 1, %0 ]
  %3 = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %3, ptr %1, align 4
  %exitcond = icmp ne i64 %indvars.iv, 5001
  br i1 %exitcond, label %4, label %17

4:                                                ; preds = %2
  %5 = call i32 @Rand()
  %.fr = freeze i32 %5
  %6 = srem i32 %.fr, 100000
  %7 = add nsw i32 %6, -50000
  %8 = getelementptr inbounds [4 x i8], ptr @sortlist, i64 %indvars.iv
  store i32 %7, ptr %8, align 4
  %9 = load i32, ptr @biggest, align 4
  %10 = icmp sgt i32 %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  store i32 %7, ptr @biggest, align 4
  br label %16

12:                                               ; preds = %4
  %13 = load i32, ptr @littlest, align 4
  %14 = icmp slt i32 %7, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 %7, ptr @littlest, align 4
  br label %16

16:                                               ; preds = %15, %12, %11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %2, !llvm.loop !7

17:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Quicksort(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  store i32 %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  %11 = add nsw i32 %1, %2
  %12 = sdiv i32 %11, 2
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr %0, i64 %13
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %9, align 4
  br label %16

16:                                               ; preds = %48, %3
  %17 = phi i32 [ %49, %48 ], [ %2, %3 ]
  %18 = phi i32 [ %50, %48 ], [ %1, %3 ]
  %19 = phi ptr [ %51, %48 ], [ %0, %3 ]
  %20 = sext i32 %18 to i64
  br label %21

21:                                               ; preds = %26, %16
  %indvars.iv = phi i64 [ %indvars.iv.next, %26 ], [ %20, %16 ]
  %22 = getelementptr inbounds [4 x i8], ptr %19, i64 %indvars.iv
  %23 = load i32, ptr %22, align 4
  %24 = icmp slt i32 %23, %15
  br i1 %24, label %26, label %.preheader

.preheader:                                       ; preds = %21
  %.lcssa1.wide = phi i64 [ %indvars.iv, %21 ]
  %.lcssa = phi ptr [ %22, %21 ]
  %25 = sext i32 %17 to i64
  br label %28

26:                                               ; preds = %21
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %27 = trunc nsw i64 %indvars.iv.next to i32
  store i32 %27, ptr %7, align 4
  br label %21, !llvm.loop !9

28:                                               ; preds = %32, %.preheader
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %32 ], [ %25, %.preheader ]
  %29 = getelementptr inbounds [4 x i8], ptr %19, i64 %indvars.iv8
  %30 = load i32, ptr %29, align 4
  %31 = icmp slt i32 %15, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %indvars.iv.next9 = add nsw i64 %indvars.iv8, -1
  %33 = trunc nsw i64 %indvars.iv.next9 to i32
  store i32 %33, ptr %8, align 4
  br label %28, !llvm.loop !10

34:                                               ; preds = %28
  %.lcssa3.wide = phi i64 [ %indvars.iv8, %28 ]
  %.lcssa2 = phi ptr [ %29, %28 ]
  %35 = trunc nsw i64 %.lcssa1.wide to i32
  %36 = trunc nsw i64 %.lcssa3.wide to i32
  %.not = icmp sgt i32 %35, %36
  br i1 %.not, label %48, label %37

37:                                               ; preds = %34
  %38 = load i32, ptr %.lcssa, align 4
  store i32 %38, ptr %10, align 4
  %39 = load i32, ptr %.lcssa2, align 4
  store i32 %39, ptr %.lcssa, align 4
  %40 = load i32, ptr %10, align 4
  %41 = load ptr, ptr %4, align 8
  %42 = load i32, ptr %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [4 x i8], ptr %41, i64 %43
  store i32 %40, ptr %44, align 4
  %45 = load i32, ptr %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %7, align 4
  %47 = add nsw i32 %42, -1
  store i32 %47, ptr %8, align 4
  br label %48

48:                                               ; preds = %37, %34
  %49 = phi i32 [ %47, %37 ], [ %36, %34 ]
  %50 = phi i32 [ %46, %37 ], [ %35, %34 ]
  %51 = phi ptr [ %41, %37 ], [ %19, %34 ]
  %.not1 = icmp sgt i32 %50, %49
  br i1 %.not1, label %52, label %16, !llvm.loop !11

52:                                               ; preds = %48
  %.lcssa6 = phi i32 [ %49, %48 ]
  %.lcssa5 = phi i32 [ %50, %48 ]
  %.lcssa4 = phi ptr [ %51, %48 ]
  %53 = load i32, ptr %5, align 4
  %54 = icmp slt i32 %53, %.lcssa6
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  call void @Quicksort(ptr noundef %.lcssa4, i32 noundef %53, i32 noundef %.lcssa6)
  %.pre = load i32, ptr %7, align 4
  br label %56

56:                                               ; preds = %55, %52
  %57 = phi i32 [ %.pre, %55 ], [ %.lcssa5, %52 ]
  %58 = load i32, ptr %6, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load ptr, ptr %4, align 8
  call void @Quicksort(ptr noundef %61, i32 noundef %57, i32 noundef %58)
  br label %62

62:                                               ; preds = %60, %56
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Quick(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @Initarr()
  call void @Quicksort(ptr noundef nonnull @sortlist, i32 noundef 1, i32 noundef 5000)
  %3 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4
  %4 = load i32, ptr @littlest, align 4
  %.not = icmp eq i32 %3, %4
  br i1 %.not, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 20000), align 16
  %7 = load i32, ptr @biggest, align 4
  %.not1 = icmp eq i32 %6, %7
  br i1 %.not1, label %9, label %8

8:                                                ; preds = %5, %1
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %9

9:                                                ; preds = %8, %5
  %10 = sext i32 %0 to i64
  %11 = getelementptr [4 x i8], ptr @sortlist, i64 %10
  %12 = getelementptr i8, ptr %11, i64 4
  %13 = load i32, ptr %12, align 4
  %14 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %13) #3
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %4, %0
  %3 = phi i32 [ 0, %0 ], [ %5, %4 ]
  store i32 %3, ptr %1, align 4
  %exitcond = icmp ne i32 %3, 100
  br i1 %exitcond, label %4, label %6

4:                                                ; preds = %2
  call void @Quick(i32 noundef %3)
  %5 = add nuw nsw i32 %3, 1
  br label %2, !llvm.loop !12

6:                                                ; preds = %2
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
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Quicksort.c", directory: "E:/Phase Ordering/v3")
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
!12 = distinct !{!12, !8}
