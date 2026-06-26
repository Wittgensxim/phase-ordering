; ModuleID = 'results\paper_full\BenchmarkGame_nsieve-bits\BenchmarkGame_nsieve-bits.ll'
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
  br label %53

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %50, %5
  %storemerge1 = phi i32 [ 0, %5 ], [ %51, %50 ]
  %7 = icmp ult i32 %storemerge1, 3
  br i1 %7, label %8, label %52

8:                                                ; preds = %6
  %9 = lshr i32 40960000, %storemerge1
  %10 = lshr i32 %9, 3
  %narrow = add nuw nsw i32 %10, 4
  %11 = zext nneg i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %3, i8 -1, i64 %11, i1 false)
  br label %12

12:                                               ; preds = %46, %8
  %.0 = phi i32 [ 0, %8 ], [ %.1, %46 ]
  %storemerge2 = phi i32 [ 2, %8 ], [ %47, %46 ]
  %.not3 = icmp ugt i32 %storemerge2, %9
  br i1 %.not3, label %48, label %13

13:                                               ; preds = %12
  %14 = lshr i32 %storemerge2, 5
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %storemerge2, 31
  %19 = shl nuw i32 1, %18
  %20 = and i32 %17, %19
  %.not4 = icmp eq i32 %20, 0
  br i1 %.not4, label %45, label %21

21:                                               ; preds = %13
  %22 = add i32 %.0, 1
  %23 = shl i32 %storemerge2, 1
  br label %24

24:                                               ; preds = %42, %21
  %storemerge5 = phi i32 [ %23, %21 ], [ %43, %42 ]
  %.not6 = icmp ugt i32 %storemerge5, %9
  br i1 %.not6, label %44, label %25

25:                                               ; preds = %24
  %26 = lshr i32 %storemerge5, 5
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %storemerge5, 31
  %31 = shl nuw i32 1, %30
  %32 = and i32 %29, %31
  %.not7 = icmp eq i32 %32, 0
  br i1 %.not7, label %41, label %33

33:                                               ; preds = %25
  %34 = and i32 %storemerge5, 31
  %35 = shl nuw i32 1, %34
  %36 = lshr i32 %storemerge5, 5
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %37
  %39 = load i32, ptr %38, align 4
  %40 = xor i32 %39, %35
  store i32 %40, ptr %38, align 4
  br label %41

41:                                               ; preds = %33, %25
  br label %42

42:                                               ; preds = %41
  %43 = add i32 %storemerge5, %storemerge2
  br label %24, !llvm.loop !7

44:                                               ; preds = %24
  br label %45

45:                                               ; preds = %44, %13
  %.1 = phi i32 [ %.0, %13 ], [ %22, %44 ]
  br label %46

46:                                               ; preds = %45
  %47 = add i32 %storemerge2, 1
  br label %12, !llvm.loop !9

48:                                               ; preds = %12
  %49 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %9, i32 noundef %.0) #5
  br label %50

50:                                               ; preds = %48
  %51 = add i32 %storemerge1, 1
  br label %6, !llvm.loop !10

52:                                               ; preds = %6
  call void @free(ptr noundef %3) #5
  br label %53

53:                                               ; preds = %52, %4
  %storemerge = phi i32 [ 1, %4 ], [ 0, %52 ]
  ret i32 %storemerge
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
