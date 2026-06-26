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

7:                                                ; preds = %16, %0
  %.0 = phi i32 [ 0, %0 ], [ %17, %16 ]
  %8 = icmp samesign ult i32 %.0, 100000000
  br i1 %8, label %9, label %18

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
  %17 = add nuw nsw i32 %.0, 8
  br label %7, !llvm.loop !7

18:                                               ; preds = %7
  %19 = call i32 @clock()
  %20 = call ptr @malloc(i64 noundef 56) #4
  store ptr %20, ptr @PtrGlbNext, align 8
  %21 = call ptr @malloc(i64 noundef 56) #4
  store ptr %21, ptr @PtrGlb, align 8
  %22 = load ptr, ptr @PtrGlbNext, align 8
  %23 = load ptr, ptr @PtrGlb, align 8
  %24 = getelementptr inbounds nuw %struct.Record, ptr %23, i32 0, i32 0
  store ptr %22, ptr %24, align 8
  %25 = load ptr, ptr @PtrGlb, align 8
  %26 = getelementptr inbounds nuw %struct.Record, ptr %25, i32 0, i32 1
  store i32 0, ptr %26, align 8
  %27 = load ptr, ptr @PtrGlb, align 8
  %28 = getelementptr inbounds nuw %struct.Record, ptr %27, i32 0, i32 2
  store i32 10001, ptr %28, align 4
  %29 = load ptr, ptr @PtrGlb, align 8
  %30 = getelementptr inbounds nuw %struct.Record, ptr %29, i32 0, i32 3
  store i32 40, ptr %30, align 8
  %31 = load ptr, ptr @PtrGlb, align 8
  %32 = getelementptr inbounds nuw %struct.Record, ptr %31, i32 0, i32 4
  %33 = getelementptr inbounds [31 x i8], ptr %32, i64 0, i64 0
  %34 = call ptr @strcpy(ptr noundef %33, ptr noundef @.str) #5
  %35 = getelementptr inbounds [31 x i8], ptr %4, i64 0, i64 0
  %36 = call ptr @strcpy(ptr noundef %35, ptr noundef @.str.1) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %37 = call i32 @clock()
  br label %38

38:                                               ; preds = %82, %18
  %.1 = phi i32 [ 0, %18 ], [ %86, %82 ]
  %39 = icmp ult i32 %.1, 100000000
  br i1 %39, label %40, label %87

40:                                               ; preds = %38
  %41 = call i32 @Proc5()
  %42 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  %43 = getelementptr inbounds [31 x i8], ptr %5, i64 0, i64 0
  %44 = call ptr @strcpy(ptr noundef %43, ptr noundef @.str.2) #5
  store i32 10000, ptr %3, align 4
  %45 = getelementptr inbounds [31 x i8], ptr %4, i64 0, i64 0
  %46 = getelementptr inbounds [31 x i8], ptr %5, i64 0, i64 0
  %47 = call i32 @Func2(ptr noundef %45, ptr noundef %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  store i32 %50, ptr @BoolGlob, align 4
  br label %51

51:                                               ; preds = %54, %40
  %52 = load i32, ptr %1, align 4
  %53 = icmp slt i32 %52, 3
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load i32, ptr %1, align 4
  %56 = mul nsw i32 5, %55
  %57 = sub nsw i32 %56, 3
  store i32 %57, ptr %2, align 4
  %58 = load i32, ptr %1, align 4
  %59 = call i32 @Proc7(i32 noundef %58, i32 noundef 3, ptr noundef %2)
  %60 = load i32, ptr %1, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, ptr %1, align 4
  br label %51, !llvm.loop !9

62:                                               ; preds = %51
  %63 = load i32, ptr %1, align 4
  %64 = load i32, ptr %2, align 4
  %65 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, i32 noundef %63, i32 noundef %64)
  %66 = load ptr, ptr @PtrGlb, align 8
  %67 = call i32 @Proc1(ptr noundef %66)
  br label %68

68:                                               ; preds = %80, %62
  %.01 = phi i8 [ 65, %62 ], [ %81, %80 ]
  %69 = sext i8 %.01 to i32
  %70 = load i8, ptr @Char2Glob, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp sle i32 %69, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %68
  %74 = load i32, ptr %3, align 4
  %75 = sext i8 %.01 to i32
  %76 = call i32 @Func1(i32 noundef %75, i32 noundef 67)
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = call i32 @Proc6(i32 noundef 0, ptr noundef %3)
  br label %80

80:                                               ; preds = %73, %78
  %81 = add i8 %.01, 1
  br label %68, !llvm.loop !10

82:                                               ; preds = %68
  %83 = load i32, ptr %1, align 4
  %84 = mul nsw i32 3, %83
  store i32 %84, ptr %2, align 4
  %85 = call i32 @Proc2(ptr noundef %1)
  %86 = add i32 %.1, 1
  br label %38, !llvm.loop !11

87:                                               ; preds = %38
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
  switch i32 %0, label %15 [
    i32 0, label %7
    i32 10000, label %8
    i32 10001, label %13
    i32 10003, label %14
  ]

7:                                                ; preds = %6
  store i32 0, ptr %1, align 4
  br label %15

8:                                                ; preds = %6
  %9 = load i32, ptr @IntGlob, align 4
  %10 = icmp sgt i32 %9, 100
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i32 0, ptr %1, align 4
  br label %15

12:                                               ; preds = %8
  store i32 10002, ptr %1, align 4
  br label %15

13:                                               ; preds = %6
  store i32 10000, ptr %1, align 4
  br label %15

14:                                               ; preds = %6
  store i32 10001, ptr %1, align 4
  br label %15

15:                                               ; preds = %11, %12, %14, %13, %7, %6
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
  br i1 true, label %18, label %35

18:                                               ; preds = %17
  %19 = sext i32 %5 to i64
  %20 = getelementptr inbounds [51 x i32], ptr %1, i64 %19
  %21 = sext i32 %5 to i64
  %22 = getelementptr inbounds [51 x i32], ptr %20, i64 0, i64 %21
  store i32 %5, ptr %22, align 4
  %23 = add nsw i32 %2, 6
  br label %24

24:                                               ; preds = %18
  %25 = sext i32 %5 to i64
  %26 = getelementptr inbounds [51 x i32], ptr %1, i64 %25
  %27 = sext i32 %23 to i64
  %28 = getelementptr inbounds [51 x i32], ptr %26, i64 0, i64 %27
  store i32 %5, ptr %28, align 4
  %29 = add nsw i32 %2, 7
  br i1 false, label %30, label %35

30:                                               ; preds = %24
  %31 = sext i32 %5 to i64
  %32 = getelementptr inbounds [51 x i32], ptr %1, i64 %31
  %33 = sext i32 %29 to i64
  %34 = getelementptr inbounds [51 x i32], ptr %32, i64 0, i64 %33
  store i32 %5, ptr %34, align 4
  unreachable

35:                                               ; preds = %24, %17
  %36 = sext i32 %5 to i64
  %37 = getelementptr inbounds [51 x i32], ptr %1, i64 %36
  %38 = sub nsw i32 %5, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [51 x i32], ptr %37, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %40, align 4
  %43 = sext i32 %5 to i64
  %44 = getelementptr inbounds i32, ptr %0, i64 %43
  %45 = load i32, ptr %44, align 4
  %46 = add nsw i32 %5, 20
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [51 x i32], ptr %1, i64 %47
  %49 = sext i32 %5 to i64
  %50 = getelementptr inbounds [51 x i32], ptr %48, i64 0, i64 %49
  store i32 %45, ptr %50, align 4
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
  %. = select i1 %7, i32 0, i32 10000
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func2(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %5, %2
  %.01 = phi i32 [ 1, %2 ], [ %spec.select, %5 ]
  %4 = icmp sle i32 %.01, 1
  br i1 %4, label %5, label %18

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
  %17 = add nsw i32 %.01, 1
  %spec.select = select i1 %16, i32 %17, i32 %.01
  br label %3, !llvm.loop !12

18:                                               ; preds = %3
  %19 = sext i8 65 to i32
  %20 = icmp eq i32 %19, 88
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = call i32 @strcmp(ptr noundef %0, ptr noundef %1) #5
  %23 = icmp sgt i32 %22, 0
  %. = select i1 %23, i32 1, i32 0
  br label %24

24:                                               ; preds = %21, %18
  %.0 = phi i32 [ 1, %18 ], [ %., %21 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func3(i32 noundef %0) #0 {
  %2 = icmp eq i32 %0, 10001
  %. = select i1 %2, i32 1, i32 0
  ret i32 %.
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
