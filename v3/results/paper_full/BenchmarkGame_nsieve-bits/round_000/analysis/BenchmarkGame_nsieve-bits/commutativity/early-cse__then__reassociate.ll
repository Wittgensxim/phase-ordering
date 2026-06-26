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
  br label %82

16:                                               ; preds = %2
  store i32 0, ptr %6, align 4
  br label %17

17:                                               ; preds = %77, %16
  %18 = load i32, ptr %6, align 4
  %19 = icmp ule i32 %18, 2
  br i1 %19, label %20, label %80

20:                                               ; preds = %17
  store i32 0, ptr %11, align 4
  %21 = load i32, ptr %7, align 4
  %22 = load i32, ptr %6, align 4
  %23 = lshr i32 %21, %22
  store i32 %23, ptr %12, align 4
  %24 = load ptr, ptr %8, align 8
  %25 = udiv i32 %23, 8
  %26 = zext i32 %25 to i64
  %27 = add i64 %26, 4
  call void @llvm.memset.p0.i64(ptr align 4 %24, i8 -1, i64 %27, i1 false)
  store i32 2, ptr %9, align 4
  br label %28

28:                                               ; preds = %71, %20
  %29 = load i32, ptr %9, align 4
  %30 = load i32, ptr %12, align 4
  %31 = icmp ule i32 %29, %30
  br i1 %31, label %32, label %74

32:                                               ; preds = %28
  %33 = load ptr, ptr %8, align 8
  %34 = zext i32 %29 to i64
  %35 = udiv i64 %34, 32
  %36 = getelementptr inbounds nuw i32, ptr %33, i64 %35
  %37 = load i32, ptr %36, align 4
  %38 = urem i64 %34, 32
  %39 = trunc i64 %38 to i32
  %40 = shl i32 1, %39
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %70

43:                                               ; preds = %32
  %44 = load i32, ptr %11, align 4
  %45 = add i32 %44, 1
  store i32 %45, ptr %11, align 4
  %46 = load i32, ptr %9, align 4
  %factor = mul i32 %46, 2
  store i32 %factor, ptr %10, align 4
  br label %47

47:                                               ; preds = %65, %43
  %48 = load i32, ptr %10, align 4
  %49 = load i32, ptr %12, align 4
  %50 = icmp ule i32 %48, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %47
  %52 = load ptr, ptr %8, align 8
  %53 = zext i32 %48 to i64
  %54 = udiv i64 %53, 32
  %55 = getelementptr inbounds nuw i32, ptr %52, i64 %54
  %56 = load i32, ptr %55, align 4
  %57 = urem i64 %53, 32
  %58 = trunc i64 %57 to i32
  %59 = shl i32 1, %58
  %60 = and i32 %56, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %51
  %63 = xor i32 %56, %59
  store i32 %63, ptr %55, align 4
  br label %64

64:                                               ; preds = %62, %51
  br label %65

65:                                               ; preds = %64
  %66 = load i32, ptr %9, align 4
  %67 = load i32, ptr %10, align 4
  %68 = add i32 %67, %66
  store i32 %68, ptr %10, align 4
  br label %47, !llvm.loop !7

69:                                               ; preds = %47
  br label %70

70:                                               ; preds = %69, %32
  br label %71

71:                                               ; preds = %70
  %72 = load i32, ptr %9, align 4
  %73 = add i32 %72, 1
  store i32 %73, ptr %9, align 4
  br label %28, !llvm.loop !9

74:                                               ; preds = %28
  %75 = load i32, ptr %11, align 4
  %76 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %30, i32 noundef %75)
  br label %77

77:                                               ; preds = %74
  %78 = load i32, ptr %6, align 4
  %79 = add i32 %78, 1
  store i32 %79, ptr %6, align 4
  br label %17, !llvm.loop !10

80:                                               ; preds = %17
  %81 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %81)
  store i32 0, ptr %3, align 4
  br label %82

82:                                               ; preds = %80, %15
  %83 = load i32, ptr %3, align 4
  ret i32 %83
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
