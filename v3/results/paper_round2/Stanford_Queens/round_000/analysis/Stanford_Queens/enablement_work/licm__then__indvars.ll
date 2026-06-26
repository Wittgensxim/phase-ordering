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
  %5 = load i32, ptr @seed, align 4
  ret i32 %5
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
  %14 = load ptr, ptr %8, align 8
  store i32 0, ptr %14, align 4
  %15 = load ptr, ptr %8, align 8
  %16 = load ptr, ptr %8, align 8
  %17 = load ptr, ptr %10, align 8
  %18 = load ptr, ptr %9, align 8
  %19 = load i32, ptr %7, align 4
  %20 = load ptr, ptr %11, align 8
  %21 = load i32, ptr %7, align 4
  %22 = load ptr, ptr %12, align 8
  %23 = load i32, ptr %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %22, i64 %24
  %26 = load ptr, ptr %10, align 8
  %27 = load ptr, ptr %9, align 8
  %28 = load i32, ptr %7, align 4
  %29 = load ptr, ptr %11, align 8
  %30 = load i32, ptr %7, align 4
  %31 = load i32, ptr %7, align 4
  %32 = icmp slt i32 %31, 8
  %33 = load ptr, ptr %8, align 8
  %34 = load i32, ptr %7, align 4
  %35 = add nsw i32 %34, 1
  %36 = load ptr, ptr %8, align 8
  %37 = load ptr, ptr %9, align 8
  %38 = load ptr, ptr %10, align 8
  %39 = load ptr, ptr %11, align 8
  %40 = load ptr, ptr %12, align 8
  %41 = load ptr, ptr %8, align 8
  %42 = load ptr, ptr %10, align 8
  %43 = load ptr, ptr %9, align 8
  %44 = load i32, ptr %7, align 4
  %45 = load ptr, ptr %11, align 8
  %46 = load i32, ptr %7, align 4
  %.promoted = load i32, ptr %13, align 4
  br label %47

47:                                               ; preds = %101, %6
  %48 = phi i32 [ %102, %101 ], [ %.promoted, %6 ]
  %49 = load i32, ptr %15, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = icmp ne i32 %48, 8
  br label %53

53:                                               ; preds = %51, %47
  %54 = phi i1 [ false, %47 ], [ %52, %51 ]
  br i1 %54, label %55, label %103

55:                                               ; preds = %53
  %56 = add nsw i32 %48, 1
  store i32 0, ptr %16, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, ptr %17, i64 %57
  %59 = load i32, ptr %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %101

61:                                               ; preds = %55
  %62 = add nsw i32 %19, %56
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, ptr %18, i64 %63
  %65 = load i32, ptr %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %101

67:                                               ; preds = %61
  %68 = sub nsw i32 %21, %56
  %69 = add nsw i32 %68, 7
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, ptr %20, i64 %70
  %72 = load i32, ptr %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %101

74:                                               ; preds = %67
  store i32 %56, ptr %25, align 4
  %75 = sext i32 %56 to i64
  %76 = getelementptr inbounds i32, ptr %26, i64 %75
  store i32 0, ptr %76, align 4
  %77 = add nsw i32 %28, %56
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, ptr %27, i64 %78
  store i32 0, ptr %79, align 4
  %80 = sub nsw i32 %30, %56
  %81 = add nsw i32 %80, 7
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, ptr %29, i64 %82
  store i32 0, ptr %83, align 4
  br i1 %32, label %84, label %98

84:                                               ; preds = %74
  call void @Try(i32 noundef %35, ptr noundef %36, ptr noundef %37, ptr noundef %38, ptr noundef %39, ptr noundef %40)
  %85 = load i32, ptr %41, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %84
  %88 = sext i32 %56 to i64
  %89 = getelementptr inbounds i32, ptr %42, i64 %88
  store i32 1, ptr %89, align 4
  %90 = add nsw i32 %44, %56
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, ptr %43, i64 %91
  store i32 1, ptr %92, align 4
  %93 = sub nsw i32 %46, %56
  %94 = add nsw i32 %93, 7
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, ptr %45, i64 %95
  store i32 1, ptr %96, align 4
  br label %97

97:                                               ; preds = %87, %84
  br label %99

98:                                               ; preds = %74
  store i32 1, ptr %33, align 4
  br label %99

99:                                               ; preds = %98, %97
  %100 = phi i32 [ %56, %98 ], [ %56, %97 ]
  br label %101

101:                                              ; preds = %99, %67, %61, %55
  %102 = phi i32 [ %100, %99 ], [ %56, %67 ], [ %56, %61 ], [ %56, %55 ]
  br label %47, !llvm.loop !7

103:                                              ; preds = %53
  %.lcssa = phi i32 [ %48, %53 ]
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
  store i32 -7, ptr %1, align 4
  %.promoted = load i32, ptr %1, align 4
  %7 = sext i32 %.promoted to i64
  %smax = call i32 @llvm.smax.i32(i32 %.promoted, i32 17)
  %wide.trip.count = sext i32 %smax to i64
  br label %8

8:                                                ; preds = %24, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %24 ], [ %7, %0 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %9, label %25

9:                                                ; preds = %8
  %10 = icmp sge i64 %indvars.iv, 1
  br i1 %10, label %11, label %15

11:                                               ; preds = %9
  %12 = icmp sle i64 %indvars.iv, 8
  br i1 %12, label %13, label %15

13:                                               ; preds = %11
  %14 = getelementptr inbounds [9 x i32], ptr %3, i64 0, i64 %indvars.iv
  store i32 1, ptr %14, align 4
  br label %15

15:                                               ; preds = %13, %11, %9
  %16 = icmp sge i64 %indvars.iv, 2
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = getelementptr inbounds [17 x i32], ptr %4, i64 0, i64 %indvars.iv
  store i32 1, ptr %18, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = icmp sle i64 %indvars.iv, 7
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = add nsw i64 %indvars.iv, 7
  %23 = getelementptr inbounds [15 x i32], ptr %5, i64 0, i64 %22
  store i32 1, ptr %23, align 4
  br label %24

24:                                               ; preds = %21, %19
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %8, !llvm.loop !9

25:                                               ; preds = %8
  %.lcssa.wide = phi i64 [ %indvars.iv, %8 ]
  %26 = trunc nsw i64 %.lcssa.wide to i32
  store i32 %26, ptr %1, align 4
  %27 = getelementptr inbounds [17 x i32], ptr %4, i64 0, i64 0
  %28 = getelementptr inbounds [9 x i32], ptr %3, i64 0, i64 0
  %29 = getelementptr inbounds [15 x i32], ptr %5, i64 0, i64 0
  %30 = getelementptr inbounds [9 x i32], ptr %6, i64 0, i64 0
  call void @Try(i32 noundef 1, ptr noundef %2, ptr noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef %30)
  %31 = load i32, ptr %2, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %25
  %34 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %35

35:                                               ; preds = %33, %25
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Queens(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  store i32 1, ptr %3, align 4
  %.promoted = load i32, ptr %3, align 4
  %smax = call i32 @llvm.smax.i32(i32 %.promoted, i32 51)
  br label %4

4:                                                ; preds = %7, %1
  %5 = phi i32 [ %8, %7 ], [ %.promoted, %1 ]
  %exitcond = icmp ne i32 %5, %smax
  br i1 %exitcond, label %6, label %9

6:                                                ; preds = %4
  call void @Doit()
  br label %7

7:                                                ; preds = %6
  %8 = add i32 %5, 1
  br label %4, !llvm.loop !10

9:                                                ; preds = %4
  store i32 %smax, ptr %3, align 4
  %10 = load i32, ptr %2, align 4
  %11 = add nsw i32 %10, 1
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %11)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  %.promoted = load i32, ptr %2, align 4
  %smax = call i32 @llvm.smax.i32(i32 %.promoted, i32 100)
  br label %3

3:                                                ; preds = %6, %0
  %4 = phi i32 [ %7, %6 ], [ %.promoted, %0 ]
  %exitcond = icmp ne i32 %4, %smax
  br i1 %exitcond, label %5, label %8

5:                                                ; preds = %3
  call void @Queens(i32 noundef %4)
  br label %6

6:                                                ; preds = %5
  %7 = add i32 %4, 1
  br label %3, !llvm.loop !11

8:                                                ; preds = %3
  %.lcssa = phi i32 [ %4, %3 ]
  store i32 %.lcssa, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
