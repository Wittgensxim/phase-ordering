; ModuleID = 'results\paper_full\BenchmarkGame_nsieve-bits\round_000\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/nsieve-bits.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Primes up to %8d %8d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call dereferenceable_or_null(5120004) ptr @malloc(i64 noundef 5120004) #4
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %6, label %7

6:                                                ; preds = %2
  br label %50

7:                                                ; preds = %2
  %.promoted2 = load i32, ptr %4, align 4
  br label %8

8:                                                ; preds = %7, %45
  %storemerge5 = phi i32 [ 0, %7 ], [ %47, %45 ]
  %9 = lshr exact i32 40960000, %storemerge5
  %10 = lshr exact i32 5120000, %storemerge5
  %11 = or disjoint i32 %10, 4
  %12 = zext nneg i32 %11 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %5, i8 -1, i64 %12, i1 false)
  br label %13

13:                                               ; preds = %8, %42
  %14 = phi i32 [ 2, %8 ], [ %44, %42 ]
  %15 = phi i32 [ 0, %8 ], [ %43, %42 ]
  %16 = lshr i32 %14, 5
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %14, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %19, %21
  %.not2 = icmp eq i32 %22, 0
  br i1 %.not2, label %42, label %23

23:                                               ; preds = %13
  %24 = add i32 %15, 1
  %25 = shl i32 %14, 1
  %.not34 = icmp ugt i32 %25, %9
  br i1 %.not34, label %41, label %.lr.ph

.lr.ph:                                           ; preds = %23
  br label %26

26:                                               ; preds = %.lr.ph, %39
  %27 = phi i32 [ %25, %.lr.ph ], [ %40, %39 ]
  %28 = lshr i32 %27, 5
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %29
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %27, 31
  %33 = shl nuw i32 1, %32
  %34 = and i32 %31, %33
  %.not4 = icmp eq i32 %34, 0
  br i1 %.not4, label %39, label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %29
  %37 = load i32, ptr %36, align 4
  %38 = xor i32 %37, %33
  store i32 %38, ptr %36, align 4
  br label %39

39:                                               ; preds = %35, %26
  %40 = add i32 %27, %14
  %.not3 = icmp ugt i32 %40, %9
  br i1 %.not3, label %._crit_edge, label %26, !llvm.loop !7

._crit_edge:                                      ; preds = %39
  br label %41

41:                                               ; preds = %._crit_edge, %23
  br label %42

42:                                               ; preds = %41, %13
  %43 = phi i32 [ %24, %41 ], [ %15, %13 ]
  %44 = add i32 %14, 1
  %.not1 = icmp ugt i32 %44, %9
  br i1 %.not1, label %45, label %13, !llvm.loop !9

45:                                               ; preds = %42
  %.lcssa = phi i32 [ %43, %42 ]
  %46 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %9, i32 noundef %.lcssa) #5
  %47 = add i32 %storemerge5, 1
  %48 = icmp ult i32 %47, 3
  br i1 %48, label %8, label %49, !llvm.loop !10

49:                                               ; preds = %45
  %.lcssa3.lcssa = phi i32 [ %.lcssa, %45 ]
  %storemerge.lcssa = phi i32 [ %47, %45 ]
  store i32 %storemerge.lcssa, ptr %3, align 4
  store i32 %.lcssa3.lcssa, ptr %4, align 4
  call void @free(ptr noundef nonnull %5) #5
  br label %50

50:                                               ; preds = %49, %6
  %51 = phi i32 [ 0, %49 ], [ 1, %6 ]
  ret i32 %51
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
