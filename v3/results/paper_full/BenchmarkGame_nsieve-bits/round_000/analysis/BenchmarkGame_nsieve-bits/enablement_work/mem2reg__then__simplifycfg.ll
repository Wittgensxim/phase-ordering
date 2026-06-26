; ModuleID = 'results\paper_full\BenchmarkGame_nsieve-bits\BenchmarkGame_nsieve-bits.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/nsieve-bits.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Primes up to %8d %8d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = udiv i32 40960000, 8
  %4 = zext i32 %3 to i64
  %5 = add i64 %4, 4
  %6 = call ptr @malloc(i64 noundef %5) #4
  %7 = icmp ne ptr %6, null
  br i1 %7, label %8, label %62

8:                                                ; preds = %2, %58
  %.03 = phi i32 [ %60, %58 ], [ 0, %2 ]
  %9 = icmp ule i32 %.03, 2
  br i1 %9, label %10, label %61

10:                                               ; preds = %8
  %11 = lshr i32 40960000, %.03
  %12 = udiv i32 %11, 8
  %13 = zext i32 %12 to i64
  %14 = add i64 %13, 4
  call void @llvm.memset.p0.i64(ptr align 4 %6, i8 -1, i64 %14, i1 false)
  br label %15

15:                                               ; preds = %56, %10
  %.04 = phi i32 [ 2, %10 ], [ %57, %56 ]
  %.01 = phi i32 [ 0, %10 ], [ %.1, %56 ]
  %16 = icmp ule i32 %.04, %11
  br i1 %16, label %17, label %58

17:                                               ; preds = %15
  %18 = zext i32 %.04 to i64
  %19 = udiv i64 %18, 32
  %20 = getelementptr inbounds nuw i32, ptr %6, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = zext i32 %.04 to i64
  %23 = urem i64 %22, 32
  %24 = trunc i64 %23 to i32
  %25 = shl i32 1, %24
  %26 = and i32 %21, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %56

28:                                               ; preds = %17
  %29 = add i32 %.01, 1
  %30 = add i32 %.04, %.04
  br label %31

31:                                               ; preds = %54, %28
  %.02 = phi i32 [ %30, %28 ], [ %55, %54 ]
  %32 = icmp ule i32 %.02, %11
  br i1 %32, label %33, label %56

33:                                               ; preds = %31
  %34 = zext i32 %.02 to i64
  %35 = udiv i64 %34, 32
  %36 = getelementptr inbounds nuw i32, ptr %6, i64 %35
  %37 = load i32, ptr %36, align 4
  %38 = zext i32 %.02 to i64
  %39 = urem i64 %38, 32
  %40 = trunc i64 %39 to i32
  %41 = shl i32 1, %40
  %42 = and i32 %37, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %33
  %45 = zext i32 %.02 to i64
  %46 = urem i64 %45, 32
  %47 = trunc i64 %46 to i32
  %48 = shl i32 1, %47
  %49 = zext i32 %.02 to i64
  %50 = udiv i64 %49, 32
  %51 = getelementptr inbounds nuw i32, ptr %6, i64 %50
  %52 = load i32, ptr %51, align 4
  %53 = xor i32 %52, %48
  store i32 %53, ptr %51, align 4
  br label %54

54:                                               ; preds = %33, %44
  %55 = add i32 %.02, %.04
  br label %31, !llvm.loop !7

56:                                               ; preds = %17, %31
  %.1 = phi i32 [ %.01, %17 ], [ %29, %31 ]
  %57 = add i32 %.04, 1
  br label %15, !llvm.loop !9

58:                                               ; preds = %15
  %59 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %11, i32 noundef %.01)
  %60 = add i32 %.03, 1
  br label %8, !llvm.loop !10

61:                                               ; preds = %8
  call void @free(ptr noundef %6)
  br label %62

62:                                               ; preds = %2, %61
  %.0 = phi i32 [ 0, %61 ], [ 1, %2 ]
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
