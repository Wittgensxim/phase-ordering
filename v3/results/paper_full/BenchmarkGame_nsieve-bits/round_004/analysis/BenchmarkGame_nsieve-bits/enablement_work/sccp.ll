; ModuleID = 'results\paper_full\BenchmarkGame_nsieve-bits\round_003\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/nsieve-bits.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Primes up to %8d %8d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 2) i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = call dereferenceable_or_null(5120004) ptr @malloc(i64 noundef 5120004) #5
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %42, label %4

4:                                                ; preds = %38, %2
  %5 = phi i32 [ %40, %38 ], [ 0, %2 ]
  %6 = lshr exact i32 40960000, %5
  %7 = lshr exact i32 5120000, %5
  %8 = or disjoint i32 %7, 4
  %9 = zext nneg i32 %8 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %3, i8 -1, i64 %9, i1 false)
  %10 = add nuw nsw i32 %6, 1
  %umax = call i32 @llvm.umax.i32(i32 %10, i32 3)
  br label %11

11:                                               ; preds = %._crit_edge, %4
  %12 = phi i32 [ 2, %4 ], [ %37, %._crit_edge ]
  %13 = phi i32 [ 0, %4 ], [ %36, %._crit_edge ]
  %14 = lshr i32 %12, 5
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %12, 31
  %19 = shl nuw i32 1, %18
  %20 = and i32 %17, %19
  %.not2 = icmp eq i32 %20, 0
  br i1 %.not2, label %._crit_edge, label %21

21:                                               ; preds = %11
  %22 = add i32 %13, 1
  %23 = shl i32 %12, 1
  %.not31 = icmp samesign ugt i32 %23, %6
  br i1 %.not31, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %34, %21
  %24 = phi i32 [ %35, %34 ], [ %23, %21 ]
  %25 = lshr i32 %24, 5
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %24, 31
  %30 = shl nuw i32 1, %29
  %31 = and i32 %28, %30
  %.not4 = icmp eq i32 %31, 0
  br i1 %.not4, label %34, label %32

32:                                               ; preds = %.lr.ph
  %33 = xor i32 %28, %30
  store i32 %33, ptr %27, align 4
  br label %34

34:                                               ; preds = %32, %.lr.ph
  %35 = add nuw nsw i32 %24, %12
  %.not3 = icmp samesign ugt i32 %35, %6
  br i1 %.not3, label %._crit_edge, label %.lr.ph, !llvm.loop !7

._crit_edge:                                      ; preds = %34, %21, %11
  %36 = phi i32 [ %13, %11 ], [ %22, %34 ], [ %22, %21 ]
  %37 = add nuw nsw i32 %12, 1
  %exitcond = icmp eq i32 %37, %umax
  br i1 %exitcond, label %38, label %11, !llvm.loop !9

38:                                               ; preds = %._crit_edge
  %.lcssa = phi i32 [ %36, %._crit_edge ]
  %39 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %6, i32 noundef %.lcssa) #6
  %40 = add nuw nsw i32 %5, 1
  %exitcond1 = icmp ne i32 %40, 3
  br i1 %exitcond1, label %4, label %41, !llvm.loop !10

41:                                               ; preds = %38
  call void @free(ptr noundef nonnull %3) #6
  br label %42

42:                                               ; preds = %41, %2
  %43 = phi i32 [ 0, %41 ], [ 1, %2 ]
  ret i32 %43
}

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare dso_local i32 @printf(ptr noundef, ...) #3

declare dso_local void @free(ptr noundef) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind allocsize(0) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/nsieve-bits.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
