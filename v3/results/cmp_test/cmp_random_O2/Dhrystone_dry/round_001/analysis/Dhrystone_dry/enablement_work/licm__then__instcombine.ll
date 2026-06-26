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
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca [31 x i8], align 16
  %7 = alloca [31 x i8], align 16
  %8 = call i32 @clock() #5
  br label %9

9:                                                ; preds = %12, %0
  %10 = phi i32 [ %13, %12 ], [ 0, %0 ]
  %11 = icmp samesign ult i32 %10, 100000000
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = add nuw nsw i32 %10, 1
  br label %9, !llvm.loop !7

14:                                               ; preds = %9
  %15 = call i32 @clock() #5
  %16 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #6
  store ptr %16, ptr @PtrGlbNext, align 8
  %17 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #6
  store ptr %17, ptr @PtrGlb, align 8
  %18 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %18, ptr %17, align 8
  %19 = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 0, ptr %19, align 8
  %20 = getelementptr inbounds nuw i8, ptr %17, i64 12
  store i32 10001, ptr %20, align 4
  %21 = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i32 40, ptr %21, align 8
  %22 = getelementptr inbounds nuw i8, ptr %17, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %22, ptr noundef nonnull align 1 dereferenceable(31) @.str, i64 31, i1 false) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %6, ptr noundef nonnull align 1 dereferenceable(31) @.str.1, i64 31, i1 false) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %23 = call i32 @clock() #5
  %.promoted3 = load i32, ptr %2, align 1
  %.promoted5 = load i8, ptr %4, align 1
  br label %24

24:                                               ; preds = %59, %14
  %.lcssa26 = phi i8 [ %48, %59 ], [ %.promoted5, %14 ]
  %25 = phi i32 [ %64, %59 ], [ %.promoted3, %14 ]
  %26 = phi i32 [ %66, %59 ], [ 0, %14 ]
  %27 = icmp samesign ult i32 %26, 100000000
  br i1 %27, label %28, label %67

28:                                               ; preds = %24
  %29 = call i32 @Proc5()
  %30 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %7, ptr noundef nonnull align 1 dereferenceable(31) @.str.2, i64 31, i1 false) #5
  store i32 10000, ptr %5, align 4
  %31 = call i32 @Func2(ptr noundef nonnull %6, ptr noundef nonnull %7)
  %.not = icmp eq i32 %31, 0
  %32 = zext i1 %.not to i32
  store i32 %32, ptr @BoolGlob, align 4
  %.pre = load i32, ptr %1, align 4
  br label %33

33:                                               ; preds = %36, %28
  %34 = phi i32 [ %41, %36 ], [ %.pre, %28 ]
  %35 = icmp slt i32 %34, 3
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = mul nsw i32 %34, 5
  %38 = add nsw i32 %37, -3
  store i32 %38, ptr %3, align 4
  %39 = call i32 @Proc7(i32 noundef %34, i32 noundef 3, ptr noundef nonnull %3)
  %40 = load i32, ptr %1, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %1, align 4
  br label %33, !llvm.loop !9

42:                                               ; preds = %33
  %43 = load i32, ptr %3, align 4
  %44 = call i32 @Proc8(ptr noundef nonnull @Array1Glob, ptr noundef nonnull @Array2Glob, i32 noundef %34, i32 noundef %43)
  %45 = load ptr, ptr @PtrGlb, align 8
  %46 = call i32 @Proc1(ptr noundef %45)
  br label %47

47:                                               ; preds = %57, %42
  %48 = phi i8 [ %58, %57 ], [ 65, %42 ]
  %49 = load i8, ptr @Char2Glob, align 1
  %.not8 = icmp sgt i8 %48, %49
  br i1 %.not8, label %59, label %50

50:                                               ; preds = %47
  %51 = sext i8 %48 to i32
  %52 = load i32, ptr %5, align 4
  %53 = call i32 @Func1(i32 noundef %51, i32 noundef 67)
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 @Proc6(i32 noundef 0, ptr noundef nonnull %5)
  br label %57

57:                                               ; preds = %55, %50
  %58 = add i8 %48, 1
  br label %47, !llvm.loop !10

59:                                               ; preds = %47
  %60 = load i32, ptr %1, align 4
  %61 = mul nsw i32 %60, 3
  store i32 %61, ptr %3, align 4
  %62 = mul i32 %60, 21
  %63 = add i32 %62, -21
  %64 = sub nsw i32 %63, %60
  %65 = call i32 @Proc2(ptr noundef nonnull %1)
  %66 = add nuw nsw i32 %26, 1
  br label %24, !llvm.loop !11

67:                                               ; preds = %24
  store i32 %25, ptr %2, align 1
  store i8 %.lcssa26, ptr %4, align 1
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
  %2 = alloca i32, align 4
  %3 = load i32, ptr %0, align 4
  %4 = add nsw i32 %3, 10
  %.pre = load i8, ptr @Char1Glob, align 1
  %5 = icmp eq i8 %.pre, 65
  %.promoted1 = load i32, ptr %2, align 1
  br label %6

6:                                                ; preds = %20, %1
  %7 = phi i32 [ %15, %20 ], [ %.promoted1, %1 ]
  %8 = phi i32 [ %16, %20 ], [ undef, %1 ]
  %9 = phi i32 [ %17, %20 ], [ %4, %1 ]
  br i1 %5, label %10, label %14

10:                                               ; preds = %6
  %11 = add nsw i32 %9, -1
  %12 = load i32, ptr @IntGlob, align 4
  %13 = sub nsw i32 %11, %12
  store i32 %13, ptr %0, align 4
  br label %14

14:                                               ; preds = %10, %6
  %15 = phi i32 [ 0, %10 ], [ %7, %6 ]
  %16 = phi i32 [ 0, %10 ], [ %8, %6 ]
  %17 = phi i32 [ %11, %10 ], [ %9, %6 ]
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 %15, ptr %2, align 1
  ret i32 undef

20:                                               ; preds = %14
  br label %6
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
  %14 = getelementptr inbounds [204 x i8], ptr %1, i64 %6
  br label %15

15:                                               ; preds = %17, %4
  %16 = phi i32 [ %20, %17 ], [ %5, %4 ]
  %.not = icmp sgt i32 %16, %8
  br i1 %.not, label %21, label %17

17:                                               ; preds = %15
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds [4 x i8], ptr %14, i64 %18
  store i32 %5, ptr %19, align 4
  %20 = add nsw i32 %16, 1
  br label %15, !llvm.loop !12

21:                                               ; preds = %15
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
  %3 = alloca i8, align 1
  %.promoted = load i8, ptr %3, align 1
  br label %4

4:                                                ; preds = %22, %2
  %5 = phi i8 [ %23, %22 ], [ %.promoted, %2 ]
  %6 = phi i32 [ %24, %22 ], [ 1, %2 ]
  %7 = phi i8 [ %25, %22 ], [ undef, %2 ]
  %8 = icmp slt i32 %6, 2
  br i1 %8, label %9, label %26

9:                                                ; preds = %4
  %10 = sext i32 %6 to i64
  %11 = getelementptr inbounds i8, ptr %0, i64 %10
  %12 = load i8, ptr %11, align 1
  %13 = sext i8 %12 to i32
  %14 = add nsw i32 %6, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %1, i64 %15
  %17 = load i8, ptr %16, align 1
  %18 = sext i8 %17 to i32
  %19 = call i32 @Func1(i32 noundef %13, i32 noundef %18)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %9
  br label %22

22:                                               ; preds = %21, %9
  %23 = phi i8 [ 65, %21 ], [ %5, %9 ]
  %24 = phi i32 [ %14, %21 ], [ %6, %9 ]
  %25 = phi i8 [ 65, %21 ], [ %7, %9 ]
  br label %4, !llvm.loop !13

26:                                               ; preds = %4
  store i8 %5, ptr %3, align 1
  %27 = icmp sgt i8 %7, 86
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = icmp slt i8 %7, 91
  br i1 %29, label %30, label %31

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %30, %28, %26
  %32 = icmp eq i8 %7, 88
  br i1 %32, label %33, label %34

33:                                               ; preds = %31
  br label %39

34:                                               ; preds = %31
  %35 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #5
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %39

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %38, %37, %33
  %40 = phi i32 [ 0, %38 ], [ 1, %37 ], [ 1, %33 ]
  ret i32 %40
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
