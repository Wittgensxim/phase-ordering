; ModuleID = 'results\paper_full\BenchmarkGame_nsieve-bits\round_004\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/nsieve-bits.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Primes up to %8d %8d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = call dereferenceable_or_null(5120004) ptr @malloc(i64 noundef 5120004) #5
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %91, label %.preheader

.preheader:                                       ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %3, i8 -1, i64 5120004, i1 false)
  br label %4

4:                                                ; preds = %._crit_edge, %.preheader
  %5 = phi i32 [ 2, %.preheader ], [ %30, %._crit_edge ]
  %6 = phi i32 [ 0, %.preheader ], [ %29, %._crit_edge ]
  %7 = lshr i32 %5, 5
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %5, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %10, %12
  %.not2 = icmp eq i32 %13, 0
  br i1 %.not2, label %._crit_edge, label %14

14:                                               ; preds = %4
  %15 = add i32 %6, 1
  %16 = shl nuw i32 %5, 1
  %.not31 = icmp samesign ugt i32 %16, 40960000
  br i1 %.not31, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %14
  br label %.lr.ph

.lr.ph:                                           ; preds = %27, %.lr.ph.preheader
  %17 = phi i32 [ %28, %27 ], [ %16, %.lr.ph.preheader ]
  %18 = lshr i32 %17, 5
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %17, 31
  %23 = shl nuw i32 1, %22
  %24 = and i32 %21, %23
  %.not4 = icmp eq i32 %24, 0
  br i1 %.not4, label %27, label %25

25:                                               ; preds = %.lr.ph
  %26 = xor i32 %21, %23
  store i32 %26, ptr %20, align 4
  br label %27

27:                                               ; preds = %25, %.lr.ph
  %28 = add nuw nsw i32 %17, %5
  %.not3 = icmp samesign ugt i32 %28, 40960000
  br i1 %.not3, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !7

._crit_edge.loopexit:                             ; preds = %27
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %14, %4
  %29 = phi i32 [ %6, %4 ], [ %15, %14 ], [ %15, %._crit_edge.loopexit ]
  %30 = add nuw nsw i32 %5, 1
  %exitcond = icmp eq i32 %5, 40960000
  br i1 %exitcond, label %31, label %4, !llvm.loop !9

31:                                               ; preds = %._crit_edge
  %32 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 40960000, i32 noundef %29) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %3, i8 -1, i64 2560004, i1 false)
  br label %33

33:                                               ; preds = %._crit_edge.1, %31
  %34 = phi i32 [ 2, %31 ], [ %59, %._crit_edge.1 ]
  %35 = phi i32 [ 0, %31 ], [ %58, %._crit_edge.1 ]
  %36 = lshr i32 %34, 5
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %37
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %34, 31
  %41 = shl nuw i32 1, %40
  %42 = and i32 %39, %41
  %.not2.1 = icmp eq i32 %42, 0
  br i1 %.not2.1, label %._crit_edge.1, label %43

43:                                               ; preds = %33
  %44 = add i32 %35, 1
  %45 = shl nuw i32 %34, 1
  %.not31.1 = icmp samesign ugt i32 %45, 20480000
  br i1 %.not31.1, label %._crit_edge.1, label %.lr.ph.preheader.1

.lr.ph.preheader.1:                               ; preds = %43
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %56, %.lr.ph.preheader.1
  %46 = phi i32 [ %57, %56 ], [ %45, %.lr.ph.preheader.1 ]
  %47 = lshr i32 %46, 5
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %48
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %46, 31
  %52 = shl nuw i32 1, %51
  %53 = and i32 %50, %52
  %.not4.1 = icmp eq i32 %53, 0
  br i1 %.not4.1, label %56, label %54

54:                                               ; preds = %.lr.ph.1
  %55 = xor i32 %50, %52
  store i32 %55, ptr %49, align 4
  br label %56

56:                                               ; preds = %54, %.lr.ph.1
  %57 = add nuw nsw i32 %46, %34
  %.not3.1 = icmp samesign ugt i32 %57, 20480000
  br i1 %.not3.1, label %._crit_edge.loopexit.1, label %.lr.ph.1, !llvm.loop !7

._crit_edge.loopexit.1:                           ; preds = %56
  br label %._crit_edge.1

._crit_edge.1:                                    ; preds = %._crit_edge.loopexit.1, %43, %33
  %58 = phi i32 [ %35, %33 ], [ %44, %43 ], [ %44, %._crit_edge.loopexit.1 ]
  %59 = add nuw nsw i32 %34, 1
  %exitcond.1 = icmp eq i32 %34, 20480000
  br i1 %exitcond.1, label %60, label %33, !llvm.loop !9

60:                                               ; preds = %._crit_edge.1
  %61 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 20480000, i32 noundef %58) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %3, i8 -1, i64 1280004, i1 false)
  br label %62

62:                                               ; preds = %._crit_edge.2, %60
  %63 = phi i32 [ 2, %60 ], [ %88, %._crit_edge.2 ]
  %64 = phi i32 [ 0, %60 ], [ %87, %._crit_edge.2 ]
  %65 = lshr i32 %63, 5
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %66
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %63, 31
  %70 = shl nuw i32 1, %69
  %71 = and i32 %68, %70
  %.not2.2 = icmp eq i32 %71, 0
  br i1 %.not2.2, label %._crit_edge.2, label %72

72:                                               ; preds = %62
  %73 = add i32 %64, 1
  %74 = shl nuw i32 %63, 1
  %.not31.2 = icmp samesign ugt i32 %74, 10240000
  br i1 %.not31.2, label %._crit_edge.2, label %.lr.ph.preheader.2

.lr.ph.preheader.2:                               ; preds = %72
  br label %.lr.ph.2

.lr.ph.2:                                         ; preds = %85, %.lr.ph.preheader.2
  %75 = phi i32 [ %86, %85 ], [ %74, %.lr.ph.preheader.2 ]
  %76 = lshr i32 %75, 5
  %77 = zext nneg i32 %76 to i64
  %78 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %77
  %79 = load i32, ptr %78, align 4
  %80 = and i32 %75, 31
  %81 = shl nuw i32 1, %80
  %82 = and i32 %79, %81
  %.not4.2 = icmp eq i32 %82, 0
  br i1 %.not4.2, label %85, label %83

83:                                               ; preds = %.lr.ph.2
  %84 = xor i32 %79, %81
  store i32 %84, ptr %78, align 4
  br label %85

85:                                               ; preds = %83, %.lr.ph.2
  %86 = add nuw nsw i32 %75, %63
  %.not3.2 = icmp samesign ugt i32 %86, 10240000
  br i1 %.not3.2, label %._crit_edge.loopexit.2, label %.lr.ph.2, !llvm.loop !7

._crit_edge.loopexit.2:                           ; preds = %85
  br label %._crit_edge.2

._crit_edge.2:                                    ; preds = %._crit_edge.loopexit.2, %72, %62
  %87 = phi i32 [ %64, %62 ], [ %73, %72 ], [ %73, %._crit_edge.loopexit.2 ]
  %88 = add nuw nsw i32 %63, 1
  %exitcond.2 = icmp eq i32 %63, 10240000
  br i1 %exitcond.2, label %89, label %62, !llvm.loop !9

89:                                               ; preds = %._crit_edge.2
  %90 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 10240000, i32 noundef %87) #6
  call void @free(ptr noundef nonnull %3) #6
  br label %91

91:                                               ; preds = %89, %2
  %92 = phi i32 [ 0, %89 ], [ 1, %2 ]
  ret i32 %92
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
attributes #5 = { nounwind allocsize(0) }
attributes #6 = { nounwind }

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
