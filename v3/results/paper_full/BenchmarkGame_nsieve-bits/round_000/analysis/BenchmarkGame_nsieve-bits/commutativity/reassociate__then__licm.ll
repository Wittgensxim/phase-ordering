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
  br label %92

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
  br label %27

27:                                               ; preds = %88, %21
  %.lcssa7.lcssa16 = phi i32 [ %.lcssa7.lcssa, %88 ], [ %.promoted15, %21 ]
  %.lcssa214 = phi i32 [ %.lcssa2, %88 ], [ %.promoted13, %21 ]
  %28 = phi i32 [ %32, %88 ], [ %.promoted11, %21 ]
  %.lcssa410 = phi i32 [ %.lcssa4, %88 ], [ %.promoted9, %21 ]
  %29 = phi i32 [ %89, %88 ], [ %.promoted, %21 ]
  %30 = icmp ule i32 %29, 2
  br i1 %30, label %31, label %90

31:                                               ; preds = %27
  %32 = lshr i32 %22, %29
  %33 = udiv i32 %32, 8
  %34 = zext i32 %33 to i64
  %35 = add i64 %34, 4
  call void @llvm.memset.p0.i64(ptr align 4 %23, i8 -1, i64 %35, i1 false)
  br label %36

36:                                               ; preds = %84, %31
  %.lcssa7 = phi i32 [ %.lcssa6, %84 ], [ %.lcssa7.lcssa16, %31 ]
  %37 = phi i32 [ %83, %84 ], [ 0, %31 ]
  %38 = phi i32 [ %85, %84 ], [ 2, %31 ]
  %39 = icmp ule i32 %38, %32
  br i1 %39, label %40, label %86

40:                                               ; preds = %36
  %41 = zext i32 %38 to i64
  %42 = udiv i64 %41, 32
  %43 = getelementptr inbounds nuw i32, ptr %24, i64 %42
  %44 = load i32, ptr %43, align 4
  %45 = zext i32 %38 to i64
  %46 = urem i64 %45, 32
  %47 = trunc i64 %46 to i32
  %48 = shl i32 1, %47
  %49 = and i32 %48, %44
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %82

51:                                               ; preds = %40
  %52 = add i32 %37, 1
  %53 = add i32 %38, %38
  br label %54

54:                                               ; preds = %79, %51
  %55 = phi i32 [ %80, %79 ], [ %53, %51 ]
  %56 = icmp ule i32 %55, %32
  br i1 %56, label %57, label %81

57:                                               ; preds = %54
  %58 = zext i32 %55 to i64
  %59 = udiv i64 %58, 32
  %60 = getelementptr inbounds nuw i32, ptr %25, i64 %59
  %61 = load i32, ptr %60, align 4
  %62 = zext i32 %55 to i64
  %63 = urem i64 %62, 32
  %64 = trunc i64 %63 to i32
  %65 = shl i32 1, %64
  %66 = and i32 %65, %61
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %57
  %69 = zext i32 %55 to i64
  %70 = urem i64 %69, 32
  %71 = trunc i64 %70 to i32
  %72 = shl i32 1, %71
  %73 = zext i32 %55 to i64
  %74 = udiv i64 %73, 32
  %75 = getelementptr inbounds nuw i32, ptr %26, i64 %74
  %76 = load i32, ptr %75, align 4
  %77 = xor i32 %72, %76
  store i32 %77, ptr %75, align 4
  br label %78

78:                                               ; preds = %68, %57
  br label %79

79:                                               ; preds = %78
  %80 = add i32 %55, %38
  br label %54, !llvm.loop !7

81:                                               ; preds = %54
  %.lcssa = phi i32 [ %55, %54 ]
  br label %82

82:                                               ; preds = %81, %40
  %.lcssa6 = phi i32 [ %.lcssa, %81 ], [ %.lcssa7, %40 ]
  %83 = phi i32 [ %52, %81 ], [ %37, %40 ]
  br label %84

84:                                               ; preds = %82
  %85 = add i32 %38, 1
  br label %36, !llvm.loop !9

86:                                               ; preds = %36
  %.lcssa7.lcssa = phi i32 [ %.lcssa7, %36 ]
  %.lcssa4 = phi i32 [ %37, %36 ]
  %.lcssa2 = phi i32 [ %38, %36 ]
  %87 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %32, i32 noundef %.lcssa4)
  br label %88

88:                                               ; preds = %86
  %89 = add i32 %29, 1
  br label %27, !llvm.loop !10

90:                                               ; preds = %27
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
  %91 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %91)
  store i32 0, ptr %3, align 4
  br label %92

92:                                               ; preds = %90, %20
  %93 = load i32, ptr %3, align 4
  ret i32 %93
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
