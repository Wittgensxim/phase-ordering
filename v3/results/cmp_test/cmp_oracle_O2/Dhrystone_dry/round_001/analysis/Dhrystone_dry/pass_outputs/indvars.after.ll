; ModuleID = 'results\cmp_test\cmp_oracle_O2\Dhrystone_dry\round_000\output.ll'
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

7:                                                ; preds = %9, %0
  br i1 false, label %8, label %10

8:                                                ; preds = %7
  br label %9

9:                                                ; preds = %8
  br label %7, !llvm.loop !7

10:                                               ; preds = %7
  %11 = call i32 @clock()
  %12 = call ptr @malloc(i64 noundef 56) #4
  store ptr %12, ptr @PtrGlbNext, align 8
  %13 = call ptr @malloc(i64 noundef 56) #4
  store ptr %13, ptr @PtrGlb, align 8
  %14 = load ptr, ptr @PtrGlbNext, align 8
  %15 = load ptr, ptr @PtrGlb, align 8
  %16 = getelementptr inbounds nuw %struct.Record, ptr %15, i32 0, i32 0
  store ptr %14, ptr %16, align 8
  %17 = load ptr, ptr @PtrGlb, align 8
  %18 = getelementptr inbounds nuw %struct.Record, ptr %17, i32 0, i32 1
  store i32 0, ptr %18, align 8
  %19 = load ptr, ptr @PtrGlb, align 8
  %20 = getelementptr inbounds nuw %struct.Record, ptr %19, i32 0, i32 2
  store i32 10001, ptr %20, align 4
  %21 = load ptr, ptr @PtrGlb, align 8
  %22 = getelementptr inbounds nuw %struct.Record, ptr %21, i32 0, i32 3
  store i32 40, ptr %22, align 8
  %23 = load ptr, ptr @PtrGlb, align 8
  %24 = getelementptr inbounds nuw %struct.Record, ptr %23, i32 0, i32 4
  %25 = getelementptr inbounds [31 x i8], ptr %24, i64 0, i64 0
  %26 = call ptr @strcpy(ptr noundef %25, ptr noundef @.str) #5
  %27 = getelementptr inbounds [31 x i8], ptr %4, i64 0, i64 0
  %28 = call ptr @strcpy(ptr noundef %27, ptr noundef @.str.1) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %29 = call i32 @clock()
  br label %30

30:                                               ; preds = %78, %10
  %.1 = phi i32 [ 0, %10 ], [ %79, %78 ]
  %exitcond = icmp ne i32 %.1, 100000000
  br i1 %exitcond, label %31, label %80

31:                                               ; preds = %30
  %32 = call i32 @Proc5()
  %33 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  %34 = getelementptr inbounds [31 x i8], ptr %5, i64 0, i64 0
  %35 = call ptr @strcpy(ptr noundef %34, ptr noundef @.str.2) #5
  store i32 10000, ptr %3, align 4
  %36 = getelementptr inbounds [31 x i8], ptr %4, i64 0, i64 0
  %37 = getelementptr inbounds [31 x i8], ptr %5, i64 0, i64 0
  %38 = call i32 @Func2(ptr noundef %36, ptr noundef %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  store i32 %41, ptr @BoolGlob, align 4
  br label %42

42:                                               ; preds = %45, %31
  %43 = load i32, ptr %1, align 4
  %44 = icmp slt i32 %43, 3
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load i32, ptr %1, align 4
  %47 = mul nsw i32 5, %46
  %48 = sub nsw i32 %47, 3
  store i32 %48, ptr %2, align 4
  %49 = load i32, ptr %1, align 4
  %50 = call i32 @Proc7(i32 noundef %49, i32 noundef 3, ptr noundef %2)
  %51 = load i32, ptr %1, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %1, align 4
  br label %42, !llvm.loop !9

53:                                               ; preds = %42
  %54 = load i32, ptr %1, align 4
  %55 = load i32, ptr %2, align 4
  %56 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, i32 noundef %54, i32 noundef %55)
  %57 = load ptr, ptr @PtrGlb, align 8
  %58 = call i32 @Proc1(ptr noundef %57)
  br label %59

59:                                               ; preds = %72, %53
  %.01 = phi i8 [ 65, %53 ], [ %73, %72 ]
  %60 = sext i8 %.01 to i32
  %61 = load i8, ptr @Char2Glob, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp sle i32 %60, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load i32, ptr %3, align 4
  %66 = sext i8 %.01 to i32
  %67 = call i32 @Func1(i32 noundef %66, i32 noundef 67)
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = call i32 @Proc6(i32 noundef 0, ptr noundef %3)
  br label %71

71:                                               ; preds = %69, %64
  br label %72

72:                                               ; preds = %71
  %73 = add i8 %.01, 1
  br label %59, !llvm.loop !10

74:                                               ; preds = %59
  %75 = load i32, ptr %1, align 4
  %76 = mul nsw i32 3, %75
  store i32 %76, ptr %2, align 4
  %77 = call i32 @Proc2(ptr noundef %1)
  br label %78

78:                                               ; preds = %74
  %79 = add nuw nsw i32 %.1, 1
  br label %30, !llvm.loop !11

80:                                               ; preds = %30
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

4:                                                ; preds = %14, %1
  %5 = load i8, ptr @Char1Glob, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 65
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = add nsw i32 %3, -1
  %10 = load i32, ptr @IntGlob, align 4
  %11 = sub nsw i32 %9, %10
  store i32 %11, ptr %0, align 4
  br label %12

12:                                               ; preds = %8, %4
  br i1 true, label %13, label %14

13:                                               ; preds = %12
  br label %15

14:                                               ; preds = %12
  br label %4

15:                                               ; preds = %13
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
  %17 = sext i32 %2 to i64
  %18 = add nsw i64 %17, 5
  br label %19

19:                                               ; preds = %27, %4
  %indvars.iv = phi i64 [ %indvars.iv.next, %27 ], [ %18, %4 ]
  %20 = add nsw i32 %5, 1
  %21 = sext i32 %20 to i64
  %22 = icmp sle i64 %indvars.iv, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = sext i32 %5 to i64
  %25 = getelementptr inbounds [51 x i32], ptr %1, i64 %24
  %26 = getelementptr inbounds [51 x i32], ptr %25, i64 0, i64 %indvars.iv
  store i32 %5, ptr %26, align 4
  br label %27

27:                                               ; preds = %23
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %19, !llvm.loop !12

28:                                               ; preds = %19
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

3:                                                ; preds = %19, %2
  %.01 = phi i32 [ 1, %2 ], [ %.1, %19 ]
  %4 = icmp sle i32 %.01, 1
  br i1 %4, label %5, label %20

5:                                                ; preds = %3
  %6 = sext i32 %.01 to i64
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  %8 = load i8, ptr %7, align 1
  %9 = sext i8 %8 to i32
  %10 = add nsw i32 %.01, 1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  %13 = load i8, ptr %12, align 1
  %14 = sext i8 %13 to i32
  %15 = call i32 @Func1(i32 noundef %9, i32 noundef %14)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = add nsw i32 %.01, 1
  br label %19

19:                                               ; preds = %17, %5
  %.1 = phi i32 [ %18, %17 ], [ %.01, %5 ]
  br label %3, !llvm.loop !13

20:                                               ; preds = %3
  br label %23

21:                                               ; No predecessors!
  br label %23

22:                                               ; No predecessors!
  br label %23

23:                                               ; preds = %22, %21, %20
  %24 = sext i8 65 to i32
  %25 = icmp eq i32 %24, 88
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %32

27:                                               ; preds = %23
  %28 = call i32 @strcmp(ptr noundef %0, ptr noundef %1) #5
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %32

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31, %30, %26
  %.0 = phi i32 [ 1, %26 ], [ 1, %30 ], [ 0, %31 ]
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
