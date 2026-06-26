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

17:                                               ; preds = %76, %16
  %18 = phi ptr [ %29, %76 ], [ %13, %16 ]
  %19 = phi ptr [ %30, %76 ], [ %13, %16 ]
  %20 = phi ptr [ %33, %76 ], [ %13, %16 ]
  %21 = phi i32 [ %80, %76 ], [ 0, %16 ]
  %22 = icmp ule i32 %21, 2
  br i1 %22, label %23, label %81

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

28:                                               ; preds = %71, %23
  %29 = phi ptr [ %72, %71 ], [ %18, %23 ]
  %30 = phi ptr [ %73, %71 ], [ %19, %23 ]
  %31 = phi i32 [ %74, %71 ], [ %.pre, %23 ]
  %32 = phi i32 [ %75, %71 ], [ 2, %23 ]
  %33 = phi ptr [ %73, %71 ], [ %20, %23 ]
  %34 = icmp ule i32 %32, %31
  br i1 %34, label %35, label %76

35:                                               ; preds = %28
  %36 = zext i32 %32 to i64
  %37 = udiv i64 %36, 32
  %38 = getelementptr inbounds nuw i32, ptr %30, i64 %37
  %39 = load i32, ptr %38, align 4
  %40 = urem i64 %36, 32
  %41 = trunc i64 %40 to i32
  %42 = shl i32 1, %41
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %71

45:                                               ; preds = %35
  %46 = load i32, ptr %11, align 4
  %47 = add i32 %46, 1
  store i32 %47, ptr %11, align 4
  %factor = mul i32 %32, 2
  store i32 %factor, ptr %10, align 4
  br label %48

48:                                               ; preds = %67, %45
  %49 = phi ptr [ %68, %67 ], [ %29, %45 ]
  %50 = phi i32 [ %69, %67 ], [ %factor, %45 ]
  %51 = phi ptr [ %68, %67 ], [ %30, %45 ]
  %52 = icmp ule i32 %50, %.pre
  br i1 %52, label %53, label %70

53:                                               ; preds = %48
  %54 = zext i32 %50 to i64
  %55 = udiv i64 %54, 32
  %56 = getelementptr inbounds nuw i32, ptr %49, i64 %55
  %57 = load i32, ptr %56, align 4
  %58 = urem i64 %54, 32
  %59 = trunc i64 %58 to i32
  %60 = shl i32 1, %59
  %61 = and i32 %57, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %53
  %64 = getelementptr inbounds nuw i32, ptr %13, i64 %55
  %65 = load i32, ptr %64, align 4
  %66 = xor i32 %65, %60
  store i32 %66, ptr %64, align 4
  br label %67

67:                                               ; preds = %63, %53
  %68 = phi ptr [ %13, %63 ], [ %49, %53 ]
  %69 = add i32 %50, %32
  store i32 %69, ptr %10, align 4
  br label %48, !llvm.loop !7

70:                                               ; preds = %48
  br label %71

71:                                               ; preds = %70, %35
  %72 = phi ptr [ %49, %70 ], [ %29, %35 ]
  %73 = phi ptr [ %51, %70 ], [ %30, %35 ]
  %74 = phi i32 [ %.pre, %70 ], [ %31, %35 ]
  %75 = add i32 %32, 1
  store i32 %75, ptr %9, align 4
  br label %28, !llvm.loop !9

76:                                               ; preds = %28
  %77 = load i32, ptr %11, align 4
  %78 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %31, i32 noundef %77)
  %79 = load i32, ptr %6, align 4
  %80 = add i32 %79, 1
  store i32 %80, ptr %6, align 4
  br label %17, !llvm.loop !10

81:                                               ; preds = %17
  call void @free(ptr noundef %20)
  store i32 0, ptr %3, align 4
  br label %82

82:                                               ; preds = %81, %15
  %83 = phi i32 [ 0, %81 ], [ 1, %15 ]
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
