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
  %15 = call i32 @atoi(ptr noundef %14) #3
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
  %smax = call i32 @llvm.smax.i32(i32 %24, i32 0)
  %smax41 = call i32 @llvm.smax.i32(i32 %23, i32 0)
  %25 = mul i32 %smax41, %smax
  %smax42 = call i32 @llvm.smax.i32(i32 %22, i32 0)
  %smax44 = call i32 @llvm.smax.i32(i32 %21, i32 0)
  %smax46 = call i32 @llvm.smax.i32(i32 %20, i32 0)
  %smax48 = call i32 @llvm.smax.i32(i32 %19, i32 0)
  br label %26

26:                                               ; preds = %53, %17
  %storemerge1.lcssa40 = phi i32 [ %.promoted, %17 ], [ %smax46, %53 ]
  %storemerge2.lcssa28.lcssa39 = phi i32 [ %.promoted38, %17 ], [ %storemerge2.lcssa28.lcssa, %53 ]
  %storemerge3.lcssa18.lcssa27.lcssa37 = phi i32 [ %.promoted36, %17 ], [ %storemerge3.lcssa18.lcssa27.lcssa, %53 ]
  %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35 = phi i32 [ %.promoted34, %17 ], [ %storemerge4.lcssa10.lcssa17.lcssa25.lcssa, %53 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33 = phi i32 [ %.promoted32, %17 ], [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa, %53 ]
  %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31 = phi i32 [ %.promoted30, %17 ], [ %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa, %53 ]
  %storemerge = phi i32 [ 0, %17 ], [ %54, %53 ]
  %exitcond49 = icmp ne i32 %storemerge, %smax48
  br i1 %exitcond49, label %27, label %55

27:                                               ; preds = %26
  br label %28

28:                                               ; preds = %50, %27
  %storemerge2.lcssa28 = phi i32 [ %storemerge2.lcssa28.lcssa39, %27 ], [ %smax44, %50 ]
  %storemerge3.lcssa18.lcssa27 = phi i32 [ %storemerge3.lcssa18.lcssa27.lcssa37, %27 ], [ %storemerge3.lcssa18.lcssa, %50 ]
  %storemerge4.lcssa10.lcssa17.lcssa25 = phi i32 [ %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35, %27 ], [ %storemerge4.lcssa10.lcssa17.lcssa, %50 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23 = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33, %27 ], [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa, %50 ]
  %.lcssa3.lcssa7.lcssa13.lcssa21 = phi i32 [ %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31, %27 ], [ %.lcssa3.lcssa7.lcssa13.lcssa, %50 ]
  %storemerge1 = phi i32 [ 0, %27 ], [ %51, %50 ]
  %exitcond47 = icmp ne i32 %storemerge1, %smax46
  br i1 %exitcond47, label %29, label %52

29:                                               ; preds = %28
  br label %30

30:                                               ; preds = %47, %29
  %storemerge3.lcssa18 = phi i32 [ %storemerge3.lcssa18.lcssa27, %29 ], [ %smax42, %47 ]
  %storemerge4.lcssa10.lcssa17 = phi i32 [ %storemerge4.lcssa10.lcssa17.lcssa25, %29 ], [ %storemerge4.lcssa10.lcssa, %47 ]
  %storemerge5.lcssa4.lcssa9.lcssa15 = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23, %29 ], [ %storemerge5.lcssa4.lcssa9.lcssa, %47 ]
  %.lcssa3.lcssa7.lcssa13 = phi i32 [ %.lcssa3.lcssa7.lcssa13.lcssa21, %29 ], [ %.lcssa3.lcssa7.lcssa, %47 ]
  %storemerge2 = phi i32 [ 0, %29 ], [ %48, %47 ]
  %exitcond45 = icmp ne i32 %storemerge2, %smax44
  br i1 %exitcond45, label %31, label %49

31:                                               ; preds = %30
  br label %32

32:                                               ; preds = %44, %31
  %storemerge4.lcssa10 = phi i32 [ %storemerge4.lcssa10.lcssa17, %31 ], [ %smax41, %44 ]
  %storemerge5.lcssa4.lcssa9 = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15, %31 ], [ %storemerge5.lcssa4.lcssa, %44 ]
  %.lcssa3.lcssa7 = phi i32 [ %.lcssa3.lcssa7.lcssa13, %31 ], [ %43, %44 ]
  %storemerge3 = phi i32 [ 0, %31 ], [ %45, %44 ]
  %exitcond43 = icmp ne i32 %storemerge3, %smax42
  br i1 %exitcond43, label %33, label %46

33:                                               ; preds = %32
  br label %34

34:                                               ; preds = %40, %33
  %storemerge5.lcssa4 = phi i32 [ %storemerge5.lcssa4.lcssa9, %33 ], [ %smax, %40 ]
  %storemerge4 = phi i32 [ 0, %33 ], [ %41, %40 ]
  %exitcond = icmp ne i32 %storemerge4, %smax41
  br i1 %exitcond, label %35, label %42

35:                                               ; preds = %34
  br label %36

36:                                               ; preds = %38, %35
  br i1 false, label %37, label %39

37:                                               ; preds = %36
  br label %38

38:                                               ; preds = %37
  br label %36, !llvm.loop !7

39:                                               ; preds = %36
  br label %40

40:                                               ; preds = %39
  %41 = add nuw i32 %storemerge4, 1
  br label %34, !llvm.loop !9

42:                                               ; preds = %34
  %storemerge5.lcssa4.lcssa = phi i32 [ %storemerge5.lcssa4, %34 ]
  %43 = add i32 %25, %.lcssa3.lcssa7
  br label %44

44:                                               ; preds = %42
  %45 = add nuw i32 %storemerge3, 1
  br label %32, !llvm.loop !10

46:                                               ; preds = %32
  %storemerge4.lcssa10.lcssa = phi i32 [ %storemerge4.lcssa10, %32 ]
  %storemerge5.lcssa4.lcssa9.lcssa = phi i32 [ %storemerge5.lcssa4.lcssa9, %32 ]
  %.lcssa3.lcssa7.lcssa = phi i32 [ %.lcssa3.lcssa7, %32 ]
  br label %47

47:                                               ; preds = %46
  %48 = add nuw i32 %storemerge2, 1
  br label %30, !llvm.loop !11

49:                                               ; preds = %30
  %storemerge3.lcssa18.lcssa = phi i32 [ %storemerge3.lcssa18, %30 ]
  %storemerge4.lcssa10.lcssa17.lcssa = phi i32 [ %storemerge4.lcssa10.lcssa17, %30 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15, %30 ]
  %.lcssa3.lcssa7.lcssa13.lcssa = phi i32 [ %.lcssa3.lcssa7.lcssa13, %30 ]
  br label %50

50:                                               ; preds = %49
  %51 = add nuw i32 %storemerge1, 1
  br label %28, !llvm.loop !12

52:                                               ; preds = %28
  %storemerge2.lcssa28.lcssa = phi i32 [ %storemerge2.lcssa28, %28 ]
  %storemerge3.lcssa18.lcssa27.lcssa = phi i32 [ %storemerge3.lcssa18.lcssa27, %28 ]
  %storemerge4.lcssa10.lcssa17.lcssa25.lcssa = phi i32 [ %storemerge4.lcssa10.lcssa17.lcssa25, %28 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23, %28 ]
  %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa = phi i32 [ %.lcssa3.lcssa7.lcssa13.lcssa21, %28 ]
  br label %53

53:                                               ; preds = %52
  %54 = add nuw i32 %storemerge, 1
  br label %26, !llvm.loop !13

55:                                               ; preds = %26
  %storemerge1.lcssa40.lcssa = phi i32 [ %storemerge1.lcssa40, %26 ]
  %storemerge2.lcssa28.lcssa39.lcssa = phi i32 [ %storemerge2.lcssa28.lcssa39, %26 ]
  %storemerge3.lcssa18.lcssa27.lcssa37.lcssa = phi i32 [ %storemerge3.lcssa18.lcssa27.lcssa37, %26 ]
  %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35.lcssa = phi i32 [ %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35, %26 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33.lcssa = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33, %26 ]
  %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31.lcssa = phi i32 [ %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31, %26 ]
  store i32 %smax48, ptr %4, align 4
  store i32 %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31.lcssa, ptr %10, align 4
  store i32 %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33.lcssa, ptr %9, align 1
  store i32 %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35.lcssa, ptr %8, align 1
  store i32 %storemerge3.lcssa18.lcssa27.lcssa37.lcssa, ptr %7, align 1
  store i32 %storemerge2.lcssa28.lcssa39.lcssa, ptr %6, align 1
  store i32 %storemerge1.lcssa40.lcssa, ptr %5, align 1
  %56 = load i32, ptr %10, align 4
  %57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %56) #3
  ret i32 0
}

declare dso_local i32 @atoi(ptr noundef) #1

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

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
