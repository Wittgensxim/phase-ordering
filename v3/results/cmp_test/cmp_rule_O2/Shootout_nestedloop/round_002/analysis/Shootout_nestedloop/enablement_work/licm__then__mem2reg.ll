; ModuleID = 'results\cmp_test\cmp_rule_O2\Shootout_nestedloop\round_001\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Shootout/nestedloop.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load ptr, ptr %5, align 8
  %7 = call i32 @atoi(ptr noundef %6) #2
  br label %9

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %8, %4
  %10 = phi i32 [ %7, %4 ], [ 46, %8 ]
  br label %11

11:                                               ; preds = %46, %9
  %storemerge1.lcssa40 = phi i32 [ undef, %9 ], [ %storemerge1.lcssa, %46 ]
  %storemerge2.lcssa28.lcssa39 = phi i32 [ undef, %9 ], [ %storemerge2.lcssa28.lcssa, %46 ]
  %storemerge3.lcssa18.lcssa27.lcssa37 = phi i32 [ undef, %9 ], [ %storemerge3.lcssa18.lcssa27.lcssa, %46 ]
  %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35 = phi i32 [ undef, %9 ], [ %storemerge4.lcssa10.lcssa17.lcssa25.lcssa, %46 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33 = phi i32 [ undef, %9 ], [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa, %46 ]
  %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31 = phi i32 [ 0, %9 ], [ %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa, %46 ]
  %storemerge = phi i32 [ 0, %9 ], [ %47, %46 ]
  %12 = icmp slt i32 %storemerge, %10
  br i1 %12, label %13, label %48

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %43, %13
  %storemerge2.lcssa28 = phi i32 [ %storemerge2.lcssa28.lcssa39, %13 ], [ %storemerge2.lcssa, %43 ]
  %storemerge3.lcssa18.lcssa27 = phi i32 [ %storemerge3.lcssa18.lcssa27.lcssa37, %13 ], [ %storemerge3.lcssa18.lcssa, %43 ]
  %storemerge4.lcssa10.lcssa17.lcssa25 = phi i32 [ %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35, %13 ], [ %storemerge4.lcssa10.lcssa17.lcssa, %43 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23 = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33, %13 ], [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa, %43 ]
  %.lcssa3.lcssa7.lcssa13.lcssa21 = phi i32 [ %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31, %13 ], [ %.lcssa3.lcssa7.lcssa13.lcssa, %43 ]
  %storemerge1 = phi i32 [ 0, %13 ], [ %44, %43 ]
  %15 = icmp slt i32 %storemerge1, %10
  br i1 %15, label %16, label %45

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %40, %16
  %storemerge3.lcssa18 = phi i32 [ %storemerge3.lcssa18.lcssa27, %16 ], [ %storemerge3.lcssa, %40 ]
  %storemerge4.lcssa10.lcssa17 = phi i32 [ %storemerge4.lcssa10.lcssa17.lcssa25, %16 ], [ %storemerge4.lcssa10.lcssa, %40 ]
  %storemerge5.lcssa4.lcssa9.lcssa15 = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23, %16 ], [ %storemerge5.lcssa4.lcssa9.lcssa, %40 ]
  %.lcssa3.lcssa7.lcssa13 = phi i32 [ %.lcssa3.lcssa7.lcssa13.lcssa21, %16 ], [ %.lcssa3.lcssa7.lcssa, %40 ]
  %storemerge2 = phi i32 [ 0, %16 ], [ %41, %40 ]
  %18 = icmp slt i32 %storemerge2, %10
  br i1 %18, label %19, label %42

19:                                               ; preds = %17
  br label %20

20:                                               ; preds = %37, %19
  %storemerge4.lcssa10 = phi i32 [ %storemerge4.lcssa10.lcssa17, %19 ], [ %storemerge4.lcssa, %37 ]
  %storemerge5.lcssa4.lcssa9 = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15, %19 ], [ %storemerge5.lcssa4.lcssa, %37 ]
  %.lcssa3.lcssa7 = phi i32 [ %.lcssa3.lcssa7.lcssa13, %19 ], [ %.lcssa3.lcssa, %37 ]
  %storemerge3 = phi i32 [ 0, %19 ], [ %38, %37 ]
  %21 = icmp slt i32 %storemerge3, %10
  br i1 %21, label %22, label %39

22:                                               ; preds = %20
  br label %23

23:                                               ; preds = %34, %22
  %storemerge5.lcssa4 = phi i32 [ %storemerge5.lcssa4.lcssa9, %22 ], [ %storemerge5.lcssa, %34 ]
  %.lcssa3 = phi i32 [ %.lcssa3.lcssa7, %22 ], [ %.lcssa, %34 ]
  %storemerge4 = phi i32 [ 0, %22 ], [ %35, %34 ]
  %24 = icmp slt i32 %storemerge4, %10
  br i1 %24, label %25, label %36

25:                                               ; preds = %23
  br label %26

26:                                               ; preds = %31, %25
  %27 = phi i32 [ %.lcssa3, %25 ], [ %30, %31 ]
  %storemerge5 = phi i32 [ 0, %25 ], [ %32, %31 ]
  %28 = icmp slt i32 %storemerge5, %10
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = add nsw i32 %27, 1
  br label %31

31:                                               ; preds = %29
  %32 = add nsw i32 %storemerge5, 1
  br label %26, !llvm.loop !7

33:                                               ; preds = %26
  %.lcssa = phi i32 [ %27, %26 ]
  %storemerge5.lcssa = phi i32 [ %storemerge5, %26 ]
  br label %34

34:                                               ; preds = %33
  %35 = add nsw i32 %storemerge4, 1
  br label %23, !llvm.loop !9

36:                                               ; preds = %23
  %storemerge5.lcssa4.lcssa = phi i32 [ %storemerge5.lcssa4, %23 ]
  %.lcssa3.lcssa = phi i32 [ %.lcssa3, %23 ]
  %storemerge4.lcssa = phi i32 [ %storemerge4, %23 ]
  br label %37

37:                                               ; preds = %36
  %38 = add nsw i32 %storemerge3, 1
  br label %20, !llvm.loop !10

39:                                               ; preds = %20
  %storemerge4.lcssa10.lcssa = phi i32 [ %storemerge4.lcssa10, %20 ]
  %storemerge5.lcssa4.lcssa9.lcssa = phi i32 [ %storemerge5.lcssa4.lcssa9, %20 ]
  %.lcssa3.lcssa7.lcssa = phi i32 [ %.lcssa3.lcssa7, %20 ]
  %storemerge3.lcssa = phi i32 [ %storemerge3, %20 ]
  br label %40

40:                                               ; preds = %39
  %41 = add nsw i32 %storemerge2, 1
  br label %17, !llvm.loop !11

42:                                               ; preds = %17
  %storemerge3.lcssa18.lcssa = phi i32 [ %storemerge3.lcssa18, %17 ]
  %storemerge4.lcssa10.lcssa17.lcssa = phi i32 [ %storemerge4.lcssa10.lcssa17, %17 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15, %17 ]
  %.lcssa3.lcssa7.lcssa13.lcssa = phi i32 [ %.lcssa3.lcssa7.lcssa13, %17 ]
  %storemerge2.lcssa = phi i32 [ %storemerge2, %17 ]
  br label %43

43:                                               ; preds = %42
  %44 = add nsw i32 %storemerge1, 1
  br label %14, !llvm.loop !12

45:                                               ; preds = %14
  %storemerge2.lcssa28.lcssa = phi i32 [ %storemerge2.lcssa28, %14 ]
  %storemerge3.lcssa18.lcssa27.lcssa = phi i32 [ %storemerge3.lcssa18.lcssa27, %14 ]
  %storemerge4.lcssa10.lcssa17.lcssa25.lcssa = phi i32 [ %storemerge4.lcssa10.lcssa17.lcssa25, %14 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23, %14 ]
  %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa = phi i32 [ %.lcssa3.lcssa7.lcssa13.lcssa21, %14 ]
  %storemerge1.lcssa = phi i32 [ %storemerge1, %14 ]
  br label %46

46:                                               ; preds = %45
  %47 = add nsw i32 %storemerge, 1
  br label %11, !llvm.loop !13

48:                                               ; preds = %11
  %storemerge1.lcssa40.lcssa = phi i32 [ %storemerge1.lcssa40, %11 ]
  %storemerge2.lcssa28.lcssa39.lcssa = phi i32 [ %storemerge2.lcssa28.lcssa39, %11 ]
  %storemerge3.lcssa18.lcssa27.lcssa37.lcssa = phi i32 [ %storemerge3.lcssa18.lcssa27.lcssa37, %11 ]
  %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35.lcssa = phi i32 [ %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35, %11 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33.lcssa = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33, %11 ]
  %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31.lcssa = phi i32 [ %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31, %11 ]
  %storemerge.lcssa = phi i32 [ %storemerge, %11 ]
  %49 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31.lcssa) #2
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
