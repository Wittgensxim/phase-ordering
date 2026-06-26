; ModuleID = 'results\paper_full\BenchmarkGame_nsieve-bits\round_001\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/nsieve-bits.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Primes up to %8d %8d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = call dereferenceable_or_null(5120004) ptr @malloc(i64 noundef 5120004) #4
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %42, label %4

4:                                                ; preds = %2, %37
  %5 = phi i32 [ %39, %37 ], [ 0, %2 ]
  %6 = lshr exact i32 40960000, %5
  %7 = lshr exact i32 5120000, %5
  %8 = or disjoint i32 %7, 4
  %9 = zext nneg i32 %8 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %3, i8 -1, i64 %9, i1 false)
  br label %10

10:                                               ; preds = %4, %._crit_edge
  %11 = phi i32 [ 2, %4 ], [ %36, %._crit_edge ]
  %12 = phi i32 [ 0, %4 ], [ %35, %._crit_edge ]
  %13 = lshr i32 %11, 5
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %11, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %16, %18
  %.not2 = icmp eq i32 %19, 0
  br i1 %.not2, label %._crit_edge, label %20

20:                                               ; preds = %10
  %21 = add i32 %12, 1
  %22 = shl i32 %11, 1
  %.not31 = icmp ugt i32 %22, %6
  br i1 %.not31, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %20, %33
  %23 = phi i32 [ %34, %33 ], [ %22, %20 ]
  %24 = lshr i32 %23, 5
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %25
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %23, 31
  %29 = shl nuw i32 1, %28
  %30 = and i32 %27, %29
  %.not4 = icmp eq i32 %30, 0
  br i1 %.not4, label %33, label %31

31:                                               ; preds = %.lr.ph
  %32 = xor i32 %27, %29
  store i32 %32, ptr %26, align 4
  br label %33

33:                                               ; preds = %31, %.lr.ph
  %34 = add i32 %23, %11
  %.not3 = icmp ugt i32 %34, %6
  br i1 %.not3, label %._crit_edge, label %.lr.ph, !llvm.loop !7

._crit_edge:                                      ; preds = %20, %33, %10
  %35 = phi i32 [ %12, %10 ], [ %21, %33 ], [ %21, %20 ]
  %36 = add i32 %11, 1
  %.not1 = icmp ugt i32 %36, %6
  br i1 %.not1, label %37, label %10, !llvm.loop !9

37:                                               ; preds = %._crit_edge
  %.lcssa = phi i32 [ %35, %._crit_edge ]
  %38 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %6, i32 noundef %.lcssa) #5
  %39 = add nuw nsw i32 %5, 1
  %40 = icmp samesign ult i32 %39, 3
  br i1 %40, label %4, label %41, !llvm.loop !10

41:                                               ; preds = %37
  call void @free(ptr noundef nonnull %3) #5
  br label %42

42:                                               ; preds = %2, %41
  %43 = phi i32 [ 0, %41 ], [ 1, %2 ]
  ret i32 %43
}

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare dso_local i32 @printf(ptr noundef, ...) #3

declare dso_local void @free(ptr noundef) #3

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0) }
attributes #5 = { nounwind }

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
