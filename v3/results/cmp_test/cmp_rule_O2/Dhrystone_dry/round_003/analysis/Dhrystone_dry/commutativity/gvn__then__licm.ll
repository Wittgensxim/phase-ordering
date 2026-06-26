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
  %exitcond = icmp ne i32 %storemerge, 100000000
  br i1 %exitcond, label %11, label %13

11:                                               ; preds = %10
  %12 = add nuw nsw i32 %storemerge, 1
  br label %10, !llvm.loop !7

13:                                               ; preds = %10
  %storemerge.lcssa = phi i32 [ %storemerge, %10 ]
  store i32 %storemerge.lcssa, ptr %8, align 4
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
  %.promoted = load i32, ptr %2, align 1
  %.promoted4 = load i8, ptr %4, align 1
  br label %23

23:                                               ; preds = %58, %13
  %.lcssa15 = phi i8 [ %.promoted4, %13 ], [ %.lcssa1, %58 ]
  %24 = phi i32 [ %.promoted, %13 ], [ %63, %58 ]
  %25 = phi i32 [ 0, %13 ], [ %65, %58 ]
  %26 = icmp ult i32 %25, 100000000
  br i1 %26, label %27, label %66

27:                                               ; preds = %23
  %28 = call i32 @Proc5()
  %29 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %7, ptr noundef nonnull align 1 dereferenceable(31) @.str.2, i64 31, i1 false) #5
  store i32 10000, ptr %5, align 4
  %30 = call i32 @Func2(ptr noundef nonnull %6, ptr noundef nonnull %7)
  %.not = icmp eq i32 %30, 0
  %31 = zext i1 %.not to i32
  store i32 %31, ptr @BoolGlob, align 4
  %.pre = load i32, ptr %1, align 4
  br label %32

32:                                               ; preds = %35, %27
  %33 = phi i32 [ %40, %35 ], [ %.pre, %27 ]
  %34 = icmp slt i32 %33, 3
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = mul nsw i32 %33, 5
  %37 = sub nsw i32 %36, 3
  store i32 %37, ptr %3, align 4
  %38 = call i32 @Proc7(i32 noundef %33, i32 noundef 3, ptr noundef nonnull %3)
  %39 = load i32, ptr %1, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %1, align 4
  br label %32, !llvm.loop !9

41:                                               ; preds = %32
  %.lcssa = phi i32 [ %33, %32 ]
  %42 = load i32, ptr %3, align 4
  %43 = call i32 @Proc8(ptr noundef nonnull @Array1Glob, ptr noundef nonnull @Array2Glob, i32 noundef %.lcssa, i32 noundef %42)
  %44 = load ptr, ptr @PtrGlb, align 8
  %45 = call i32 @Proc1(ptr noundef %44)
  br label %46

46:                                               ; preds = %56, %41
  %47 = phi i8 [ 65, %41 ], [ %57, %56 ]
  %48 = load i8, ptr @Char2Glob, align 1
  %.not3 = icmp sgt i8 %47, %48
  br i1 %.not3, label %58, label %49

49:                                               ; preds = %46
  %50 = sext i8 %47 to i32
  %51 = load i32, ptr %5, align 4
  %52 = call i32 @Func1(i32 noundef %50, i32 noundef 67)
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 @Proc6(i32 noundef 0, ptr noundef nonnull %5)
  br label %56

56:                                               ; preds = %54, %49
  %57 = add i8 %47, 1
  br label %46, !llvm.loop !10

58:                                               ; preds = %46
  %.lcssa1 = phi i8 [ %47, %46 ]
  %59 = load i32, ptr %1, align 4
  %60 = mul nsw i32 3, %59
  store i32 %60, ptr %3, align 4
  %61 = sub nsw i32 %60, 3
  %62 = mul nsw i32 %61, 7
  %63 = sub nsw i32 %62, %59
  %64 = call i32 @Proc2(ptr noundef nonnull %1)
  %65 = add i32 %25, 1
  br label %23, !llvm.loop !11

66:                                               ; preds = %23
  %.lcssa15.lcssa = phi i8 [ %.lcssa15, %23 ]
  %.lcssa3 = phi i32 [ %24, %23 ]
  %.lcssa2 = phi i32 [ %25, %23 ]
  store i32 %.lcssa2, ptr %8, align 4
  store i32 %.lcssa3, ptr %2, align 1
  store i8 %.lcssa15.lcssa, ptr %4, align 1
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
  %7 = icmp eq i8 %.pre, 65
  %.promoted = load i32, ptr %3, align 1
  %.promoted1 = load i32, ptr %4, align 1
  br label %8

8:                                                ; preds = %24, %1
  %9 = phi i32 [ %18, %24 ], [ %.promoted1, %1 ]
  %10 = phi i32 [ %19, %24 ], [ %.promoted, %1 ]
  %11 = phi i32 [ %20, %24 ], [ undef, %1 ]
  %12 = phi i32 [ %21, %24 ], [ %6, %1 ]
  br i1 %7, label %13, label %17

13:                                               ; preds = %8
  %14 = add nsw i32 %12, -1
  %15 = load i32, ptr @IntGlob, align 4
  %16 = sub nsw i32 %14, %15
  store i32 %16, ptr %0, align 4
  br label %17

17:                                               ; preds = %13, %8
  %18 = phi i32 [ 0, %13 ], [ %9, %8 ]
  %19 = phi i32 [ %14, %13 ], [ %10, %8 ]
  %20 = phi i32 [ 0, %13 ], [ %11, %8 ]
  %21 = phi i32 [ %14, %13 ], [ %12, %8 ]
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  %.lcssa2 = phi i32 [ %18, %17 ]
  %.lcssa = phi i32 [ %19, %17 ]
  store i32 %.lcssa, ptr %3, align 1
  store i32 %.lcssa2, ptr %4, align 1
  ret i32 undef

24:                                               ; preds = %17
  br label %8
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
  %5 = add nsw i32 %1, %4
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
  %16 = add nsw i32 %9, 1
  %17 = getelementptr inbounds [204 x i8], ptr %1, i64 %10
  br label %18

18:                                               ; preds = %20, %4
  %19 = phi i32 [ %9, %4 ], [ %23, %20 ]
  %.not = icmp sgt i32 %19, %16
  br i1 %.not, label %24, label %20

20:                                               ; preds = %18
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds [4 x i8], ptr %17, i64 %21
  store i32 %9, ptr %22, align 4
  %23 = add nsw i32 %19, 1
  br label %18, !llvm.loop !12

24:                                               ; preds = %18
  %.lcssa = phi i32 [ %19, %18 ]
  store i32 %.lcssa, ptr %8, align 4
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
  %.not.unshifted = xor i32 %0, %1
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
  %.promoted = load i8, ptr %7, align 1
  %.promoted3 = load i32, ptr %6, align 1
  br label %8

8:                                                ; preds = %27, %2
  %9 = phi i32 [ %28, %27 ], [ %.promoted3, %2 ]
  %10 = phi i8 [ %29, %27 ], [ %.promoted, %2 ]
  %11 = phi i8 [ %30, %27 ], [ undef, %2 ]
  %12 = phi i32 [ %31, %27 ], [ 1, %2 ]
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %32

14:                                               ; preds = %8
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds i8, ptr %0, i64 %15
  %17 = load i8, ptr %16, align 1
  %18 = sext i8 %17 to i32
  %19 = getelementptr i8, ptr %1, i64 %15
  %20 = getelementptr i8, ptr %19, i64 1
  %21 = load i8, ptr %20, align 1
  %22 = sext i8 %21 to i32
  %23 = call i32 @Func1(i32 noundef %18, i32 noundef %22)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = add nsw i32 %12, 1
  br label %27

27:                                               ; preds = %25, %14
  %28 = phi i32 [ %26, %25 ], [ %9, %14 ]
  %29 = phi i8 [ 65, %25 ], [ %10, %14 ]
  %30 = phi i8 [ 65, %25 ], [ %11, %14 ]
  %31 = phi i32 [ %26, %25 ], [ %12, %14 ]
  br label %8, !llvm.loop !13

32:                                               ; preds = %8
  %.lcssa4 = phi i32 [ %9, %8 ]
  %.lcssa2 = phi i8 [ %10, %8 ]
  %.lcssa1 = phi i8 [ %11, %8 ]
  %.lcssa = phi i32 [ %12, %8 ]
  store i8 %.lcssa2, ptr %7, align 1
  store i32 %.lcssa4, ptr %6, align 1
  %33 = icmp sgt i8 %.lcssa1, 86
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = icmp ult i8 %.lcssa1, 91
  br i1 %35, label %36, label %37

36:                                               ; preds = %34
  store i32 7, ptr %6, align 4
  br label %37

37:                                               ; preds = %36, %34, %32
  %38 = phi i32 [ 7, %36 ], [ %.lcssa, %34 ], [ %.lcssa, %32 ]
  %39 = icmp eq i8 %.lcssa1, 88
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 1, ptr %3, align 4
  br label %47

41:                                               ; preds = %37
  %42 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #5
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = add nsw i32 %38, 7
  store i32 %45, ptr %6, align 4
  store i32 1, ptr %3, align 4
  br label %47

46:                                               ; preds = %41
  store i32 0, ptr %3, align 4
  br label %47

47:                                               ; preds = %46, %44, %40
  %48 = phi i32 [ 0, %46 ], [ 1, %44 ], [ 1, %40 ]
  ret i32 %48
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
