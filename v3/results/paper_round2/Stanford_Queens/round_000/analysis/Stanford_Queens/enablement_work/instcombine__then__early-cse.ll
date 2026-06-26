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

14:                                               ; preds = %94, %6
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
  br i1 %21, label %22, label %95

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
  br i1 %.not1, label %94, label %30

30:                                               ; preds = %22
  %31 = load ptr, ptr %9, align 8
  %32 = load i32, ptr %7, align 4
  %33 = load i32, ptr %13, align 4
  %34 = add nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [4 x i8], ptr %31, i64 %35
  %37 = load i32, ptr %36, align 4
  %.not2 = icmp eq i32 %37, 0
  br i1 %.not2, label %94, label %38

38:                                               ; preds = %30
  %39 = load ptr, ptr %11, align 8
  %40 = sub nsw i32 %32, %33
  %41 = sext i32 %40 to i64
  %42 = getelementptr [4 x i8], ptr %39, i64 %41
  %43 = getelementptr i8, ptr %42, i64 28
  %44 = load i32, ptr %43, align 4
  %.not3 = icmp eq i32 %44, 0
  br i1 %.not3, label %94, label %45

45:                                               ; preds = %38
  %46 = load ptr, ptr %12, align 8
  %47 = sext i32 %32 to i64
  %48 = getelementptr inbounds [4 x i8], ptr %46, i64 %47
  store i32 %33, ptr %48, align 4
  %49 = load ptr, ptr %10, align 8
  %50 = load i32, ptr %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [4 x i8], ptr %49, i64 %51
  store i32 0, ptr %52, align 4
  %53 = load ptr, ptr %9, align 8
  %54 = load i32, ptr %7, align 4
  %55 = add nsw i32 %54, %50
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [4 x i8], ptr %53, i64 %56
  store i32 0, ptr %57, align 4
  %58 = load ptr, ptr %11, align 8
  %59 = load i32, ptr %13, align 4
  %60 = sub nsw i32 %54, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr [4 x i8], ptr %58, i64 %61
  %63 = getelementptr i8, ptr %62, i64 28
  store i32 0, ptr %63, align 4
  %64 = load i32, ptr %7, align 4
  %65 = icmp slt i32 %64, 8
  br i1 %65, label %66, label %91

66:                                               ; preds = %45
  %67 = add nsw i32 %64, 1
  %68 = load ptr, ptr %8, align 8
  %69 = load ptr, ptr %9, align 8
  %70 = load ptr, ptr %10, align 8
  %71 = load ptr, ptr %11, align 8
  %72 = load ptr, ptr %12, align 8
  call void @Try(i32 noundef %67, ptr noundef %68, ptr noundef %69, ptr noundef %70, ptr noundef %71, ptr noundef %72)
  %73 = load i32, ptr %68, align 4
  %.not4 = icmp eq i32 %73, 0
  br i1 %.not4, label %74, label %90

74:                                               ; preds = %66
  %75 = load ptr, ptr %10, align 8
  %76 = load i32, ptr %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [4 x i8], ptr %75, i64 %77
  store i32 1, ptr %78, align 4
  %79 = load ptr, ptr %9, align 8
  %80 = load i32, ptr %7, align 4
  %81 = add nsw i32 %80, %76
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [4 x i8], ptr %79, i64 %82
  store i32 1, ptr %83, align 4
  %84 = load ptr, ptr %11, align 8
  %85 = load i32, ptr %13, align 4
  %86 = sub nsw i32 %80, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr [4 x i8], ptr %84, i64 %87
  %89 = getelementptr i8, ptr %88, i64 28
  store i32 1, ptr %89, align 4
  br label %90

90:                                               ; preds = %74, %66
  br label %93

91:                                               ; preds = %45
  %92 = load ptr, ptr %8, align 8
  store i32 1, ptr %92, align 4
  br label %93

93:                                               ; preds = %91, %90
  br label %94

94:                                               ; preds = %93, %38, %30, %22
  br label %14, !llvm.loop !7

95:                                               ; preds = %20
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
  %14 = sext i32 %storemerge to i64
  %15 = getelementptr inbounds [4 x i8], ptr %3, i64 %14
  store i32 1, ptr %15, align 4
  br label %16

16:                                               ; preds = %13, %11, %9
  %17 = load i32, ptr %1, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = sext i32 %17 to i64
  %21 = getelementptr inbounds [4 x i8], ptr %4, i64 %20
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
