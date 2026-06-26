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
  %8 = icmp eq i32 %0, 2
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load ptr, ptr %10, align 8
  %12 = call i32 @atoi(ptr noundef %11) #2
  br label %14

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %13, %9
  %15 = phi i32 [ %12, %9 ], [ 46, %13 ]
  %.promoted32 = load i32, ptr %7, align 1
  %.promoted34 = load i32, ptr %6, align 1
  %.promoted36 = load i32, ptr %5, align 1
  %.promoted38 = load i32, ptr %4, align 1
  %.promoted = load i32, ptr %3, align 1
  br label %16

16:                                               ; preds = %51, %14
  %storemerge1.lcssa40 = phi i32 [ %.promoted, %14 ], [ %storemerge1, %51 ]
  %storemerge2.lcssa28.lcssa39 = phi i32 [ %.promoted38, %14 ], [ %storemerge2.lcssa28, %51 ]
  %storemerge3.lcssa18.lcssa27.lcssa37 = phi i32 [ %.promoted36, %14 ], [ %storemerge3.lcssa18.lcssa27, %51 ]
  %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35 = phi i32 [ %.promoted34, %14 ], [ %storemerge4.lcssa10.lcssa17.lcssa25, %51 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33 = phi i32 [ %.promoted32, %14 ], [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23, %51 ]
  %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31 = phi i32 [ 0, %14 ], [ %.lcssa3.lcssa7.lcssa13.lcssa21, %51 ]
  %storemerge = phi i32 [ 0, %14 ], [ %52, %51 ]
  %17 = icmp slt i32 %storemerge, %15
  br i1 %17, label %18, label %53

18:                                               ; preds = %16
  br label %19

19:                                               ; preds = %48, %18
  %storemerge2.lcssa28 = phi i32 [ %storemerge2.lcssa28.lcssa39, %18 ], [ %storemerge2, %48 ]
  %storemerge3.lcssa18.lcssa27 = phi i32 [ %storemerge3.lcssa18.lcssa27.lcssa37, %18 ], [ %storemerge3.lcssa18, %48 ]
  %storemerge4.lcssa10.lcssa17.lcssa25 = phi i32 [ %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35, %18 ], [ %storemerge4.lcssa10.lcssa17, %48 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23 = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33, %18 ], [ %storemerge5.lcssa4.lcssa9.lcssa15, %48 ]
  %.lcssa3.lcssa7.lcssa13.lcssa21 = phi i32 [ %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31, %18 ], [ %.lcssa3.lcssa7.lcssa13, %48 ]
  %storemerge1 = phi i32 [ 0, %18 ], [ %49, %48 ]
  %20 = icmp slt i32 %storemerge1, %15
  br i1 %20, label %21, label %50

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %45, %21
  %storemerge3.lcssa18 = phi i32 [ %storemerge3.lcssa18.lcssa27, %21 ], [ %storemerge3, %45 ]
  %storemerge4.lcssa10.lcssa17 = phi i32 [ %storemerge4.lcssa10.lcssa17.lcssa25, %21 ], [ %storemerge4.lcssa10, %45 ]
  %storemerge5.lcssa4.lcssa9.lcssa15 = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23, %21 ], [ %storemerge5.lcssa4.lcssa9, %45 ]
  %.lcssa3.lcssa7.lcssa13 = phi i32 [ %.lcssa3.lcssa7.lcssa13.lcssa21, %21 ], [ %.lcssa3.lcssa7, %45 ]
  %storemerge2 = phi i32 [ 0, %21 ], [ %46, %45 ]
  %23 = icmp slt i32 %storemerge2, %15
  br i1 %23, label %24, label %47

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %42, %24
  %storemerge4.lcssa10 = phi i32 [ %storemerge4.lcssa10.lcssa17, %24 ], [ %storemerge4, %42 ]
  %storemerge5.lcssa4.lcssa9 = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15, %24 ], [ %storemerge5.lcssa4, %42 ]
  %.lcssa3.lcssa7 = phi i32 [ %.lcssa3.lcssa7.lcssa13, %24 ], [ %.lcssa3, %42 ]
  %storemerge3 = phi i32 [ 0, %24 ], [ %43, %42 ]
  %26 = icmp slt i32 %storemerge3, %15
  br i1 %26, label %27, label %44

27:                                               ; preds = %25
  br label %28

28:                                               ; preds = %39, %27
  %storemerge5.lcssa4 = phi i32 [ %storemerge5.lcssa4.lcssa9, %27 ], [ %storemerge5, %39 ]
  %.lcssa3 = phi i32 [ %.lcssa3.lcssa7, %27 ], [ %32, %39 ]
  %storemerge4 = phi i32 [ 0, %27 ], [ %40, %39 ]
  %29 = icmp slt i32 %storemerge4, %15
  br i1 %29, label %30, label %41

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %35, %30
  %32 = phi i32 [ %.lcssa3, %30 ], [ %36, %35 ]
  %storemerge5 = phi i32 [ 0, %30 ], [ %37, %35 ]
  %33 = icmp slt i32 %storemerge5, %15
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  br label %35

35:                                               ; preds = %34
  %36 = add nsw i32 %32, 1
  %37 = add nuw nsw i32 %storemerge5, 1
  br label %31, !llvm.loop !7

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38
  %40 = add nuw nsw i32 %storemerge4, 1
  br label %28, !llvm.loop !9

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %41
  %43 = add nuw nsw i32 %storemerge3, 1
  br label %25, !llvm.loop !10

44:                                               ; preds = %25
  br label %45

45:                                               ; preds = %44
  %46 = add nuw nsw i32 %storemerge2, 1
  br label %22, !llvm.loop !11

47:                                               ; preds = %22
  br label %48

48:                                               ; preds = %47
  %49 = add nuw nsw i32 %storemerge1, 1
  br label %19, !llvm.loop !12

50:                                               ; preds = %19
  br label %51

51:                                               ; preds = %50
  %52 = add nuw nsw i32 %storemerge, 1
  br label %16, !llvm.loop !13

53:                                               ; preds = %16
  store i32 %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33, ptr %7, align 1
  store i32 %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35, ptr %6, align 1
  store i32 %storemerge3.lcssa18.lcssa27.lcssa37, ptr %5, align 1
  store i32 %storemerge2.lcssa28.lcssa39, ptr %4, align 1
  store i32 %storemerge1.lcssa40, ptr %3, align 1
  %54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31) #2
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
