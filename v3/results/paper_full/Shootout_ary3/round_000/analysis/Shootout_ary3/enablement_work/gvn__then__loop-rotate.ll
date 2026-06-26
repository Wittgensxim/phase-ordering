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
  %11 = icmp eq i32 %0, 2
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds ptr, ptr %1, i64 1
  %14 = load ptr, ptr %13, align 8
  %15 = call i32 @atoi(ptr noundef %14)
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %12
  %18 = phi i32 [ %15, %12 ], [ 1500000, %16 ]
  store i32 %18, ptr %6, align 4
  %19 = sext i32 %18 to i64
  %20 = call ptr @calloc(i64 noundef %19, i64 noundef 4) #3
  store ptr %20, ptr %9, align 8
  %21 = call ptr @calloc(i64 noundef %19, i64 noundef 4) #3
  store ptr %21, ptr %10, align 8
  store i32 0, ptr %7, align 4
  %22 = icmp slt i32 0, %18
  br i1 %22, label %.lr.ph, label %29

.lr.ph:                                           ; preds = %17
  br label %23

23:                                               ; preds = %.lr.ph, %23
  %24 = phi i32 [ 0, %.lr.ph ], [ %25, %23 ]
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i32, ptr %20, i64 %26
  store i32 %25, ptr %27, align 4
  store i32 %25, ptr %7, align 4
  %28 = icmp slt i32 %25, %18
  br i1 %28, label %23, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %23
  br label %29

29:                                               ; preds = %._crit_edge, %17
  store i32 0, ptr %8, align 4
  br label %30

30:                                               ; preds = %29, %46
  %31 = phi i32 [ 0, %29 ], [ %47, %46 ]
  %32 = phi ptr [ %21, %29 ], [ %.lcssa, %46 ]
  %33 = phi ptr [ %20, %29 ], [ %.lcssa1, %46 ]
  %34 = sub nsw i32 %18, 1
  store i32 %34, ptr %7, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %.lr.ph5, label %46

.lr.ph5:                                          ; preds = %30
  br label %36

36:                                               ; preds = %.lr.ph5, %36
  %37 = phi i32 [ %34, %.lr.ph5 ], [ %44, %36 ]
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, ptr %20, i64 %38
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds i32, ptr %21, i64 %38
  %42 = load i32, ptr %41, align 4
  %43 = add nsw i32 %42, %40
  store i32 %43, ptr %41, align 4
  %44 = add nsw i32 %37, -1
  store i32 %44, ptr %7, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %36, label %._crit_edge6, !llvm.loop !9

._crit_edge6:                                     ; preds = %36
  %split = phi ptr [ %20, %36 ]
  %split7 = phi ptr [ %21, %36 ]
  br label %46

46:                                               ; preds = %._crit_edge6, %30
  %.lcssa1 = phi ptr [ %split, %._crit_edge6 ], [ %33, %30 ]
  %.lcssa = phi ptr [ %split7, %._crit_edge6 ], [ %32, %30 ]
  %47 = add nsw i32 %31, 1
  store i32 %47, ptr %8, align 4
  %48 = icmp slt i32 %47, 1000
  br i1 %48, label %30, label %49, !llvm.loop !10

49:                                               ; preds = %46
  %.lcssa3 = phi ptr [ %.lcssa1, %46 ]
  %.lcssa2 = phi ptr [ %.lcssa, %46 ]
  %50 = load i32, ptr %.lcssa2, align 4
  %51 = sub nsw i32 %18, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, ptr %.lcssa2, i64 %52
  %54 = load i32, ptr %53, align 4
  %55 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %50, i32 noundef %54)
  call void @free(ptr noundef %.lcssa3)
  %56 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %56)
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
