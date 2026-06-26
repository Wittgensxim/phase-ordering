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
  %14 = load ptr, ptr %8, align 8
  %15 = load ptr, ptr %9, align 8
  %16 = load i32, ptr %7, align 4
  %17 = load ptr, ptr %11, align 8
  %18 = load ptr, ptr %12, align 8
  %19 = sext i32 %16 to i64
  %20 = getelementptr inbounds [4 x i8], ptr %18, i64 %19
  %21 = load ptr, ptr %10, align 8
  %22 = load ptr, ptr %9, align 8
  %23 = load i32, ptr %7, align 4
  %24 = load ptr, ptr %11, align 8
  %25 = icmp slt i32 %23, 8
  %26 = load ptr, ptr %8, align 8
  %27 = add nsw i32 %23, 1
  %28 = load ptr, ptr %10, align 8
  %29 = load ptr, ptr %12, align 8
  %30 = load ptr, ptr %9, align 8
  %31 = load i32, ptr %7, align 4
  %32 = load ptr, ptr %11, align 8
  %.promoted = load i32, ptr %13, align 4
  br label %33

33:                                               ; preds = %81, %6
  %34 = phi i32 [ %41, %81 ], [ %.promoted, %6 ]
  %35 = load i32, ptr %14, align 4
  %.not = icmp eq i32 %35, 0
  br i1 %.not, label %36, label %38

36:                                               ; preds = %33
  %37 = icmp ne i32 %34, 8
  br label %38

38:                                               ; preds = %36, %33
  %39 = phi i1 [ false, %33 ], [ %37, %36 ]
  br i1 %39, label %40, label %82

40:                                               ; preds = %38
  %41 = add nsw i32 %34, 1
  store i32 0, ptr %14, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [4 x i8], ptr %3, i64 %42
  %44 = load i32, ptr %43, align 4
  %.not1 = icmp eq i32 %44, 0
  br i1 %.not1, label %81, label %45

45:                                               ; preds = %40
  %46 = add nsw i32 %16, %41
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [4 x i8], ptr %15, i64 %47
  %49 = load i32, ptr %48, align 4
  %.not2 = icmp eq i32 %49, 0
  br i1 %.not2, label %81, label %50

50:                                               ; preds = %45
  %51 = sub nsw i32 %16, %41
  %52 = sext i32 %51 to i64
  %53 = getelementptr [4 x i8], ptr %17, i64 %52
  %54 = getelementptr i8, ptr %53, i64 28
  %55 = load i32, ptr %54, align 4
  %.not3 = icmp eq i32 %55, 0
  br i1 %.not3, label %81, label %56

56:                                               ; preds = %50
  store i32 %41, ptr %20, align 4
  %57 = sext i32 %41 to i64
  %58 = getelementptr inbounds [4 x i8], ptr %21, i64 %57
  store i32 0, ptr %58, align 4
  %59 = add nsw i32 %23, %41
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [4 x i8], ptr %22, i64 %60
  store i32 0, ptr %61, align 4
  %62 = sub nsw i32 %23, %41
  %63 = sext i32 %62 to i64
  %64 = getelementptr [4 x i8], ptr %24, i64 %63
  %65 = getelementptr i8, ptr %64, i64 28
  store i32 0, ptr %65, align 4
  br i1 %25, label %66, label %79

66:                                               ; preds = %56
  call void @Try(i32 noundef %27, ptr noundef %26, ptr noundef %22, ptr noundef %28, ptr noundef %24, ptr noundef %29)
  %67 = load i32, ptr %26, align 4
  %.not4 = icmp eq i32 %67, 0
  br i1 %.not4, label %68, label %78

68:                                               ; preds = %66
  %69 = sext i32 %41 to i64
  %70 = getelementptr inbounds [4 x i8], ptr %28, i64 %69
  store i32 1, ptr %70, align 4
  %71 = add nsw i32 %31, %41
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [4 x i8], ptr %30, i64 %72
  store i32 1, ptr %73, align 4
  %74 = sub nsw i32 %31, %41
  %75 = sext i32 %74 to i64
  %76 = getelementptr [4 x i8], ptr %32, i64 %75
  %77 = getelementptr i8, ptr %76, i64 28
  store i32 1, ptr %77, align 4
  br label %78

78:                                               ; preds = %68, %66
  br label %80

79:                                               ; preds = %56
  store i32 1, ptr %26, align 4
  br label %80

80:                                               ; preds = %79, %78
  br label %81

81:                                               ; preds = %80, %50, %45, %40
  br label %33, !llvm.loop !7

82:                                               ; preds = %38
  store i32 %34, ptr %13, align 4
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
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi i32 [ %8, %7 ], [ 1, %1 ]
  %5 = icmp samesign ult i32 %4, 51
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  call void @Doit()
  br label %7

7:                                                ; preds = %6
  %8 = add nuw nsw i32 %4, 1
  br label %3, !llvm.loop !10

9:                                                ; preds = %3
  %10 = load i32, ptr %2, align 4
  %11 = add nsw i32 %10, 1
  %12 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %11) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %5, %0
  %2 = phi i32 [ %6, %5 ], [ 0, %0 ]
  %3 = icmp samesign ult i32 %2, 100
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  call void @Queens(i32 noundef %2)
  br label %5

5:                                                ; preds = %4
  %6 = add nuw nsw i32 %2, 1
  br label %1, !llvm.loop !11

7:                                                ; preds = %1
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
