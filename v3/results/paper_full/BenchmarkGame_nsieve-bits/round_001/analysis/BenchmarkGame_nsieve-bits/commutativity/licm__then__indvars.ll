; ModuleID = 'results\paper_full\BenchmarkGame_nsieve-bits\round_000\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/nsieve-bits.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Primes up to %8d %8d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call dereferenceable_or_null(5120004) ptr @malloc(i64 noundef 5120004) #5
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %6, label %7

6:                                                ; preds = %2
  br label %53

7:                                                ; preds = %2
  %.promoted2 = load i32, ptr %4, align 4
  br label %8

8:                                                ; preds = %49, %7
  %.lcssa3 = phi i32 [ %.promoted2, %7 ], [ %.lcssa, %49 ]
  %storemerge = phi i32 [ 0, %7 ], [ %51, %49 ]
  %exitcond4 = icmp ne i32 %storemerge, 3
  br i1 %exitcond4, label %9, label %52

9:                                                ; preds = %8
  %10 = lshr exact i32 40960000, %storemerge
  %11 = lshr exact i32 5120000, %storemerge
  %12 = or disjoint i32 %11, 4
  %13 = zext nneg i32 %12 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %5, i8 -1, i64 %13, i1 false)
  %14 = add nuw nsw i32 %10, 1
  %umax = call i32 @llvm.umax.i32(i32 %14, i32 2)
  br label %15

15:                                               ; preds = %46, %9
  %16 = phi i32 [ %47, %46 ], [ 0, %9 ]
  %17 = phi i32 [ %48, %46 ], [ 2, %9 ]
  %exitcond = icmp eq i32 %17, %umax
  br i1 %exitcond, label %49, label %18

18:                                               ; preds = %15
  %19 = lshr i32 %17, 5
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %20
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %17, 31
  %24 = shl nuw i32 1, %23
  %25 = and i32 %22, %24
  %.not2 = icmp eq i32 %25, 0
  br i1 %.not2, label %46, label %26

26:                                               ; preds = %18
  %27 = shl i32 %17, 1
  br label %28

28:                                               ; preds = %42, %26
  %29 = phi i32 [ %43, %42 ], [ %27, %26 ]
  %.not3 = icmp ugt i32 %29, %10
  br i1 %.not3, label %44, label %30

30:                                               ; preds = %28
  %31 = lshr i32 %29, 5
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %32
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %29, 31
  %36 = shl nuw i32 1, %35
  %37 = and i32 %34, %36
  %.not4 = icmp eq i32 %37, 0
  br i1 %.not4, label %42, label %38

38:                                               ; preds = %30
  %39 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %32
  %40 = load i32, ptr %39, align 4
  %41 = xor i32 %40, %36
  store i32 %41, ptr %39, align 4
  br label %42

42:                                               ; preds = %38, %30
  %43 = add i32 %29, %17
  br label %28, !llvm.loop !7

44:                                               ; preds = %28
  %45 = add i32 %16, 1
  br label %46

46:                                               ; preds = %44, %18
  %47 = phi i32 [ %45, %44 ], [ %16, %18 ]
  %48 = add nuw nsw i32 %17, 1
  br label %15, !llvm.loop !9

49:                                               ; preds = %15
  %.lcssa = phi i32 [ %16, %15 ]
  %50 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %10, i32 noundef %.lcssa) #6
  %51 = add nuw nsw i32 %storemerge, 1
  br label %8, !llvm.loop !10

52:                                               ; preds = %8
  %.lcssa3.lcssa = phi i32 [ %.lcssa3, %8 ]
  store i32 3, ptr %3, align 4
  store i32 %.lcssa3.lcssa, ptr %4, align 4
  call void @free(ptr noundef nonnull %5) #6
  br label %53

53:                                               ; preds = %52, %6
  %54 = phi i32 [ 0, %52 ], [ 1, %6 ]
  ret i32 %54
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
