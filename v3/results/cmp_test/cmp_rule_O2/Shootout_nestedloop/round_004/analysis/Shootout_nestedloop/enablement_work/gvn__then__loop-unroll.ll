; ModuleID = 'results\cmp_test\cmp_rule_O2\Shootout_nestedloop\round_003\output.ll'
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
  %15 = call i32 @atoi(ptr noundef %14) #2
  br label %16

16:                                               ; preds = %12, %2
  %17 = phi i32 [ %15, %12 ], [ 46, %2 ]
  store i32 %17, ptr %3, align 4
  store i32 0, ptr %10, align 4
  br label %18

18:                                               ; preds = %67, %16
  %19 = phi i32 [ %17, %16 ], [ %.lcssa14, %67 ]
  %20 = phi i32 [ %17, %16 ], [ %.lcssa13, %67 ]
  %21 = phi i32 [ %17, %16 ], [ %.lcssa12, %67 ]
  %22 = phi i32 [ %17, %16 ], [ %.lcssa11, %67 ]
  %23 = phi i32 [ 0, %16 ], [ %.lcssa10, %67 ]
  %24 = phi i32 [ 0, %16 ], [ %68, %67 ]
  store i32 %24, ptr %4, align 4
  %25 = icmp slt i32 %24, %22
  br i1 %25, label %.preheader4, label %69

.preheader4:                                      ; preds = %18
  br label %26

26:                                               ; preds = %65, %.preheader4
  %27 = phi i32 [ %.lcssa9, %65 ], [ %19, %.preheader4 ]
  %28 = phi i32 [ %.lcssa8, %65 ], [ %20, %.preheader4 ]
  %29 = phi i32 [ %.lcssa7, %65 ], [ %21, %.preheader4 ]
  %30 = phi i32 [ %.lcssa7, %65 ], [ %22, %.preheader4 ]
  %31 = phi i32 [ %.lcssa6, %65 ], [ %23, %.preheader4 ]
  %32 = phi i32 [ %66, %65 ], [ 0, %.preheader4 ]
  store i32 %32, ptr %5, align 4
  %33 = icmp slt i32 %32, %30
  br i1 %33, label %.preheader3, label %67

.preheader3:                                      ; preds = %26
  br label %34

34:                                               ; preds = %63, %.preheader3
  %35 = phi i32 [ %.lcssa5, %63 ], [ %27, %.preheader3 ]
  %36 = phi i32 [ %.lcssa4, %63 ], [ %28, %.preheader3 ]
  %37 = phi i32 [ %.lcssa4, %63 ], [ %29, %.preheader3 ]
  %38 = phi i32 [ %.lcssa3, %63 ], [ %31, %.preheader3 ]
  %39 = phi i32 [ %64, %63 ], [ 0, %.preheader3 ]
  store i32 %39, ptr %6, align 4
  %40 = icmp slt i32 %39, %37
  br i1 %40, label %.preheader2, label %65

.preheader2:                                      ; preds = %34
  br label %41

41:                                               ; preds = %61, %.preheader2
  %42 = phi i32 [ %.lcssa2, %61 ], [ %35, %.preheader2 ]
  %43 = phi i32 [ %.lcssa2, %61 ], [ %36, %.preheader2 ]
  %44 = phi i32 [ %.lcssa1, %61 ], [ %38, %.preheader2 ]
  %45 = phi i32 [ %62, %61 ], [ 0, %.preheader2 ]
  store i32 %45, ptr %7, align 4
  %46 = icmp slt i32 %45, %43
  br i1 %46, label %.preheader1, label %63

.preheader1:                                      ; preds = %41
  br label %47

47:                                               ; preds = %59, %.preheader1
  %48 = phi i32 [ %17, %59 ], [ %42, %.preheader1 ]
  %49 = phi i32 [ %.lcssa, %59 ], [ %44, %.preheader1 ]
  %50 = phi i32 [ %60, %59 ], [ 0, %.preheader1 ]
  store i32 %50, ptr %8, align 4
  %51 = icmp slt i32 %50, %48
  br i1 %51, label %.preheader, label %61

.preheader:                                       ; preds = %47
  br label %52

52:                                               ; preds = %56, %.preheader
  %53 = phi i32 [ %57, %56 ], [ %49, %.preheader ]
  %54 = phi i32 [ %58, %56 ], [ 0, %.preheader ]
  store i32 %54, ptr %9, align 4
  %55 = icmp slt i32 %54, %17
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = add nsw i32 %53, 1
  store i32 %57, ptr %10, align 4
  %58 = add nsw i32 %54, 1
  br label %52, !llvm.loop !7

59:                                               ; preds = %52
  %.lcssa = phi i32 [ %53, %52 ]
  %60 = add nsw i32 %50, 1
  br label %47, !llvm.loop !9

61:                                               ; preds = %47
  %.lcssa2 = phi i32 [ %48, %47 ]
  %.lcssa1 = phi i32 [ %49, %47 ]
  %62 = add nsw i32 %45, 1
  br label %41, !llvm.loop !10

63:                                               ; preds = %41
  %.lcssa5 = phi i32 [ %42, %41 ]
  %.lcssa4 = phi i32 [ %43, %41 ]
  %.lcssa3 = phi i32 [ %44, %41 ]
  %64 = add nsw i32 %39, 1
  br label %34, !llvm.loop !11

65:                                               ; preds = %34
  %.lcssa9 = phi i32 [ %35, %34 ]
  %.lcssa8 = phi i32 [ %36, %34 ]
  %.lcssa7 = phi i32 [ %37, %34 ]
  %.lcssa6 = phi i32 [ %38, %34 ]
  %66 = add nsw i32 %32, 1
  br label %26, !llvm.loop !12

67:                                               ; preds = %26
  %.lcssa14 = phi i32 [ %27, %26 ]
  %.lcssa13 = phi i32 [ %28, %26 ]
  %.lcssa12 = phi i32 [ %29, %26 ]
  %.lcssa11 = phi i32 [ %30, %26 ]
  %.lcssa10 = phi i32 [ %31, %26 ]
  %68 = add nsw i32 %24, 1
  br label %18, !llvm.loop !13

69:                                               ; preds = %18
  %.lcssa15 = phi i32 [ %23, %18 ]
  %70 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.lcssa15) #2
  ret i32 0
}

declare dso_local i32 @atoi(ptr noundef) #1

declare dso_local i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
