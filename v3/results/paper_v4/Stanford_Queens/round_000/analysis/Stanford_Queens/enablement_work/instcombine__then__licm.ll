; ModuleID = 'results\paper_v4\Stanford_Queens\Stanford_Queens.ll'
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
  %14 = load ptr, ptr %8, align 8
  %15 = load ptr, ptr %8, align 8
  %16 = load ptr, ptr %10, align 8
  %17 = load ptr, ptr %9, align 8
  %18 = load i32, ptr %7, align 4
  %19 = load ptr, ptr %11, align 8
  %20 = load i32, ptr %7, align 4
  %21 = load ptr, ptr %12, align 8
  %22 = load i32, ptr %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i8], ptr %21, i64 %23
  %25 = load ptr, ptr %10, align 8
  %26 = load ptr, ptr %9, align 8
  %27 = load i32, ptr %7, align 4
  %28 = load ptr, ptr %11, align 8
  %29 = load i32, ptr %7, align 4
  %30 = icmp slt i32 %29, 8
  %31 = load ptr, ptr %8, align 8
  %32 = load i32, ptr %7, align 4
  %33 = add nsw i32 %32, 1
  %34 = load ptr, ptr %8, align 8
  %35 = load ptr, ptr %9, align 8
  %36 = load ptr, ptr %10, align 8
  %37 = load ptr, ptr %11, align 8
  %38 = load ptr, ptr %12, align 8
  %39 = load ptr, ptr %10, align 8
  %40 = load ptr, ptr %9, align 8
  %41 = load i32, ptr %7, align 4
  %42 = load ptr, ptr %11, align 8
  %.promoted = load i32, ptr %13, align 4
  br label %43

43:                                               ; preds = %92, %6
  %44 = phi i32 [ %93, %92 ], [ %.promoted, %6 ]
  %45 = load i32, ptr %14, align 4
  %.not = icmp eq i32 %45, 0
  br i1 %.not, label %46, label %48

46:                                               ; preds = %43
  %47 = icmp ne i32 %44, 8
  br label %48

48:                                               ; preds = %46, %43
  %49 = phi i1 [ false, %43 ], [ %47, %46 ]
  br i1 %49, label %50, label %94

50:                                               ; preds = %48
  %51 = add nsw i32 %44, 1
  store i32 0, ptr %15, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [4 x i8], ptr %16, i64 %52
  %54 = load i32, ptr %53, align 4
  %.not1 = icmp eq i32 %54, 0
  br i1 %.not1, label %92, label %55

55:                                               ; preds = %50
  %56 = add nsw i32 %18, %51
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [4 x i8], ptr %17, i64 %57
  %59 = load i32, ptr %58, align 4
  %.not2 = icmp eq i32 %59, 0
  br i1 %.not2, label %92, label %60

60:                                               ; preds = %55
  %61 = sub nsw i32 %20, %51
  %62 = sext i32 %61 to i64
  %63 = getelementptr [4 x i8], ptr %19, i64 %62
  %64 = getelementptr i8, ptr %63, i64 28
  %65 = load i32, ptr %64, align 4
  %.not3 = icmp eq i32 %65, 0
  br i1 %.not3, label %92, label %66

66:                                               ; preds = %60
  store i32 %51, ptr %24, align 4
  %67 = sext i32 %51 to i64
  %68 = getelementptr inbounds [4 x i8], ptr %25, i64 %67
  store i32 0, ptr %68, align 4
  %69 = add nsw i32 %27, %51
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [4 x i8], ptr %26, i64 %70
  store i32 0, ptr %71, align 4
  %72 = sub nsw i32 %27, %51
  %73 = sext i32 %72 to i64
  %74 = getelementptr [4 x i8], ptr %28, i64 %73
  %75 = getelementptr i8, ptr %74, i64 28
  store i32 0, ptr %75, align 4
  br i1 %30, label %76, label %89

76:                                               ; preds = %66
  call void @Try(i32 noundef %33, ptr noundef %34, ptr noundef %35, ptr noundef %36, ptr noundef %37, ptr noundef %38)
  %77 = load i32, ptr %34, align 4
  %.not4 = icmp eq i32 %77, 0
  br i1 %.not4, label %78, label %88

78:                                               ; preds = %76
  %79 = sext i32 %51 to i64
  %80 = getelementptr inbounds [4 x i8], ptr %39, i64 %79
  store i32 1, ptr %80, align 4
  %81 = add nsw i32 %41, %51
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [4 x i8], ptr %40, i64 %82
  store i32 1, ptr %83, align 4
  %84 = sub nsw i32 %41, %51
  %85 = sext i32 %84 to i64
  %86 = getelementptr [4 x i8], ptr %42, i64 %85
  %87 = getelementptr i8, ptr %86, i64 28
  store i32 1, ptr %87, align 4
  br label %88

88:                                               ; preds = %78, %76
  br label %90

89:                                               ; preds = %66
  store i32 1, ptr %31, align 4
  br label %90

90:                                               ; preds = %89, %88
  %91 = phi i32 [ %51, %89 ], [ %51, %88 ]
  br label %92

92:                                               ; preds = %90, %60, %55, %50
  %93 = phi i32 [ %91, %90 ], [ %51, %60 ], [ %51, %55 ], [ %51, %50 ]
  br label %43, !llvm.loop !7

94:                                               ; preds = %48
  %.lcssa = phi i32 [ %44, %48 ]
  store i32 %.lcssa, ptr %13, align 4
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

7:                                                ; preds = %27, %0
  %storemerge = phi i32 [ -7, %0 ], [ %28, %27 ]
  %8 = icmp slt i32 %storemerge, 17
  br i1 %8, label %9, label %29

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
  %17 = icmp sgt i32 %storemerge, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = sext i32 %storemerge to i64
  %20 = getelementptr inbounds [4 x i8], ptr %4, i64 %19
  store i32 1, ptr %20, align 4
  br label %21

21:                                               ; preds = %18, %16
  %22 = icmp slt i32 %storemerge, 8
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  %24 = sext i32 %storemerge to i64
  %25 = getelementptr [4 x i8], ptr %5, i64 %24
  %26 = getelementptr i8, ptr %25, i64 28
  store i32 1, ptr %26, align 4
  br label %27

27:                                               ; preds = %23, %21
  %28 = add nsw i32 %storemerge, 1
  br label %7, !llvm.loop !9

29:                                               ; preds = %7
  %storemerge.lcssa = phi i32 [ %storemerge, %7 ]
  store i32 %storemerge.lcssa, ptr %1, align 4
  call void @Try(i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %30 = load i32, ptr %2, align 4
  %.not = icmp eq i32 %30, 0
  br i1 %.not, label %31, label %32

31:                                               ; preds = %29
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %32

32:                                               ; preds = %31, %29
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
  %storemerge = phi i32 [ 1, %1 ], [ %8, %7 ]
  %5 = icmp slt i32 %storemerge, 51
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  call void @Doit()
  br label %7

7:                                                ; preds = %6
  %8 = add nsw i32 %storemerge, 1
  br label %4, !llvm.loop !10

9:                                                ; preds = %4
  %storemerge.lcssa = phi i32 [ %storemerge, %4 ]
  store i32 %storemerge.lcssa, ptr %3, align 4
  %10 = load i32, ptr %2, align 4
  %11 = add nsw i32 %10, 1
  %12 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %11) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %5, %0
  %storemerge = phi i32 [ 0, %0 ], [ %6, %5 ]
  %3 = icmp slt i32 %storemerge, 100
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  call void @Queens(i32 noundef %storemerge)
  br label %5

5:                                                ; preds = %4
  %6 = add nsw i32 %storemerge, 1
  br label %2, !llvm.loop !11

7:                                                ; preds = %2
  %storemerge.lcssa = phi i32 [ %storemerge, %2 ]
  store i32 %storemerge.lcssa, ptr %1, align 4
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
