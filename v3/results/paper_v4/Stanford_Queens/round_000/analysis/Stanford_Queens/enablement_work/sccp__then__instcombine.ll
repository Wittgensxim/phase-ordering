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
  br label %14

14:                                               ; preds = %99, %6
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
  br i1 %21, label %22, label %100

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
  br i1 %.not1, label %99, label %30

30:                                               ; preds = %22
  %31 = load ptr, ptr %9, align 8
  %32 = load i32, ptr %7, align 4
  %33 = load i32, ptr %13, align 4
  %34 = add nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [4 x i8], ptr %31, i64 %35
  %37 = load i32, ptr %36, align 4
  %.not2 = icmp eq i32 %37, 0
  br i1 %.not2, label %99, label %38

38:                                               ; preds = %30
  %39 = load ptr, ptr %11, align 8
  %40 = load i32, ptr %7, align 4
  %41 = load i32, ptr %13, align 4
  %42 = sub nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr [4 x i8], ptr %39, i64 %43
  %45 = getelementptr i8, ptr %44, i64 28
  %46 = load i32, ptr %45, align 4
  %.not3 = icmp eq i32 %46, 0
  br i1 %.not3, label %99, label %47

47:                                               ; preds = %38
  %48 = load i32, ptr %13, align 4
  %49 = load ptr, ptr %12, align 8
  %50 = load i32, ptr %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [4 x i8], ptr %49, i64 %51
  store i32 %48, ptr %52, align 4
  %53 = load ptr, ptr %10, align 8
  %54 = load i32, ptr %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [4 x i8], ptr %53, i64 %55
  store i32 0, ptr %56, align 4
  %57 = load ptr, ptr %9, align 8
  %58 = load i32, ptr %7, align 4
  %59 = add nsw i32 %58, %54
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [4 x i8], ptr %57, i64 %60
  store i32 0, ptr %61, align 4
  %62 = load ptr, ptr %11, align 8
  %63 = load i32, ptr %13, align 4
  %64 = sub nsw i32 %58, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr [4 x i8], ptr %62, i64 %65
  %67 = getelementptr i8, ptr %66, i64 28
  store i32 0, ptr %67, align 4
  %68 = load i32, ptr %7, align 4
  %69 = icmp slt i32 %68, 8
  br i1 %69, label %70, label %96

70:                                               ; preds = %47
  %71 = load i32, ptr %7, align 4
  %72 = add nsw i32 %71, 1
  %73 = load ptr, ptr %8, align 8
  %74 = load ptr, ptr %9, align 8
  %75 = load ptr, ptr %10, align 8
  %76 = load ptr, ptr %11, align 8
  %77 = load ptr, ptr %12, align 8
  call void @Try(i32 noundef %72, ptr noundef %73, ptr noundef %74, ptr noundef %75, ptr noundef %76, ptr noundef %77)
  %78 = load i32, ptr %73, align 4
  %.not4 = icmp eq i32 %78, 0
  br i1 %.not4, label %79, label %95

79:                                               ; preds = %70
  %80 = load ptr, ptr %10, align 8
  %81 = load i32, ptr %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [4 x i8], ptr %80, i64 %82
  store i32 1, ptr %83, align 4
  %84 = load ptr, ptr %9, align 8
  %85 = load i32, ptr %7, align 4
  %86 = add nsw i32 %85, %81
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [4 x i8], ptr %84, i64 %87
  store i32 1, ptr %88, align 4
  %89 = load ptr, ptr %11, align 8
  %90 = load i32, ptr %13, align 4
  %91 = sub nsw i32 %85, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr [4 x i8], ptr %89, i64 %92
  %94 = getelementptr i8, ptr %93, i64 28
  store i32 1, ptr %94, align 4
  br label %95

95:                                               ; preds = %79, %70
  br label %98

96:                                               ; preds = %47
  %97 = load ptr, ptr %8, align 8
  store i32 1, ptr %97, align 4
  br label %98

98:                                               ; preds = %96, %95
  br label %99

99:                                               ; preds = %98, %38, %30, %22
  br label %14, !llvm.loop !7

100:                                              ; preds = %20
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

7:                                                ; preds = %34, %0
  %storemerge = phi i32 [ -7, %0 ], [ %36, %34 ]
  store i32 %storemerge, ptr %1, align 4
  %8 = icmp slt i32 %storemerge, 17
  br i1 %8, label %9, label %37

9:                                                ; preds = %7
  %10 = load i32, ptr %1, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = load i32, ptr %1, align 4
  %14 = icmp slt i32 %13, 9
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, ptr %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8], ptr %3, i64 %17
  store i32 1, ptr %18, align 4
  br label %19

19:                                               ; preds = %15, %12, %9
  %20 = load i32, ptr %1, align 4
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, ptr %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i8], ptr %4, i64 %24
  store i32 1, ptr %25, align 4
  br label %26

26:                                               ; preds = %22, %19
  %27 = load i32, ptr %1, align 4
  %28 = icmp slt i32 %27, 8
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32, ptr %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr [4 x i8], ptr %5, i64 %31
  %33 = getelementptr i8, ptr %32, i64 28
  store i32 1, ptr %33, align 4
  br label %34

34:                                               ; preds = %29, %26
  %35 = load i32, ptr %1, align 4
  %36 = add nsw i32 %35, 1
  br label %7, !llvm.loop !9

37:                                               ; preds = %7
  call void @Try(i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %38 = load i32, ptr %2, align 4
  %.not = icmp eq i32 %38, 0
  br i1 %.not, label %39, label %40

39:                                               ; preds = %37
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %40

40:                                               ; preds = %39, %37
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

2:                                                ; preds = %6, %0
  %storemerge = phi i32 [ 0, %0 ], [ %8, %6 ]
  store i32 %storemerge, ptr %1, align 4
  %3 = icmp slt i32 %storemerge, 100
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = load i32, ptr %1, align 4
  call void @Queens(i32 noundef %5)
  br label %6

6:                                                ; preds = %4
  %7 = load i32, ptr %1, align 4
  %8 = add nsw i32 %7, 1
  br label %2, !llvm.loop !11

9:                                                ; preds = %2
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
