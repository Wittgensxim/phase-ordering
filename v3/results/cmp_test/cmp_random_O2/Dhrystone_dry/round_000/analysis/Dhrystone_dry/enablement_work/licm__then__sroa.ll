; ModuleID = 'results\cmp_test\cmp_random_O2\Dhrystone_dry\Dhrystone_dry.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Dhrystone/dry.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.Record = type { ptr, i32, i32, i32, [31 x i8] }

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
  %6 = call i32 @clock()
  br label %7

7:                                                ; preds = %11, %0
  %8 = phi i32 [ %12, %11 ], [ 0, %0 ]
  %9 = icmp ult i32 %8, 100000000
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  br label %11

11:                                               ; preds = %10
  %12 = add i32 %8, 1
  br label %7, !llvm.loop !7

13:                                               ; preds = %7
  %.lcssa = phi i32 [ %8, %7 ]
  %14 = call i32 @clock()
  %15 = sub nsw i32 %14, %6
  %16 = call ptr @malloc(i64 noundef 56) #4
  store ptr %16, ptr @PtrGlbNext, align 8
  %17 = call ptr @malloc(i64 noundef 56) #4
  store ptr %17, ptr @PtrGlb, align 8
  %18 = load ptr, ptr @PtrGlbNext, align 8
  %19 = load ptr, ptr @PtrGlb, align 8
  %20 = getelementptr inbounds nuw %struct.Record, ptr %19, i32 0, i32 0
  store ptr %18, ptr %20, align 8
  %21 = load ptr, ptr @PtrGlb, align 8
  %22 = getelementptr inbounds nuw %struct.Record, ptr %21, i32 0, i32 1
  store i32 0, ptr %22, align 8
  %23 = load ptr, ptr @PtrGlb, align 8
  %24 = getelementptr inbounds nuw %struct.Record, ptr %23, i32 0, i32 2
  store i32 10001, ptr %24, align 4
  %25 = load ptr, ptr @PtrGlb, align 8
  %26 = getelementptr inbounds nuw %struct.Record, ptr %25, i32 0, i32 3
  store i32 40, ptr %26, align 8
  %27 = load ptr, ptr @PtrGlb, align 8
  %28 = getelementptr inbounds nuw %struct.Record, ptr %27, i32 0, i32 4
  %29 = getelementptr inbounds [31 x i8], ptr %28, i64 0, i64 0
  %30 = call ptr @strcpy(ptr noundef %29, ptr noundef @.str) #5
  %31 = getelementptr inbounds [31 x i8], ptr %4, i64 0, i64 0
  %32 = call ptr @strcpy(ptr noundef %31, ptr noundef @.str.1) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %33 = call i32 @clock()
  %34 = getelementptr inbounds [31 x i8], ptr %5, i64 0, i64 0
  %35 = getelementptr inbounds [31 x i8], ptr %4, i64 0, i64 0
  %36 = getelementptr inbounds [31 x i8], ptr %5, i64 0, i64 0
  br label %37

37:                                               ; preds = %94, %13
  %.lcssa28 = phi i8 [ %.lcssa2, %94 ], [ undef, %13 ]
  %38 = phi i32 [ %92, %94 ], [ undef, %13 ]
  %39 = phi i32 [ %95, %94 ], [ 0, %13 ]
  %40 = icmp ult i32 %39, 100000000
  br i1 %40, label %41, label %96

41:                                               ; preds = %37
  %42 = call i32 @Proc5()
  %43 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  %44 = call ptr @strcpy(ptr noundef %34, ptr noundef @.str.2) #5
  store i32 10000, ptr %3, align 4
  %45 = call i32 @Func2(ptr noundef %35, ptr noundef %36)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  store i32 %48, ptr @BoolGlob, align 4
  br label %49

49:                                               ; preds = %52, %41
  %50 = load i32, ptr %1, align 4
  %51 = icmp slt i32 %50, 3
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load i32, ptr %1, align 4
  %54 = mul nsw i32 5, %53
  %55 = sub nsw i32 %54, 3
  store i32 %55, ptr %2, align 4
  %56 = load i32, ptr %1, align 4
  %57 = call i32 @Proc7(i32 noundef %56, i32 noundef 3, ptr noundef %2)
  %58 = load i32, ptr %1, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %1, align 4
  br label %49, !llvm.loop !9

60:                                               ; preds = %49
  %61 = load i32, ptr %1, align 4
  %62 = load i32, ptr %2, align 4
  %63 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, i32 noundef %61, i32 noundef %62)
  %64 = load ptr, ptr @PtrGlb, align 8
  %65 = call i32 @Proc1(ptr noundef %64)
  br label %66

66:                                               ; preds = %80, %60
  %67 = phi i8 [ %81, %80 ], [ 65, %60 ]
  %68 = sext i8 %67 to i32
  %69 = load i8, ptr @Char2Glob, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp sle i32 %68, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %66
  %73 = load i32, ptr %3, align 4
  %74 = sext i8 %67 to i32
  %75 = call i32 @Func1(i32 noundef %74, i32 noundef 67)
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = call i32 @Proc6(i32 noundef 0, ptr noundef %3)
  br label %79

79:                                               ; preds = %77, %72
  br label %80

80:                                               ; preds = %79
  %81 = add i8 %67, 1
  br label %66, !llvm.loop !10

82:                                               ; preds = %66
  %.lcssa2 = phi i8 [ %67, %66 ]
  %83 = load i32, ptr %1, align 4
  %84 = mul nsw i32 3, %83
  store i32 %84, ptr %2, align 4
  %85 = load i32, ptr %2, align 4
  %86 = load i32, ptr %1, align 4
  %87 = sdiv i32 %85, %86
  %88 = load i32, ptr %2, align 4
  %89 = sub nsw i32 %88, %87
  %90 = mul nsw i32 7, %89
  %91 = load i32, ptr %1, align 4
  %92 = sub nsw i32 %90, %91
  %93 = call i32 @Proc2(ptr noundef %1)
  br label %94

94:                                               ; preds = %82
  %95 = add i32 %39, 1
  br label %37, !llvm.loop !11

96:                                               ; preds = %37
  %.lcssa28.lcssa = phi i8 [ %.lcssa28, %37 ]
  %.lcssa6 = phi i32 [ %38, %37 ]
  %.lcssa4 = phi i32 [ %39, %37 ]
  ret i32 undef
}

declare dso_local i32 @clock() #1

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare dso_local ptr @strcpy(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc1(ptr noundef %0) #0 {
  %2 = getelementptr inbounds nuw %struct.Record, ptr %0, i32 0, i32 3
  store i32 5, ptr %2, align 8
  %3 = getelementptr inbounds nuw %struct.Record, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds nuw %struct.Record, ptr %0, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds nuw %struct.Record, ptr %6, i32 0, i32 3
  store i32 %4, ptr %7, align 8
  %8 = getelementptr inbounds nuw %struct.Record, ptr %0, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds nuw %struct.Record, ptr %0, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds nuw %struct.Record, ptr %11, i32 0, i32 0
  store ptr %9, ptr %12, align 8
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc2(ptr noundef %0) #0 {
  %2 = load i32, ptr %0, align 4
  %3 = add nsw i32 %2, 10
  %4 = load i8, ptr @Char1Glob, align 1
  %5 = sext i8 %4 to i32
  %6 = icmp eq i32 %5, 65
  br label %7

7:                                                ; preds = %19, %1
  %8 = phi i32 [ %15, %19 ], [ undef, %1 ]
  %9 = phi i32 [ %16, %19 ], [ %3, %1 ]
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
  %.lcssa2 = phi i32 [ %15, %14 ]
  %.lcssa = phi i32 [ %16, %14 ]
  br label %20

19:                                               ; preds = %14
  br label %7

20:                                               ; preds = %18
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc3(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PtrGlb, align 8
  %3 = icmp ne ptr %2, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = load ptr, ptr @PtrGlb, align 8
  %6 = getelementptr inbounds nuw %struct.Record, ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  store ptr %7, ptr %0, align 8
  br label %9

8:                                                ; preds = %1
  store i32 100, ptr @IntGlob, align 4
  br label %9

9:                                                ; preds = %8, %4
  %10 = load i32, ptr @IntGlob, align 4
  %11 = load ptr, ptr @PtrGlb, align 8
  %12 = getelementptr inbounds nuw %struct.Record, ptr %11, i32 0, i32 3
  %13 = call i32 @Proc7(i32 noundef 10, i32 noundef %10, ptr noundef %12)
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc4() #0 {
  %1 = load i8, ptr @Char1Glob, align 1
  %2 = sext i8 %1 to i32
  %3 = icmp eq i32 %2, 65
  %4 = zext i1 %3 to i32
  %5 = load i32, ptr @BoolGlob, align 4
  %6 = or i32 %4, %5
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
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  store i32 10002, ptr %1, align 4
  br label %6

6:                                                ; preds = %5, %2
  switch i32 %0, label %17 [
    i32 0, label %7
    i32 10000, label %8
    i32 10001, label %14
    i32 10002, label %15
    i32 10003, label %16
  ]

7:                                                ; preds = %6
  store i32 0, ptr %1, align 4
  br label %17

8:                                                ; preds = %6
  %9 = load i32, ptr @IntGlob, align 4
  %10 = icmp sgt i32 %9, 100
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i32 0, ptr %1, align 4
  br label %13

12:                                               ; preds = %8
  store i32 10002, ptr %1, align 4
  br label %13

13:                                               ; preds = %12, %11
  br label %17

14:                                               ; preds = %6
  store i32 10000, ptr %1, align 4
  br label %17

15:                                               ; preds = %6
  br label %17

16:                                               ; preds = %6
  store i32 10001, ptr %1, align 4
  br label %17

17:                                               ; preds = %16, %15, %14, %13, %7, %6
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
  %7 = getelementptr inbounds i32, ptr %0, i64 %6
  store i32 %3, ptr %7, align 4
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds i32, ptr %0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = add nsw i32 %5, 1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, ptr %0, i64 %12
  store i32 %10, ptr %13, align 4
  %14 = add nsw i32 %5, 30
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %0, i64 %15
  store i32 %5, ptr %16, align 4
  %17 = add nsw i32 %5, 1
  %18 = sext i32 %5 to i64
  %19 = getelementptr inbounds [51 x i32], ptr %1, i64 %18
  br label %20

20:                                               ; preds = %26, %4
  %21 = phi i32 [ %27, %26 ], [ %5, %4 ]
  %22 = icmp sle i32 %21, %17
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = sext i32 %21 to i64
  %25 = getelementptr inbounds [51 x i32], ptr %19, i64 0, i64 %24
  store i32 %5, ptr %25, align 4
  br label %26

26:                                               ; preds = %23
  %27 = add nsw i32 %21, 1
  br label %20, !llvm.loop !12

28:                                               ; preds = %20
  %.lcssa = phi i32 [ %21, %20 ]
  %29 = sext i32 %5 to i64
  %30 = getelementptr inbounds [51 x i32], ptr %1, i64 %29
  %31 = sub nsw i32 %5, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [51 x i32], ptr %30, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %33, align 4
  %36 = sext i32 %5 to i64
  %37 = getelementptr inbounds i32, ptr %0, i64 %36
  %38 = load i32, ptr %37, align 4
  %39 = add nsw i32 %5, 20
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [51 x i32], ptr %1, i64 %40
  %42 = sext i32 %5 to i64
  %43 = getelementptr inbounds [51 x i32], ptr %41, i64 0, i64 %42
  store i32 %38, ptr %43, align 4
  store i32 5, ptr @IntGlob, align 4
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func1(i32 noundef %0, i32 noundef %1) #0 {
  %3 = trunc i32 %0 to i8
  %4 = trunc i32 %1 to i8
  %5 = sext i8 %3 to i32
  %6 = sext i8 %4 to i32
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %10

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %9, %8
  %.0 = phi i32 [ 0, %8 ], [ 10000, %9 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func2(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %21, %2
  %4 = phi i8 [ %22, %21 ], [ undef, %2 ]
  %5 = phi i32 [ %23, %21 ], [ 1, %2 ]
  %6 = icmp sle i32 %5, 1
  br i1 %6, label %7, label %24

7:                                                ; preds = %3
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = load i8, ptr %9, align 1
  %11 = sext i8 %10 to i32
  %12 = add nsw i32 %5, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %1, i64 %13
  %15 = load i8, ptr %14, align 1
  %16 = sext i8 %15 to i32
  %17 = call i32 @Func1(i32 noundef %11, i32 noundef %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %7
  %20 = add nsw i32 %5, 1
  br label %21

21:                                               ; preds = %19, %7
  %22 = phi i8 [ 65, %19 ], [ %4, %7 ]
  %23 = phi i32 [ %20, %19 ], [ %5, %7 ]
  br label %3, !llvm.loop !13

24:                                               ; preds = %3
  %.lcssa2 = phi i8 [ %4, %3 ]
  %.lcssa = phi i32 [ %5, %3 ]
  %25 = sext i8 %.lcssa2 to i32
  %26 = icmp sge i32 %25, 87
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = sext i8 %.lcssa2 to i32
  %29 = icmp sle i32 %28, 90
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %31

31:                                               ; preds = %30, %27, %24
  %.0 = phi i32 [ 7, %30 ], [ %.lcssa, %27 ], [ %.lcssa, %24 ]
  %32 = sext i8 %.lcssa2 to i32
  %33 = icmp eq i32 %32, 88
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %41

35:                                               ; preds = %31
  %36 = call i32 @strcmp(ptr noundef %0, ptr noundef %1) #5
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = add nsw i32 %.0, 7
  br label %41

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %40, %38, %34
  %.012 = phi i32 [ 1, %34 ], [ 1, %38 ], [ 0, %40 ]
  ret i32 %.012
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
  %.0 = phi i32 [ 1, %3 ], [ 0, %4 ]
  ret i32 %.0
}

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(0) }
attributes #5 = { nounwind }

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
