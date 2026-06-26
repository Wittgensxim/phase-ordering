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
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %68

9:                                                ; preds = %2
  %10 = icmp ule i32 0, 2
  br i1 %10, label %.lr.ph5, label %67

.lr.ph5:                                          ; preds = %9
  br label %11

11:                                               ; preds = %.lr.ph5, %64
  %.044 = phi i32 [ 0, %.lr.ph5 ], [ %65, %64 ]
  %12 = lshr i32 40960000, %.044
  %13 = udiv i32 %12, 8
  %14 = zext i32 %13 to i64
  %15 = add i64 %14, 4
  call void @llvm.memset.p0.i64(ptr align 4 %6, i8 -1, i64 %15, i1 false)
  %16 = icmp ule i32 2, %12
  br i1 %16, label %.lr.ph2, label %62

.lr.ph2:                                          ; preds = %11
  br label %17

17:                                               ; preds = %.lr.ph2, %59
  %.043 = phi i32 [ 2, %.lr.ph2 ], [ %60, %59 ]
  %.041 = phi i32 [ 0, %.lr.ph2 ], [ %.2, %59 ]
  %18 = zext i32 %.043 to i64
  %19 = udiv i64 %18, 32
  %20 = getelementptr inbounds nuw i32, ptr %6, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = zext i32 %.043 to i64
  %23 = urem i64 %22, 32
  %24 = trunc i64 %23 to i32
  %25 = shl i32 1, %24
  %26 = and i32 %21, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %58

28:                                               ; preds = %17
  %29 = add i32 %.041, 1
  %30 = add i32 %.043, %.043
  %31 = icmp ule i32 %30, %12
  br i1 %31, label %.lr.ph, label %57

.lr.ph:                                           ; preds = %28
  br label %32

32:                                               ; preds = %.lr.ph, %54
  %.042 = phi i32 [ %30, %.lr.ph ], [ %55, %54 ]
  %33 = zext i32 %.042 to i64
  %34 = udiv i64 %33, 32
  %35 = getelementptr inbounds nuw i32, ptr %6, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = zext i32 %.042 to i64
  %38 = urem i64 %37, 32
  %39 = trunc i64 %38 to i32
  %40 = shl i32 1, %39
  %41 = and i32 %36, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %32
  %44 = zext i32 %.042 to i64
  %45 = urem i64 %44, 32
  %46 = trunc i64 %45 to i32
  %47 = shl i32 1, %46
  %48 = zext i32 %.042 to i64
  %49 = udiv i64 %48, 32
  %50 = getelementptr inbounds nuw i32, ptr %6, i64 %49
  %51 = load i32, ptr %50, align 4
  %52 = xor i32 %51, %47
  store i32 %52, ptr %50, align 4
  br label %53

53:                                               ; preds = %43, %32
  br label %54

54:                                               ; preds = %53
  %55 = add i32 %.042, %.043
  %56 = icmp ule i32 %55, %12
  br i1 %56, label %32, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %54
  br label %57

57:                                               ; preds = %._crit_edge, %28
  br label %58

58:                                               ; preds = %57, %17
  %.2 = phi i32 [ %29, %57 ], [ %.041, %17 ]
  br label %59

59:                                               ; preds = %58
  %60 = add i32 %.043, 1
  %61 = icmp ule i32 %60, %12
  br i1 %61, label %17, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %59
  br label %62

62:                                               ; preds = %._crit_edge3, %11
  %.1 = phi i32 [ %.2, %._crit_edge3 ], [ 0, %11 ]
  %63 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %12, i32 noundef %.1)
  br label %64

64:                                               ; preds = %62
  %65 = add i32 %.044, 1
  %66 = icmp ule i32 %65, 2
  br i1 %66, label %11, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %64
  br label %67

67:                                               ; preds = %._crit_edge6, %9
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
