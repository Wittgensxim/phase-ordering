; ModuleID = 'results\paper_full\BenchmarkGame_nsieve-bits\round_006\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/nsieve-bits.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Primes up to %8d %8d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = call dereferenceable_or_null(5120004) ptr @malloc(i64 noundef 5120004) #5
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %40, label %.preheader.preheader

.preheader.preheader:                             ; preds = %2
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %36
  %4 = phi i32 [ %38, %36 ], [ 0, %.preheader.preheader ]
  %5 = lshr exact i32 40960000, %4
  %6 = lshr exact i32 5120000, %4
  %7 = or disjoint i32 %6, 4
  %8 = zext nneg i32 %7 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %3, i8 -1, i64 %8, i1 false)
  br label %9

9:                                                ; preds = %._crit_edge, %.preheader
  %10 = phi i32 [ 2, %.preheader ], [ %35, %._crit_edge ]
  %11 = phi i32 [ 0, %.preheader ], [ %34, %._crit_edge ]
  %12 = lshr i32 %10, 5
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %10, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %15, %17
  %.not2 = icmp eq i32 %18, 0
  br i1 %.not2, label %._crit_edge, label %19

19:                                               ; preds = %9
  %20 = add i32 %11, 1
  %21 = shl nuw i32 %10, 1
  %.not31 = icmp samesign ugt i32 %21, %5
  br i1 %.not31, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %19
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %32
  %22 = phi i32 [ %33, %32 ], [ %21, %.lr.ph.preheader ]
  %23 = lshr i32 %22, 5
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %22, 31
  %28 = shl nuw i32 1, %27
  %29 = and i32 %26, %28
  %.not4 = icmp eq i32 %29, 0
  br i1 %.not4, label %32, label %30

30:                                               ; preds = %.lr.ph
  %31 = xor i32 %26, %28
  store i32 %31, ptr %25, align 4
  br label %32

32:                                               ; preds = %30, %.lr.ph
  %33 = add nuw nsw i32 %22, %10
  %.not3 = icmp samesign ugt i32 %33, %5
  br i1 %.not3, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !7

._crit_edge.loopexit:                             ; preds = %32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %19, %9
  %34 = phi i32 [ %11, %9 ], [ %20, %19 ], [ %20, %._crit_edge.loopexit ]
  %35 = add nuw nsw i32 %10, 1
  %exitcond = icmp eq i32 %10, %5
  br i1 %exitcond, label %36, label %9, !llvm.loop !9

36:                                               ; preds = %._crit_edge
  %37 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %5, i32 noundef %34) #6
  %38 = add nuw nsw i32 %4, 1
  %exitcond1.not = icmp eq i32 %38, 3
  br i1 %exitcond1.not, label %39, label %.preheader, !llvm.loop !10

39:                                               ; preds = %36
  call void @free(ptr noundef nonnull %3) #6
  br label %40

40:                                               ; preds = %39, %2
  %41 = phi i32 [ 0, %39 ], [ 1, %2 ]
  ret i32 %41
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
