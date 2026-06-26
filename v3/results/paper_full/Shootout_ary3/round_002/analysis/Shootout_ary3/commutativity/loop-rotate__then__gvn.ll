; ModuleID = 'results\paper_full\Shootout_ary3\round_001\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Shootout/ary3.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load ptr, ptr %5, align 8
  %7 = call i32 @atoi(ptr noundef %6) #3
  br label %9

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %8, %4
  %10 = phi i32 [ %7, %4 ], [ 1500000, %8 ]
  %11 = sext i32 %10 to i64
  %12 = call ptr @calloc(i64 noundef %11, i64 noundef 4) #4
  %13 = call ptr @calloc(i64 noundef %11, i64 noundef 4) #4
  %14 = icmp slt i32 0, %10
  br i1 %14, label %.lr.ph, label %21

.lr.ph:                                           ; preds = %9
  br label %15

15:                                               ; preds = %.lr.ph, %15
  %16 = phi i32 [ 0, %.lr.ph ], [ %17, %15 ]
  %17 = add nuw nsw i32 %16, 1
  %18 = zext nneg i32 %16 to i64
  %19 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %18
  store i32 %17, ptr %19, align 4
  %20 = icmp slt i32 %17, %10
  br i1 %20, label %15, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %15
  br label %21

21:                                               ; preds = %._crit_edge, %9
  br label %22

22:                                               ; preds = %21, %33
  %23 = phi i32 [ 0, %21 ], [ %34, %33 ]
  br i1 %14, label %.lr.ph3, label %33

.lr.ph3:                                          ; preds = %22
  br label %24

24:                                               ; preds = %.lr.ph3, %24
  %.in1 = phi i32 [ %10, %.lr.ph3 ], [ %25, %24 ]
  %25 = add nsw i32 %.in1, -1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i8], ptr %12, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds [4 x i8], ptr %13, i64 %26
  %30 = load i32, ptr %29, align 4
  %31 = add nsw i32 %30, %28
  store i32 %31, ptr %29, align 4
  %32 = icmp sgt i32 %25, 0
  br i1 %32, label %24, label %._crit_edge4, !llvm.loop !9

._crit_edge4:                                     ; preds = %24
  br label %33

33:                                               ; preds = %._crit_edge4, %22
  %34 = add nuw nsw i32 %23, 1
  %35 = icmp samesign ult i32 %34, 1000
  br i1 %35, label %22, label %36, !llvm.loop !10

36:                                               ; preds = %33
  %37 = load i32, ptr %13, align 4
  %38 = getelementptr [4 x i8], ptr %13, i64 %11
  %39 = getelementptr i8, ptr %38, i64 -4
  %40 = load i32, ptr %39, align 4
  %41 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %37, i32 noundef %40) #3
  call void @free(ptr noundef %12) #3
  call void @free(ptr noundef nonnull %13) #3
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
attributes #3 = { nounwind }
attributes #4 = { nounwind allocsize(0,1) }

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
