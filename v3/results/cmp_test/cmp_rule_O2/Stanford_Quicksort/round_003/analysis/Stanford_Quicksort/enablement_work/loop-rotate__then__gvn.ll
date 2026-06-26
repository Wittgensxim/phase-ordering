; ModuleID = 'results\cmp_test\cmp_rule_O2\Stanford_Quicksort\round_002\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Quicksort.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.element = type { i32, i32 }
%struct.complex = type { float, float }

@seed = dso_local global i32 0, align 4
@biggest = dso_local global i32 0, align 4
@littlest = dso_local global i32 0, align 4
@sortlist = dso_local global [5001 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [18 x i8] c" Error in Quick.\0A\00", align 1
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
@top = dso_local global i32 0, align 4
@z = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@w = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@e = dso_local global [130 x %struct.complex] zeroinitializer, align 16
@zr = dso_local global float 0.000000e+00, align 4
@zi = dso_local global float 0.000000e+00, align 4
@str = private unnamed_addr constant [17 x i8] c" Error in Quick.\00", align 1

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
define dso_local void @Initarr() #0 {
  %1 = alloca i32, align 4
  call void @Initrand()
  store i32 0, ptr @biggest, align 4
  store i32 0, ptr @littlest, align 4
  store i32 1, ptr %1, align 4
  br label %2

2:                                                ; preds = %0, %17
  %3 = phi i32 [ 1, %0 ], [ %18, %17 ]
  %4 = call i32 @Rand()
  %.fr = freeze i32 %4
  %5 = srem i32 %.fr, 100000
  %6 = add nsw i32 %5, -50000
  %7 = sext i32 %3 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @sortlist, i64 %7
  store i32 %6, ptr %8, align 4
  %9 = load i32, ptr @biggest, align 4
  %10 = icmp sgt i32 %6, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 %6, ptr @biggest, align 4
  br label %17

12:                                               ; preds = %2
  %13 = load i32, ptr @littlest, align 4
  %14 = icmp slt i32 %6, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 %6, ptr @littlest, align 4
  br label %16

16:                                               ; preds = %15, %12
  br label %17

17:                                               ; preds = %16, %11
  %18 = add nsw i32 %3, 1
  store i32 %18, ptr %1, align 4
  %19 = icmp slt i32 %18, 5001
  br i1 %19, label %2, label %20, !llvm.loop !7

20:                                               ; preds = %17
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Quicksort(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  store i32 %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  %11 = add nsw i32 %1, %2
  %12 = sdiv i32 %11, 2
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr %0, i64 %13
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %9, align 4
  br label %16

16:                                               ; preds = %66, %3
  %17 = phi i32 [ %67, %66 ], [ %2, %3 ]
  %18 = phi i32 [ %68, %66 ], [ %1, %3 ]
  %19 = phi ptr [ %69, %66 ], [ %0, %3 ]
  %20 = phi ptr [ %70, %66 ], [ %0, %3 ]
  %21 = phi i32 [ %49, %66 ], [ %15, %3 ]
  %22 = sext i32 %18 to i64
  %23 = getelementptr inbounds [4 x i8], ptr %20, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = icmp slt i32 %24, %21
  br i1 %25, label %.lr.ph, label %33

.lr.ph:                                           ; preds = %16
  br label %26

26:                                               ; preds = %.lr.ph, %26
  %27 = phi i32 [ %18, %.lr.ph ], [ %28, %26 ]
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4 x i8], ptr %20, i64 %29
  %31 = load i32, ptr %30, align 4
  %32 = icmp slt i32 %31, %21
  br i1 %32, label %26, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %26
  br label %33

33:                                               ; preds = %._crit_edge, %16
  %34 = phi i32 [ %28, %._crit_edge ], [ %18, %16 ]
  %35 = sext i32 %17 to i64
  %36 = getelementptr inbounds [4 x i8], ptr %20, i64 %35
  %37 = load i32, ptr %36, align 4
  %38 = icmp slt i32 %21, %37
  br i1 %38, label %.lr.ph2, label %46

.lr.ph2:                                          ; preds = %33
  br label %39

39:                                               ; preds = %.lr.ph2, %39
  %40 = phi i32 [ %17, %.lr.ph2 ], [ %41, %39 ]
  %41 = add nsw i32 %40, -1
  store i32 %41, ptr %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [4 x i8], ptr %19, i64 %42
  %44 = load i32, ptr %43, align 4
  %45 = icmp slt i32 %15, %44
  br i1 %45, label %39, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %39
  br label %46

46:                                               ; preds = %._crit_edge3, %33
  %47 = phi i32 [ %41, %._crit_edge3 ], [ %17, %33 ]
  %48 = phi ptr [ %19, %._crit_edge3 ], [ %20, %33 ]
  %49 = phi i32 [ %15, %._crit_edge3 ], [ %21, %33 ]
  %.not = icmp sgt i32 %34, %47
  br i1 %.not, label %66, label %50

50:                                               ; preds = %46
  %51 = sext i32 %34 to i64
  %52 = getelementptr inbounds [4 x i8], ptr %48, i64 %51
  %53 = load i32, ptr %52, align 4
  store i32 %53, ptr %10, align 4
  %54 = sext i32 %47 to i64
  %55 = getelementptr inbounds [4 x i8], ptr %19, i64 %54
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds [4 x i8], ptr %19, i64 %51
  store i32 %56, ptr %57, align 4
  %58 = load i32, ptr %10, align 4
  %59 = load ptr, ptr %4, align 8
  %60 = load i32, ptr %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [4 x i8], ptr %59, i64 %61
  store i32 %58, ptr %62, align 4
  %63 = load i32, ptr %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, ptr %7, align 4
  %65 = add nsw i32 %60, -1
  store i32 %65, ptr %8, align 4
  br label %66

66:                                               ; preds = %50, %46
  %67 = phi i32 [ %65, %50 ], [ %47, %46 ]
  %68 = phi i32 [ %64, %50 ], [ %34, %46 ]
  %69 = phi ptr [ %59, %50 ], [ %19, %46 ]
  %70 = phi ptr [ %59, %50 ], [ %48, %46 ]
  %.not1 = icmp sgt i32 %68, %67
  br i1 %.not1, label %71, label %16, !llvm.loop !11

71:                                               ; preds = %66
  %72 = load i32, ptr %5, align 4
  %73 = icmp slt i32 %72, %67
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  call void @Quicksort(ptr noundef %69, i32 noundef %72, i32 noundef %67)
  %.pre = load i32, ptr %7, align 4
  br label %75

75:                                               ; preds = %74, %71
  %76 = phi i32 [ %.pre, %74 ], [ %68, %71 ]
  %77 = load i32, ptr %6, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load ptr, ptr %4, align 8
  call void @Quicksort(ptr noundef %80, i32 noundef %76, i32 noundef %77)
  br label %81

81:                                               ; preds = %79, %75
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Quick(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @Initarr()
  call void @Quicksort(ptr noundef nonnull @sortlist, i32 noundef 1, i32 noundef 5000)
  %3 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4
  %4 = load i32, ptr @littlest, align 4
  %.not = icmp eq i32 %3, %4
  br i1 %.not, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 20000), align 16
  %7 = load i32, ptr @biggest, align 4
  %.not1 = icmp eq i32 %6, %7
  br i1 %.not1, label %9, label %8

8:                                                ; preds = %5, %1
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %9

9:                                                ; preds = %8, %5
  %10 = sext i32 %0 to i64
  %11 = getelementptr [4 x i8], ptr @sortlist, i64 %10
  %12 = getelementptr i8, ptr %11, i64 4
  %13 = load i32, ptr %12, align 4
  %14 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %13) #3
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %2

2:                                                ; preds = %0, %2
  %3 = phi i32 [ 0, %0 ], [ %4, %2 ]
  call void @Quick(i32 noundef %3)
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %1, align 4
  %5 = icmp slt i32 %4, 100
  br i1 %5, label %2, label %6, !llvm.loop !12

6:                                                ; preds = %2
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
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Quicksort.c", directory: "E:/Phase Ordering/v3")
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
!12 = distinct !{!12, !8}
