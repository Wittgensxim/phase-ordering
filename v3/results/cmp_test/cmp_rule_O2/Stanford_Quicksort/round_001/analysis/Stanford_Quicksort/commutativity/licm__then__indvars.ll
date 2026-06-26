; ModuleID = 'results\cmp_test\cmp_rule_O2\Stanford_Quicksort\round_000\output.ll'
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
  ret i32 %4
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
  %.promoted1 = load i32, ptr %2, align 1
  %3 = sext i32 %.promoted to i64
  %smax = call i32 @llvm.smax.i32(i32 %.promoted, i32 5001)
  %wide.trip.count = sext i32 %smax to i64
  br label %4

4:                                                ; preds = %24, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %24 ], [ %3, %0 ]
  %5 = phi i32 [ %7, %24 ], [ %.promoted1, %0 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %6, label %25

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
  br i1 %16, label %17, label %18

17:                                               ; preds = %6
  store i32 %14, ptr @biggest, align 4
  br label %23

18:                                               ; preds = %6
  %19 = load i32, ptr @littlest, align 4
  %20 = icmp slt i32 %14, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 %14, ptr @littlest, align 4
  br label %22

22:                                               ; preds = %21, %18
  br label %23

23:                                               ; preds = %22, %17
  br label %24

24:                                               ; preds = %23
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %4, !llvm.loop !7

25:                                               ; preds = %4
  %.lcssa2 = phi i32 [ %5, %4 ]
  %.lcssa.wide = phi i64 [ %indvars.iv, %4 ]
  %26 = trunc nsw i64 %.lcssa.wide to i32
  store i32 %26, ptr %1, align 4
  store i32 %.lcssa2, ptr %2, align 1
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
  %.promoted6 = load i32, ptr %7, align 4
  %.promoted = load i32, ptr %8, align 4
  %.promoted11 = load i32, ptr %10, align 4
  br label %27

27:                                               ; preds = %62, %3
  %28 = phi i32 [ %61, %62 ], [ %.promoted11, %3 ]
  %.lcssa59 = phi i32 [ %.lcssa510, %62 ], [ %.promoted, %3 ]
  %.lcssa37 = phi i32 [ %.lcssa38, %62 ], [ %.promoted6, %3 ]
  %29 = sext i32 %.lcssa37 to i64
  br label %30

30:                                               ; preds = %34, %27
  %indvars.iv = phi i64 [ %indvars.iv.next, %34 ], [ %29, %27 ]
  %31 = getelementptr inbounds i32, ptr %21, i64 %indvars.iv
  %32 = load i32, ptr %31, align 4
  %33 = icmp slt i32 %32, %22
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %30, !llvm.loop !9

35:                                               ; preds = %30
  %.lcssa3.wide = phi i64 [ %indvars.iv, %30 ]
  br label %36

36:                                               ; preds = %42, %35
  %37 = phi i32 [ %43, %42 ], [ %.lcssa59, %35 ]
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, ptr %24, i64 %38
  %40 = load i32, ptr %39, align 4
  %41 = icmp slt i32 %23, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = sub nsw i32 %37, 1
  br label %36, !llvm.loop !10

44:                                               ; preds = %36
  %.lcssa5 = phi i32 [ %37, %36 ]
  %.lcssa1 = phi ptr [ %24, %36 ]
  %.lcssa = phi i32 [ %37, %36 ]
  %45 = trunc nsw i64 %.lcssa3.wide to i32
  %46 = icmp sle i32 %45, %.lcssa
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  %48 = sext i32 %45 to i64
  %49 = getelementptr inbounds i32, ptr %.lcssa1, i64 %48
  %50 = load i32, ptr %49, align 4
  %51 = sext i32 %.lcssa5 to i64
  %52 = getelementptr inbounds i32, ptr %25, i64 %51
  %53 = load i32, ptr %52, align 4
  %54 = sext i32 %45 to i64
  %55 = getelementptr inbounds i32, ptr %25, i64 %54
  store i32 %53, ptr %55, align 4
  %56 = sext i32 %.lcssa5 to i64
  %57 = getelementptr inbounds i32, ptr %26, i64 %56
  store i32 %50, ptr %57, align 4
  %58 = add nsw i32 %45, 1
  %59 = sub nsw i32 %.lcssa5, 1
  br label %60

60:                                               ; preds = %47, %44
  %61 = phi i32 [ %50, %47 ], [ %28, %44 ]
  %.lcssa510 = phi i32 [ %59, %47 ], [ %.lcssa5, %44 ]
  %.lcssa38 = phi i32 [ %58, %47 ], [ %45, %44 ]
  br label %62

62:                                               ; preds = %60
  %63 = icmp sle i32 %.lcssa38, %.lcssa510
  br i1 %63, label %27, label %64, !llvm.loop !11

64:                                               ; preds = %62
  %.lcssa12 = phi i32 [ %61, %62 ]
  %.lcssa510.lcssa = phi i32 [ %.lcssa510, %62 ]
  %.lcssa38.lcssa = phi i32 [ %.lcssa38, %62 ]
  %.lcssa2 = phi i32 [ %.lcssa510, %62 ]
  store i32 %.lcssa38.lcssa, ptr %7, align 4
  store i32 %.lcssa510.lcssa, ptr %8, align 4
  store i32 %.lcssa12, ptr %10, align 4
  %65 = load i32, ptr %5, align 4
  %66 = icmp slt i32 %65, %.lcssa2
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load ptr, ptr %4, align 8
  call void @Quicksort(ptr noundef %68, i32 noundef %65, i32 noundef %.lcssa2)
  br label %69

69:                                               ; preds = %67, %64
  %70 = load i32, ptr %7, align 4
  %71 = load i32, ptr %6, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load ptr, ptr %4, align 8
  call void @Quicksort(ptr noundef %74, i32 noundef %70, i32 noundef %71)
  br label %75

75:                                               ; preds = %73, %69
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
