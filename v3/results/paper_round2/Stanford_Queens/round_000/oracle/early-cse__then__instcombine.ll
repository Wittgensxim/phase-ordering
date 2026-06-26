; ModuleID = 'results\paper_round2\Stanford_Queens\Stanford_Queens.ll'
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
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  store i32 %0, ptr %7, align 4
  store ptr %1, ptr %8, align 8
  store ptr %2, ptr %9, align 8
  store ptr %3, ptr %10, align 8
  store ptr %4, ptr %11, align 8
  store ptr %5, ptr %12, align 8
  store i32 0, ptr %13, align 4
  store i32 0, ptr %1, align 4
  br label %14

14:                                               ; preds = %93, %6
  %15 = load ptr, ptr %8, align 8
  %16 = load i32, ptr %15, align 4
  %.not = icmp eq i32 %16, 0
  br i1 %.not, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, ptr %13, align 4
  %19 = icmp ne i32 %18, 8
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi i1 [ false, %14 ], [ %19, %17 ]
  br i1 %21, label %22, label %94

22:                                               ; preds = %20
  %23 = load i32, ptr %13, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %13, align 4
  %25 = load ptr, ptr %8, align 8
  store i32 0, ptr %25, align 4
  %26 = load ptr, ptr %10, align 8
  %27 = sext i32 %24 to i64
  %28 = getelementptr inbounds [4 x i8], ptr %26, i64 %27
  %29 = load i32, ptr %28, align 4
  %.not1 = icmp eq i32 %29, 0
  br i1 %.not1, label %93, label %30

30:                                               ; preds = %22
  %31 = load ptr, ptr %9, align 8
  %32 = load i32, ptr %7, align 4
  %33 = add nsw i32 %32, %24
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x i8], ptr %31, i64 %34
  %36 = load i32, ptr %35, align 4
  %.not2 = icmp eq i32 %36, 0
  br i1 %.not2, label %93, label %37

37:                                               ; preds = %30
  %38 = load ptr, ptr %11, align 8
  %39 = sub nsw i32 %32, %24
  %40 = sext i32 %39 to i64
  %41 = getelementptr [4 x i8], ptr %38, i64 %40
  %42 = getelementptr i8, ptr %41, i64 28
  %43 = load i32, ptr %42, align 4
  %.not3 = icmp eq i32 %43, 0
  br i1 %.not3, label %93, label %44

44:                                               ; preds = %37
  %45 = load ptr, ptr %12, align 8
  %46 = sext i32 %32 to i64
  %47 = getelementptr inbounds [4 x i8], ptr %45, i64 %46
  store i32 %24, ptr %47, align 4
  %48 = load ptr, ptr %10, align 8
  %49 = load i32, ptr %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [4 x i8], ptr %48, i64 %50
  store i32 0, ptr %51, align 4
  %52 = load ptr, ptr %9, align 8
  %53 = load i32, ptr %7, align 4
  %54 = add nsw i32 %53, %49
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [4 x i8], ptr %52, i64 %55
  store i32 0, ptr %56, align 4
  %57 = load ptr, ptr %11, align 8
  %58 = load i32, ptr %13, align 4
  %59 = sub nsw i32 %53, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr [4 x i8], ptr %57, i64 %60
  %62 = getelementptr i8, ptr %61, i64 28
  store i32 0, ptr %62, align 4
  %63 = load i32, ptr %7, align 4
  %64 = icmp slt i32 %63, 8
  br i1 %64, label %65, label %90

65:                                               ; preds = %44
  %66 = add nsw i32 %63, 1
  %67 = load ptr, ptr %8, align 8
  %68 = load ptr, ptr %9, align 8
  %69 = load ptr, ptr %10, align 8
  %70 = load ptr, ptr %11, align 8
  %71 = load ptr, ptr %12, align 8
  call void @Try(i32 noundef %66, ptr noundef %67, ptr noundef %68, ptr noundef %69, ptr noundef %70, ptr noundef %71)
  %72 = load i32, ptr %67, align 4
  %.not4 = icmp eq i32 %72, 0
  br i1 %.not4, label %73, label %89

73:                                               ; preds = %65
  %74 = load ptr, ptr %10, align 8
  %75 = load i32, ptr %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [4 x i8], ptr %74, i64 %76
  store i32 1, ptr %77, align 4
  %78 = load ptr, ptr %9, align 8
  %79 = load i32, ptr %7, align 4
  %80 = add nsw i32 %79, %75
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [4 x i8], ptr %78, i64 %81
  store i32 1, ptr %82, align 4
  %83 = load ptr, ptr %11, align 8
  %84 = load i32, ptr %13, align 4
  %85 = sub nsw i32 %79, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr [4 x i8], ptr %83, i64 %86
  %88 = getelementptr i8, ptr %87, i64 28
  store i32 1, ptr %88, align 4
  br label %89

89:                                               ; preds = %73, %65
  br label %92

90:                                               ; preds = %44
  %91 = load ptr, ptr %8, align 8
  store i32 1, ptr %91, align 4
  br label %92

92:                                               ; preds = %90, %89
  br label %93

93:                                               ; preds = %92, %37, %30, %22
  br label %14, !llvm.loop !7

94:                                               ; preds = %20
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Doit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [9 x i32], align 16
  %4 = alloca [17 x i32], align 16
  %5 = alloca [15 x i32], align 16
  %6 = alloca [9 x i32], align 16
  br label %7

7:                                                ; preds = %29, %0
  %storemerge = phi i32 [ -7, %0 ], [ %31, %29 ]
  store i32 %storemerge, ptr %1, align 4
  %8 = icmp slt i32 %storemerge, 17
  br i1 %8, label %9, label %32

9:                                                ; preds = %7
  %10 = icmp sgt i32 %storemerge, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %9
  %12 = icmp slt i32 %storemerge, 9
  br i1 %12, label %13, label %16

13:                                               ; preds = %11
  %14 = zext nneg i32 %storemerge to i64
  %15 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %14
  store i32 1, ptr %15, align 4
  br label %16

16:                                               ; preds = %13, %11, %9
  %17 = load i32, ptr %1, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = zext nneg i32 %17 to i64
  %21 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %20
  store i32 1, ptr %21, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i32, ptr %1, align 4
  %24 = icmp slt i32 %23, 8
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = sext i32 %23 to i64
  %27 = getelementptr [4 x i8], ptr %5, i64 %26
  %28 = getelementptr i8, ptr %27, i64 28
  store i32 1, ptr %28, align 4
  br label %29

29:                                               ; preds = %25, %22
  %30 = load i32, ptr %1, align 4
  %31 = add nsw i32 %30, 1
  br label %7, !llvm.loop !9

32:                                               ; preds = %7
  call void @Try(i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %33 = load i32, ptr %2, align 4
  %.not = icmp eq i32 %33, 0
  br i1 %.not, label %34, label %35

34:                                               ; preds = %32
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %35

35:                                               ; preds = %34, %32
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Queens(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  br label %4

4:                                                ; preds = %7, %1
  %storemerge = phi i32 [ 1, %1 ], [ %9, %7 ]
  store i32 %storemerge, ptr %3, align 4
  %5 = icmp slt i32 %storemerge, 51
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  call void @Doit()
  br label %7

7:                                                ; preds = %6
  %8 = load i32, ptr %3, align 4
  %9 = add nsw i32 %8, 1
  br label %4, !llvm.loop !10

10:                                               ; preds = %4
  %11 = load i32, ptr %2, align 4
  %12 = add nsw i32 %11, 1
  %13 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %12) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %5, %0
  %storemerge = phi i32 [ 0, %0 ], [ %7, %5 ]
  store i32 %storemerge, ptr %1, align 4
  %3 = icmp slt i32 %storemerge, 100
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  call void @Queens(i32 noundef %storemerge)
  br label %5

5:                                                ; preds = %4
  %6 = load i32, ptr %1, align 4
  %7 = add nsw i32 %6, 1
  br label %2, !llvm.loop !11

8:                                                ; preds = %2
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
