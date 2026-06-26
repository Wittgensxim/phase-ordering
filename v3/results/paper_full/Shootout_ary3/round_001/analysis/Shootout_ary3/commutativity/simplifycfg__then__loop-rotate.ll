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
  br label %9

9:                                                ; preds = %2, %5
  %10 = phi i32 [ %8, %5 ], [ 1500000, %2 ]
  %11 = sext i32 %10 to i64
  %12 = call ptr @calloc(i64 noundef %11, i64 noundef 4) #4
  %13 = call ptr @calloc(i64 noundef %11, i64 noundef 4) #4
  store ptr %13, ptr %3, align 8
  %14 = icmp slt i32 0, %10
  br i1 %14, label %.lr.ph, label %.preheader1

.lr.ph:                                           ; preds = %9
  br label %15

..preheader1_crit_edge:                           ; preds = %15
  br label %.preheader1

.preheader1:                                      ; preds = %..preheader1_crit_edge, %9
  br label %.preheader

15:                                               ; preds = %.lr.ph, %15
  %16 = phi i32 [ 0, %.lr.ph ], [ %17, %15 ]
  %17 = add nuw nsw i32 %16, 1
  %18 = zext nneg i32 %16 to i64
  %19 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %18
  store i32 %17, ptr %19, align 4
  %20 = icmp slt i32 %17, %10
  br i1 %20, label %15, label %..preheader1_crit_edge, !llvm.loop !7

.preheader:                                       ; preds = %.preheader1, %32
  %21 = phi i32 [ 0, %.preheader1 ], [ %33, %32 ]
  %22 = icmp sgt i32 %10, 0
  br i1 %22, label %.lr.ph3, label %32

.lr.ph3:                                          ; preds = %.preheader
  br label %23

23:                                               ; preds = %.lr.ph3, %23
  %.in2 = phi i32 [ %10, %.lr.ph3 ], [ %24, %23 ]
  %24 = add nsw i32 %.in2, -1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x i8], ptr %12, i64 %25
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds [4 x i8], ptr %13, i64 %25
  %29 = load i32, ptr %28, align 4
  %30 = add nsw i32 %29, %27
  store i32 %30, ptr %28, align 4
  %31 = icmp sgt i32 %24, 0
  br i1 %31, label %23, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %23
  br label %32

32:                                               ; preds = %._crit_edge, %.preheader
  %33 = add nuw nsw i32 %21, 1
  %34 = icmp samesign ult i32 %33, 1000
  br i1 %34, label %.preheader, label %35, !llvm.loop !10

35:                                               ; preds = %32
  %36 = load i32, ptr %13, align 4
  %37 = sext i32 %10 to i64
  %38 = getelementptr [4 x i8], ptr %13, i64 %37
  %39 = getelementptr i8, ptr %38, i64 -4
  %40 = load i32, ptr %39, align 4
  %41 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %36, i32 noundef %40) #3
  call void @free(ptr noundef %12) #3
  %42 = load ptr, ptr %3, align 8
  call void @free(ptr noundef %42) #3
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
