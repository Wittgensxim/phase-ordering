; ModuleID = 'results\cmp_test\cmp_oracle_O2\Stanford_Quicksort\Stanford_Quicksort.ll'
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
  %5 = load i32, ptr @seed, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Initarr() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void @Initrand()
  store i32 0, ptr @biggest, align 4
  store i32 0, ptr @littlest, align 4
  store i32 1, ptr %1, align 4
  %.promoted = load i32, ptr %1, align 4
  %.promoted1 = load i32, ptr %2, align 4
  %3 = sext i32 %.promoted to i64
  %smax = call i32 @llvm.smax.i32(i32 %.promoted, i32 5001)
  %wide.trip.count = sext i32 %smax to i64
  br label %4

4:                                                ; preds = %30, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %30 ], [ %3, %0 ]
  %5 = phi i32 [ %7, %30 ], [ %.promoted1, %0 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %6, label %31

6:                                                ; preds = %4
  %7 = call i32 @Rand()
  %8 = sdiv i32 %7, 100000
  %9 = mul nsw i32 %8, 100000
  %10 = sub nsw i32 %7, %9
  %11 = sub nsw i32 %10, 50000
  %12 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %indvars.iv
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %indvars.iv
  %14 = load i32, ptr %13, align 4
  %15 = load i32, ptr @biggest, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %6
  %18 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %indvars.iv
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr @biggest, align 4
  br label %29

20:                                               ; preds = %6
  %21 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %indvars.iv
  %22 = load i32, ptr %21, align 4
  %23 = load i32, ptr @littlest, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %indvars.iv
  %27 = load i32, ptr %26, align 4
  store i32 %27, ptr @littlest, align 4
  br label %28

28:                                               ; preds = %25, %20
  br label %29

29:                                               ; preds = %28, %17
  br label %30

30:                                               ; preds = %29
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %4, !llvm.loop !7

31:                                               ; preds = %4
  %.lcssa2 = phi i32 [ %5, %4 ]
  %.lcssa.wide = phi i64 [ %indvars.iv, %4 ]
  %32 = trunc nsw i64 %.lcssa.wide to i32
  store i32 %32, ptr %1, align 4
  store i32 %.lcssa2, ptr %2, align 4
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
  %11 = load i32, ptr %5, align 4
  store i32 %11, ptr %7, align 4
  %12 = load i32, ptr %6, align 4
  store i32 %12, ptr %8, align 4
  %13 = load ptr, ptr %4, align 8
  %14 = load i32, ptr %5, align 4
  %15 = load i32, ptr %6, align 4
  %16 = add nsw i32 %14, %15
  %17 = sdiv i32 %16, 2
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, ptr %13, i64 %18
  %20 = load i32, ptr %19, align 4
  store i32 %20, ptr %9, align 4
  %21 = load ptr, ptr %4, align 8
  %22 = load i32, ptr %9, align 4
  %23 = load i32, ptr %9, align 4
  %24 = load ptr, ptr %4, align 8
  %25 = load ptr, ptr %4, align 8
  %26 = load ptr, ptr %4, align 8
  %27 = load ptr, ptr %4, align 8
  %28 = load ptr, ptr %4, align 8
  %.promoted3 = load i32, ptr %7, align 4
  %.promoted = load i32, ptr %8, align 4
  %.promoted8 = load i32, ptr %10, align 4
  br label %29

29:                                               ; preds = %64, %3
  %30 = phi i32 [ %63, %64 ], [ %.promoted8, %3 ]
  %.lcssa26 = phi i32 [ %.lcssa27, %64 ], [ %.promoted, %3 ]
  %.lcssa4 = phi i32 [ %.lcssa5, %64 ], [ %.promoted3, %3 ]
  %31 = sext i32 %.lcssa4 to i64
  br label %32

32:                                               ; preds = %36, %29
  %indvars.iv = phi i64 [ %indvars.iv.next, %36 ], [ %31, %29 ]
  %33 = getelementptr inbounds i32, ptr %21, i64 %indvars.iv
  %34 = load i32, ptr %33, align 4
  %35 = icmp slt i32 %34, %22
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %32, !llvm.loop !9

37:                                               ; preds = %32
  %.lcssa.wide = phi i64 [ %indvars.iv, %32 ]
  br label %38

38:                                               ; preds = %44, %37
  %39 = phi i32 [ %45, %44 ], [ %.lcssa26, %37 ]
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, ptr %24, i64 %40
  %42 = load i32, ptr %41, align 4
  %43 = icmp slt i32 %23, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = sub nsw i32 %39, 1
  br label %38, !llvm.loop !10

46:                                               ; preds = %38
  %.lcssa2 = phi i32 [ %39, %38 ]
  %47 = trunc nsw i64 %.lcssa.wide to i32
  %48 = icmp sle i32 %47, %.lcssa2
  br i1 %48, label %49, label %62

49:                                               ; preds = %46
  %50 = sext i32 %47 to i64
  %51 = getelementptr inbounds i32, ptr %25, i64 %50
  %52 = load i32, ptr %51, align 4
  %53 = sext i32 %.lcssa2 to i64
  %54 = getelementptr inbounds i32, ptr %26, i64 %53
  %55 = load i32, ptr %54, align 4
  %56 = sext i32 %47 to i64
  %57 = getelementptr inbounds i32, ptr %27, i64 %56
  store i32 %55, ptr %57, align 4
  %58 = sext i32 %.lcssa2 to i64
  %59 = getelementptr inbounds i32, ptr %28, i64 %58
  store i32 %52, ptr %59, align 4
  %60 = add nsw i32 %47, 1
  %61 = sub nsw i32 %.lcssa2, 1
  br label %62

62:                                               ; preds = %49, %46
  %63 = phi i32 [ %52, %49 ], [ %30, %46 ]
  %.lcssa27 = phi i32 [ %61, %49 ], [ %.lcssa2, %46 ]
  %.lcssa5 = phi i32 [ %60, %49 ], [ %47, %46 ]
  br label %64

64:                                               ; preds = %62
  %65 = icmp sle i32 %.lcssa5, %.lcssa27
  br i1 %65, label %29, label %66, !llvm.loop !11

66:                                               ; preds = %64
  %.lcssa9 = phi i32 [ %63, %64 ]
  %.lcssa27.lcssa = phi i32 [ %.lcssa27, %64 ]
  %.lcssa5.lcssa = phi i32 [ %.lcssa5, %64 ]
  store i32 %.lcssa5.lcssa, ptr %7, align 4
  store i32 %.lcssa27.lcssa, ptr %8, align 4
  store i32 %.lcssa9, ptr %10, align 4
  %67 = load i32, ptr %5, align 4
  %68 = load i32, ptr %8, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load ptr, ptr %4, align 8
  %72 = load i32, ptr %5, align 4
  %73 = load i32, ptr %8, align 4
  call void @Quicksort(ptr noundef %71, i32 noundef %72, i32 noundef %73)
  br label %74

74:                                               ; preds = %70, %66
  %75 = load i32, ptr %7, align 4
  %76 = load i32, ptr %6, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load ptr, ptr %4, align 8
  %80 = load i32, ptr %7, align 4
  %81 = load i32, ptr %6, align 4
  call void @Quicksort(ptr noundef %79, i32 noundef %80, i32 noundef %81)
  br label %82

82:                                               ; preds = %78, %74
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Quick(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @Initarr()
  call void @Quicksort(ptr noundef @sortlist, i32 noundef 1, i32 noundef 5000)
  %3 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4
  %4 = load i32, ptr @littlest, align 4
  %5 = icmp ne i32 %3, %4
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 20000), align 16
  %8 = load i32, ptr @biggest, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %6, %1
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %12

12:                                               ; preds = %10, %6
  %13 = load i32, ptr %2, align 4
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %17)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  %.promoted = load i32, ptr %2, align 4
  %smax = call i32 @llvm.smax.i32(i32 %.promoted, i32 100)
  br label %3

3:                                                ; preds = %6, %0
  %4 = phi i32 [ %7, %6 ], [ %.promoted, %0 ]
  %exitcond = icmp ne i32 %4, %smax
  br i1 %exitcond, label %5, label %8

5:                                                ; preds = %3
  call void @Quick(i32 noundef %4)
  br label %6

6:                                                ; preds = %5
  %7 = add i32 %4, 1
  br label %3, !llvm.loop !12

8:                                                ; preds = %3
  %.lcssa = phi i32 [ %4, %3 ]
  store i32 %.lcssa, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
