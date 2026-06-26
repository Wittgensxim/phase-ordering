; ModuleID = 'results\paper_full\BenchmarkGame_nsieve-bits\BenchmarkGame_nsieve-bits.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/nsieve-bits.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Primes up to %8d %8d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = udiv i32 40960000, 8
  %4 = zext nneg i32 %3 to i64
  %5 = add nuw nsw i64 %4, 4
  %6 = call ptr @malloc(i64 noundef %5) #4
  %7 = icmp ne ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %68

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %65, %9
  %.03 = phi i32 [ 0, %9 ], [ %66, %65 ]
  %11 = icmp ule i32 %.03, 2
  br i1 %11, label %12, label %67

12:                                               ; preds = %10
  %13 = lshr i32 40960000, %.03
  %14 = udiv i32 %13, 8
  %15 = zext nneg i32 %14 to i64
  %16 = add nuw nsw i64 %15, 4
  call void @llvm.memset.p0.i64(ptr align 4 %6, i8 -1, i64 %16, i1 false)
  br label %17

17:                                               ; preds = %61, %12
  %.04 = phi i32 [ 2, %12 ], [ %62, %61 ]
  %.01 = phi i32 [ 0, %12 ], [ %.1, %61 ]
  %18 = icmp ule i32 %.04, %13
  br i1 %18, label %19, label %63

19:                                               ; preds = %17
  %20 = zext i32 %.04 to i64
  %21 = udiv i64 %20, 32
  %22 = getelementptr inbounds nuw i32, ptr %6, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = zext i32 %.04 to i64
  %25 = urem i64 %24, 32
  %26 = trunc nuw nsw i64 %25 to i32
  %27 = shl nuw i32 1, %26
  %28 = and i32 %23, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %60

30:                                               ; preds = %19
  %31 = add i32 %.01, 1
  %32 = add i32 %.04, %.04
  br label %33

33:                                               ; preds = %57, %30
  %.02 = phi i32 [ %32, %30 ], [ %58, %57 ]
  %34 = icmp ule i32 %.02, %13
  br i1 %34, label %35, label %59

35:                                               ; preds = %33
  %36 = zext i32 %.02 to i64
  %37 = udiv i64 %36, 32
  %38 = getelementptr inbounds nuw i32, ptr %6, i64 %37
  %39 = load i32, ptr %38, align 4
  %40 = zext i32 %.02 to i64
  %41 = urem i64 %40, 32
  %42 = trunc nuw nsw i64 %41 to i32
  %43 = shl nuw i32 1, %42
  %44 = and i32 %39, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %35
  %47 = zext i32 %.02 to i64
  %48 = urem i64 %47, 32
  %49 = trunc nuw nsw i64 %48 to i32
  %50 = shl nuw i32 1, %49
  %51 = zext i32 %.02 to i64
  %52 = udiv i64 %51, 32
  %53 = getelementptr inbounds nuw i32, ptr %6, i64 %52
  %54 = load i32, ptr %53, align 4
  %55 = xor i32 %54, %50
  store i32 %55, ptr %53, align 4
  br label %56

56:                                               ; preds = %46, %35
  br label %57

57:                                               ; preds = %56
  %58 = add i32 %.02, %.04
  br label %33, !llvm.loop !7

59:                                               ; preds = %33
  br label %60

60:                                               ; preds = %59, %19
  %.1 = phi i32 [ %31, %59 ], [ %.01, %19 ]
  br label %61

61:                                               ; preds = %60
  %62 = add i32 %.04, 1
  br label %17, !llvm.loop !9

63:                                               ; preds = %17
  %64 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %13, i32 noundef %.01)
  br label %65

65:                                               ; preds = %63
  %66 = add i32 %.03, 1
  br label %10, !llvm.loop !10

67:                                               ; preds = %10
  call void @free(ptr noundef %6)
  br label %68

68:                                               ; preds = %67, %8
  %.0 = phi i32 [ 0, %67 ], [ 1, %8 ]
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
