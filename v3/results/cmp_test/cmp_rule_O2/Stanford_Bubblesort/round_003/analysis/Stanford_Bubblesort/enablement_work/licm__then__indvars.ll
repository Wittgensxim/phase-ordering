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
  %1 = alloca i32, align 4
  call void @Initrand()
  store i32 0, ptr @biggest, align 4
  store i32 0, ptr @littlest, align 4
  br label %2

2:                                                ; preds = %19, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %19 ], [ 1, %0 ]
  %exitcond = icmp ne i64 %indvars.iv, 501
  br i1 %exitcond, label %3, label %20

3:                                                ; preds = %2
  %4 = call i32 @Rand()
  %.fr = freeze i32 %4
  %5 = srem i32 %.fr, 100000
  %6 = add nsw i32 %5, -50000
  %7 = getelementptr inbounds [4 x i8], ptr @sortlist, i64 %indvars.iv
  store i32 %6, ptr %7, align 4
  %8 = getelementptr inbounds [4 x i8], ptr @sortlist, i64 %indvars.iv
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr @biggest, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 %9, ptr @biggest, align 4
  br label %18

13:                                               ; preds = %3
  %14 = load i32, ptr @littlest, align 4
  %15 = icmp slt i32 %9, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 %9, ptr @littlest, align 4
  br label %17

17:                                               ; preds = %16, %13
  br label %18

18:                                               ; preds = %17, %12
  br label %19

19:                                               ; preds = %18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %2, !llvm.loop !7

20:                                               ; preds = %2
  %21 = trunc nuw nsw i64 501 to i32
  store i32 %21, ptr %1, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Bubble(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @bInitarr()
  %.promoted2 = load i32, ptr %4, align 4
  br label %5

5:                                                ; preds = %26, %1
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %26 ], [ 500, %1 ]
  %storemerge2.lcssa4 = phi i32 [ poison, %1 ], [ %27, %26 ]
  %.lcssa13 = phi i32 [ %.promoted2, %1 ], [ %.lcssa1, %26 ]
  %indvars12 = trunc i64 %indvars.iv8 to i32
  %6 = icmp samesign ugt i32 %indvars12, 1
  br i1 %6, label %7, label %28

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %24, %7
  %indvars.iv = phi i64 [ %indvars.iv.next, %24 ], [ 1, %7 ]
  %9 = phi i32 [ %.lcssa13, %7 ], [ %25, %24 ]
  %exitcond = icmp ne i64 %indvars.iv, %indvars.iv8
  br i1 %exitcond, label %10, label %26

10:                                               ; preds = %8
  %11 = getelementptr inbounds [4 x i8], ptr @sortlist, i64 %indvars.iv
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr [4 x i8], ptr @sortlist, i64 %indvars.iv
  %14 = getelementptr i8, ptr %13, i64 4
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %12, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %10
  %18 = getelementptr [4 x i8], ptr @sortlist, i64 %indvars.iv
  %19 = getelementptr i8, ptr %18, i64 4
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds [4 x i8], ptr @sortlist, i64 %indvars.iv
  store i32 %20, ptr %21, align 4
  %22 = getelementptr [4 x i8], ptr @sortlist, i64 %indvars.iv
  %23 = getelementptr i8, ptr %22, i64 4
  store i32 %12, ptr %23, align 4
  br label %24

24:                                               ; preds = %17, %10
  %25 = phi i32 [ %12, %17 ], [ %9, %10 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %8, !llvm.loop !9

26:                                               ; preds = %8
  %.lcssa1 = phi i32 [ %9, %8 ]
  %storemerge2.lcssa.wide = phi i64 [ %indvars.iv, %8 ]
  %27 = trunc nuw nsw i64 %storemerge2.lcssa.wide to i32
  %indvars.iv.next9 = add nsw i64 %indvars.iv8, -1
  br label %5, !llvm.loop !10

28:                                               ; preds = %5
  %storemerge2.lcssa4.lcssa = phi i32 [ %storemerge2.lcssa4, %5 ]
  %.lcssa13.lcssa = phi i32 [ %.lcssa13, %5 ]
  store i32 1, ptr @top, align 4
  store i32 %.lcssa13.lcssa, ptr %4, align 4
  store i32 %storemerge2.lcssa4.lcssa, ptr %3, align 4
  %29 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4
  %30 = load i32, ptr @littlest, align 4
  %.not = icmp eq i32 %29, %30
  br i1 %.not, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 2000), align 16
  %33 = load i32, ptr @biggest, align 4
  %.not1 = icmp eq i32 %32, %33
  br i1 %.not1, label %35, label %34

34:                                               ; preds = %31, %28
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %35

35:                                               ; preds = %34, %31
  %36 = load i32, ptr %2, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr [4 x i8], ptr @sortlist, i64 %37
  %39 = getelementptr i8, ptr %38, i64 4
  %40 = load i32, ptr %39, align 4
  %41 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %40) #3
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %4, %0
  %storemerge = phi i32 [ 0, %0 ], [ %5, %4 ]
  %exitcond = icmp ne i32 %storemerge, 100
  br i1 %exitcond, label %3, label %6

3:                                                ; preds = %2
  call void @Bubble(i32 noundef %storemerge)
  br label %4

4:                                                ; preds = %3
  %5 = add nuw nsw i32 %storemerge, 1
  br label %2, !llvm.loop !11

6:                                                ; preds = %2
  store i32 100, ptr %1, align 4
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
