; ModuleID = 'results\cmp_test\cmp_random_O2\Shootout_nestedloop\Shootout_nestedloop.ll'
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
  br label %18

18:                                               ; preds = %2, %13
  %19 = phi i32 [ %17, %13 ], [ 46, %2 ]
  store i32 %19, ptr %4, align 4
  store i32 0, ptr %11, align 4
  br label %20

20:                                               ; preds = %55, %18
  %storemerge = phi i32 [ 0, %18 ], [ %57, %55 ]
  store i32 %storemerge, ptr %5, align 4
  %21 = load i32, ptr %4, align 4
  %22 = icmp slt i32 %storemerge, %21
  br i1 %22, label %23, label %58

23:                                               ; preds = %20, %52
  %storemerge1 = phi i32 [ %54, %52 ], [ 0, %20 ]
  store i32 %storemerge1, ptr %6, align 4
  %24 = load i32, ptr %4, align 4
  %25 = icmp slt i32 %storemerge1, %24
  br i1 %25, label %26, label %55

26:                                               ; preds = %23, %49
  %storemerge2 = phi i32 [ %51, %49 ], [ 0, %23 ]
  store i32 %storemerge2, ptr %7, align 4
  %27 = load i32, ptr %4, align 4
  %28 = icmp slt i32 %storemerge2, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %26, %46
  %storemerge3 = phi i32 [ %48, %46 ], [ 0, %26 ]
  store i32 %storemerge3, ptr %8, align 4
  %30 = load i32, ptr %4, align 4
  %31 = icmp slt i32 %storemerge3, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %29, %43
  %storemerge4 = phi i32 [ %45, %43 ], [ 0, %29 ]
  store i32 %storemerge4, ptr %9, align 4
  %33 = load i32, ptr %4, align 4
  %34 = icmp slt i32 %storemerge4, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %32, %38
  %storemerge5 = phi i32 [ %42, %38 ], [ 0, %32 ]
  store i32 %storemerge5, ptr %10, align 4
  %36 = load i32, ptr %4, align 4
  %37 = icmp slt i32 %storemerge5, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32, ptr %11, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %11, align 4
  %41 = load i32, ptr %10, align 4
  %42 = add nsw i32 %41, 1
  br label %35, !llvm.loop !7

43:                                               ; preds = %35
  %44 = load i32, ptr %9, align 4
  %45 = add nsw i32 %44, 1
  br label %32, !llvm.loop !9

46:                                               ; preds = %32
  %47 = load i32, ptr %8, align 4
  %48 = add nsw i32 %47, 1
  br label %29, !llvm.loop !10

49:                                               ; preds = %29
  %50 = load i32, ptr %7, align 4
  %51 = add nsw i32 %50, 1
  br label %26, !llvm.loop !11

52:                                               ; preds = %26
  %53 = load i32, ptr %6, align 4
  %54 = add nsw i32 %53, 1
  br label %23, !llvm.loop !12

55:                                               ; preds = %23
  %56 = load i32, ptr %5, align 4
  %57 = add nsw i32 %56, 1
  br label %20, !llvm.loop !13

58:                                               ; preds = %20
  %59 = load i32, ptr %11, align 4
  %60 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %59) #2
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
