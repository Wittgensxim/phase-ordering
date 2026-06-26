; ModuleID = 'results\cmp_test\cmp_rule_O2\Dhrystone_dry\round_002\output.ll'
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
  %8 = alloca i32, align 4
  %9 = call i32 @clock() #5
  br label %10

10:                                               ; preds = %11, %0
  %storemerge = phi i32 [ 0, %0 ], [ %12, %11 ]
  store i32 %storemerge, ptr %8, align 4
  %exitcond = icmp ne i32 %storemerge, 100000000
  br i1 %exitcond, label %11, label %13

11:                                               ; preds = %10
  %12 = add nuw nsw i32 %storemerge, 1
  br label %10, !llvm.loop !7

13:                                               ; preds = %10
  %14 = call i32 @clock() #5
  %15 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #6
  store ptr %15, ptr @PtrGlbNext, align 8
  %16 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #6
  store ptr %16, ptr @PtrGlb, align 8
  %17 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %17, ptr %16, align 8
  %18 = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 0, ptr %18, align 8
  %19 = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 10001, ptr %19, align 4
  %20 = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 40, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %16, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %21, ptr noundef nonnull align 1 dereferenceable(31) @.str, i64 31, i1 false) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %6, ptr noundef nonnull align 1 dereferenceable(31) @.str.1, i64 31, i1 false) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %22 = call i32 @clock() #5
  br label %23

23:                                               ; preds = %57, %13
  %24 = phi i32 [ 0, %13 ], [ %64, %57 ]
  store i32 %24, ptr %8, align 4
  %25 = icmp ult i32 %24, 100000000
  br i1 %25, label %26, label %65

26:                                               ; preds = %23
  %27 = call i32 @Proc5()
  %28 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  store i32 3, ptr %2, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %7, ptr noundef nonnull align 1 dereferenceable(31) @.str.2, i64 31, i1 false) #5
  store i32 10000, ptr %5, align 4
  %29 = call i32 @Func2(ptr noundef nonnull %6, ptr noundef nonnull %7)
  %.not = icmp eq i32 %29, 0
  %30 = zext i1 %.not to i32
  store i32 %30, ptr @BoolGlob, align 4
  %.pre = load i32, ptr %1, align 4
  br label %31

31:                                               ; preds = %34, %26
  %32 = phi i32 [ %39, %34 ], [ %.pre, %26 ]
  %33 = icmp slt i32 %32, 3
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = mul nsw i32 %32, 5
  %36 = sub nsw i32 %35, 3
  store i32 %36, ptr %3, align 4
  %37 = call i32 @Proc7(i32 noundef %32, i32 noundef 3, ptr noundef nonnull %3)
  %38 = load i32, ptr %1, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %1, align 4
  br label %31, !llvm.loop !9

40:                                               ; preds = %31
  %41 = load i32, ptr %3, align 4
  %42 = call i32 @Proc8(ptr noundef nonnull @Array1Glob, ptr noundef nonnull @Array2Glob, i32 noundef %32, i32 noundef %41)
  %43 = load ptr, ptr @PtrGlb, align 8
  %44 = call i32 @Proc1(ptr noundef %43)
  br label %45

45:                                               ; preds = %55, %40
  %46 = phi i8 [ 65, %40 ], [ %56, %55 ]
  store i8 %46, ptr %4, align 1
  %47 = load i8, ptr @Char2Glob, align 1
  %.not3 = icmp sgt i8 %46, %47
  br i1 %.not3, label %57, label %48

48:                                               ; preds = %45
  %49 = sext i8 %46 to i32
  %50 = load i32, ptr %5, align 4
  %51 = call i32 @Func1(i32 noundef %49, i32 noundef 67)
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = call i32 @Proc6(i32 noundef 0, ptr noundef nonnull %5)
  br label %55

55:                                               ; preds = %53, %48
  %56 = add i8 %46, 1
  br label %45, !llvm.loop !10

57:                                               ; preds = %45
  %58 = load i32, ptr %1, align 4
  %59 = mul nsw i32 %58, 3
  store i32 %59, ptr %3, align 4
  %60 = sub nsw i32 %59, 3
  %61 = mul nsw i32 %60, 7
  %62 = sub nsw i32 %61, %58
  store i32 %62, ptr %2, align 4
  %63 = call i32 @Proc2(ptr noundef nonnull %1)
  %64 = add i32 %24, 1
  br label %23, !llvm.loop !11

65:                                               ; preds = %23
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
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %5 = load i32, ptr %0, align 4
  %6 = add nsw i32 %5, 10
  store i32 %6, ptr %3, align 4
  %.pre = load i8, ptr @Char1Glob, align 1
  br label %7

7:                                                ; preds = %20, %1
  %8 = phi i32 [ %16, %20 ], [ undef, %1 ]
  %9 = phi i32 [ %17, %20 ], [ %6, %1 ]
  %10 = icmp eq i8 %.pre, 65
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = add nsw i32 %9, -1
  store i32 %12, ptr %3, align 4
  %13 = load i32, ptr @IntGlob, align 4
  %14 = sub nsw i32 %12, %13
  store i32 %14, ptr %0, align 4
  store i32 0, ptr %4, align 4
  br label %15

15:                                               ; preds = %11, %7
  %16 = phi i32 [ 0, %11 ], [ %8, %7 ]
  %17 = phi i32 [ %12, %11 ], [ %9, %7 ]
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  ret i32 undef

20:                                               ; preds = %15
  br label %7
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
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  store i32 %0, ptr %1, align 4
  %5 = call i32 @Func3(i32 noundef %0)
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %6, label %7

6:                                                ; preds = %2
  store i32 10002, ptr %1, align 4
  br label %7

7:                                                ; preds = %6, %2
  switch i32 %0, label %18 [
    i32 0, label %8
    i32 10000, label %9
    i32 10001, label %15
    i32 10002, label %16
    i32 10003, label %17
  ]

8:                                                ; preds = %7
  store i32 0, ptr %1, align 4
  br label %18

9:                                                ; preds = %7
  %10 = load i32, ptr @IntGlob, align 4
  %11 = icmp sgt i32 %10, 100
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 0, ptr %1, align 4
  br label %14

13:                                               ; preds = %9
  store i32 10002, ptr %1, align 4
  br label %14

14:                                               ; preds = %13, %12
  br label %18

15:                                               ; preds = %7
  store i32 10000, ptr %1, align 4
  br label %18

16:                                               ; preds = %7
  br label %18

17:                                               ; preds = %7
  store i32 10001, ptr %1, align 4
  br label %18

18:                                               ; preds = %17, %16, %15, %14, %8, %7
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc7(i32 noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = add nsw i32 %0, 2
  %5 = add nsw i32 %4, %1
  store i32 %5, ptr %2, align 4
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc8(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %9 = add nsw i32 %2, 5
  store i32 %9, ptr %7, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr [4 x i8], ptr %0, i64 %10
  store i32 %3, ptr %11, align 4
  %12 = sext i32 %2 to i64
  %13 = getelementptr [4 x i8], ptr %0, i64 %12
  %14 = getelementptr i8, ptr %13, i64 24
  store i32 %3, ptr %14, align 4
  %15 = getelementptr i8, ptr %11, i64 120
  store i32 %9, ptr %15, align 4
  br label %16

16:                                               ; preds = %19, %4
  %17 = phi i32 [ %9, %4 ], [ %23, %19 ]
  store i32 %17, ptr %8, align 4
  %18 = add nsw i32 %9, 1
  %.not = icmp sgt i32 %17, %18
  br i1 %.not, label %24, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds [204 x i8], ptr %1, i64 %10
  %21 = sext i32 %17 to i64
  %22 = getelementptr inbounds [4 x i8], ptr %20, i64 %21
  store i32 %9, ptr %22, align 4
  %23 = add nsw i32 %17, 1
  br label %16, !llvm.loop !12

24:                                               ; preds = %16
  %25 = getelementptr [204 x i8], ptr %1, i64 %10
  %26 = getelementptr [4 x i8], ptr %25, i64 %10
  %27 = getelementptr i8, ptr %26, i64 -4
  %28 = load i32, ptr %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %27, align 4
  %30 = load i32, ptr %11, align 4
  %31 = getelementptr i8, ptr %25, i64 4080
  %32 = getelementptr inbounds [4 x i8], ptr %31, i64 %10
  store i32 %30, ptr %32, align 4
  store i32 5, ptr @IntGlob, align 4
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func1(i32 noundef %0, i32 noundef %1) #0 {
  %.not.unshifted = xor i32 %1, %0
  %.not.mask = and i32 %.not.unshifted, 255
  %.not = icmp eq i32 %.not.mask, 0
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  br label %5

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4, %3
  %storemerge = phi i32 [ 10000, %4 ], [ 0, %3 ]
  ret i32 %storemerge
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func2(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 1, ptr %6, align 4
  br label %8

8:                                                ; preds = %25, %2
  %9 = phi i8 [ %26, %25 ], [ undef, %2 ]
  %10 = phi i32 [ %27, %25 ], [ 1, %2 ]
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = sext i32 %10 to i64
  %14 = getelementptr inbounds i8, ptr %0, i64 %13
  %15 = load i8, ptr %14, align 1
  %16 = sext i8 %15 to i32
  %17 = getelementptr i8, ptr %1, i64 %13
  %18 = getelementptr i8, ptr %17, i64 1
  %19 = load i8, ptr %18, align 1
  %20 = sext i8 %19 to i32
  %21 = call i32 @Func1(i32 noundef %16, i32 noundef %20)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %12
  store i8 65, ptr %7, align 1
  %24 = add nsw i32 %10, 1
  store i32 %24, ptr %6, align 4
  br label %25

25:                                               ; preds = %23, %12
  %26 = phi i8 [ 65, %23 ], [ %9, %12 ]
  %27 = phi i32 [ %24, %23 ], [ %10, %12 ]
  br label %8, !llvm.loop !13

28:                                               ; preds = %8
  %29 = icmp sgt i8 %9, 86
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = icmp ult i8 %9, 91
  br i1 %31, label %32, label %33

32:                                               ; preds = %30
  store i32 7, ptr %6, align 4
  br label %33

33:                                               ; preds = %32, %30, %28
  %34 = phi i32 [ 7, %32 ], [ %10, %30 ], [ %10, %28 ]
  %35 = icmp eq i8 %9, 88
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 1, ptr %3, align 4
  br label %43

37:                                               ; preds = %33
  %38 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #5
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = add nsw i32 %34, 7
  store i32 %41, ptr %6, align 4
  store i32 1, ptr %3, align 4
  br label %43

42:                                               ; preds = %37
  store i32 0, ptr %3, align 4
  br label %43

43:                                               ; preds = %42, %40, %36
  %44 = phi i32 [ 0, %42 ], [ 1, %40 ], [ 1, %36 ]
  ret i32 %44
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
  %storemerge = phi i32 [ 0, %4 ], [ 1, %3 ]
  ret i32 %storemerge
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
