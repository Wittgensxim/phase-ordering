; ModuleID = 'results\cmp_test\cmp_random_O2\Stanford_Quicksort\round_000\output.ll'
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
define dso_local range(i32 0, 65536) i32 @Rand() #0 {
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

1:                                                ; preds = %21, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %21 ], [ 1, %0 ]
  %exitcond.not = icmp eq i64 %indvars.iv, 5001
  br i1 %exitcond.not, label %22, label %2

2:                                                ; preds = %1
  %3 = call i32 @Rand()
  %4 = add nsw i32 %3, -50000
  %5 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %indvars.iv
  store i32 %4, ptr %5, align 4
  %6 = load i32, ptr @biggest, align 4
  %7 = icmp sgt i32 %4, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %indvars.iv
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr @biggest, align 4
  br label %20

11:                                               ; preds = %2
  %12 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %indvars.iv
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr @littlest, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %indvars.iv
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr @littlest, align 4
  br label %19

19:                                               ; preds = %16, %11
  br label %20

20:                                               ; preds = %19, %8
  br label %21

21:                                               ; preds = %20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %1, !llvm.loop !7

22:                                               ; preds = %1
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

9:                                                ; preds = %40, %3
  %.037 = phi i32 [ %2, %3 ], [ %.239, %40 ]
  %.0 = phi i32 [ %1, %3 ], [ %.2, %40 ]
  %10 = sext i32 %.0 to i64
  br label %11

11:                                               ; preds = %15, %9
  %indvars.iv = phi i64 [ %indvars.iv.next, %15 ], [ %10, %9 ]
  %12 = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv
  %13 = load i32, ptr %12, align 4
  %14 = icmp slt i32 %13, %8
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %11, !llvm.loop !9

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %22, %16
  %.138 = phi i32 [ %.037, %16 ], [ %23, %22 ]
  %18 = sext i32 %.138 to i64
  %19 = getelementptr inbounds [4 x i8], ptr %0, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = icmp slt i32 %8, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = add nsw i32 %.138, -1
  br label %17, !llvm.loop !10

24:                                               ; preds = %17
  %25 = trunc nsw i64 %indvars.iv to i32
  %.not = icmp slt i32 %.138, %25
  br i1 %.not, label %39, label %26

26:                                               ; preds = %24
  %sext = shl i64 %indvars.iv, 32
  %27 = ashr exact i64 %sext, 30
  %28 = getelementptr inbounds i8, ptr %0, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = sext i32 %.138 to i64
  %31 = getelementptr inbounds [4 x i8], ptr %0, i64 %30
  %32 = load i32, ptr %31, align 4
  %sext1 = shl i64 %indvars.iv, 32
  %33 = ashr exact i64 %sext1, 30
  %34 = getelementptr inbounds i8, ptr %0, i64 %33
  store i32 %32, ptr %34, align 4
  %35 = sext i32 %.138 to i64
  %36 = getelementptr inbounds [4 x i8], ptr %0, i64 %35
  store i32 %29, ptr %36, align 4
  %37 = add nsw i32 %25, 1
  %38 = add nsw i32 %.138, -1
  br label %39

39:                                               ; preds = %26, %24
  %.239 = phi i32 [ %38, %26 ], [ %.138, %24 ]
  %.2 = phi i32 [ %37, %26 ], [ %25, %24 ]
  br label %40

40:                                               ; preds = %39
  %.not2 = icmp sgt i32 %.2, %.239
  br i1 %.not2, label %41, label %9, !llvm.loop !11

41:                                               ; preds = %40
  %42 = icmp slt i32 %1, %.239
  br i1 %42, label %43, label %44

43:                                               ; preds = %41
  call void @Quicksort(ptr noundef %0, i32 noundef %1, i32 noundef %.239)
  br label %44

44:                                               ; preds = %43, %41
  %45 = icmp slt i32 %.2, %2
  br i1 %45, label %46, label %47

46:                                               ; preds = %44
  call void @Quicksort(ptr noundef %0, i32 noundef %.2, i32 noundef %2)
  br label %47

47:                                               ; preds = %46, %44
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
  %.0 = phi i32 [ 0, %0 ], [ %4, %3 ]
  %exitcond.not = icmp eq i32 %.0, 100
  br i1 %exitcond.not, label %5, label %2

2:                                                ; preds = %1
  call void @Quick(i32 noundef %.0)
  br label %3

3:                                                ; preds = %2
  %4 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !12

5:                                                ; preds = %1
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
