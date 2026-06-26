; ModuleID = 'results\paper_full\BenchmarkGame_nsieve-bits\BenchmarkGame_nsieve-bits.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/nsieve-bits.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Primes up to %8d %8d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 2) i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = call dereferenceable_or_null(5120004) ptr @malloc(i64 noundef 5120004) #4
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %39, label %.preheader

.preheader:                                       ; preds = %2
  br label %4

4:                                                ; preds = %.preheader, %34
  %.0315 = phi i32 [ 0, %.preheader ], [ %36, %34 ]
  %5 = lshr exact i32 40960000, %.0315
  %6 = lshr exact i32 5120000, %.0315
  %7 = or disjoint i32 %6, 4
  %8 = zext nneg i32 %7 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %3, i8 -1, i64 %8, i1 false)
  br label %9

9:                                                ; preds = %4, %32
  %.0114 = phi i32 [ 0, %4 ], [ %.1, %32 ]
  %.0413 = phi i32 [ 2, %4 ], [ %33, %32 ]
  %10 = lshr i32 %.0413, 5
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %.0413, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %13, %15
  %.not6 = icmp eq i32 %16, 0
  br i1 %.not6, label %32, label %17

17:                                               ; preds = %9
  %18 = add i32 %.0114, 1
  %19 = shl nuw nsw i32 %.0413, 1
  %.not711 = icmp ugt i32 %19, %5
  br i1 %.not711, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %17
  br label %20

20:                                               ; preds = %.lr.ph, %30
  %.0212 = phi i32 [ %19, %.lr.ph ], [ %31, %30 ]
  %21 = lshr i32 %.0212, 5
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %.0212, 31
  %26 = shl nuw i32 1, %25
  %27 = and i32 %24, %26
  %.not8 = icmp eq i32 %27, 0
  br i1 %.not8, label %30, label %28

28:                                               ; preds = %20
  %29 = xor i32 %24, %26
  store i32 %29, ptr %23, align 4
  br label %30

30:                                               ; preds = %20, %28
  %31 = add nuw nsw i32 %.0212, %.0413
  %.not7 = icmp ugt i32 %31, %5
  br i1 %.not7, label %..loopexit_crit_edge, label %20, !llvm.loop !7

..loopexit_crit_edge:                             ; preds = %30
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %17
  br label %32

32:                                               ; preds = %.loopexit, %9
  %.1 = phi i32 [ %.0114, %9 ], [ %18, %.loopexit ]
  %33 = add nuw nsw i32 %.0413, 1
  %.not5 = icmp ugt i32 %33, %5
  br i1 %.not5, label %34, label %9, !llvm.loop !9

34:                                               ; preds = %32
  %.01.lcssa = phi i32 [ %.1, %32 ]
  %35 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %5, i32 noundef %.01.lcssa) #5
  %36 = add nuw nsw i32 %.0315, 1
  %37 = icmp samesign ult i32 %36, 3
  br i1 %37, label %4, label %38, !llvm.loop !10

38:                                               ; preds = %34
  call void @free(ptr noundef nonnull %3) #5
  br label %39

39:                                               ; preds = %2, %38
  %.0 = phi i32 [ 0, %38 ], [ 1, %2 ]
  ret i32 %.0
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
