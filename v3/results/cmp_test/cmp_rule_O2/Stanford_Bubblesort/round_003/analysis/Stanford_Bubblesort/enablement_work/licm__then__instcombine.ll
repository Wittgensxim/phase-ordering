; ModuleID = 'results\cmp_test\cmp_rule_O2\Stanford_Bubblesort\round_002\output.ll'
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
  call void @Initrand()
  store i32 0, ptr @biggest, align 4
  store i32 0, ptr @littlest, align 4
  br label %1

1:                                                ; preds = %21, %0
  %storemerge = phi i32 [ 1, %0 ], [ %22, %21 ]
  %2 = icmp samesign ult i32 %storemerge, 501
  br i1 %2, label %3, label %23

3:                                                ; preds = %1
  %4 = call i32 @Rand()
  %.fr = freeze i32 %4
  %5 = srem i32 %.fr, 100000
  %6 = add nsw i32 %5, -50000
  %7 = zext nneg i32 %storemerge to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %7
  store i32 %6, ptr %8, align 4
  %9 = zext nneg i32 %storemerge to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = load i32, ptr @biggest, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 %11, ptr @biggest, align 4
  br label %20

15:                                               ; preds = %3
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
  %22 = add nuw nsw i32 %storemerge, 1
  br label %1, !llvm.loop !7

23:                                               ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Bubble(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @bInitarr()
  %.promoted2 = load i32, ptr %3, align 4
  br label %4

4:                                                ; preds = %32, %1
  %.lcssa13 = phi i32 [ %.promoted2, %1 ], [ %8, %32 ]
  %storemerge = phi i32 [ 500, %1 ], [ %33, %32 ]
  %5 = icmp sgt i32 %storemerge, 1
  br i1 %5, label %6, label %34

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %29, %6
  %8 = phi i32 [ %.lcssa13, %6 ], [ %30, %29 ]
  %storemerge2 = phi i32 [ 1, %6 ], [ %31, %29 ]
  %9 = icmp slt i32 %storemerge2, %storemerge
  br i1 %9, label %10, label %32

10:                                               ; preds = %7
  %11 = zext nneg i32 %storemerge2 to i64
  %12 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = zext nneg i32 %storemerge2 to i64
  %15 = getelementptr [4 x i8], ptr @sortlist, i64 %14
  %16 = getelementptr i8, ptr %15, i64 4
  %17 = load i32, ptr %16, align 4
  %18 = icmp sgt i32 %13, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %10
  %20 = zext nneg i32 %storemerge2 to i64
  %21 = getelementptr [4 x i8], ptr @sortlist, i64 %20
  %22 = getelementptr i8, ptr %21, i64 4
  %23 = load i32, ptr %22, align 4
  %24 = zext nneg i32 %storemerge2 to i64
  %25 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %24
  store i32 %23, ptr %25, align 4
  %26 = zext nneg i32 %storemerge2 to i64
  %27 = getelementptr [4 x i8], ptr @sortlist, i64 %26
  %28 = getelementptr i8, ptr %27, i64 4
  store i32 %13, ptr %28, align 4
  br label %29

29:                                               ; preds = %19, %10
  %30 = phi i32 [ %13, %19 ], [ %8, %10 ]
  %31 = add nuw nsw i32 %storemerge2, 1
  br label %7, !llvm.loop !9

32:                                               ; preds = %7
  %33 = add nsw i32 %storemerge, -1
  br label %4, !llvm.loop !10

34:                                               ; preds = %4
  store i32 %storemerge, ptr @top, align 4
  store i32 %.lcssa13, ptr %3, align 4
  %35 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4
  %36 = load i32, ptr @littlest, align 4
  %.not = icmp eq i32 %35, %36
  br i1 %.not, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 2000), align 16
  %39 = load i32, ptr @biggest, align 4
  %.not1 = icmp eq i32 %38, %39
  br i1 %.not1, label %41, label %40

40:                                               ; preds = %37, %34
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i32, ptr %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr [4 x i8], ptr @sortlist, i64 %43
  %45 = getelementptr i8, ptr %44, i64 4
  %46 = load i32, ptr %45, align 4
  %47 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %46) #3
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %storemerge = phi i32 [ 0, %0 ], [ %5, %4 ]
  %2 = icmp samesign ult i32 %storemerge, 100
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  call void @Bubble(i32 noundef %storemerge)
  br label %4

4:                                                ; preds = %3
  %5 = add nuw nsw i32 %storemerge, 1
  br label %1, !llvm.loop !11

6:                                                ; preds = %1
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
