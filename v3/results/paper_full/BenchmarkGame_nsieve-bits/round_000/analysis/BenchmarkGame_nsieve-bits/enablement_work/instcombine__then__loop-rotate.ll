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
  br label %79

12:                                               ; preds = %2
  store i32 0, ptr %3, align 4
  br label %13

13:                                               ; preds = %12, %73
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
  %.not39 = icmp ugt i32 2, %20
  br i1 %.not39, label %69, label %.lr.ph11

.lr.ph11:                                         ; preds = %13
  br label %21

21:                                               ; preds = %.lr.ph11, %65
  %22 = load ptr, ptr %5, align 8
  %23 = load i32, ptr %6, align 4
  %24 = lshr i32 %23, 5
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %25
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %23, 31
  %29 = shl nuw i32 1, %28
  %30 = and i32 %27, %29
  %.not4 = icmp eq i32 %30, 0
  br i1 %.not4, label %64, label %31

31:                                               ; preds = %21
  %32 = load i32, ptr %8, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %8, align 4
  %34 = load i32, ptr %6, align 4
  %35 = shl i32 %34, 1
  store i32 %35, ptr %7, align 4
  %36 = load i32, ptr %9, align 4
  %.not68 = icmp ugt i32 %35, %36
  br i1 %.not68, label %63, label %.lr.ph

.lr.ph:                                           ; preds = %31
  br label %37

37:                                               ; preds = %.lr.ph, %58
  %38 = load ptr, ptr %5, align 8
  %39 = load i32, ptr %7, align 4
  %40 = lshr i32 %39, 5
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds nuw [4 x i8], ptr %38, i64 %41
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %39, 31
  %45 = shl nuw i32 1, %44
  %46 = and i32 %43, %45
  %.not7 = icmp eq i32 %46, 0
  br i1 %.not7, label %57, label %47

47:                                               ; preds = %37
  %48 = load i32, ptr %7, align 4
  %49 = and i32 %48, 31
  %50 = shl nuw i32 1, %49
  %51 = load ptr, ptr %5, align 8
  %52 = lshr i32 %48, 5
  %53 = zext nneg i32 %52 to i64
  %54 = getelementptr inbounds nuw [4 x i8], ptr %51, i64 %53
  %55 = load i32, ptr %54, align 4
  %56 = xor i32 %55, %50
  store i32 %56, ptr %54, align 4
  br label %57

57:                                               ; preds = %47, %37
  br label %58

58:                                               ; preds = %57
  %59 = load i32, ptr %6, align 4
  %60 = load i32, ptr %7, align 4
  %61 = add i32 %60, %59
  store i32 %61, ptr %7, align 4
  %62 = load i32, ptr %9, align 4
  %.not6 = icmp ugt i32 %61, %62
  br i1 %.not6, label %._crit_edge, label %37, !llvm.loop !7

._crit_edge:                                      ; preds = %58
  br label %63

63:                                               ; preds = %._crit_edge, %31
  br label %64

64:                                               ; preds = %63, %21
  br label %65

65:                                               ; preds = %64
  %66 = load i32, ptr %6, align 4
  %67 = add i32 %66, 1
  store i32 %67, ptr %6, align 4
  %68 = load i32, ptr %9, align 4
  %.not3 = icmp ugt i32 %67, %68
  br i1 %.not3, label %._crit_edge12, label %21, !llvm.loop !9

._crit_edge12:                                    ; preds = %65
  br label %69

69:                                               ; preds = %._crit_edge12, %13
  %70 = load i32, ptr %9, align 4
  %71 = load i32, ptr %8, align 4
  %72 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %70, i32 noundef %71) #5
  br label %73

73:                                               ; preds = %69
  %74 = load i32, ptr %3, align 4
  %75 = add i32 %74, 1
  store i32 %75, ptr %3, align 4
  %76 = icmp ult i32 %75, 3
  br i1 %76, label %13, label %77, !llvm.loop !10

77:                                               ; preds = %73
  %78 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %78) #5
  br label %79

79:                                               ; preds = %77, %11
  %storemerge = phi i32 [ 1, %11 ], [ 0, %77 ]
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
