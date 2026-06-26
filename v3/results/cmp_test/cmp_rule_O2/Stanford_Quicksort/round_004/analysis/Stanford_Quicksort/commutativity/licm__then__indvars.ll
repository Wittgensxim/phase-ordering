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

2:                                                ; preds = %17, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %17 ], [ 1, %0 ]
  %exitcond = icmp ne i64 %indvars.iv, 5001
  br i1 %exitcond, label %3, label %18

3:                                                ; preds = %2
  %4 = call i32 @Rand()
  %.fr = freeze i32 %4
  %5 = srem i32 %.fr, 100000
  %6 = add nsw i32 %5, -50000
  %7 = getelementptr inbounds [4 x i8], ptr @sortlist, i64 %indvars.iv
  store i32 %6, ptr %7, align 4
  %8 = getelementptr inbounds [4 x i8], ptr @sortlist, i64 %indvars.iv
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr @biggest, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 %9, ptr @biggest, align 4
  br label %17

13:                                               ; preds = %3
  %14 = load i32, ptr @littlest, align 4
  %15 = icmp slt i32 %9, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 %9, ptr @littlest, align 4
  br label %17

17:                                               ; preds = %16, %13, %12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %2, !llvm.loop !7

18:                                               ; preds = %2
  %19 = trunc nuw nsw i64 5001 to i32
  store i32 %19, ptr %1, align 4
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

22:                                               ; preds = %53, %3
  %23 = phi i32 [ %54, %53 ], [ %.promoted10, %3 ]
  %.lcssa48 = phi i32 [ %.lcssa49, %53 ], [ %.promoted, %3 ]
  %.lcssa16 = phi i32 [ %.lcssa17, %53 ], [ %.promoted5, %3 ]
  %24 = sext i32 %.lcssa16 to i64
  br label %25

25:                                               ; preds = %30, %22
  %indvars.iv = phi i64 [ %indvars.iv.next, %30 ], [ %24, %22 ]
  %26 = getelementptr inbounds [4 x i8], ptr %16, i64 %indvars.iv
  %27 = load i32, ptr %26, align 4
  %28 = icmp slt i32 %27, %17
  br i1 %28, label %30, label %.preheader

.preheader:                                       ; preds = %25
  %.lcssa1.wide = phi i64 [ %indvars.iv, %25 ]
  %29 = sext i32 %.lcssa48 to i64
  br label %31

30:                                               ; preds = %25
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %25, !llvm.loop !9

31:                                               ; preds = %35, %.preheader
  %indvars.iv13 = phi i64 [ %indvars.iv.next14, %35 ], [ %29, %.preheader ]
  %32 = getelementptr inbounds [4 x i8], ptr %19, i64 %indvars.iv13
  %33 = load i32, ptr %32, align 4
  %34 = icmp slt i32 %18, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  %indvars.iv.next14 = add nsw i64 %indvars.iv13, -1
  br label %31, !llvm.loop !10

36:                                               ; preds = %31
  %.lcssa4.wide = phi i64 [ %indvars.iv13, %31 ]
  %.lcssa2 = phi ptr [ %19, %31 ]
  %.lcssa.wide = phi i64 [ %indvars.iv13, %31 ]
  %37 = trunc nsw i64 %.lcssa1.wide to i32
  %38 = trunc nsw i64 %.lcssa4.wide to i32
  %39 = trunc nsw i64 %.lcssa.wide to i32
  %.not = icmp sgt i32 %37, %39
  br i1 %.not, label %53, label %40

40:                                               ; preds = %36
  %41 = sext i32 %37 to i64
  %42 = getelementptr inbounds [4 x i8], ptr %.lcssa2, i64 %41
  %43 = load i32, ptr %42, align 4
  %44 = sext i32 %38 to i64
  %45 = getelementptr inbounds [4 x i8], ptr %20, i64 %44
  %46 = load i32, ptr %45, align 4
  %47 = sext i32 %37 to i64
  %48 = getelementptr inbounds [4 x i8], ptr %20, i64 %47
  store i32 %46, ptr %48, align 4
  %49 = sext i32 %38 to i64
  %50 = getelementptr inbounds [4 x i8], ptr %21, i64 %49
  store i32 %43, ptr %50, align 4
  %51 = add nsw i32 %37, 1
  %52 = add nsw i32 %38, -1
  br label %53

53:                                               ; preds = %40, %36
  %54 = phi i32 [ %43, %40 ], [ %23, %36 ]
  %.lcssa49 = phi i32 [ %52, %40 ], [ %38, %36 ]
  %.lcssa17 = phi i32 [ %51, %40 ], [ %37, %36 ]
  %.not1 = icmp sgt i32 %.lcssa17, %.lcssa49
  br i1 %.not1, label %55, label %22, !llvm.loop !11

55:                                               ; preds = %53
  %.lcssa11 = phi i32 [ %54, %53 ]
  %.lcssa49.lcssa = phi i32 [ %.lcssa49, %53 ]
  %.lcssa17.lcssa = phi i32 [ %.lcssa17, %53 ]
  %.lcssa3 = phi i32 [ %.lcssa49, %53 ]
  store i32 %.lcssa17.lcssa, ptr %7, align 4
  store i32 %.lcssa49.lcssa, ptr %8, align 4
  store i32 %.lcssa11, ptr %10, align 4
  %56 = load i32, ptr %5, align 4
  %57 = icmp slt i32 %56, %.lcssa3
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load ptr, ptr %4, align 8
  call void @Quicksort(ptr noundef %59, i32 noundef %56, i32 noundef %.lcssa3)
  br label %60

60:                                               ; preds = %58, %55
  %61 = load i32, ptr %7, align 4
  %62 = load i32, ptr %6, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load ptr, ptr %4, align 8
  call void @Quicksort(ptr noundef %65, i32 noundef %61, i32 noundef %62)
  br label %66

66:                                               ; preds = %64, %60
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

2:                                                ; preds = %3, %0
  %storemerge = phi i32 [ 0, %0 ], [ %4, %3 ]
  %exitcond = icmp ne i32 %storemerge, 100
  br i1 %exitcond, label %3, label %5

3:                                                ; preds = %2
  call void @Quick(i32 noundef %storemerge)
  %4 = add nuw nsw i32 %storemerge, 1
  br label %2, !llvm.loop !12

5:                                                ; preds = %2
  store i32 100, ptr %1, align 4
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
