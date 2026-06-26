; ModuleID = 'results\cmp_test\cmp_rule_O2\Stanford_Bubblesort\round_002\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Bubblesort.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.element = type { i32, i32 }
%struct.complex = type { float, float }

@seed = dso_local global i32 0, align 4
@biggest = dso_local global i32 0, align 4
@littlest = dso_local global i32 0, align 4
@sortlist = dso_local global [5001 x i32] zeroinitializer, align 16
@top = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Error3 in Bubble.\0A\00", align 1
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
@z = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@w = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@e = dso_local global [130 x %struct.complex] zeroinitializer, align 16
@zr = dso_local global float 0.000000e+00, align 4
@zi = dso_local global float 0.000000e+00, align 4
@str = private unnamed_addr constant [18 x i8] c"Error3 in Bubble.\00", align 1

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
define dso_local void @bInitarr() #0 {
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
  %22 = icmp slt i32 %21, 501
  br i1 %22, label %2, label %23, !llvm.loop !7

23:                                               ; preds = %20
  %storemerge.lcssa = phi i32 [ %21, %20 ]
  store i32 %storemerge.lcssa, ptr %1, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Bubble(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @bInitarr()
  %.promoted2 = load i32, ptr %4, align 4
  br label %5

5:                                                ; preds = %1, %30
  %storemerge7 = phi i32 [ 500, %1 ], [ %31, %30 ]
  %.lcssa136 = phi i32 [ %.promoted2, %1 ], [ %.lcssa1, %30 ]
  br label %6

6:                                                ; preds = %5, %26
  %storemerge25 = phi i32 [ 1, %5 ], [ %28, %26 ]
  %7 = phi i32 [ %.lcssa136, %5 ], [ %27, %26 ]
  %8 = sext i32 %storemerge25 to i64
  %9 = getelementptr inbounds [4 x i8], ptr @sortlist, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = sext i32 %storemerge25 to i64
  %12 = getelementptr [4 x i8], ptr @sortlist, i64 %11
  %13 = getelementptr i8, ptr %12, i64 4
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %10, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %6
  %17 = sext i32 %storemerge25 to i64
  %18 = getelementptr [4 x i8], ptr @sortlist, i64 %17
  %19 = getelementptr i8, ptr %18, i64 4
  %20 = load i32, ptr %19, align 4
  %21 = sext i32 %storemerge25 to i64
  %22 = getelementptr inbounds [4 x i8], ptr @sortlist, i64 %21
  store i32 %20, ptr %22, align 4
  %23 = sext i32 %storemerge25 to i64
  %24 = getelementptr [4 x i8], ptr @sortlist, i64 %23
  %25 = getelementptr i8, ptr %24, i64 4
  store i32 %10, ptr %25, align 4
  br label %26

26:                                               ; preds = %16, %6
  %27 = phi i32 [ %10, %16 ], [ %7, %6 ]
  %28 = add nsw i32 %storemerge25, 1
  %29 = icmp slt i32 %28, %storemerge7
  br i1 %29, label %6, label %30, !llvm.loop !9

30:                                               ; preds = %26
  %.lcssa1 = phi i32 [ %27, %26 ]
  %storemerge2.lcssa = phi i32 [ %28, %26 ]
  %.lcssa = phi i32 [ %storemerge7, %26 ]
  %31 = add nsw i32 %.lcssa, -1
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %5, label %33, !llvm.loop !10

33:                                               ; preds = %30
  %storemerge2.lcssa4.lcssa = phi i32 [ %storemerge2.lcssa, %30 ]
  %.lcssa13.lcssa = phi i32 [ %.lcssa1, %30 ]
  %storemerge.lcssa = phi i32 [ %31, %30 ]
  store i32 %storemerge.lcssa, ptr @top, align 4
  store i32 %.lcssa13.lcssa, ptr %4, align 4
  store i32 %storemerge2.lcssa4.lcssa, ptr %3, align 4
  %34 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4
  %35 = load i32, ptr @littlest, align 4
  %.not = icmp eq i32 %34, %35
  br i1 %.not, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 2000), align 16
  %38 = load i32, ptr @biggest, align 4
  %.not1 = icmp eq i32 %37, %38
  br i1 %.not1, label %40, label %39

39:                                               ; preds = %36, %33
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i32, ptr %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr [4 x i8], ptr @sortlist, i64 %42
  %44 = getelementptr i8, ptr %43, i64 4
  %45 = load i32, ptr %44, align 4
  %46 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %45) #3
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %0, %3
  %storemerge1 = phi i32 [ 0, %0 ], [ %4, %3 ]
  call void @Bubble(i32 noundef %storemerge1)
  br label %3

3:                                                ; preds = %2
  %4 = add nsw i32 %storemerge1, 1
  %5 = icmp slt i32 %4, 100
  br i1 %5, label %2, label %6, !llvm.loop !11

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
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Bubblesort.c", directory: "E:/Phase Ordering/v3")
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
