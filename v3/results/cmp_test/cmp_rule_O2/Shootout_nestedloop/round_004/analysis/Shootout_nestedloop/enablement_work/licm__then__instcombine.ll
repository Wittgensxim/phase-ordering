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
  %8 = icmp eq i32 %0, 2
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load ptr, ptr %10, align 8
  %12 = call i32 @atoi(ptr noundef %11) #2
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi i32 [ %12, %9 ], [ 46, %2 ]
  %.promoted32 = load i32, ptr %7, align 1
  %.promoted34 = load i32, ptr %6, align 1
  %.promoted36 = load i32, ptr %5, align 1
  %.promoted38 = load i32, ptr %4, align 1
  %.promoted = load i32, ptr %3, align 1
  br label %15

15:                                               ; preds = %39, %13
  %storemerge1.lcssa40 = phi i32 [ %.promoted, %13 ], [ %storemerge1, %39 ]
  %storemerge2.lcssa28.lcssa39 = phi i32 [ %.promoted38, %13 ], [ %storemerge2.lcssa28, %39 ]
  %storemerge3.lcssa18.lcssa27.lcssa37 = phi i32 [ %.promoted36, %13 ], [ %storemerge3.lcssa18.lcssa27, %39 ]
  %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35 = phi i32 [ %.promoted34, %13 ], [ %storemerge4.lcssa10.lcssa17.lcssa25, %39 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33 = phi i32 [ %.promoted32, %13 ], [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23, %39 ]
  %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31 = phi i32 [ 0, %13 ], [ %.lcssa3.lcssa7.lcssa13.lcssa21, %39 ]
  %storemerge = phi i32 [ 0, %13 ], [ %40, %39 ]
  %16 = icmp slt i32 %storemerge, %14
  br i1 %16, label %.preheader4, label %41

.preheader4:                                      ; preds = %15
  br label %17

17:                                               ; preds = %37, %.preheader4
  %storemerge2.lcssa28 = phi i32 [ %storemerge2, %37 ], [ %storemerge2.lcssa28.lcssa39, %.preheader4 ]
  %storemerge3.lcssa18.lcssa27 = phi i32 [ %storemerge3.lcssa18, %37 ], [ %storemerge3.lcssa18.lcssa27.lcssa37, %.preheader4 ]
  %storemerge4.lcssa10.lcssa17.lcssa25 = phi i32 [ %storemerge4.lcssa10.lcssa17, %37 ], [ %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35, %.preheader4 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23 = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15, %37 ], [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33, %.preheader4 ]
  %.lcssa3.lcssa7.lcssa13.lcssa21 = phi i32 [ %.lcssa3.lcssa7.lcssa13, %37 ], [ %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31, %.preheader4 ]
  %storemerge1 = phi i32 [ %38, %37 ], [ 0, %.preheader4 ]
  %18 = icmp slt i32 %storemerge1, %14
  br i1 %18, label %.preheader3, label %39

.preheader3:                                      ; preds = %17
  br label %19

19:                                               ; preds = %35, %.preheader3
  %storemerge3.lcssa18 = phi i32 [ %storemerge3, %35 ], [ %storemerge3.lcssa18.lcssa27, %.preheader3 ]
  %storemerge4.lcssa10.lcssa17 = phi i32 [ %storemerge4.lcssa10, %35 ], [ %storemerge4.lcssa10.lcssa17.lcssa25, %.preheader3 ]
  %storemerge5.lcssa4.lcssa9.lcssa15 = phi i32 [ %storemerge5.lcssa4.lcssa9, %35 ], [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23, %.preheader3 ]
  %.lcssa3.lcssa7.lcssa13 = phi i32 [ %.lcssa3.lcssa7, %35 ], [ %.lcssa3.lcssa7.lcssa13.lcssa21, %.preheader3 ]
  %storemerge2 = phi i32 [ %36, %35 ], [ 0, %.preheader3 ]
  %20 = icmp slt i32 %storemerge2, %14
  br i1 %20, label %.preheader2, label %37

.preheader2:                                      ; preds = %19
  br label %21

21:                                               ; preds = %33, %.preheader2
  %storemerge4.lcssa10 = phi i32 [ %storemerge4, %33 ], [ %storemerge4.lcssa10.lcssa17, %.preheader2 ]
  %storemerge5.lcssa4.lcssa9 = phi i32 [ %storemerge5.lcssa4, %33 ], [ %storemerge5.lcssa4.lcssa9.lcssa15, %.preheader2 ]
  %.lcssa3.lcssa7 = phi i32 [ %.lcssa3, %33 ], [ %.lcssa3.lcssa7.lcssa13, %.preheader2 ]
  %storemerge3 = phi i32 [ %34, %33 ], [ 0, %.preheader2 ]
  %22 = icmp slt i32 %storemerge3, %14
  br i1 %22, label %.preheader1, label %35

.preheader1:                                      ; preds = %21
  br label %23

23:                                               ; preds = %31, %.preheader1
  %storemerge5.lcssa4 = phi i32 [ %storemerge5, %31 ], [ %storemerge5.lcssa4.lcssa9, %.preheader1 ]
  %.lcssa3 = phi i32 [ %26, %31 ], [ %.lcssa3.lcssa7, %.preheader1 ]
  %storemerge4 = phi i32 [ %32, %31 ], [ 0, %.preheader1 ]
  %24 = icmp slt i32 %storemerge4, %14
  br i1 %24, label %.preheader, label %33

.preheader:                                       ; preds = %23
  br label %25

25:                                               ; preds = %28, %.preheader
  %26 = phi i32 [ %29, %28 ], [ %.lcssa3, %.preheader ]
  %storemerge5 = phi i32 [ %30, %28 ], [ 0, %.preheader ]
  %27 = icmp slt i32 %storemerge5, %14
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = add nsw i32 %26, 1
  %30 = add nuw nsw i32 %storemerge5, 1
  br label %25, !llvm.loop !7

31:                                               ; preds = %25
  %32 = add nuw nsw i32 %storemerge4, 1
  br label %23, !llvm.loop !9

33:                                               ; preds = %23
  %34 = add nuw nsw i32 %storemerge3, 1
  br label %21, !llvm.loop !10

35:                                               ; preds = %21
  %36 = add nuw nsw i32 %storemerge2, 1
  br label %19, !llvm.loop !11

37:                                               ; preds = %19
  %38 = add nuw nsw i32 %storemerge1, 1
  br label %17, !llvm.loop !12

39:                                               ; preds = %17
  %40 = add nuw nsw i32 %storemerge, 1
  br label %15, !llvm.loop !13

41:                                               ; preds = %15
  store i32 %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33, ptr %7, align 1
  store i32 %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35, ptr %6, align 1
  store i32 %storemerge3.lcssa18.lcssa27.lcssa37, ptr %5, align 1
  store i32 %storemerge2.lcssa28.lcssa39, ptr %4, align 1
  store i32 %storemerge1.lcssa40, ptr %3, align 1
  %42 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31) #2
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
