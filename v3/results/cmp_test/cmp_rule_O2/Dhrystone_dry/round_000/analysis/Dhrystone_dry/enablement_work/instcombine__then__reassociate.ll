; ModuleID = 'results\cmp_test\cmp_rule_O2\Dhrystone_dry\Dhrystone_dry.ll'
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

10:                                               ; preds = %13, %0
  %storemerge = phi i32 [ 0, %0 ], [ %15, %13 ]
  store i32 %storemerge, ptr %8, align 4
  %11 = icmp ult i32 %storemerge, 100000000
  br i1 %11, label %12, label %16

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %12
  %14 = load i32, ptr %8, align 4
  %15 = add i32 %14, 1
  br label %10, !llvm.loop !7

16:                                               ; preds = %10
  %17 = call i32 @clock() #5
  %18 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #6
  store ptr %18, ptr @PtrGlbNext, align 8
  %19 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #6
  store ptr %19, ptr @PtrGlb, align 8
  %20 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %20, ptr %19, align 8
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 0, ptr %21, align 8
  %22 = getelementptr inbounds nuw i8, ptr %19, i64 12
  store i32 10001, ptr %22, align 4
  %23 = load ptr, ptr @PtrGlb, align 8
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i32 40, ptr %24, align 8
  %25 = getelementptr inbounds nuw i8, ptr %23, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %25, ptr noundef nonnull align 1 dereferenceable(31) @.str, i64 31, i1 false) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %6, ptr noundef nonnull align 1 dereferenceable(31) @.str.1, i64 31, i1 false) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %26 = call i32 @clock() #5
  br label %27

27:                                               ; preds = %74, %16
  %storemerge1 = phi i32 [ 0, %16 ], [ %76, %74 ]
  store i32 %storemerge1, ptr %8, align 4
  %28 = icmp ult i32 %storemerge1, 100000000
  br i1 %28, label %29, label %77

29:                                               ; preds = %27
  %30 = call i32 @Proc5()
  %31 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  store i32 3, ptr %2, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %7, ptr noundef nonnull align 1 dereferenceable(31) @.str.2, i64 31, i1 false) #5
  store i32 10000, ptr %5, align 4
  %32 = call i32 @Func2(ptr noundef nonnull %6, ptr noundef nonnull %7)
  %.not = icmp eq i32 %32, 0
  %33 = zext i1 %.not to i32
  store i32 %33, ptr @BoolGlob, align 4
  br label %34

34:                                               ; preds = %38, %29
  %35 = load i32, ptr %1, align 4
  %36 = load i32, ptr %2, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load i32, ptr %1, align 4
  %40 = mul nsw i32 %39, 5
  %41 = load i32, ptr %2, align 4
  %42 = sub nsw i32 %40, %41
  store i32 %42, ptr %3, align 4
  %43 = call i32 @Proc7(i32 noundef %39, i32 noundef %41, ptr noundef nonnull %3)
  %44 = load i32, ptr %1, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %1, align 4
  br label %34, !llvm.loop !9

46:                                               ; preds = %34
  %47 = load i32, ptr %1, align 4
  %48 = load i32, ptr %3, align 4
  %49 = call i32 @Proc8(ptr noundef nonnull @Array1Glob, ptr noundef nonnull @Array2Glob, i32 noundef %47, i32 noundef %48)
  %50 = load ptr, ptr @PtrGlb, align 8
  %51 = call i32 @Proc1(ptr noundef %50)
  br label %52

52:                                               ; preds = %63, %46
  %storemerge2 = phi i8 [ 65, %46 ], [ %65, %63 ]
  store i8 %storemerge2, ptr %4, align 1
  %53 = load i8, ptr @Char2Glob, align 1
  %.not3 = icmp sgt i8 %storemerge2, %53
  br i1 %.not3, label %66, label %54

54:                                               ; preds = %52
  %55 = load i32, ptr %5, align 4
  %56 = load i8, ptr %4, align 1
  %57 = sext i8 %56 to i32
  %58 = call i32 @Func1(i32 noundef %57, i32 noundef 67)
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = call i32 @Proc6(i32 noundef 0, ptr noundef nonnull %5)
  br label %62

62:                                               ; preds = %60, %54
  br label %63

63:                                               ; preds = %62
  %64 = load i8, ptr %4, align 1
  %65 = add i8 %64, 1
  br label %52, !llvm.loop !10

66:                                               ; preds = %52
  %67 = load i32, ptr %2, align 4
  %68 = load i32, ptr %1, align 4
  %69 = mul nsw i32 %68, %67
  store i32 %69, ptr %3, align 4
  %70 = sub nsw i32 %69, %67
  %71 = mul nsw i32 %70, 7
  %72 = sub nsw i32 %71, %68
  store i32 %72, ptr %2, align 4
  %73 = call i32 @Proc2(ptr noundef nonnull %1)
  br label %74

74:                                               ; preds = %66
  %75 = load i32, ptr %8, align 4
  %76 = add i32 %75, 1
  br label %27, !llvm.loop !11

77:                                               ; preds = %27
  ret i32 undef
}

declare dso_local i32 @clock() #1

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare dso_local ptr @strcpy(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc1(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 5, ptr %3, align 8
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 5, ptr %5, align 8
  %6 = load ptr, ptr %0, align 8
  %7 = load ptr, ptr %2, align 8
  %8 = load ptr, ptr %7, align 8
  store ptr %6, ptr %8, align 8
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
  br label %7

7:                                                ; preds = %20, %1
  %8 = load i8, ptr @Char1Glob, align 1
  %9 = icmp eq i8 %8, 65
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = load i32, ptr %3, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, ptr %3, align 4
  %13 = load i32, ptr @IntGlob, align 4
  %14 = sub nsw i32 %12, %13
  %15 = load ptr, ptr %2, align 8
  store i32 %14, ptr %15, align 4
  store i32 0, ptr %4, align 4
  br label %16

16:                                               ; preds = %10, %7
  %17 = load i32, ptr %4, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %21

20:                                               ; preds = %16
  br label %7

21:                                               ; preds = %19
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc3(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr @PtrGlb, align 8
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %8, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @PtrGlb, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %2, align 8
  store ptr %6, ptr %7, align 8
  br label %9

8:                                                ; preds = %1
  store i32 100, ptr @IntGlob, align 4
  br label %9

9:                                                ; preds = %8, %4
  %10 = load i32, ptr @IntGlob, align 4
  %11 = load ptr, ptr @PtrGlb, align 8
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %13 = call i32 @Proc7(i32 noundef 10, i32 noundef %10, ptr noundef nonnull %12)
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
  br i1 %.not, label %6, label %8

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8
  store i32 10002, ptr %7, align 4
  br label %8

8:                                                ; preds = %6, %2
  %9 = load i32, ptr %3, align 4
  switch i32 %9, label %25 [
    i32 0, label %10
    i32 10000, label %12
    i32 10001, label %20
    i32 10002, label %22
    i32 10003, label %23
  ]

10:                                               ; preds = %8
  %11 = load ptr, ptr %4, align 8
  store i32 0, ptr %11, align 4
  br label %25

12:                                               ; preds = %8
  %13 = load i32, ptr @IntGlob, align 4
  %14 = icmp sgt i32 %13, 100
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load ptr, ptr %4, align 8
  store i32 0, ptr %16, align 4
  br label %19

17:                                               ; preds = %12
  %18 = load ptr, ptr %4, align 8
  store i32 10002, ptr %18, align 4
  br label %19

19:                                               ; preds = %17, %15
  br label %25

20:                                               ; preds = %8
  %21 = load ptr, ptr %4, align 8
  store i32 10000, ptr %21, align 4
  br label %25

22:                                               ; preds = %8
  br label %25

23:                                               ; preds = %8
  %24 = load ptr, ptr %4, align 8
  store i32 10001, ptr %24, align 4
  br label %25

25:                                               ; preds = %23, %22, %20, %19, %10, %8
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
  %11 = getelementptr inbounds [4 x i8], ptr %0, i64 %10
  store i32 %3, ptr %11, align 4
  %12 = load ptr, ptr %5, align 8
  %13 = sext i32 %9 to i64
  %14 = getelementptr inbounds [4 x i8], ptr %12, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr [4 x i8], ptr %12, i64 %17
  %19 = getelementptr i8, ptr %18, i64 4
  store i32 %15, ptr %19, align 4
  %20 = load ptr, ptr %5, align 8
  %21 = sext i32 %16 to i64
  %22 = getelementptr [4 x i8], ptr %20, i64 %21
  %23 = getelementptr i8, ptr %22, i64 120
  store i32 %16, ptr %23, align 4
  %24 = load i32, ptr %7, align 4
  br label %25

25:                                               ; preds = %36, %4
  %storemerge = phi i32 [ %24, %4 ], [ %38, %36 ]
  store i32 %storemerge, ptr %8, align 4
  %26 = load i32, ptr %7, align 4
  %27 = add nsw i32 %26, 1
  %.not = icmp sgt i32 %storemerge, %27
  br i1 %.not, label %39, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr %7, align 4
  %30 = load ptr, ptr %6, align 8
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds [204 x i8], ptr %30, i64 %31
  %33 = load i32, ptr %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x i8], ptr %32, i64 %34
  store i32 %29, ptr %35, align 4
  br label %36

36:                                               ; preds = %28
  %37 = load i32, ptr %8, align 4
  %38 = add nsw i32 %37, 1
  br label %25, !llvm.loop !12

39:                                               ; preds = %25
  %40 = load ptr, ptr %6, align 8
  %41 = load i32, ptr %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [204 x i8], ptr %40, i64 %42
  %44 = sext i32 %41 to i64
  %45 = getelementptr [4 x i8], ptr %43, i64 %44
  %46 = getelementptr i8, ptr %45, i64 -4
  %47 = load i32, ptr %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %46, align 4
  %49 = load ptr, ptr %5, align 8
  %50 = load i32, ptr %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [4 x i8], ptr %49, i64 %51
  %53 = load i32, ptr %52, align 4
  %54 = load ptr, ptr %6, align 8
  %55 = sext i32 %50 to i64
  %56 = getelementptr [204 x i8], ptr %54, i64 %55
  %57 = getelementptr i8, ptr %56, i64 4080
  %58 = load i32, ptr %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [4 x i8], ptr %57, i64 %59
  store i32 %53, ptr %60, align 4
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

8:                                                ; preds = %29, %2
  %9 = load i32, ptr %6, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %30

11:                                               ; preds = %8
  %12 = load ptr, ptr %4, align 8
  %13 = load i32, ptr %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %12, i64 %14
  %16 = load i8, ptr %15, align 1
  %17 = sext i8 %16 to i32
  %18 = load ptr, ptr %5, align 8
  %19 = sext i32 %13 to i64
  %20 = getelementptr i8, ptr %18, i64 %19
  %21 = getelementptr i8, ptr %20, i64 1
  %22 = load i8, ptr %21, align 1
  %23 = sext i8 %22 to i32
  %24 = call i32 @Func1(i32 noundef %17, i32 noundef %23)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %11
  store i8 65, ptr %7, align 1
  %27 = load i32, ptr %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %6, align 4
  br label %29

29:                                               ; preds = %26, %11
  br label %8, !llvm.loop !13

30:                                               ; preds = %8
  %31 = load i8, ptr %7, align 1
  %32 = icmp sgt i8 %31, 86
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i8, ptr %7, align 1
  %35 = icmp slt i8 %34, 91
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 7, ptr %6, align 4
  br label %37

37:                                               ; preds = %36, %33, %30
  %38 = load i8, ptr %7, align 1
  %39 = icmp eq i8 %38, 88
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 1, ptr %3, align 4
  br label %50

41:                                               ; preds = %37
  %42 = load ptr, ptr %4, align 8
  %43 = load ptr, ptr %5, align 8
  %44 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %42, ptr noundef nonnull dereferenceable(1) %43) #5
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, ptr %6, align 4
  %48 = add nsw i32 %47, 7
  store i32 %48, ptr %6, align 4
  store i32 1, ptr %3, align 4
  br label %50

49:                                               ; preds = %41
  store i32 0, ptr %3, align 4
  br label %50

50:                                               ; preds = %49, %46, %40
  %51 = load i32, ptr %3, align 4
  ret i32 %51
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
