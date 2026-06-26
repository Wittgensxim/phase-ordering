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
  %27 = load i32, ptr %6, align 4
  %28 = load ptr, ptr %9, align 8
  %.promoted = load i32, ptr %7, align 4
  %29 = icmp slt i32 %.promoted, %27
  br i1 %29, label %.lr.ph, label %38

.lr.ph:                                           ; preds = %19
  br label %30

30:                                               ; preds = %.lr.ph, %35
  %31 = phi i32 [ %.promoted, %.lr.ph ], [ %36, %35 ]
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i32, ptr %28, i64 %33
  store i32 %32, ptr %34, align 4
  br label %35

35:                                               ; preds = %30
  %36 = add nsw i32 %31, 1
  %37 = icmp slt i32 %36, %27
  br i1 %37, label %30, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %35
  %split = phi i32 [ %36, %35 ]
  br label %38

38:                                               ; preds = %._crit_edge, %19
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %.promoted, %19 ]
  store i32 %.lcssa, ptr %7, align 4
  store i32 0, ptr %8, align 4
  %39 = load i32, ptr %6, align 4
  %40 = sub nsw i32 %39, 1
  %41 = load ptr, ptr %9, align 8
  %42 = load ptr, ptr %10, align 8
  %.promoted3 = load i32, ptr %8, align 4
  %.promoted5 = load i32, ptr %7, align 4
  %43 = icmp slt i32 %.promoted3, 1000
  br i1 %43, label %.lr.ph12, label %63

.lr.ph12:                                         ; preds = %38
  br label %44

44:                                               ; preds = %.lr.ph12, %60
  %45 = phi i32 [ %.promoted3, %.lr.ph12 ], [ %61, %60 ]
  %46 = icmp sge i32 %40, 0
  br i1 %46, label %.lr.ph8, label %59

.lr.ph8:                                          ; preds = %44
  br label %47

47:                                               ; preds = %.lr.ph8, %56
  %48 = phi i32 [ %40, %.lr.ph8 ], [ %57, %56 ]
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, ptr %41, i64 %49
  %51 = load i32, ptr %50, align 4
  %52 = sext i32 %48 to i64
  %53 = getelementptr inbounds i32, ptr %42, i64 %52
  %54 = load i32, ptr %53, align 4
  %55 = add nsw i32 %54, %51
  store i32 %55, ptr %53, align 4
  br label %56

56:                                               ; preds = %47
  %57 = add nsw i32 %48, -1
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %47, label %._crit_edge9, !llvm.loop !9

._crit_edge9:                                     ; preds = %56
  %split10 = phi i32 [ %57, %56 ]
  br label %59

59:                                               ; preds = %._crit_edge9, %44
  %.lcssa2 = phi i32 [ %split10, %._crit_edge9 ], [ %40, %44 ]
  br label %60

60:                                               ; preds = %59
  %61 = add nsw i32 %45, 1
  %62 = icmp slt i32 %61, 1000
  br i1 %62, label %44, label %._crit_edge13, !llvm.loop !10

._crit_edge13:                                    ; preds = %60
  %split14 = phi i32 [ %.lcssa2, %60 ]
  %split15 = phi i32 [ %61, %60 ]
  br label %63

63:                                               ; preds = %._crit_edge13, %38
  %.lcssa26.lcssa = phi i32 [ %split14, %._crit_edge13 ], [ %.promoted5, %38 ]
  %.lcssa4 = phi i32 [ %split15, %._crit_edge13 ], [ %.promoted3, %38 ]
  store i32 %.lcssa4, ptr %8, align 4
  store i32 %.lcssa26.lcssa, ptr %7, align 4
  %64 = load ptr, ptr %10, align 8
  %65 = getelementptr inbounds i32, ptr %64, i64 0
  %66 = load i32, ptr %65, align 4
  %67 = load ptr, ptr %10, align 8
  %68 = load i32, ptr %6, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, ptr %67, i64 %70
  %72 = load i32, ptr %71, align 4
  %73 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %66, i32 noundef %72)
  %74 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %74)
  %75 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %75)
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
