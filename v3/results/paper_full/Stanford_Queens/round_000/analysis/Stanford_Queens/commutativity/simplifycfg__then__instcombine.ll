; ModuleID = 'results\paper_full\Stanford_Queens\Stanford_Queens.ll'
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

14:                                               ; preds = %95, %6
  %15 = load ptr, ptr %8, align 8
  %16 = load i32, ptr %15, align 4
  %.not = icmp eq i32 %16, 0
  %17 = load i32, ptr %13, align 4
  %18 = icmp ne i32 %17, 8
  %19 = select i1 %.not, i1 %18, i1 false
  br i1 %19, label %20, label %96

20:                                               ; preds = %14
  %21 = load i32, ptr %13, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %13, align 4
  %23 = load ptr, ptr %8, align 8
  store i32 0, ptr %23, align 4
  %24 = load ptr, ptr %10, align 8
  %25 = sext i32 %22 to i64
  %26 = getelementptr inbounds [4 x i8], ptr %24, i64 %25
  %27 = load i32, ptr %26, align 4
  %.not1 = icmp eq i32 %27, 0
  br i1 %.not1, label %95, label %28

28:                                               ; preds = %20
  %29 = load ptr, ptr %9, align 8
  %30 = load i32, ptr %7, align 4
  %31 = load i32, ptr %13, align 4
  %32 = add nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4 x i8], ptr %29, i64 %33
  %35 = load i32, ptr %34, align 4
  %.not2 = icmp eq i32 %35, 0
  br i1 %.not2, label %95, label %36

36:                                               ; preds = %28
  %37 = load ptr, ptr %11, align 8
  %38 = load i32, ptr %7, align 4
  %39 = load i32, ptr %13, align 4
  %40 = sub nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr [4 x i8], ptr %37, i64 %41
  %43 = getelementptr i8, ptr %42, i64 28
  %44 = load i32, ptr %43, align 4
  %.not3 = icmp eq i32 %44, 0
  br i1 %.not3, label %95, label %45

45:                                               ; preds = %36
  %46 = load i32, ptr %13, align 4
  %47 = load ptr, ptr %12, align 8
  %48 = load i32, ptr %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [4 x i8], ptr %47, i64 %49
  store i32 %46, ptr %50, align 4
  %51 = load ptr, ptr %10, align 8
  %52 = load i32, ptr %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [4 x i8], ptr %51, i64 %53
  store i32 0, ptr %54, align 4
  %55 = load ptr, ptr %9, align 8
  %56 = load i32, ptr %7, align 4
  %57 = add nsw i32 %56, %52
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [4 x i8], ptr %55, i64 %58
  store i32 0, ptr %59, align 4
  %60 = load ptr, ptr %11, align 8
  %61 = load i32, ptr %13, align 4
  %62 = sub nsw i32 %56, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr [4 x i8], ptr %60, i64 %63
  %65 = getelementptr i8, ptr %64, i64 28
  store i32 0, ptr %65, align 4
  %66 = load i32, ptr %7, align 4
  %67 = icmp slt i32 %66, 8
  br i1 %67, label %68, label %93

68:                                               ; preds = %45
  %69 = load i32, ptr %7, align 4
  %70 = add nsw i32 %69, 1
  %71 = load ptr, ptr %8, align 8
  %72 = load ptr, ptr %9, align 8
  %73 = load ptr, ptr %10, align 8
  %74 = load ptr, ptr %11, align 8
  %75 = load ptr, ptr %12, align 8
  call void @Try(i32 noundef %70, ptr noundef %71, ptr noundef %72, ptr noundef %73, ptr noundef %74, ptr noundef %75)
  %76 = load i32, ptr %71, align 4
  %.not4 = icmp eq i32 %76, 0
  br i1 %.not4, label %77, label %95

77:                                               ; preds = %68
  %78 = load ptr, ptr %10, align 8
  %79 = load i32, ptr %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [4 x i8], ptr %78, i64 %80
  store i32 1, ptr %81, align 4
  %82 = load ptr, ptr %9, align 8
  %83 = load i32, ptr %7, align 4
  %84 = add nsw i32 %83, %79
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [4 x i8], ptr %82, i64 %85
  store i32 1, ptr %86, align 4
  %87 = load ptr, ptr %11, align 8
  %88 = load i32, ptr %13, align 4
  %89 = sub nsw i32 %83, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr [4 x i8], ptr %87, i64 %90
  %92 = getelementptr i8, ptr %91, i64 28
  store i32 1, ptr %92, align 4
  br label %95

93:                                               ; preds = %45
  %94 = load ptr, ptr %8, align 8
  store i32 1, ptr %94, align 4
  br label %95

95:                                               ; preds = %93, %77, %68, %36, %28, %20
  br label %14, !llvm.loop !7

96:                                               ; preds = %14
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

7:                                                ; preds = %31, %0
  %storemerge = phi i32 [ -7, %0 ], [ %33, %31 ]
  store i32 %storemerge, ptr %1, align 4
  %8 = icmp slt i32 %storemerge, 17
  br i1 %8, label %9, label %34

9:                                                ; preds = %7
  %10 = load i32, ptr %1, align 4
  %11 = add i32 %10, -1
  %or.cond = icmp ult i32 %11, 8
  br i1 %or.cond, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32, ptr %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr %3, i64 %14
  store i32 1, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %9
  %17 = load i32, ptr %1, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, ptr %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i8], ptr %4, i64 %21
  store i32 1, ptr %22, align 4
  br label %23

23:                                               ; preds = %19, %16
  %24 = load i32, ptr %1, align 4
  %25 = icmp slt i32 %24, 8
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, ptr %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr [4 x i8], ptr %5, i64 %28
  %30 = getelementptr i8, ptr %29, i64 28
  store i32 1, ptr %30, align 4
  br label %31

31:                                               ; preds = %26, %23
  %32 = load i32, ptr %1, align 4
  %33 = add nsw i32 %32, 1
  br label %7, !llvm.loop !9

34:                                               ; preds = %7
  call void @Try(i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %35 = load i32, ptr %2, align 4
  %.not = icmp eq i32 %35, 0
  br i1 %.not, label %36, label %37

36:                                               ; preds = %34
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %37

37:                                               ; preds = %36, %34
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Queens(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  br label %4

4:                                                ; preds = %6, %1
  %storemerge = phi i32 [ 1, %1 ], [ %8, %6 ]
  store i32 %storemerge, ptr %3, align 4
  %5 = icmp slt i32 %storemerge, 51
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  call void @Doit()
  %7 = load i32, ptr %3, align 4
  %8 = add nsw i32 %7, 1
  br label %4, !llvm.loop !10

9:                                                ; preds = %4
  %10 = load i32, ptr %2, align 4
  %11 = add nsw i32 %10, 1
  %12 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %11) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %4, %0
  %storemerge = phi i32 [ 0, %0 ], [ %6, %4 ]
  store i32 %storemerge, ptr %1, align 4
  %3 = icmp slt i32 %storemerge, 100
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = load i32, ptr %1, align 4
  call void @Queens(i32 noundef %5)
  %6 = add nsw i32 %5, 1
  br label %2, !llvm.loop !11

7:                                                ; preds = %2
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
