; ModuleID = 'results\paper_round2\Stanford_Perm\round_000\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Perm.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.element = type { i32, i32 }
%struct.complex = type { float, float }

@seed = dso_local global i32 0, align 4
@permarray = dso_local global [11 x i32] zeroinitializer, align 16
@pctr = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c" Error in Perm.\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@value = dso_local global float 0.000000e+00, align 4
@fixed = dso_local global float 0.000000e+00, align 4
@floated = dso_local global float 0.000000e+00, align 4
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
@sortlist = dso_local global [5001 x i32] zeroinitializer, align 16
@biggest = dso_local global i32 0, align 4
@littlest = dso_local global i32 0, align 4
@top = dso_local global i32 0, align 4
@z = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@w = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@e = dso_local global [130 x %struct.complex] zeroinitializer, align 16
@zr = dso_local global float 0.000000e+00, align 4
@zi = dso_local global float 0.000000e+00, align 4
@str = private unnamed_addr constant [16 x i8] c" Error in Perm.\00", align 1

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
define dso_local void @Swap(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = load i32, ptr %1, align 4
  store i32 %4, ptr %0, align 4
  store i32 %3, ptr %1, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Initialize() #0 {
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @permarray, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @permarray, i64 8), align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @permarray, i64 12), align 4
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @permarray, i64 16), align 4
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @permarray, i64 20), align 4
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @permarray, i64 24), align 4
  store i32 6, ptr getelementptr inbounds nuw (i8, ptr @permarray, i64 28), align 4
  br i1 false, label %1, label %2

1:                                                ; preds = %0
  store i32 7, ptr getelementptr inbounds nuw (i8, ptr @permarray, i64 32), align 4
  unreachable

2:                                                ; preds = %0
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Permute(i32 noundef %0) #0 {
  %2 = load i32, ptr @pctr, align 4
  %3 = add i32 %2, 1
  store i32 %3, ptr @pctr, align 4
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %16, label %4

4:                                                ; preds = %1
  %5 = add nsw i32 %0, -1
  call void @Permute(i32 noundef %5)
  br label %6

6:                                                ; preds = %9, %4
  %7 = phi i32 [ %14, %9 ], [ %5, %4 ]
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = sext i32 %0 to i64
  %11 = getelementptr inbounds [4 x i8], ptr @permarray, i64 %10
  %12 = zext nneg i32 %7 to i64
  %13 = getelementptr inbounds nuw [4 x i8], ptr @permarray, i64 %12
  call void @Swap(ptr noundef nonnull %11, ptr noundef nonnull %13)
  call void @Permute(i32 noundef %5)
  call void @Swap(ptr noundef nonnull %11, ptr noundef nonnull %13)
  %14 = add nsw i32 %7, -1
  br label %6, !llvm.loop !7

15:                                               ; preds = %6
  br label %16

16:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Perm() #0 {
  store i32 0, ptr @pctr, align 4
  call void @Initialize()
  call void @Permute(i32 noundef 7)
  call void @Initialize()
  call void @Permute(i32 noundef 7)
  call void @Initialize()
  call void @Permute(i32 noundef 7)
  call void @Initialize()
  call void @Permute(i32 noundef 7)
  call void @Initialize()
  call void @Permute(i32 noundef 7)
  br i1 false, label %1, label %2

1:                                                ; preds = %0
  call void @Initialize()
  call void @Permute(i32 noundef 7)
  unreachable

2:                                                ; preds = %0
  %3 = load i32, ptr @pctr, align 4
  %.not = icmp eq i32 %3, 43300
  br i1 %.not, label %5, label %4

4:                                                ; preds = %2
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @pctr, align 4
  br label %5

5:                                                ; preds = %4, %2
  %6 = phi i32 [ %.pre, %4 ], [ 43300, %2 ]
  %7 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %6) #3
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i32 [ %5, %4 ], [ 0, %0 ]
  %3 = icmp samesign ult i32 %2, 100
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  call void @Perm()
  %5 = add nuw nsw i32 %2, 1
  br label %1, !llvm.loop !9

6:                                                ; preds = %1
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #2

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Perm.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
