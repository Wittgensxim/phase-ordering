; ModuleID = 'results\test_baseline_all\Shootout_nestedloop\Shootout_nestedloop.ll'
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

20:                                               ; preds = %66, %18
  %storemerge = phi i32 [ 0, %18 ], [ %68, %66 ]
  store i32 %storemerge, ptr %5, align 4
  %21 = load i32, ptr %4, align 4
  %22 = icmp slt i32 %storemerge, %21
  br i1 %22, label %23, label %69

23:                                               ; preds = %20
  br label %24

24:                                               ; preds = %62, %23
  %storemerge1 = phi i32 [ 0, %23 ], [ %64, %62 ]
  store i32 %storemerge1, ptr %6, align 4
  %25 = load i32, ptr %4, align 4
  %26 = icmp slt i32 %storemerge1, %25
  br i1 %26, label %27, label %65

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %58, %27
  %storemerge2 = phi i32 [ 0, %27 ], [ %60, %58 ]
  store i32 %storemerge2, ptr %7, align 4
  %29 = load i32, ptr %4, align 4
  %30 = icmp slt i32 %storemerge2, %29
  br i1 %30, label %31, label %61

31:                                               ; preds = %28
  br label %32

32:                                               ; preds = %54, %31
  %storemerge3 = phi i32 [ 0, %31 ], [ %56, %54 ]
  store i32 %storemerge3, ptr %8, align 4
  %33 = load i32, ptr %4, align 4
  %34 = icmp slt i32 %storemerge3, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %32
  br label %36

36:                                               ; preds = %50, %35
  %storemerge4 = phi i32 [ 0, %35 ], [ %52, %50 ]
  store i32 %storemerge4, ptr %9, align 4
  %37 = load i32, ptr %4, align 4
  %38 = icmp slt i32 %storemerge4, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  br label %40

40:                                               ; preds = %46, %39
  %storemerge5 = phi i32 [ 0, %39 ], [ %48, %46 ]
  store i32 %storemerge5, ptr %10, align 4
  %41 = load i32, ptr %4, align 4
  %42 = icmp slt i32 %storemerge5, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i32, ptr %11, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %11, align 4
  br label %46

46:                                               ; preds = %43
  %47 = load i32, ptr %10, align 4
  %48 = add nsw i32 %47, 1
  br label %40, !llvm.loop !7

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49
  %51 = load i32, ptr %9, align 4
  %52 = add nsw i32 %51, 1
  br label %36, !llvm.loop !9

53:                                               ; preds = %36
  br label %54

54:                                               ; preds = %53
  %55 = load i32, ptr %8, align 4
  %56 = add nsw i32 %55, 1
  br label %32, !llvm.loop !10

57:                                               ; preds = %32
  br label %58

58:                                               ; preds = %57
  %59 = load i32, ptr %7, align 4
  %60 = add nsw i32 %59, 1
  br label %28, !llvm.loop !11

61:                                               ; preds = %28
  br label %62

62:                                               ; preds = %61
  %63 = load i32, ptr %6, align 4
  %64 = add nsw i32 %63, 1
  br label %24, !llvm.loop !12

65:                                               ; preds = %24
  br label %66

66:                                               ; preds = %65
  %67 = load i32, ptr %5, align 4
  %68 = add nsw i32 %67, 1
  br label %20, !llvm.loop !13

69:                                               ; preds = %20
  %70 = load i32, ptr %11, align 4
  %71 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %70) #2
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
