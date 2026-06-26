; ModuleID = 'results\cmp_test\cmp_rule_O2\Stanford_Quicksort\round_002\output.ll'
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

2:                                                ; preds = %19, %0
  %3 = phi i32 [ 1, %0 ], [ %20, %19 ]
  %4 = icmp slt i32 %3, 5001
  br i1 %4, label %5, label %21

5:                                                ; preds = %2
  %6 = call i32 @Rand()
  %.fr = freeze i32 %6
  %7 = srem i32 %.fr, 100000
  %8 = add nsw i32 %7, -50000
  %9 = sext i32 %3 to i64
  %10 = getelementptr inbounds [4 x i8], ptr @sortlist, i64 %9
  store i32 %8, ptr %10, align 4
  %11 = load i32, ptr @biggest, align 4
  %12 = icmp sgt i32 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  store i32 %8, ptr @biggest, align 4
  br label %19

14:                                               ; preds = %5
  %15 = load i32, ptr @littlest, align 4
  %16 = icmp slt i32 %8, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 %8, ptr @littlest, align 4
  br label %18

18:                                               ; preds = %17, %14
  br label %19

19:                                               ; preds = %18, %13
  %20 = add nsw i32 %3, 1
  br label %2, !llvm.loop !7

21:                                               ; preds = %2
  %.lcssa = phi i32 [ %3, %2 ]
  store i32 %.lcssa, ptr %1, align 4
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

16:                                               ; preds = %51, %3
  %17 = phi i32 [ %52, %51 ], [ %2, %3 ]
  %18 = phi i32 [ %53, %51 ], [ %1, %3 ]
  %19 = phi ptr [ %54, %51 ], [ %0, %3 ]
  br label %20

20:                                               ; preds = %26, %16
  %21 = phi i32 [ %27, %26 ], [ %18, %16 ]
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i8], ptr %19, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = icmp slt i32 %24, %15
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = add nsw i32 %21, 1
  store i32 %27, ptr %7, align 4
  br label %20, !llvm.loop !9

28:                                               ; preds = %20
  %.lcssa7 = phi i64 [ %22, %20 ]
  %.lcssa1 = phi i32 [ %21, %20 ]
  %29 = getelementptr inbounds [4 x i8], ptr %19, i64 %.lcssa7
  br label %30

30:                                               ; preds = %36, %28
  %31 = phi i32 [ %37, %36 ], [ %17, %28 ]
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [4 x i8], ptr %19, i64 %32
  %34 = load i32, ptr %33, align 4
  %35 = icmp slt i32 %15, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = add nsw i32 %31, -1
  store i32 %37, ptr %8, align 4
  br label %30, !llvm.loop !10

38:                                               ; preds = %30
  %.lcssa = phi i64 [ %32, %30 ]
  %.lcssa3 = phi i32 [ %31, %30 ]
  %39 = getelementptr inbounds [4 x i8], ptr %19, i64 %.lcssa
  %.not = icmp sgt i32 %.lcssa1, %.lcssa3
  br i1 %.not, label %51, label %40

40:                                               ; preds = %38
  %41 = load i32, ptr %29, align 4
  store i32 %41, ptr %10, align 4
  %42 = load i32, ptr %39, align 4
  store i32 %42, ptr %29, align 4
  %43 = load i32, ptr %10, align 4
  %44 = load ptr, ptr %4, align 8
  %45 = load i32, ptr %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [4 x i8], ptr %44, i64 %46
  store i32 %43, ptr %47, align 4
  %48 = load i32, ptr %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr %7, align 4
  %50 = add nsw i32 %45, -1
  store i32 %50, ptr %8, align 4
  br label %51

51:                                               ; preds = %40, %38
  %52 = phi i32 [ %50, %40 ], [ %.lcssa3, %38 ]
  %53 = phi i32 [ %49, %40 ], [ %.lcssa1, %38 ]
  %54 = phi ptr [ %44, %40 ], [ %19, %38 ]
  %.not1 = icmp sgt i32 %53, %52
  br i1 %.not1, label %55, label %16, !llvm.loop !11

55:                                               ; preds = %51
  %.lcssa6 = phi i32 [ %52, %51 ]
  %.lcssa5 = phi i32 [ %53, %51 ]
  %.lcssa4 = phi ptr [ %54, %51 ]
  %56 = load i32, ptr %5, align 4
  %57 = icmp slt i32 %56, %.lcssa6
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  call void @Quicksort(ptr noundef %.lcssa4, i32 noundef %56, i32 noundef %.lcssa6)
  %.pre = load i32, ptr %7, align 4
  br label %59

59:                                               ; preds = %58, %55
  %60 = phi i32 [ %.pre, %58 ], [ %.lcssa5, %55 ]
  %61 = load i32, ptr %6, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load ptr, ptr %4, align 8
  call void @Quicksort(ptr noundef %64, i32 noundef %60, i32 noundef %61)
  br label %65

65:                                               ; preds = %63, %59
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

2:                                                ; preds = %5, %0
  %3 = phi i32 [ 0, %0 ], [ %6, %5 ]
  %4 = icmp slt i32 %3, 100
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  call void @Quick(i32 noundef %3)
  %6 = add nsw i32 %3, 1
  br label %2, !llvm.loop !12

7:                                                ; preds = %2
  %.lcssa = phi i32 [ %3, %2 ]
  store i32 %.lcssa, ptr %1, align 4
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
