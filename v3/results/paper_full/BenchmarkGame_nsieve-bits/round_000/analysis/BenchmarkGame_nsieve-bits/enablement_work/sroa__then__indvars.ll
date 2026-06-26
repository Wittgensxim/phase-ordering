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
  %6 = call ptr @malloc(i64 noundef %5) #5
  %7 = icmp ne ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %59

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %56, %9
  %.033 = phi i32 [ 0, %9 ], [ %57, %56 ]
  %exitcond40 = icmp ne i32 %.033, 3
  br i1 %exitcond40, label %11, label %58

11:                                               ; preds = %10
  %12 = lshr i32 40960000, %.033
  %13 = udiv i32 %12, 8
  %14 = zext i32 %13 to i64
  %15 = add i64 %14, 4
  call void @llvm.memset.p0.i64(ptr align 4 %6, i8 -1, i64 %15, i1 false)
  %16 = zext i32 %12 to i64
  %17 = add nuw nsw i32 %12, 1
  %umax = call i32 @llvm.umax.i32(i32 %17, i32 2)
  %wide.trip.count = zext i32 %umax to i64
  br label %18

18:                                               ; preds = %53, %11
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %53 ], [ 2, %11 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %53 ], [ 4, %11 ]
  %.030 = phi i32 [ 0, %11 ], [ %.1, %53 ]
  %exitcond = icmp ne i64 %indvars.iv34, %wide.trip.count
  br i1 %exitcond, label %19, label %54

19:                                               ; preds = %18
  %20 = udiv i64 %indvars.iv34, 32
  %21 = getelementptr inbounds nuw i32, ptr %6, i64 %20
  %22 = load i32, ptr %21, align 4
  %23 = urem i64 %indvars.iv34, 32
  %24 = trunc i64 %23 to i32
  %25 = shl i32 1, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %49, %28
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %49 ], [ %indvars.iv, %28 ]
  %30 = icmp samesign ule i64 %indvars.iv36, %16
  br i1 %30, label %31, label %50

31:                                               ; preds = %29
  %32 = udiv i64 %indvars.iv36, 32
  %33 = getelementptr inbounds nuw i32, ptr %6, i64 %32
  %34 = load i32, ptr %33, align 4
  %35 = urem i64 %indvars.iv36, 32
  %36 = trunc i64 %35 to i32
  %37 = shl i32 1, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %31
  %41 = urem i64 %indvars.iv36, 32
  %42 = trunc i64 %41 to i32
  %43 = shl i32 1, %42
  %44 = udiv i64 %indvars.iv36, 32
  %45 = getelementptr inbounds nuw i32, ptr %6, i64 %44
  %46 = load i32, ptr %45, align 4
  %47 = xor i32 %46, %43
  store i32 %47, ptr %45, align 4
  br label %48

48:                                               ; preds = %40, %31
  br label %49

49:                                               ; preds = %48
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, %indvars.iv34
  br label %29, !llvm.loop !7

50:                                               ; preds = %29
  %51 = add i32 %.030, 1
  br label %52

52:                                               ; preds = %50, %19
  %.1 = phi i32 [ %51, %50 ], [ %.030, %19 ]
  br label %53

53:                                               ; preds = %52
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  br label %18, !llvm.loop !9

54:                                               ; preds = %18
  %.030.lcssa = phi i32 [ %.030, %18 ]
  %55 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %12, i32 noundef %.030.lcssa)
  br label %56

56:                                               ; preds = %54
  %57 = add nuw nsw i32 %.033, 1
  br label %10, !llvm.loop !10

58:                                               ; preds = %10
  call void @free(ptr noundef %6)
  br label %59

59:                                               ; preds = %58, %8
  %.0 = phi i32 [ 0, %58 ], [ 1, %8 ]
  ret i32 %.0
}

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare dso_local i32 @printf(ptr noundef, ...) #3

declare dso_local void @free(ptr noundef) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { allocsize(0) }

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
