; ModuleID = 'results\cmp_test\cmp_oracle_O2\Stanford_Bubblesort\round_002\output.ll'
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
define dso_local i32 @Rand() #0 {
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
  br label %1

1:                                                ; preds = %14, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %14 ], [ 1, %0 ]
  %2 = call i32 @Rand()
  %.fr = freeze i32 %2
  %3 = srem i32 %.fr, 100000
  %4 = add nsw i32 %3, -50000
  %5 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %indvars.iv
  store i32 %4, ptr %5, align 4
  %6 = load i32, ptr @biggest, align 4
  %7 = icmp sgt i32 %4, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 %4, ptr @biggest, align 4
  br label %14

9:                                                ; preds = %1
  %10 = load i32, ptr @littlest, align 4
  %11 = icmp slt i32 %4, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 %4, ptr @littlest, align 4
  br label %13

13:                                               ; preds = %12, %9
  br label %14

14:                                               ; preds = %13, %8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 501
  br i1 %exitcond.not, label %15, label %1, !llvm.loop !7

15:                                               ; preds = %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Bubble(i32 noundef %0) #0 {
  call void @bInitarr()
  br label %2

2:                                                ; preds = %28, %1
  %indvar = phi i64 [ %indvar.next, %28 ], [ 0, %1 ]
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %28 ], [ 500, %1 ]
  %3 = sub i64 499, %indvar
  %xtraiter = and i64 %3, 1
  %4 = icmp eq i64 %indvar, 498
  br i1 %4, label %.epil.preheader, label %.new

.new:                                             ; preds = %2
  %unroll_iter = and i64 %3, -2
  br label %5

5:                                                ; preds = %19, %.new
  %indvars.iv = phi i64 [ 1, %.new ], [ %indvars.iv.next.1, %19 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %19 ]
  %6 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %indvars.iv
  %7 = load i32, ptr %6, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %8 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %indvars.iv.next
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  store i32 %9, ptr %6, align 4
  store i32 %7, ptr %8, align 4
  br label %12

12:                                               ; preds = %11, %5
  %13 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %indvars.iv.next
  %14 = load i32, ptr %13, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %15 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %indvars.iv.next.1
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 %16, ptr %13, align 4
  store i32 %14, ptr %15, align 4
  br label %19

19:                                               ; preds = %18, %12
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.unr-lcssa, label %5, !llvm.loop !9

.unr-lcssa:                                       ; preds = %19
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %28, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %2
  %indvars.iv.epil.init = phi i64 [ 1, %2 ], [ %indvars.iv.next.1, %.unr-lcssa ]
  %lcmp.mod1 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod1)
  br label %20

20:                                               ; preds = %.epil.preheader
  %21 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %indvars.iv.epil.init
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %indvars.iv.epil.init
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 4
  %25 = load i32, ptr %24, align 4
  %26 = icmp sgt i32 %22, %25
  br i1 %26, label %27, label %.epilog-lcssa

27:                                               ; preds = %20
  store i32 %25, ptr %21, align 4
  store i32 %22, ptr %24, align 4
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %27, %20
  br label %28

28:                                               ; preds = %.unr-lcssa, %.epilog-lcssa
  %indvars.iv.next3 = add nsw i64 %indvars.iv2, -1
  %29 = icmp sgt i64 %indvars.iv2, 2
  %indvar.next = add i64 %indvar, 1
  br i1 %29, label %2, label %30, !llvm.loop !10

30:                                               ; preds = %28
  store i32 1, ptr @top, align 4
  %31 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4
  %32 = load i32, ptr @littlest, align 4
  %.not = icmp eq i32 %31, %32
  br i1 %.not, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 2000), align 16
  %35 = load i32, ptr @biggest, align 4
  %.not1 = icmp eq i32 %34, %35
  br i1 %.not1, label %37, label %36

36:                                               ; preds = %33, %30
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %37

37:                                               ; preds = %36, %33
  %38 = sext i32 %0 to i64
  %39 = getelementptr [4 x i8], ptr @sortlist, i64 %38
  %40 = getelementptr i8, ptr %39, i64 4
  %41 = load i32, ptr %40, align 4
  %42 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %41) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i32 [ 0, %0 ], [ %3, %1 ]
  call void @Bubble(i32 noundef %2)
  %3 = add nuw nsw i32 %2, 1
  %exitcond.not = icmp eq i32 %3, 100
  br i1 %exitcond.not, label %4, label %1, !llvm.loop !11

4:                                                ; preds = %1
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
