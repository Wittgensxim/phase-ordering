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
  br label %83

16:                                               ; preds = %2
  store i32 0, ptr %6, align 4
  br label %17

17:                                               ; preds = %77, %16
  %18 = phi ptr [ %29, %77 ], [ %13, %16 ]
  %19 = phi ptr [ %30, %77 ], [ %13, %16 ]
  %20 = phi ptr [ %33, %77 ], [ %13, %16 ]
  %21 = phi i32 [ %81, %77 ], [ 0, %16 ]
  %22 = icmp ule i32 %21, 2
  br i1 %22, label %23, label %82

23:                                               ; preds = %17
  store i32 0, ptr %11, align 4
  %24 = lshr i32 40960000, %21
  store i32 %24, ptr %12, align 4
  %25 = udiv i32 %24, 8
  %26 = zext i32 %25 to i64
  %27 = add i64 %26, 4
  call void @llvm.memset.p0.i64(ptr align 4 %20, i8 -1, i64 %27, i1 false)
  store i32 2, ptr %9, align 4
  %.pre = load i32, ptr %12, align 4
  br label %28

28:                                               ; preds = %72, %23
  %29 = phi ptr [ %73, %72 ], [ %18, %23 ]
  %30 = phi ptr [ %74, %72 ], [ %19, %23 ]
  %31 = phi i32 [ %75, %72 ], [ %.pre, %23 ]
  %32 = phi i32 [ %76, %72 ], [ 2, %23 ]
  %33 = phi ptr [ %74, %72 ], [ %20, %23 ]
  %34 = icmp ule i32 %32, %31
  br i1 %34, label %35, label %77

35:                                               ; preds = %28
  %36 = zext i32 %32 to i64
  %37 = udiv i64 %36, 32
  %38 = getelementptr inbounds nuw i32, ptr %30, i64 %37
  %39 = load i32, ptr %38, align 4
  %40 = urem i64 %36, 32
  %41 = trunc i64 %40 to i32
  %42 = shl i32 1, %41
  %43 = and i32 %42, %39
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %72

45:                                               ; preds = %35
  %46 = load i32, ptr %11, align 4
  %47 = add i32 %46, 1
  store i32 %47, ptr %11, align 4
  %48 = add i32 %32, %32
  store i32 %48, ptr %10, align 4
  br label %49

49:                                               ; preds = %68, %45
  %50 = phi ptr [ %69, %68 ], [ %29, %45 ]
  %51 = phi i32 [ %70, %68 ], [ %48, %45 ]
  %52 = phi ptr [ %69, %68 ], [ %30, %45 ]
  %53 = icmp ule i32 %51, %.pre
  br i1 %53, label %54, label %71

54:                                               ; preds = %49
  %55 = zext i32 %51 to i64
  %56 = udiv i64 %55, 32
  %57 = getelementptr inbounds nuw i32, ptr %50, i64 %56
  %58 = load i32, ptr %57, align 4
  %59 = urem i64 %55, 32
  %60 = trunc i64 %59 to i32
  %61 = shl i32 1, %60
  %62 = and i32 %61, %58
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %54
  %65 = getelementptr inbounds nuw i32, ptr %13, i64 %56
  %66 = load i32, ptr %65, align 4
  %67 = xor i32 %61, %66
  store i32 %67, ptr %65, align 4
  br label %68

68:                                               ; preds = %64, %54
  %69 = phi ptr [ %13, %64 ], [ %50, %54 ]
  %70 = add i32 %51, %32
  store i32 %70, ptr %10, align 4
  br label %49, !llvm.loop !7

71:                                               ; preds = %49
  br label %72

72:                                               ; preds = %71, %35
  %73 = phi ptr [ %50, %71 ], [ %29, %35 ]
  %74 = phi ptr [ %52, %71 ], [ %30, %35 ]
  %75 = phi i32 [ %.pre, %71 ], [ %31, %35 ]
  %76 = add i32 %32, 1
  store i32 %76, ptr %9, align 4
  br label %28, !llvm.loop !9

77:                                               ; preds = %28
  %78 = load i32, ptr %11, align 4
  %79 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %31, i32 noundef %78)
  %80 = load i32, ptr %6, align 4
  %81 = add i32 %80, 1
  store i32 %81, ptr %6, align 4
  br label %17, !llvm.loop !10

82:                                               ; preds = %17
  call void @free(ptr noundef %20)
  store i32 0, ptr %3, align 4
  br label %83

83:                                               ; preds = %82, %15
  %84 = phi i32 [ 0, %82 ], [ 1, %15 ]
  ret i32 %84
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
