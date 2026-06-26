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
  br label %52

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %48, %7
  %9 = phi i32 [ 0, %7 ], [ %50, %48 ]
  store i32 %9, ptr %3, align 4
  %exitcond1 = icmp ne i32 %9, 3
  br i1 %exitcond1, label %10, label %51

10:                                               ; preds = %8
  store i32 0, ptr %4, align 4
  %11 = lshr exact i32 40960000, %9
  %12 = lshr exact i32 5120000, %9
  %13 = or disjoint i32 %12, 4
  %14 = zext nneg i32 %13 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %5, i8 -1, i64 %14, i1 false)
  %15 = add nuw nsw i32 %11, 1
  %umax = call i32 @llvm.umax.i32(i32 %15, i32 2)
  br label %16

16:                                               ; preds = %45, %10
  %17 = phi i32 [ %46, %45 ], [ 0, %10 ]
  %18 = phi i32 [ %47, %45 ], [ 2, %10 ]
  %exitcond = icmp eq i32 %18, %umax
  br i1 %exitcond, label %48, label %19

19:                                               ; preds = %16
  %20 = lshr i32 %18, 5
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %18, 31
  %25 = shl nuw i32 1, %24
  %26 = and i32 %23, %25
  %.not2 = icmp eq i32 %26, 0
  br i1 %.not2, label %45, label %27

27:                                               ; preds = %19
  %28 = add i32 %17, 1
  store i32 %28, ptr %4, align 4
  %29 = shl i32 %18, 1
  br label %30

30:                                               ; preds = %42, %27
  %31 = phi i32 [ %43, %42 ], [ %29, %27 ]
  %.not3 = icmp ugt i32 %31, %11
  br i1 %.not3, label %44, label %32

32:                                               ; preds = %30
  %33 = lshr i32 %31, 5
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %31, 31
  %38 = shl nuw i32 1, %37
  %39 = and i32 %36, %38
  %.not4 = icmp eq i32 %39, 0
  br i1 %.not4, label %42, label %40

40:                                               ; preds = %32
  %41 = xor i32 %36, %38
  store i32 %41, ptr %35, align 4
  br label %42

42:                                               ; preds = %40, %32
  %43 = add i32 %31, %18
  br label %30, !llvm.loop !7

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %44, %19
  %46 = phi i32 [ %28, %44 ], [ %17, %19 ]
  %47 = add nuw nsw i32 %18, 1
  br label %16, !llvm.loop !9

48:                                               ; preds = %16
  %.lcssa = phi i32 [ %17, %16 ]
  %49 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %11, i32 noundef %.lcssa) #6
  %50 = add nuw nsw i32 %9, 1
  br label %8, !llvm.loop !10

51:                                               ; preds = %8
  call void @free(ptr noundef nonnull %5) #6
  br label %52

52:                                               ; preds = %51, %6
  %53 = phi i32 [ 0, %51 ], [ 1, %6 ]
  ret i32 %53
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
