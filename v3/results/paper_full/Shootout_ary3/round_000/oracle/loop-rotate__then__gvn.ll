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
  br i1 true, label %.lr.ph5, label %._crit_edge7

._crit_edge7:                                     ; preds = %29
  %.pre = sub nsw i32 %18, 1
  br label %47

.lr.ph5:                                          ; preds = %29
  br label %30

30:                                               ; preds = %.lr.ph5, %44
  %31 = phi i32 [ 0, %.lr.ph5 ], [ %45, %44 ]
  %32 = sub nsw i32 %18, 1
  store i32 %32, ptr %7, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %.lr.ph2, label %44

.lr.ph2:                                          ; preds = %30
  br label %34

34:                                               ; preds = %.lr.ph2, %34
  %35 = phi i32 [ %32, %.lr.ph2 ], [ %42, %34 ]
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, ptr %20, i64 %36
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds i32, ptr %21, i64 %36
  %40 = load i32, ptr %39, align 4
  %41 = add nsw i32 %40, %38
  store i32 %41, ptr %39, align 4
  %42 = add nsw i32 %35, -1
  store i32 %42, ptr %7, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %34, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %34
  br label %44

44:                                               ; preds = %._crit_edge3, %30
  %45 = add nsw i32 %31, 1
  store i32 %45, ptr %8, align 4
  %46 = icmp slt i32 %45, 1000
  br i1 %46, label %30, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %44
  br label %47

47:                                               ; preds = %._crit_edge7, %._crit_edge6
  %.pre-phi = phi i32 [ %.pre, %._crit_edge7 ], [ %32, %._crit_edge6 ]
  %48 = load i32, ptr %21, align 4
  %49 = sext i32 %.pre-phi to i64
  %50 = getelementptr inbounds i32, ptr %21, i64 %49
  %51 = load i32, ptr %50, align 4
  %52 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %48, i32 noundef %51)
  call void @free(ptr noundef %20)
  call void @free(ptr noundef %21)
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
