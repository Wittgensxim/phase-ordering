; ModuleID = 'results\cmp_test\cmp_random_O2\Dhrystone_dry\round_000\output.ll'
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
  %6 = call i32 @clock() #5
  br label %7

7:                                                ; preds = %9, %0
  %8 = phi i32 [ %10, %9 ], [ 0, %0 ]
  %exitcond.not = icmp eq i32 %8, 100000000
  br i1 %exitcond.not, label %11, label %9

9:                                                ; preds = %7
  %10 = add nuw nsw i32 %8, 1
  br label %7, !llvm.loop !7

11:                                               ; preds = %7
  %12 = call i32 @clock() #5
  %13 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #6
  store ptr %13, ptr @PtrGlbNext, align 8
  %14 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #6
  store ptr %14, ptr @PtrGlb, align 8
  %15 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %15, ptr %14, align 8
  %16 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 0, ptr %16, align 8
  %17 = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 10001, ptr %17, align 4
  %18 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 40, ptr %18, align 8
  %19 = getelementptr inbounds nuw i8, ptr %14, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %19, ptr noundef nonnull align 1 dereferenceable(31) @.str, i64 31, i1 false) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %4, ptr noundef nonnull align 1 dereferenceable(31) @.str.1, i64 31, i1 false) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %20 = call i32 @clock() #5
  br label %21

21:                                               ; preds = %54, %11
  %22 = phi i32 [ %58, %54 ], [ 0, %11 ]
  %exitcond1.not = icmp eq i32 %22, 100000000
  br i1 %exitcond1.not, label %59, label %23

23:                                               ; preds = %21
  %24 = call i32 @Proc5()
  %25 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %5, ptr noundef nonnull align 1 dereferenceable(31) @.str.2, i64 31, i1 false) #5
  store i32 10000, ptr %3, align 4
  %26 = call i32 @Func2(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %.not = icmp eq i32 %26, 0
  %27 = zext i1 %.not to i32
  store i32 %27, ptr @BoolGlob, align 4
  %.pre = load i32, ptr %1, align 4
  br label %28

28:                                               ; preds = %31, %23
  %29 = phi i32 [ %36, %31 ], [ %.pre, %23 ]
  %30 = icmp slt i32 %29, 3
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = mul nsw i32 %29, 5
  %33 = add nsw i32 %32, -3
  store i32 %33, ptr %2, align 4
  %34 = call i32 @Proc7(i32 noundef %29, i32 noundef 3, ptr noundef nonnull %2)
  %35 = load i32, ptr %1, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %1, align 4
  br label %28, !llvm.loop !9

37:                                               ; preds = %28
  %38 = load i32, ptr %2, align 4
  %39 = call i32 @Proc8(ptr noundef nonnull @Array1Glob, ptr noundef nonnull @Array2Glob, i32 noundef %29, i32 noundef %38)
  %40 = load ptr, ptr @PtrGlb, align 8
  %41 = call i32 @Proc1(ptr noundef %40)
  br label %42

42:                                               ; preds = %52, %37
  %43 = phi i8 [ %53, %52 ], [ 65, %37 ]
  %44 = load i8, ptr @Char2Glob, align 1
  %.not2 = icmp sgt i8 %43, %44
  br i1 %.not2, label %54, label %45

45:                                               ; preds = %42
  %46 = sext i8 %43 to i32
  %47 = load i32, ptr %3, align 4
  %48 = call i32 @Func1(i32 noundef %46, i32 noundef 67)
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = call i32 @Proc6(i32 noundef 0, ptr noundef nonnull %3)
  br label %52

52:                                               ; preds = %50, %45
  %53 = add i8 %43, 1
  br label %42, !llvm.loop !10

54:                                               ; preds = %42
  %55 = load i32, ptr %1, align 4
  %56 = mul nsw i32 %55, 3
  store i32 %56, ptr %2, align 4
  %57 = call i32 @Proc2(ptr noundef nonnull %1)
  %58 = add nuw nsw i32 %22, 1
  br label %21, !llvm.loop !11

59:                                               ; preds = %21
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
  %2 = load i32, ptr %0, align 4
  %3 = add nsw i32 %2, 10
  %.pre = load i8, ptr @Char1Glob, align 1
  br label %4

4:                                                ; preds = %17, %1
  %5 = phi i32 [ %13, %17 ], [ undef, %1 ]
  %6 = phi i32 [ %14, %17 ], [ %3, %1 ]
  %7 = icmp eq i8 %.pre, 65
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = add nsw i32 %6, -1
  %10 = load i32, ptr @IntGlob, align 4
  %11 = sub nsw i32 %9, %10
  store i32 %11, ptr %0, align 4
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi i32 [ 0, %8 ], [ %5, %4 ]
  %14 = phi i32 [ %9, %8 ], [ %6, %4 ]
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  ret i32 undef

17:                                               ; preds = %12
  br label %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc3(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PtrGlb, align 8
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %2, align 8
  store ptr %4, ptr %0, align 8
  %.pre = load i32, ptr @IntGlob, align 4
  %.pre1 = load ptr, ptr @PtrGlb, align 8
  br label %6

5:                                                ; preds = %1
  store i32 100, ptr @IntGlob, align 4
  br label %6

6:                                                ; preds = %5, %3
  %7 = phi ptr [ null, %5 ], [ %.pre1, %3 ]
  %8 = phi i32 [ 100, %5 ], [ %.pre, %3 ]
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %10 = call i32 @Proc7(i32 noundef 10, i32 noundef %8, ptr noundef nonnull %9)
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
  switch i32 %0, label %16 [
    i32 0, label %6
    i32 10000, label %7
    i32 10001, label %13
    i32 10002, label %14
    i32 10003, label %15
  ]

6:                                                ; preds = %5
  store i32 0, ptr %1, align 4
  br label %16

7:                                                ; preds = %5
  %8 = load i32, ptr @IntGlob, align 4
  %9 = icmp sgt i32 %8, 100
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  br label %12

11:                                               ; preds = %7
  br label %12

12:                                               ; preds = %11, %10
  %storemerge = phi i32 [ 10002, %11 ], [ 0, %10 ]
  store i32 %storemerge, ptr %1, align 4
  br label %16

13:                                               ; preds = %5
  store i32 10000, ptr %1, align 4
  br label %16

14:                                               ; preds = %5
  br label %16

15:                                               ; preds = %5
  store i32 10001, ptr %1, align 4
  br label %16

16:                                               ; preds = %15, %14, %13, %12, %6, %5
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
  %8 = add nsw i32 %2, 6
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [4 x i8], ptr %0, i64 %9
  store i32 %3, ptr %10, align 4
  %11 = sext i32 %2 to i64
  %12 = getelementptr [4 x i8], ptr %0, i64 %11
  %13 = getelementptr i8, ptr %12, i64 140
  store i32 %5, ptr %13, align 4
  %14 = sext i32 %2 to i64
  %15 = add nsw i64 %14, 5
  %16 = sext i32 %8 to i64
  br label %17

17:                                               ; preds = %18, %4
  %indvars.iv = phi i64 [ %indvars.iv.next, %18 ], [ %15, %4 ]
  %.not = icmp sgt i64 %indvars.iv, %16
  br i1 %.not, label %21, label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds [204 x i8], ptr %1, i64 %6
  %20 = getelementptr inbounds [4 x i8], ptr %19, i64 %indvars.iv
  store i32 %5, ptr %20, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %17, !llvm.loop !12

21:                                               ; preds = %17
  %22 = getelementptr inbounds [204 x i8], ptr %1, i64 %6
  %23 = sext i32 %2 to i64
  %24 = getelementptr [4 x i8], ptr %22, i64 %23
  %25 = getelementptr i8, ptr %24, i64 16
  %26 = load i32, ptr %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %25, align 4
  %28 = load i32, ptr %7, align 4
  %29 = sext i32 %2 to i64
  %30 = getelementptr [204 x i8], ptr %1, i64 %29
  %31 = getelementptr i8, ptr %30, i64 5100
  %32 = getelementptr inbounds [4 x i8], ptr %31, i64 %6
  store i32 %28, ptr %32, align 4
  store i32 5, ptr @IntGlob, align 4
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func1(i32 noundef %0, i32 noundef %1) #0 {
  %.not.unshifted = xor i32 %0, %1
  %.not.mask = and i32 %.not.unshifted, 255
  %.not = icmp eq i32 %.not.mask, 0
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  br label %5

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4, %3
  %6 = phi i32 [ 10000, %4 ], [ 0, %3 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func2(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %20, %2
  %4 = phi i32 [ %21, %20 ], [ 1, %2 ]
  %5 = phi i8 [ %22, %20 ], [ undef, %2 ]
  %6 = icmp slt i32 %4, 2
  br i1 %6, label %7, label %23

7:                                                ; preds = %3
  %8 = sext i32 %4 to i64
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = load i8, ptr %9, align 1
  %11 = sext i8 %10 to i32
  %12 = add nsw i32 %4, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %1, i64 %13
  %15 = load i8, ptr %14, align 1
  %16 = sext i8 %15 to i32
  %17 = call i32 @Func1(i32 noundef %11, i32 noundef %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %7
  br label %20

20:                                               ; preds = %19, %7
  %21 = phi i32 [ %12, %19 ], [ %4, %7 ]
  %22 = phi i8 [ 65, %19 ], [ %5, %7 ]
  br label %3, !llvm.loop !13

23:                                               ; preds = %3
  %24 = icmp sgt i8 %5, 86
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = icmp slt i8 %5, 91
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  br label %28

28:                                               ; preds = %27, %25, %23
  %29 = icmp eq i8 %5, 88
  br i1 %29, label %30, label %31

30:                                               ; preds = %28
  br label %36

31:                                               ; preds = %28
  %32 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #5
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %36

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %35, %34, %30
  %37 = phi i32 [ 0, %35 ], [ 1, %34 ], [ 1, %30 ]
  ret i32 %37
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func3(i32 noundef %0) #0 {
  %2 = icmp eq i32 %0, 10001
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %5

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4, %3
  %6 = phi i32 [ 0, %4 ], [ 1, %3 ]
  ret i32 %6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }

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
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
