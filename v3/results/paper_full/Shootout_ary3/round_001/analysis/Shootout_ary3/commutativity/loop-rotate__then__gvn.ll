; ModuleID = 'results\paper_full\Shootout_ary3\round_000\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Shootout/ary3.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = icmp eq i32 %0, 2
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %7 = load ptr, ptr %6, align 8
  %8 = call i32 @atoi(ptr noundef %7) #3
  br label %10

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi i32 [ %8, %5 ], [ 1500000, %9 ]
  %12 = sext i32 %11 to i64
  %13 = call ptr @calloc(i64 noundef %12, i64 noundef 4) #4
  %14 = call ptr @calloc(i64 noundef %12, i64 noundef 4) #4
  store ptr %14, ptr %3, align 8
  %15 = icmp slt i32 0, %11
  br i1 %15, label %.lr.ph, label %22

.lr.ph:                                           ; preds = %10
  br label %16

16:                                               ; preds = %.lr.ph, %16
  %17 = phi i32 [ 0, %.lr.ph ], [ %18, %16 ]
  %18 = add nuw nsw i32 %17, 1
  %19 = zext nneg i32 %17 to i64
  %20 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %19
  store i32 %18, ptr %20, align 4
  %21 = icmp slt i32 %18, %11
  br i1 %21, label %16, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %16
  br label %22

22:                                               ; preds = %._crit_edge, %10
  br label %23

23:                                               ; preds = %22, %34
  %24 = phi i32 [ 0, %22 ], [ %35, %34 ]
  br i1 %15, label %.lr.ph3, label %34

.lr.ph3:                                          ; preds = %23
  br label %25

25:                                               ; preds = %.lr.ph3, %25
  %.in1 = phi i32 [ %11, %.lr.ph3 ], [ %26, %25 ]
  %26 = add nsw i32 %.in1, -1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i8], ptr %13, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds [4 x i8], ptr %14, i64 %27
  %31 = load i32, ptr %30, align 4
  %32 = add nsw i32 %31, %29
  store i32 %32, ptr %30, align 4
  %33 = icmp sgt i32 %26, 0
  br i1 %33, label %25, label %._crit_edge4, !llvm.loop !9

._crit_edge4:                                     ; preds = %25
  br label %34

34:                                               ; preds = %._crit_edge4, %23
  %35 = add nuw nsw i32 %24, 1
  %36 = icmp samesign ult i32 %35, 1000
  br i1 %36, label %23, label %37, !llvm.loop !10

37:                                               ; preds = %34
  %38 = load i32, ptr %14, align 4
  %39 = getelementptr [4 x i8], ptr %14, i64 %12
  %40 = getelementptr i8, ptr %39, i64 -4
  %41 = load i32, ptr %40, align 4
  %42 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %38, i32 noundef %41) #3
  call void @free(ptr noundef %13) #3
  call void @free(ptr noundef %14) #3
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
