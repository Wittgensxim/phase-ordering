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
  %14 = load i32, ptr %4, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8
  %20 = call i32 @atoi(ptr noundef %19)
  br label %22

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21, %16
  %23 = phi i32 [ %20, %16 ], [ 46, %21 ]
  store i32 %23, ptr %6, align 4
  store i32 0, ptr %13, align 4
  store i32 0, ptr %7, align 4
  %24 = load i32, ptr %6, align 4
  %25 = load i32, ptr %6, align 4
  %26 = load i32, ptr %6, align 4
  %27 = load i32, ptr %6, align 4
  %28 = load i32, ptr %6, align 4
  %29 = load i32, ptr %6, align 4
  %.promoted36 = load i32, ptr %7, align 4
  %.promoted38 = load i32, ptr %8, align 4
  %.promoted40 = load i32, ptr %9, align 4
  %.promoted42 = load i32, ptr %10, align 4
  %.promoted = load i32, ptr %11, align 4
  %.promoted45 = load i32, ptr %12, align 4
  %.promoted47 = load i32, ptr %13, align 4
  %smax = call i32 @llvm.smax.i32(i32 %29, i32 0)
  %smax49 = call i32 @llvm.smax.i32(i32 %28, i32 0)
  %30 = mul i32 %smax49, %smax
  %smax50 = call i32 @llvm.smax.i32(i32 %27, i32 0)
  %smax52 = call i32 @llvm.smax.i32(i32 %26, i32 0)
  %smax54 = call i32 @llvm.smax.i32(i32 %25, i32 0)
  %smax56 = call i32 @llvm.smax.i32(i32 %.promoted36, i32 %24)
  br label %31

31:                                               ; preds = %63, %22
  %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa48 = phi i32 [ %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa, %63 ], [ %.promoted47, %22 ]
  %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa46 = phi i32 [ %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa, %63 ], [ %.promoted45, %22 ]
  %.lcssa411.lcssa20.lcssa31.lcssa44 = phi i32 [ %.lcssa411.lcssa20.lcssa31.lcssa, %63 ], [ %.promoted, %22 ]
  %.lcssa918.lcssa29.lcssa43 = phi i32 [ %.lcssa918.lcssa29.lcssa, %63 ], [ %.promoted42, %22 ]
  %.lcssa1628.lcssa41 = phi i32 [ %.lcssa1628.lcssa, %63 ], [ %.promoted40, %22 ]
  %.lcssa2639 = phi i32 [ %smax54, %63 ], [ %.promoted38, %22 ]
  %32 = phi i32 [ %64, %63 ], [ %.promoted36, %22 ]
  %exitcond57 = icmp ne i32 %32, %smax56
  br i1 %exitcond57, label %33, label %65

33:                                               ; preds = %31
  br label %34

34:                                               ; preds = %60, %33
  %.lcssa27.lcssa15.lcssa24.lcssa35 = phi i32 [ %.lcssa27.lcssa15.lcssa24.lcssa, %60 ], [ %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa48, %33 ]
  %.lcssa6.lcssa13.lcssa22.lcssa33 = phi i32 [ %.lcssa6.lcssa13.lcssa22.lcssa, %60 ], [ %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa46, %33 ]
  %.lcssa411.lcssa20.lcssa31 = phi i32 [ %.lcssa411.lcssa20.lcssa, %60 ], [ %.lcssa411.lcssa20.lcssa31.lcssa44, %33 ]
  %.lcssa918.lcssa29 = phi i32 [ %.lcssa918.lcssa, %60 ], [ %.lcssa918.lcssa29.lcssa43, %33 ]
  %.lcssa1628 = phi i32 [ %smax52, %60 ], [ %.lcssa1628.lcssa41, %33 ]
  %35 = phi i32 [ %61, %60 ], [ 0, %33 ]
  %exitcond55 = icmp ne i32 %35, %smax54
  br i1 %exitcond55, label %36, label %62

36:                                               ; preds = %34
  br label %37

37:                                               ; preds = %57, %36
  %.lcssa27.lcssa15.lcssa24 = phi i32 [ %.lcssa27.lcssa15.lcssa, %57 ], [ %.lcssa27.lcssa15.lcssa24.lcssa35, %36 ]
  %.lcssa6.lcssa13.lcssa22 = phi i32 [ %.lcssa6.lcssa13.lcssa, %57 ], [ %.lcssa6.lcssa13.lcssa22.lcssa33, %36 ]
  %.lcssa411.lcssa20 = phi i32 [ %.lcssa411.lcssa, %57 ], [ %.lcssa411.lcssa20.lcssa31, %36 ]
  %.lcssa918 = phi i32 [ %smax50, %57 ], [ %.lcssa918.lcssa29, %36 ]
  %38 = phi i32 [ %58, %57 ], [ 0, %36 ]
  %exitcond53 = icmp ne i32 %38, %smax52
  br i1 %exitcond53, label %39, label %59

39:                                               ; preds = %37
  br label %40

40:                                               ; preds = %54, %39
  %.lcssa27.lcssa15 = phi i32 [ %53, %54 ], [ %.lcssa27.lcssa15.lcssa24, %39 ]
  %.lcssa6.lcssa13 = phi i32 [ %.lcssa6.lcssa, %54 ], [ %.lcssa6.lcssa13.lcssa22, %39 ]
  %.lcssa411 = phi i32 [ %smax49, %54 ], [ %.lcssa411.lcssa20, %39 ]
  %41 = phi i32 [ %55, %54 ], [ 0, %39 ]
  %exitcond51 = icmp ne i32 %41, %smax50
  br i1 %exitcond51, label %42, label %56

42:                                               ; preds = %40
  br label %43

43:                                               ; preds = %50, %42
  %.lcssa6 = phi i32 [ %smax, %50 ], [ %.lcssa6.lcssa13, %42 ]
  %44 = phi i32 [ %51, %50 ], [ 0, %42 ]
  %exitcond = icmp ne i32 %44, %smax49
  br i1 %exitcond, label %45, label %52

45:                                               ; preds = %43
  br label %46

46:                                               ; preds = %48, %45
  br i1 false, label %47, label %49

47:                                               ; preds = %46
  br label %48

48:                                               ; preds = %47
  br label %46, !llvm.loop !7

49:                                               ; preds = %46
  br label %50

50:                                               ; preds = %49
  %51 = add nuw i32 %44, 1
  br label %43, !llvm.loop !9

52:                                               ; preds = %43
  %.lcssa6.lcssa = phi i32 [ %.lcssa6, %43 ]
  %53 = add i32 %30, %.lcssa27.lcssa15
  br label %54

54:                                               ; preds = %52
  %55 = add nuw i32 %41, 1
  br label %40, !llvm.loop !10

56:                                               ; preds = %40
  %.lcssa27.lcssa15.lcssa = phi i32 [ %.lcssa27.lcssa15, %40 ]
  %.lcssa6.lcssa13.lcssa = phi i32 [ %.lcssa6.lcssa13, %40 ]
  %.lcssa411.lcssa = phi i32 [ %.lcssa411, %40 ]
  br label %57

57:                                               ; preds = %56
  %58 = add nuw i32 %38, 1
  br label %37, !llvm.loop !11

59:                                               ; preds = %37
  %.lcssa27.lcssa15.lcssa24.lcssa = phi i32 [ %.lcssa27.lcssa15.lcssa24, %37 ]
  %.lcssa6.lcssa13.lcssa22.lcssa = phi i32 [ %.lcssa6.lcssa13.lcssa22, %37 ]
  %.lcssa411.lcssa20.lcssa = phi i32 [ %.lcssa411.lcssa20, %37 ]
  %.lcssa918.lcssa = phi i32 [ %.lcssa918, %37 ]
  br label %60

60:                                               ; preds = %59
  %61 = add nuw i32 %35, 1
  br label %34, !llvm.loop !12

62:                                               ; preds = %34
  %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa = phi i32 [ %.lcssa27.lcssa15.lcssa24.lcssa35, %34 ]
  %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa = phi i32 [ %.lcssa6.lcssa13.lcssa22.lcssa33, %34 ]
  %.lcssa411.lcssa20.lcssa31.lcssa = phi i32 [ %.lcssa411.lcssa20.lcssa31, %34 ]
  %.lcssa918.lcssa29.lcssa = phi i32 [ %.lcssa918.lcssa29, %34 ]
  %.lcssa1628.lcssa = phi i32 [ %.lcssa1628, %34 ]
  br label %63

63:                                               ; preds = %62
  %64 = add i32 %32, 1
  br label %31, !llvm.loop !13

65:                                               ; preds = %31
  %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa48.lcssa = phi i32 [ %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa48, %31 ]
  %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa46.lcssa = phi i32 [ %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa46, %31 ]
  %.lcssa411.lcssa20.lcssa31.lcssa44.lcssa = phi i32 [ %.lcssa411.lcssa20.lcssa31.lcssa44, %31 ]
  %.lcssa918.lcssa29.lcssa43.lcssa = phi i32 [ %.lcssa918.lcssa29.lcssa43, %31 ]
  %.lcssa1628.lcssa41.lcssa = phi i32 [ %.lcssa1628.lcssa41, %31 ]
  %.lcssa2639.lcssa = phi i32 [ %.lcssa2639, %31 ]
  store i32 %smax56, ptr %7, align 4
  store i32 %.lcssa2639.lcssa, ptr %8, align 4
  store i32 %.lcssa1628.lcssa41.lcssa, ptr %9, align 4
  store i32 %.lcssa918.lcssa29.lcssa43.lcssa, ptr %10, align 4
  store i32 %.lcssa411.lcssa20.lcssa31.lcssa44.lcssa, ptr %11, align 4
  store i32 %.lcssa6.lcssa13.lcssa22.lcssa33.lcssa46.lcssa, ptr %12, align 4
  store i32 %.lcssa27.lcssa15.lcssa24.lcssa35.lcssa48.lcssa, ptr %13, align 4
  %66 = load i32, ptr %13, align 4
  %67 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %66)
  ret i32 0
}

declare dso_local i32 @atoi(ptr noundef) #1

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
