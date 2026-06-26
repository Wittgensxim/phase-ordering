; ModuleID = 'results\paper_full\BenchmarkGame_nsieve-bits\BenchmarkGame_nsieve-bits.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/nsieve-bits.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Primes up to %8d %8d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 2) i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = call ptr @malloc(i64 noundef 5120004) #4
  %4 = icmp ne ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  br label %65

6:                                                ; preds = %2
  br label %7

7:                                                ; preds = %62, %6
  %.033 = phi i32 [ 0, %6 ], [ %63, %62 ]
  %8 = icmp ule i32 %.033, 2
  br i1 %8, label %9, label %64

9:                                                ; preds = %7
  %10 = lshr i32 40960000, %.033
  %11 = udiv i32 %10, 8
  %12 = zext nneg i32 %11 to i64
  %13 = add nuw nsw i64 %12, 4
  call void @llvm.memset.p0.i64(ptr align 4 %3, i8 -1, i64 %13, i1 false)
  br label %14

14:                                               ; preds = %58, %9
  %.032 = phi i32 [ 2, %9 ], [ %59, %58 ]
  %.030 = phi i32 [ 0, %9 ], [ %.1, %58 ]
  %15 = icmp ule i32 %.032, %10
  br i1 %15, label %16, label %60

16:                                               ; preds = %14
  %17 = zext nneg i32 %.032 to i64
  %18 = udiv i64 %17, 32
  %19 = getelementptr inbounds nuw i32, ptr %3, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = zext nneg i32 %.032 to i64
  %22 = urem i64 %21, 32
  %23 = trunc nuw nsw i64 %22 to i32
  %24 = shl nuw i32 1, %23
  %25 = and i32 %20, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %16
  %28 = add i32 %.030, 1
  %29 = add nuw nsw i32 %.032, %.032
  br label %30

30:                                               ; preds = %54, %27
  %.031 = phi i32 [ %29, %27 ], [ %55, %54 ]
  %31 = icmp ule i32 %.031, %10
  br i1 %31, label %32, label %56

32:                                               ; preds = %30
  %33 = zext nneg i32 %.031 to i64
  %34 = udiv i64 %33, 32
  %35 = getelementptr inbounds nuw i32, ptr %3, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = zext nneg i32 %.031 to i64
  %38 = urem i64 %37, 32
  %39 = trunc nuw nsw i64 %38 to i32
  %40 = shl nuw i32 1, %39
  %41 = and i32 %36, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %32
  %44 = zext nneg i32 %.031 to i64
  %45 = urem i64 %44, 32
  %46 = trunc nuw nsw i64 %45 to i32
  %47 = shl nuw i32 1, %46
  %48 = zext nneg i32 %.031 to i64
  %49 = udiv i64 %48, 32
  %50 = getelementptr inbounds nuw i32, ptr %3, i64 %49
  %51 = load i32, ptr %50, align 4
  %52 = xor i32 %51, %47
  store i32 %52, ptr %50, align 4
  br label %53

53:                                               ; preds = %43, %32
  br label %54

54:                                               ; preds = %53
  %55 = add nuw nsw i32 %.031, %.032
  br label %30, !llvm.loop !7

56:                                               ; preds = %30
  br label %57

57:                                               ; preds = %56, %16
  %.1 = phi i32 [ %28, %56 ], [ %.030, %16 ]
  br label %58

58:                                               ; preds = %57
  %59 = add nuw nsw i32 %.032, 1
  br label %14, !llvm.loop !9

60:                                               ; preds = %14
  %61 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %10, i32 noundef %.030)
  br label %62

62:                                               ; preds = %60
  %63 = add nuw nsw i32 %.033, 1
  br label %7, !llvm.loop !10

64:                                               ; preds = %7
  call void @free(ptr noundef %3)
  br label %65

65:                                               ; preds = %64, %5
  %.0 = phi i32 [ 0, %64 ], [ 1, %5 ]
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
