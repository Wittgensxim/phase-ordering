; ModuleID = 'results\cmp_test\cmp_rule_O2\Shootout_nestedloop\Shootout_nestedloop.ll'
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
  br label %19

19:                                               ; preds = %2, %15
  %20 = phi i32 [ %18, %15 ], [ 46, %2 ]
  store i32 %20, ptr %6, align 4
  store i32 0, ptr %13, align 4
  store i32 0, ptr %7, align 4
  br label %21

21:                                               ; preds = %75, %19
  %22 = phi i32 [ %31, %75 ], [ %20, %19 ]
  %23 = phi i32 [ %32, %75 ], [ %20, %19 ]
  %24 = phi i32 [ %33, %75 ], [ %20, %19 ]
  %25 = phi i32 [ %34, %75 ], [ %20, %19 ]
  %26 = phi i32 [ %36, %75 ], [ 0, %19 ]
  %27 = phi i32 [ %76, %75 ], [ 0, %19 ]
  %28 = icmp slt i32 %27, %25
  br i1 %28, label %29, label %77

29:                                               ; preds = %21
  store i32 0, ptr %8, align 4
  br label %30

30:                                               ; preds = %73, %29
  %31 = phi i32 [ %40, %73 ], [ %22, %29 ]
  %32 = phi i32 [ %41, %73 ], [ %23, %29 ]
  %33 = phi i32 [ %42, %73 ], [ %24, %29 ]
  %34 = phi i32 [ %42, %73 ], [ %25, %29 ]
  %35 = phi i32 [ %74, %73 ], [ 0, %29 ]
  %36 = phi i32 [ %44, %73 ], [ %26, %29 ]
  %37 = icmp slt i32 %35, %34
  br i1 %37, label %38, label %75

38:                                               ; preds = %30
  store i32 0, ptr %9, align 4
  br label %39

39:                                               ; preds = %71, %38
  %40 = phi i32 [ %48, %71 ], [ %31, %38 ]
  %41 = phi i32 [ %49, %71 ], [ %32, %38 ]
  %42 = phi i32 [ %49, %71 ], [ %33, %38 ]
  %43 = phi i32 [ %72, %71 ], [ 0, %38 ]
  %44 = phi i32 [ %51, %71 ], [ %36, %38 ]
  %45 = icmp slt i32 %43, %42
  br i1 %45, label %46, label %73

46:                                               ; preds = %39
  store i32 0, ptr %10, align 4
  br label %47

47:                                               ; preds = %69, %46
  %48 = phi i32 [ %55, %69 ], [ %40, %46 ]
  %49 = phi i32 [ %55, %69 ], [ %41, %46 ]
  %50 = phi i32 [ %70, %69 ], [ 0, %46 ]
  %51 = phi i32 [ %57, %69 ], [ %44, %46 ]
  %52 = icmp slt i32 %50, %49
  br i1 %52, label %53, label %71

53:                                               ; preds = %47
  store i32 0, ptr %11, align 4
  br label %54

54:                                               ; preds = %67, %53
  %55 = phi i32 [ %20, %67 ], [ %48, %53 ]
  %56 = phi i32 [ %68, %67 ], [ 0, %53 ]
  %57 = phi i32 [ %62, %67 ], [ %51, %53 ]
  %58 = icmp slt i32 %56, %55
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  store i32 0, ptr %12, align 4
  br label %60

60:                                               ; preds = %64, %59
  %61 = phi i32 [ %66, %64 ], [ 0, %59 ]
  %62 = phi i32 [ %65, %64 ], [ %57, %59 ]
  %63 = icmp slt i32 %61, %20
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = add nsw i32 %62, 1
  store i32 %65, ptr %13, align 4
  %66 = add nsw i32 %61, 1
  store i32 %66, ptr %12, align 4
  br label %60, !llvm.loop !7

67:                                               ; preds = %60
  %68 = add nsw i32 %56, 1
  store i32 %68, ptr %11, align 4
  br label %54, !llvm.loop !9

69:                                               ; preds = %54
  %70 = add nsw i32 %50, 1
  store i32 %70, ptr %10, align 4
  br label %47, !llvm.loop !10

71:                                               ; preds = %47
  %72 = add nsw i32 %43, 1
  store i32 %72, ptr %9, align 4
  br label %39, !llvm.loop !11

73:                                               ; preds = %39
  %74 = add nsw i32 %35, 1
  store i32 %74, ptr %8, align 4
  br label %30, !llvm.loop !12

75:                                               ; preds = %30
  %76 = add nsw i32 %27, 1
  store i32 %76, ptr %7, align 4
  br label %21, !llvm.loop !13

77:                                               ; preds = %21
  %78 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %26)
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
