; ModuleID = 'results\cmp_test\cmp_rule_O2\Shootout_nestedloop\round_003\output.ll'
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
  br label %16

16:                                               ; preds = %12, %2
  %17 = phi i32 [ %15, %12 ], [ 46, %2 ]
  store i32 %17, ptr %3, align 4
  store i32 0, ptr %10, align 4
  %18 = load i32, ptr %3, align 4
  %19 = load i32, ptr %3, align 4
  %20 = load i32, ptr %3, align 4
  %21 = load i32, ptr %3, align 4
  %22 = load i32, ptr %3, align 4
  %23 = load i32, ptr %3, align 4
  %.promoted30 = load i32, ptr %10, align 4
  %.promoted32 = load i32, ptr %9, align 1
  %.promoted34 = load i32, ptr %8, align 1
  %.promoted36 = load i32, ptr %7, align 1
  %.promoted38 = load i32, ptr %6, align 1
  %.promoted = load i32, ptr %5, align 1
  br label %24

24:                                               ; preds = %43, %16
  %storemerge1.lcssa40 = phi i32 [ %.promoted, %16 ], [ %storemerge1.lcssa, %43 ]
  %storemerge2.lcssa28.lcssa39 = phi i32 [ %.promoted38, %16 ], [ %storemerge2.lcssa28.lcssa, %43 ]
  %storemerge3.lcssa18.lcssa27.lcssa37 = phi i32 [ %.promoted36, %16 ], [ %storemerge3.lcssa18.lcssa27.lcssa, %43 ]
  %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35 = phi i32 [ %.promoted34, %16 ], [ %storemerge4.lcssa10.lcssa17.lcssa25.lcssa, %43 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33 = phi i32 [ %.promoted32, %16 ], [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa, %43 ]
  %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31 = phi i32 [ %.promoted30, %16 ], [ %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa, %43 ]
  %storemerge = phi i32 [ 0, %16 ], [ %44, %43 ]
  %25 = icmp slt i32 %storemerge, %18
  br i1 %25, label %.preheader4, label %45

.preheader4:                                      ; preds = %24, %41
  %storemerge2.lcssa28 = phi i32 [ %storemerge2.lcssa, %41 ], [ %storemerge2.lcssa28.lcssa39, %24 ]
  %storemerge3.lcssa18.lcssa27 = phi i32 [ %storemerge3.lcssa18.lcssa, %41 ], [ %storemerge3.lcssa18.lcssa27.lcssa37, %24 ]
  %storemerge4.lcssa10.lcssa17.lcssa25 = phi i32 [ %storemerge4.lcssa10.lcssa17.lcssa, %41 ], [ %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35, %24 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23 = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa, %41 ], [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33, %24 ]
  %.lcssa3.lcssa7.lcssa13.lcssa21 = phi i32 [ %.lcssa3.lcssa7.lcssa13.lcssa, %41 ], [ %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31, %24 ]
  %storemerge1 = phi i32 [ %42, %41 ], [ 0, %24 ]
  %26 = icmp slt i32 %storemerge1, %19
  br i1 %26, label %.preheader3, label %43

.preheader3:                                      ; preds = %.preheader4, %39
  %storemerge3.lcssa18 = phi i32 [ %storemerge3.lcssa, %39 ], [ %storemerge3.lcssa18.lcssa27, %.preheader4 ]
  %storemerge4.lcssa10.lcssa17 = phi i32 [ %storemerge4.lcssa10.lcssa, %39 ], [ %storemerge4.lcssa10.lcssa17.lcssa25, %.preheader4 ]
  %storemerge5.lcssa4.lcssa9.lcssa15 = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa, %39 ], [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23, %.preheader4 ]
  %.lcssa3.lcssa7.lcssa13 = phi i32 [ %.lcssa3.lcssa7.lcssa, %39 ], [ %.lcssa3.lcssa7.lcssa13.lcssa21, %.preheader4 ]
  %storemerge2 = phi i32 [ %40, %39 ], [ 0, %.preheader4 ]
  %27 = icmp slt i32 %storemerge2, %20
  br i1 %27, label %.preheader2, label %41

.preheader2:                                      ; preds = %.preheader3, %37
  %storemerge4.lcssa10 = phi i32 [ %storemerge4.lcssa, %37 ], [ %storemerge4.lcssa10.lcssa17, %.preheader3 ]
  %storemerge5.lcssa4.lcssa9 = phi i32 [ %storemerge5.lcssa4.lcssa, %37 ], [ %storemerge5.lcssa4.lcssa9.lcssa15, %.preheader3 ]
  %.lcssa3.lcssa7 = phi i32 [ %.lcssa3.lcssa, %37 ], [ %.lcssa3.lcssa7.lcssa13, %.preheader3 ]
  %storemerge3 = phi i32 [ %38, %37 ], [ 0, %.preheader3 ]
  %28 = icmp slt i32 %storemerge3, %21
  br i1 %28, label %.preheader1, label %39

.preheader1:                                      ; preds = %.preheader2, %35
  %storemerge5.lcssa4 = phi i32 [ %storemerge5.lcssa, %35 ], [ %storemerge5.lcssa4.lcssa9, %.preheader2 ]
  %.lcssa3 = phi i32 [ %.lcssa, %35 ], [ %.lcssa3.lcssa7, %.preheader2 ]
  %storemerge4 = phi i32 [ %36, %35 ], [ 0, %.preheader2 ]
  %29 = icmp slt i32 %storemerge4, %22
  br i1 %29, label %.preheader, label %37

.preheader:                                       ; preds = %.preheader1, %32
  %30 = phi i32 [ %33, %32 ], [ %.lcssa3, %.preheader1 ]
  %storemerge5 = phi i32 [ %34, %32 ], [ 0, %.preheader1 ]
  %31 = icmp slt i32 %storemerge5, %23
  br i1 %31, label %32, label %35

32:                                               ; preds = %.preheader
  %33 = add nsw i32 %30, 1
  %34 = add nsw i32 %storemerge5, 1
  br label %.preheader, !llvm.loop !7

35:                                               ; preds = %.preheader
  %.lcssa = phi i32 [ %30, %.preheader ]
  %storemerge5.lcssa = phi i32 [ %storemerge5, %.preheader ]
  %36 = add nsw i32 %storemerge4, 1
  br label %.preheader1, !llvm.loop !9

37:                                               ; preds = %.preheader1
  %storemerge5.lcssa4.lcssa = phi i32 [ %storemerge5.lcssa4, %.preheader1 ]
  %.lcssa3.lcssa = phi i32 [ %.lcssa3, %.preheader1 ]
  %storemerge4.lcssa = phi i32 [ %storemerge4, %.preheader1 ]
  %38 = add nsw i32 %storemerge3, 1
  br label %.preheader2, !llvm.loop !10

39:                                               ; preds = %.preheader2
  %storemerge4.lcssa10.lcssa = phi i32 [ %storemerge4.lcssa10, %.preheader2 ]
  %storemerge5.lcssa4.lcssa9.lcssa = phi i32 [ %storemerge5.lcssa4.lcssa9, %.preheader2 ]
  %.lcssa3.lcssa7.lcssa = phi i32 [ %.lcssa3.lcssa7, %.preheader2 ]
  %storemerge3.lcssa = phi i32 [ %storemerge3, %.preheader2 ]
  %40 = add nsw i32 %storemerge2, 1
  br label %.preheader3, !llvm.loop !11

41:                                               ; preds = %.preheader3
  %storemerge3.lcssa18.lcssa = phi i32 [ %storemerge3.lcssa18, %.preheader3 ]
  %storemerge4.lcssa10.lcssa17.lcssa = phi i32 [ %storemerge4.lcssa10.lcssa17, %.preheader3 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15, %.preheader3 ]
  %.lcssa3.lcssa7.lcssa13.lcssa = phi i32 [ %.lcssa3.lcssa7.lcssa13, %.preheader3 ]
  %storemerge2.lcssa = phi i32 [ %storemerge2, %.preheader3 ]
  %42 = add nsw i32 %storemerge1, 1
  br label %.preheader4, !llvm.loop !12

43:                                               ; preds = %.preheader4
  %storemerge2.lcssa28.lcssa = phi i32 [ %storemerge2.lcssa28, %.preheader4 ]
  %storemerge3.lcssa18.lcssa27.lcssa = phi i32 [ %storemerge3.lcssa18.lcssa27, %.preheader4 ]
  %storemerge4.lcssa10.lcssa17.lcssa25.lcssa = phi i32 [ %storemerge4.lcssa10.lcssa17.lcssa25, %.preheader4 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23, %.preheader4 ]
  %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa = phi i32 [ %.lcssa3.lcssa7.lcssa13.lcssa21, %.preheader4 ]
  %storemerge1.lcssa = phi i32 [ %storemerge1, %.preheader4 ]
  %44 = add nsw i32 %storemerge, 1
  br label %24, !llvm.loop !13

45:                                               ; preds = %24
  %storemerge1.lcssa40.lcssa = phi i32 [ %storemerge1.lcssa40, %24 ]
  %storemerge2.lcssa28.lcssa39.lcssa = phi i32 [ %storemerge2.lcssa28.lcssa39, %24 ]
  %storemerge3.lcssa18.lcssa27.lcssa37.lcssa = phi i32 [ %storemerge3.lcssa18.lcssa27.lcssa37, %24 ]
  %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35.lcssa = phi i32 [ %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35, %24 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33.lcssa = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33, %24 ]
  %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31.lcssa = phi i32 [ %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31, %24 ]
  %storemerge.lcssa = phi i32 [ %storemerge, %24 ]
  store i32 %storemerge.lcssa, ptr %4, align 4
  store i32 %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31.lcssa, ptr %10, align 4
  store i32 %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33.lcssa, ptr %9, align 1
  store i32 %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35.lcssa, ptr %8, align 1
  store i32 %storemerge3.lcssa18.lcssa27.lcssa37.lcssa, ptr %7, align 1
  store i32 %storemerge2.lcssa28.lcssa39.lcssa, ptr %6, align 1
  store i32 %storemerge1.lcssa40.lcssa, ptr %5, align 1
  %46 = load i32, ptr %10, align 4
  %47 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %46) #2
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
