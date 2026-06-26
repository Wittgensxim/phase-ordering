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
  br label %70

6:                                                ; preds = %2
  br label %7

7:                                                ; preds = %66, %6
  %.01 = phi i32 [ 0, %6 ], [ %68, %66 ]
  %8 = phi ptr [ %19, %66 ], [ %3, %6 ]
  %9 = phi ptr [ %20, %66 ], [ %3, %6 ]
  %10 = phi ptr [ %23, %66 ], [ %3, %6 ]
  %11 = phi i32 [ %68, %66 ], [ 0, %6 ]
  %12 = icmp ule i32 %11, 2
  br i1 %12, label %13, label %69

13:                                               ; preds = %7
  %14 = lshr i32 40960000, %11
  %15 = udiv i32 %14, 8
  %16 = zext i32 %15 to i64
  %17 = add i64 %16, 4
  call void @llvm.memset.p0.i64(ptr align 4 %10, i8 -1, i64 %17, i1 false)
  br label %18

18:                                               ; preds = %61, %13
  %.0 = phi i32 [ 0, %13 ], [ %.1, %61 ]
  %19 = phi ptr [ %62, %61 ], [ %8, %13 ]
  %20 = phi ptr [ %63, %61 ], [ %9, %13 ]
  %21 = phi i32 [ %64, %61 ], [ %14, %13 ]
  %22 = phi i32 [ %65, %61 ], [ 2, %13 ]
  %23 = phi ptr [ %63, %61 ], [ %10, %13 ]
  %24 = icmp ule i32 %22, %21
  br i1 %24, label %25, label %66

25:                                               ; preds = %18
  %26 = zext i32 %22 to i64
  %27 = udiv i64 %26, 32
  %28 = getelementptr inbounds nuw i32, ptr %20, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = urem i64 %26, 32
  %31 = trunc i64 %30 to i32
  %32 = shl i32 1, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %61

35:                                               ; preds = %25
  %36 = add i32 %.0, 1
  %37 = add i32 %22, %22
  br label %38

38:                                               ; preds = %57, %35
  %39 = phi ptr [ %58, %57 ], [ %19, %35 ]
  %40 = phi i32 [ %59, %57 ], [ %37, %35 ]
  %41 = phi ptr [ %58, %57 ], [ %20, %35 ]
  %42 = icmp ule i32 %40, %14
  br i1 %42, label %43, label %60

43:                                               ; preds = %38
  %44 = zext i32 %40 to i64
  %45 = udiv i64 %44, 32
  %46 = getelementptr inbounds nuw i32, ptr %39, i64 %45
  %47 = load i32, ptr %46, align 4
  %48 = urem i64 %44, 32
  %49 = trunc i64 %48 to i32
  %50 = shl i32 1, %49
  %51 = and i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %43
  %54 = getelementptr inbounds nuw i32, ptr %3, i64 %45
  %55 = load i32, ptr %54, align 4
  %56 = xor i32 %55, %50
  store i32 %56, ptr %54, align 4
  br label %57

57:                                               ; preds = %53, %43
  %58 = phi ptr [ %3, %53 ], [ %39, %43 ]
  %59 = add i32 %40, %22
  br label %38, !llvm.loop !7

60:                                               ; preds = %38
  br label %61

61:                                               ; preds = %60, %25
  %.1 = phi i32 [ %36, %60 ], [ %.0, %25 ]
  %62 = phi ptr [ %39, %60 ], [ %19, %25 ]
  %63 = phi ptr [ %41, %60 ], [ %20, %25 ]
  %64 = phi i32 [ %14, %60 ], [ %21, %25 ]
  %65 = add i32 %22, 1
  br label %18, !llvm.loop !9

66:                                               ; preds = %18
  %67 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %21, i32 noundef %.0)
  %68 = add i32 %.01, 1
  br label %7, !llvm.loop !10

69:                                               ; preds = %7
  call void @free(ptr noundef %10)
  br label %70

70:                                               ; preds = %69, %5
  %71 = phi i32 [ 0, %69 ], [ 1, %5 ]
  ret i32 %71
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
