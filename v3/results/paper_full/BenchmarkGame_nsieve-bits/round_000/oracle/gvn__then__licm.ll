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
  br label %84

16:                                               ; preds = %2
  store i32 0, ptr %6, align 4
  br label %17

17:                                               ; preds = %78, %16
  %18 = phi ptr [ %.lcssa5, %78 ], [ %13, %16 ]
  %19 = phi ptr [ %.lcssa4, %78 ], [ %13, %16 ]
  %20 = phi ptr [ %.lcssa2, %78 ], [ %13, %16 ]
  %21 = phi i32 [ %82, %78 ], [ 0, %16 ]
  %22 = icmp ule i32 %21, 2
  br i1 %22, label %23, label %83

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
  %.promoted = load i32, ptr %11, align 4
  br label %28

28:                                               ; preds = %72, %23
  %29 = phi i32 [ %73, %72 ], [ %.promoted, %23 ]
  %30 = phi ptr [ %74, %72 ], [ %18, %23 ]
  %31 = phi ptr [ %75, %72 ], [ %19, %23 ]
  %32 = phi i32 [ %76, %72 ], [ %.pre, %23 ]
  %33 = phi i32 [ %77, %72 ], [ 2, %23 ]
  %34 = phi ptr [ %75, %72 ], [ %20, %23 ]
  %35 = icmp ule i32 %33, %32
  br i1 %35, label %36, label %78

36:                                               ; preds = %28
  %37 = zext i32 %33 to i64
  %38 = udiv i64 %37, 32
  %39 = getelementptr inbounds nuw i32, ptr %31, i64 %38
  %40 = load i32, ptr %39, align 4
  %41 = urem i64 %37, 32
  %42 = trunc i64 %41 to i32
  %43 = shl i32 1, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %36
  %47 = add i32 %29, 1
  store i32 %47, ptr %11, align 4
  %48 = add i32 %33, %33
  store i32 %48, ptr %10, align 4
  br label %49

49:                                               ; preds = %68, %46
  %50 = phi ptr [ %69, %68 ], [ %30, %46 ]
  %51 = phi i32 [ %70, %68 ], [ %48, %46 ]
  %52 = phi ptr [ %69, %68 ], [ %31, %46 ]
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
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %54
  %65 = getelementptr inbounds nuw i32, ptr %13, i64 %56
  %66 = load i32, ptr %65, align 4
  %67 = xor i32 %66, %61
  store i32 %67, ptr %65, align 4
  br label %68

68:                                               ; preds = %64, %54
  %69 = phi ptr [ %13, %64 ], [ %50, %54 ]
  %70 = add i32 %51, %33
  store i32 %70, ptr %10, align 4
  br label %49, !llvm.loop !7

71:                                               ; preds = %49
  %.lcssa1 = phi ptr [ %50, %49 ]
  %.lcssa = phi ptr [ %52, %49 ]
  br label %72

72:                                               ; preds = %71, %36
  %73 = phi i32 [ %47, %71 ], [ %29, %36 ]
  %74 = phi ptr [ %.lcssa1, %71 ], [ %30, %36 ]
  %75 = phi ptr [ %.lcssa, %71 ], [ %31, %36 ]
  %76 = phi i32 [ %.pre, %71 ], [ %32, %36 ]
  %77 = add i32 %33, 1
  store i32 %77, ptr %9, align 4
  br label %28, !llvm.loop !9

78:                                               ; preds = %28
  %.lcssa5 = phi ptr [ %30, %28 ]
  %.lcssa4 = phi ptr [ %31, %28 ]
  %.lcssa3 = phi i32 [ %32, %28 ]
  %.lcssa2 = phi ptr [ %34, %28 ]
  %79 = load i32, ptr %11, align 4
  %80 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %.lcssa3, i32 noundef %79)
  %81 = load i32, ptr %6, align 4
  %82 = add i32 %81, 1
  store i32 %82, ptr %6, align 4
  br label %17, !llvm.loop !10

83:                                               ; preds = %17
  %.lcssa6 = phi ptr [ %20, %17 ]
  call void @free(ptr noundef %.lcssa6)
  store i32 0, ptr %3, align 4
  br label %84

84:                                               ; preds = %83, %15
  %85 = phi i32 [ 0, %83 ], [ 1, %15 ]
  ret i32 %85
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
