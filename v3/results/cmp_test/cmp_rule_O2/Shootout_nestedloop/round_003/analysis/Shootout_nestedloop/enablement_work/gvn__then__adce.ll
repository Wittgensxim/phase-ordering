; ModuleID = 'results\cmp_test\cmp_rule_O2\Shootout_nestedloop\round_002\input.ll'
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
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %12
  %18 = phi i32 [ %15, %12 ], [ 46, %16 ]
  store i32 %18, ptr %3, align 4
  store i32 0, ptr %10, align 4
  br label %19

19:                                               ; preds = %73, %17
  %20 = phi i32 [ %18, %17 ], [ %29, %73 ]
  %21 = phi i32 [ %18, %17 ], [ %30, %73 ]
  %22 = phi i32 [ %18, %17 ], [ %31, %73 ]
  %23 = phi i32 [ %18, %17 ], [ %32, %73 ]
  %24 = phi i32 [ 0, %17 ], [ %33, %73 ]
  %25 = phi i32 [ 0, %17 ], [ %74, %73 ]
  store i32 %25, ptr %4, align 4
  %26 = icmp slt i32 %25, %23
  br i1 %26, label %27, label %75

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %71, %27
  %29 = phi i32 [ %20, %27 ], [ %38, %71 ]
  %30 = phi i32 [ %21, %27 ], [ %39, %71 ]
  %31 = phi i32 [ %22, %27 ], [ %40, %71 ]
  %32 = phi i32 [ %23, %27 ], [ %40, %71 ]
  %33 = phi i32 [ %24, %27 ], [ %41, %71 ]
  %34 = phi i32 [ 0, %27 ], [ %72, %71 ]
  store i32 %34, ptr %5, align 4
  %35 = icmp slt i32 %34, %32
  br i1 %35, label %36, label %73

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %69, %36
  %38 = phi i32 [ %29, %36 ], [ %46, %69 ]
  %39 = phi i32 [ %30, %36 ], [ %47, %69 ]
  %40 = phi i32 [ %31, %36 ], [ %47, %69 ]
  %41 = phi i32 [ %33, %36 ], [ %48, %69 ]
  %42 = phi i32 [ 0, %36 ], [ %70, %69 ]
  store i32 %42, ptr %6, align 4
  %43 = icmp slt i32 %42, %40
  br i1 %43, label %44, label %71

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %67, %44
  %46 = phi i32 [ %38, %44 ], [ %53, %67 ]
  %47 = phi i32 [ %39, %44 ], [ %53, %67 ]
  %48 = phi i32 [ %41, %44 ], [ %54, %67 ]
  %49 = phi i32 [ 0, %44 ], [ %68, %67 ]
  store i32 %49, ptr %7, align 4
  %50 = icmp slt i32 %49, %47
  br i1 %50, label %51, label %69

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %65, %51
  %53 = phi i32 [ %46, %51 ], [ %18, %65 ]
  %54 = phi i32 [ %48, %51 ], [ %59, %65 ]
  %55 = phi i32 [ 0, %51 ], [ %66, %65 ]
  store i32 %55, ptr %8, align 4
  %56 = icmp slt i32 %55, %53
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %62, %57
  %59 = phi i32 [ %54, %57 ], [ %63, %62 ]
  %60 = phi i32 [ 0, %57 ], [ %64, %62 ]
  store i32 %60, ptr %9, align 4
  %61 = icmp slt i32 %60, %18
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = add nsw i32 %59, 1
  store i32 %63, ptr %10, align 4
  %64 = add nsw i32 %60, 1
  br label %58, !llvm.loop !7

65:                                               ; preds = %58
  %66 = add nsw i32 %55, 1
  br label %52, !llvm.loop !9

67:                                               ; preds = %52
  %68 = add nsw i32 %49, 1
  br label %45, !llvm.loop !10

69:                                               ; preds = %45
  %70 = add nsw i32 %42, 1
  br label %37, !llvm.loop !11

71:                                               ; preds = %37
  %72 = add nsw i32 %34, 1
  br label %28, !llvm.loop !12

73:                                               ; preds = %28
  %74 = add nsw i32 %25, 1
  br label %19, !llvm.loop !13

75:                                               ; preds = %19
  %76 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %24) #2
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
