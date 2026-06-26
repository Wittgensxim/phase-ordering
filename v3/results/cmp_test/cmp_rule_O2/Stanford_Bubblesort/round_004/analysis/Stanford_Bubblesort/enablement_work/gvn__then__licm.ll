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

2:                                                ; preds = %18, %0
  %3 = phi i32 [ 1, %0 ], [ %19, %18 ]
  %4 = icmp slt i32 %3, 501
  br i1 %4, label %5, label %20

5:                                                ; preds = %2
  %6 = call i32 @Rand()
  %.fr = freeze i32 %6
  %7 = srem i32 %.fr, 100000
  %8 = add nsw i32 %7, -50000
  %9 = sext i32 %3 to i64
  %10 = getelementptr inbounds [4 x i8], ptr @sortlist, i64 %9
  store i32 %8, ptr %10, align 4
  %11 = load i32, ptr @biggest, align 4
  %12 = icmp sgt i32 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  store i32 %8, ptr @biggest, align 4
  br label %18

14:                                               ; preds = %5
  %15 = load i32, ptr @littlest, align 4
  %16 = icmp slt i32 %8, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 %8, ptr @littlest, align 4
  br label %18

18:                                               ; preds = %17, %14, %13
  %19 = add nsw i32 %3, 1
  br label %2, !llvm.loop !7

20:                                               ; preds = %2
  %.lcssa = phi i32 [ %3, %2 ]
  store i32 %.lcssa, ptr %1, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Bubble(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @bInitarr()
  %.promoted3 = load i32, ptr %4, align 1
  br label %5

5:                                                ; preds = %23, %1
  %.lcssa5 = phi i32 [ poison, %1 ], [ %.lcssa, %23 ]
  %.lcssa14 = phi i32 [ %.promoted3, %1 ], [ %.lcssa1, %23 ]
  %6 = phi i32 [ 500, %1 ], [ %24, %23 ]
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %.preheader, label %25

.preheader:                                       ; preds = %5
  br label %8

8:                                                ; preds = %20, %.preheader
  %9 = phi i32 [ %21, %20 ], [ %.lcssa14, %.preheader ]
  %10 = phi i32 [ %22, %20 ], [ 1, %.preheader ]
  %11 = icmp slt i32 %10, %6
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = sext i32 %10 to i64
  %14 = getelementptr [4 x i8], ptr @sortlist, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %14, i64 4
  %17 = load i32, ptr %16, align 4
  %18 = icmp sgt i32 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 %17, ptr %14, align 4
  store i32 %15, ptr %16, align 4
  br label %20

20:                                               ; preds = %19, %12
  %21 = phi i32 [ %15, %19 ], [ %9, %12 ]
  %22 = add nsw i32 %10, 1
  br label %8, !llvm.loop !9

23:                                               ; preds = %8
  %.lcssa1 = phi i32 [ %9, %8 ]
  %.lcssa = phi i32 [ %10, %8 ]
  %24 = add nsw i32 %6, -1
  br label %5, !llvm.loop !10

25:                                               ; preds = %5
  %.lcssa5.lcssa = phi i32 [ %.lcssa5, %5 ]
  %.lcssa14.lcssa = phi i32 [ %.lcssa14, %5 ]
  %.lcssa2 = phi i32 [ %6, %5 ]
  store i32 %.lcssa2, ptr @top, align 4
  store i32 %.lcssa14.lcssa, ptr %4, align 1
  store i32 %.lcssa5.lcssa, ptr %3, align 4
  %26 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4
  %27 = load i32, ptr @littlest, align 4
  %.not = icmp eq i32 %26, %27
  br i1 %.not, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 2000), align 16
  %30 = load i32, ptr @biggest, align 4
  %.not1 = icmp eq i32 %29, %30
  br i1 %.not1, label %32, label %31

31:                                               ; preds = %28, %25
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %32

32:                                               ; preds = %31, %28
  %33 = sext i32 %0 to i64
  %34 = getelementptr [4 x i8], ptr @sortlist, i64 %33
  %35 = getelementptr i8, ptr %34, i64 4
  %36 = load i32, ptr %35, align 4
  %37 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %36) #3
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %5, %0
  %3 = phi i32 [ 0, %0 ], [ %6, %5 ]
  %4 = icmp slt i32 %3, 100
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  call void @Bubble(i32 noundef %3)
  %6 = add nsw i32 %3, 1
  br label %2, !llvm.loop !11

7:                                                ; preds = %2
  %.lcssa = phi i32 [ %3, %2 ]
  store i32 %.lcssa, ptr %1, align 4
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
