; ModuleID = 'results\test_baseline_all\Shootout_nestedloop\Shootout_nestedloop.ll'
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

22:                                               ; preds = %76, %20
  %23 = phi i32 [ %32, %76 ], [ %21, %20 ]
  %24 = phi i32 [ %33, %76 ], [ %21, %20 ]
  %25 = phi i32 [ %34, %76 ], [ %21, %20 ]
  %26 = phi i32 [ %35, %76 ], [ %21, %20 ]
  %27 = phi i32 [ %37, %76 ], [ 0, %20 ]
  %28 = phi i32 [ %77, %76 ], [ 0, %20 ]
  %29 = icmp slt i32 %28, %26
  br i1 %29, label %30, label %78

30:                                               ; preds = %22
  store i32 0, ptr %8, align 4
  br label %31

31:                                               ; preds = %74, %30
  %32 = phi i32 [ %41, %74 ], [ %23, %30 ]
  %33 = phi i32 [ %42, %74 ], [ %24, %30 ]
  %34 = phi i32 [ %43, %74 ], [ %25, %30 ]
  %35 = phi i32 [ %43, %74 ], [ %26, %30 ]
  %36 = phi i32 [ %75, %74 ], [ 0, %30 ]
  %37 = phi i32 [ %45, %74 ], [ %27, %30 ]
  %38 = icmp slt i32 %36, %35
  br i1 %38, label %39, label %76

39:                                               ; preds = %31
  store i32 0, ptr %9, align 4
  br label %40

40:                                               ; preds = %72, %39
  %41 = phi i32 [ %49, %72 ], [ %32, %39 ]
  %42 = phi i32 [ %50, %72 ], [ %33, %39 ]
  %43 = phi i32 [ %50, %72 ], [ %34, %39 ]
  %44 = phi i32 [ %73, %72 ], [ 0, %39 ]
  %45 = phi i32 [ %52, %72 ], [ %37, %39 ]
  %46 = icmp slt i32 %44, %43
  br i1 %46, label %47, label %74

47:                                               ; preds = %40
  store i32 0, ptr %10, align 4
  br label %48

48:                                               ; preds = %70, %47
  %49 = phi i32 [ %56, %70 ], [ %41, %47 ]
  %50 = phi i32 [ %56, %70 ], [ %42, %47 ]
  %51 = phi i32 [ %71, %70 ], [ 0, %47 ]
  %52 = phi i32 [ %58, %70 ], [ %45, %47 ]
  %53 = icmp slt i32 %51, %50
  br i1 %53, label %54, label %72

54:                                               ; preds = %48
  store i32 0, ptr %11, align 4
  br label %55

55:                                               ; preds = %68, %54
  %56 = phi i32 [ %21, %68 ], [ %49, %54 ]
  %57 = phi i32 [ %69, %68 ], [ 0, %54 ]
  %58 = phi i32 [ %63, %68 ], [ %52, %54 ]
  %59 = icmp slt i32 %57, %56
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  store i32 0, ptr %12, align 4
  br label %61

61:                                               ; preds = %65, %60
  %62 = phi i32 [ %67, %65 ], [ 0, %60 ]
  %63 = phi i32 [ %66, %65 ], [ %58, %60 ]
  %64 = icmp slt i32 %62, %21
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = add nsw i32 %63, 1
  store i32 %66, ptr %13, align 4
  %67 = add nsw i32 %62, 1
  store i32 %67, ptr %12, align 4
  br label %61, !llvm.loop !7

68:                                               ; preds = %61
  %69 = add nsw i32 %57, 1
  store i32 %69, ptr %11, align 4
  br label %55, !llvm.loop !9

70:                                               ; preds = %55
  %71 = add nsw i32 %51, 1
  store i32 %71, ptr %10, align 4
  br label %48, !llvm.loop !10

72:                                               ; preds = %48
  %73 = add nsw i32 %44, 1
  store i32 %73, ptr %9, align 4
  br label %40, !llvm.loop !11

74:                                               ; preds = %40
  %75 = add nsw i32 %36, 1
  store i32 %75, ptr %8, align 4
  br label %31, !llvm.loop !12

76:                                               ; preds = %31
  %77 = add nsw i32 %28, 1
  store i32 %77, ptr %7, align 4
  br label %22, !llvm.loop !13

78:                                               ; preds = %22
  %79 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %27)
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
