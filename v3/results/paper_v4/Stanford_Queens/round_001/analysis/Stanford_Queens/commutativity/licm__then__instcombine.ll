; ModuleID = 'results\paper_v4\Stanford_Queens\round_000\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Queens.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.element = type { i32, i32 }
%struct.complex = type { float, float }

@seed = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c" Error in Queens.\0A\00", align 1
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
@sortlist = dso_local global [5001 x i32] zeroinitializer, align 16
@biggest = dso_local global i32 0, align 4
@littlest = dso_local global i32 0, align 4
@top = dso_local global i32 0, align 4
@z = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@w = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@e = dso_local global [130 x %struct.complex] zeroinitializer, align 16
@zr = dso_local global float 0.000000e+00, align 4
@zi = dso_local global float 0.000000e+00, align 4
@str = private unnamed_addr constant [18 x i8] c" Error in Queens.\00", align 1

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
define dso_local void @Try(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  store i32 0, ptr %1, align 4
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds [4 x i8], ptr %5, i64 %7
  %9 = icmp slt i32 %0, 8
  %10 = add nsw i32 %0, 1
  br label %11

11:                                               ; preds = %40, %6
  %.0 = phi i32 [ 0, %6 ], [ %18, %40 ]
  %12 = load i32, ptr %1, align 4
  %.not = icmp eq i32 %12, 0
  br i1 %.not, label %13, label %15

13:                                               ; preds = %11
  %14 = icmp ne i32 %.0, 8
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i1 [ false, %11 ], [ %14, %13 ]
  br i1 %16, label %17, label %41

17:                                               ; preds = %15
  %18 = add nuw nsw i32 %.0, 1
  store i32 0, ptr %1, align 4
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %19
  %21 = load i32, ptr %20, align 4
  %.not1 = icmp eq i32 %21, 0
  br i1 %.not1, label %40, label %22

22:                                               ; preds = %17
  %23 = add nsw i32 %0, %18
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i8], ptr %2, i64 %24
  %26 = load i32, ptr %25, align 4
  %.not2 = icmp eq i32 %26, 0
  br i1 %.not2, label %40, label %27

27:                                               ; preds = %22
  %28 = sub nsw i32 %0, %18
  %29 = sext i32 %28 to i64
  %30 = getelementptr [4 x i8], ptr %4, i64 %29
  %31 = getelementptr i8, ptr %30, i64 28
  %32 = load i32, ptr %31, align 4
  %.not3 = icmp eq i32 %32, 0
  br i1 %.not3, label %40, label %33

33:                                               ; preds = %27
  store i32 %18, ptr %8, align 4
  store i32 0, ptr %20, align 4
  store i32 0, ptr %25, align 4
  store i32 0, ptr %31, align 4
  br i1 %9, label %34, label %38

34:                                               ; preds = %33
  call void @Try(i32 noundef %10, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %35 = load i32, ptr %1, align 4
  %.not4 = icmp eq i32 %35, 0
  br i1 %.not4, label %36, label %37

36:                                               ; preds = %34
  store i32 1, ptr %20, align 4
  store i32 1, ptr %25, align 4
  store i32 1, ptr %31, align 4
  br label %37

37:                                               ; preds = %36, %34
  br label %39

38:                                               ; preds = %33
  store i32 1, ptr %1, align 4
  br label %39

39:                                               ; preds = %38, %37
  br label %40

40:                                               ; preds = %39, %27, %22, %17
  br label %11, !llvm.loop !7

41:                                               ; preds = %15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Doit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [9 x i32], align 16
  %3 = alloca [17 x i32], align 16
  %4 = alloca [15 x i32], align 16
  %5 = alloca [9 x i32], align 16
  br label %6

6:                                                ; preds = %26, %0
  %.0 = phi i32 [ -7, %0 ], [ %27, %26 ]
  %7 = icmp slt i32 %.0, 17
  br i1 %7, label %8, label %28

8:                                                ; preds = %6
  %9 = icmp sgt i32 %.0, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %8
  %11 = icmp slt i32 %.0, 9
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = zext nneg i32 %.0 to i64
  %14 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %13
  store i32 1, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %10, %8
  %16 = icmp sgt i32 %.0, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = zext nneg i32 %.0 to i64
  %19 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %18
  store i32 1, ptr %19, align 4
  br label %20

20:                                               ; preds = %17, %15
  %21 = icmp slt i32 %.0, 8
  br i1 %21, label %22, label %26

22:                                               ; preds = %20
  %23 = sext i32 %.0 to i64
  %24 = getelementptr [4 x i8], ptr %4, i64 %23
  %25 = getelementptr i8, ptr %24, i64 28
  store i32 1, ptr %25, align 4
  br label %26

26:                                               ; preds = %22, %20
  %27 = add nsw i32 %.0, 1
  br label %6, !llvm.loop !9

28:                                               ; preds = %6
  call void @Try(i32 noundef 1, ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %29 = load i32, ptr %1, align 4
  %.not = icmp eq i32 %29, 0
  br i1 %.not, label %30, label %31

30:                                               ; preds = %28
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %31

31:                                               ; preds = %30, %28
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Queens(i32 noundef %0) #0 {
  br label %2

2:                                                ; preds = %5, %1
  %.0 = phi i32 [ 1, %1 ], [ %6, %5 ]
  %3 = icmp samesign ult i32 %.0, 51
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  call void @Doit()
  br label %5

5:                                                ; preds = %4
  %6 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !10

7:                                                ; preds = %2
  %8 = add nsw i32 %0, 1
  %9 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %8) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %.0 = phi i32 [ 0, %0 ], [ %5, %4 ]
  %2 = icmp samesign ult i32 %.0, 100
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  call void @Queens(i32 noundef %.0)
  br label %4

4:                                                ; preds = %3
  %5 = add nuw nsw i32 %.0, 1
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
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Queens.c", directory: "E:/Phase Ordering/v3")
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
