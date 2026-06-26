; ModuleID = 'results\paper_full\BenchmarkGame_nsieve-bits\round_002\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/nsieve-bits.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Primes up to %8d %8d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = call dereferenceable_or_null(5120004) ptr @malloc(i64 noundef 5120004) #5
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %4, label %5

4:                                                ; preds = %2
  br label %47

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %43, %5
  %7 = phi i32 [ 0, %5 ], [ %45, %43 ]
  %8 = lshr exact i32 40960000, %7
  %9 = lshr exact i32 5120000, %7
  %10 = or disjoint i32 %9, 4
  %11 = zext nneg i32 %10 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %3, i8 -1, i64 %11, i1 false)
  %12 = add nuw nsw i32 %8, 1
  %umax = call i32 @llvm.umax.i32(i32 %12, i32 3)
  br label %13

13:                                               ; preds = %40, %6
  %14 = phi i32 [ 2, %6 ], [ %42, %40 ]
  %15 = phi i32 [ 0, %6 ], [ %41, %40 ]
  %16 = lshr i32 %14, 5
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %14, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %19, %21
  %.not2 = icmp eq i32 %22, 0
  br i1 %.not2, label %40, label %23

23:                                               ; preds = %13
  %24 = add i32 %15, 1
  %25 = shl i32 %14, 1
  %.not31 = icmp samesign ugt i32 %25, %8
  br i1 %.not31, label %39, label %.lr.ph

.lr.ph:                                           ; preds = %23
  br label %26

26:                                               ; preds = %37, %.lr.ph
  %27 = phi i32 [ %25, %.lr.ph ], [ %38, %37 ]
  %28 = lshr i32 %27, 5
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %29
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %27, 31
  %33 = shl nuw i32 1, %32
  %34 = and i32 %31, %33
  %.not4 = icmp eq i32 %34, 0
  br i1 %.not4, label %37, label %35

35:                                               ; preds = %26
  %36 = xor i32 %31, %33
  store i32 %36, ptr %30, align 4
  br label %37

37:                                               ; preds = %35, %26
  %38 = add nuw nsw i32 %27, %14
  %.not3 = icmp samesign ugt i32 %38, %8
  br i1 %.not3, label %._crit_edge, label %26, !llvm.loop !7

._crit_edge:                                      ; preds = %37
  br label %39

39:                                               ; preds = %._crit_edge, %23
  br label %40

40:                                               ; preds = %39, %13
  %41 = phi i32 [ %24, %39 ], [ %15, %13 ]
  %42 = add nuw nsw i32 %14, 1
  %exitcond = icmp eq i32 %42, %umax
  br i1 %exitcond, label %43, label %13, !llvm.loop !9

43:                                               ; preds = %40
  %.lcssa = phi i32 [ %41, %40 ]
  %44 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %8, i32 noundef %.lcssa) #6
  %45 = add nuw nsw i32 %7, 1
  %exitcond1 = icmp ne i32 %45, 3
  br i1 %exitcond1, label %6, label %46, !llvm.loop !10

46:                                               ; preds = %43
  call void @free(ptr noundef nonnull %3) #6
  br label %47

47:                                               ; preds = %46, %4
  %48 = phi i32 [ 0, %46 ], [ 1, %4 ]
  ret i32 %48
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
