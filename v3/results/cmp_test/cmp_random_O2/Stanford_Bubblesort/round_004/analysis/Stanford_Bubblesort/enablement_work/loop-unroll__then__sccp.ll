; ModuleID = 'results\cmp_test\cmp_random_O2\Stanford_Bubblesort\round_003\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Bubblesort.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.element = type { i32, i32 }
%struct.complex = type { float, float }

@seed = dso_local global i32 0, align 4
@biggest = dso_local global i32 0, align 4
@littlest = dso_local global i32 0, align 4
@sortlist = dso_local global [5001 x i32] zeroinitializer, align 16
@top = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Error3 in Bubble.\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@value = dso_local global float 0.000000e+00, align 4
@fixed = dso_local global float 0.000000e+00, align 4
@floated = dso_local global float 0.000000e+00, align 4
@permarray = dso_local global [11 x i32] zeroinitializer, align 16
@pctr = dso_local global i32 0, align 4
@tree = dso_local global ptr null, align 8
@stack = dso_local global [4 x i32] zeroinitializer, align 16
@cellspace = dso_local global [19 x %struct.element] zeroinitializer, align 16
@freelist = dso_local global i32 0, align 4
@movesdone = dso_local global i32 0, align 4
@ima = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imb = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imr = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@rma = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmb = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmr = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@piececount = dso_local global [4 x i32] zeroinitializer, align 16
@class = dso_local global [13 x i32] zeroinitializer, align 16
@piecemax = dso_local global [13 x i32] zeroinitializer, align 16
@puzzl = dso_local global [512 x i32] zeroinitializer, align 16
@p = dso_local global [13 x [512 x i32]] zeroinitializer, align 16
@n = dso_local global i32 0, align 4
@kount = dso_local global i32 0, align 4
@z = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@w = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@e = dso_local global [130 x %struct.complex] zeroinitializer, align 16
@zr = dso_local global float 0.000000e+00, align 4
@zi = dso_local global float 0.000000e+00, align 4
@str = private unnamed_addr constant [18 x i8] c"Error3 in Bubble.\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Initrand() #0 {
  store i32 74755, ptr @seed, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 65536) i32 @Rand() #0 {
  %1 = load i32, ptr @seed, align 4
  %2 = mul nsw i32 %1, 1309
  %3 = add nsw i32 %2, 13849
  %4 = and i32 %3, 65535
  store i32 %4, ptr @seed, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bInitarr() #0 {
  call void @Initrand()
  store i32 0, ptr @biggest, align 4
  store i32 0, ptr @littlest, align 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %0
  br label %1

1:                                                ; preds = %16, %.lr.ph
  %2 = phi i32 [ %17, %16 ], [ 1, %.lr.ph ]
  %3 = call i32 @Rand()
  %.fr = freeze i32 %3
  %4 = srem i32 %.fr, 100000
  %5 = add nsw i32 %4, -50000
  %6 = zext nneg i32 %2 to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %6
  store i32 %5, ptr %7, align 4
  %8 = load i32, ptr @biggest, align 4
  %9 = icmp sgt i32 %5, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 %5, ptr @biggest, align 4
  br label %16

11:                                               ; preds = %1
  %12 = load i32, ptr @littlest, align 4
  %13 = icmp slt i32 %5, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 %5, ptr @littlest, align 4
  br label %15

15:                                               ; preds = %14, %11
  br label %16

16:                                               ; preds = %15, %10
  %17 = add nuw nsw i32 %2, 1
  %18 = icmp samesign ult i32 %2, 500
  br i1 %18, label %1, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %16
  br label %19

19:                                               ; preds = %._crit_edge
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Bubble(i32 noundef %0) #0 {
  call void @bInitarr()
  store i32 500, ptr @top, align 4
  br label %.lr.ph2

.lr.ph2:                                          ; preds = %1
  br label %2

2:                                                ; preds = %41, %.lr.ph2
  %indvar = phi i32 [ %indvar.next, %41 ], [ 0, %.lr.ph2 ]
  %3 = phi i32 [ %42, %41 ], [ 500, %.lr.ph2 ]
  %4 = mul nsw i32 %indvar, -1
  %5 = add i32 %4, 499
  %6 = add i32 %4, 498
  %7 = icmp samesign ugt i32 %3, 1
  br i1 %7, label %.lr.ph, label %41

.lr.ph:                                           ; preds = %2
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4
  %xtraiter = and i32 %5, 1
  %8 = icmp ult i32 %6, 1
  br i1 %8, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = sub i32 %5, %xtraiter
  br label %9

9:                                                ; preds = %30, %.lr.ph.new
  %10 = phi i32 [ %.pre, %.lr.ph.new ], [ %31, %30 ]
  %11 = phi i32 [ 1, %.lr.ph.new ], [ %22, %30 ]
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %30 ]
  %12 = add nuw nsw i32 %11, 1
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %10, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = zext nneg i32 %11 to i64
  %19 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %18
  store i32 %15, ptr %19, align 4
  store i32 %10, ptr %14, align 4
  br label %20

20:                                               ; preds = %17, %9
  %21 = phi i32 [ %10, %17 ], [ %15, %9 ]
  %22 = add nuw nsw i32 %11, 2
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %23
  %25 = load i32, ptr %24, align 4
  %26 = icmp sgt i32 %21, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = zext nneg i32 %12 to i64
  %29 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %28
  store i32 %25, ptr %29, align 4
  store i32 %21, ptr %24, align 4
  br label %30

30:                                               ; preds = %27, %20
  %31 = phi i32 [ %21, %27 ], [ %25, %20 ]
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp ne i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %9, label %._crit_edge.unr-lcssa, !llvm.loop !9

._crit_edge.unr-lcssa:                            ; preds = %30
  %.unr = phi i32 [ %31, %30 ]
  %.unr1 = phi i32 [ %22, %30 ]
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.epil.init = phi i32 [ %.pre, %.lr.ph ], [ %.unr, %._crit_edge.unr-lcssa ]
  %.epil.init2 = phi i32 [ 1, %.lr.ph ], [ %.unr1, %._crit_edge.unr-lcssa ]
  %lcmp.mod3 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod3)
  br label %32

32:                                               ; preds = %.epil.preheader
  %33 = add nuw nsw i32 %.epil.init2, 1
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = icmp sgt i32 %.epil.init, %36
  br i1 %37, label %38, label %._crit_edge.epilog-lcssa

38:                                               ; preds = %32
  %39 = zext nneg i32 %.epil.init2 to i64
  %40 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %39
  store i32 %36, ptr %40, align 4
  store i32 %.epil.init, ptr %35, align 4
  br label %._crit_edge.epilog-lcssa

._crit_edge.epilog-lcssa:                         ; preds = %38, %32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  br label %41

41:                                               ; preds = %._crit_edge, %2
  %42 = add nsw i32 %3, -1
  %43 = icmp sgt i32 %3, 2
  %indvar.next = add i32 %indvar, 1
  br i1 %43, label %2, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %41
  %.lcssa = phi i32 [ %42, %41 ]
  store i32 %.lcssa, ptr @top, align 4
  br label %44

44:                                               ; preds = %._crit_edge3
  %45 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4
  %46 = load i32, ptr @littlest, align 4
  %.not = icmp eq i32 %45, %46
  br i1 %.not, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 2000), align 16
  %49 = load i32, ptr @biggest, align 4
  %.not2 = icmp eq i32 %48, %49
  br i1 %.not2, label %51, label %50

50:                                               ; preds = %47, %44
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %51

51:                                               ; preds = %50, %47
  %52 = sext i32 %0 to i64
  %53 = getelementptr [4 x i8], ptr @sortlist, i64 %52
  %54 = getelementptr i8, ptr %53, i64 4
  %55 = load i32, ptr %54, align 4
  %56 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %55) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %.lr.ph

.lr.ph:                                           ; preds = %0
  br label %1

1:                                                ; preds = %1, %.lr.ph
  %2 = phi i32 [ %3, %1 ], [ 0, %.lr.ph ]
  call void @Bubble(i32 noundef %2)
  %3 = add nuw nsw i32 %2, 1
  %4 = icmp samesign ult i32 %2, 99
  br i1 %4, label %1, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %1
  br label %5

5:                                                ; preds = %._crit_edge
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Bubblesort.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
