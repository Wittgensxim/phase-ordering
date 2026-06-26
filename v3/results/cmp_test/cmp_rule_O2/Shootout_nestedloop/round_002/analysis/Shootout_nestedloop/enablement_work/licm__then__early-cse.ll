; ModuleID = 'results\cmp_test\cmp_rule_O2\Shootout_nestedloop\round_001\output.ll'
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
  %19 = load i32, ptr %3, align 4
  %.promoted32 = load i32, ptr %9, align 1
  %.promoted34 = load i32, ptr %8, align 1
  %.promoted36 = load i32, ptr %7, align 1
  %.promoted38 = load i32, ptr %6, align 1
  %.promoted = load i32, ptr %5, align 1
  br label %20

20:                                               ; preds = %55, %17
  %storemerge1.lcssa40 = phi i32 [ %.promoted, %17 ], [ %storemerge1, %55 ]
  %storemerge2.lcssa28.lcssa39 = phi i32 [ %.promoted38, %17 ], [ %storemerge2.lcssa28, %55 ]
  %storemerge3.lcssa18.lcssa27.lcssa37 = phi i32 [ %.promoted36, %17 ], [ %storemerge3.lcssa18.lcssa27, %55 ]
  %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35 = phi i32 [ %.promoted34, %17 ], [ %storemerge4.lcssa10.lcssa17.lcssa25, %55 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33 = phi i32 [ %.promoted32, %17 ], [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23, %55 ]
  %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31 = phi i32 [ 0, %17 ], [ %.lcssa3.lcssa7.lcssa13.lcssa21, %55 ]
  %storemerge = phi i32 [ 0, %17 ], [ %56, %55 ]
  %21 = icmp slt i32 %storemerge, %19
  br i1 %21, label %22, label %57

22:                                               ; preds = %20
  br label %23

23:                                               ; preds = %52, %22
  %storemerge2.lcssa28 = phi i32 [ %storemerge2.lcssa28.lcssa39, %22 ], [ %storemerge2, %52 ]
  %storemerge3.lcssa18.lcssa27 = phi i32 [ %storemerge3.lcssa18.lcssa27.lcssa37, %22 ], [ %storemerge3.lcssa18, %52 ]
  %storemerge4.lcssa10.lcssa17.lcssa25 = phi i32 [ %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35, %22 ], [ %storemerge4.lcssa10.lcssa17, %52 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23 = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33, %22 ], [ %storemerge5.lcssa4.lcssa9.lcssa15, %52 ]
  %.lcssa3.lcssa7.lcssa13.lcssa21 = phi i32 [ %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31, %22 ], [ %.lcssa3.lcssa7.lcssa13, %52 ]
  %storemerge1 = phi i32 [ 0, %22 ], [ %53, %52 ]
  %24 = icmp slt i32 %storemerge1, %19
  br i1 %24, label %25, label %54

25:                                               ; preds = %23
  br label %26

26:                                               ; preds = %49, %25
  %storemerge3.lcssa18 = phi i32 [ %storemerge3.lcssa18.lcssa27, %25 ], [ %storemerge3, %49 ]
  %storemerge4.lcssa10.lcssa17 = phi i32 [ %storemerge4.lcssa10.lcssa17.lcssa25, %25 ], [ %storemerge4.lcssa10, %49 ]
  %storemerge5.lcssa4.lcssa9.lcssa15 = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23, %25 ], [ %storemerge5.lcssa4.lcssa9, %49 ]
  %.lcssa3.lcssa7.lcssa13 = phi i32 [ %.lcssa3.lcssa7.lcssa13.lcssa21, %25 ], [ %.lcssa3.lcssa7, %49 ]
  %storemerge2 = phi i32 [ 0, %25 ], [ %50, %49 ]
  %27 = icmp slt i32 %storemerge2, %19
  br i1 %27, label %28, label %51

28:                                               ; preds = %26
  br label %29

29:                                               ; preds = %46, %28
  %storemerge4.lcssa10 = phi i32 [ %storemerge4.lcssa10.lcssa17, %28 ], [ %storemerge4, %46 ]
  %storemerge5.lcssa4.lcssa9 = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15, %28 ], [ %storemerge5.lcssa4, %46 ]
  %.lcssa3.lcssa7 = phi i32 [ %.lcssa3.lcssa7.lcssa13, %28 ], [ %.lcssa3, %46 ]
  %storemerge3 = phi i32 [ 0, %28 ], [ %47, %46 ]
  %30 = icmp slt i32 %storemerge3, %19
  br i1 %30, label %31, label %48

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %43, %31
  %storemerge5.lcssa4 = phi i32 [ %storemerge5.lcssa4.lcssa9, %31 ], [ %storemerge5, %43 ]
  %.lcssa3 = phi i32 [ %.lcssa3.lcssa7, %31 ], [ %36, %43 ]
  %storemerge4 = phi i32 [ 0, %31 ], [ %44, %43 ]
  %33 = icmp slt i32 %storemerge4, %19
  br i1 %33, label %34, label %45

34:                                               ; preds = %32
  br label %35

35:                                               ; preds = %40, %34
  %36 = phi i32 [ %.lcssa3, %34 ], [ %39, %40 ]
  %storemerge5 = phi i32 [ 0, %34 ], [ %41, %40 ]
  %37 = icmp slt i32 %storemerge5, %19
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = add nsw i32 %36, 1
  br label %40

40:                                               ; preds = %38
  %41 = add nsw i32 %storemerge5, 1
  br label %35, !llvm.loop !7

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42
  %44 = add nsw i32 %storemerge4, 1
  br label %32, !llvm.loop !9

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45
  %47 = add nsw i32 %storemerge3, 1
  br label %29, !llvm.loop !10

48:                                               ; preds = %29
  br label %49

49:                                               ; preds = %48
  %50 = add nsw i32 %storemerge2, 1
  br label %26, !llvm.loop !11

51:                                               ; preds = %26
  br label %52

52:                                               ; preds = %51
  %53 = add nsw i32 %storemerge1, 1
  br label %23, !llvm.loop !12

54:                                               ; preds = %23
  br label %55

55:                                               ; preds = %54
  %56 = add nsw i32 %storemerge, 1
  br label %20, !llvm.loop !13

57:                                               ; preds = %20
  store i32 %storemerge, ptr %4, align 4
  store i32 %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31, ptr %10, align 4
  store i32 %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33, ptr %9, align 1
  store i32 %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35, ptr %8, align 1
  store i32 %storemerge3.lcssa18.lcssa27.lcssa37, ptr %7, align 1
  store i32 %storemerge2.lcssa28.lcssa39, ptr %6, align 1
  store i32 %storemerge1.lcssa40, ptr %5, align 1
  %58 = load i32, ptr %10, align 4
  %59 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %58) #2
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
