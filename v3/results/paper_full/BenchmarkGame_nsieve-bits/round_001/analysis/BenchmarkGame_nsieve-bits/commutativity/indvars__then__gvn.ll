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
  br label %8

8:                                                ; preds = %49, %7
  %9 = phi i32 [ 0, %7 ], [ %51, %49 ]
  store i32 %9, ptr %3, align 4
  %10 = icmp ult i32 %9, 3
  br i1 %10, label %11, label %52

11:                                               ; preds = %8
  store i32 0, ptr %4, align 4
  %12 = lshr exact i32 40960000, %9
  %13 = lshr exact i32 5120000, %9
  %14 = or disjoint i32 %13, 4
  %15 = zext nneg i32 %14 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %5, i8 -1, i64 %15, i1 false)
  %16 = add nuw nsw i32 %12, 1
  %umax = call i32 @llvm.umax.i32(i32 %16, i32 2)
  br label %17

17:                                               ; preds = %46, %11
  %18 = phi i32 [ %47, %46 ], [ 0, %11 ]
  %19 = phi i32 [ %48, %46 ], [ 2, %11 ]
  %exitcond = icmp eq i32 %19, %umax
  br i1 %exitcond, label %49, label %20

20:                                               ; preds = %17
  %21 = lshr i32 %19, 5
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %19, 31
  %26 = shl nuw i32 1, %25
  %27 = and i32 %24, %26
  %.not2 = icmp eq i32 %27, 0
  br i1 %.not2, label %46, label %28

28:                                               ; preds = %20
  %29 = add i32 %18, 1
  store i32 %29, ptr %4, align 4
  %30 = shl i32 %19, 1
  br label %31

31:                                               ; preds = %43, %28
  %32 = phi i32 [ %44, %43 ], [ %30, %28 ]
  %.not3 = icmp ugt i32 %32, %12
  br i1 %.not3, label %45, label %33

33:                                               ; preds = %31
  %34 = lshr i32 %32, 5
  %35 = zext nneg i32 %34 to i64
  %36 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %35
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %32, 31
  %39 = shl nuw i32 1, %38
  %40 = and i32 %37, %39
  %.not4 = icmp eq i32 %40, 0
  br i1 %.not4, label %43, label %41

41:                                               ; preds = %33
  %42 = xor i32 %37, %39
  store i32 %42, ptr %36, align 4
  br label %43

43:                                               ; preds = %41, %33
  %44 = add i32 %32, %19
  br label %31, !llvm.loop !7

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %45, %20
  %47 = phi i32 [ %29, %45 ], [ %18, %20 ]
  %48 = add nuw nsw i32 %19, 1
  br label %17, !llvm.loop !9

49:                                               ; preds = %17
  %50 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %12, i32 noundef %18) #6
  %51 = add i32 %9, 1
  br label %8, !llvm.loop !10

52:                                               ; preds = %8
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
