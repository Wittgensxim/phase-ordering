; ModuleID = 'results\paper_full\Shootout_ary3\round_002\output.ll'
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
  %7 = call i32 @atoi(ptr noundef %6) #4
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi i32 [ %7, %4 ], [ 1500000, %2 ]
  %10 = sext i32 %9 to i64
  %11 = call ptr @calloc(i64 noundef %10, i64 noundef 4) #5
  %12 = call ptr @calloc(i64 noundef %10, i64 noundef 4) #5
  %smax = call i32 @llvm.smax.i32(i32 %9, i32 0)
  %wide.trip.count = zext i32 %smax to i64
  %exitcond1 = icmp ne i64 0, %wide.trip.count
  br i1 %exitcond1, label %.lr.ph, label %16

.lr.ph:                                           ; preds = %8
  br label %13

13:                                               ; preds = %.lr.ph, %13
  %indvars.iv3 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %13 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv3, 1
  %14 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv3
  %15 = trunc nuw i64 %indvars.iv.next to i32
  store i32 %15, ptr %14, align 4
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %13, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %13
  br label %16

16:                                               ; preds = %._crit_edge, %8
  br label %.preheader

.preheader:                                       ; preds = %16, %26
  %17 = phi i32 [ 0, %16 ], [ %27, %26 ]
  %18 = icmp sgt i64 %10, 0
  br i1 %18, label %.lr.ph5, label %26

.lr.ph5:                                          ; preds = %.preheader
  br label %19

19:                                               ; preds = %.lr.ph5, %19
  %indvars.iv24 = phi i64 [ %10, %.lr.ph5 ], [ %indvars.iv.next3, %19 ]
  %indvars.iv.next3 = add nsw i64 %indvars.iv24, -1
  %20 = getelementptr inbounds [4 x i8], ptr %11, i64 %indvars.iv.next3
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds [4 x i8], ptr %12, i64 %indvars.iv.next3
  %23 = load i32, ptr %22, align 4
  %24 = add nsw i32 %23, %21
  store i32 %24, ptr %22, align 4
  %25 = icmp sgt i64 %indvars.iv.next3, 0
  br i1 %25, label %19, label %._crit_edge6, !llvm.loop !9

._crit_edge6:                                     ; preds = %19
  br label %26

26:                                               ; preds = %._crit_edge6, %.preheader
  %27 = add nuw nsw i32 %17, 1
  %exitcond5 = icmp ne i32 %27, 1000
  br i1 %exitcond5, label %.preheader, label %28, !llvm.loop !10

28:                                               ; preds = %26
  %29 = load i32, ptr %12, align 4
  %30 = getelementptr [4 x i8], ptr %12, i64 %10
  %31 = getelementptr i8, ptr %30, i64 -4
  %32 = load i32, ptr %31, align 4
  %33 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %29, i32 noundef %32) #4
  call void @free(ptr noundef %11) #4
  call void @free(ptr noundef nonnull %12) #4
  ret i32 0
}

declare dso_local i32 @atoi(ptr noundef) #1

; Function Attrs: allocsize(0,1)
declare dso_local ptr @calloc(i64 noundef, i64 noundef) #2

declare dso_local i32 @printf(ptr noundef, ...) #1

declare dso_local void @free(ptr noundef) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(0,1) }

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
