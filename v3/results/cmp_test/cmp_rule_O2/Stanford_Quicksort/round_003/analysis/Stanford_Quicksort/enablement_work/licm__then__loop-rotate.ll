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

2:                                                ; preds = %0, %20
  %storemerge1 = phi i32 [ 1, %0 ], [ %21, %20 ]
  %3 = call i32 @Rand()
  %.fr = freeze i32 %3
  %4 = srem i32 %.fr, 100000
  %5 = add nsw i32 %4, -50000
  %6 = sext i32 %storemerge1 to i64
  %7 = getelementptr inbounds [4 x i8], ptr @sortlist, i64 %6
  store i32 %5, ptr %7, align 4
  %8 = sext i32 %storemerge1 to i64
  %9 = getelementptr inbounds [4 x i8], ptr @sortlist, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr @biggest, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 %10, ptr @biggest, align 4
  br label %19

14:                                               ; preds = %2
  %15 = load i32, ptr @littlest, align 4
  %16 = icmp slt i32 %10, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 %10, ptr @littlest, align 4
  br label %18

18:                                               ; preds = %17, %14
  br label %19

19:                                               ; preds = %18, %13
  br label %20

20:                                               ; preds = %19
  %21 = add nsw i32 %storemerge1, 1
  %22 = icmp slt i32 %21, 5001
  br i1 %22, label %2, label %23, !llvm.loop !7

23:                                               ; preds = %20
  %storemerge.lcssa = phi i32 [ %21, %20 ]
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
  %.promoted5 = load i32, ptr %7, align 4
  %.promoted = load i32, ptr %8, align 4
  %.promoted10 = load i32, ptr %10, align 4
  br label %22

22:                                               ; preds = %55, %3
  %23 = phi i32 [ %54, %55 ], [ %.promoted10, %3 ]
  %.lcssa48 = phi i32 [ %.lcssa49, %55 ], [ %.promoted, %3 ]
  %.lcssa16 = phi i32 [ %.lcssa17, %55 ], [ %.promoted5, %3 ]
  br label %24

24:                                               ; preds = %24, %22
  %25 = phi i32 [ %30, %24 ], [ %.lcssa16, %22 ]
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i8], ptr %16, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = icmp slt i32 %28, %17
  %30 = add nsw i32 %25, 1
  br i1 %29, label %24, label %31, !llvm.loop !9

31:                                               ; preds = %24
  %.lcssa1 = phi i32 [ %25, %24 ]
  br label %32

32:                                               ; preds = %32, %31
  %33 = phi i32 [ %38, %32 ], [ %.lcssa48, %31 ]
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x i8], ptr %19, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = icmp slt i32 %18, %36
  %38 = add nsw i32 %33, -1
  br i1 %37, label %32, label %39, !llvm.loop !10

39:                                               ; preds = %32
  %.lcssa4 = phi i32 [ %33, %32 ]
  %.lcssa2 = phi ptr [ %19, %32 ]
  %.lcssa = phi i32 [ %33, %32 ]
  %.not = icmp sgt i32 %.lcssa1, %.lcssa
  br i1 %.not, label %53, label %40

40:                                               ; preds = %39
  %41 = sext i32 %.lcssa1 to i64
  %42 = getelementptr inbounds [4 x i8], ptr %.lcssa2, i64 %41
  %43 = load i32, ptr %42, align 4
  %44 = sext i32 %.lcssa4 to i64
  %45 = getelementptr inbounds [4 x i8], ptr %20, i64 %44
  %46 = load i32, ptr %45, align 4
  %47 = sext i32 %.lcssa1 to i64
  %48 = getelementptr inbounds [4 x i8], ptr %20, i64 %47
  store i32 %46, ptr %48, align 4
  %49 = sext i32 %.lcssa4 to i64
  %50 = getelementptr inbounds [4 x i8], ptr %21, i64 %49
  store i32 %43, ptr %50, align 4
  %51 = add nsw i32 %.lcssa1, 1
  %52 = add nsw i32 %.lcssa4, -1
  br label %53

53:                                               ; preds = %40, %39
  %54 = phi i32 [ %43, %40 ], [ %23, %39 ]
  %.lcssa49 = phi i32 [ %52, %40 ], [ %.lcssa4, %39 ]
  %.lcssa17 = phi i32 [ %51, %40 ], [ %.lcssa1, %39 ]
  br label %55

55:                                               ; preds = %53
  %.not1 = icmp sgt i32 %.lcssa17, %.lcssa49
  br i1 %.not1, label %56, label %22, !llvm.loop !11

56:                                               ; preds = %55
  %.lcssa11 = phi i32 [ %54, %55 ]
  %.lcssa49.lcssa = phi i32 [ %.lcssa49, %55 ]
  %.lcssa17.lcssa = phi i32 [ %.lcssa17, %55 ]
  %.lcssa3 = phi i32 [ %.lcssa49, %55 ]
  store i32 %.lcssa17.lcssa, ptr %7, align 4
  store i32 %.lcssa49.lcssa, ptr %8, align 4
  store i32 %.lcssa11, ptr %10, align 4
  %57 = load i32, ptr %5, align 4
  %58 = icmp slt i32 %57, %.lcssa3
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load ptr, ptr %4, align 8
  call void @Quicksort(ptr noundef %60, i32 noundef %57, i32 noundef %.lcssa3)
  br label %61

61:                                               ; preds = %59, %56
  %62 = load i32, ptr %7, align 4
  %63 = load i32, ptr %6, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load ptr, ptr %4, align 8
  call void @Quicksort(ptr noundef %66, i32 noundef %62, i32 noundef %63)
  br label %67

67:                                               ; preds = %65, %61
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

2:                                                ; preds = %0, %3
  %storemerge1 = phi i32 [ 0, %0 ], [ %4, %3 ]
  call void @Quick(i32 noundef %storemerge1)
  br label %3

3:                                                ; preds = %2
  %4 = add nsw i32 %storemerge1, 1
  %5 = icmp slt i32 %4, 100
  br i1 %5, label %2, label %6, !llvm.loop !12

6:                                                ; preds = %3
  %storemerge.lcssa = phi i32 [ %4, %3 ]
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
