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
  br label %72

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %66, %12
  %14 = phi ptr [ %10, %12 ], [ %24, %66 ]
  %15 = phi ptr [ %10, %12 ], [ %25, %66 ]
  %16 = phi ptr [ %10, %12 ], [ %27, %66 ]
  %17 = phi i32 [ 0, %12 ], [ %70, %66 ]
  store i32 %17, ptr %3, align 4
  %18 = icmp ult i32 %17, 3
  br i1 %18, label %19, label %71

19:                                               ; preds = %13
  store i32 0, ptr %8, align 4
  %20 = lshr i32 40960000, %17
  store i32 %20, ptr %9, align 4
  %21 = lshr i32 %20, 3
  %narrow = add nuw nsw i32 %21, 4
  %22 = zext nneg i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %16, i8 -1, i64 %22, i1 false)
  %.pre = load i32, ptr %9, align 4
  br label %23

23:                                               ; preds = %61, %19
  %24 = phi ptr [ %14, %19 ], [ %62, %61 ]
  %25 = phi ptr [ %15, %19 ], [ %63, %61 ]
  %26 = phi i32 [ %.pre, %19 ], [ %64, %61 ]
  %27 = phi ptr [ %16, %19 ], [ %63, %61 ]
  %28 = phi i32 [ 2, %19 ], [ %65, %61 ]
  store i32 %28, ptr %6, align 4
  %.not3 = icmp ugt i32 %28, %26
  br i1 %.not3, label %66, label %29

29:                                               ; preds = %23
  %30 = lshr i32 %28, 5
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds nuw [4 x i8], ptr %25, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %28, 31
  %35 = shl nuw i32 1, %34
  %36 = and i32 %33, %35
  %.not4 = icmp eq i32 %36, 0
  br i1 %.not4, label %61, label %37

37:                                               ; preds = %29
  %38 = load i32, ptr %8, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %8, align 4
  %40 = shl i32 %28, 1
  br label %41

41:                                               ; preds = %57, %37
  %42 = phi ptr [ %24, %37 ], [ %58, %57 ]
  %43 = phi ptr [ %25, %37 ], [ %58, %57 ]
  %44 = phi i32 [ %40, %37 ], [ %59, %57 ]
  store i32 %44, ptr %7, align 4
  %.not6 = icmp ugt i32 %44, %.pre
  br i1 %.not6, label %60, label %45

45:                                               ; preds = %41
  %46 = lshr i32 %44, 5
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds nuw [4 x i8], ptr %42, i64 %47
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %44, 31
  %51 = shl nuw i32 1, %50
  %52 = and i32 %49, %51
  %.not7 = icmp eq i32 %52, 0
  br i1 %.not7, label %57, label %53

53:                                               ; preds = %45
  %54 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %47
  %55 = load i32, ptr %54, align 4
  %56 = xor i32 %55, %51
  store i32 %56, ptr %54, align 4
  br label %57

57:                                               ; preds = %53, %45
  %58 = phi ptr [ %10, %53 ], [ %42, %45 ]
  %59 = add i32 %44, %28
  br label %41, !llvm.loop !7

60:                                               ; preds = %41
  br label %61

61:                                               ; preds = %60, %29
  %62 = phi ptr [ %42, %60 ], [ %24, %29 ]
  %63 = phi ptr [ %43, %60 ], [ %25, %29 ]
  %64 = phi i32 [ %.pre, %60 ], [ %26, %29 ]
  %65 = add i32 %28, 1
  br label %23, !llvm.loop !9

66:                                               ; preds = %23
  %67 = load i32, ptr %8, align 4
  %68 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.pre, i32 noundef %67) #5
  %69 = load i32, ptr %3, align 4
  %70 = add i32 %69, 1
  br label %13, !llvm.loop !10

71:                                               ; preds = %13
  call void @free(ptr noundef %16) #5
  br label %72

72:                                               ; preds = %71, %11
  %storemerge = phi i32 [ 1, %11 ], [ 0, %71 ]
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
