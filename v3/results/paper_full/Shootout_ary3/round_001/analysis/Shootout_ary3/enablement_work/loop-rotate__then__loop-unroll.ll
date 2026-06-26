; ModuleID = 'results\paper_full\Shootout_ary3\round_000\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Shootout/ary3.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = icmp eq i32 %0, 2
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %7 = load ptr, ptr %6, align 8
  %8 = call i32 @atoi(ptr noundef %7) #4
  br label %10

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi i32 [ %8, %5 ], [ 1500000, %9 ]
  %12 = sext i32 %11 to i64
  %13 = call ptr @calloc(i64 noundef %12, i64 noundef 4) #5
  %14 = call ptr @calloc(i64 noundef %12, i64 noundef 4) #5
  store ptr %14, ptr %3, align 8
  %15 = icmp slt i32 0, %11
  br i1 %15, label %.lr.ph, label %50

.lr.ph:                                           ; preds = %10
  %16 = add i32 %11, -1
  %xtraiter = and i32 %11, 7
  %17 = icmp ult i32 %16, 7
  br i1 %17, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = sub i32 %11, %xtraiter
  br label %18

18:                                               ; preds = %18, %.lr.ph.new
  %19 = phi i32 [ 0, %.lr.ph.new ], [ %41, %18 ]
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.7, %18 ]
  %20 = add nuw nsw i32 %19, 1
  %21 = zext nneg i32 %19 to i64
  %22 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %21
  store i32 %20, ptr %22, align 4
  %23 = add nuw nsw i32 %19, 2
  %24 = zext nneg i32 %20 to i64
  %25 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %24
  store i32 %23, ptr %25, align 4
  %26 = add nuw nsw i32 %19, 3
  %27 = zext nneg i32 %23 to i64
  %28 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %27
  store i32 %26, ptr %28, align 4
  %29 = add nuw nsw i32 %19, 4
  %30 = zext nneg i32 %26 to i64
  %31 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %30
  store i32 %29, ptr %31, align 4
  %32 = add nuw nsw i32 %19, 5
  %33 = zext nneg i32 %29 to i64
  %34 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %33
  store i32 %32, ptr %34, align 4
  %35 = add nuw nsw i32 %19, 6
  %36 = zext nneg i32 %32 to i64
  %37 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %36
  store i32 %35, ptr %37, align 4
  %38 = add nuw nsw i32 %19, 7
  %39 = zext nneg i32 %35 to i64
  %40 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %39
  store i32 %38, ptr %40, align 4
  %41 = add nuw nsw i32 %19, 8
  %42 = zext nneg i32 %38 to i64
  %43 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %42
  store i32 %41, ptr %43, align 4
  %niter.next.7 = add i32 %niter, 8
  %niter.ncmp.7 = icmp ne i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %18, label %._crit_edge.unr-lcssa, !llvm.loop !7

._crit_edge.unr-lcssa:                            ; preds = %18
  %.unr = phi i32 [ %41, %18 ]
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.epil.init = phi i32 [ 0, %.lr.ph ], [ %.unr, %._crit_edge.unr-lcssa ]
  %lcmp.mod5 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod5)
  br label %44

44:                                               ; preds = %44, %.epil.preheader
  %45 = phi i32 [ %.epil.init, %.epil.preheader ], [ %46, %44 ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %44 ]
  %46 = add nuw nsw i32 %45, 1
  %47 = zext nneg i32 %45 to i64
  %48 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %47
  store i32 %46, ptr %48, align 4
  %49 = icmp slt i32 %46, %11
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp = icmp ne i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp, label %44, label %._crit_edge.epilog-lcssa, !llvm.loop !9

._crit_edge.epilog-lcssa:                         ; preds = %44
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  br label %50

50:                                               ; preds = %._crit_edge, %10
  %51 = add i32 %11, -1
  br label %52

52:                                               ; preds = %50, %79
  %53 = phi i32 [ 0, %50 ], [ %80, %79 ]
  %54 = icmp sgt i32 %11, 0
  br i1 %54, label %.lr.ph3, label %79

.lr.ph3:                                          ; preds = %52
  %xtraiter6 = and i32 %11, 1
  %lcmp.mod7 = icmp ne i32 %xtraiter6, 0
  br i1 %lcmp.mod7, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %.lr.ph3
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.prol.preheader
  %55 = add nsw i32 %11, -1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [4 x i8], ptr %13, i64 %56
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds [4 x i8], ptr %14, i64 %56
  %60 = load i32, ptr %59, align 4
  %61 = add nsw i32 %60, %58
  store i32 %61, ptr %59, align 4
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph3
  %.in1.unr = phi i32 [ %11, %.lr.ph3 ], [ %55, %.prol.loopexit.unr-lcssa ]
  %62 = icmp ult i32 %51, 1
  br i1 %62, label %._crit_edge4, label %.lr.ph3.new

.lr.ph3.new:                                      ; preds = %.prol.loopexit
  br label %63

63:                                               ; preds = %63, %.lr.ph3.new
  %.in1 = phi i32 [ %.in1.unr, %.lr.ph3.new ], [ %71, %63 ]
  %64 = add nsw i32 %.in1, -1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [4 x i8], ptr %13, i64 %65
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds [4 x i8], ptr %14, i64 %65
  %69 = load i32, ptr %68, align 4
  %70 = add nsw i32 %69, %67
  store i32 %70, ptr %68, align 4
  %71 = add nsw i32 %.in1, -2
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [4 x i8], ptr %13, i64 %72
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr inbounds [4 x i8], ptr %14, i64 %72
  %76 = load i32, ptr %75, align 4
  %77 = add nsw i32 %76, %74
  store i32 %77, ptr %75, align 4
  %78 = icmp sgt i32 %71, 0
  br i1 %78, label %63, label %._crit_edge4.unr-lcssa, !llvm.loop !11

._crit_edge4.unr-lcssa:                           ; preds = %63
  br label %._crit_edge4

._crit_edge4:                                     ; preds = %.prol.loopexit, %._crit_edge4.unr-lcssa
  br label %79

79:                                               ; preds = %._crit_edge4, %52
  %80 = add nuw nsw i32 %53, 1
  %81 = icmp samesign ult i32 %80, 1000
  br i1 %81, label %52, label %82, !llvm.loop !12

82:                                               ; preds = %79
  %83 = load i32, ptr %14, align 4
  %84 = sext i32 %11 to i64
  %85 = getelementptr [4 x i8], ptr %14, i64 %84
  %86 = getelementptr i8, ptr %85, i64 -4
  %87 = load i32, ptr %86, align 4
  %88 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %83, i32 noundef %87) #4
  call void @free(ptr noundef %13) #4
  %89 = load ptr, ptr %3, align 8
  call void @free(ptr noundef %89) #4
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
