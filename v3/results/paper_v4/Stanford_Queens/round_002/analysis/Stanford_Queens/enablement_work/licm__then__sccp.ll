; ModuleID = 'results\paper_v4\Stanford_Queens\round_001\output.ll'
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
define dso_local range(i32 0, 65536) i32 @Rand() #0 {
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

11:                                               ; preds = %35, %6
  %.0 = phi i32 [ 0, %6 ], [ %15, %35 ]
  %12 = load i32, ptr %1, align 4
  %.not = icmp eq i32 %12, 0
  %13 = icmp ne i32 %.0, 8
  %spec.select = and i1 %.not, %13
  br i1 %spec.select, label %14, label %36

14:                                               ; preds = %11
  %15 = add nuw nsw i32 %.0, 1
  store i32 0, ptr %1, align 4
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %16
  %18 = load i32, ptr %17, align 4
  %.not1 = icmp eq i32 %18, 0
  br i1 %.not1, label %35, label %19

19:                                               ; preds = %14
  %20 = add nsw i32 %0, %15
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i8], ptr %2, i64 %21
  %23 = load i32, ptr %22, align 4
  %.not2 = icmp eq i32 %23, 0
  br i1 %.not2, label %35, label %24

24:                                               ; preds = %19
  %25 = sub nsw i32 %0, %15
  %26 = sext i32 %25 to i64
  %27 = getelementptr [4 x i8], ptr %4, i64 %26
  %28 = getelementptr i8, ptr %27, i64 28
  %29 = load i32, ptr %28, align 4
  %.not3 = icmp eq i32 %29, 0
  br i1 %.not3, label %35, label %30

30:                                               ; preds = %24
  store i32 %15, ptr %8, align 4
  store i32 0, ptr %17, align 4
  store i32 0, ptr %22, align 4
  store i32 0, ptr %28, align 4
  br i1 %9, label %31, label %34

31:                                               ; preds = %30
  call void @Try(i32 noundef %10, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %32 = load i32, ptr %1, align 4
  %.not4 = icmp eq i32 %32, 0
  br i1 %.not4, label %33, label %35

33:                                               ; preds = %31
  store i32 1, ptr %17, align 4
  store i32 1, ptr %22, align 4
  store i32 1, ptr %28, align 4
  br label %35

34:                                               ; preds = %30
  store i32 1, ptr %1, align 4
  br label %35

35:                                               ; preds = %34, %33, %31, %24, %19, %14
  br label %11, !llvm.loop !7

36:                                               ; preds = %11
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

6:                                                ; preds = %24, %0
  %.0 = phi i32 [ -7, %0 ], [ %25, %24 ]
  %7 = icmp slt i32 %.0, 17
  br i1 %7, label %8, label %26

8:                                                ; preds = %6
  %9 = add i32 %.0, -1
  %or.cond = icmp ult i32 %9, 8
  br i1 %or.cond, label %10, label %13

10:                                               ; preds = %8
  %11 = zext nneg i32 %.0 to i64
  %12 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %11
  store i32 1, ptr %12, align 4
  br label %13

13:                                               ; preds = %10, %8
  %14 = icmp sgt i32 %.0, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = zext nneg i32 %.0 to i64
  %17 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %16
  store i32 1, ptr %17, align 4
  br label %18

18:                                               ; preds = %15, %13
  %19 = icmp slt i32 %.0, 8
  br i1 %19, label %20, label %24

20:                                               ; preds = %18
  %21 = sext i32 %.0 to i64
  %22 = getelementptr [4 x i8], ptr %4, i64 %21
  %23 = getelementptr i8, ptr %22, i64 28
  store i32 1, ptr %23, align 4
  br label %24

24:                                               ; preds = %20, %18
  %25 = add nsw i32 %.0, 1
  br label %6, !llvm.loop !9

26:                                               ; preds = %6
  call void @Try(i32 noundef 1, ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %27 = load i32, ptr %1, align 4
  %.not = icmp eq i32 %27, 0
  br i1 %.not, label %28, label %29

28:                                               ; preds = %26
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %29

29:                                               ; preds = %28, %26
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Queens(i32 noundef %0) #0 {
  br label %2

2:                                                ; preds = %4, %1
  %.0 = phi i32 [ 1, %1 ], [ %5, %4 ]
  %3 = icmp samesign ult i32 %.0, 51
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  call void @Doit()
  %5 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !10

6:                                                ; preds = %2
  %7 = add nsw i32 %0, 1
  %8 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %7) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %3, %0
  %.0 = phi i32 [ 0, %0 ], [ %4, %3 ]
  %2 = icmp samesign ult i32 %.0, 100
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  call void @Queens(i32 noundef %.0)
  %4 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !11

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
