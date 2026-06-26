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

14:                                               ; preds = %70, %6
  %15 = phi ptr [ %71, %70 ], [ %1, %6 ]
  %16 = phi ptr [ %72, %70 ], [ %1, %6 ]
  %17 = phi i32 [ %26, %70 ], [ 0, %6 ]
  %18 = phi i32 [ %.pre, %70 ], [ 0, %6 ]
  %.not = icmp eq i32 %18, 0
  br i1 %.not, label %19, label %21

19:                                               ; preds = %14
  %20 = icmp ne i32 %17, 8
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi i1 [ false, %14 ], [ %20, %19 ]
  br i1 %22, label %23, label %73

23:                                               ; preds = %21
  %24 = add nsw i32 %17, 1
  store i32 %24, ptr %13, align 4
  store i32 0, ptr %16, align 4
  %25 = load ptr, ptr %10, align 8
  %26 = load i32, ptr %13, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i8], ptr %25, i64 %27
  %29 = load i32, ptr %28, align 4
  %.not4 = icmp eq i32 %29, 0
  br i1 %.not4, label %70, label %30

30:                                               ; preds = %23
  %31 = load ptr, ptr %9, align 8
  %32 = load i32, ptr %7, align 4
  %33 = add nsw i32 %32, %26
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x i8], ptr %31, i64 %34
  %36 = load i32, ptr %35, align 4
  %.not5 = icmp eq i32 %36, 0
  br i1 %.not5, label %70, label %37

37:                                               ; preds = %30
  %38 = load ptr, ptr %11, align 8
  %39 = sub nsw i32 %32, %26
  %40 = sext i32 %39 to i64
  %41 = getelementptr [4 x i8], ptr %38, i64 %40
  %42 = getelementptr i8, ptr %41, i64 28
  %43 = load i32, ptr %42, align 4
  %.not6 = icmp eq i32 %43, 0
  br i1 %.not6, label %70, label %44

44:                                               ; preds = %37
  %45 = load ptr, ptr %12, align 8
  %46 = sext i32 %32 to i64
  %47 = getelementptr inbounds [4 x i8], ptr %45, i64 %46
  store i32 %26, ptr %47, align 4
  store i32 0, ptr %28, align 4
  store i32 0, ptr %35, align 4
  store i32 0, ptr %42, align 4
  %48 = icmp slt i32 %32, 8
  br i1 %48, label %49, label %67

49:                                               ; preds = %44
  %50 = add nsw i32 %32, 1
  call void @Try(i32 noundef %50, ptr noundef %15, ptr noundef %31, ptr noundef %25, ptr noundef %38, ptr noundef %45)
  %51 = load ptr, ptr %8, align 8
  %52 = load i32, ptr %51, align 4
  %.not7 = icmp eq i32 %52, 0
  br i1 %.not7, label %53, label %66

53:                                               ; preds = %49
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds [4 x i8], ptr %54, i64 %27
  store i32 1, ptr %55, align 4
  %56 = load ptr, ptr %9, align 8
  %57 = load i32, ptr %7, align 4
  %58 = add nsw i32 %57, %26
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [4 x i8], ptr %56, i64 %59
  store i32 1, ptr %60, align 4
  %61 = load ptr, ptr %11, align 8
  %62 = sub nsw i32 %57, %26
  %63 = sext i32 %62 to i64
  %64 = getelementptr [4 x i8], ptr %61, i64 %63
  %65 = getelementptr i8, ptr %64, i64 28
  store i32 1, ptr %65, align 4
  %.pre.pre.pre.pre = load i32, ptr %51, align 4
  br label %66

66:                                               ; preds = %53, %49
  %.pre.pre.pre = phi i32 [ %.pre.pre.pre.pre, %53 ], [ %52, %49 ]
  br label %68

67:                                               ; preds = %44
  store i32 1, ptr %15, align 4
  br label %68

68:                                               ; preds = %67, %66
  %.pre.pre = phi i32 [ 1, %67 ], [ %.pre.pre.pre, %66 ]
  %69 = phi ptr [ %15, %67 ], [ %51, %66 ]
  br label %70

70:                                               ; preds = %68, %37, %30, %23
  %.pre = phi i32 [ %.pre.pre, %68 ], [ 0, %37 ], [ 0, %30 ], [ 0, %23 ]
  %71 = phi ptr [ %69, %68 ], [ %15, %37 ], [ %15, %30 ], [ %15, %23 ]
  %72 = phi ptr [ %69, %68 ], [ %16, %37 ], [ %16, %30 ], [ %16, %23 ]
  br label %14, !llvm.loop !7

73:                                               ; preds = %21
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

6:                                                ; preds = %27, %0
  %7 = phi i32 [ %28, %27 ], [ -7, %0 ]
  %8 = icmp slt i32 %7, 17
  br i1 %8, label %9, label %29

9:                                                ; preds = %6
  %10 = icmp sgt i32 %7, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %9
  %12 = icmp slt i32 %7, 9
  br i1 %12, label %13, label %16

13:                                               ; preds = %11
  %14 = zext nneg i32 %7 to i64
  %15 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %14
  store i32 1, ptr %15, align 4
  br label %16

16:                                               ; preds = %13, %11, %9
  %17 = icmp sgt i32 %7, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = zext nneg i32 %7 to i64
  %20 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %19
  store i32 1, ptr %20, align 4
  br label %21

21:                                               ; preds = %18, %16
  %22 = icmp slt i32 %7, 8
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  %24 = sext i32 %7 to i64
  %25 = getelementptr [4 x i8], ptr %4, i64 %24
  %26 = getelementptr i8, ptr %25, i64 28
  store i32 1, ptr %26, align 4
  br label %27

27:                                               ; preds = %23, %21
  %28 = add nsw i32 %7, 1
  br label %6, !llvm.loop !9

29:                                               ; preds = %6
  call void @Try(i32 noundef 1, ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %30 = load i32, ptr %1, align 4
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
  br label %2

2:                                                ; preds = %5, %1
  %3 = phi i32 [ %6, %5 ], [ 1, %1 ]
  %4 = icmp samesign ult i32 %3, 51
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  call void @Doit()
  %6 = add nuw nsw i32 %3, 1
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
  %2 = phi i32 [ %5, %4 ], [ 0, %0 ]
  %3 = icmp samesign ult i32 %2, 100
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  call void @Queens(i32 noundef %2)
  %5 = add nuw nsw i32 %2, 1
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
