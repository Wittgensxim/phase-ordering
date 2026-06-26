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
  %20 = load i32, ptr %3, align 4
  %21 = load i32, ptr %3, align 4
  %22 = load i32, ptr %3, align 4
  %23 = load i32, ptr %3, align 4
  %24 = load i32, ptr %3, align 4
  %.promoted30 = load i32, ptr %10, align 4
  %.promoted32 = load i32, ptr %9, align 1
  %.promoted34 = load i32, ptr %8, align 1
  %.promoted36 = load i32, ptr %7, align 1
  %.promoted38 = load i32, ptr %6, align 1
  %.promoted = load i32, ptr %5, align 1
  br label %25

25:                                               ; preds = %60, %17
  %storemerge1.lcssa40 = phi i32 [ %.promoted, %17 ], [ %storemerge1.lcssa, %60 ]
  %storemerge2.lcssa28.lcssa39 = phi i32 [ %.promoted38, %17 ], [ %storemerge2.lcssa28.lcssa, %60 ]
  %storemerge3.lcssa18.lcssa27.lcssa37 = phi i32 [ %.promoted36, %17 ], [ %storemerge3.lcssa18.lcssa27.lcssa, %60 ]
  %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35 = phi i32 [ %.promoted34, %17 ], [ %storemerge4.lcssa10.lcssa17.lcssa25.lcssa, %60 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33 = phi i32 [ %.promoted32, %17 ], [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa, %60 ]
  %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31 = phi i32 [ %.promoted30, %17 ], [ %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa, %60 ]
  %storemerge = phi i32 [ 0, %17 ], [ %61, %60 ]
  %26 = icmp slt i32 %storemerge, %19
  br i1 %26, label %27, label %62

27:                                               ; preds = %25
  br label %28

28:                                               ; preds = %57, %27
  %storemerge2.lcssa28 = phi i32 [ %storemerge2.lcssa28.lcssa39, %27 ], [ %storemerge2.lcssa, %57 ]
  %storemerge3.lcssa18.lcssa27 = phi i32 [ %storemerge3.lcssa18.lcssa27.lcssa37, %27 ], [ %storemerge3.lcssa18.lcssa, %57 ]
  %storemerge4.lcssa10.lcssa17.lcssa25 = phi i32 [ %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35, %27 ], [ %storemerge4.lcssa10.lcssa17.lcssa, %57 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23 = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33, %27 ], [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa, %57 ]
  %.lcssa3.lcssa7.lcssa13.lcssa21 = phi i32 [ %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31, %27 ], [ %.lcssa3.lcssa7.lcssa13.lcssa, %57 ]
  %storemerge1 = phi i32 [ 0, %27 ], [ %58, %57 ]
  %29 = icmp slt i32 %storemerge1, %20
  br i1 %29, label %30, label %59

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %54, %30
  %storemerge3.lcssa18 = phi i32 [ %storemerge3.lcssa18.lcssa27, %30 ], [ %storemerge3.lcssa, %54 ]
  %storemerge4.lcssa10.lcssa17 = phi i32 [ %storemerge4.lcssa10.lcssa17.lcssa25, %30 ], [ %storemerge4.lcssa10.lcssa, %54 ]
  %storemerge5.lcssa4.lcssa9.lcssa15 = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23, %30 ], [ %storemerge5.lcssa4.lcssa9.lcssa, %54 ]
  %.lcssa3.lcssa7.lcssa13 = phi i32 [ %.lcssa3.lcssa7.lcssa13.lcssa21, %30 ], [ %.lcssa3.lcssa7.lcssa, %54 ]
  %storemerge2 = phi i32 [ 0, %30 ], [ %55, %54 ]
  %32 = icmp slt i32 %storemerge2, %21
  br i1 %32, label %33, label %56

33:                                               ; preds = %31
  br label %34

34:                                               ; preds = %51, %33
  %storemerge4.lcssa10 = phi i32 [ %storemerge4.lcssa10.lcssa17, %33 ], [ %storemerge4.lcssa, %51 ]
  %storemerge5.lcssa4.lcssa9 = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15, %33 ], [ %storemerge5.lcssa4.lcssa, %51 ]
  %.lcssa3.lcssa7 = phi i32 [ %.lcssa3.lcssa7.lcssa13, %33 ], [ %.lcssa3.lcssa, %51 ]
  %storemerge3 = phi i32 [ 0, %33 ], [ %52, %51 ]
  %35 = icmp slt i32 %storemerge3, %22
  br i1 %35, label %36, label %53

36:                                               ; preds = %34
  br label %37

37:                                               ; preds = %48, %36
  %storemerge5.lcssa4 = phi i32 [ %storemerge5.lcssa4.lcssa9, %36 ], [ %storemerge5.lcssa, %48 ]
  %.lcssa3 = phi i32 [ %.lcssa3.lcssa7, %36 ], [ %.lcssa, %48 ]
  %storemerge4 = phi i32 [ 0, %36 ], [ %49, %48 ]
  %38 = icmp slt i32 %storemerge4, %23
  br i1 %38, label %39, label %50

39:                                               ; preds = %37
  br label %40

40:                                               ; preds = %45, %39
  %41 = phi i32 [ %.lcssa3, %39 ], [ %44, %45 ]
  %storemerge5 = phi i32 [ 0, %39 ], [ %46, %45 ]
  %42 = icmp slt i32 %storemerge5, %24
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = add nsw i32 %41, 1
  br label %45

45:                                               ; preds = %43
  %46 = add nsw i32 %storemerge5, 1
  br label %40, !llvm.loop !7

47:                                               ; preds = %40
  %.lcssa = phi i32 [ %41, %40 ]
  %storemerge5.lcssa = phi i32 [ %storemerge5, %40 ]
  br label %48

48:                                               ; preds = %47
  %49 = add nsw i32 %storemerge4, 1
  br label %37, !llvm.loop !9

50:                                               ; preds = %37
  %storemerge5.lcssa4.lcssa = phi i32 [ %storemerge5.lcssa4, %37 ]
  %.lcssa3.lcssa = phi i32 [ %.lcssa3, %37 ]
  %storemerge4.lcssa = phi i32 [ %storemerge4, %37 ]
  br label %51

51:                                               ; preds = %50
  %52 = add nsw i32 %storemerge3, 1
  br label %34, !llvm.loop !10

53:                                               ; preds = %34
  %storemerge4.lcssa10.lcssa = phi i32 [ %storemerge4.lcssa10, %34 ]
  %storemerge5.lcssa4.lcssa9.lcssa = phi i32 [ %storemerge5.lcssa4.lcssa9, %34 ]
  %.lcssa3.lcssa7.lcssa = phi i32 [ %.lcssa3.lcssa7, %34 ]
  %storemerge3.lcssa = phi i32 [ %storemerge3, %34 ]
  br label %54

54:                                               ; preds = %53
  %55 = add nsw i32 %storemerge2, 1
  br label %31, !llvm.loop !11

56:                                               ; preds = %31
  %storemerge3.lcssa18.lcssa = phi i32 [ %storemerge3.lcssa18, %31 ]
  %storemerge4.lcssa10.lcssa17.lcssa = phi i32 [ %storemerge4.lcssa10.lcssa17, %31 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15, %31 ]
  %.lcssa3.lcssa7.lcssa13.lcssa = phi i32 [ %.lcssa3.lcssa7.lcssa13, %31 ]
  %storemerge2.lcssa = phi i32 [ %storemerge2, %31 ]
  br label %57

57:                                               ; preds = %56
  %58 = add nsw i32 %storemerge1, 1
  br label %28, !llvm.loop !12

59:                                               ; preds = %28
  %storemerge2.lcssa28.lcssa = phi i32 [ %storemerge2.lcssa28, %28 ]
  %storemerge3.lcssa18.lcssa27.lcssa = phi i32 [ %storemerge3.lcssa18.lcssa27, %28 ]
  %storemerge4.lcssa10.lcssa17.lcssa25.lcssa = phi i32 [ %storemerge4.lcssa10.lcssa17.lcssa25, %28 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23, %28 ]
  %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa = phi i32 [ %.lcssa3.lcssa7.lcssa13.lcssa21, %28 ]
  %storemerge1.lcssa = phi i32 [ %storemerge1, %28 ]
  br label %60

60:                                               ; preds = %59
  %61 = add nsw i32 %storemerge, 1
  br label %25, !llvm.loop !13

62:                                               ; preds = %25
  %storemerge1.lcssa40.lcssa = phi i32 [ %storemerge1.lcssa40, %25 ]
  %storemerge2.lcssa28.lcssa39.lcssa = phi i32 [ %storemerge2.lcssa28.lcssa39, %25 ]
  %storemerge3.lcssa18.lcssa27.lcssa37.lcssa = phi i32 [ %storemerge3.lcssa18.lcssa27.lcssa37, %25 ]
  %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35.lcssa = phi i32 [ %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35, %25 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33.lcssa = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33, %25 ]
  %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31.lcssa = phi i32 [ %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31, %25 ]
  %storemerge.lcssa = phi i32 [ %storemerge, %25 ]
  store i32 %storemerge.lcssa, ptr %4, align 4
  store i32 %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31.lcssa, ptr %10, align 4
  store i32 %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33.lcssa, ptr %9, align 1
  store i32 %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35.lcssa, ptr %8, align 1
  store i32 %storemerge3.lcssa18.lcssa27.lcssa37.lcssa, ptr %7, align 1
  store i32 %storemerge2.lcssa28.lcssa39.lcssa, ptr %6, align 1
  store i32 %storemerge1.lcssa40.lcssa, ptr %5, align 1
  %63 = load i32, ptr %10, align 4
  %64 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %63) #2
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
