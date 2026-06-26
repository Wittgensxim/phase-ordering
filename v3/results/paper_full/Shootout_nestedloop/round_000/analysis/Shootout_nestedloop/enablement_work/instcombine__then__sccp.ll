; ModuleID = 'results\paper_full\Shootout_nestedloop\Shootout_nestedloop.ll'
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
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %16 = load ptr, ptr %15, align 8
  %17 = call i32 @atoi(ptr noundef %16) #2
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %13
  %20 = phi i32 [ %17, %13 ], [ 46, %18 ]
  store i32 %20, ptr %4, align 4
  store i32 0, ptr %11, align 4
  br label %21

21:                                               ; preds = %67, %19
  %storemerge = phi i32 [ 0, %19 ], [ %69, %67 ]
  store i32 %storemerge, ptr %5, align 4
  %22 = load i32, ptr %4, align 4
  %23 = icmp slt i32 %storemerge, %22
  br i1 %23, label %24, label %70

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %63, %24
  %storemerge1 = phi i32 [ 0, %24 ], [ %65, %63 ]
  store i32 %storemerge1, ptr %6, align 4
  %26 = load i32, ptr %4, align 4
  %27 = icmp slt i32 %storemerge1, %26
  br i1 %27, label %28, label %66

28:                                               ; preds = %25
  br label %29

29:                                               ; preds = %59, %28
  %storemerge2 = phi i32 [ 0, %28 ], [ %61, %59 ]
  store i32 %storemerge2, ptr %7, align 4
  %30 = load i32, ptr %4, align 4
  %31 = icmp slt i32 %storemerge2, %30
  br i1 %31, label %32, label %62

32:                                               ; preds = %29
  br label %33

33:                                               ; preds = %55, %32
  %storemerge3 = phi i32 [ 0, %32 ], [ %57, %55 ]
  store i32 %storemerge3, ptr %8, align 4
  %34 = load i32, ptr %4, align 4
  %35 = icmp slt i32 %storemerge3, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %33
  br label %37

37:                                               ; preds = %51, %36
  %storemerge4 = phi i32 [ 0, %36 ], [ %53, %51 ]
  store i32 %storemerge4, ptr %9, align 4
  %38 = load i32, ptr %4, align 4
  %39 = icmp slt i32 %storemerge4, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  br label %41

41:                                               ; preds = %47, %40
  %storemerge5 = phi i32 [ 0, %40 ], [ %49, %47 ]
  store i32 %storemerge5, ptr %10, align 4
  %42 = load i32, ptr %4, align 4
  %43 = icmp slt i32 %storemerge5, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i32, ptr %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %11, align 4
  br label %47

47:                                               ; preds = %44
  %48 = load i32, ptr %10, align 4
  %49 = add nsw i32 %48, 1
  br label %41, !llvm.loop !7

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50
  %52 = load i32, ptr %9, align 4
  %53 = add nsw i32 %52, 1
  br label %37, !llvm.loop !9

54:                                               ; preds = %37
  br label %55

55:                                               ; preds = %54
  %56 = load i32, ptr %8, align 4
  %57 = add nsw i32 %56, 1
  br label %33, !llvm.loop !10

58:                                               ; preds = %33
  br label %59

59:                                               ; preds = %58
  %60 = load i32, ptr %7, align 4
  %61 = add nsw i32 %60, 1
  br label %29, !llvm.loop !11

62:                                               ; preds = %29
  br label %63

63:                                               ; preds = %62
  %64 = load i32, ptr %6, align 4
  %65 = add nsw i32 %64, 1
  br label %25, !llvm.loop !12

66:                                               ; preds = %25
  br label %67

67:                                               ; preds = %66
  %68 = load i32, ptr %5, align 4
  %69 = add nsw i32 %68, 1
  br label %21, !llvm.loop !13

70:                                               ; preds = %21
  %71 = load i32, ptr %11, align 4
  %72 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %71) #2
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
