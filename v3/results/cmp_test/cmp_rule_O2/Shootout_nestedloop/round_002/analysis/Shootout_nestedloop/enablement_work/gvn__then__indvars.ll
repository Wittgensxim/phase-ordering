; ModuleID = 'results\cmp_test\cmp_rule_O2\Shootout_nestedloop\round_001\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Shootout/nestedloop.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = icmp eq i32 %0, 2
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %14 = load ptr, ptr %13, align 8
  %15 = call i32 @atoi(ptr noundef %14) #3
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %12
  %18 = phi i32 [ %15, %12 ], [ 46, %16 ]
  store i32 %18, ptr %3, align 4
  store i32 0, ptr %10, align 4
  %smax = call i32 @llvm.smax.i32(i32 %18, i32 0)
  br label %19

19:                                               ; preds = %72, %17
  %20 = phi i32 [ %18, %17 ], [ %.lcssa14, %72 ]
  %21 = phi i32 [ %18, %17 ], [ %.lcssa13, %72 ]
  %22 = phi i32 [ %18, %17 ], [ %.lcssa12, %72 ]
  %23 = phi i32 [ %18, %17 ], [ %.lcssa11, %72 ]
  %24 = phi i32 [ 0, %17 ], [ %.lcssa10, %72 ]
  %25 = phi i32 [ 0, %17 ], [ %73, %72 ]
  store i32 %25, ptr %4, align 4
  %26 = icmp slt i32 %25, %23
  br i1 %26, label %27, label %74

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %70, %27
  %29 = phi i32 [ %20, %27 ], [ %.lcssa9, %70 ]
  %30 = phi i32 [ %21, %27 ], [ %.lcssa8, %70 ]
  %31 = phi i32 [ %22, %27 ], [ %.lcssa7, %70 ]
  %32 = phi i32 [ %23, %27 ], [ %.lcssa7, %70 ]
  %33 = phi i32 [ %24, %27 ], [ %.lcssa6, %70 ]
  %34 = phi i32 [ 0, %27 ], [ %71, %70 ]
  store i32 %34, ptr %5, align 4
  %35 = icmp slt i32 %34, %32
  br i1 %35, label %36, label %72

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %68, %36
  %38 = phi i32 [ %29, %36 ], [ %.lcssa5, %68 ]
  %39 = phi i32 [ %30, %36 ], [ %.lcssa4, %68 ]
  %40 = phi i32 [ %31, %36 ], [ %.lcssa4, %68 ]
  %41 = phi i32 [ %33, %36 ], [ %.lcssa3, %68 ]
  %42 = phi i32 [ 0, %36 ], [ %69, %68 ]
  store i32 %42, ptr %6, align 4
  %43 = icmp slt i32 %42, %40
  br i1 %43, label %44, label %70

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %66, %44
  %46 = phi i32 [ %38, %44 ], [ %.lcssa2, %66 ]
  %47 = phi i32 [ %39, %44 ], [ %.lcssa2, %66 ]
  %48 = phi i32 [ %41, %44 ], [ %.lcssa1, %66 ]
  %49 = phi i32 [ 0, %44 ], [ %67, %66 ]
  store i32 %49, ptr %7, align 4
  %50 = icmp slt i32 %49, %47
  br i1 %50, label %51, label %68

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %64, %51
  %53 = phi i32 [ %46, %51 ], [ %18, %64 ]
  %54 = phi i32 [ %48, %51 ], [ %.lcssa, %64 ]
  %55 = phi i32 [ 0, %51 ], [ %65, %64 ]
  store i32 %55, ptr %8, align 4
  %56 = icmp slt i32 %55, %53
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %61, %57
  %59 = phi i32 [ %54, %57 ], [ %62, %61 ]
  %60 = phi i32 [ 0, %57 ], [ %63, %61 ]
  store i32 %60, ptr %9, align 4
  %exitcond = icmp ne i32 %60, %smax
  br i1 %exitcond, label %61, label %64

61:                                               ; preds = %58
  %62 = add nsw i32 %59, 1
  store i32 %62, ptr %10, align 4
  %63 = add nuw i32 %60, 1
  br label %58, !llvm.loop !7

64:                                               ; preds = %58
  %.lcssa = phi i32 [ %59, %58 ]
  %65 = add nuw nsw i32 %55, 1
  br label %52, !llvm.loop !9

66:                                               ; preds = %52
  %.lcssa2 = phi i32 [ %53, %52 ]
  %.lcssa1 = phi i32 [ %54, %52 ]
  %67 = add nuw nsw i32 %49, 1
  br label %45, !llvm.loop !10

68:                                               ; preds = %45
  %.lcssa5 = phi i32 [ %46, %45 ]
  %.lcssa4 = phi i32 [ %47, %45 ]
  %.lcssa3 = phi i32 [ %48, %45 ]
  %69 = add nuw nsw i32 %42, 1
  br label %37, !llvm.loop !11

70:                                               ; preds = %37
  %.lcssa9 = phi i32 [ %38, %37 ]
  %.lcssa8 = phi i32 [ %39, %37 ]
  %.lcssa7 = phi i32 [ %40, %37 ]
  %.lcssa6 = phi i32 [ %41, %37 ]
  %71 = add nuw nsw i32 %34, 1
  br label %28, !llvm.loop !12

72:                                               ; preds = %28
  %.lcssa14 = phi i32 [ %29, %28 ]
  %.lcssa13 = phi i32 [ %30, %28 ]
  %.lcssa12 = phi i32 [ %31, %28 ]
  %.lcssa11 = phi i32 [ %32, %28 ]
  %.lcssa10 = phi i32 [ %33, %28 ]
  %73 = add nuw nsw i32 %25, 1
  br label %19, !llvm.loop !13

74:                                               ; preds = %19
  %.lcssa15 = phi i32 [ %24, %19 ]
  %75 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.lcssa15) #3
  ret i32 0
}

declare dso_local i32 @atoi(ptr noundef) #1

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

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
