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
  br i1 %.not, label %47, label %6

6:                                                ; preds = %2
  store i32 0, ptr %3, align 4
  br label %7

7:                                                ; preds = %6, %40
  %storemerge2 = phi i32 [ 0, %6 ], [ %44, %40 ]
  store i32 0, ptr %4, align 4
  %8 = lshr exact i32 40960000, %storemerge2
  %9 = lshr exact i32 5120000, %storemerge2
  %10 = or disjoint i32 %9, 4
  %11 = zext nneg i32 %10 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %5, i8 -1, i64 %11, i1 false)
  br label %12

12:                                               ; preds = %7, %._crit_edge
  %13 = phi i32 [ 2, %7 ], [ %39, %._crit_edge ]
  %14 = lshr i32 %13, 5
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %13, 31
  %19 = shl nuw i32 1, %18
  %20 = and i32 %17, %19
  %.not2 = icmp eq i32 %20, 0
  br i1 %.not2, label %._crit_edge, label %21

21:                                               ; preds = %12
  %22 = load i32, ptr %4, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr %4, align 4
  %24 = shl i32 %13, 1
  %.not31 = icmp ugt i32 %24, %8
  br i1 %.not31, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %21, %37
  %25 = phi i32 [ %38, %37 ], [ %24, %21 ]
  %26 = lshr i32 %25, 5
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %25, 31
  %31 = shl nuw i32 1, %30
  %32 = and i32 %29, %31
  %.not4 = icmp eq i32 %32, 0
  br i1 %.not4, label %37, label %33

33:                                               ; preds = %.lr.ph
  %34 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %27
  %35 = load i32, ptr %34, align 4
  %36 = xor i32 %35, %31
  store i32 %36, ptr %34, align 4
  br label %37

37:                                               ; preds = %33, %.lr.ph
  %38 = add i32 %25, %13
  %.not3 = icmp ugt i32 %38, %8
  br i1 %.not3, label %._crit_edge, label %.lr.ph, !llvm.loop !7

._crit_edge:                                      ; preds = %21, %37, %12
  %39 = add i32 %13, 1
  %.not1 = icmp ugt i32 %39, %8
  br i1 %.not1, label %40, label %12, !llvm.loop !9

40:                                               ; preds = %._crit_edge
  %41 = load i32, ptr %4, align 4
  %42 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %8, i32 noundef %41) #5
  %43 = load i32, ptr %3, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %3, align 4
  %45 = icmp ult i32 %44, 3
  br i1 %45, label %7, label %46, !llvm.loop !10

46:                                               ; preds = %40
  call void @free(ptr noundef nonnull %5) #5
  br label %47

47:                                               ; preds = %2, %46
  %48 = phi i32 [ 0, %46 ], [ 1, %2 ]
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
