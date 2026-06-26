; ModuleID = 'results\cmp_test\cmp_rule_O2\Dhrystone_dry\round_001\output.ll'
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
  %.lcssa1 = phi i32 [ %8, %7 ]
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
  br label %30

30:                                               ; preds = %83, %13
  %.lcssa39 = phi i8 [ %.lcssa3, %83 ], [ undef, %13 ]
  %31 = phi i32 [ %81, %83 ], [ undef, %13 ]
  %32 = phi i32 [ %84, %83 ], [ 0, %13 ]
  %33 = icmp ult i32 %32, 100000000
  br i1 %33, label %34, label %85

34:                                               ; preds = %30
  %35 = call i32 @Proc5()
  %36 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  %37 = call ptr @strcpy(ptr noundef %5, ptr noundef @.str.2) #5
  store i32 10000, ptr %3, align 4
  %38 = call i32 @Func2(ptr noundef %4, ptr noundef %5)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  store i32 %41, ptr @BoolGlob, align 4
  br label %42

42:                                               ; preds = %45, %34
  %43 = load i32, ptr %1, align 4
  %44 = icmp slt i32 %43, 3
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = mul nsw i32 5, %43
  %47 = sub nsw i32 %46, 3
  store i32 %47, ptr %2, align 4
  %48 = load i32, ptr %1, align 4
  %49 = call i32 @Proc7(i32 noundef %48, i32 noundef 3, ptr noundef %2)
  %50 = load i32, ptr %1, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, ptr %1, align 4
  br label %42, !llvm.loop !9

52:                                               ; preds = %42
  %.lcssa = phi i32 [ %43, %42 ]
  %53 = load i32, ptr %2, align 4
  %54 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, i32 noundef %.lcssa, i32 noundef %53)
  %55 = load ptr, ptr @PtrGlb, align 8
  %56 = call i32 @Proc1(ptr noundef %55)
  br label %57

57:                                               ; preds = %70, %52
  %58 = phi i8 [ %71, %70 ], [ 65, %52 ]
  %59 = sext i8 %58 to i32
  %60 = load i8, ptr @Char2Glob, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp sle i32 %59, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = load i32, ptr %3, align 4
  %65 = call i32 @Func1(i32 noundef %59, i32 noundef 67)
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = call i32 @Proc6(i32 noundef 0, ptr noundef %3)
  br label %69

69:                                               ; preds = %67, %63
  br label %70

70:                                               ; preds = %69
  %71 = add i8 %58, 1
  br label %57, !llvm.loop !10

72:                                               ; preds = %57
  %.lcssa3 = phi i8 [ %58, %57 ]
  %73 = load i32, ptr %1, align 4
  %74 = mul nsw i32 3, %73
  store i32 %74, ptr %2, align 4
  %75 = load i32, ptr %1, align 4
  %76 = sdiv i32 %74, %75
  %77 = load i32, ptr %2, align 4
  %78 = sub nsw i32 %77, %76
  %79 = mul nsw i32 7, %78
  %80 = load i32, ptr %1, align 4
  %81 = sub nsw i32 %79, %80
  %82 = call i32 @Proc2(ptr noundef %1)
  br label %83

83:                                               ; preds = %72
  %84 = add i32 %32, 1
  br label %30, !llvm.loop !11

85:                                               ; preds = %30
  %.lcssa39.lcssa = phi i8 [ %.lcssa39, %30 ]
  %.lcssa7 = phi i32 [ %31, %30 ]
  %.lcssa5 = phi i32 [ %32, %30 ]
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
  %.lcssa1 = phi i32 [ %21, %20 ]
  %.lcssa = phi i32 [ %5, %20 ]
  %29 = sext i32 %.lcssa to i64
  %30 = getelementptr inbounds [51 x i32], ptr %1, i64 %29
  %31 = sub nsw i32 %.lcssa, 1
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
  %42 = getelementptr inbounds [51 x i32], ptr %41, i64 0, i64 %36
  store i32 %38, ptr %42, align 4
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
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = icmp sle i32 %25, 90
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  br label %30

30:                                               ; preds = %29, %27, %24
  %.0 = phi i32 [ 7, %29 ], [ %.lcssa, %27 ], [ %.lcssa, %24 ]
  %31 = sext i8 %.lcssa2 to i32
  %32 = icmp eq i32 %31, 88
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %40

34:                                               ; preds = %30
  %35 = call i32 @strcmp(ptr noundef %0, ptr noundef %1) #5
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = add nsw i32 %.0, 7
  br label %40

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39, %37, %33
  %.011 = phi i32 [ 1, %33 ], [ 1, %37 ], [ 0, %39 ]
  ret i32 %.011
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
