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

18:                                               ; preds = %48, %16
  %storemerge = phi i32 [ 0, %16 ], [ %50, %48 ]
  store i32 %storemerge, ptr %4, align 4
  %19 = load i32, ptr %3, align 4
  %20 = icmp slt i32 %storemerge, %19
  br i1 %20, label %.preheader4, label %51

.preheader4:                                      ; preds = %18, %45
  %storemerge1 = phi i32 [ %47, %45 ], [ 0, %18 ]
  store i32 %storemerge1, ptr %5, align 4
  %21 = load i32, ptr %3, align 4
  %22 = icmp slt i32 %storemerge1, %21
  br i1 %22, label %.preheader3, label %48

.preheader3:                                      ; preds = %.preheader4, %42
  %storemerge2 = phi i32 [ %44, %42 ], [ 0, %.preheader4 ]
  store i32 %storemerge2, ptr %6, align 4
  %23 = load i32, ptr %3, align 4
  %24 = icmp slt i32 %storemerge2, %23
  br i1 %24, label %.preheader2, label %45

.preheader2:                                      ; preds = %.preheader3, %39
  %storemerge3 = phi i32 [ %41, %39 ], [ 0, %.preheader3 ]
  store i32 %storemerge3, ptr %7, align 4
  %25 = load i32, ptr %3, align 4
  %26 = icmp slt i32 %storemerge3, %25
  br i1 %26, label %.preheader1, label %42

.preheader1:                                      ; preds = %.preheader2, %36
  %storemerge4 = phi i32 [ %38, %36 ], [ 0, %.preheader2 ]
  store i32 %storemerge4, ptr %8, align 4
  %27 = load i32, ptr %3, align 4
  %28 = icmp slt i32 %storemerge4, %27
  br i1 %28, label %.preheader, label %39

.preheader:                                       ; preds = %.preheader1, %31
  %storemerge5 = phi i32 [ %35, %31 ], [ 0, %.preheader1 ]
  store i32 %storemerge5, ptr %9, align 4
  %29 = load i32, ptr %3, align 4
  %30 = icmp slt i32 %storemerge5, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %.preheader
  %32 = load i32, ptr %10, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %10, align 4
  %34 = load i32, ptr %9, align 4
  %35 = add nsw i32 %34, 1
  br label %.preheader, !llvm.loop !7

36:                                               ; preds = %.preheader
  %37 = load i32, ptr %8, align 4
  %38 = add nsw i32 %37, 1
  br label %.preheader1, !llvm.loop !9

39:                                               ; preds = %.preheader1
  %40 = load i32, ptr %7, align 4
  %41 = add nsw i32 %40, 1
  br label %.preheader2, !llvm.loop !10

42:                                               ; preds = %.preheader2
  %43 = load i32, ptr %6, align 4
  %44 = add nsw i32 %43, 1
  br label %.preheader3, !llvm.loop !11

45:                                               ; preds = %.preheader3
  %46 = load i32, ptr %5, align 4
  %47 = add nsw i32 %46, 1
  br label %.preheader4, !llvm.loop !12

48:                                               ; preds = %.preheader4
  %49 = load i32, ptr %4, align 4
  %50 = add nsw i32 %49, 1
  br label %18, !llvm.loop !13

51:                                               ; preds = %18
  %52 = load i32, ptr %10, align 4
  %53 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %52) #2
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
