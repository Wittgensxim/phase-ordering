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
  %8 = call i32 @clock() #6
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
  %.promoted5 = load double, ptr %2, align 8
  %.promoted7 = load i8, ptr %4, align 1
  br label %26

26:                                               ; preds = %67, %15
  %.lcssa28 = phi i8 [ %51, %67 ], [ %.promoted7, %15 ]
  %27 = phi double [ %71, %67 ], [ %.promoted5, %15 ]
  %28 = phi i32 [ %72, %67 ], [ 0, %15 ]
  %29 = icmp samesign ult i32 %28, 100000000
  br i1 %29, label %30, label %73

30:                                               ; preds = %26
  %31 = call i32 @Proc5()
  %32 = call i32 @Proc4()
  store double 2.000000e+00, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %7, ptr noundef nonnull align 1 dereferenceable(31) @.str.3, i64 31, i1 false) #6
  store i32 10000, ptr %5, align 4
  %33 = call i32 @Func2(ptr noundef nonnull %6, ptr noundef nonnull %7)
  %.not = icmp eq i32 %33, 0
  %34 = zext i1 %.not to i32
  store i32 %34, ptr @BoolGlob, align 4
  br label %35

35:                                               ; preds = %38, %30
  %36 = load double, ptr %1, align 8
  %37 = fcmp olt double %36, 3.000000e+00
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load double, ptr %1, align 8
  %40 = call double @llvm.fmuladd.f64(double %39, double 5.000000e+00, double -3.000000e+00)
  store double %40, ptr %3, align 8
  %41 = call i32 @Proc7(double noundef %39, double noundef 3.000000e+00, ptr noundef nonnull %3)
  %42 = load double, ptr %1, align 8
  %43 = fadd double %42, 1.000000e+00
  store double %43, ptr %1, align 8
  br label %35, !llvm.loop !9

44:                                               ; preds = %35
  %45 = load double, ptr %1, align 8
  %46 = load double, ptr %3, align 8
  %47 = call i32 @Proc8(ptr noundef nonnull @Array1Glob, ptr noundef nonnull @Array2Glob, double noundef %45, double noundef %46)
  %48 = load ptr, ptr @PtrGlb, align 8
  %49 = call i32 @Proc1(ptr noundef %48)
  br label %50

50:                                               ; preds = %61, %44
  %51 = phi i8 [ %62, %61 ], [ 65, %44 ]
  %52 = load i8, ptr @Char2Glob, align 1
  %.not9 = icmp sgt i8 %51, %52
  br i1 %.not9, label %63, label %53

53:                                               ; preds = %50
  %54 = load i32, ptr %5, align 4
  %55 = sext i8 %51 to i32
  %56 = call i32 @Func1(i32 noundef %55, i32 noundef 67)
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = call i32 @Proc6(i32 noundef 0, ptr noundef nonnull %5)
  br label %60

60:                                               ; preds = %58, %53
  br label %61

61:                                               ; preds = %60
  %62 = add i8 %51, 1
  br label %50, !llvm.loop !10

63:                                               ; preds = %50
  %64 = load double, ptr %1, align 8
  %65 = fmul double %64, 3.000000e+00
  store double %65, ptr %3, align 8
  %66 = call i32 @Proc2(ptr noundef nonnull %1)
  br label %67

67:                                               ; preds = %63
  %68 = fdiv double %65, %64
  %69 = fsub double %65, %68
  %70 = fneg double %64
  %71 = call double @llvm.fmuladd.f64(double %69, double 7.000000e+00, double %70)
  %72 = add nuw nsw i32 %28, 1
  br label %26, !llvm.loop !11

73:                                               ; preds = %26
  store double %27, ptr %2, align 8
  store i8 %.lcssa28, ptr %4, align 1
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
  %2 = alloca i32, align 4
  %3 = load double, ptr %0, align 8
  %4 = fadd double %3, 1.000000e+01
  %5 = load i8, ptr @Char1Glob, align 1
  %6 = icmp eq i8 %5, 65
  %.promoted1 = load i32, ptr %2, align 4
  br label %7

7:                                                ; preds = %19, %1
  %8 = phi i32 [ %15, %19 ], [ %.promoted1, %1 ]
  %9 = phi double [ %16, %19 ], [ %4, %1 ]
  br i1 %6, label %10, label %14

10:                                               ; preds = %7
  %11 = fadd double %9, -1.000000e+00
  %12 = load double, ptr @IntGlob, align 8
  %13 = fsub double %11, %12
  store double %13, ptr %0, align 8
  br label %14

14:                                               ; preds = %10, %7
  %15 = phi i32 [ 0, %10 ], [ %8, %7 ]
  %16 = phi double [ %11, %10 ], [ %9, %7 ]
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
  %13 = load double, ptr @IntGlob, align 8
  %14 = fcmp ogt double %13, 1.000000e+02
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
  store double %24, ptr %8, align 8
  %29 = load double, ptr %7, align 8
  %30 = fadd double %29, 1.000000e+00
  %31 = load ptr, ptr %6, align 8
  %32 = fptosi double %29 to i32
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [408 x i8], ptr %31, i64 %33
  %.promoted = load double, ptr %8, align 8
  br label %35

35:                                               ; preds = %42, %4
  %36 = phi double [ %43, %42 ], [ %.promoted, %4 ]
  %37 = fcmp ugt double %36, %30
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = fptosi double %36 to i32
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [8 x i8], ptr %34, i64 %40
  store double %29, ptr %41, align 8
  br label %42

42:                                               ; preds = %38
  %43 = fadd double %36, 1.000000e+00
  br label %35, !llvm.loop !12

44:                                               ; preds = %35
  store double %36, ptr %8, align 8
  %45 = load ptr, ptr %6, align 8
  %46 = load double, ptr %7, align 8
  %47 = fptosi double %46 to i32
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [408 x i8], ptr %45, i64 %48
  %50 = fptosi double %46 to i32
  %51 = sext i32 %50 to i64
  %52 = getelementptr [8 x i8], ptr %49, i64 %51
  %53 = getelementptr i8, ptr %52, i64 -8
  %54 = load double, ptr %53, align 8
  %55 = fadd double %54, 1.000000e+00
  store double %55, ptr %53, align 8
  %56 = load ptr, ptr %5, align 8
  %57 = load double, ptr %7, align 8
  %58 = fptosi double %57 to i32
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [8 x i8], ptr %56, i64 %59
  %61 = load double, ptr %60, align 8
  %62 = load ptr, ptr %6, align 8
  %63 = fptosi double %57 to i32
  %64 = sext i32 %63 to i64
  %65 = getelementptr [408 x i8], ptr %62, i64 %64
  %66 = getelementptr i8, ptr %65, i64 8160
  %67 = load double, ptr %7, align 8
  %68 = fptosi double %67 to i32
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [8 x i8], ptr %66, i64 %69
  store double %61, ptr %70, align 8
  store double 5.000000e+00, ptr @IntGlob, align 8
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
  %6 = alloca double, align 8
  %7 = alloca i8, align 1
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store double 1.000000e+00, ptr %6, align 8
  %.promoted1 = load i8, ptr %7, align 1
  br label %8

8:                                                ; preds = %28, %2
  %9 = phi i8 [ %29, %28 ], [ %.promoted1, %2 ]
  %10 = phi double [ %30, %28 ], [ 1.000000e+00, %2 ]
  %11 = fcmp ugt double %10, 1.000000e+00
  br i1 %11, label %31, label %12

12:                                               ; preds = %8
  %13 = fptosi double %10 to i32
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %0, i64 %14
  %16 = load i8, ptr %15, align 1
  %17 = sext i8 %16 to i32
  %18 = fptosi double %10 to i32
  %19 = sext i32 %18 to i64
  %20 = getelementptr i8, ptr %1, i64 %19
  %21 = getelementptr i8, ptr %20, i64 1
  %22 = load i8, ptr %21, align 1
  %23 = sext i8 %22 to i32
  %24 = call i32 @Func1(i32 noundef %17, i32 noundef %23)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %12
  %27 = fadd double %10, 1.000000e+00
  br label %28

28:                                               ; preds = %26, %12
  %29 = phi i8 [ 65, %26 ], [ %9, %12 ]
  %30 = phi double [ %27, %26 ], [ %10, %12 ]
  br label %8, !llvm.loop !13

31:                                               ; preds = %8
  store double %10, ptr %6, align 8
  store i8 %9, ptr %7, align 1
  %32 = icmp sgt i8 %9, 86
  br i1 %32, label %33, label %37

33:                                               ; preds = %31
  %34 = load i8, ptr %7, align 1
  %35 = icmp slt i8 %34, 91
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store double 7.000000e+00, ptr %6, align 8
  br label %37

37:                                               ; preds = %36, %33, %31
  %38 = load i8, ptr %7, align 1
  %39 = icmp eq i8 %38, 88
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 1, ptr %3, align 4
  br label %50

41:                                               ; preds = %37
  %42 = load ptr, ptr %4, align 8
  %43 = load ptr, ptr %5, align 8
  %44 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %42, ptr noundef nonnull dereferenceable(1) %43) #6
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load double, ptr %6, align 8
  %48 = fadd double %47, 7.000000e+00
  store double %48, ptr %6, align 8
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
