; ModuleID = 'results\paper_full\BenchmarkGame_nsieve-bits\round_000\output.ll'
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
  br label %49

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %45, %5
  %storemerge = phi i32 [ 0, %5 ], [ %47, %45 ]
  %exitcond3 = icmp ne i32 %storemerge, 3
  br i1 %exitcond3, label %7, label %48

7:                                                ; preds = %6
  %8 = lshr exact i32 40960000, %storemerge
  %9 = lshr exact i32 5120000, %storemerge
  %10 = or disjoint i32 %9, 4
  %11 = zext nneg i32 %10 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %3, i8 -1, i64 %11, i1 false)
  %12 = add nuw nsw i32 %8, 1
  %umax = call i32 @llvm.umax.i32(i32 %12, i32 2)
  br label %13

13:                                               ; preds = %43, %7
  %.0 = phi i32 [ 0, %7 ], [ %.1, %43 ]
  %14 = phi i32 [ %44, %43 ], [ 2, %7 ]
  %exitcond = icmp eq i32 %14, %umax
  br i1 %exitcond, label %45, label %15

15:                                               ; preds = %13
  %16 = lshr i32 %14, 5
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %14, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %19, %21
  %.not2 = icmp eq i32 %22, 0
  br i1 %.not2, label %43, label %23

23:                                               ; preds = %15
  %24 = shl i32 %14, 1
  br label %25

25:                                               ; preds = %39, %23
  %26 = phi i32 [ %40, %39 ], [ %24, %23 ]
  %.not3 = icmp ugt i32 %26, %8
  br i1 %.not3, label %41, label %27

27:                                               ; preds = %25
  %28 = lshr i32 %26, 5
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %29
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %26, 31
  %33 = shl nuw i32 1, %32
  %34 = and i32 %31, %33
  %.not4 = icmp eq i32 %34, 0
  br i1 %.not4, label %39, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %29
  %37 = load i32, ptr %36, align 4
  %38 = xor i32 %37, %33
  store i32 %38, ptr %36, align 4
  br label %39

39:                                               ; preds = %35, %27
  %40 = add i32 %26, %14
  br label %25, !llvm.loop !7

41:                                               ; preds = %25
  %42 = add i32 %.0, 1
  br label %43

43:                                               ; preds = %41, %15
  %.1 = phi i32 [ %.0, %15 ], [ %42, %41 ]
  %44 = add nuw nsw i32 %14, 1
  br label %13, !llvm.loop !9

45:                                               ; preds = %13
  %.0.lcssa = phi i32 [ %.0, %13 ]
  %46 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %8, i32 noundef %.0.lcssa) #6
  %47 = add nuw nsw i32 %storemerge, 1
  br label %6, !llvm.loop !10

48:                                               ; preds = %6
  call void @free(ptr noundef nonnull %3) #6
  br label %49

49:                                               ; preds = %48, %4
  %50 = phi i32 [ 0, %48 ], [ 1, %4 ]
  ret i32 %50
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
