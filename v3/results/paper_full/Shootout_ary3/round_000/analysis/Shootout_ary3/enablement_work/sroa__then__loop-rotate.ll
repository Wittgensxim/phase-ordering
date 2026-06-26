; ModuleID = 'results\paper_full\Shootout_ary3\Shootout_ary3.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Shootout/ary3.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds ptr, ptr %1, i64 1
  %6 = load ptr, ptr %5, align 8
  %7 = call i32 @atoi(ptr noundef %6)
  br label %9

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %8, %4
  %10 = phi i32 [ %7, %4 ], [ 1500000, %8 ]
  %11 = sext i32 %10 to i64
  %12 = call ptr @calloc(i64 noundef %11, i64 noundef 4) #3
  %13 = sext i32 %10 to i64
  %14 = call ptr @calloc(i64 noundef %13, i64 noundef 4) #3
  %15 = icmp slt i32 0, %10
  br i1 %15, label %.lr.ph, label %23

.lr.ph:                                           ; preds = %9
  br label %16

16:                                               ; preds = %.lr.ph, %20
  %.024 = phi i32 [ 0, %.lr.ph ], [ %21, %20 ]
  %17 = add nsw i32 %.024, 1
  %18 = sext i32 %.024 to i64
  %19 = getelementptr inbounds i32, ptr %12, i64 %18
  store i32 %17, ptr %19, align 4
  br label %20

20:                                               ; preds = %16
  %21 = add nsw i32 %.024, 1
  %22 = icmp slt i32 %21, %10
  br i1 %22, label %16, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %20
  br label %23

23:                                               ; preds = %._crit_edge, %9
  br label %24

24:                                               ; preds = %23, %39
  %.02329 = phi i32 [ 0, %23 ], [ %40, %39 ]
  %25 = sub nsw i32 %10, 1
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %.lr.ph27, label %38

.lr.ph27:                                         ; preds = %24
  br label %27

27:                                               ; preds = %.lr.ph27, %35
  %.125 = phi i32 [ %25, %.lr.ph27 ], [ %36, %35 ]
  %28 = sext i32 %.125 to i64
  %29 = getelementptr inbounds i32, ptr %12, i64 %28
  %30 = load i32, ptr %29, align 4
  %31 = sext i32 %.125 to i64
  %32 = getelementptr inbounds i32, ptr %14, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = add nsw i32 %33, %30
  store i32 %34, ptr %32, align 4
  br label %35

35:                                               ; preds = %27
  %36 = add nsw i32 %.125, -1
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %27, label %._crit_edge28, !llvm.loop !9

._crit_edge28:                                    ; preds = %35
  br label %38

38:                                               ; preds = %._crit_edge28, %24
  br label %39

39:                                               ; preds = %38
  %40 = add nsw i32 %.02329, 1
  %41 = icmp slt i32 %40, 1000
  br i1 %41, label %24, label %42, !llvm.loop !10

42:                                               ; preds = %39
  %43 = getelementptr inbounds i32, ptr %14, i64 0
  %44 = load i32, ptr %43, align 4
  %45 = sub nsw i32 %10, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, ptr %14, i64 %46
  %48 = load i32, ptr %47, align 4
  %49 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %44, i32 noundef %48)
  call void @free(ptr noundef %12)
  call void @free(ptr noundef %14)
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
