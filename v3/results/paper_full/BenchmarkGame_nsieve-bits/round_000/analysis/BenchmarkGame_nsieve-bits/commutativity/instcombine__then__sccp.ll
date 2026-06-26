; ModuleID = 'results\paper_full\BenchmarkGame_nsieve-bits\BenchmarkGame_nsieve-bits.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/nsieve-bits.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Primes up to %8d %8d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 2) i32 @main(i32 noundef %0, ptr noundef %1) #0 {
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
  br label %13

13:                                               ; preds = %75, %12
  %storemerge1 = phi i32 [ 0, %12 ], [ %77, %75 ]
  store i32 %storemerge1, ptr %3, align 4
  %14 = icmp ult i32 %storemerge1, 3
  br i1 %14, label %15, label %78

15:                                               ; preds = %13
  store i32 0, ptr %8, align 4
  %16 = load i32, ptr %4, align 4
  %17 = load i32, ptr %3, align 4
  %18 = lshr i32 %16, %17
  store i32 %18, ptr %9, align 4
  %19 = load ptr, ptr %5, align 8
  %20 = lshr i32 %18, 3
  %narrow = add nuw nsw i32 %20, 4
  %21 = zext nneg i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %19, i8 -1, i64 %21, i1 false)
  br label %22

22:                                               ; preds = %68, %15
  %storemerge2 = phi i32 [ 2, %15 ], [ %70, %68 ]
  store i32 %storemerge2, ptr %6, align 4
  %23 = load i32, ptr %9, align 4
  %.not3 = icmp ugt i32 %storemerge2, %23
  br i1 %.not3, label %71, label %24

24:                                               ; preds = %22
  %25 = load ptr, ptr %5, align 8
  %26 = load i32, ptr %6, align 4
  %27 = lshr i32 %26, 5
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds nuw [4 x i8], ptr %25, i64 %28
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %26, 31
  %32 = shl nuw i32 1, %31
  %33 = and i32 %30, %32
  %.not4 = icmp eq i32 %33, 0
  br i1 %.not4, label %67, label %34

34:                                               ; preds = %24
  %35 = load i32, ptr %8, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %8, align 4
  %37 = load i32, ptr %6, align 4
  %38 = shl i32 %37, 1
  br label %39

39:                                               ; preds = %62, %34
  %storemerge5 = phi i32 [ %38, %34 ], [ %65, %62 ]
  store i32 %storemerge5, ptr %7, align 4
  %40 = load i32, ptr %9, align 4
  %.not6 = icmp ugt i32 %storemerge5, %40
  br i1 %.not6, label %66, label %41

41:                                               ; preds = %39
  %42 = load ptr, ptr %5, align 8
  %43 = load i32, ptr %7, align 4
  %44 = lshr i32 %43, 5
  %45 = zext nneg i32 %44 to i64
  %46 = getelementptr inbounds nuw [4 x i8], ptr %42, i64 %45
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %43, 31
  %49 = shl nuw i32 1, %48
  %50 = and i32 %47, %49
  %.not7 = icmp eq i32 %50, 0
  br i1 %.not7, label %61, label %51

51:                                               ; preds = %41
  %52 = load i32, ptr %7, align 4
  %53 = and i32 %52, 31
  %54 = shl nuw i32 1, %53
  %55 = load ptr, ptr %5, align 8
  %56 = lshr i32 %52, 5
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds nuw [4 x i8], ptr %55, i64 %57
  %59 = load i32, ptr %58, align 4
  %60 = xor i32 %59, %54
  store i32 %60, ptr %58, align 4
  br label %61

61:                                               ; preds = %51, %41
  br label %62

62:                                               ; preds = %61
  %63 = load i32, ptr %6, align 4
  %64 = load i32, ptr %7, align 4
  %65 = add i32 %64, %63
  br label %39, !llvm.loop !7

66:                                               ; preds = %39
  br label %67

67:                                               ; preds = %66, %24
  br label %68

68:                                               ; preds = %67
  %69 = load i32, ptr %6, align 4
  %70 = add i32 %69, 1
  br label %22, !llvm.loop !9

71:                                               ; preds = %22
  %72 = load i32, ptr %9, align 4
  %73 = load i32, ptr %8, align 4
  %74 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %72, i32 noundef %73) #5
  br label %75

75:                                               ; preds = %71
  %76 = load i32, ptr %3, align 4
  %77 = add i32 %76, 1
  br label %13, !llvm.loop !10

78:                                               ; preds = %13
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
