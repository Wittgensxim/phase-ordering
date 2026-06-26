; ModuleID = 'results\paper_full\BenchmarkGame_nsieve-bits\round_002\output.ll'
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
  br label %47

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %42, %5
  %7 = phi i32 [ 0, %5 ], [ %44, %42 ]
  %8 = lshr exact i32 40960000, %7
  %9 = lshr exact i32 5120000, %7
  %10 = or disjoint i32 %9, 4
  %11 = zext nneg i32 %10 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %3, i8 -1, i64 %11, i1 false)
  br label %12

12:                                               ; preds = %39, %6
  %13 = phi i32 [ 2, %6 ], [ %41, %39 ]
  %14 = phi i32 [ 0, %6 ], [ %40, %39 ]
  %15 = lshr i32 %13, 5
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %13, 31
  %20 = shl nuw i32 1, %19
  %21 = and i32 %18, %20
  %.not2 = icmp eq i32 %21, 0
  br i1 %.not2, label %39, label %22

22:                                               ; preds = %12
  %23 = add i32 %14, 1
  %24 = shl i32 %13, 1
  %.not31 = icmp ugt i32 %24, %8
  br i1 %.not31, label %38, label %.lr.ph

.lr.ph:                                           ; preds = %22
  br label %25

25:                                               ; preds = %36, %.lr.ph
  %26 = phi i32 [ %24, %.lr.ph ], [ %37, %36 ]
  %27 = lshr i32 %26, 5
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %28
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %26, 31
  %32 = shl nuw i32 1, %31
  %33 = and i32 %32, %30
  %.not4 = icmp eq i32 %33, 0
  br i1 %.not4, label %36, label %34

34:                                               ; preds = %25
  %35 = xor i32 %32, %30
  store i32 %35, ptr %29, align 4
  br label %36

36:                                               ; preds = %34, %25
  %37 = add i32 %26, %13
  %.not3 = icmp ugt i32 %37, %8
  br i1 %.not3, label %._crit_edge, label %25, !llvm.loop !7

._crit_edge:                                      ; preds = %36
  br label %38

38:                                               ; preds = %._crit_edge, %22
  br label %39

39:                                               ; preds = %38, %12
  %40 = phi i32 [ %23, %38 ], [ %14, %12 ]
  %41 = add i32 %13, 1
  %.not1 = icmp ugt i32 %41, %8
  br i1 %.not1, label %42, label %12, !llvm.loop !9

42:                                               ; preds = %39
  %43 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %8, i32 noundef %40) #5
  %44 = add nuw nsw i32 %7, 1
  %45 = icmp samesign ult i32 %44, 3
  br i1 %45, label %6, label %46, !llvm.loop !10

46:                                               ; preds = %42
  call void @free(ptr noundef nonnull %3) #5
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
