; ModuleID = 'results\cmp_test\cmp_random_O2\Stanford_Quicksort\Stanford_Quicksort.ll'
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

2:                                                ; preds = %31, %0
  %storemerge = phi i32 [ 1, %0 ], [ %32, %31 ]
  %3 = icmp slt i32 %storemerge, 5001
  br i1 %3, label %4, label %33

4:                                                ; preds = %2
  %5 = call i32 @Rand()
  %.fr = freeze i32 %5
  %6 = srem i32 %.fr, 100000
  %7 = add nsw i32 %6, -50000
  %8 = sext i32 %storemerge to i64
  %9 = getelementptr inbounds [4 x i8], ptr @sortlist, i64 %8
  store i32 %7, ptr %9, align 4
  %10 = sext i32 %storemerge to i64
  %11 = getelementptr inbounds [4 x i8], ptr @sortlist, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr @biggest, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = sext i32 %storemerge to i64
  %17 = getelementptr inbounds [4 x i8], ptr @sortlist, i64 %16
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr @biggest, align 4
  br label %30

19:                                               ; preds = %4
  %20 = sext i32 %storemerge to i64
  %21 = getelementptr inbounds [4 x i8], ptr @sortlist, i64 %20
  %22 = load i32, ptr %21, align 4
  %23 = load i32, ptr @littlest, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = sext i32 %storemerge to i64
  %27 = getelementptr inbounds [4 x i8], ptr @sortlist, i64 %26
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr @littlest, align 4
  br label %29

29:                                               ; preds = %25, %19
  br label %30

30:                                               ; preds = %29, %15
  br label %31

31:                                               ; preds = %30
  %32 = add nsw i32 %storemerge, 1
  br label %2, !llvm.loop !7

33:                                               ; preds = %2
  %storemerge.lcssa = phi i32 [ %storemerge, %2 ]
  store i32 %storemerge.lcssa, ptr %1, align 4
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
  %16 = load ptr, ptr %4, align 8
  %17 = load i32, ptr %9, align 4
  %18 = load i32, ptr %9, align 4
  %19 = load ptr, ptr %4, align 8
  %20 = load ptr, ptr %4, align 8
  %21 = load ptr, ptr %4, align 8
  %.promoted4 = load i32, ptr %7, align 4
  %.promoted = load i32, ptr %8, align 4
  %.promoted9 = load i32, ptr %10, align 4
  br label %22

22:                                               ; preds = %57, %3
  %23 = phi i32 [ %56, %57 ], [ %.promoted9, %3 ]
  %.lcssa37 = phi i32 [ %.lcssa38, %57 ], [ %.promoted, %3 ]
  %.lcssa5 = phi i32 [ %.lcssa6, %57 ], [ %.promoted4, %3 ]
  br label %24

24:                                               ; preds = %30, %22
  %25 = phi i32 [ %31, %30 ], [ %.lcssa5, %22 ]
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i8], ptr %16, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = icmp slt i32 %28, %17
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = add nsw i32 %25, 1
  br label %24, !llvm.loop !9

32:                                               ; preds = %24
  %.lcssa = phi i32 [ %25, %24 ]
  br label %33

33:                                               ; preds = %39, %32
  %34 = phi i32 [ %40, %39 ], [ %.lcssa37, %32 ]
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [4 x i8], ptr %19, i64 %35
  %37 = load i32, ptr %36, align 4
  %38 = icmp slt i32 %18, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = add nsw i32 %34, -1
  br label %33, !llvm.loop !10

41:                                               ; preds = %33
  %.lcssa3 = phi i32 [ %34, %33 ]
  %.not = icmp sgt i32 %.lcssa, %.lcssa3
  br i1 %.not, label %55, label %42

42:                                               ; preds = %41
  %43 = sext i32 %.lcssa to i64
  %44 = getelementptr inbounds [4 x i8], ptr %20, i64 %43
  %45 = load i32, ptr %44, align 4
  %46 = sext i32 %.lcssa3 to i64
  %47 = getelementptr inbounds [4 x i8], ptr %20, i64 %46
  %48 = load i32, ptr %47, align 4
  %49 = sext i32 %.lcssa to i64
  %50 = getelementptr inbounds [4 x i8], ptr %21, i64 %49
  store i32 %48, ptr %50, align 4
  %51 = sext i32 %.lcssa3 to i64
  %52 = getelementptr inbounds [4 x i8], ptr %21, i64 %51
  store i32 %45, ptr %52, align 4
  %53 = add nsw i32 %.lcssa, 1
  %54 = add nsw i32 %.lcssa3, -1
  br label %55

55:                                               ; preds = %42, %41
  %56 = phi i32 [ %45, %42 ], [ %23, %41 ]
  %.lcssa38 = phi i32 [ %54, %42 ], [ %.lcssa3, %41 ]
  %.lcssa6 = phi i32 [ %53, %42 ], [ %.lcssa, %41 ]
  br label %57

57:                                               ; preds = %55
  %.not1 = icmp sgt i32 %.lcssa6, %.lcssa38
  br i1 %.not1, label %58, label %22, !llvm.loop !11

58:                                               ; preds = %57
  %.lcssa10 = phi i32 [ %56, %57 ]
  %.lcssa38.lcssa = phi i32 [ %.lcssa38, %57 ]
  %.lcssa6.lcssa = phi i32 [ %.lcssa6, %57 ]
  store i32 %.lcssa6.lcssa, ptr %7, align 4
  store i32 %.lcssa38.lcssa, ptr %8, align 4
  store i32 %.lcssa10, ptr %10, align 4
  %59 = load i32, ptr %5, align 4
  %60 = load i32, ptr %8, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load ptr, ptr %4, align 8
  %64 = load i32, ptr %5, align 4
  %65 = load i32, ptr %8, align 4
  call void @Quicksort(ptr noundef %63, i32 noundef %64, i32 noundef %65)
  br label %66

66:                                               ; preds = %62, %58
  %67 = load i32, ptr %7, align 4
  %68 = load i32, ptr %6, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load ptr, ptr %4, align 8
  %72 = load i32, ptr %7, align 4
  %73 = load i32, ptr %6, align 4
  call void @Quicksort(ptr noundef %71, i32 noundef %72, i32 noundef %73)
  br label %74

74:                                               ; preds = %70, %66
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
  %10 = load i32, ptr %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr [4 x i8], ptr @sortlist, i64 %11
  %13 = getelementptr i8, ptr %12, i64 4
  %14 = load i32, ptr %13, align 4
  %15 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %14) #3
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %5, %0
  %storemerge = phi i32 [ 0, %0 ], [ %6, %5 ]
  %3 = icmp slt i32 %storemerge, 100
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  call void @Quick(i32 noundef %storemerge)
  br label %5

5:                                                ; preds = %4
  %6 = add nsw i32 %storemerge, 1
  br label %2, !llvm.loop !12

7:                                                ; preds = %2
  %storemerge.lcssa = phi i32 [ %storemerge, %2 ]
  store i32 %storemerge.lcssa, ptr %1, align 4
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
