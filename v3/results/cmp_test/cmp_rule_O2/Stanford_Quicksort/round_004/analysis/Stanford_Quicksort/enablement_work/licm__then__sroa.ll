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

1:                                                ; preds = %19, %0
  %storemerge = phi i32 [ 1, %0 ], [ %20, %19 ]
  %2 = icmp slt i32 %storemerge, 5001
  br i1 %2, label %3, label %21

3:                                                ; preds = %1
  %4 = call i32 @Rand()
  %.fr = freeze i32 %4
  %5 = srem i32 %.fr, 100000
  %6 = add nsw i32 %5, -50000
  %7 = sext i32 %storemerge to i64
  %8 = getelementptr inbounds [4 x i8], ptr @sortlist, i64 %7
  store i32 %6, ptr %8, align 4
  %9 = sext i32 %storemerge to i64
  %10 = getelementptr inbounds [4 x i8], ptr @sortlist, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = load i32, ptr @biggest, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 %11, ptr @biggest, align 4
  br label %19

15:                                               ; preds = %3
  %16 = load i32, ptr @littlest, align 4
  %17 = icmp slt i32 %11, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 %11, ptr @littlest, align 4
  br label %19

19:                                               ; preds = %18, %15, %14
  %20 = add nsw i32 %storemerge, 1
  br label %1, !llvm.loop !7

21:                                               ; preds = %1
  %storemerge.lcssa = phi i32 [ %storemerge, %1 ]
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Quicksort(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = add nsw i32 %1, %2
  %5 = sdiv i32 %4, 2
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [4 x i8], ptr %0, i64 %6
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %41, %3
  %10 = phi i32 [ %42, %41 ], [ undef, %3 ]
  %.lcssa48 = phi i32 [ %.lcssa49, %41 ], [ %2, %3 ]
  %.lcssa16 = phi i32 [ %.lcssa17, %41 ], [ %1, %3 ]
  br label %11

11:                                               ; preds = %17, %9
  %12 = phi i32 [ %18, %17 ], [ %.lcssa16, %9 ]
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr %0, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp slt i32 %15, %8
  br i1 %16, label %17, label %.preheader

.preheader:                                       ; preds = %11
  %.lcssa1 = phi i32 [ %12, %11 ]
  br label %19

17:                                               ; preds = %11
  %18 = add nsw i32 %12, 1
  br label %11, !llvm.loop !9

19:                                               ; preds = %25, %.preheader
  %20 = phi i32 [ %26, %25 ], [ %.lcssa48, %.preheader ]
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i8], ptr %0, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = icmp slt i32 %8, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = add nsw i32 %20, -1
  br label %19, !llvm.loop !10

27:                                               ; preds = %19
  %.lcssa4 = phi i32 [ %20, %19 ]
  %.lcssa2 = phi ptr [ %0, %19 ]
  %.lcssa = phi i32 [ %20, %19 ]
  %.not = icmp sgt i32 %.lcssa1, %.lcssa
  br i1 %.not, label %41, label %28

28:                                               ; preds = %27
  %29 = sext i32 %.lcssa1 to i64
  %30 = getelementptr inbounds [4 x i8], ptr %.lcssa2, i64 %29
  %31 = load i32, ptr %30, align 4
  %32 = sext i32 %.lcssa4 to i64
  %33 = getelementptr inbounds [4 x i8], ptr %0, i64 %32
  %34 = load i32, ptr %33, align 4
  %35 = sext i32 %.lcssa1 to i64
  %36 = getelementptr inbounds [4 x i8], ptr %0, i64 %35
  store i32 %34, ptr %36, align 4
  %37 = sext i32 %.lcssa4 to i64
  %38 = getelementptr inbounds [4 x i8], ptr %0, i64 %37
  store i32 %31, ptr %38, align 4
  %39 = add nsw i32 %.lcssa1, 1
  %40 = add nsw i32 %.lcssa4, -1
  br label %41

41:                                               ; preds = %28, %27
  %42 = phi i32 [ %31, %28 ], [ %10, %27 ]
  %.lcssa49 = phi i32 [ %40, %28 ], [ %.lcssa4, %27 ]
  %.lcssa17 = phi i32 [ %39, %28 ], [ %.lcssa1, %27 ]
  %.not1 = icmp sgt i32 %.lcssa17, %.lcssa49
  br i1 %.not1, label %43, label %9, !llvm.loop !11

43:                                               ; preds = %41
  %.lcssa11 = phi i32 [ %42, %41 ]
  %.lcssa49.lcssa = phi i32 [ %.lcssa49, %41 ]
  %.lcssa17.lcssa = phi i32 [ %.lcssa17, %41 ]
  %.lcssa3 = phi i32 [ %.lcssa49, %41 ]
  %44 = icmp slt i32 %1, %.lcssa3
  br i1 %44, label %45, label %46

45:                                               ; preds = %43
  call void @Quicksort(ptr noundef %0, i32 noundef %1, i32 noundef %.lcssa3)
  br label %46

46:                                               ; preds = %45, %43
  %47 = icmp slt i32 %.lcssa17.lcssa, %2
  br i1 %47, label %48, label %49

48:                                               ; preds = %46
  call void @Quicksort(ptr noundef %0, i32 noundef %.lcssa17.lcssa, i32 noundef %2)
  br label %49

49:                                               ; preds = %48, %46
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

1:                                                ; preds = %3, %0
  %storemerge = phi i32 [ 0, %0 ], [ %4, %3 ]
  %2 = icmp slt i32 %storemerge, 100
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  call void @Quick(i32 noundef %storemerge)
  %4 = add nsw i32 %storemerge, 1
  br label %1, !llvm.loop !12

5:                                                ; preds = %1
  %storemerge.lcssa = phi i32 [ %storemerge, %1 ]
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
