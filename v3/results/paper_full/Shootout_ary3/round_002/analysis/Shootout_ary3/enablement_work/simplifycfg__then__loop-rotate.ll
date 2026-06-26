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
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi i32 [ %7, %4 ], [ 1500000, %2 ]
  %10 = sext i32 %9 to i64
  %11 = call ptr @calloc(i64 noundef %10, i64 noundef 4) #4
  %12 = call ptr @calloc(i64 noundef %10, i64 noundef 4) #4
  %13 = icmp slt i32 0, %9
  br i1 %13, label %.lr.ph, label %.preheader1

.lr.ph:                                           ; preds = %8
  br label %14

..preheader1_crit_edge:                           ; preds = %14
  br label %.preheader1

.preheader1:                                      ; preds = %..preheader1_crit_edge, %8
  br label %.preheader

14:                                               ; preds = %.lr.ph, %14
  %15 = phi i32 [ 0, %.lr.ph ], [ %16, %14 ]
  %16 = add nuw nsw i32 %15, 1
  %17 = zext nneg i32 %15 to i64
  %18 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %17
  store i32 %16, ptr %18, align 4
  %19 = icmp slt i32 %16, %9
  br i1 %19, label %14, label %..preheader1_crit_edge, !llvm.loop !7

.preheader:                                       ; preds = %.preheader1, %31
  %20 = phi i32 [ 0, %.preheader1 ], [ %32, %31 ]
  %21 = icmp sgt i32 %9, 0
  br i1 %21, label %.lr.ph3, label %31

.lr.ph3:                                          ; preds = %.preheader
  br label %22

22:                                               ; preds = %.lr.ph3, %22
  %.in2 = phi i32 [ %9, %.lr.ph3 ], [ %23, %22 ]
  %23 = add nsw i32 %.in2, -1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i8], ptr %11, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds [4 x i8], ptr %12, i64 %24
  %28 = load i32, ptr %27, align 4
  %29 = add nsw i32 %28, %26
  store i32 %29, ptr %27, align 4
  %30 = icmp sgt i32 %23, 0
  br i1 %30, label %22, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %22
  br label %31

31:                                               ; preds = %._crit_edge, %.preheader
  %32 = add nuw nsw i32 %20, 1
  %33 = icmp samesign ult i32 %32, 1000
  br i1 %33, label %.preheader, label %34, !llvm.loop !10

34:                                               ; preds = %31
  %35 = load i32, ptr %12, align 4
  %36 = getelementptr [4 x i8], ptr %12, i64 %10
  %37 = getelementptr i8, ptr %36, i64 -4
  %38 = load i32, ptr %37, align 4
  %39 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %35, i32 noundef %38) #3
  call void @free(ptr noundef %11) #3
  call void @free(ptr noundef nonnull %12) #3
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
