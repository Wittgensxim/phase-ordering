; ModuleID = 'results\cmp_test\cmp_rule_O2\Stanford_Bubblesort\round_003\output.ll'
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
define dso_local range(i32 0, 65536) i32 @Rand() #0 {
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

2:                                                ; preds = %21, %0
  %storemerge = phi i32 [ 1, %0 ], [ %23, %21 ]
  store i32 %storemerge, ptr %1, align 4
  %3 = icmp slt i32 %storemerge, 501
  br i1 %3, label %4, label %24

4:                                                ; preds = %2
  %5 = call i32 @Rand()
  %.fr = freeze i32 %5
  %6 = srem i32 %.fr, 100000
  %7 = add nsw i32 %6, -50000
  %8 = load i32, ptr %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [4 x i8], ptr @sortlist, i64 %9
  store i32 %7, ptr %10, align 4
  %11 = sext i32 %8 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @sortlist, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr @biggest, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 %13, ptr @biggest, align 4
  br label %21

17:                                               ; preds = %4
  %18 = load i32, ptr @littlest, align 4
  %19 = icmp slt i32 %13, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 %13, ptr @littlest, align 4
  br label %21

21:                                               ; preds = %20, %17, %16
  %22 = load i32, ptr %1, align 4
  %23 = add nsw i32 %22, 1
  br label %2, !llvm.loop !7

24:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Bubble(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @bInitarr()
  br label %5

5:                                                ; preds = %34, %1
  %storemerge = phi i32 [ 500, %1 ], [ %35, %34 ]
  store i32 %storemerge, ptr @top, align 4
  %6 = icmp sgt i32 %storemerge, 1
  br i1 %6, label %.preheader, label %36

.preheader:                                       ; preds = %5, %31
  %storemerge2 = phi i32 [ %33, %31 ], [ 1, %5 ]
  store i32 %storemerge2, ptr %3, align 4
  %7 = load i32, ptr @top, align 4
  %8 = icmp slt i32 %storemerge2, %7
  br i1 %8, label %9, label %34

9:                                                ; preds = %.preheader
  %10 = sext i32 %storemerge2 to i64
  %11 = getelementptr inbounds [4 x i8], ptr @sortlist, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = sext i32 %storemerge2 to i64
  %14 = getelementptr [4 x i8], ptr @sortlist, i64 %13
  %15 = getelementptr i8, ptr %14, i64 4
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %12, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %9
  store i32 %12, ptr %4, align 4
  %19 = load i32, ptr %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr [4 x i8], ptr @sortlist, i64 %20
  %22 = getelementptr i8, ptr %21, i64 4
  %23 = load i32, ptr %22, align 4
  %24 = sext i32 %19 to i64
  %25 = getelementptr inbounds [4 x i8], ptr @sortlist, i64 %24
  store i32 %23, ptr %25, align 4
  %26 = load i32, ptr %4, align 4
  %27 = load i32, ptr %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr [4 x i8], ptr @sortlist, i64 %28
  %30 = getelementptr i8, ptr %29, i64 4
  store i32 %26, ptr %30, align 4
  br label %31

31:                                               ; preds = %18, %9
  %32 = load i32, ptr %3, align 4
  %33 = add nsw i32 %32, 1
  br label %.preheader, !llvm.loop !9

34:                                               ; preds = %.preheader
  %.lcssa = phi i32 [ %7, %.preheader ]
  %35 = add nsw i32 %.lcssa, -1
  br label %5, !llvm.loop !10

36:                                               ; preds = %5
  %37 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4
  %38 = load i32, ptr @littlest, align 4
  %.not = icmp eq i32 %37, %38
  br i1 %.not, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 2000), align 16
  %41 = load i32, ptr @biggest, align 4
  %.not1 = icmp eq i32 %40, %41
  br i1 %.not1, label %43, label %42

42:                                               ; preds = %39, %36
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i32, ptr %2, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr [4 x i8], ptr @sortlist, i64 %45
  %47 = getelementptr i8, ptr %46, i64 4
  %48 = load i32, ptr %47, align 4
  %49 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %48) #3
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %4, %0
  %storemerge = phi i32 [ 0, %0 ], [ %6, %4 ]
  store i32 %storemerge, ptr %1, align 4
  %3 = icmp slt i32 %storemerge, 100
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  call void @Bubble(i32 noundef %storemerge)
  %5 = load i32, ptr %1, align 4
  %6 = add nsw i32 %5, 1
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
