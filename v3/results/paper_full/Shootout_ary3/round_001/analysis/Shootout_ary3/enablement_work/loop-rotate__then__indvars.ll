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
  br i1 %15, label %.lr.ph, label %19

.lr.ph:                                           ; preds = %10
  %wide.trip.count = zext i32 %11 to i64
  br label %16

16:                                               ; preds = %.lr.ph, %16
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %16 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %17 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %indvars.iv
  %18 = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %18, ptr %17, align 4
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %16, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %16
  br label %19

19:                                               ; preds = %._crit_edge, %10
  %20 = sext i32 %11 to i64
  br label %21

21:                                               ; preds = %19, %31
  %22 = phi i32 [ 0, %19 ], [ %32, %31 ]
  %23 = icmp sgt i32 %11, 0
  br i1 %23, label %.lr.ph3, label %31

.lr.ph3:                                          ; preds = %21
  br label %24

24:                                               ; preds = %.lr.ph3, %24
  %indvars.iv6 = phi i64 [ %20, %.lr.ph3 ], [ %indvars.iv.next7, %24 ]
  %indvars.iv.next7 = add nsw i64 %indvars.iv6, -1
  %25 = getelementptr inbounds [4 x i8], ptr %13, i64 %indvars.iv.next7
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds [4 x i8], ptr %14, i64 %indvars.iv.next7
  %28 = load i32, ptr %27, align 4
  %29 = add nsw i32 %28, %26
  store i32 %29, ptr %27, align 4
  %30 = icmp sgt i64 %indvars.iv.next7, 0
  br i1 %30, label %24, label %._crit_edge4, !llvm.loop !9

._crit_edge4:                                     ; preds = %24
  br label %31

31:                                               ; preds = %._crit_edge4, %21
  %32 = add nuw nsw i32 %22, 1
  %exitcond9 = icmp ne i32 %32, 1000
  br i1 %exitcond9, label %21, label %33, !llvm.loop !10

33:                                               ; preds = %31
  %34 = load i32, ptr %14, align 4
  %35 = sext i32 %11 to i64
  %36 = getelementptr [4 x i8], ptr %14, i64 %35
  %37 = getelementptr i8, ptr %36, i64 -4
  %38 = load i32, ptr %37, align 4
  %39 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %34, i32 noundef %38) #3
  call void @free(ptr noundef %13) #3
  %40 = load ptr, ptr %3, align 8
  call void @free(ptr noundef %40) #3
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
