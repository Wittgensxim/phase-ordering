; ModuleID = 'results\test_baseline_all\Stanford_Quicksort\Stanford_Quicksort.ll'
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
  br i1 true, label %.lr.ph, label %37

.lr.ph:                                           ; preds = %0
  br label %2

2:                                                ; preds = %.lr.ph, %33
  %3 = call i32 @Rand()
  %.fr = freeze i32 %3
  %4 = srem i32 %.fr, 100000
  %5 = add nsw i32 %4, -50000
  %6 = load i32, ptr %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @sortlist, i64 %7
  store i32 %5, ptr %8, align 4
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds [4 x i8], ptr @sortlist, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = load i32, ptr @biggest, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32, ptr %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x i8], ptr @sortlist, i64 %16
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr @biggest, align 4
  br label %32

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i8], ptr @sortlist, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = load i32, ptr @littlest, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load i32, ptr %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [4 x i8], ptr @sortlist, i64 %28
  %30 = load i32, ptr %29, align 4
  store i32 %30, ptr @littlest, align 4
  br label %31

31:                                               ; preds = %26, %19
  br label %32

32:                                               ; preds = %31, %14
  br label %33

33:                                               ; preds = %32
  %34 = load i32, ptr %1, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %1, align 4
  %36 = icmp slt i32 %34, 5000
  br i1 %36, label %2, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %33
  br label %37

37:                                               ; preds = %._crit_edge, %0
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

16:                                               ; preds = %76, %3
  %17 = load ptr, ptr %4, align 8
  %18 = load i32, ptr %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr %17, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = load i32, ptr %9, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %.lr.ph, label %33

.lr.ph:                                           ; preds = %16
  br label %24

24:                                               ; preds = %.lr.ph, %24
  %25 = load i32, ptr %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %7, align 4
  %27 = load ptr, ptr %4, align 8
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds [4 x i8], ptr %27, i64 %28
  %30 = load i32, ptr %29, align 4
  %31 = load i32, ptr %9, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %24, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %24
  br label %33

33:                                               ; preds = %._crit_edge, %16
  %34 = load i32, ptr %9, align 4
  %35 = load ptr, ptr %4, align 8
  %36 = load i32, ptr %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [4 x i8], ptr %35, i64 %37
  %39 = load i32, ptr %38, align 4
  %40 = icmp slt i32 %34, %39
  br i1 %40, label %.lr.ph2, label %50

.lr.ph2:                                          ; preds = %33
  br label %41

41:                                               ; preds = %.lr.ph2, %41
  %42 = load i32, ptr %8, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, ptr %8, align 4
  %44 = load i32, ptr %9, align 4
  %45 = load ptr, ptr %4, align 8
  %46 = sext i32 %43 to i64
  %47 = getelementptr inbounds [4 x i8], ptr %45, i64 %46
  %48 = load i32, ptr %47, align 4
  %49 = icmp slt i32 %44, %48
  br i1 %49, label %41, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %41
  br label %50

50:                                               ; preds = %._crit_edge3, %33
  %51 = load i32, ptr %7, align 4
  %52 = load i32, ptr %8, align 4
  %.not = icmp sgt i32 %51, %52
  br i1 %.not, label %75, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr %4, align 8
  %55 = load i32, ptr %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [4 x i8], ptr %54, i64 %56
  %58 = load i32, ptr %57, align 4
  store i32 %58, ptr %10, align 4
  %59 = load i32, ptr %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [4 x i8], ptr %54, i64 %60
  %62 = load i32, ptr %61, align 4
  %63 = load ptr, ptr %4, align 8
  %64 = load i32, ptr %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [4 x i8], ptr %63, i64 %65
  store i32 %62, ptr %66, align 4
  %67 = load i32, ptr %10, align 4
  %68 = load i32, ptr %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [4 x i8], ptr %63, i64 %69
  store i32 %67, ptr %70, align 4
  %71 = load i32, ptr %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, ptr %7, align 4
  %73 = load i32, ptr %8, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, ptr %8, align 4
  br label %75

75:                                               ; preds = %53, %50
  br label %76

76:                                               ; preds = %75
  %77 = load i32, ptr %7, align 4
  %78 = load i32, ptr %8, align 4
  %.not4 = icmp sgt i32 %77, %78
  br i1 %.not4, label %79, label %16, !llvm.loop !11

79:                                               ; preds = %76
  %80 = load i32, ptr %5, align 4
  %81 = load i32, ptr %8, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load ptr, ptr %4, align 8
  %85 = load i32, ptr %5, align 4
  %86 = load i32, ptr %8, align 4
  call void @Quicksort(ptr noundef %84, i32 noundef %85, i32 noundef %86)
  br label %87

87:                                               ; preds = %83, %79
  %88 = load i32, ptr %7, align 4
  %89 = load i32, ptr %6, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load ptr, ptr %4, align 8
  %93 = load i32, ptr %7, align 4
  %94 = load i32, ptr %6, align 4
  call void @Quicksort(ptr noundef %92, i32 noundef %93, i32 noundef %94)
  br label %95

95:                                               ; preds = %91, %87
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
  %10 = load i32, ptr %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr [4 x i8], ptr @sortlist, i64 %11
  %13 = getelementptr i8, ptr %12, i64 4
  %14 = load i32, ptr %13, align 4
  %15 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %14) #3
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br i1 true, label %.lr.ph, label %8

.lr.ph:                                           ; preds = %0
  br label %2

2:                                                ; preds = %.lr.ph, %4
  %3 = load i32, ptr %1, align 4
  call void @Quick(i32 noundef %3)
  br label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %1, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr %1, align 4
  %7 = icmp slt i32 %5, 99
  br i1 %7, label %2, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %4
  br label %8

8:                                                ; preds = %._crit_edge, %0
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
