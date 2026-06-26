; ModuleID = 'results\paper_full\BenchmarkGame_nsieve-bits\round_000\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/nsieve-bits.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Primes up to %8d %8d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = call dereferenceable_or_null(5120004) ptr @malloc(i64 noundef 5120004) #4
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %4, label %5

4:                                                ; preds = %2
  br label %46

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %41
  %storemerge5 = phi i32 [ 0, %5 ], [ %43, %41 ]
  %7 = lshr exact i32 40960000, %storemerge5
  %8 = lshr exact i32 5120000, %storemerge5
  %9 = or disjoint i32 %8, 4
  %10 = zext nneg i32 %9 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %3, i8 -1, i64 %10, i1 false)
  br label %11

11:                                               ; preds = %6, %39
  %12 = phi i32 [ 2, %6 ], [ %40, %39 ]
  %.04 = phi i32 [ 0, %6 ], [ %.1, %39 ]
  %13 = lshr i32 %12, 5
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %12, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %16, %18
  %.not2 = icmp eq i32 %19, 0
  br i1 %.not2, label %39, label %20

20:                                               ; preds = %11
  %21 = add i32 %.04, 1
  %22 = shl i32 %12, 1
  %.not33 = icmp ugt i32 %22, %7
  br i1 %.not33, label %38, label %.lr.ph

.lr.ph:                                           ; preds = %20
  br label %23

23:                                               ; preds = %.lr.ph, %36
  %24 = phi i32 [ %22, %.lr.ph ], [ %37, %36 ]
  %25 = lshr i32 %24, 5
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %24, 31
  %30 = shl nuw i32 1, %29
  %31 = and i32 %28, %30
  %.not4 = icmp eq i32 %31, 0
  br i1 %.not4, label %36, label %32

32:                                               ; preds = %23
  %33 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %26
  %34 = load i32, ptr %33, align 4
  %35 = xor i32 %34, %30
  store i32 %35, ptr %33, align 4
  br label %36

36:                                               ; preds = %32, %23
  %37 = add i32 %24, %12
  %.not3 = icmp ugt i32 %37, %7
  br i1 %.not3, label %._crit_edge, label %23, !llvm.loop !7

._crit_edge:                                      ; preds = %36
  br label %38

38:                                               ; preds = %._crit_edge, %20
  br label %39

39:                                               ; preds = %38, %11
  %.1 = phi i32 [ %.04, %11 ], [ %21, %38 ]
  %40 = add i32 %12, 1
  %.not1 = icmp ugt i32 %40, %7
  br i1 %.not1, label %41, label %11, !llvm.loop !9

41:                                               ; preds = %39
  %.0.lcssa = phi i32 [ %.1, %39 ]
  %42 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %7, i32 noundef %.0.lcssa) #5
  %43 = add i32 %storemerge5, 1
  %44 = icmp ult i32 %43, 3
  br i1 %44, label %6, label %45, !llvm.loop !10

45:                                               ; preds = %41
  call void @free(ptr noundef nonnull %3) #5
  br label %46

46:                                               ; preds = %45, %4
  %47 = phi i32 [ 0, %45 ], [ 1, %4 ]
  ret i32 %47
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
