; ModuleID = 'results\cmp_test\cmp_rule_O2\Shootout_nestedloop\round_003\output.ll'
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
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi i32 [ %7, %4 ], [ 46, %2 ]
  br label %10

10:                                               ; preds = %34, %8
  %storemerge1.lcssa40 = phi i32 [ undef, %8 ], [ %storemerge1.lcssa, %34 ]
  %storemerge2.lcssa28.lcssa39 = phi i32 [ undef, %8 ], [ %storemerge2.lcssa28.lcssa, %34 ]
  %storemerge3.lcssa18.lcssa27.lcssa37 = phi i32 [ undef, %8 ], [ %storemerge3.lcssa18.lcssa27.lcssa, %34 ]
  %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35 = phi i32 [ undef, %8 ], [ %storemerge4.lcssa10.lcssa17.lcssa25.lcssa, %34 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33 = phi i32 [ undef, %8 ], [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa, %34 ]
  %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31 = phi i32 [ 0, %8 ], [ %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa, %34 ]
  %storemerge = phi i32 [ 0, %8 ], [ %35, %34 ]
  %11 = icmp slt i32 %storemerge, %9
  br i1 %11, label %.preheader4, label %36

.preheader4:                                      ; preds = %10
  br label %12

12:                                               ; preds = %32, %.preheader4
  %storemerge2.lcssa28 = phi i32 [ %storemerge2.lcssa, %32 ], [ %storemerge2.lcssa28.lcssa39, %.preheader4 ]
  %storemerge3.lcssa18.lcssa27 = phi i32 [ %storemerge3.lcssa18.lcssa, %32 ], [ %storemerge3.lcssa18.lcssa27.lcssa37, %.preheader4 ]
  %storemerge4.lcssa10.lcssa17.lcssa25 = phi i32 [ %storemerge4.lcssa10.lcssa17.lcssa, %32 ], [ %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35, %.preheader4 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23 = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa, %32 ], [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33, %.preheader4 ]
  %.lcssa3.lcssa7.lcssa13.lcssa21 = phi i32 [ %.lcssa3.lcssa7.lcssa13.lcssa, %32 ], [ %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31, %.preheader4 ]
  %storemerge1 = phi i32 [ %33, %32 ], [ 0, %.preheader4 ]
  %13 = icmp slt i32 %storemerge1, %9
  br i1 %13, label %.preheader3, label %34

.preheader3:                                      ; preds = %12
  br label %14

14:                                               ; preds = %30, %.preheader3
  %storemerge3.lcssa18 = phi i32 [ %storemerge3.lcssa, %30 ], [ %storemerge3.lcssa18.lcssa27, %.preheader3 ]
  %storemerge4.lcssa10.lcssa17 = phi i32 [ %storemerge4.lcssa10.lcssa, %30 ], [ %storemerge4.lcssa10.lcssa17.lcssa25, %.preheader3 ]
  %storemerge5.lcssa4.lcssa9.lcssa15 = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa, %30 ], [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23, %.preheader3 ]
  %.lcssa3.lcssa7.lcssa13 = phi i32 [ %.lcssa3.lcssa7.lcssa, %30 ], [ %.lcssa3.lcssa7.lcssa13.lcssa21, %.preheader3 ]
  %storemerge2 = phi i32 [ %31, %30 ], [ 0, %.preheader3 ]
  %15 = icmp slt i32 %storemerge2, %9
  br i1 %15, label %.preheader2, label %32

.preheader2:                                      ; preds = %14
  br label %16

16:                                               ; preds = %28, %.preheader2
  %storemerge4.lcssa10 = phi i32 [ %storemerge4.lcssa, %28 ], [ %storemerge4.lcssa10.lcssa17, %.preheader2 ]
  %storemerge5.lcssa4.lcssa9 = phi i32 [ %storemerge5.lcssa4.lcssa, %28 ], [ %storemerge5.lcssa4.lcssa9.lcssa15, %.preheader2 ]
  %.lcssa3.lcssa7 = phi i32 [ %.lcssa3.lcssa, %28 ], [ %.lcssa3.lcssa7.lcssa13, %.preheader2 ]
  %storemerge3 = phi i32 [ %29, %28 ], [ 0, %.preheader2 ]
  %17 = icmp slt i32 %storemerge3, %9
  br i1 %17, label %.preheader1, label %30

.preheader1:                                      ; preds = %16
  br label %18

18:                                               ; preds = %26, %.preheader1
  %storemerge5.lcssa4 = phi i32 [ %storemerge5.lcssa, %26 ], [ %storemerge5.lcssa4.lcssa9, %.preheader1 ]
  %.lcssa3 = phi i32 [ %.lcssa, %26 ], [ %.lcssa3.lcssa7, %.preheader1 ]
  %storemerge4 = phi i32 [ %27, %26 ], [ 0, %.preheader1 ]
  %19 = icmp slt i32 %storemerge4, %9
  br i1 %19, label %.preheader, label %28

.preheader:                                       ; preds = %18
  br label %20

20:                                               ; preds = %23, %.preheader
  %21 = phi i32 [ %24, %23 ], [ %.lcssa3, %.preheader ]
  %storemerge5 = phi i32 [ %25, %23 ], [ 0, %.preheader ]
  %22 = icmp slt i32 %storemerge5, %9
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = add nsw i32 %21, 1
  %25 = add nsw i32 %storemerge5, 1
  br label %20, !llvm.loop !7

26:                                               ; preds = %20
  %.lcssa = phi i32 [ %21, %20 ]
  %storemerge5.lcssa = phi i32 [ %storemerge5, %20 ]
  %27 = add nsw i32 %storemerge4, 1
  br label %18, !llvm.loop !9

28:                                               ; preds = %18
  %storemerge5.lcssa4.lcssa = phi i32 [ %storemerge5.lcssa4, %18 ]
  %.lcssa3.lcssa = phi i32 [ %.lcssa3, %18 ]
  %storemerge4.lcssa = phi i32 [ %storemerge4, %18 ]
  %29 = add nsw i32 %storemerge3, 1
  br label %16, !llvm.loop !10

30:                                               ; preds = %16
  %storemerge4.lcssa10.lcssa = phi i32 [ %storemerge4.lcssa10, %16 ]
  %storemerge5.lcssa4.lcssa9.lcssa = phi i32 [ %storemerge5.lcssa4.lcssa9, %16 ]
  %.lcssa3.lcssa7.lcssa = phi i32 [ %.lcssa3.lcssa7, %16 ]
  %storemerge3.lcssa = phi i32 [ %storemerge3, %16 ]
  %31 = add nsw i32 %storemerge2, 1
  br label %14, !llvm.loop !11

32:                                               ; preds = %14
  %storemerge3.lcssa18.lcssa = phi i32 [ %storemerge3.lcssa18, %14 ]
  %storemerge4.lcssa10.lcssa17.lcssa = phi i32 [ %storemerge4.lcssa10.lcssa17, %14 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15, %14 ]
  %.lcssa3.lcssa7.lcssa13.lcssa = phi i32 [ %.lcssa3.lcssa7.lcssa13, %14 ]
  %storemerge2.lcssa = phi i32 [ %storemerge2, %14 ]
  %33 = add nsw i32 %storemerge1, 1
  br label %12, !llvm.loop !12

34:                                               ; preds = %12
  %storemerge2.lcssa28.lcssa = phi i32 [ %storemerge2.lcssa28, %12 ]
  %storemerge3.lcssa18.lcssa27.lcssa = phi i32 [ %storemerge3.lcssa18.lcssa27, %12 ]
  %storemerge4.lcssa10.lcssa17.lcssa25.lcssa = phi i32 [ %storemerge4.lcssa10.lcssa17.lcssa25, %12 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23, %12 ]
  %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa = phi i32 [ %.lcssa3.lcssa7.lcssa13.lcssa21, %12 ]
  %storemerge1.lcssa = phi i32 [ %storemerge1, %12 ]
  %35 = add nsw i32 %storemerge, 1
  br label %10, !llvm.loop !13

36:                                               ; preds = %10
  %storemerge1.lcssa40.lcssa = phi i32 [ %storemerge1.lcssa40, %10 ]
  %storemerge2.lcssa28.lcssa39.lcssa = phi i32 [ %storemerge2.lcssa28.lcssa39, %10 ]
  %storemerge3.lcssa18.lcssa27.lcssa37.lcssa = phi i32 [ %storemerge3.lcssa18.lcssa27.lcssa37, %10 ]
  %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35.lcssa = phi i32 [ %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35, %10 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33.lcssa = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33, %10 ]
  %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31.lcssa = phi i32 [ %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31, %10 ]
  %storemerge.lcssa = phi i32 [ %storemerge, %10 ]
  %37 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31.lcssa) #2
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
