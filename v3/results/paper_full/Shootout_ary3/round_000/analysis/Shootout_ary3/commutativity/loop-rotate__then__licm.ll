; ModuleID = 'results\paper_full\Shootout_ary3\Shootout_ary3.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Shootout/ary3.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  %11 = load i32, ptr %4, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds ptr, ptr %14, i64 1
  %16 = load ptr, ptr %15, align 8
  %17 = call i32 @atoi(ptr noundef %16)
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %13
  %20 = phi i32 [ %17, %13 ], [ 1500000, %18 ]
  store i32 %20, ptr %6, align 4
  %21 = load i32, ptr %6, align 4
  %22 = sext i32 %21 to i64
  %23 = call ptr @calloc(i64 noundef %22, i64 noundef 4) #3
  store ptr %23, ptr %9, align 8
  %24 = load i32, ptr %6, align 4
  %25 = sext i32 %24 to i64
  %26 = call ptr @calloc(i64 noundef %25, i64 noundef 4) #3
  store ptr %26, ptr %10, align 8
  store i32 0, ptr %7, align 4
  %27 = load i32, ptr %7, align 4
  %28 = load i32, ptr %6, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %.lr.ph, label %40

.lr.ph:                                           ; preds = %19
  %30 = load ptr, ptr %9, align 8
  %31 = load i32, ptr %6, align 4
  %.promoted = load i32, ptr %7, align 4
  br label %32

32:                                               ; preds = %.lr.ph, %37
  %33 = phi i32 [ %.promoted, %.lr.ph ], [ %38, %37 ]
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i32, ptr %30, i64 %35
  store i32 %34, ptr %36, align 4
  br label %37

37:                                               ; preds = %32
  %38 = add nsw i32 %33, 1
  %39 = icmp slt i32 %38, %31
  br i1 %39, label %32, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %37
  %.lcssa = phi i32 [ %38, %37 ]
  store i32 %.lcssa, ptr %7, align 4
  br label %40

40:                                               ; preds = %._crit_edge, %19
  store i32 0, ptr %8, align 4
  %41 = load i32, ptr %8, align 4
  %42 = icmp slt i32 %41, 1000
  br i1 %42, label %.lr.ph5, label %66

.lr.ph5:                                          ; preds = %40
  %43 = load i32, ptr %6, align 4
  %44 = sub nsw i32 %43, 1
  %45 = load ptr, ptr %9, align 8
  %46 = load ptr, ptr %10, align 8
  %.promoted11 = load i32, ptr %8, align 4
  br label %47

47:                                               ; preds = %.lr.ph5, %63
  %48 = phi i32 [ %.promoted11, %.lr.ph5 ], [ %64, %63 ]
  %49 = icmp sge i32 %44, 0
  br i1 %49, label %.lr.ph2, label %62

.lr.ph2:                                          ; preds = %47
  br label %50

50:                                               ; preds = %.lr.ph2, %59
  %51 = phi i32 [ %44, %.lr.ph2 ], [ %60, %59 ]
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, ptr %45, i64 %52
  %54 = load i32, ptr %53, align 4
  %55 = sext i32 %51 to i64
  %56 = getelementptr inbounds i32, ptr %46, i64 %55
  %57 = load i32, ptr %56, align 4
  %58 = add nsw i32 %57, %54
  store i32 %58, ptr %56, align 4
  br label %59

59:                                               ; preds = %50
  %60 = add nsw i32 %51, -1
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %50, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %59
  %.lcssa8 = phi i32 [ %60, %59 ]
  br label %62

62:                                               ; preds = %._crit_edge3, %47
  %.lcssa810 = phi i32 [ %.lcssa8, %._crit_edge3 ], [ %44, %47 ]
  br label %63

63:                                               ; preds = %62
  %64 = add nsw i32 %48, 1
  %65 = icmp slt i32 %64, 1000
  br i1 %65, label %47, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %63
  %.lcssa12 = phi i32 [ %64, %63 ]
  %.lcssa810.lcssa = phi i32 [ %.lcssa810, %63 ]
  store i32 %.lcssa810.lcssa, ptr %7, align 4
  store i32 %.lcssa12, ptr %8, align 4
  br label %66

66:                                               ; preds = %._crit_edge6, %40
  %67 = load ptr, ptr %10, align 8
  %68 = getelementptr inbounds i32, ptr %67, i64 0
  %69 = load i32, ptr %68, align 4
  %70 = load ptr, ptr %10, align 8
  %71 = load i32, ptr %6, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, ptr %70, i64 %73
  %75 = load i32, ptr %74, align 4
  %76 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %69, i32 noundef %75)
  %77 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %77)
  %78 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %78)
  ret i32 0
}

declare dso_local i32 @atoi(ptr noundef) #1

; Function Attrs: allocsize(0,1)
declare dso_local ptr @calloc(i64 noundef, i64 noundef) #2

declare dso_local i32 @printf(ptr noundef, ...) #1

declare dso_local void @free(ptr noundef) #1

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(0,1) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Shootout/ary3.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
