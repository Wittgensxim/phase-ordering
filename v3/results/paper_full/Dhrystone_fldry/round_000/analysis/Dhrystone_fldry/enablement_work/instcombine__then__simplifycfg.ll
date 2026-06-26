; ModuleID = 'results\paper_full\Dhrystone_fldry\Dhrystone_fldry.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Dhrystone/fldry.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@Version = dso_local global [4 x i8] c"1.1\00", align 1
@.str = private unnamed_addr constant [53 x i8] c"calculate floating dhrystones using doubles size %d\0A\00", align 1
@PtrGlbNext = dso_local global ptr null, align 8
@PtrGlb = dso_local global ptr null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, SOME STRING\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 1'ST STRING\00", align 1
@Array2Glob = dso_local global [51 x [51 x double]] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 2'ND STRING\00", align 1
@BoolGlob = dso_local global i32 0, align 4
@Array1Glob = dso_local global [51 x double] zeroinitializer, align 16
@Char2Glob = dso_local global i8 0, align 1
@Char1Glob = dso_local global i8 0, align 1
@IntGlob = dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i64 noundef 8) #6
  %4 = call i32 @Proc0()
  ret i32 0
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc0() #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca [31 x i8], align 16
  %7 = alloca [31 x i8], align 16
  %8 = alloca i32, align 4
  %9 = call i32 @clock() #6
  br label %10

10:                                               ; preds = %12, %0
  %storemerge = phi i32 [ 0, %0 ], [ %14, %12 ]
  store i32 %storemerge, ptr %8, align 4
  %11 = icmp ult i32 %storemerge, 100000000
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = load i32, ptr %8, align 4
  %14 = add i32 %13, 1
  br label %10, !llvm.loop !7

15:                                               ; preds = %10
  %16 = call i32 @clock() #6
  %17 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #7
  store ptr %17, ptr @PtrGlbNext, align 8
  %18 = call dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #7
  store ptr %18, ptr @PtrGlb, align 8
  %19 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %19, ptr %18, align 8
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 0, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 12
  store i32 10001, ptr %21, align 4
  %22 = load ptr, ptr @PtrGlb, align 8
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 16
  store double 4.000000e+01, ptr %23, align 8
  %24 = getelementptr inbounds nuw i8, ptr %22, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %24, ptr noundef nonnull align 1 dereferenceable(31) @.str.1, i64 31, i1 false) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %6, ptr noundef nonnull align 1 dereferenceable(31) @.str.2, i64 31, i1 false) #6
  store double 1.000000e+01, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 3320), align 8
  %25 = call i32 @clock() #6
  br label %26

26:                                               ; preds = %64, %15
  %storemerge1 = phi i32 [ 0, %15 ], [ %74, %64 ]
  store i32 %storemerge1, ptr %8, align 4
  %27 = icmp ult i32 %storemerge1, 100000000
  br i1 %27, label %28, label %75

28:                                               ; preds = %26
  %29 = call i32 @Proc5()
  %30 = call i32 @Proc4()
  store double 2.000000e+00, ptr %1, align 8
  store double 3.000000e+00, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %7, ptr noundef nonnull align 1 dereferenceable(31) @.str.3, i64 31, i1 false) #6
  store i32 10000, ptr %5, align 4
  %31 = call i32 @Func2(ptr noundef nonnull %6, ptr noundef nonnull %7)
  %.not = icmp eq i32 %31, 0
  %32 = zext i1 %.not to i32
  store i32 %32, ptr @BoolGlob, align 4
  br label %33

33:                                               ; preds = %37, %28
  %34 = load double, ptr %1, align 8
  %35 = load double, ptr %2, align 8
  %36 = fcmp olt double %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load double, ptr %1, align 8
  %39 = load double, ptr %2, align 8
  %40 = fneg double %39
  %41 = call double @llvm.fmuladd.f64(double %38, double 5.000000e+00, double %40)
  store double %41, ptr %3, align 8
  %42 = call i32 @Proc7(double noundef %38, double noundef %39, ptr noundef nonnull %3)
  %43 = load double, ptr %1, align 8
  %44 = fadd double %43, 1.000000e+00
  store double %44, ptr %1, align 8
  br label %33, !llvm.loop !9

45:                                               ; preds = %33
  %46 = load double, ptr %1, align 8
  %47 = load double, ptr %3, align 8
  %48 = call i32 @Proc8(ptr noundef nonnull @Array1Glob, ptr noundef nonnull @Array2Glob, double noundef %46, double noundef %47)
  %49 = load ptr, ptr @PtrGlb, align 8
  %50 = call i32 @Proc1(ptr noundef %49)
  br label %51

51:                                               ; preds = %61, %45
  %storemerge2 = phi i8 [ 65, %45 ], [ %63, %61 ]
  store i8 %storemerge2, ptr %4, align 1
  %52 = load i8, ptr @Char2Glob, align 1
  %.not3 = icmp sgt i8 %storemerge2, %52
  br i1 %.not3, label %64, label %53

53:                                               ; preds = %51
  %54 = load i32, ptr %5, align 4
  %55 = load i8, ptr %4, align 1
  %56 = sext i8 %55 to i32
  %57 = call i32 @Func1(i32 noundef %56, i32 noundef 67)
  %58 = icmp eq i32 %54, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = call i32 @Proc6(i32 noundef 0, ptr noundef nonnull %5)
  br label %61

61:                                               ; preds = %53, %59
  %62 = load i8, ptr %4, align 1
  %63 = add i8 %62, 1
  br label %51, !llvm.loop !10

64:                                               ; preds = %51
  %65 = load double, ptr %2, align 8
  %66 = load double, ptr %1, align 8
  %67 = fmul double %65, %66
  store double %67, ptr %3, align 8
  %68 = fdiv double %67, %66
  %69 = fsub double %67, %68
  %70 = fneg double %66
  %71 = call double @llvm.fmuladd.f64(double %69, double 7.000000e+00, double %70)
  store double %71, ptr %2, align 8
  %72 = call i32 @Proc2(ptr noundef nonnull %1)
  %73 = load i32, ptr %8, align 4
  %74 = add i32 %73, 1
  br label %26, !llvm.loop !11

75:                                               ; preds = %26
  ret i32 undef
}

declare dso_local i32 @clock() #1

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare dso_local ptr @strcpy(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc1(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double 5.000000e+00, ptr %3, align 8
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double 5.000000e+00, ptr %5, align 8
  %6 = load ptr, ptr %0, align 8
  %7 = load ptr, ptr %2, align 8
  %8 = load ptr, ptr %7, align 8
  store ptr %6, ptr %8, align 8
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc2(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %5 = load double, ptr %0, align 8
  %6 = fadd double %5, 1.000000e+01
  store double %6, ptr %3, align 8
  br label %7

7:                                                ; preds = %16, %1
  %8 = load i8, ptr @Char1Glob, align 1
  %9 = icmp eq i8 %8, 65
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = load double, ptr %3, align 8
  %12 = fadd double %11, -1.000000e+00
  store double %12, ptr %3, align 8
  %13 = load double, ptr @IntGlob, align 8
  %14 = fsub double %12, %13
  %15 = load ptr, ptr %2, align 8
  store double %14, ptr %15, align 8
  store i32 0, ptr %4, align 4
  br label %16

16:                                               ; preds = %10, %7
  %17 = load i32, ptr %4, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %7

19:                                               ; preds = %16
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
  store double 1.000000e+02, ptr @IntGlob, align 8
  br label %9

9:                                                ; preds = %8, %4
  %10 = load double, ptr @IntGlob, align 8
  %11 = load ptr, ptr @PtrGlb, align 8
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %13 = call i32 @Proc7(i32 noundef 10, double noundef %10, ptr noundef nonnull %12)
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
  switch i32 %9, label %23 [
    i32 0, label %10
    i32 10000, label %12
    i32 10001, label %19
    i32 10003, label %21
  ]

10:                                               ; preds = %8
  %11 = load ptr, ptr %4, align 8
  store i32 0, ptr %11, align 4
  br label %23

12:                                               ; preds = %8
  %13 = load double, ptr @IntGlob, align 8
  %14 = fcmp ogt double %13, 1.000000e+02
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load ptr, ptr %4, align 8
  store i32 0, ptr %16, align 4
  br label %23

17:                                               ; preds = %12
  %18 = load ptr, ptr %4, align 8
  store i32 10002, ptr %18, align 4
  br label %23

19:                                               ; preds = %8
  %20 = load ptr, ptr %4, align 8
  store i32 10000, ptr %20, align 4
  br label %23

21:                                               ; preds = %8
  %22 = load ptr, ptr %4, align 8
  store i32 10001, ptr %22, align 4
  br label %23

23:                                               ; preds = %15, %17, %21, %19, %10, %8
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc7(double noundef %0, double noundef %1, ptr noundef %2) #0 {
  %4 = fadd double %0, 2.000000e+00
  %5 = fadd double %1, %4
  store double %5, ptr %2, align 8
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc8(ptr noundef %0, ptr noundef %1, double noundef %2, double noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %9 = fadd double %2, 5.000000e+00
  store double %9, ptr %7, align 8
  %10 = fptosi double %9 to i32
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [8 x i8], ptr %0, i64 %11
  store double %3, ptr %12, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = fptosi double %9 to i32
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x i8], ptr %13, i64 %15
  %17 = load double, ptr %16, align 8
  %18 = load double, ptr %7, align 8
  %19 = fptosi double %18 to i32
  %20 = sext i32 %19 to i64
  %21 = getelementptr [8 x i8], ptr %13, i64 %20
  %22 = getelementptr i8, ptr %21, i64 8
  store double %17, ptr %22, align 8
  %23 = load ptr, ptr %5, align 8
  %24 = load double, ptr %7, align 8
  %25 = fptosi double %24 to i32
  %26 = sext i32 %25 to i64
  %27 = getelementptr [8 x i8], ptr %23, i64 %26
  %28 = getelementptr i8, ptr %27, i64 240
  store double %18, ptr %28, align 8
  br label %29

29:                                               ; preds = %33, %4
  %storemerge = phi double [ %24, %4 ], [ %44, %33 ]
  store double %storemerge, ptr %8, align 8
  %30 = load double, ptr %7, align 8
  %31 = fadd double %30, 1.000000e+00
  %32 = fcmp ugt double %storemerge, %31
  br i1 %32, label %45, label %33

33:                                               ; preds = %29
  %34 = load double, ptr %7, align 8
  %35 = load ptr, ptr %6, align 8
  %36 = fptosi double %34 to i32
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [408 x i8], ptr %35, i64 %37
  %39 = load double, ptr %8, align 8
  %40 = fptosi double %39 to i32
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i8], ptr %38, i64 %41
  store double %34, ptr %42, align 8
  %43 = load double, ptr %8, align 8
  %44 = fadd double %43, 1.000000e+00
  br label %29, !llvm.loop !12

45:                                               ; preds = %29
  %46 = load ptr, ptr %6, align 8
  %47 = load double, ptr %7, align 8
  %48 = fptosi double %47 to i32
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [408 x i8], ptr %46, i64 %49
  %51 = fptosi double %47 to i32
  %52 = sext i32 %51 to i64
  %53 = getelementptr [8 x i8], ptr %50, i64 %52
  %54 = getelementptr i8, ptr %53, i64 -8
  %55 = load double, ptr %54, align 8
  %56 = fadd double %55, 1.000000e+00
  store double %56, ptr %54, align 8
  %57 = load ptr, ptr %5, align 8
  %58 = load double, ptr %7, align 8
  %59 = fptosi double %58 to i32
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [8 x i8], ptr %57, i64 %60
  %62 = load double, ptr %61, align 8
  %63 = load ptr, ptr %6, align 8
  %64 = fptosi double %58 to i32
  %65 = sext i32 %64 to i64
  %66 = getelementptr [408 x i8], ptr %63, i64 %65
  %67 = getelementptr i8, ptr %66, i64 8160
  %68 = load double, ptr %7, align 8
  %69 = fptosi double %68 to i32
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [8 x i8], ptr %67, i64 %70
  store double %62, ptr %71, align 8
  store double 5.000000e+00, ptr @IntGlob, align 8
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
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca double, align 8
  %7 = alloca i8, align 1
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store double 1.000000e+00, ptr %6, align 8
  br label %8

8:                                                ; preds = %32, %2
  %9 = load double, ptr %6, align 8
  %10 = fcmp ugt double %9, 1.000000e+00
  br i1 %10, label %33, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %4, align 8
  %13 = load double, ptr %6, align 8
  %14 = fptosi double %13 to i32
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %12, i64 %15
  %17 = load i8, ptr %16, align 1
  %18 = sext i8 %17 to i32
  %19 = load ptr, ptr %5, align 8
  %20 = load double, ptr %6, align 8
  %21 = fptosi double %20 to i32
  %22 = sext i32 %21 to i64
  %23 = getelementptr i8, ptr %19, i64 %22
  %24 = getelementptr i8, ptr %23, i64 1
  %25 = load i8, ptr %24, align 1
  %26 = sext i8 %25 to i32
  %27 = call i32 @Func1(i32 noundef %18, i32 noundef %26)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %11
  store i8 65, ptr %7, align 1
  %30 = load double, ptr %6, align 8
  %31 = fadd double %30, 1.000000e+00
  store double %31, ptr %6, align 8
  br label %32

32:                                               ; preds = %29, %11
  br label %8, !llvm.loop !13

33:                                               ; preds = %8
  %34 = load i8, ptr %7, align 1
  %35 = icmp sgt i8 %34, 86
  %36 = load i8, ptr %7, align 1
  %37 = icmp slt i8 %36, 91
  %or.cond = select i1 %35, i1 %37, i1 false
  br i1 %or.cond, label %38, label %39

38:                                               ; preds = %33
  store double 7.000000e+00, ptr %6, align 8
  br label %39

39:                                               ; preds = %38, %33
  %40 = load i8, ptr %7, align 1
  %41 = icmp eq i8 %40, 88
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 1, ptr %3, align 4
  br label %52

43:                                               ; preds = %39
  %44 = load ptr, ptr %4, align 8
  %45 = load ptr, ptr %5, align 8
  %46 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %44, ptr noundef nonnull dereferenceable(1) %45) #6
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load double, ptr %6, align 8
  %50 = fadd double %49, 7.000000e+00
  store double %50, ptr %6, align 8
  store i32 1, ptr %3, align 4
  br label %52

51:                                               ; preds = %43
  store i32 0, ptr %3, align 4
  br label %52

52:                                               ; preds = %51, %48, %42
  %53 = load i32, ptr %3, align 4
  ret i32 %53
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func3(i32 noundef %0) #0 {
  %2 = icmp eq i32 %0, 10001
  %. = select i1 %2, i32 1, i32 0
  ret i32 %.
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Dhrystone/fldry.c", directory: "E:/Phase Ordering/v3")
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
