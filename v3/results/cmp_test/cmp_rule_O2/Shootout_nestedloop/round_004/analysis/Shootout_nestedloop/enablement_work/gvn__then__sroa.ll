; ModuleID = 'results\cmp_test\cmp_rule_O2\Shootout_nestedloop\round_003\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Shootout/nestedloop.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load ptr, ptr %5, align 8
  %7 = call i32 @atoi(ptr noundef %6) #2
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi i32 [ %7, %4 ], [ 46, %2 ]
  br label %10

10:                                               ; preds = %59, %8
  %11 = phi i32 [ %9, %8 ], [ %19, %59 ]
  %12 = phi i32 [ %9, %8 ], [ %20, %59 ]
  %13 = phi i32 [ %9, %8 ], [ %21, %59 ]
  %14 = phi i32 [ %9, %8 ], [ %22, %59 ]
  %15 = phi i32 [ 0, %8 ], [ %23, %59 ]
  %16 = phi i32 [ 0, %8 ], [ %60, %59 ]
  %17 = icmp slt i32 %16, %14
  br i1 %17, label %.preheader4, label %61

.preheader4:                                      ; preds = %10
  br label %18

18:                                               ; preds = %57, %.preheader4
  %19 = phi i32 [ %27, %57 ], [ %11, %.preheader4 ]
  %20 = phi i32 [ %28, %57 ], [ %12, %.preheader4 ]
  %21 = phi i32 [ %29, %57 ], [ %13, %.preheader4 ]
  %22 = phi i32 [ %29, %57 ], [ %14, %.preheader4 ]
  %23 = phi i32 [ %30, %57 ], [ %15, %.preheader4 ]
  %24 = phi i32 [ %58, %57 ], [ 0, %.preheader4 ]
  %25 = icmp slt i32 %24, %22
  br i1 %25, label %.preheader3, label %59

.preheader3:                                      ; preds = %18
  br label %26

26:                                               ; preds = %55, %.preheader3
  %27 = phi i32 [ %34, %55 ], [ %19, %.preheader3 ]
  %28 = phi i32 [ %35, %55 ], [ %20, %.preheader3 ]
  %29 = phi i32 [ %35, %55 ], [ %21, %.preheader3 ]
  %30 = phi i32 [ %36, %55 ], [ %23, %.preheader3 ]
  %31 = phi i32 [ %56, %55 ], [ 0, %.preheader3 ]
  %32 = icmp slt i32 %31, %29
  br i1 %32, label %.preheader2, label %57

.preheader2:                                      ; preds = %26
  br label %33

33:                                               ; preds = %53, %.preheader2
  %34 = phi i32 [ %40, %53 ], [ %27, %.preheader2 ]
  %35 = phi i32 [ %40, %53 ], [ %28, %.preheader2 ]
  %36 = phi i32 [ %41, %53 ], [ %30, %.preheader2 ]
  %37 = phi i32 [ %54, %53 ], [ 0, %.preheader2 ]
  %38 = icmp slt i32 %37, %35
  br i1 %38, label %.preheader1, label %55

.preheader1:                                      ; preds = %33
  br label %39

39:                                               ; preds = %51, %.preheader1
  %40 = phi i32 [ %9, %51 ], [ %34, %.preheader1 ]
  %41 = phi i32 [ %45, %51 ], [ %36, %.preheader1 ]
  %42 = phi i32 [ %52, %51 ], [ 0, %.preheader1 ]
  %43 = icmp slt i32 %42, %40
  br i1 %43, label %.preheader, label %53

.preheader:                                       ; preds = %39
  br label %44

44:                                               ; preds = %48, %.preheader
  %45 = phi i32 [ %49, %48 ], [ %41, %.preheader ]
  %46 = phi i32 [ %50, %48 ], [ 0, %.preheader ]
  %47 = icmp slt i32 %46, %9
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = add nsw i32 %45, 1
  %50 = add nsw i32 %46, 1
  br label %44, !llvm.loop !7

51:                                               ; preds = %44
  %52 = add nsw i32 %42, 1
  br label %39, !llvm.loop !9

53:                                               ; preds = %39
  %54 = add nsw i32 %37, 1
  br label %33, !llvm.loop !10

55:                                               ; preds = %33
  %56 = add nsw i32 %31, 1
  br label %26, !llvm.loop !11

57:                                               ; preds = %26
  %58 = add nsw i32 %24, 1
  br label %18, !llvm.loop !12

59:                                               ; preds = %18
  %60 = add nsw i32 %16, 1
  br label %10, !llvm.loop !13

61:                                               ; preds = %10
  %62 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %15) #2
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
