; ModuleID = 'results\paper_full\BenchmarkGame_nsieve-bits\round_008\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/nsieve-bits.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Primes up to %8d %8d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = call dereferenceable_or_null(5120004) ptr @malloc(i64 noundef 5120004) #5
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %89, label %.preheader.preheader

.preheader.preheader:                             ; preds = %2
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader
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
  br i1 %exitcond, label %.preheader.1, label %4, !llvm.loop !9

.preheader.1:                                     ; preds = %._crit_edge
  %31 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 40960000, i32 noundef %29) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %3, i8 -1, i64 2560004, i1 false)
  br label %32

32:                                               ; preds = %._crit_edge.1, %.preheader.1
  %33 = phi i32 [ 2, %.preheader.1 ], [ %58, %._crit_edge.1 ]
  %34 = phi i32 [ 0, %.preheader.1 ], [ %57, %._crit_edge.1 ]
  %35 = lshr i32 %33, 5
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %36
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %33, 31
  %40 = shl nuw i32 1, %39
  %41 = and i32 %38, %40
  %.not2.1 = icmp eq i32 %41, 0
  br i1 %.not2.1, label %._crit_edge.1, label %42

42:                                               ; preds = %32
  %43 = add i32 %34, 1
  %44 = shl nuw i32 %33, 1
  %.not31.1 = icmp samesign ugt i32 %44, 20480000
  br i1 %.not31.1, label %._crit_edge.1, label %.lr.ph.preheader.1

.lr.ph.preheader.1:                               ; preds = %42
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %55, %.lr.ph.preheader.1
  %45 = phi i32 [ %56, %55 ], [ %44, %.lr.ph.preheader.1 ]
  %46 = lshr i32 %45, 5
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %47
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %45, 31
  %51 = shl nuw i32 1, %50
  %52 = and i32 %49, %51
  %.not4.1 = icmp eq i32 %52, 0
  br i1 %.not4.1, label %55, label %53

53:                                               ; preds = %.lr.ph.1
  %54 = xor i32 %49, %51
  store i32 %54, ptr %48, align 4
  br label %55

55:                                               ; preds = %53, %.lr.ph.1
  %56 = add nuw nsw i32 %45, %33
  %.not3.1 = icmp samesign ugt i32 %56, 20480000
  br i1 %.not3.1, label %._crit_edge.loopexit.1, label %.lr.ph.1, !llvm.loop !7

._crit_edge.loopexit.1:                           ; preds = %55
  br label %._crit_edge.1

._crit_edge.1:                                    ; preds = %._crit_edge.loopexit.1, %42, %32
  %57 = phi i32 [ %34, %32 ], [ %43, %42 ], [ %43, %._crit_edge.loopexit.1 ]
  %58 = add nuw nsw i32 %33, 1
  %exitcond.1 = icmp eq i32 %33, 20480000
  br i1 %exitcond.1, label %.preheader.2, label %32, !llvm.loop !9

.preheader.2:                                     ; preds = %._crit_edge.1
  %59 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 20480000, i32 noundef %57) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %3, i8 -1, i64 1280004, i1 false)
  br label %60

60:                                               ; preds = %._crit_edge.2, %.preheader.2
  %61 = phi i32 [ 2, %.preheader.2 ], [ %86, %._crit_edge.2 ]
  %62 = phi i32 [ 0, %.preheader.2 ], [ %85, %._crit_edge.2 ]
  %63 = lshr i32 %61, 5
  %64 = zext nneg i32 %63 to i64
  %65 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %64
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %61, 31
  %68 = shl nuw i32 1, %67
  %69 = and i32 %66, %68
  %.not2.2 = icmp eq i32 %69, 0
  br i1 %.not2.2, label %._crit_edge.2, label %70

70:                                               ; preds = %60
  %71 = add i32 %62, 1
  %72 = shl nuw i32 %61, 1
  %.not31.2 = icmp samesign ugt i32 %72, 10240000
  br i1 %.not31.2, label %._crit_edge.2, label %.lr.ph.preheader.2

.lr.ph.preheader.2:                               ; preds = %70
  br label %.lr.ph.2

.lr.ph.2:                                         ; preds = %83, %.lr.ph.preheader.2
  %73 = phi i32 [ %84, %83 ], [ %72, %.lr.ph.preheader.2 ]
  %74 = lshr i32 %73, 5
  %75 = zext nneg i32 %74 to i64
  %76 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %75
  %77 = load i32, ptr %76, align 4
  %78 = and i32 %73, 31
  %79 = shl nuw i32 1, %78
  %80 = and i32 %77, %79
  %.not4.2 = icmp eq i32 %80, 0
  br i1 %.not4.2, label %83, label %81

81:                                               ; preds = %.lr.ph.2
  %82 = xor i32 %77, %79
  store i32 %82, ptr %76, align 4
  br label %83

83:                                               ; preds = %81, %.lr.ph.2
  %84 = add nuw nsw i32 %73, %61
  %.not3.2 = icmp samesign ugt i32 %84, 10240000
  br i1 %.not3.2, label %._crit_edge.loopexit.2, label %.lr.ph.2, !llvm.loop !7

._crit_edge.loopexit.2:                           ; preds = %83
  br label %._crit_edge.2

._crit_edge.2:                                    ; preds = %._crit_edge.loopexit.2, %70, %60
  %85 = phi i32 [ %62, %60 ], [ %71, %70 ], [ %71, %._crit_edge.loopexit.2 ]
  %86 = add nuw nsw i32 %61, 1
  %exitcond.2 = icmp eq i32 %61, 10240000
  br i1 %exitcond.2, label %87, label %60, !llvm.loop !9

87:                                               ; preds = %._crit_edge.2
  %88 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 10240000, i32 noundef %85) #6
  call void @free(ptr noundef nonnull %3) #6
  br label %89

89:                                               ; preds = %87, %2
  %90 = phi i32 [ 0, %87 ], [ 1, %2 ]
  ret i32 %90
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
