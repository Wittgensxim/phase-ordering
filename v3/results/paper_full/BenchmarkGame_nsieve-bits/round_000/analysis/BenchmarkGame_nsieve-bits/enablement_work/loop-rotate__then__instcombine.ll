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
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 40960000, ptr %4, align 4
  %10 = call dereferenceable_or_null(5120004) ptr @malloc(i64 noundef 5120004) #4
  store ptr %10, ptr %5, align 8
  %.not = icmp eq ptr %10, null
  br i1 %.not, label %11, label %12

11:                                               ; preds = %2
  br label %80

12:                                               ; preds = %2
  store i32 0, ptr %3, align 4
  br i1 true, label %.lr.ph5, label %78

.lr.ph5:                                          ; preds = %12
  br label %13

13:                                               ; preds = %.lr.ph5, %74
  store i32 0, ptr %8, align 4
  %14 = load i32, ptr %4, align 4
  %15 = load i32, ptr %3, align 4
  %16 = lshr i32 %14, %15
  store i32 %16, ptr %9, align 4
  %17 = load ptr, ptr %5, align 8
  %18 = lshr i32 %16, 3
  %narrow = add nuw nsw i32 %18, 4
  %19 = zext nneg i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %17, i8 -1, i64 %19, i1 false)
  store i32 2, ptr %6, align 4
  %20 = load i32, ptr %9, align 4
  %21 = icmp ugt i32 %20, 1
  br i1 %21, label %.lr.ph2, label %70

.lr.ph2:                                          ; preds = %13
  br label %22

22:                                               ; preds = %.lr.ph2, %66
  %23 = load ptr, ptr %5, align 8
  %24 = load i32, ptr %6, align 4
  %25 = lshr i32 %24, 5
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %24, 31
  %30 = shl nuw i32 1, %29
  %31 = and i32 %28, %30
  %.not7 = icmp eq i32 %31, 0
  br i1 %.not7, label %65, label %32

32:                                               ; preds = %22
  %33 = load i32, ptr %8, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %8, align 4
  %35 = load i32, ptr %6, align 4
  %36 = shl i32 %35, 1
  store i32 %36, ptr %7, align 4
  %37 = load i32, ptr %9, align 4
  %.not8 = icmp ugt i32 %36, %37
  br i1 %.not8, label %64, label %.lr.ph

.lr.ph:                                           ; preds = %32
  br label %38

38:                                               ; preds = %.lr.ph, %59
  %39 = load ptr, ptr %5, align 8
  %40 = load i32, ptr %7, align 4
  %41 = lshr i32 %40, 5
  %42 = zext nneg i32 %41 to i64
  %43 = getelementptr inbounds nuw [4 x i8], ptr %39, i64 %42
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %40, 31
  %46 = shl nuw i32 1, %45
  %47 = and i32 %44, %46
  %.not9 = icmp eq i32 %47, 0
  br i1 %.not9, label %58, label %48

48:                                               ; preds = %38
  %49 = load i32, ptr %7, align 4
  %50 = and i32 %49, 31
  %51 = shl nuw i32 1, %50
  %52 = load ptr, ptr %5, align 8
  %53 = lshr i32 %49, 5
  %54 = zext nneg i32 %53 to i64
  %55 = getelementptr inbounds nuw [4 x i8], ptr %52, i64 %54
  %56 = load i32, ptr %55, align 4
  %57 = xor i32 %56, %51
  store i32 %57, ptr %55, align 4
  br label %58

58:                                               ; preds = %48, %38
  br label %59

59:                                               ; preds = %58
  %60 = load i32, ptr %6, align 4
  %61 = load i32, ptr %7, align 4
  %62 = add i32 %61, %60
  store i32 %62, ptr %7, align 4
  %63 = load i32, ptr %9, align 4
  %.not10 = icmp ugt i32 %62, %63
  br i1 %.not10, label %._crit_edge, label %38, !llvm.loop !7

._crit_edge:                                      ; preds = %59
  br label %64

64:                                               ; preds = %._crit_edge, %32
  br label %65

65:                                               ; preds = %64, %22
  br label %66

66:                                               ; preds = %65
  %67 = load i32, ptr %6, align 4
  %68 = add i32 %67, 1
  store i32 %68, ptr %6, align 4
  %69 = load i32, ptr %9, align 4
  %.not11 = icmp ugt i32 %68, %69
  br i1 %.not11, label %._crit_edge3, label %22, !llvm.loop !9

._crit_edge3:                                     ; preds = %66
  br label %70

70:                                               ; preds = %._crit_edge3, %13
  %71 = load i32, ptr %9, align 4
  %72 = load i32, ptr %8, align 4
  %73 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %71, i32 noundef %72) #5
  br label %74

74:                                               ; preds = %70
  %75 = load i32, ptr %3, align 4
  %76 = add i32 %75, 1
  store i32 %76, ptr %3, align 4
  %77 = icmp ult i32 %76, 3
  br i1 %77, label %13, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %74
  br label %78

78:                                               ; preds = %._crit_edge6, %12
  %79 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %79) #5
  br label %80

80:                                               ; preds = %78, %11
  %storemerge = phi i32 [ 1, %11 ], [ 0, %78 ]
  ret i32 %storemerge
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
attributes #4 = { nounwind allocsize(0) }
attributes #5 = { nounwind }

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
