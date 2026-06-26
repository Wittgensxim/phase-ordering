; ModuleID = 'results\cmp_test\cmp_random_O2\Shootout_nestedloop\Shootout_nestedloop.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Shootout/nestedloop.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  %14 = icmp eq i32 %0, 2
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = getelementptr inbounds ptr, ptr %1, i64 1
  %17 = load ptr, ptr %16, align 8
  %18 = call i32 @atoi(ptr noundef %17)
  br label %20

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi i32 [ %18, %15 ], [ 46, %19 ]
  store i32 %21, ptr %6, align 4
  store i32 0, ptr %13, align 4
  store i32 0, ptr %7, align 4
  br label %22

22:                                               ; preds = %57, %20
  %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa48 = phi i32 [ %.lcssa27.lcssa15.lcssa24.lcssa35, %57 ], [ 0, %20 ]
  %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa46 = phi i32 [ %.lcssa6.lcssa13.lcssa22.lcssa33, %57 ], [ undef, %20 ]
  %.lcssa411.lcssa20.lcssa31.lcssa44 = phi i32 [ %.lcssa411.lcssa20.lcssa31, %57 ], [ undef, %20 ]
  %.lcssa918.lcssa29.lcssa43 = phi i32 [ %.lcssa918.lcssa29, %57 ], [ undef, %20 ]
  %.lcssa1628.lcssa41 = phi i32 [ %.lcssa1628, %57 ], [ undef, %20 ]
  %.lcssa2639 = phi i32 [ %27, %57 ], [ undef, %20 ]
  %23 = phi i32 [ %58, %57 ], [ 0, %20 ]
  %24 = icmp slt i32 %23, %21
  br i1 %24, label %25, label %59

25:                                               ; preds = %22
  br label %26

26:                                               ; preds = %55, %25
  %.lcssa27.lcssa15.lcssa24.lcssa35 = phi i32 [ %.lcssa27.lcssa15.lcssa24, %55 ], [ %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa48, %25 ]
  %.lcssa6.lcssa13.lcssa22.lcssa33 = phi i32 [ %.lcssa6.lcssa13.lcssa22, %55 ], [ %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa46, %25 ]
  %.lcssa411.lcssa20.lcssa31 = phi i32 [ %.lcssa411.lcssa20, %55 ], [ %.lcssa411.lcssa20.lcssa31.lcssa44, %25 ]
  %.lcssa918.lcssa29 = phi i32 [ %.lcssa918, %55 ], [ %.lcssa918.lcssa29.lcssa43, %25 ]
  %.lcssa1628 = phi i32 [ %31, %55 ], [ %.lcssa1628.lcssa41, %25 ]
  %27 = phi i32 [ %56, %55 ], [ 0, %25 ]
  %28 = icmp slt i32 %27, %21
  br i1 %28, label %29, label %57

29:                                               ; preds = %26
  br label %30

30:                                               ; preds = %53, %29
  %.lcssa27.lcssa15.lcssa24 = phi i32 [ %.lcssa27.lcssa15, %53 ], [ %.lcssa27.lcssa15.lcssa24.lcssa35, %29 ]
  %.lcssa6.lcssa13.lcssa22 = phi i32 [ %.lcssa6.lcssa13, %53 ], [ %.lcssa6.lcssa13.lcssa22.lcssa33, %29 ]
  %.lcssa411.lcssa20 = phi i32 [ %.lcssa411, %53 ], [ %.lcssa411.lcssa20.lcssa31, %29 ]
  %.lcssa918 = phi i32 [ %35, %53 ], [ %.lcssa918.lcssa29, %29 ]
  %31 = phi i32 [ %54, %53 ], [ 0, %29 ]
  %32 = icmp slt i32 %31, %21
  br i1 %32, label %33, label %55

33:                                               ; preds = %30
  br label %34

34:                                               ; preds = %51, %33
  %.lcssa27.lcssa15 = phi i32 [ %.lcssa27, %51 ], [ %.lcssa27.lcssa15.lcssa24, %33 ]
  %.lcssa6.lcssa13 = phi i32 [ %.lcssa6, %51 ], [ %.lcssa6.lcssa13.lcssa22, %33 ]
  %.lcssa411 = phi i32 [ %39, %51 ], [ %.lcssa411.lcssa20, %33 ]
  %35 = phi i32 [ %52, %51 ], [ 0, %33 ]
  %36 = icmp slt i32 %35, %21
  br i1 %36, label %37, label %53

37:                                               ; preds = %34
  br label %38

38:                                               ; preds = %49, %37
  %.lcssa27 = phi i32 [ %43, %49 ], [ %.lcssa27.lcssa15, %37 ]
  %.lcssa6 = phi i32 [ %44, %49 ], [ %.lcssa6.lcssa13, %37 ]
  %39 = phi i32 [ %50, %49 ], [ 0, %37 ]
  %40 = icmp slt i32 %39, %21
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %46, %41
  %43 = phi i32 [ %47, %46 ], [ %.lcssa27, %41 ]
  %44 = phi i32 [ %48, %46 ], [ 0, %41 ]
  %45 = icmp slt i32 %44, %21
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = add nsw i32 %43, 1
  %48 = add nsw i32 %44, 1
  br label %42, !llvm.loop !7

49:                                               ; preds = %42
  %50 = add nsw i32 %39, 1
  br label %38, !llvm.loop !9

51:                                               ; preds = %38
  %52 = add nsw i32 %35, 1
  br label %34, !llvm.loop !10

53:                                               ; preds = %34
  %54 = add nsw i32 %31, 1
  br label %30, !llvm.loop !11

55:                                               ; preds = %30
  %56 = add nsw i32 %27, 1
  br label %26, !llvm.loop !12

57:                                               ; preds = %26
  %58 = add nsw i32 %23, 1
  br label %22, !llvm.loop !13

59:                                               ; preds = %22
  store i32 %23, ptr %7, align 4
  store i32 %.lcssa2639, ptr %8, align 4
  store i32 %.lcssa1628.lcssa41, ptr %9, align 4
  store i32 %.lcssa918.lcssa29.lcssa43, ptr %10, align 4
  store i32 %.lcssa411.lcssa20.lcssa31.lcssa44, ptr %11, align 4
  store i32 %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa46, ptr %12, align 4
  store i32 %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa48, ptr %13, align 4
  %60 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa48)
  ret i32 0
}

declare dso_local i32 @atoi(ptr noundef) #1

declare dso_local i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Shootout/nestedloop.c", directory: "E:/Phase Ordering/v3")
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
!13 = distinct !{!13, !8}
