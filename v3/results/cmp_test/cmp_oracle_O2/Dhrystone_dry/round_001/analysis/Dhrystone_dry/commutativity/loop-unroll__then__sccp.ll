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

7:                                                ; preds = %24, %0
  %.0 = phi i32 [ 0, %0 ], [ %25, %24 ]
  %8 = icmp samesign ult i32 %.0, 100000000
  br i1 %8, label %9, label %26

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %9
  br label %11

11:                                               ; preds = %10
  br label %12

12:                                               ; preds = %11
  br label %13

13:                                               ; preds = %12
  br label %14

14:                                               ; preds = %13
  br label %15

15:                                               ; preds = %14
  br label %16

16:                                               ; preds = %15
  br label %17

17:                                               ; preds = %16
  br label %18

18:                                               ; preds = %17
  br label %19

19:                                               ; preds = %18
  br label %20

20:                                               ; preds = %19
  br label %21

21:                                               ; preds = %20
  br label %22

22:                                               ; preds = %21
  br label %23

23:                                               ; preds = %22
  br label %24

24:                                               ; preds = %23
  %25 = add nuw nsw i32 %.0, 8
  br label %7, !llvm.loop !7

26:                                               ; preds = %7
  %27 = call i32 @clock()
  %28 = call ptr @malloc(i64 noundef 56) #4
  store ptr %28, ptr @PtrGlbNext, align 8
  %29 = call ptr @malloc(i64 noundef 56) #4
  store ptr %29, ptr @PtrGlb, align 8
  %30 = load ptr, ptr @PtrGlbNext, align 8
  %31 = load ptr, ptr @PtrGlb, align 8
  %32 = getelementptr inbounds nuw %struct.Record, ptr %31, i32 0, i32 0
  store ptr %30, ptr %32, align 8
  %33 = load ptr, ptr @PtrGlb, align 8
  %34 = getelementptr inbounds nuw %struct.Record, ptr %33, i32 0, i32 1
  store i32 0, ptr %34, align 8
  %35 = load ptr, ptr @PtrGlb, align 8
  %36 = getelementptr inbounds nuw %struct.Record, ptr %35, i32 0, i32 2
  store i32 10001, ptr %36, align 4
  %37 = load ptr, ptr @PtrGlb, align 8
  %38 = getelementptr inbounds nuw %struct.Record, ptr %37, i32 0, i32 3
  store i32 40, ptr %38, align 8
  %39 = load ptr, ptr @PtrGlb, align 8
  %40 = getelementptr inbounds nuw %struct.Record, ptr %39, i32 0, i32 4
  %41 = getelementptr inbounds nuw [31 x i8], ptr %40, i64 0, i64 0
  %42 = call ptr @strcpy(ptr noundef %41, ptr noundef @.str) #5
  %43 = getelementptr inbounds nuw [31 x i8], ptr %4, i64 0, i64 0
  %44 = call ptr @strcpy(ptr noundef %43, ptr noundef @.str.1) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %45 = call i32 @clock()
  br label %46

46:                                               ; preds = %95, %26
  %.1 = phi i32 [ 0, %26 ], [ %96, %95 ]
  %47 = icmp ult i32 %.1, 100000000
  br i1 %47, label %48, label %97

48:                                               ; preds = %46
  %49 = call i32 @Proc5()
  %50 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  %51 = getelementptr inbounds nuw [31 x i8], ptr %5, i64 0, i64 0
  %52 = call ptr @strcpy(ptr noundef %51, ptr noundef @.str.2) #5
  store i32 10000, ptr %3, align 4
  %53 = getelementptr inbounds nuw [31 x i8], ptr %4, i64 0, i64 0
  %54 = getelementptr inbounds nuw [31 x i8], ptr %5, i64 0, i64 0
  %55 = call i32 @Func2(ptr noundef %53, ptr noundef %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  store i32 %58, ptr @BoolGlob, align 4
  br label %59

59:                                               ; preds = %62, %48
  %60 = load i32, ptr %1, align 4
  %61 = icmp slt i32 %60, 3
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load i32, ptr %1, align 4
  %64 = mul nsw i32 5, %63
  %65 = sub nsw i32 %64, 3
  store i32 %65, ptr %2, align 4
  %66 = load i32, ptr %1, align 4
  %67 = call i32 @Proc7(i32 noundef %66, i32 noundef 3, ptr noundef %2)
  %68 = load i32, ptr %1, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, ptr %1, align 4
  br label %59, !llvm.loop !9

70:                                               ; preds = %59
  %71 = load i32, ptr %1, align 4
  %72 = load i32, ptr %2, align 4
  %73 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, i32 noundef %71, i32 noundef %72)
  %74 = load ptr, ptr @PtrGlb, align 8
  %75 = call i32 @Proc1(ptr noundef %74)
  br label %76

76:                                               ; preds = %89, %70
  %.01 = phi i8 [ 65, %70 ], [ %90, %89 ]
  %77 = sext i8 %.01 to i32
  %78 = load i8, ptr @Char2Glob, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp sle i32 %77, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %76
  %82 = load i32, ptr %3, align 4
  %83 = sext i8 %.01 to i32
  %84 = call i32 @Func1(i32 noundef %83, i32 noundef 67)
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = call i32 @Proc6(i32 noundef 0, ptr noundef %3)
  br label %88

88:                                               ; preds = %86, %81
  br label %89

89:                                               ; preds = %88
  %90 = add i8 %.01, 1
  br label %76, !llvm.loop !10

91:                                               ; preds = %76
  %92 = load i32, ptr %1, align 4
  %93 = mul nsw i32 3, %92
  store i32 %93, ptr %2, align 4
  %94 = call i32 @Proc2(ptr noundef %1)
  br label %95

95:                                               ; preds = %91
  %96 = add nuw nsw i32 %.1, 1
  br label %46, !llvm.loop !11

97:                                               ; preds = %46
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
  br label %3

3:                                                ; preds = %1
  %4 = load i8, ptr @Char1Glob, align 1
  %5 = sext i8 %4 to i32
  %6 = icmp eq i32 %5, 65
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = add nsw i32 %2, 9
  %9 = load i32, ptr @IntGlob, align 4
  %10 = sub nsw i32 %8, %9
  store i32 %10, ptr %0, align 4
  br label %11

11:                                               ; preds = %7, %3
  br label %12

12:                                               ; preds = %11
  br label %13

13:                                               ; preds = %12
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
  br label %17

17:                                               ; preds = %4
  br label %18

18:                                               ; preds = %17
  %19 = sext i32 %5 to i64
  %20 = getelementptr inbounds [51 x i32], ptr %1, i64 %19
  %21 = sext i32 %5 to i64
  %22 = getelementptr inbounds [51 x i32], ptr %20, i64 0, i64 %21
  store i32 %5, ptr %22, align 4
  br label %23

23:                                               ; preds = %18
  %24 = add nsw i32 %2, 6
  br label %25

25:                                               ; preds = %23
  %26 = sext i32 %5 to i64
  %27 = getelementptr inbounds [51 x i32], ptr %1, i64 %26
  %28 = sext i32 %24 to i64
  %29 = getelementptr inbounds [51 x i32], ptr %27, i64 0, i64 %28
  store i32 %5, ptr %29, align 4
  br label %30

30:                                               ; preds = %25
  %31 = add nsw i32 %2, 7
  br label %32

32:                                               ; preds = %30
  %33 = sext i32 %5 to i64
  %34 = getelementptr inbounds [51 x i32], ptr %1, i64 %33
  %35 = sub nsw i32 %5, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [51 x i32], ptr %34, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %37, align 4
  %40 = sext i32 %5 to i64
  %41 = getelementptr inbounds i32, ptr %0, i64 %40
  %42 = load i32, ptr %41, align 4
  %43 = add nsw i32 %5, 20
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [51 x i32], ptr %1, i64 %44
  %46 = sext i32 %5 to i64
  %47 = getelementptr inbounds [51 x i32], ptr %45, i64 0, i64 %46
  store i32 %42, ptr %47, align 4
  store i32 5, ptr @IntGlob, align 4
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 10001) i32 @Func1(i32 noundef %0, i32 noundef %1) #0 {
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
define dso_local range(i32 0, 2) i32 @Func2(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %15, %2
  %.01 = phi i32 [ 1, %2 ], [ %.1, %15 ]
  %4 = icmp sle i32 %.01, 1
  br i1 %4, label %5, label %16

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %7 = load i8, ptr %6, align 1
  %8 = sext i8 %7 to i32
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %10 = load i8, ptr %9, align 1
  %11 = sext i8 %10 to i32
  %12 = call i32 @Func1(i32 noundef %8, i32 noundef %11)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  br label %15

15:                                               ; preds = %14, %5
  %.1 = phi i32 [ 2, %14 ], [ 1, %5 ]
  br label %3, !llvm.loop !12

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %16
  br label %18

18:                                               ; preds = %17
  %19 = call i32 @strcmp(ptr noundef %0, ptr noundef %1) #5
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %23

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %22, %21
  %.0 = phi i32 [ 0, %22 ], [ 1, %21 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 2) i32 @Func3(i32 noundef %0) #0 {
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
