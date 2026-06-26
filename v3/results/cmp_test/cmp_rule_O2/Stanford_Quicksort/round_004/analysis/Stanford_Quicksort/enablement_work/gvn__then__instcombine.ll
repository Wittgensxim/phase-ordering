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
  call void @Initrand()
  store i32 0, ptr @biggest, align 4
  store i32 0, ptr @littlest, align 4
  br label %1

1:                                                ; preds = %17, %0
  %2 = phi i32 [ 1, %0 ], [ %18, %17 ]
  %3 = icmp samesign ult i32 %2, 5001
  br i1 %3, label %4, label %19

4:                                                ; preds = %1
  %5 = call i32 @Rand()
  %.fr = freeze i32 %5
  %6 = srem i32 %.fr, 100000
  %7 = add nsw i32 %6, -50000
  %8 = zext nneg i32 %2 to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %8
  store i32 %7, ptr %9, align 4
  %10 = load i32, ptr @biggest, align 4
  %11 = icmp sgt i32 %7, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  store i32 %7, ptr @biggest, align 4
  br label %17

13:                                               ; preds = %4
  %14 = load i32, ptr @littlest, align 4
  %15 = icmp slt i32 %7, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 %7, ptr @littlest, align 4
  br label %17

17:                                               ; preds = %16, %13, %12
  %18 = add nuw nsw i32 %2, 1
  br label %1, !llvm.loop !7

19:                                               ; preds = %1
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
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  store i32 %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  %10 = add nsw i32 %1, %2
  %11 = sdiv i32 %10, 2
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr %0, i64 %12
  %14 = load i32, ptr %13, align 4
  br label %15

15:                                               ; preds = %47, %3
  %16 = phi i32 [ %48, %47 ], [ %2, %3 ]
  %17 = phi i32 [ %49, %47 ], [ %1, %3 ]
  %18 = phi ptr [ %50, %47 ], [ %0, %3 ]
  br label %19

19:                                               ; preds = %25, %15
  %20 = phi i32 [ %26, %25 ], [ %17, %15 ]
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i8], ptr %18, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = icmp slt i32 %23, %14
  br i1 %24, label %25, label %.preheader

.preheader:                                       ; preds = %19
  br label %27

25:                                               ; preds = %19
  %26 = add nsw i32 %20, 1
  store i32 %26, ptr %7, align 4
  br label %19, !llvm.loop !9

27:                                               ; preds = %33, %.preheader
  %28 = phi i32 [ %34, %33 ], [ %16, %.preheader ]
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4 x i8], ptr %18, i64 %29
  %31 = load i32, ptr %30, align 4
  %32 = icmp slt i32 %14, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = add nsw i32 %28, -1
  store i32 %34, ptr %8, align 4
  br label %27, !llvm.loop !10

35:                                               ; preds = %27
  %.not = icmp sgt i32 %20, %28
  br i1 %.not, label %47, label %36

36:                                               ; preds = %35
  %37 = load i32, ptr %22, align 4
  store i32 %37, ptr %9, align 4
  %38 = load i32, ptr %30, align 4
  store i32 %38, ptr %22, align 4
  %39 = load i32, ptr %9, align 4
  %40 = load ptr, ptr %4, align 8
  %41 = load i32, ptr %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [4 x i8], ptr %40, i64 %42
  store i32 %39, ptr %43, align 4
  %44 = load i32, ptr %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %7, align 4
  %46 = add nsw i32 %41, -1
  store i32 %46, ptr %8, align 4
  br label %47

47:                                               ; preds = %36, %35
  %48 = phi i32 [ %46, %36 ], [ %28, %35 ]
  %49 = phi i32 [ %45, %36 ], [ %20, %35 ]
  %50 = phi ptr [ %40, %36 ], [ %18, %35 ]
  %.not1 = icmp sgt i32 %49, %48
  br i1 %.not1, label %51, label %15, !llvm.loop !11

51:                                               ; preds = %47
  %52 = load i32, ptr %5, align 4
  %53 = icmp slt i32 %52, %48
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  call void @Quicksort(ptr noundef %50, i32 noundef %52, i32 noundef %48)
  %.pre = load i32, ptr %7, align 4
  br label %55

55:                                               ; preds = %54, %51
  %56 = phi i32 [ %.pre, %54 ], [ %49, %51 ]
  %57 = load i32, ptr %6, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load ptr, ptr %4, align 8
  call void @Quicksort(ptr noundef %60, i32 noundef %56, i32 noundef %57)
  br label %61

61:                                               ; preds = %59, %55
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Quick(i32 noundef %0) #0 {
  call void @Initarr()
  call void @Quicksort(ptr noundef nonnull @sortlist, i32 noundef 1, i32 noundef 5000)
  %2 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4
  %3 = load i32, ptr @littlest, align 4
  %.not = icmp eq i32 %2, %3
  br i1 %.not, label %4, label %7

4:                                                ; preds = %1
  %5 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 20000), align 16
  %6 = load i32, ptr @biggest, align 4
  %.not1 = icmp eq i32 %5, %6
  br i1 %.not1, label %8, label %7

7:                                                ; preds = %4, %1
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %8

8:                                                ; preds = %7, %4
  %9 = sext i32 %0 to i64
  %10 = getelementptr [4 x i8], ptr @sortlist, i64 %9
  %11 = getelementptr i8, ptr %10, i64 4
  %12 = load i32, ptr %11, align 4
  %13 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %12) #3
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i32 [ 0, %0 ], [ %5, %4 ]
  %3 = icmp samesign ult i32 %2, 100
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  call void @Quick(i32 noundef %2)
  %5 = add nuw nsw i32 %2, 1
  br label %1, !llvm.loop !12

6:                                                ; preds = %1
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
