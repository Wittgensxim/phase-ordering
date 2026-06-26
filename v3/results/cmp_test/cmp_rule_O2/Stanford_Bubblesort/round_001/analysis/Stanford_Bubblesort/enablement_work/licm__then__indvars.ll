; ModuleID = 'results\cmp_test\cmp_rule_O2\Stanford_Bubblesort\round_000\output.ll'
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
  ret i32 %4
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
  %.promoted1 = load i32, ptr %2, align 1
  %3 = sext i32 %.promoted to i64
  %smax = call i32 @llvm.smax.i32(i32 %.promoted, i32 501)
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
define dso_local void @Bubble(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @bInitarr()
  store i32 500, ptr @top, align 4
  %top.promoted = load i32, ptr @top, align 4
  %.promoted4 = load i32, ptr %3, align 4
  %.promoted = load i32, ptr %4, align 4
  %5 = zext i32 %top.promoted to i64
  br label %6

6:                                                ; preds = %26, %1
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %26 ], [ %5, %1 ]
  %.lcssa36 = phi i32 [ %.lcssa3, %26 ], [ %.promoted, %1 ]
  %.lcssa15 = phi i32 [ %27, %26 ], [ %.promoted4, %1 ]
  %indvars14 = trunc i64 %indvars.iv10 to i32
  %7 = icmp sgt i32 %indvars14, 1
  br i1 %7, label %8, label %28

8:                                                ; preds = %6
  br label %9

9:                                                ; preds = %24, %8
  %indvars.iv = phi i64 [ %indvars.iv.next, %24 ], [ 1, %8 ]
  %10 = phi i32 [ %25, %24 ], [ %.lcssa36, %8 ]
  %exitcond = icmp ne i64 %indvars.iv, %indvars.iv10
  br i1 %exitcond, label %11, label %26

11:                                               ; preds = %9
  %12 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %indvars.iv
  %13 = load i32, ptr %12, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %14 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %indvars.iv.next
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %13, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = add nuw nsw i64 %indvars.iv, 1
  %19 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %indvars.iv
  store i32 %20, ptr %21, align 4
  %22 = add nuw nsw i64 %indvars.iv, 1
  %23 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %22
  store i32 %13, ptr %23, align 4
  br label %24

24:                                               ; preds = %17, %11
  %25 = phi i32 [ %13, %17 ], [ %10, %11 ]
  br label %9, !llvm.loop !9

26:                                               ; preds = %9
  %.lcssa3 = phi i32 [ %10, %9 ]
  %.lcssa1.wide = phi i64 [ %indvars.iv, %9 ]
  %27 = trunc nuw nsw i64 %.lcssa1.wide to i32
  %indvars.iv.next11 = add nsw i64 %indvars.iv10, -1
  %indvars13 = trunc i64 %indvars.iv.next11 to i32
  store i32 %indvars13, ptr @top, align 4
  br label %6, !llvm.loop !10

28:                                               ; preds = %6
  %.lcssa36.lcssa = phi i32 [ %.lcssa36, %6 ]
  %.lcssa15.lcssa = phi i32 [ %.lcssa15, %6 ]
  store i32 %.lcssa15.lcssa, ptr %3, align 4
  store i32 %.lcssa36.lcssa, ptr %4, align 4
  %29 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4
  %30 = load i32, ptr @littlest, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 2000), align 16
  %34 = load i32, ptr @biggest, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32, %28
  %37 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %38

38:                                               ; preds = %36, %32
  %39 = load i32, ptr %2, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4
  %44 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %43)
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
