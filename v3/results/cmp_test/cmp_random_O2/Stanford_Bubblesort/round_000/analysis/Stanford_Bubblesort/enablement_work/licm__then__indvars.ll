; ModuleID = 'results\cmp_test\cmp_random_O2\Stanford_Bubblesort\Stanford_Bubblesort.ll'
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
define dso_local void @bInitarr() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void @Initrand()
  store i32 0, ptr @biggest, align 4
  store i32 0, ptr @littlest, align 4
  store i32 1, ptr %1, align 4
  %.promoted = load i32, ptr %1, align 4
  %.promoted1 = load i32, ptr %2, align 4
  %3 = sext i32 %.promoted to i64
  %smax = call i32 @llvm.smax.i32(i32 %.promoted, i32 501)
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
define dso_local void @Bubble(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @bInitarr()
  store i32 500, ptr @top, align 4
  %top.promoted = load i32, ptr @top, align 4
  %.promoted3 = load i32, ptr %3, align 4
  %.promoted = load i32, ptr %4, align 4
  %5 = zext i32 %top.promoted to i64
  br label %6

6:                                                ; preds = %29, %1
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %29 ], [ %5, %1 ]
  %.lcssa25 = phi i32 [ %.lcssa2, %29 ], [ %.promoted, %1 ]
  %.lcssa4 = phi i32 [ %30, %29 ], [ %.promoted3, %1 ]
  %7 = trunc nuw i64 %indvars.iv7 to i32
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %32

9:                                                ; preds = %6
  br label %10

10:                                               ; preds = %27, %9
  %indvars.iv = phi i64 [ %indvars.iv.next, %27 ], [ 1, %9 ]
  %11 = phi i32 [ %28, %27 ], [ %.lcssa25, %9 ]
  %exitcond = icmp ne i64 %indvars.iv, %indvars.iv7
  br i1 %exitcond, label %12, label %29

12:                                               ; preds = %10
  %13 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %indvars.iv
  %14 = load i32, ptr %13, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %15 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %indvars.iv.next
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %14, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %12
  %19 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %indvars.iv
  %20 = load i32, ptr %19, align 4
  %21 = add nuw nsw i64 %indvars.iv, 1
  %22 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %indvars.iv
  store i32 %23, ptr %24, align 4
  %25 = add nuw nsw i64 %indvars.iv, 1
  %26 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %25
  store i32 %20, ptr %26, align 4
  br label %27

27:                                               ; preds = %18, %12
  %28 = phi i32 [ %20, %18 ], [ %11, %12 ]
  br label %10, !llvm.loop !9

29:                                               ; preds = %10
  %.lcssa2 = phi i32 [ %11, %10 ]
  %.lcssa.wide = phi i64 [ %indvars.iv, %10 ]
  %30 = trunc nuw nsw i64 %.lcssa.wide to i32
  %indvars.iv.next8 = add nsw i64 %indvars.iv7, -1
  %31 = trunc nuw i64 %indvars.iv.next8 to i32
  store i32 %31, ptr @top, align 4
  br label %6, !llvm.loop !10

32:                                               ; preds = %6
  %.lcssa25.lcssa = phi i32 [ %.lcssa25, %6 ]
  %.lcssa4.lcssa = phi i32 [ %.lcssa4, %6 ]
  store i32 %.lcssa4.lcssa, ptr %3, align 4
  store i32 %.lcssa25.lcssa, ptr %4, align 4
  %33 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4
  %34 = load i32, ptr @littlest, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 2000), align 16
  %38 = load i32, ptr @biggest, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36, %32
  %41 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %42

42:                                               ; preds = %40, %36
  %43 = load i32, ptr %2, align 4
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4
  %48 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %47)
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
  call void @Bubble(i32 noundef %4)
  br label %6

6:                                                ; preds = %5
  %7 = add i32 %4, 1
  br label %3, !llvm.loop !11

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
