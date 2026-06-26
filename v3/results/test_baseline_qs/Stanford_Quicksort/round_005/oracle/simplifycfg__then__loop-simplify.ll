; ModuleID = 'results\test_baseline_qs\Stanford_Quicksort\round_004\output.ll'
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
  %.01 = phi i32 [ 1, %0 ], [ %15, %14 ]
  %2 = call i32 @Rand()
  %.fr = freeze i32 %2
  %3 = srem i32 %.fr, 100000
  %4 = add nsw i32 %3, -50000
  %5 = zext nneg i32 %.01 to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %5
  store i32 %4, ptr %6, align 4
  %7 = load i32, ptr @biggest, align 4
  %8 = icmp sgt i32 %4, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 %4, ptr @biggest, align 4
  br label %14

10:                                               ; preds = %1
  %11 = load i32, ptr @littlest, align 4
  %12 = icmp slt i32 %4, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 %4, ptr @littlest, align 4
  br label %14

14:                                               ; preds = %13, %10, %9
  %15 = add nuw nsw i32 %.01, 1
  %16 = icmp samesign ult i32 %.01, 5000
  br i1 %16, label %1, label %17, !llvm.loop !7

17:                                               ; preds = %14
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

9:                                                ; preds = %23, %3
  %.037 = phi i32 [ %2, %3 ], [ %.239, %23 ]
  %.0 = phi i32 [ %1, %3 ], [ %.2, %23 ]
  br label %10

10:                                               ; preds = %10, %9
  %.1 = phi i32 [ %.0, %9 ], [ %15, %10 ]
  %11 = sext i32 %.1 to i64
  %12 = getelementptr inbounds [4 x i8], ptr %0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = icmp slt i32 %13, %8
  %15 = add nsw i32 %.1, 1
  br i1 %14, label %10, label %.preheader.preheader, !llvm.loop !9

.preheader.preheader:                             ; preds = %10
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.138 = phi i32 [ %20, %.preheader ], [ %.037, %.preheader.preheader ]
  %16 = sext i32 %.138 to i64
  %17 = getelementptr inbounds [4 x i8], ptr %0, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = icmp slt i32 %8, %18
  %20 = add nsw i32 %.138, -1
  br i1 %19, label %.preheader, label %21, !llvm.loop !10

21:                                               ; preds = %.preheader
  %.not = icmp sgt i32 %.1, %.138
  br i1 %.not, label %23, label %22

22:                                               ; preds = %21
  store i32 %18, ptr %12, align 4
  store i32 %13, ptr %17, align 4
  br label %23

23:                                               ; preds = %22, %21
  %.239 = phi i32 [ %20, %22 ], [ %.138, %21 ]
  %.2 = phi i32 [ %15, %22 ], [ %.1, %21 ]
  %.not6 = icmp sgt i32 %.2, %.239
  br i1 %.not6, label %24, label %9, !llvm.loop !11

24:                                               ; preds = %23
  %25 = icmp slt i32 %1, %.239
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  call void @Quicksort(ptr noundef %0, i32 noundef %1, i32 noundef %.239)
  br label %27

27:                                               ; preds = %26, %24
  %28 = icmp slt i32 %.2, %2
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  call void @Quicksort(ptr noundef %0, i32 noundef %.2, i32 noundef %2)
  br label %30

30:                                               ; preds = %29, %27
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
  %3 = icmp samesign ult i32 %.01, 99
  br i1 %3, label %1, label %4, !llvm.loop !12

4:                                                ; preds = %1
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
