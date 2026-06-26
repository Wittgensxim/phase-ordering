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
  br label %18

18:                                               ; preds = %42, %16
  %storemerge1.lcssa40 = phi i32 [ undef, %16 ], [ %storemerge1, %42 ]
  %storemerge2.lcssa28.lcssa39 = phi i32 [ undef, %16 ], [ %storemerge2.lcssa28, %42 ]
  %storemerge3.lcssa18.lcssa27.lcssa37 = phi i32 [ undef, %16 ], [ %storemerge3.lcssa18.lcssa27, %42 ]
  %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35 = phi i32 [ undef, %16 ], [ %storemerge4.lcssa10.lcssa17.lcssa25, %42 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33 = phi i32 [ undef, %16 ], [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23, %42 ]
  %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31 = phi i32 [ 0, %16 ], [ %.lcssa3.lcssa7.lcssa13.lcssa21, %42 ]
  %storemerge = phi i32 [ 0, %16 ], [ %43, %42 ]
  %19 = icmp slt i32 %storemerge, %17
  br i1 %19, label %.preheader4, label %44

.preheader4:                                      ; preds = %18
  br label %20

20:                                               ; preds = %40, %.preheader4
  %storemerge2.lcssa28 = phi i32 [ %storemerge2, %40 ], [ %storemerge2.lcssa28.lcssa39, %.preheader4 ]
  %storemerge3.lcssa18.lcssa27 = phi i32 [ %storemerge3.lcssa18, %40 ], [ %storemerge3.lcssa18.lcssa27.lcssa37, %.preheader4 ]
  %storemerge4.lcssa10.lcssa17.lcssa25 = phi i32 [ %storemerge4.lcssa10.lcssa17, %40 ], [ %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35, %.preheader4 ]
  %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23 = phi i32 [ %storemerge5.lcssa4.lcssa9.lcssa15, %40 ], [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33, %.preheader4 ]
  %.lcssa3.lcssa7.lcssa13.lcssa21 = phi i32 [ %.lcssa3.lcssa7.lcssa13, %40 ], [ %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31, %.preheader4 ]
  %storemerge1 = phi i32 [ %41, %40 ], [ 0, %.preheader4 ]
  %21 = icmp slt i32 %storemerge1, %17
  br i1 %21, label %.preheader3, label %42

.preheader3:                                      ; preds = %20
  br label %22

22:                                               ; preds = %38, %.preheader3
  %storemerge3.lcssa18 = phi i32 [ %storemerge3, %38 ], [ %storemerge3.lcssa18.lcssa27, %.preheader3 ]
  %storemerge4.lcssa10.lcssa17 = phi i32 [ %storemerge4.lcssa10, %38 ], [ %storemerge4.lcssa10.lcssa17.lcssa25, %.preheader3 ]
  %storemerge5.lcssa4.lcssa9.lcssa15 = phi i32 [ %storemerge5.lcssa4.lcssa9, %38 ], [ %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23, %.preheader3 ]
  %.lcssa3.lcssa7.lcssa13 = phi i32 [ %.lcssa3.lcssa7, %38 ], [ %.lcssa3.lcssa7.lcssa13.lcssa21, %.preheader3 ]
  %storemerge2 = phi i32 [ %39, %38 ], [ 0, %.preheader3 ]
  %23 = icmp slt i32 %storemerge2, %17
  br i1 %23, label %.preheader2, label %40

.preheader2:                                      ; preds = %22
  br label %24

24:                                               ; preds = %36, %.preheader2
  %storemerge4.lcssa10 = phi i32 [ %storemerge4, %36 ], [ %storemerge4.lcssa10.lcssa17, %.preheader2 ]
  %storemerge5.lcssa4.lcssa9 = phi i32 [ %storemerge5.lcssa4, %36 ], [ %storemerge5.lcssa4.lcssa9.lcssa15, %.preheader2 ]
  %.lcssa3.lcssa7 = phi i32 [ %.lcssa3, %36 ], [ %.lcssa3.lcssa7.lcssa13, %.preheader2 ]
  %storemerge3 = phi i32 [ %37, %36 ], [ 0, %.preheader2 ]
  %25 = icmp slt i32 %storemerge3, %17
  br i1 %25, label %.preheader1, label %38

.preheader1:                                      ; preds = %24
  br label %26

26:                                               ; preds = %34, %.preheader1
  %storemerge5.lcssa4 = phi i32 [ %storemerge5, %34 ], [ %storemerge5.lcssa4.lcssa9, %.preheader1 ]
  %.lcssa3 = phi i32 [ %29, %34 ], [ %.lcssa3.lcssa7, %.preheader1 ]
  %storemerge4 = phi i32 [ %35, %34 ], [ 0, %.preheader1 ]
  %27 = icmp slt i32 %storemerge4, %17
  br i1 %27, label %.preheader, label %36

.preheader:                                       ; preds = %26
  br label %28

28:                                               ; preds = %31, %.preheader
  %29 = phi i32 [ %32, %31 ], [ %.lcssa3, %.preheader ]
  %storemerge5 = phi i32 [ %33, %31 ], [ 0, %.preheader ]
  %30 = icmp slt i32 %storemerge5, %17
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = add nsw i32 %29, 1
  %33 = add nsw i32 %storemerge5, 1
  br label %28, !llvm.loop !7

34:                                               ; preds = %28
  %35 = add nsw i32 %storemerge4, 1
  br label %26, !llvm.loop !9

36:                                               ; preds = %26
  %37 = add nsw i32 %storemerge3, 1
  br label %24, !llvm.loop !10

38:                                               ; preds = %24
  %39 = add nsw i32 %storemerge2, 1
  br label %22, !llvm.loop !11

40:                                               ; preds = %22
  %41 = add nsw i32 %storemerge1, 1
  br label %20, !llvm.loop !12

42:                                               ; preds = %20
  %43 = add nsw i32 %storemerge, 1
  br label %18, !llvm.loop !13

44:                                               ; preds = %18
  store i32 %storemerge, ptr %4, align 4
  store i32 %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31, ptr %10, align 4
  store i32 %storemerge5.lcssa4.lcssa9.lcssa15.lcssa23.lcssa33, ptr %9, align 1
  store i32 %storemerge4.lcssa10.lcssa17.lcssa25.lcssa35, ptr %8, align 1
  store i32 %storemerge3.lcssa18.lcssa27.lcssa37, ptr %7, align 1
  store i32 %storemerge2.lcssa28.lcssa39, ptr %6, align 1
  store i32 %storemerge1.lcssa40, ptr %5, align 1
  %45 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.lcssa3.lcssa7.lcssa13.lcssa21.lcssa31) #2
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
