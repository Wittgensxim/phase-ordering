; ModuleID = 'results\paper_full\BenchmarkGame_nsieve-bits\BenchmarkGame_nsieve-bits.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/nsieve-bits.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Primes up to %8d %8d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store i32 40960000, ptr %7, align 4
  %13 = call ptr @malloc(i64 noundef 5120004) #4
  store ptr %13, ptr %8, align 8
  %14 = icmp ne ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 1, ptr %3, align 4
  br label %68

16:                                               ; preds = %2
  store i32 0, ptr %6, align 4
  br label %17

17:                                               ; preds = %64, %16
  %.lcssa7.lcssa16 = phi i32 [ %.lcssa7, %64 ], [ undef, %16 ]
  %.lcssa214 = phi i32 [ %28, %64 ], [ undef, %16 ]
  %18 = phi i32 [ %22, %64 ], [ undef, %16 ]
  %.lcssa410 = phi i32 [ %27, %64 ], [ undef, %16 ]
  %19 = phi i32 [ %66, %64 ], [ 0, %16 ]
  %20 = icmp ule i32 %19, 2
  br i1 %20, label %21, label %67

21:                                               ; preds = %17
  %22 = lshr i32 40960000, %19
  %23 = udiv i32 %22, 8
  %24 = zext i32 %23 to i64
  %25 = add i64 %24, 4
  call void @llvm.memset.p0.i64(ptr align 4 %13, i8 -1, i64 %25, i1 false)
  br label %26

26:                                               ; preds = %61, %21
  %.lcssa7 = phi i32 [ %.lcssa6, %61 ], [ %.lcssa7.lcssa16, %21 ]
  %27 = phi i32 [ %62, %61 ], [ 0, %21 ]
  %28 = phi i32 [ %63, %61 ], [ 2, %21 ]
  %29 = icmp ule i32 %28, %22
  br i1 %29, label %30, label %64

30:                                               ; preds = %26
  %31 = zext i32 %28 to i64
  %32 = udiv i64 %31, 32
  %33 = getelementptr inbounds nuw i32, ptr %13, i64 %32
  %34 = load i32, ptr %33, align 4
  %35 = urem i64 %31, 32
  %36 = trunc i64 %35 to i32
  %37 = shl i32 1, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %30
  %41 = add i32 %27, 1
  %42 = add i32 %28, %28
  br label %43

43:                                               ; preds = %58, %40
  %44 = phi i32 [ %59, %58 ], [ %42, %40 ]
  %45 = icmp ule i32 %44, %22
  br i1 %45, label %46, label %60

46:                                               ; preds = %43
  %47 = zext i32 %44 to i64
  %48 = udiv i64 %47, 32
  %49 = getelementptr inbounds nuw i32, ptr %13, i64 %48
  %50 = load i32, ptr %49, align 4
  %51 = urem i64 %47, 32
  %52 = trunc i64 %51 to i32
  %53 = shl i32 1, %52
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = xor i32 %50, %53
  store i32 %57, ptr %49, align 4
  br label %58

58:                                               ; preds = %56, %46
  %59 = add i32 %44, %28
  br label %43, !llvm.loop !7

60:                                               ; preds = %43
  br label %61

61:                                               ; preds = %60, %30
  %.lcssa6 = phi i32 [ %44, %60 ], [ %.lcssa7, %30 ]
  %62 = phi i32 [ %41, %60 ], [ %27, %30 ]
  %63 = add i32 %28, 1
  br label %26, !llvm.loop !9

64:                                               ; preds = %26
  %65 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %22, i32 noundef %27)
  %66 = add i32 %19, 1
  br label %17, !llvm.loop !10

67:                                               ; preds = %17
  store i32 %19, ptr %6, align 4
  store i32 %.lcssa410, ptr %11, align 4
  store i32 %18, ptr %12, align 4
  store i32 %.lcssa214, ptr %9, align 4
  store i32 %.lcssa7.lcssa16, ptr %10, align 4
  call void @free(ptr noundef %13)
  store i32 0, ptr %3, align 4
  br label %68

68:                                               ; preds = %67, %15
  %69 = phi i32 [ 0, %67 ], [ 1, %15 ]
  ret i32 %69
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
