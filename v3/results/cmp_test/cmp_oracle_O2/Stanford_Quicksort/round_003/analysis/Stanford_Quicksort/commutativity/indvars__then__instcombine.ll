; ModuleID = 'results\cmp_test\cmp_oracle_O2\Stanford_Quicksort\round_002\output.ll'
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

1:                                                ; preds = %14, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %14 ], [ 1, %0 ]
  %2 = call i32 @Rand()
  %.fr = freeze i32 %2
  %3 = srem i32 %.fr, 100000
  %4 = add nsw i32 %3, -50000
  %5 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %indvars.iv
  store i32 %4, ptr %5, align 4
  %6 = load i32, ptr @biggest, align 4
  %7 = icmp sgt i32 %4, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 %4, ptr @biggest, align 4
  br label %14

9:                                                ; preds = %1
  %10 = load i32, ptr @littlest, align 4
  %11 = icmp slt i32 %4, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 %4, ptr @littlest, align 4
  br label %13

13:                                               ; preds = %12, %9
  br label %14

14:                                               ; preds = %13, %8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5001
  br i1 %exitcond.not, label %15, label %1, !llvm.loop !7

15:                                               ; preds = %14
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

9:                                                ; preds = %26, %3
  %.01 = phi i32 [ %1, %3 ], [ %.23, %26 ]
  %.0 = phi i32 [ %2, %3 ], [ %.2, %26 ]
  %10 = sext i32 %.01 to i64
  br label %11

11:                                               ; preds = %11, %9
  %indvars.iv = phi i64 [ %indvars.iv.next, %11 ], [ %10, %9 ]
  %12 = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv
  %13 = load i32, ptr %12, align 4
  %14 = icmp slt i32 %13, %8
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %14, label %11, label %15, !llvm.loop !9

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %16, %15
  %.1 = phi i32 [ %.0, %15 ], [ %21, %16 ]
  %17 = sext i32 %.1 to i64
  %18 = getelementptr inbounds [4 x i8], ptr %0, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp slt i32 %8, %19
  %21 = add nsw i32 %.1, -1
  br i1 %20, label %16, label %22, !llvm.loop !10

22:                                               ; preds = %16
  %23 = trunc nsw i64 %indvars.iv to i32
  %.not = icmp slt i32 %.1, %23
  br i1 %.not, label %26, label %24

24:                                               ; preds = %22
  %25 = trunc nsw i64 %indvars.iv.next to i32
  store i32 %19, ptr %12, align 4
  store i32 %13, ptr %18, align 4
  br label %26

26:                                               ; preds = %24, %22
  %.23 = phi i32 [ %25, %24 ], [ %23, %22 ]
  %.2 = phi i32 [ %21, %24 ], [ %.1, %22 ]
  %.not7 = icmp sgt i32 %.23, %.2
  br i1 %.not7, label %27, label %9, !llvm.loop !11

27:                                               ; preds = %26
  %28 = icmp slt i32 %1, %.2
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  call void @Quicksort(ptr noundef %0, i32 noundef %1, i32 noundef %.2)
  br label %30

30:                                               ; preds = %29, %27
  %31 = icmp slt i32 %.23, %2
  br i1 %31, label %32, label %33

32:                                               ; preds = %30
  call void @Quicksort(ptr noundef %0, i32 noundef %.23, i32 noundef %2)
  br label %33

33:                                               ; preds = %32, %30
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

1:                                                ; preds = %1, %0
  %.01 = phi i32 [ 0, %0 ], [ %2, %1 ]
  call void @Quick(i32 noundef %.01)
  %2 = add nuw nsw i32 %.01, 1
  %exitcond.not = icmp eq i32 %2, 100
  br i1 %exitcond.not, label %3, label %1, !llvm.loop !12

3:                                                ; preds = %1
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
