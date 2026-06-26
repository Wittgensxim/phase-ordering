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
  br label %49

7:                                                ; preds = %2
  store i32 0, ptr %3, align 4
  br label %8

8:                                                ; preds = %7, %44
  %9 = phi i32 [ 0, %7 ], [ %46, %44 ]
  store i32 0, ptr %4, align 4
  %10 = lshr exact i32 40960000, %9
  %11 = lshr exact i32 5120000, %9
  %12 = or disjoint i32 %11, 4
  %13 = zext nneg i32 %12 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %5, i8 -1, i64 %13, i1 false)
  br label %14

14:                                               ; preds = %8, %41
  %15 = phi i32 [ 2, %8 ], [ %43, %41 ]
  %16 = phi i32 [ 0, %8 ], [ %42, %41 ]
  %17 = lshr i32 %15, 5
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %15, 31
  %22 = shl nuw i32 1, %21
  %23 = and i32 %20, %22
  %.not2 = icmp eq i32 %23, 0
  br i1 %.not2, label %41, label %24

24:                                               ; preds = %14
  %25 = add i32 %16, 1
  store i32 %25, ptr %4, align 4
  %26 = shl i32 %15, 1
  %.not31 = icmp ugt i32 %26, %10
  br i1 %.not31, label %40, label %.lr.ph

.lr.ph:                                           ; preds = %24
  br label %27

27:                                               ; preds = %.lr.ph, %38
  %28 = phi i32 [ %26, %.lr.ph ], [ %39, %38 ]
  %29 = lshr i32 %28, 5
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %30
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %28, 31
  %34 = shl nuw i32 1, %33
  %35 = and i32 %32, %34
  %.not4 = icmp eq i32 %35, 0
  br i1 %.not4, label %38, label %36

36:                                               ; preds = %27
  %37 = xor i32 %32, %34
  store i32 %37, ptr %31, align 4
  br label %38

38:                                               ; preds = %36, %27
  %39 = add i32 %28, %15
  %.not3 = icmp ugt i32 %39, %10
  br i1 %.not3, label %._crit_edge, label %27, !llvm.loop !7

._crit_edge:                                      ; preds = %38
  br label %40

40:                                               ; preds = %._crit_edge, %24
  br label %41

41:                                               ; preds = %40, %14
  %42 = phi i32 [ %25, %40 ], [ %16, %14 ]
  %43 = add i32 %15, 1
  %.not1 = icmp ugt i32 %43, %10
  br i1 %.not1, label %44, label %14, !llvm.loop !9

44:                                               ; preds = %41
  %.lcssa = phi i32 [ %42, %41 ]
  %45 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %10, i32 noundef %.lcssa) #5
  %46 = add i32 %9, 1
  store i32 %46, ptr %3, align 4
  %47 = icmp ult i32 %46, 3
  br i1 %47, label %8, label %48, !llvm.loop !10

48:                                               ; preds = %44
  call void @free(ptr noundef nonnull %5) #5
  br label %49

49:                                               ; preds = %48, %6
  %50 = phi i32 [ 0, %48 ], [ 1, %6 ]
  ret i32 %50
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
