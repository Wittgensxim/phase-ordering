; ModuleID = 'results\paper_full\Shootout_ary3\round_001\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Shootout/ary3.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load ptr, ptr %5, align 8
  %7 = call i32 @atoi(ptr noundef %6) #4
  br label %9

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %8, %4
  %10 = phi i32 [ %7, %4 ], [ 1500000, %8 ]
  %11 = sext i32 %10 to i64
  %12 = call ptr @calloc(i64 noundef %11, i64 noundef 4) #5
  %13 = call ptr @calloc(i64 noundef %11, i64 noundef 4) #5
  %14 = icmp slt i32 0, %10
  br i1 %14, label %.lr.ph, label %49

.lr.ph:                                           ; preds = %9
  %15 = add i32 %10, -1
  %xtraiter = and i32 %10, 7
  %16 = icmp ult i32 %15, 7
  br i1 %16, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = sub i32 %10, %xtraiter
  br label %17

17:                                               ; preds = %17, %.lr.ph.new
  %18 = phi i32 [ 0, %.lr.ph.new ], [ %40, %17 ]
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.7, %17 ]
  %19 = add nuw nsw i32 %18, 1
  %20 = zext nneg i32 %18 to i64
  %21 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %20
  store i32 %19, ptr %21, align 4
  %22 = add nuw nsw i32 %18, 2
  %23 = zext nneg i32 %19 to i64
  %24 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %23
  store i32 %22, ptr %24, align 4
  %25 = add nuw nsw i32 %18, 3
  %26 = zext nneg i32 %22 to i64
  %27 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %26
  store i32 %25, ptr %27, align 4
  %28 = add nuw nsw i32 %18, 4
  %29 = zext nneg i32 %25 to i64
  %30 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %29
  store i32 %28, ptr %30, align 4
  %31 = add nuw nsw i32 %18, 5
  %32 = zext nneg i32 %28 to i64
  %33 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %32
  store i32 %31, ptr %33, align 4
  %34 = add nuw nsw i32 %18, 6
  %35 = zext nneg i32 %31 to i64
  %36 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %35
  store i32 %34, ptr %36, align 4
  %37 = add nuw nsw i32 %18, 7
  %38 = zext nneg i32 %34 to i64
  %39 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %38
  store i32 %37, ptr %39, align 4
  %40 = add nuw nsw i32 %18, 8
  %41 = zext nneg i32 %37 to i64
  %42 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %41
  store i32 %40, ptr %42, align 4
  %niter.next.7 = add i32 %niter, 8
  %niter.ncmp.7 = icmp ne i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %17, label %._crit_edge.unr-lcssa, !llvm.loop !7

._crit_edge.unr-lcssa:                            ; preds = %17
  %.unr = phi i32 [ %40, %17 ]
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.epil.init = phi i32 [ 0, %.lr.ph ], [ %.unr, %._crit_edge.unr-lcssa ]
  %lcmp.mod5 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod5)
  br label %43

43:                                               ; preds = %43, %.epil.preheader
  %44 = phi i32 [ %.epil.init, %.epil.preheader ], [ %45, %43 ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %43 ]
  %45 = add nuw nsw i32 %44, 1
  %46 = zext nneg i32 %44 to i64
  %47 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %46
  store i32 %45, ptr %47, align 4
  %48 = icmp slt i32 %45, %10
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp = icmp ne i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp, label %43, label %._crit_edge.epilog-lcssa, !llvm.loop !9

._crit_edge.epilog-lcssa:                         ; preds = %43
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  br label %49

49:                                               ; preds = %._crit_edge, %9
  %50 = add i32 %10, -1
  br label %51

51:                                               ; preds = %49, %78
  %52 = phi i32 [ 0, %49 ], [ %79, %78 ]
  %53 = icmp sgt i32 %10, 0
  br i1 %53, label %.lr.ph3, label %78

.lr.ph3:                                          ; preds = %51
  %xtraiter6 = and i32 %10, 1
  %lcmp.mod7 = icmp ne i32 %xtraiter6, 0
  br i1 %lcmp.mod7, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %.lr.ph3
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.prol.preheader
  %54 = add nsw i32 %10, -1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [4 x i8], ptr %12, i64 %55
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds [4 x i8], ptr %13, i64 %55
  %59 = load i32, ptr %58, align 4
  %60 = add nsw i32 %59, %57
  store i32 %60, ptr %58, align 4
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph3
  %.in1.unr = phi i32 [ %10, %.lr.ph3 ], [ %54, %.prol.loopexit.unr-lcssa ]
  %61 = icmp ult i32 %50, 1
  br i1 %61, label %._crit_edge4, label %.lr.ph3.new

.lr.ph3.new:                                      ; preds = %.prol.loopexit
  br label %62

62:                                               ; preds = %62, %.lr.ph3.new
  %.in1 = phi i32 [ %.in1.unr, %.lr.ph3.new ], [ %70, %62 ]
  %63 = add nsw i32 %.in1, -1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [4 x i8], ptr %12, i64 %64
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds [4 x i8], ptr %13, i64 %64
  %68 = load i32, ptr %67, align 4
  %69 = add nsw i32 %68, %66
  store i32 %69, ptr %67, align 4
  %70 = add nsw i32 %.in1, -2
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [4 x i8], ptr %12, i64 %71
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds [4 x i8], ptr %13, i64 %71
  %75 = load i32, ptr %74, align 4
  %76 = add nsw i32 %75, %73
  store i32 %76, ptr %74, align 4
  %77 = icmp sgt i32 %70, 0
  br i1 %77, label %62, label %._crit_edge4.unr-lcssa, !llvm.loop !11

._crit_edge4.unr-lcssa:                           ; preds = %62
  br label %._crit_edge4

._crit_edge4:                                     ; preds = %.prol.loopexit, %._crit_edge4.unr-lcssa
  br label %78

78:                                               ; preds = %._crit_edge4, %51
  %79 = add nuw nsw i32 %52, 1
  %80 = icmp samesign ult i32 %79, 1000
  br i1 %80, label %51, label %81, !llvm.loop !12

81:                                               ; preds = %78
  %82 = load i32, ptr %13, align 4
  %83 = getelementptr [4 x i8], ptr %13, i64 %11
  %84 = getelementptr i8, ptr %83, i64 -4
  %85 = load i32, ptr %84, align 4
  %86 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %82, i32 noundef %85) #4
  call void @free(ptr noundef %12) #4
  call void @free(ptr noundef nonnull %13) #4
  ret i32 0
}

declare dso_local i32 @atoi(ptr noundef) #1

; Function Attrs: allocsize(0,1)
declare dso_local ptr @calloc(i64 noundef, i64 noundef) #2

declare dso_local i32 @printf(ptr noundef, ...) #1

declare dso_local void @free(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Shootout/ary3.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
