; ModuleID = 'results\cmp_test\cmp_random_O2\Stanford_Bubblesort\round_000\output.ll'
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
  store i32 1, ptr %1, align 4
  br i1 true, label %.lr.ph, label %24

.lr.ph:                                           ; preds = %0
  %.promoted = load i32, ptr %1, align 4
  br label %2

2:                                                ; preds = %21, %.lr.ph
  %3 = phi i32 [ %22, %21 ], [ %.promoted, %.lr.ph ]
  %4 = call i32 @Rand()
  %.fr = freeze i32 %4
  %5 = srem i32 %.fr, 100000
  %6 = add nsw i32 %5, -50000
  %7 = sext i32 %3 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @sortlist, i64 %7
  store i32 %6, ptr %8, align 4
  %9 = sext i32 %3 to i64
  %10 = getelementptr inbounds [4 x i8], ptr @sortlist, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = load i32, ptr @biggest, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 %11, ptr @biggest, align 4
  br label %20

15:                                               ; preds = %2
  %16 = load i32, ptr @littlest, align 4
  %17 = icmp slt i32 %11, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 %11, ptr @littlest, align 4
  br label %19

19:                                               ; preds = %18, %15
  br label %20

20:                                               ; preds = %19, %14
  br label %21

21:                                               ; preds = %20
  %22 = add nsw i32 %3, 1
  %23 = icmp slt i32 %3, 500
  br i1 %23, label %2, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %21
  store i32 %22, ptr %1, align 4
  br label %24

24:                                               ; preds = %._crit_edge, %0
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Bubble(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @bInitarr()
  store i32 500, ptr @top, align 4
  br i1 true, label %.lr.ph2, label %35

.lr.ph2:                                          ; preds = %1
  %top.promoted = load i32, ptr @top, align 4
  %.promoted = load i32, ptr %3, align 4
  br label %4

4:                                                ; preds = %32, %.lr.ph2
  %.lcssa27 = phi i32 [ %.lcssa26, %32 ], [ %.promoted, %.lr.ph2 ]
  %5 = phi i32 [ %33, %32 ], [ %top.promoted, %.lr.ph2 ]
  %6 = icmp sgt i32 %5, 1
  br i1 %6, label %.lr.ph, label %32

.lr.ph:                                           ; preds = %4
  br label %7

7:                                                ; preds = %28, %.lr.ph
  %8 = phi i32 [ %29, %28 ], [ %.lcssa27, %.lr.ph ]
  %9 = phi i32 [ %30, %28 ], [ 1, %.lr.ph ]
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = zext nneg i32 %9 to i64
  %14 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %13
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 4
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %12, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %7
  %19 = zext nneg i32 %9 to i64
  %20 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %19
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 4
  %22 = load i32, ptr %21, align 4
  %23 = zext nneg i32 %9 to i64
  %24 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %23
  store i32 %22, ptr %24, align 4
  %25 = zext nneg i32 %9 to i64
  %26 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %25
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 4
  store i32 %12, ptr %27, align 4
  br label %28

28:                                               ; preds = %18, %7
  %29 = phi i32 [ %12, %18 ], [ %8, %7 ]
  %30 = add nuw nsw i32 %9, 1
  %31 = icmp slt i32 %30, %5
  br i1 %31, label %7, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %28
  br label %32

32:                                               ; preds = %._crit_edge, %4
  %.lcssa26 = phi i32 [ %29, %._crit_edge ], [ %.lcssa27, %4 ]
  %33 = add nsw i32 %5, -1
  %34 = icmp sgt i32 %5, 2
  br i1 %34, label %4, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %32
  store i32 %33, ptr @top, align 4
  store i32 %.lcssa26, ptr %3, align 4
  br label %35

35:                                               ; preds = %._crit_edge3, %1
  %36 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4
  %37 = load i32, ptr @littlest, align 4
  %.not = icmp eq i32 %36, %37
  br i1 %.not, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 2000), align 16
  %40 = load i32, ptr @biggest, align 4
  %.not8 = icmp eq i32 %39, %40
  br i1 %.not8, label %42, label %41

41:                                               ; preds = %38, %35
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %42

42:                                               ; preds = %41, %38
  %43 = load i32, ptr %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr [4 x i8], ptr @sortlist, i64 %44
  %46 = getelementptr i8, ptr %45, i64 4
  %47 = load i32, ptr %46, align 4
  %48 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %47) #3
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br i1 true, label %.lr.ph, label %7

.lr.ph:                                           ; preds = %0
  %.promoted = load i32, ptr %1, align 4
  br label %2

2:                                                ; preds = %4, %.lr.ph
  %3 = phi i32 [ %5, %4 ], [ %.promoted, %.lr.ph ]
  call void @Bubble(i32 noundef %3)
  br label %4

4:                                                ; preds = %2
  %5 = add nsw i32 %3, 1
  %6 = icmp slt i32 %3, 99
  br i1 %6, label %2, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %4
  store i32 %5, ptr %1, align 4
  br label %7

7:                                                ; preds = %._crit_edge, %0
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
