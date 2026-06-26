; ModuleID = 'results\cmp_test\cmp_oracle_O2\Dhrystone_dry\Dhrystone_dry.ll'
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

9:                                                ; preds = %13, %0
  %10 = phi i32 [ %14, %13 ], [ 0, %0 ]
  %11 = icmp samesign ult i32 %10, 100000000
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  br label %13

13:                                               ; preds = %12
  %14 = add nuw nsw i32 %10, 1
  br label %9, !llvm.loop !7

15:                                               ; preds = %9
  %16 = call i32 @clock() #5
  %17 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #6
  store ptr %17, ptr @PtrGlbNext, align 8
  %18 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #6
  store ptr %18, ptr @PtrGlb, align 8
  %19 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %19, ptr %18, align 8
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 0, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 12
  store i32 10001, ptr %21, align 4
  %22 = load ptr, ptr @PtrGlb, align 8
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i32 40, ptr %23, align 8
  %24 = getelementptr inbounds nuw i8, ptr %22, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %24, ptr noundef nonnull align 1 dereferenceable(31) @.str, i64 31, i1 false) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %6, ptr noundef nonnull align 1 dereferenceable(31) @.str.1, i64 31, i1 false) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %25 = call i32 @clock() #5
  %.promoted5 = load i32, ptr %2, align 4
  %.promoted7 = load i8, ptr %4, align 1
  br label %26

26:                                               ; preds = %68, %15
  %.lcssa28 = phi i8 [ %52, %68 ], [ %.promoted7, %15 ]
  %27 = phi i32 [ %71, %68 ], [ %.promoted5, %15 ]
  %28 = phi i32 [ %72, %68 ], [ 0, %15 ]
  %29 = icmp samesign ult i32 %28, 100000000
  br i1 %29, label %30, label %73

30:                                               ; preds = %26
  %31 = call i32 @Proc5()
  %32 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %7, ptr noundef nonnull align 1 dereferenceable(31) @.str.2, i64 31, i1 false) #5
  store i32 10000, ptr %5, align 4
  %33 = call i32 @Func2(ptr noundef nonnull %6, ptr noundef nonnull %7)
  %.not = icmp eq i32 %33, 0
  %34 = zext i1 %.not to i32
  store i32 %34, ptr @BoolGlob, align 4
  br label %35

35:                                               ; preds = %38, %30
  %36 = load i32, ptr %1, align 4
  %37 = icmp slt i32 %36, 3
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i32, ptr %1, align 4
  %40 = mul nsw i32 %39, 5
  %41 = add nsw i32 %40, -3
  store i32 %41, ptr %3, align 4
  %42 = call i32 @Proc7(i32 noundef %39, i32 noundef 3, ptr noundef nonnull %3)
  %43 = load i32, ptr %1, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %1, align 4
  br label %35, !llvm.loop !9

45:                                               ; preds = %35
  %46 = load i32, ptr %1, align 4
  %47 = load i32, ptr %3, align 4
  %48 = call i32 @Proc8(ptr noundef nonnull @Array1Glob, ptr noundef nonnull @Array2Glob, i32 noundef %46, i32 noundef %47)
  %49 = load ptr, ptr @PtrGlb, align 8
  %50 = call i32 @Proc1(ptr noundef %49)
  br label %51

51:                                               ; preds = %62, %45
  %52 = phi i8 [ %63, %62 ], [ 65, %45 ]
  %53 = load i8, ptr @Char2Glob, align 1
  %.not9 = icmp sgt i8 %52, %53
  br i1 %.not9, label %64, label %54

54:                                               ; preds = %51
  %55 = load i32, ptr %5, align 4
  %56 = sext i8 %52 to i32
  %57 = call i32 @Func1(i32 noundef %56, i32 noundef 67)
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = call i32 @Proc6(i32 noundef 0, ptr noundef nonnull %5)
  br label %61

61:                                               ; preds = %59, %54
  br label %62

62:                                               ; preds = %61
  %63 = add i8 %52, 1
  br label %51, !llvm.loop !10

64:                                               ; preds = %51
  %65 = load i32, ptr %1, align 4
  %66 = mul nsw i32 %65, 3
  store i32 %66, ptr %3, align 4
  %67 = call i32 @Proc2(ptr noundef nonnull %1)
  br label %68

68:                                               ; preds = %64
  %69 = mul i32 %65, 21
  %70 = add i32 %69, -21
  %71 = sub nsw i32 %70, %65
  %72 = add nuw nsw i32 %28, 1
  br label %26, !llvm.loop !11

73:                                               ; preds = %26
  store i32 %27, ptr %2, align 4
  store i8 %.lcssa28, ptr %4, align 1
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
  %2 = alloca i32, align 4
  %3 = load i32, ptr %0, align 4
  %4 = add nsw i32 %3, 10
  %5 = load i8, ptr @Char1Glob, align 1
  %6 = icmp eq i8 %5, 65
  %.promoted1 = load i32, ptr %2, align 4
  br label %7

7:                                                ; preds = %19, %1
  %8 = phi i32 [ %15, %19 ], [ %.promoted1, %1 ]
  %9 = phi i32 [ %16, %19 ], [ %4, %1 ]
  br i1 %6, label %10, label %14

10:                                               ; preds = %7
  %11 = add nsw i32 %9, -1
  %12 = load i32, ptr @IntGlob, align 4
  %13 = sub nsw i32 %11, %12
  store i32 %13, ptr %0, align 4
  br label %14

14:                                               ; preds = %10, %7
  %15 = phi i32 [ 0, %10 ], [ %8, %7 ]
  %16 = phi i32 [ %11, %10 ], [ %9, %7 ]
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 %15, ptr %2, align 4
  br label %20

19:                                               ; preds = %14
  br label %7

20:                                               ; preds = %18
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
  %5 = add nsw i32 %1, %4
  store i32 %5, ptr %2, align 4
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc8(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %8 = add nsw i32 %2, 5
  store i32 %8, ptr %7, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [4 x i8], ptr %0, i64 %9
  store i32 %3, ptr %10, align 4
  %11 = load ptr, ptr %5, align 8
  %12 = sext i32 %8 to i64
  %13 = getelementptr inbounds [4 x i8], ptr %11, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = load i32, ptr %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr [4 x i8], ptr %11, i64 %16
  %18 = getelementptr i8, ptr %17, i64 4
  store i32 %14, ptr %18, align 4
  %19 = load ptr, ptr %5, align 8
  %20 = sext i32 %15 to i64
  %21 = getelementptr [4 x i8], ptr %19, i64 %20
  %22 = getelementptr i8, ptr %21, i64 120
  store i32 %15, ptr %22, align 4
  %23 = load i32, ptr %7, align 4
  %24 = add nsw i32 %23, 1
  %25 = load ptr, ptr %6, align 8
  %26 = sext i32 %23 to i64
  %27 = getelementptr inbounds [204 x i8], ptr %25, i64 %26
  br label %28

28:                                               ; preds = %33, %4
  %29 = phi i32 [ %34, %33 ], [ %23, %4 ]
  %.not = icmp sgt i32 %29, %24
  br i1 %.not, label %35, label %30

30:                                               ; preds = %28
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds [4 x i8], ptr %27, i64 %31
  store i32 %23, ptr %32, align 4
  br label %33

33:                                               ; preds = %30
  %34 = add nsw i32 %29, 1
  br label %28, !llvm.loop !12

35:                                               ; preds = %28
  %36 = load ptr, ptr %6, align 8
  %37 = load i32, ptr %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [204 x i8], ptr %36, i64 %38
  %40 = sext i32 %37 to i64
  %41 = getelementptr [4 x i8], ptr %39, i64 %40
  %42 = getelementptr i8, ptr %41, i64 -4
  %43 = load i32, ptr %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %42, align 4
  %45 = load ptr, ptr %5, align 8
  %46 = load i32, ptr %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [4 x i8], ptr %45, i64 %47
  %49 = load i32, ptr %48, align 4
  %50 = load ptr, ptr %6, align 8
  %51 = sext i32 %46 to i64
  %52 = getelementptr [204 x i8], ptr %50, i64 %51
  %53 = getelementptr i8, ptr %52, i64 4080
  %54 = load i32, ptr %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [4 x i8], ptr %53, i64 %55
  store i32 %49, ptr %56, align 4
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
  %.promoted1 = load i8, ptr %7, align 1
  br label %8

8:                                                ; preds = %26, %2
  %9 = phi i8 [ %27, %26 ], [ %.promoted1, %2 ]
  %10 = phi i32 [ %28, %26 ], [ 1, %2 ]
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %29

12:                                               ; preds = %8
  %13 = sext i32 %10 to i64
  %14 = getelementptr inbounds i8, ptr %0, i64 %13
  %15 = load i8, ptr %14, align 1
  %16 = sext i8 %15 to i32
  %17 = sext i32 %10 to i64
  %18 = getelementptr i8, ptr %1, i64 %17
  %19 = getelementptr i8, ptr %18, i64 1
  %20 = load i8, ptr %19, align 1
  %21 = sext i8 %20 to i32
  %22 = call i32 @Func1(i32 noundef %16, i32 noundef %21)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %12
  %25 = add nsw i32 %10, 1
  br label %26

26:                                               ; preds = %24, %12
  %27 = phi i8 [ 65, %24 ], [ %9, %12 ]
  %28 = phi i32 [ %25, %24 ], [ %10, %12 ]
  br label %8, !llvm.loop !13

29:                                               ; preds = %8
  store i32 %10, ptr %6, align 4
  store i8 %9, ptr %7, align 1
  %30 = icmp sgt i8 %9, 86
  br i1 %30, label %31, label %35

31:                                               ; preds = %29
  %32 = load i8, ptr %7, align 1
  %33 = icmp slt i8 %32, 91
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 7, ptr %6, align 4
  br label %35

35:                                               ; preds = %34, %31, %29
  %36 = load i8, ptr %7, align 1
  %37 = icmp eq i8 %36, 88
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 1, ptr %3, align 4
  br label %48

39:                                               ; preds = %35
  %40 = load ptr, ptr %4, align 8
  %41 = load ptr, ptr %5, align 8
  %42 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %40, ptr noundef nonnull dereferenceable(1) %41) #5
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, ptr %6, align 4
  %46 = add nsw i32 %45, 7
  store i32 %46, ptr %6, align 4
  store i32 1, ptr %3, align 4
  br label %48

47:                                               ; preds = %39
  store i32 0, ptr %3, align 4
  br label %48

48:                                               ; preds = %47, %44, %38
  %49 = load i32, ptr %3, align 4
  ret i32 %49
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
