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
  br i1 %13, label %.lr.ph, label %.preheader2

.lr.ph:                                           ; preds = %8
  br label %14

..preheader2_crit_edge:                           ; preds = %14
  br label %.preheader2

.preheader2:                                      ; preds = %..preheader2_crit_edge, %8
  br label %.preheader

14:                                               ; preds = %.lr.ph, %14
  %.013 = phi i32 [ 0, %.lr.ph ], [ %15, %14 ]
  %15 = add nuw nsw i32 %.013, 1
  %16 = zext nneg i32 %.013 to i64
  %17 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %16
  store i32 %15, ptr %17, align 4
  %18 = icmp slt i32 %15, %9
  br i1 %18, label %14, label %..preheader2_crit_edge, !llvm.loop !7

.preheader:                                       ; preds = %.preheader2, %28
  %.07 = phi i32 [ 0, %.preheader2 ], [ %29, %28 ]
  %.14 = add nsw i32 %9, -1
  %19 = icmp sgt i32 %9, 0
  br i1 %19, label %.lr.ph6, label %28

.lr.ph6:                                          ; preds = %.preheader
  br label %20

20:                                               ; preds = %.lr.ph6, %20
  %.15 = phi i32 [ %.14, %.lr.ph6 ], [ %.1, %20 ]
  %21 = sext i32 %.15 to i64
  %22 = getelementptr inbounds [4 x i8], ptr %11, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds [4 x i8], ptr %12, i64 %21
  %25 = load i32, ptr %24, align 4
  %26 = add nsw i32 %25, %23
  store i32 %26, ptr %24, align 4
  %.1 = add nsw i32 %.15, -1
  %27 = icmp sgt i32 %.15, 0
  br i1 %27, label %20, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %20
  br label %28

28:                                               ; preds = %._crit_edge, %.preheader
  %29 = add nuw nsw i32 %.07, 1
  %30 = icmp samesign ult i32 %29, 1000
  br i1 %30, label %.preheader, label %31, !llvm.loop !10

31:                                               ; preds = %28
  %32 = load i32, ptr %12, align 4
  %33 = getelementptr [4 x i8], ptr %12, i64 %10
  %34 = getelementptr i8, ptr %33, i64 -4
  %35 = load i32, ptr %34, align 4
  %36 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %32, i32 noundef %35) #3
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
