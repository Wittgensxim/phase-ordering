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

19:                                               ; preds = %65, %17
  %storemerge = phi i32 [ 0, %17 ], [ %67, %65 ]
  store i32 %storemerge, ptr %4, align 4
  %20 = load i32, ptr %3, align 4
  %21 = icmp slt i32 %storemerge, %20
  br i1 %21, label %22, label %68

22:                                               ; preds = %19
  br label %23

23:                                               ; preds = %61, %22
  %storemerge1 = phi i32 [ 0, %22 ], [ %63, %61 ]
  store i32 %storemerge1, ptr %5, align 4
  %24 = load i32, ptr %3, align 4
  %25 = icmp slt i32 %storemerge1, %24
  br i1 %25, label %26, label %64

26:                                               ; preds = %23
  br label %27

27:                                               ; preds = %57, %26
  %storemerge2 = phi i32 [ 0, %26 ], [ %59, %57 ]
  store i32 %storemerge2, ptr %6, align 4
  %28 = load i32, ptr %3, align 4
  %29 = icmp slt i32 %storemerge2, %28
  br i1 %29, label %30, label %60

30:                                               ; preds = %27
  br label %31

31:                                               ; preds = %53, %30
  %storemerge3 = phi i32 [ 0, %30 ], [ %55, %53 ]
  store i32 %storemerge3, ptr %7, align 4
  %32 = load i32, ptr %3, align 4
  %33 = icmp slt i32 %storemerge3, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %31
  br label %35

35:                                               ; preds = %49, %34
  %storemerge4 = phi i32 [ 0, %34 ], [ %51, %49 ]
  store i32 %storemerge4, ptr %8, align 4
  %36 = load i32, ptr %3, align 4
  %37 = icmp slt i32 %storemerge4, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  br label %39

39:                                               ; preds = %45, %38
  %storemerge5 = phi i32 [ 0, %38 ], [ %47, %45 ]
  store i32 %storemerge5, ptr %9, align 4
  %40 = load i32, ptr %3, align 4
  %41 = icmp slt i32 %storemerge5, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32, ptr %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %10, align 4
  br label %45

45:                                               ; preds = %42
  %46 = load i32, ptr %9, align 4
  %47 = add nsw i32 %46, 1
  br label %39, !llvm.loop !7

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48
  %50 = load i32, ptr %8, align 4
  %51 = add nsw i32 %50, 1
  br label %35, !llvm.loop !9

52:                                               ; preds = %35
  br label %53

53:                                               ; preds = %52
  %54 = load i32, ptr %7, align 4
  %55 = add nsw i32 %54, 1
  br label %31, !llvm.loop !10

56:                                               ; preds = %31
  br label %57

57:                                               ; preds = %56
  %58 = load i32, ptr %6, align 4
  %59 = add nsw i32 %58, 1
  br label %27, !llvm.loop !11

60:                                               ; preds = %27
  br label %61

61:                                               ; preds = %60
  %62 = load i32, ptr %5, align 4
  %63 = add nsw i32 %62, 1
  br label %23, !llvm.loop !12

64:                                               ; preds = %23
  br label %65

65:                                               ; preds = %64
  %66 = load i32, ptr %4, align 4
  %67 = add nsw i32 %66, 1
  br label %19, !llvm.loop !13

68:                                               ; preds = %19
  %69 = load i32, ptr %10, align 4
  %70 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %69) #2
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
