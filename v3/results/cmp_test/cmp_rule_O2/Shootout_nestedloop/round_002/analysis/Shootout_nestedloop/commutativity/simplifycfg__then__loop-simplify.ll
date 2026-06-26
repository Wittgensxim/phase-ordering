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
  br label %16

16:                                               ; preds = %2, %12
  %17 = phi i32 [ %15, %12 ], [ 46, %2 ]
  store i32 %17, ptr %3, align 4
  store i32 0, ptr %10, align 4
  br label %18

18:                                               ; preds = %53, %16
  %storemerge = phi i32 [ 0, %16 ], [ %55, %53 ]
  store i32 %storemerge, ptr %4, align 4
  %19 = load i32, ptr %3, align 4
  %20 = icmp slt i32 %storemerge, %19
  br i1 %20, label %.preheader4, label %56

.preheader4:                                      ; preds = %18
  br label %21

21:                                               ; preds = %.preheader4, %50
  %storemerge1 = phi i32 [ %52, %50 ], [ 0, %.preheader4 ]
  store i32 %storemerge1, ptr %5, align 4
  %22 = load i32, ptr %3, align 4
  %23 = icmp slt i32 %storemerge1, %22
  br i1 %23, label %.preheader3, label %53

.preheader3:                                      ; preds = %21
  br label %24

24:                                               ; preds = %.preheader3, %47
  %storemerge2 = phi i32 [ %49, %47 ], [ 0, %.preheader3 ]
  store i32 %storemerge2, ptr %6, align 4
  %25 = load i32, ptr %3, align 4
  %26 = icmp slt i32 %storemerge2, %25
  br i1 %26, label %.preheader2, label %50

.preheader2:                                      ; preds = %24
  br label %27

27:                                               ; preds = %.preheader2, %44
  %storemerge3 = phi i32 [ %46, %44 ], [ 0, %.preheader2 ]
  store i32 %storemerge3, ptr %7, align 4
  %28 = load i32, ptr %3, align 4
  %29 = icmp slt i32 %storemerge3, %28
  br i1 %29, label %.preheader1, label %47

.preheader1:                                      ; preds = %27
  br label %30

30:                                               ; preds = %.preheader1, %41
  %storemerge4 = phi i32 [ %43, %41 ], [ 0, %.preheader1 ]
  store i32 %storemerge4, ptr %8, align 4
  %31 = load i32, ptr %3, align 4
  %32 = icmp slt i32 %storemerge4, %31
  br i1 %32, label %.preheader, label %44

.preheader:                                       ; preds = %30
  br label %33

33:                                               ; preds = %.preheader, %36
  %storemerge5 = phi i32 [ %40, %36 ], [ 0, %.preheader ]
  store i32 %storemerge5, ptr %9, align 4
  %34 = load i32, ptr %3, align 4
  %35 = icmp slt i32 %storemerge5, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i32, ptr %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %10, align 4
  %39 = load i32, ptr %9, align 4
  %40 = add nsw i32 %39, 1
  br label %33, !llvm.loop !7

41:                                               ; preds = %33
  %42 = load i32, ptr %8, align 4
  %43 = add nsw i32 %42, 1
  br label %30, !llvm.loop !9

44:                                               ; preds = %30
  %45 = load i32, ptr %7, align 4
  %46 = add nsw i32 %45, 1
  br label %27, !llvm.loop !10

47:                                               ; preds = %27
  %48 = load i32, ptr %6, align 4
  %49 = add nsw i32 %48, 1
  br label %24, !llvm.loop !11

50:                                               ; preds = %24
  %51 = load i32, ptr %5, align 4
  %52 = add nsw i32 %51, 1
  br label %21, !llvm.loop !12

53:                                               ; preds = %21
  %54 = load i32, ptr %4, align 4
  %55 = add nsw i32 %54, 1
  br label %18, !llvm.loop !13

56:                                               ; preds = %18
  %57 = load i32, ptr %10, align 4
  %58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %57) #2
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
