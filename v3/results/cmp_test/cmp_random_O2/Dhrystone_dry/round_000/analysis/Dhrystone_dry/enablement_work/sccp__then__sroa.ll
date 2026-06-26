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

7:                                                ; preds = %10, %0
  %.0 = phi i32 [ 0, %0 ], [ %11, %10 ]
  %8 = icmp ult i32 %.0, 100000000
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %9
  %11 = add i32 %.0, 1
  br label %7, !llvm.loop !7

12:                                               ; preds = %7
  %13 = call i32 @clock()
  %14 = sub nsw i32 %13, %6
  %15 = call ptr @malloc(i64 noundef 56) #4
  store ptr %15, ptr @PtrGlbNext, align 8
  %16 = call ptr @malloc(i64 noundef 56) #4
  store ptr %16, ptr @PtrGlb, align 8
  %17 = load ptr, ptr @PtrGlbNext, align 8
  %18 = load ptr, ptr @PtrGlb, align 8
  %19 = getelementptr inbounds nuw %struct.Record, ptr %18, i32 0, i32 0
  store ptr %17, ptr %19, align 8
  %20 = load ptr, ptr @PtrGlb, align 8
  %21 = getelementptr inbounds nuw %struct.Record, ptr %20, i32 0, i32 1
  store i32 0, ptr %21, align 8
  %22 = load ptr, ptr @PtrGlb, align 8
  %23 = getelementptr inbounds nuw %struct.Record, ptr %22, i32 0, i32 2
  store i32 10001, ptr %23, align 4
  %24 = load ptr, ptr @PtrGlb, align 8
  %25 = getelementptr inbounds nuw %struct.Record, ptr %24, i32 0, i32 3
  store i32 40, ptr %25, align 8
  %26 = load ptr, ptr @PtrGlb, align 8
  %27 = getelementptr inbounds nuw %struct.Record, ptr %26, i32 0, i32 4
  %28 = getelementptr inbounds nuw [31 x i8], ptr %27, i64 0, i64 0
  %29 = call ptr @strcpy(ptr noundef %28, ptr noundef @.str) #5
  %30 = getelementptr inbounds nuw [31 x i8], ptr %4, i64 0, i64 0
  %31 = call ptr @strcpy(ptr noundef %30, ptr noundef @.str.1) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %32 = call i32 @clock()
  br label %33

33:                                               ; preds = %90, %12
  %.1 = phi i32 [ 0, %12 ], [ %91, %90 ]
  %34 = icmp ult i32 %.1, 100000000
  br i1 %34, label %35, label %92

35:                                               ; preds = %33
  %36 = call i32 @Proc5()
  %37 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  %38 = getelementptr inbounds nuw [31 x i8], ptr %5, i64 0, i64 0
  %39 = call ptr @strcpy(ptr noundef %38, ptr noundef @.str.2) #5
  store i32 10000, ptr %3, align 4
  %40 = getelementptr inbounds nuw [31 x i8], ptr %4, i64 0, i64 0
  %41 = getelementptr inbounds nuw [31 x i8], ptr %5, i64 0, i64 0
  %42 = call i32 @Func2(ptr noundef %40, ptr noundef %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  store i32 %45, ptr @BoolGlob, align 4
  br label %46

46:                                               ; preds = %49, %35
  %47 = load i32, ptr %1, align 4
  %48 = icmp slt i32 %47, 3
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i32, ptr %1, align 4
  %51 = mul nsw i32 5, %50
  %52 = sub nsw i32 %51, 3
  store i32 %52, ptr %2, align 4
  %53 = load i32, ptr %1, align 4
  %54 = call i32 @Proc7(i32 noundef %53, i32 noundef 3, ptr noundef %2)
  %55 = load i32, ptr %1, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %1, align 4
  br label %46, !llvm.loop !9

57:                                               ; preds = %46
  %58 = load i32, ptr %1, align 4
  %59 = load i32, ptr %2, align 4
  %60 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, i32 noundef %58, i32 noundef %59)
  %61 = load ptr, ptr @PtrGlb, align 8
  %62 = call i32 @Proc1(ptr noundef %61)
  br label %63

63:                                               ; preds = %76, %57
  %.014 = phi i8 [ 65, %57 ], [ %77, %76 ]
  %64 = sext i8 %.014 to i32
  %65 = load i8, ptr @Char2Glob, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp sle i32 %64, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load i32, ptr %3, align 4
  %70 = sext i8 %.014 to i32
  %71 = call i32 @Func1(i32 noundef %70, i32 noundef 67)
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = call i32 @Proc6(i32 noundef 0, ptr noundef %3)
  br label %75

75:                                               ; preds = %73, %68
  br label %76

76:                                               ; preds = %75
  %77 = add i8 %.014, 1
  br label %63, !llvm.loop !10

78:                                               ; preds = %63
  %79 = load i32, ptr %1, align 4
  %80 = mul nsw i32 3, %79
  store i32 %80, ptr %2, align 4
  %81 = load i32, ptr %2, align 4
  %82 = load i32, ptr %1, align 4
  %83 = sdiv i32 %81, %82
  %84 = load i32, ptr %2, align 4
  %85 = sub nsw i32 %84, %83
  %86 = mul nsw i32 7, %85
  %87 = load i32, ptr %1, align 4
  %88 = sub nsw i32 %86, %87
  %89 = call i32 @Proc2(ptr noundef %1)
  br label %90

90:                                               ; preds = %78
  %91 = add i32 %.1, 1
  br label %33, !llvm.loop !11

92:                                               ; preds = %33
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
  br label %4

4:                                                ; preds = %15, %1
  %.0 = phi i32 [ %3, %1 ], [ %.1, %15 ]
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
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  br label %16

15:                                               ; preds = %12
  br label %4

16:                                               ; preds = %14
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
  br label %17

17:                                               ; preds = %25, %4
  %.0 = phi i32 [ %5, %4 ], [ %26, %25 ]
  %18 = add nsw i32 %5, 1
  %19 = icmp sle i32 %.0, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = sext i32 %5 to i64
  %22 = getelementptr inbounds [51 x i32], ptr %1, i64 %21
  %23 = sext i32 %.0 to i64
  %24 = getelementptr inbounds [51 x i32], ptr %22, i64 0, i64 %23
  store i32 %5, ptr %24, align 4
  br label %25

25:                                               ; preds = %20
  %26 = add nsw i32 %.0, 1
  br label %17, !llvm.loop !12

27:                                               ; preds = %17
  %28 = sext i32 %5 to i64
  %29 = getelementptr inbounds [51 x i32], ptr %1, i64 %28
  %30 = sub nsw i32 %5, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [51 x i32], ptr %29, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %32, align 4
  %35 = sext i32 %5 to i64
  %36 = getelementptr inbounds i32, ptr %0, i64 %35
  %37 = load i32, ptr %36, align 4
  %38 = add nsw i32 %5, 20
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [51 x i32], ptr %1, i64 %39
  %41 = sext i32 %5 to i64
  %42 = getelementptr inbounds [51 x i32], ptr %40, i64 0, i64 %41
  store i32 %37, ptr %42, align 4
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

3:                                                ; preds = %19, %2
  %.012 = phi i32 [ 1, %2 ], [ %.1, %19 ]
  %4 = icmp sle i32 %.012, 1
  br i1 %4, label %5, label %20

5:                                                ; preds = %3
  %6 = sext i32 %.012 to i64
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  %8 = load i8, ptr %7, align 1
  %9 = sext i8 %8 to i32
  %10 = add nsw i32 %.012, 1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  %13 = load i8, ptr %12, align 1
  %14 = sext i8 %13 to i32
  %15 = call i32 @Func1(i32 noundef %9, i32 noundef %14)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = add nsw i32 %.012, 1
  br label %19

19:                                               ; preds = %17, %5
  %.1 = phi i32 [ %18, %17 ], [ %.012, %5 ]
  br label %3, !llvm.loop !13

20:                                               ; preds = %3
  %21 = sext i8 65 to i32
  %22 = icmp sge i32 %21, 87
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = sext i8 65 to i32
  %25 = icmp sle i32 %24, 90
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %27

27:                                               ; preds = %26, %23, %20
  %.2 = phi i32 [ 7, %26 ], [ %.012, %23 ], [ %.012, %20 ]
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
  %35 = add nsw i32 %.2, 7
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
