; ModuleID = 'results\test_baseline_all\Stanford_Bubblesort\round_000\output.ll'
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

1:                                                ; preds = %0, %16
  %2 = phi i32 [ 1, %0 ], [ %17, %16 ]
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
  %18 = icmp samesign ult i32 %17, 501
  br i1 %18, label %1, label %19, !llvm.loop !7

19:                                               ; preds = %16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Bubble(i32 noundef %0) #0 {
  call void @bInitarr()
  store i32 500, ptr @top, align 4
  br label %2

2:                                                ; preds = %1, %39
  %indvar = phi i32 [ 0, %1 ], [ %indvar.next, %39 ]
  %storemerge1 = phi i32 [ 500, %1 ], [ %40, %39 ]
  %3 = mul nsw i32 %indvar, -1
  %4 = add i32 %3, 499
  %5 = add i32 %3, 498
  %xtraiter = and i32 %4, 1
  %6 = icmp ult i32 %5, 1
  br i1 %6, label %.epil.preheader, label %.new

.new:                                             ; preds = %2
  %unroll_iter = sub i32 %4, %xtraiter
  br label %7

7:                                                ; preds = %28, %.new
  %8 = phi i32 [ 1, %.new ], [ %22, %28 ]
  %niter = phi i32 [ 0, %.new ], [ %niter.next.1, %28 ]
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = add nuw nsw i32 %8, 1
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %11, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %7
  store i32 %15, ptr %10, align 4
  store i32 %11, ptr %14, align 4
  br label %18

18:                                               ; preds = %17, %7
  %19 = zext nneg i32 %12 to i64
  %20 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = add nuw nsw i32 %8, 2
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %23
  %25 = load i32, ptr %24, align 4
  %26 = icmp sgt i32 %21, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i32 %25, ptr %20, align 4
  store i32 %21, ptr %24, align 4
  br label %28

28:                                               ; preds = %27, %18
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp ne i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %7, label %.unr-lcssa, !llvm.loop !9

.unr-lcssa:                                       ; preds = %28
  %.unr = phi i32 [ %22, %28 ]
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %39

.epil.preheader:                                  ; preds = %.unr-lcssa, %2
  %.epil.init = phi i32 [ 1, %2 ], [ %.unr, %.unr-lcssa ]
  %lcmp.mod2 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod2)
  br label %29

29:                                               ; preds = %.epil.preheader
  %30 = zext nneg i32 %.epil.init to i64
  %31 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %30
  %32 = load i32, ptr %31, align 4
  %33 = add nuw nsw i32 %.epil.init, 1
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds nuw [4 x i8], ptr @sortlist, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = icmp sgt i32 %32, %36
  br i1 %37, label %38, label %.epilog-lcssa

38:                                               ; preds = %29
  store i32 %36, ptr %31, align 4
  store i32 %32, ptr %35, align 4
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %38, %29
  br label %39

39:                                               ; preds = %.unr-lcssa, %.epilog-lcssa
  %40 = add nsw i32 %storemerge1, -1
  store i32 %40, ptr @top, align 4
  %41 = icmp sgt i32 %40, 1
  %indvar.next = add i32 %indvar, 1
  br i1 %41, label %2, label %42, !llvm.loop !10

42:                                               ; preds = %39
  %43 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 4), align 4
  %44 = load i32, ptr @littlest, align 4
  %.not = icmp eq i32 %43, %44
  br i1 %.not, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, ptr getelementptr inbounds nuw (i8, ptr @sortlist, i64 2000), align 16
  %47 = load i32, ptr @biggest, align 4
  %.not1 = icmp eq i32 %46, %47
  br i1 %.not1, label %49, label %48

48:                                               ; preds = %45, %42
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %49

49:                                               ; preds = %48, %45
  %50 = sext i32 %0 to i64
  %51 = getelementptr [4 x i8], ptr @sortlist, i64 %50
  %52 = getelementptr i8, ptr %51, i64 4
  %53 = load i32, ptr %52, align 4
  %54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %53) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i32 [ 0, %0 ], [ %3, %1 ]
  call void @Bubble(i32 noundef %2)
  %3 = add nuw nsw i32 %2, 1
  %4 = icmp samesign ult i32 %3, 100
  br i1 %4, label %1, label %5, !llvm.loop !11

5:                                                ; preds = %1
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
