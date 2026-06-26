; ModuleID = 'results\cmp_test\cmp_rule_O2\Dhrystone_dry\round_000\output.ll'
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
  %7 = icmp ult i32 0, 100000000
  br i1 %7, label %.lr.ph, label %13

.lr.ph:                                           ; preds = %0
  br label %8

8:                                                ; preds = %.lr.ph, %10
  %9 = phi i32 [ 0, %.lr.ph ], [ %11, %10 ]
  br label %10

10:                                               ; preds = %8
  %11 = add i32 %9, 1
  %12 = icmp ult i32 %11, 100000000
  br i1 %12, label %8, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %10
  br label %13

13:                                               ; preds = %._crit_edge, %0
  %14 = call i32 @clock()
  %15 = sub nsw i32 %14, %6
  %16 = call ptr @malloc(i64 noundef 56) #4
  store ptr %16, ptr @PtrGlbNext, align 8
  %17 = call ptr @malloc(i64 noundef 56) #4
  store ptr %17, ptr @PtrGlb, align 8
  %18 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %18, ptr %17, align 8
  %19 = load ptr, ptr @PtrGlb, align 8
  %20 = getelementptr inbounds nuw %struct.Record, ptr %19, i32 0, i32 1
  store i32 0, ptr %20, align 8
  %21 = load ptr, ptr @PtrGlb, align 8
  %22 = getelementptr inbounds nuw %struct.Record, ptr %21, i32 0, i32 2
  store i32 10001, ptr %22, align 4
  %23 = load ptr, ptr @PtrGlb, align 8
  %24 = getelementptr inbounds nuw %struct.Record, ptr %23, i32 0, i32 3
  store i32 40, ptr %24, align 8
  %25 = load ptr, ptr @PtrGlb, align 8
  %26 = getelementptr inbounds nuw %struct.Record, ptr %25, i32 0, i32 4
  %27 = call ptr @strcpy(ptr noundef %26, ptr noundef @.str) #5
  %28 = call ptr @strcpy(ptr noundef %4, ptr noundef @.str.1) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %29 = call i32 @clock()
  %30 = icmp ult i32 0, 100000000
  br i1 %30, label %.lr.ph8, label %89

.lr.ph8:                                          ; preds = %13
  br label %31

31:                                               ; preds = %.lr.ph8, %86
  %.010 = phi i32 [ 0, %.lr.ph8 ], [ %87, %86 ]
  %32 = call i32 @Proc5()
  %33 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  %34 = call ptr @strcpy(ptr noundef %5, ptr noundef @.str.2) #5
  store i32 10000, ptr %3, align 4
  %35 = call i32 @Func2(ptr noundef %4, ptr noundef %5)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, ptr @BoolGlob, align 4
  %39 = load i32, ptr %1, align 4
  %40 = icmp slt i32 %39, 3
  br i1 %40, label %.lr.ph2, label %52

.lr.ph2:                                          ; preds = %31
  br label %41

41:                                               ; preds = %.lr.ph2, %41
  %42 = phi i32 [ 3, %.lr.ph2 ], [ 3, %41 ]
  %43 = phi i32 [ %39, %.lr.ph2 ], [ %50, %41 ]
  %44 = mul nsw i32 5, %43
  %45 = sub nsw i32 %44, %42
  store i32 %45, ptr %2, align 4
  %46 = load i32, ptr %1, align 4
  %47 = call i32 @Proc7(i32 noundef %46, i32 noundef 3, ptr noundef %2)
  %48 = load i32, ptr %1, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr %1, align 4
  %50 = load i32, ptr %1, align 4
  %51 = icmp slt i32 %50, 3
  br i1 %51, label %41, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %41
  %split = phi i32 [ %50, %41 ]
  br label %52

52:                                               ; preds = %._crit_edge3, %31
  %.lcssa = phi i32 [ %split, %._crit_edge3 ], [ %39, %31 ]
  %53 = load i32, ptr %2, align 4
  %54 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, i32 noundef %.lcssa, i32 noundef %53)
  %55 = load ptr, ptr @PtrGlb, align 8
  %56 = call i32 @Proc1(ptr noundef %55)
  %57 = sext i8 65 to i32
  %58 = load i8, ptr @Char2Glob, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp sle i32 %57, %59
  br i1 %60, label %.lr.ph5, label %75

.lr.ph5:                                          ; preds = %52
  br label %61

61:                                               ; preds = %.lr.ph5, %69
  %.0 = phi i8 [ 65, %.lr.ph5 ], [ %70, %69 ]
  %62 = phi i32 [ %57, %.lr.ph5 ], [ %71, %69 ]
  %63 = load i32, ptr %3, align 4
  %64 = call i32 @Func1(i32 noundef %62, i32 noundef 67)
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = call i32 @Proc6(i32 noundef 0, ptr noundef %3)
  br label %68

68:                                               ; preds = %66, %61
  br label %69

69:                                               ; preds = %68
  %70 = add i8 %.0, 1
  %71 = sext i8 %70 to i32
  %72 = load i8, ptr @Char2Glob, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp sle i32 %71, %73
  br i1 %74, label %61, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %69
  br label %75

75:                                               ; preds = %._crit_edge6, %52
  %76 = load i32, ptr %1, align 4
  %77 = mul nsw i32 3, %76
  store i32 %77, ptr %2, align 4
  %78 = load i32, ptr %1, align 4
  %79 = sdiv i32 %77, %78
  %80 = load i32, ptr %2, align 4
  %81 = sub nsw i32 %80, %79
  %82 = mul nsw i32 7, %81
  %83 = load i32, ptr %1, align 4
  %84 = sub nsw i32 %82, %83
  %85 = call i32 @Proc2(ptr noundef %1)
  br label %86

86:                                               ; preds = %75
  %87 = add i32 %.010, 1
  %88 = icmp ult i32 %87, 100000000
  br i1 %88, label %31, label %._crit_edge9, !llvm.loop !11

._crit_edge9:                                     ; preds = %86
  br label %89

89:                                               ; preds = %._crit_edge9, %13
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
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds nuw %struct.Record, ptr %5, i32 0, i32 3
  store i32 %4, ptr %6, align 8
  %7 = load ptr, ptr %0, align 8
  store ptr %7, ptr %7, align 8
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc2(ptr noundef %0) #0 {
  %2 = load i32, ptr %0, align 4
  %3 = add nsw i32 %2, 10
  br label %4

4:                                                ; preds = %12, %1
  %.0 = phi i32 [ %3, %1 ], [ %.1, %12 ]
  %5 = load i8, ptr @Char1Glob, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 65
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = add nsw i32 %.0, -1
  %10 = load i32, ptr @IntGlob, align 4
  %11 = sub nsw i32 %9, %10
  store i32 %11, ptr %0, align 4
  br label %12

12:                                               ; preds = %8, %4
  %.1 = phi i32 [ %9, %8 ], [ %.0, %4 ]
  %13 = icmp eq i32 0, 0
  br i1 %13, label %14, label %4

14:                                               ; preds = %12
  br label %15

15:                                               ; preds = %14
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc3(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PtrGlb, align 8
  %3 = icmp ne ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8
  store ptr %5, ptr %0, align 8
  br label %7

6:                                                ; preds = %1
  store i32 100, ptr @IntGlob, align 4
  br label %7

7:                                                ; preds = %6, %4
  %8 = load i32, ptr @IntGlob, align 4
  %9 = load ptr, ptr @PtrGlb, align 8
  %10 = getelementptr inbounds nuw %struct.Record, ptr %9, i32 0, i32 3
  %11 = call i32 @Proc7(i32 noundef 10, i32 noundef %8, ptr noundef %10)
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
  %18 = icmp sle i32 %5, %17
  br i1 %18, label %.lr.ph, label %30

.lr.ph:                                           ; preds = %4
  br label %19

19:                                               ; preds = %.lr.ph, %26
  %.0 = phi i32 [ %5, %.lr.ph ], [ %27, %26 ]
  %20 = phi i32 [ %5, %.lr.ph ], [ %5, %26 ]
  %21 = phi i32 [ %5, %.lr.ph ], [ %27, %26 ]
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds [51 x i32], ptr %1, i64 %22
  %24 = sext i32 %21 to i64
  %25 = getelementptr inbounds [51 x i32], ptr %23, i64 0, i64 %24
  store i32 %20, ptr %25, align 4
  br label %26

26:                                               ; preds = %19
  %27 = add nsw i32 %.0, 1
  %28 = add nsw i32 %5, 1
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %19, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %26
  %split = phi i32 [ %5, %26 ]
  br label %30

30:                                               ; preds = %._crit_edge, %4
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %5, %4 ]
  %31 = sext i32 %.lcssa to i64
  %32 = getelementptr inbounds [51 x i32], ptr %1, i64 %31
  %33 = sub nsw i32 %.lcssa, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [51 x i32], ptr %32, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %35, align 4
  %38 = sext i32 %5 to i64
  %39 = getelementptr inbounds i32, ptr %0, i64 %38
  %40 = load i32, ptr %39, align 4
  %41 = add nsw i32 %5, 20
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [51 x i32], ptr %1, i64 %42
  %44 = getelementptr inbounds [51 x i32], ptr %43, i64 0, i64 %38
  store i32 %40, ptr %44, align 4
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
  %3 = icmp sle i32 1, 1
  br i1 %3, label %.lr.ph, label %21

.lr.ph:                                           ; preds = %2
  br label %4

4:                                                ; preds = %.lr.ph, %19
  %.01 = phi i32 [ 1, %.lr.ph ], [ %.2, %19 ]
  %5 = phi i32 [ 1, %.lr.ph ], [ %.2, %19 ]
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  %8 = load i8, ptr %7, align 1
  %9 = sext i8 %8 to i32
  %10 = add nsw i32 %5, 1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  %13 = load i8, ptr %12, align 1
  %14 = sext i8 %13 to i32
  %15 = call i32 @Func1(i32 noundef %9, i32 noundef %14)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = add nsw i32 %.01, 1
  br label %19

19:                                               ; preds = %17, %4
  %.2 = phi i32 [ %18, %17 ], [ %.01, %4 ]
  %20 = icmp sle i32 %.2, 1
  br i1 %20, label %4, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %19
  br label %21

21:                                               ; preds = %._crit_edge, %2
  %.1 = phi i32 [ %.2, %._crit_edge ], [ 1, %2 ]
  %22 = sext i8 65 to i32
  %23 = icmp sge i32 %22, 87
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = icmp sle i32 %22, 90
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  br label %27

27:                                               ; preds = %26, %24, %21
  %.3 = phi i32 [ 7, %26 ], [ %.1, %24 ], [ %.1, %21 ]
  %28 = sext i8 65 to i32
  %29 = icmp eq i32 %28, 88
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %37

31:                                               ; preds = %27
  %32 = call i32 @strcmp(ptr noundef %0, ptr noundef %1) #5
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = add nsw i32 %.3, 7
  br label %37

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %34, %30
  %.0 = phi i32 [ 1, %30 ], [ 1, %34 ], [ 0, %36 ]
  ret i32 %.0
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
