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

22:                                               ; preds = %21, %37
  %23 = phi i32 [ 0, %21 ], [ %38, %37 ]
  %24 = icmp sgt i32 %10, 0
  br i1 %24, label %.lr.ph3, label %34

.lr.ph3:                                          ; preds = %22
  br label %25

25:                                               ; preds = %.lr.ph3, %25
  %.in1 = phi i32 [ %10, %.lr.ph3 ], [ %26, %25 ]
  %26 = add nsw i32 %.in1, -1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i8], ptr %12, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds [4 x i8], ptr %13, i64 %27
  %31 = load i32, ptr %30, align 4
  %32 = add nsw i32 %31, %29
  store i32 %32, ptr %30, align 4
  %33 = icmp sgt i32 %26, 0
  br i1 %33, label %25, label %._crit_edge4, !llvm.loop !9

._crit_edge4:                                     ; preds = %25
  br label %34

34:                                               ; preds = %._crit_edge4, %22
  br label %35

35:                                               ; preds = %34
  %36 = icmp sgt i32 %10, 0
  br i1 %36, label %.lr.ph7, label %37

.lr.ph7:                                          ; preds = %35
  br label %40

._crit_edge8:                                     ; preds = %40
  br label %37

37:                                               ; preds = %._crit_edge8, %35
  %38 = add nuw nsw i32 %23, 2
  %39 = icmp samesign ult i32 %38, 1000
  br i1 %39, label %22, label %49, !llvm.loop !10

40:                                               ; preds = %.lr.ph7, %40
  %.in.15 = phi i32 [ %10, %.lr.ph7 ], [ %41, %40 ]
  %41 = add nsw i32 %.in.15, -1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [4 x i8], ptr %12, i64 %42
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds [4 x i8], ptr %13, i64 %42
  %46 = load i32, ptr %45, align 4
  %47 = add nsw i32 %46, %44
  store i32 %47, ptr %45, align 4
  %48 = icmp sgt i32 %41, 0
  br i1 %48, label %40, label %._crit_edge8, !llvm.loop !9

49:                                               ; preds = %37
  %50 = load i32, ptr %13, align 4
  %51 = getelementptr [4 x i8], ptr %13, i64 %11
  %52 = getelementptr i8, ptr %51, i64 -4
  %53 = load i32, ptr %52, align 4
  %54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %50, i32 noundef %53) #3
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
