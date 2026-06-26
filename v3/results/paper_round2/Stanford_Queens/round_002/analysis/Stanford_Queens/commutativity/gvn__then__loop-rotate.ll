; ModuleID = 'results\paper_round2\Stanford_Queens\round_001\output.ll'
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
  br label %7

7:                                                ; preds = %6, %32
  %.02 = phi i32 [ 0, %6 ], [ %8, %32 ]
  %8 = add nuw nsw i32 %.02, 1
  store i32 0, ptr %1, align 4
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not1 = icmp eq i32 %11, 0
  br i1 %.not1, label %32, label %12

12:                                               ; preds = %7
  %13 = add nsw i32 %0, %8
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr %2, i64 %14
  %16 = load i32, ptr %15, align 4
  %.not2 = icmp eq i32 %16, 0
  br i1 %.not2, label %32, label %17

17:                                               ; preds = %12
  %18 = sub nsw i32 %0, %8
  %19 = sext i32 %18 to i64
  %20 = getelementptr [4 x i8], ptr %4, i64 %19
  %21 = getelementptr i8, ptr %20, i64 28
  %22 = load i32, ptr %21, align 4
  %.not3 = icmp eq i32 %22, 0
  br i1 %.not3, label %32, label %23

23:                                               ; preds = %17
  %24 = sext i32 %0 to i64
  %25 = getelementptr inbounds [4 x i8], ptr %5, i64 %24
  store i32 %8, ptr %25, align 4
  store i32 0, ptr %10, align 4
  store i32 0, ptr %15, align 4
  store i32 0, ptr %21, align 4
  %26 = icmp slt i32 %0, 8
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = add nsw i32 %0, 1
  call void @Try(i32 noundef %28, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %29 = load i32, ptr %1, align 4
  %.not4 = icmp eq i32 %29, 0
  br i1 %.not4, label %30, label %32

30:                                               ; preds = %27
  store i32 1, ptr %10, align 4
  store i32 1, ptr %15, align 4
  store i32 1, ptr %21, align 4
  %.pre.pre = load i32, ptr %1, align 4
  br label %32

31:                                               ; preds = %23
  store i32 1, ptr %1, align 4
  br label %32

32:                                               ; preds = %31, %30, %27, %17, %12, %7
  %.pre = phi i32 [ 1, %31 ], [ %.pre.pre, %30 ], [ %29, %27 ], [ 0, %17 ], [ 0, %12 ], [ 0, %7 ]
  %.not = icmp eq i32 %.pre, 0
  %33 = icmp ne i32 %8, 8
  %spec.select = and i1 %.not, %33
  br i1 %spec.select, label %7, label %34, !llvm.loop !7

34:                                               ; preds = %32
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

6:                                                ; preds = %0, %22
  %.01 = phi i32 [ -7, %0 ], [ %23, %22 ]
  %7 = add i32 %.01, -1
  %or.cond = icmp ult i32 %7, 8
  br i1 %or.cond, label %8, label %11

8:                                                ; preds = %6
  %9 = zext nneg i32 %.01 to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %9
  store i32 1, ptr %10, align 4
  br label %11

11:                                               ; preds = %8, %6
  %12 = icmp sgt i32 %.01, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %11
  %14 = zext nneg i32 %.01 to i64
  %15 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %14
  store i32 1, ptr %15, align 4
  br label %16

16:                                               ; preds = %13, %11
  %17 = icmp slt i32 %.01, 8
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = sext i32 %.01 to i64
  %20 = getelementptr [4 x i8], ptr %4, i64 %19
  %21 = getelementptr i8, ptr %20, i64 28
  store i32 1, ptr %21, align 4
  br label %22

22:                                               ; preds = %18, %16
  %23 = add nsw i32 %.01, 1
  %24 = icmp slt i32 %23, 17
  br i1 %24, label %6, label %25, !llvm.loop !9

25:                                               ; preds = %22
  call void @Try(i32 noundef 1, ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %26 = load i32, ptr %1, align 4
  %.not = icmp eq i32 %26, 0
  br i1 %.not, label %27, label %28

27:                                               ; preds = %25
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %28

28:                                               ; preds = %27, %25
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Queens(i32 noundef %0) #0 {
  br label %2

2:                                                ; preds = %1, %2
  %.01 = phi i32 [ 1, %1 ], [ %3, %2 ]
  call void @Doit()
  %3 = add nuw nsw i32 %.01, 1
  %4 = icmp samesign ult i32 %3, 51
  br i1 %4, label %2, label %5, !llvm.loop !10

5:                                                ; preds = %2
  %6 = add nsw i32 %0, 1
  %7 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %6) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %0, %1
  %.01 = phi i32 [ 0, %0 ], [ %2, %1 ]
  call void @Queens(i32 noundef %.01)
  %2 = add nuw nsw i32 %.01, 1
  %3 = icmp samesign ult i32 %2, 100
  br i1 %3, label %1, label %4, !llvm.loop !11

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
