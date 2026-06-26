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

19:                                               ; preds = %48, %17
  %storemerge1.lcssa40 = phi i32 [ undef, %17 ], [ %storemerge1, %48 ]
  %storemerge2.lcssa28.lcssa39 = phi i32 [ undef, %17 ], [ %storemerge2.lcssa28, %48 ]
  %storemerge3.lcssa18.lcssa27.lcssa37 = phi i32 [ undef, %17 ], [ %storemerge3.lcssa18.lcssa27, %48 ]
  %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35 = phi i32 [ undef, %17 ], [ %storemerge4.lcssa10.lcssa17.lcssa25, %48 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33 = phi i32 [ undef, %17 ], [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23, %48 ]
  %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31 = phi i32 [ 0, %17 ], [ %.lcssa3.lcssa7.lcssa13.lcssa21, %48 ]
  %storemerge = phi i32 [ 0, %17 ], [ %49, %48 ]
  %20 = icmp slt i32 %storemerge, %18
  br i1 %20, label %21, label %50

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %46, %21
  %storemerge2.lcssa28 = phi i32 [ %storemerge2.lcssa28.lcssa39, %21 ], [ %storemerge2, %46 ]
  %storemerge3.lcssa18.lcssa27 = phi i32 [ %storemerge3.lcssa18.lcssa27.lcssa37, %21 ], [ %storemerge3.lcssa18, %46 ]
  %storemerge4.lcssa10.lcssa17.lcssa25 = phi i32 [ %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35, %21 ], [ %storemerge4.lcssa10.lcssa17, %46 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23 = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33, %21 ], [ %storemerge5.lcssa4.lcssa9.lcssa15, %46 ]
  %.lcssa3.lcssa7.lcssa13.lcssa21 = phi i32 [ %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31, %21 ], [ %.lcssa3.lcssa7.lcssa13, %46 ]
  %storemerge1 = phi i32 [ 0, %21 ], [ %47, %46 ]
  %23 = icmp slt i32 %storemerge1, %18
  br i1 %23, label %24, label %48

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %44, %24
  %storemerge3.lcssa18 = phi i32 [ %storemerge3.lcssa18.lcssa27, %24 ], [ %storemerge3, %44 ]
  %storemerge4.lcssa10.lcssa17 = phi i32 [ %storemerge4.lcssa10.lcssa17.lcssa25, %24 ], [ %storemerge4.lcssa10, %44 ]
  %storemerge5.lcssa4.lcssa9.lcssa15 = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23, %24 ], [ %storemerge5.lcssa4.lcssa9, %44 ]
  %.lcssa3.lcssa7.lcssa13 = phi i32 [ %.lcssa3.lcssa7.lcssa13.lcssa21, %24 ], [ %.lcssa3.lcssa7, %44 ]
  %storemerge2 = phi i32 [ 0, %24 ], [ %45, %44 ]
  %26 = icmp slt i32 %storemerge2, %18
  br i1 %26, label %27, label %46

27:                                               ; preds = %25
  br label %28

28:                                               ; preds = %42, %27
  %storemerge4.lcssa10 = phi i32 [ %storemerge4.lcssa10.lcssa17, %27 ], [ %storemerge4, %42 ]
  %storemerge5.lcssa4.lcssa9 = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15, %27 ], [ %storemerge5.lcssa4, %42 ]
  %.lcssa3.lcssa7 = phi i32 [ %.lcssa3.lcssa7.lcssa13, %27 ], [ %.lcssa3, %42 ]
  %storemerge3 = phi i32 [ 0, %27 ], [ %43, %42 ]
  %29 = icmp slt i32 %storemerge3, %18
  br i1 %29, label %30, label %44

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %40, %30
  %storemerge5.lcssa4 = phi i32 [ %storemerge5.lcssa4.lcssa9, %30 ], [ %storemerge5, %40 ]
  %.lcssa3 = phi i32 [ %.lcssa3.lcssa7, %30 ], [ %35, %40 ]
  %storemerge4 = phi i32 [ 0, %30 ], [ %41, %40 ]
  %32 = icmp slt i32 %storemerge4, %18
  br i1 %32, label %33, label %42

33:                                               ; preds = %31
  br label %34

34:                                               ; preds = %37, %33
  %35 = phi i32 [ %.lcssa3, %33 ], [ %38, %37 ]
  %storemerge5 = phi i32 [ 0, %33 ], [ %39, %37 ]
  %36 = icmp slt i32 %storemerge5, %18
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = add nsw i32 %35, 1
  %39 = add nsw i32 %storemerge5, 1
  br label %34, !llvm.loop !7

40:                                               ; preds = %34
  %41 = add nsw i32 %storemerge4, 1
  br label %31, !llvm.loop !9

42:                                               ; preds = %31
  %43 = add nsw i32 %storemerge3, 1
  br label %28, !llvm.loop !10

44:                                               ; preds = %28
  %45 = add nsw i32 %storemerge2, 1
  br label %25, !llvm.loop !11

46:                                               ; preds = %25
  %47 = add nsw i32 %storemerge1, 1
  br label %22, !llvm.loop !12

48:                                               ; preds = %22
  %49 = add nsw i32 %storemerge, 1
  br label %19, !llvm.loop !13

50:                                               ; preds = %19
  store i32 %storemerge, ptr %4, align 4
  store i32 %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31, ptr %10, align 4
  store i32 %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33, ptr %9, align 1
  store i32 %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35, ptr %8, align 1
  store i32 %storemerge3.lcssa18.lcssa27.lcssa37, ptr %7, align 1
  store i32 %storemerge2.lcssa28.lcssa39, ptr %6, align 1
  store i32 %storemerge1.lcssa40, ptr %5, align 1
  %51 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31) #2
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
