; ModuleID = 'results\cmp_test\cmp_rule_O2\Shootout_nestedloop\round_001\output.ll'
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
  br label %9

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %8, %4
  %10 = phi i32 [ %7, %4 ], [ 46, %8 ]
  br label %11

11:                                               ; preds = %65, %9
  %12 = phi i32 [ %10, %9 ], [ %21, %65 ]
  %13 = phi i32 [ %10, %9 ], [ %22, %65 ]
  %14 = phi i32 [ %10, %9 ], [ %23, %65 ]
  %15 = phi i32 [ %10, %9 ], [ %24, %65 ]
  %16 = phi i32 [ 0, %9 ], [ %25, %65 ]
  %17 = phi i32 [ 0, %9 ], [ %66, %65 ]
  %18 = icmp slt i32 %17, %15
  br i1 %18, label %19, label %67

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %63, %19
  %21 = phi i32 [ %12, %19 ], [ %30, %63 ]
  %22 = phi i32 [ %13, %19 ], [ %31, %63 ]
  %23 = phi i32 [ %14, %19 ], [ %32, %63 ]
  %24 = phi i32 [ %15, %19 ], [ %32, %63 ]
  %25 = phi i32 [ %16, %19 ], [ %33, %63 ]
  %26 = phi i32 [ 0, %19 ], [ %64, %63 ]
  %27 = icmp slt i32 %26, %24
  br i1 %27, label %28, label %65

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %61, %28
  %30 = phi i32 [ %21, %28 ], [ %38, %61 ]
  %31 = phi i32 [ %22, %28 ], [ %39, %61 ]
  %32 = phi i32 [ %23, %28 ], [ %39, %61 ]
  %33 = phi i32 [ %25, %28 ], [ %40, %61 ]
  %34 = phi i32 [ 0, %28 ], [ %62, %61 ]
  %35 = icmp slt i32 %34, %32
  br i1 %35, label %36, label %63

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %59, %36
  %38 = phi i32 [ %30, %36 ], [ %45, %59 ]
  %39 = phi i32 [ %31, %36 ], [ %45, %59 ]
  %40 = phi i32 [ %33, %36 ], [ %46, %59 ]
  %41 = phi i32 [ 0, %36 ], [ %60, %59 ]
  %42 = icmp slt i32 %41, %39
  br i1 %42, label %43, label %61

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %57, %43
  %45 = phi i32 [ %38, %43 ], [ %10, %57 ]
  %46 = phi i32 [ %40, %43 ], [ %51, %57 ]
  %47 = phi i32 [ 0, %43 ], [ %58, %57 ]
  %48 = icmp slt i32 %47, %45
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %54, %49
  %51 = phi i32 [ %46, %49 ], [ %55, %54 ]
  %52 = phi i32 [ 0, %49 ], [ %56, %54 ]
  %53 = icmp slt i32 %52, %10
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = add nsw i32 %51, 1
  %56 = add nsw i32 %52, 1
  br label %50, !llvm.loop !7

57:                                               ; preds = %50
  %58 = add nsw i32 %47, 1
  br label %44, !llvm.loop !9

59:                                               ; preds = %44
  %60 = add nsw i32 %41, 1
  br label %37, !llvm.loop !10

61:                                               ; preds = %37
  %62 = add nsw i32 %34, 1
  br label %29, !llvm.loop !11

63:                                               ; preds = %29
  %64 = add nsw i32 %26, 1
  br label %20, !llvm.loop !12

65:                                               ; preds = %20
  %66 = add nsw i32 %17, 1
  br label %11, !llvm.loop !13

67:                                               ; preds = %11
  %68 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %16) #2
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
