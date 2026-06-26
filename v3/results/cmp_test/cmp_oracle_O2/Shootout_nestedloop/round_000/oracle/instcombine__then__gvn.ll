; ModuleID = 'results\cmp_test\cmp_oracle_O2\Shootout_nestedloop\Shootout_nestedloop.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Shootout/nestedloop.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %1, ptr %3, align 8
  %12 = icmp eq i32 %0, 2
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %15 = load ptr, ptr %14, align 8
  %16 = call i32 @atoi(ptr noundef %15) #2
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %13
  %19 = phi i32 [ %16, %13 ], [ 46, %17 ]
  store i32 %19, ptr %4, align 4
  store i32 0, ptr %11, align 4
  br label %20

20:                                               ; preds = %74, %18
  %21 = phi i32 [ %19, %18 ], [ %30, %74 ]
  %22 = phi i32 [ %19, %18 ], [ %31, %74 ]
  %23 = phi i32 [ %19, %18 ], [ %32, %74 ]
  %24 = phi i32 [ %19, %18 ], [ %33, %74 ]
  %25 = phi i32 [ 0, %18 ], [ %34, %74 ]
  %26 = phi i32 [ 0, %18 ], [ %75, %74 ]
  store i32 %26, ptr %5, align 4
  %27 = icmp slt i32 %26, %24
  br i1 %27, label %28, label %76

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %72, %28
  %30 = phi i32 [ %21, %28 ], [ %39, %72 ]
  %31 = phi i32 [ %22, %28 ], [ %40, %72 ]
  %32 = phi i32 [ %23, %28 ], [ %41, %72 ]
  %33 = phi i32 [ %24, %28 ], [ %41, %72 ]
  %34 = phi i32 [ %25, %28 ], [ %42, %72 ]
  %35 = phi i32 [ 0, %28 ], [ %73, %72 ]
  store i32 %35, ptr %6, align 4
  %36 = icmp slt i32 %35, %33
  br i1 %36, label %37, label %74

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %70, %37
  %39 = phi i32 [ %30, %37 ], [ %47, %70 ]
  %40 = phi i32 [ %31, %37 ], [ %48, %70 ]
  %41 = phi i32 [ %32, %37 ], [ %48, %70 ]
  %42 = phi i32 [ %34, %37 ], [ %49, %70 ]
  %43 = phi i32 [ 0, %37 ], [ %71, %70 ]
  store i32 %43, ptr %7, align 4
  %44 = icmp slt i32 %43, %41
  br i1 %44, label %45, label %72

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %68, %45
  %47 = phi i32 [ %39, %45 ], [ %54, %68 ]
  %48 = phi i32 [ %40, %45 ], [ %54, %68 ]
  %49 = phi i32 [ %42, %45 ], [ %55, %68 ]
  %50 = phi i32 [ 0, %45 ], [ %69, %68 ]
  store i32 %50, ptr %8, align 4
  %51 = icmp slt i32 %50, %48
  br i1 %51, label %52, label %70

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %66, %52
  %54 = phi i32 [ %47, %52 ], [ %19, %66 ]
  %55 = phi i32 [ %49, %52 ], [ %60, %66 ]
  %56 = phi i32 [ 0, %52 ], [ %67, %66 ]
  store i32 %56, ptr %9, align 4
  %57 = icmp slt i32 %56, %54
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %63, %58
  %60 = phi i32 [ %55, %58 ], [ %64, %63 ]
  %61 = phi i32 [ 0, %58 ], [ %65, %63 ]
  store i32 %61, ptr %10, align 4
  %62 = icmp slt i32 %61, %19
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = add nsw i32 %60, 1
  store i32 %64, ptr %11, align 4
  %65 = add nsw i32 %61, 1
  br label %59, !llvm.loop !7

66:                                               ; preds = %59
  %67 = add nsw i32 %56, 1
  br label %53, !llvm.loop !9

68:                                               ; preds = %53
  %69 = add nsw i32 %50, 1
  br label %46, !llvm.loop !10

70:                                               ; preds = %46
  %71 = add nsw i32 %43, 1
  br label %38, !llvm.loop !11

72:                                               ; preds = %38
  %73 = add nsw i32 %35, 1
  br label %29, !llvm.loop !12

74:                                               ; preds = %29
  %75 = add nsw i32 %26, 1
  br label %20, !llvm.loop !13

76:                                               ; preds = %20
  %77 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %25) #2
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
