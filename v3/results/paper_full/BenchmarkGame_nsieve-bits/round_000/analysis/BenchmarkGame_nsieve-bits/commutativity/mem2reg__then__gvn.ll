; ModuleID = 'results\paper_full\BenchmarkGame_nsieve-bits\BenchmarkGame_nsieve-bits.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/nsieve-bits.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Primes up to %8d %8d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = call ptr @malloc(i64 noundef 5120004) #4
  %4 = icmp ne ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  br label %52

6:                                                ; preds = %2
  br label %7

7:                                                ; preds = %48, %6
  %.03 = phi i32 [ 0, %6 ], [ %50, %48 ]
  %8 = icmp ule i32 %.03, 2
  br i1 %8, label %9, label %51

9:                                                ; preds = %7
  %10 = lshr i32 40960000, %.03
  %11 = udiv i32 %10, 8
  %12 = zext i32 %11 to i64
  %13 = add i64 %12, 4
  call void @llvm.memset.p0.i64(ptr align 4 %3, i8 -1, i64 %13, i1 false)
  br label %14

14:                                               ; preds = %46, %9
  %.04 = phi i32 [ 2, %9 ], [ %47, %46 ]
  %.01 = phi i32 [ 0, %9 ], [ %.1, %46 ]
  %15 = icmp ule i32 %.04, %10
  br i1 %15, label %16, label %48

16:                                               ; preds = %14
  %17 = zext i32 %.04 to i64
  %18 = udiv i64 %17, 32
  %19 = getelementptr inbounds nuw i32, ptr %3, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = urem i64 %17, 32
  %22 = trunc i64 %21 to i32
  %23 = shl i32 1, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %16
  %27 = add i32 %.01, 1
  %28 = add i32 %.04, %.04
  br label %29

29:                                               ; preds = %43, %26
  %.02 = phi i32 [ %28, %26 ], [ %44, %43 ]
  %30 = icmp ule i32 %.02, %10
  br i1 %30, label %31, label %45

31:                                               ; preds = %29
  %32 = zext i32 %.02 to i64
  %33 = udiv i64 %32, 32
  %34 = getelementptr inbounds nuw i32, ptr %3, i64 %33
  %35 = load i32, ptr %34, align 4
  %36 = urem i64 %32, 32
  %37 = trunc i64 %36 to i32
  %38 = shl i32 1, %37
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = xor i32 %35, %38
  store i32 %42, ptr %34, align 4
  br label %43

43:                                               ; preds = %41, %31
  %44 = add i32 %.02, %.04
  br label %29, !llvm.loop !7

45:                                               ; preds = %29
  br label %46

46:                                               ; preds = %45, %16
  %.1 = phi i32 [ %27, %45 ], [ %.01, %16 ]
  %47 = add i32 %.04, 1
  br label %14, !llvm.loop !9

48:                                               ; preds = %14
  %49 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %10, i32 noundef %.01)
  %50 = add i32 %.03, 1
  br label %7, !llvm.loop !10

51:                                               ; preds = %7
  call void @free(ptr noundef %3)
  br label %52

52:                                               ; preds = %51, %5
  %.0 = phi i32 [ 0, %51 ], [ 1, %5 ]
  ret i32 %.0
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
attributes #4 = { allocsize(0) }

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
