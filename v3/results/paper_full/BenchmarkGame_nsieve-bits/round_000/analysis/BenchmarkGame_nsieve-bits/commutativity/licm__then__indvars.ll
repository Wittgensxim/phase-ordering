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
  %17 = call ptr @malloc(i64 noundef %16) #5
  store ptr %17, ptr %8, align 8
  %18 = load ptr, ptr %8, align 8
  %19 = icmp ne ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 1, ptr %3, align 4
  br label %90

21:                                               ; preds = %2
  store i32 0, ptr %6, align 4
  %22 = load i32, ptr %7, align 4
  %23 = load ptr, ptr %8, align 8
  %24 = load ptr, ptr %8, align 8
  %25 = load ptr, ptr %8, align 8
  %26 = load ptr, ptr %8, align 8
  %.promoted = load i32, ptr %6, align 4
  %.promoted9 = load i32, ptr %11, align 4
  %.promoted11 = load i32, ptr %12, align 4
  %.promoted13 = load i32, ptr %9, align 4
  %.promoted15 = load i32, ptr %10, align 4
  %umax18 = call i32 @llvm.umax.i32(i32 %.promoted, i32 3)
  br label %27

27:                                               ; preds = %86, %21
  %.lcssa7.lcssa16 = phi i32 [ %.lcssa7.lcssa, %86 ], [ %.promoted15, %21 ]
  %.lcssa214 = phi i32 [ %84, %86 ], [ %.promoted13, %21 ]
  %28 = phi i32 [ %31, %86 ], [ %.promoted11, %21 ]
  %.lcssa410 = phi i32 [ %.lcssa4, %86 ], [ %.promoted9, %21 ]
  %29 = phi i32 [ %87, %86 ], [ %.promoted, %21 ]
  %exitcond19 = icmp ne i32 %29, %umax18
  br i1 %exitcond19, label %30, label %88

30:                                               ; preds = %27
  %31 = lshr i32 %22, %29
  %32 = udiv i32 %31, 8
  %33 = zext i32 %32 to i64
  %34 = add i64 %33, 4
  call void @llvm.memset.p0.i64(ptr align 4 %23, i8 -1, i64 %34, i1 false)
  %35 = add i32 %31, 1
  %umax = call i32 @llvm.umax.i32(i32 %35, i32 2)
  %wide.trip.count = zext i32 %umax to i64
  br label %36

36:                                               ; preds = %82, %30
  %indvars.iv = phi i64 [ %indvars.iv.next, %82 ], [ 2, %30 ]
  %.lcssa7 = phi i32 [ %.lcssa6, %82 ], [ %.lcssa7.lcssa16, %30 ]
  %37 = phi i32 [ %81, %82 ], [ 0, %30 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %38, label %83

38:                                               ; preds = %36
  %39 = udiv i64 %indvars.iv, 32
  %40 = getelementptr inbounds nuw i32, ptr %24, i64 %39
  %41 = load i32, ptr %40, align 4
  %42 = urem i64 %indvars.iv, 32
  %43 = trunc i64 %42 to i32
  %44 = shl i32 1, %43
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %80

47:                                               ; preds = %38
  %48 = trunc nuw i64 %indvars.iv to i32
  %49 = add i32 %48, %48
  br label %50

50:                                               ; preds = %75, %47
  %51 = phi i32 [ %77, %75 ], [ %49, %47 ]
  %52 = icmp ule i32 %51, %31
  br i1 %52, label %53, label %78

53:                                               ; preds = %50
  %54 = zext i32 %51 to i64
  %55 = udiv i64 %54, 32
  %56 = getelementptr inbounds nuw i32, ptr %25, i64 %55
  %57 = load i32, ptr %56, align 4
  %58 = zext i32 %51 to i64
  %59 = urem i64 %58, 32
  %60 = trunc i64 %59 to i32
  %61 = shl i32 1, %60
  %62 = and i32 %57, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %53
  %65 = zext i32 %51 to i64
  %66 = urem i64 %65, 32
  %67 = trunc i64 %66 to i32
  %68 = shl i32 1, %67
  %69 = zext i32 %51 to i64
  %70 = udiv i64 %69, 32
  %71 = getelementptr inbounds nuw i32, ptr %26, i64 %70
  %72 = load i32, ptr %71, align 4
  %73 = xor i32 %72, %68
  store i32 %73, ptr %71, align 4
  br label %74

74:                                               ; preds = %64, %53
  br label %75

75:                                               ; preds = %74
  %76 = trunc nuw i64 %indvars.iv to i32
  %77 = add i32 %51, %76
  br label %50, !llvm.loop !7

78:                                               ; preds = %50
  %.lcssa = phi i32 [ %51, %50 ]
  %79 = add i32 %37, 1
  br label %80

80:                                               ; preds = %78, %38
  %.lcssa6 = phi i32 [ %.lcssa, %78 ], [ %.lcssa7, %38 ]
  %81 = phi i32 [ %79, %78 ], [ %37, %38 ]
  br label %82

82:                                               ; preds = %80
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %36, !llvm.loop !9

83:                                               ; preds = %36
  %.lcssa7.lcssa = phi i32 [ %.lcssa7, %36 ]
  %.lcssa4 = phi i32 [ %37, %36 ]
  %.lcssa2.wide = phi i64 [ %indvars.iv, %36 ]
  %84 = trunc nuw i64 %.lcssa2.wide to i32
  %85 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %31, i32 noundef %.lcssa4)
  br label %86

86:                                               ; preds = %83
  %87 = add nuw nsw i32 %29, 1
  br label %27, !llvm.loop !10

88:                                               ; preds = %27
  %.lcssa7.lcssa16.lcssa = phi i32 [ %.lcssa7.lcssa16, %27 ]
  %.lcssa214.lcssa = phi i32 [ %.lcssa214, %27 ]
  %.lcssa12 = phi i32 [ %28, %27 ]
  %.lcssa410.lcssa = phi i32 [ %.lcssa410, %27 ]
  %.lcssa8 = phi i32 [ %29, %27 ]
  store i32 %.lcssa8, ptr %6, align 4
  store i32 %.lcssa410.lcssa, ptr %11, align 4
  store i32 %.lcssa12, ptr %12, align 4
  store i32 %.lcssa214.lcssa, ptr %9, align 4
  store i32 %.lcssa7.lcssa16.lcssa, ptr %10, align 4
  %89 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %89)
  store i32 0, ptr %3, align 4
  br label %90

90:                                               ; preds = %88, %20
  %91 = load i32, ptr %3, align 4
  ret i32 %91
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
