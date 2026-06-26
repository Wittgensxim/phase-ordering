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
  %13 = load i32, ptr %7, align 4
  %14 = udiv i32 %13, 8
  %15 = zext i32 %14 to i64
  %16 = add i64 %15, 4
  %17 = call ptr @malloc(i64 noundef %16) #4
  store ptr %17, ptr %8, align 8
  %18 = load ptr, ptr %8, align 8
  %19 = icmp ne ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 1, ptr %3, align 4
  br label %104

21:                                               ; preds = %2
  store i32 0, ptr %6, align 4
  br label %22

22:                                               ; preds = %96, %21
  %23 = load i32, ptr %6, align 4
  %24 = icmp ule i32 %23, 2
  br i1 %24, label %25, label %102

25:                                               ; preds = %22
  store i32 0, ptr %11, align 4
  %26 = load i32, ptr %7, align 4
  %27 = load i32, ptr %6, align 4
  %28 = lshr i32 %26, %27
  store i32 %28, ptr %12, align 4
  %29 = load ptr, ptr %8, align 8
  %30 = load i32, ptr %12, align 4
  %31 = udiv i32 %30, 8
  %32 = zext i32 %31 to i64
  %33 = add i64 %32, 4
  call void @llvm.memset.p0.i64(ptr align 4 %29, i8 -1, i64 %33, i1 false)
  store i32 2, ptr %9, align 4
  br label %34

34:                                               ; preds = %93, %25
  %35 = load i32, ptr %9, align 4
  %36 = load i32, ptr %12, align 4
  %37 = icmp ule i32 %35, %36
  br i1 %37, label %38, label %96

38:                                               ; preds = %34
  %39 = load ptr, ptr %8, align 8
  %40 = load i32, ptr %9, align 4
  %41 = zext i32 %40 to i64
  %42 = udiv i64 %41, 32
  %43 = getelementptr inbounds nuw i32, ptr %39, i64 %42
  %44 = load i32, ptr %43, align 4
  %45 = load i32, ptr %9, align 4
  %46 = zext i32 %45 to i64
  %47 = urem i64 %46, 32
  %48 = trunc i64 %47 to i32
  %49 = shl i32 1, %48
  %50 = and i32 %44, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %93

52:                                               ; preds = %38
  %53 = load i32, ptr %11, align 4
  %54 = add i32 %53, 1
  store i32 %54, ptr %11, align 4
  %55 = load i32, ptr %9, align 4
  %56 = load i32, ptr %9, align 4
  %57 = add i32 %55, %56
  store i32 %57, ptr %10, align 4
  br label %58

58:                                               ; preds = %89, %52
  %59 = load i32, ptr %10, align 4
  %60 = load i32, ptr %12, align 4
  %61 = icmp ule i32 %59, %60
  br i1 %61, label %62, label %.loopexit

62:                                               ; preds = %58
  %63 = load ptr, ptr %8, align 8
  %64 = load i32, ptr %10, align 4
  %65 = zext i32 %64 to i64
  %66 = udiv i64 %65, 32
  %67 = getelementptr inbounds nuw i32, ptr %63, i64 %66
  %68 = load i32, ptr %67, align 4
  %69 = load i32, ptr %10, align 4
  %70 = zext i32 %69 to i64
  %71 = urem i64 %70, 32
  %72 = trunc i64 %71 to i32
  %73 = shl i32 1, %72
  %74 = and i32 %68, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %62
  %77 = load i32, ptr %10, align 4
  %78 = zext i32 %77 to i64
  %79 = urem i64 %78, 32
  %80 = trunc i64 %79 to i32
  %81 = shl i32 1, %80
  %82 = load ptr, ptr %8, align 8
  %83 = load i32, ptr %10, align 4
  %84 = zext i32 %83 to i64
  %85 = udiv i64 %84, 32
  %86 = getelementptr inbounds nuw i32, ptr %82, i64 %85
  %87 = load i32, ptr %86, align 4
  %88 = xor i32 %87, %81
  store i32 %88, ptr %86, align 4
  br label %89

89:                                               ; preds = %62, %76
  %90 = load i32, ptr %9, align 4
  %91 = load i32, ptr %10, align 4
  %92 = add i32 %91, %90
  store i32 %92, ptr %10, align 4
  br label %58, !llvm.loop !7

.loopexit:                                        ; preds = %58
  br label %93

93:                                               ; preds = %.loopexit, %38
  %94 = load i32, ptr %9, align 4
  %95 = add i32 %94, 1
  store i32 %95, ptr %9, align 4
  br label %34, !llvm.loop !9

96:                                               ; preds = %34
  %97 = load i32, ptr %12, align 4
  %98 = load i32, ptr %11, align 4
  %99 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %97, i32 noundef %98)
  %100 = load i32, ptr %6, align 4
  %101 = add i32 %100, 1
  store i32 %101, ptr %6, align 4
  br label %22, !llvm.loop !10

102:                                              ; preds = %22
  %103 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %103)
  store i32 0, ptr %3, align 4
  br label %104

104:                                              ; preds = %102, %20
  %105 = load i32, ptr %3, align 4
  ret i32 %105
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
