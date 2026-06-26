; ModuleID = 'results\paper_full\Dhrystone_dry\round_003\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Dhrystone/dry.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@Version = dso_local global [4 x i8] c"1.1\00", align 1
@PtrGlbNext = dso_local global ptr null, align 8
@PtrGlb = dso_local global ptr null, align 8
@.str = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, SOME STRING\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 1'ST STRING\00", align 1
@Array2Glob = dso_local global [51 x [51 x i32]] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 2'ND STRING\00", align 1
@BoolGlob = dso_local global i32 0, align 4
@Array1Glob = dso_local global [51 x i32] zeroinitializer, align 16
@Char2Glob = dso_local global i8 0, align 1
@Char1Glob = dso_local global i8 0, align 1
@IntGlob = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 @Proc0()
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc0() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [31 x i8], align 16
  %5 = alloca [31 x i8], align 16
  %6 = call i32 @clock() #6
  br i1 false, label %7, label %8

7:                                                ; preds = %0
  unreachable

8:                                                ; preds = %0
  %9 = call i32 @clock() #6
  %10 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #7
  store ptr %10, ptr @PtrGlbNext, align 8
  %11 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #7
  store ptr %11, ptr @PtrGlb, align 8
  %12 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %12, ptr %11, align 8
  %13 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 0, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 10001, ptr %14, align 4
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 40, ptr %15, align 8
  %16 = getelementptr inbounds nuw i8, ptr %11, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %16, ptr noundef nonnull align 1 dereferenceable(31) @.str, i64 31, i1 false) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %4, ptr noundef nonnull align 1 dereferenceable(31) @.str.1, i64 31, i1 false) #6
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %17 = call i32 @clock() #6
  br label %18

18:                                               ; preds = %49, %8
  %.1 = phi i32 [ 0, %8 ], [ %53, %49 ]
  %exitcond.not = icmp eq i32 %.1, 100000000
  br i1 %exitcond.not, label %54, label %19

19:                                               ; preds = %18
  %20 = call i32 @Proc5()
  %21 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %5, ptr noundef nonnull align 1 dereferenceable(31) @.str.2, i64 31, i1 false) #6
  store i32 10000, ptr %3, align 4
  %22 = call i32 @Func2(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %.not = icmp eq i32 %22, 0
  %23 = zext i1 %.not to i32
  store i32 %23, ptr @BoolGlob, align 4
  %.pre = load i32, ptr %1, align 4
  br label %24

24:                                               ; preds = %27, %19
  %25 = phi i32 [ %32, %27 ], [ %.pre, %19 ]
  %26 = icmp slt i32 %25, 3
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = mul nsw i32 %25, 5
  %29 = add nsw i32 %28, -3
  store i32 %29, ptr %2, align 4
  %30 = call i32 @Proc7(i32 noundef %25, i32 noundef 3, ptr noundef nonnull %2)
  %31 = load i32, ptr %1, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %1, align 4
  br label %24, !llvm.loop !7

33:                                               ; preds = %24
  %34 = load i32, ptr %2, align 4
  %35 = call i32 @Proc8(ptr noundef nonnull @Array1Glob, ptr noundef nonnull @Array2Glob, i32 noundef %25, i32 noundef %34)
  %36 = load ptr, ptr @PtrGlb, align 8
  %37 = call i32 @Proc1(ptr noundef %36)
  br label %38

38:                                               ; preds = %47, %33
  %.01 = phi i8 [ 65, %33 ], [ %48, %47 ]
  %39 = load i8, ptr @Char2Glob, align 1
  %.not1 = icmp sgt i8 %.01, %39
  br i1 %.not1, label %49, label %40

40:                                               ; preds = %38
  %41 = load i32, ptr %3, align 4
  %42 = sext i8 %.01 to i32
  %43 = call i32 @Func1(i32 noundef %42, i32 noundef 67)
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = call i32 @Proc6(i32 noundef 0, ptr noundef nonnull %3)
  br label %47

47:                                               ; preds = %45, %40
  %48 = add i8 %.01, 1
  br label %38, !llvm.loop !9

49:                                               ; preds = %38
  %50 = load i32, ptr %1, align 4
  %51 = mul nsw i32 %50, 3
  store i32 %51, ptr %2, align 4
  %52 = call i32 @Proc2(ptr noundef nonnull %1)
  %53 = add nuw nsw i32 %.1, 1
  br label %18, !llvm.loop !10

54:                                               ; preds = %18
  ret i32 undef
}

declare dso_local i32 @clock() #1

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare dso_local ptr @strcpy(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc1(ptr noundef %0) #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 5, ptr %2, align 8
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 5, ptr %4, align 8
  %5 = load ptr, ptr %0, align 8
  store ptr %5, ptr %5, align 8
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc2(ptr noundef %0) #0 {
  %.pre = load i8, ptr @Char1Glob, align 1
  %2 = icmp eq i8 %.pre, 65
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 4
  %5 = add nsw i32 %4, 9
  %6 = load i32, ptr @IntGlob, align 4
  %7 = sub nsw i32 %5, %6
  store i32 %7, ptr %0, align 4
  br label %8

8:                                                ; preds = %3, %1
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc3(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PtrGlb, align 8, !nonnull !11, !noundef !11
  %3 = load ptr, ptr %2, align 8
  store ptr %3, ptr %0, align 8
  %.pre = load i32, ptr @IntGlob, align 4
  %.pre1 = load ptr, ptr @PtrGlb, align 8
  %4 = getelementptr inbounds nuw i8, ptr %.pre1, i64 16
  %5 = call i32 @Proc7(i32 noundef 10, i32 noundef %.pre, ptr noundef nonnull %4)
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc4() #0 {
  store i8 66, ptr @Char2Glob, align 1
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc5() #0 {
  store i8 65, ptr @Char1Glob, align 1
  store i32 0, ptr @BoolGlob, align 4
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc6(i32 noundef %0, ptr noundef %1) #0 {
  store i32 %0, ptr %1, align 4
  %3 = call i32 @Func3(i32 noundef %0)
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %4, label %5

4:                                                ; preds = %2
  store i32 10002, ptr %1, align 4
  br label %5

5:                                                ; preds = %4, %2
  switch i32 %0, label %12 [
    i32 0, label %6
    i32 10000, label %7
    i32 10001, label %10
    i32 10003, label %11
  ]

6:                                                ; preds = %5
  store i32 0, ptr %1, align 4
  br label %12

7:                                                ; preds = %5
  %8 = load i32, ptr @IntGlob, align 4
  %9 = icmp sgt i32 %8, 100
  %. = select i1 %9, i32 0, i32 10002
  store i32 %., ptr %1, align 4
  br label %12

10:                                               ; preds = %5
  store i32 10000, ptr %1, align 4
  br label %12

11:                                               ; preds = %5
  store i32 10001, ptr %1, align 4
  br label %12

12:                                               ; preds = %11, %10, %7, %6, %5
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc7(i32 noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = add nsw i32 %0, 2
  %5 = add nsw i32 %1, %4
  store i32 %5, ptr %2, align 4
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc8(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = add nsw i32 %2, 5
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [4 x i8], ptr %0, i64 %6
  store i32 %3, ptr %7, align 4
  %8 = sext i32 %2 to i64
  %9 = getelementptr [4 x i8], ptr %0, i64 %8
  %10 = getelementptr i8, ptr %9, i64 24
  store i32 %3, ptr %10, align 4
  %11 = getelementptr i8, ptr %9, i64 140
  store i32 %5, ptr %11, align 4
  %12 = add nsw i64 %8, 5
  %13 = add i32 %2, 7
  %wide.trip.count = sext i32 %13 to i64
  br label %14

14:                                               ; preds = %15, %4
  %indvars.iv = phi i64 [ %indvars.iv.next, %15 ], [ %12, %4 ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %18, label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds [204 x i8], ptr %1, i64 %6
  %17 = getelementptr inbounds [4 x i8], ptr %16, i64 %indvars.iv
  store i32 %5, ptr %17, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %14, !llvm.loop !12

18:                                               ; preds = %14
  %19 = getelementptr inbounds [204 x i8], ptr %1, i64 %6
  %20 = getelementptr [4 x i8], ptr %19, i64 %8
  %21 = getelementptr i8, ptr %20, i64 16
  %22 = load i32, ptr %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %21, align 4
  %24 = load i32, ptr %7, align 4
  %25 = getelementptr [204 x i8], ptr %1, i64 %8
  %26 = getelementptr i8, ptr %25, i64 5100
  %27 = getelementptr inbounds [4 x i8], ptr %26, i64 %6
  store i32 %24, ptr %27, align 4
  store i32 5, ptr @IntGlob, align 4
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func1(i32 noundef %0, i32 noundef %1) #0 {
  %.not.unshifted = xor i32 %0, %1
  %.not.mask = and i32 %.not.unshifted, 255
  %.not = icmp eq i32 %.not.mask, 0
  %. = select i1 %.not, i32 10000, i32 0
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func2(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %5, %2
  %.01 = phi i32 [ 1, %2 ], [ %spec.select, %5 ]
  %4 = icmp samesign ult i32 %.01, 2
  br i1 %4, label %5, label %17

5:                                                ; preds = %3
  %6 = zext nneg i32 %.01 to i64
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 %6
  %8 = load i8, ptr %7, align 1
  %9 = sext i8 %8 to i32
  %10 = getelementptr i8, ptr %1, i64 %6
  %11 = getelementptr i8, ptr %10, i64 1
  %12 = load i8, ptr %11, align 1
  %13 = sext i8 %12 to i32
  %14 = call i32 @Func1(i32 noundef %9, i32 noundef %13)
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %spec.select = add nuw nsw i32 %.01, %16
  br label %3, !llvm.loop !13

17:                                               ; preds = %3
  %18 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #6
  %19 = icmp sgt i32 %18, 0
  %. = zext i1 %19 to i32
  ret i32 %.
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func3(i32 noundef %0) #0 {
  %2 = icmp eq i32 %0, 10001
  %. = zext i1 %2 to i32
  ret i32 %.
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Dhrystone/dry.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = !{}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
