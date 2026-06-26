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
  %.0 = phi i32 [ 0, %0 ], [ %10, %9 ]
  %8 = icmp ult i32 %.0, 100000000
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = add i32 %.0, 1
  br label %7, !llvm.loop !7

11:                                               ; preds = %7
  %12 = call i32 @clock()
  %13 = call ptr @malloc(i64 noundef 56) #4
  store ptr %13, ptr @PtrGlbNext, align 8
  %14 = call ptr @malloc(i64 noundef 56) #4
  store ptr %14, ptr @PtrGlb, align 8
  %15 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %15, ptr %14, align 8
  %16 = load ptr, ptr @PtrGlb, align 8
  %17 = getelementptr inbounds nuw %struct.Record, ptr %16, i32 0, i32 1
  store i32 0, ptr %17, align 8
  %18 = getelementptr inbounds nuw %struct.Record, ptr %16, i32 0, i32 2
  store i32 10001, ptr %18, align 4
  %19 = getelementptr inbounds nuw %struct.Record, ptr %16, i32 0, i32 3
  store i32 40, ptr %19, align 8
  %20 = getelementptr inbounds nuw %struct.Record, ptr %16, i32 0, i32 4
  %21 = call ptr @strcpy(ptr noundef %20, ptr noundef @.str) #5
  %22 = call ptr @strcpy(ptr noundef %4, ptr noundef @.str.1) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %23 = call i32 @clock()
  br label %24

24:                                               ; preds = %61, %11
  %.1 = phi i32 [ 0, %11 ], [ %65, %61 ]
  %25 = icmp ult i32 %.1, 100000000
  br i1 %25, label %26, label %66

26:                                               ; preds = %24
  %27 = call i32 @Proc5()
  %28 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  %29 = call ptr @strcpy(ptr noundef %5, ptr noundef @.str.2) #5
  store i32 10000, ptr %3, align 4
  %30 = call i32 @Func2(ptr noundef %4, ptr noundef %5)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, ptr @BoolGlob, align 4
  %.pre = load i32, ptr %1, align 4
  br label %34

34:                                               ; preds = %37, %26
  %35 = phi i32 [ %42, %37 ], [ %.pre, %26 ]
  %36 = icmp slt i32 %35, 3
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = mul nsw i32 5, %35
  %39 = sub nsw i32 %38, 3
  store i32 %39, ptr %2, align 4
  %40 = call i32 @Proc7(i32 noundef %35, i32 noundef 3, ptr noundef %2)
  %41 = load i32, ptr %1, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %1, align 4
  br label %34, !llvm.loop !9

43:                                               ; preds = %34
  %44 = load i32, ptr %2, align 4
  %45 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, i32 noundef %35, i32 noundef %44)
  %46 = load ptr, ptr @PtrGlb, align 8
  %47 = call i32 @Proc1(ptr noundef %46)
  br label %48

48:                                               ; preds = %59, %43
  %.01 = phi i8 [ 65, %43 ], [ %60, %59 ]
  %49 = sext i8 %.01 to i32
  %50 = load i8, ptr @Char2Glob, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp sle i32 %49, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load i32, ptr %3, align 4
  %55 = call i32 @Func1(i32 noundef %49, i32 noundef 67)
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = call i32 @Proc6(i32 noundef 0, ptr noundef %3)
  br label %59

59:                                               ; preds = %57, %53
  %60 = add i8 %.01, 1
  br label %48, !llvm.loop !10

61:                                               ; preds = %48
  %62 = load i32, ptr %1, align 4
  %63 = mul nsw i32 3, %62
  store i32 %63, ptr %2, align 4
  %64 = call i32 @Proc2(ptr noundef %1)
  %65 = add i32 %.1, 1
  br label %24, !llvm.loop !11

66:                                               ; preds = %24
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
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds nuw %struct.Record, ptr %3, i32 0, i32 3
  store i32 5, ptr %4, align 8
  %5 = load ptr, ptr %0, align 8
  store ptr %5, ptr %5, align 8
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc2(ptr noundef %0) #0 {
  %2 = load i32, ptr %0, align 4
  %3 = add nsw i32 %2, 10
  %.pre = load i8, ptr @Char1Glob, align 1
  br label %4

4:                                                ; preds = %13, %1
  %5 = sext i8 %.pre to i32
  %6 = icmp eq i32 %5, 65
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = add nsw i32 %3, -1
  %9 = load i32, ptr @IntGlob, align 4
  %10 = sub nsw i32 %8, %9
  store i32 %10, ptr %0, align 4
  br label %11

11:                                               ; preds = %7, %4
  br i1 true, label %12, label %13

12:                                               ; preds = %11
  ret i32 undef

13:                                               ; preds = %11
  br label %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc3(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PtrGlb, align 8
  %3 = icmp ne ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8
  store ptr %5, ptr %0, align 8
  %.pre = load i32, ptr @IntGlob, align 4
  %.pre1 = load ptr, ptr @PtrGlb, align 8
  br label %7

6:                                                ; preds = %1
  store i32 100, ptr @IntGlob, align 4
  br label %7

7:                                                ; preds = %6, %4
  %8 = phi ptr [ null, %6 ], [ %.pre1, %4 ]
  %9 = phi i32 [ 100, %6 ], [ %.pre, %4 ]
  %10 = getelementptr inbounds nuw %struct.Record, ptr %8, i32 0, i32 3
  %11 = call i32 @Proc7(i32 noundef 10, i32 noundef %9, ptr noundef %10)
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
  %8 = add nsw i32 %5, 1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %0, i64 %9
  store i32 %3, ptr %10, align 4
  %11 = add nsw i32 %5, 30
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, ptr %0, i64 %12
  store i32 %5, ptr %13, align 4
  br label %14

14:                                               ; preds = %16, %4
  %.0 = phi i32 [ %5, %4 ], [ %20, %16 ]
  %15 = icmp sle i32 %.0, %8
  br i1 %15, label %16, label %21

16:                                               ; preds = %14
  %17 = getelementptr inbounds [51 x i32], ptr %1, i64 %6
  %18 = sext i32 %.0 to i64
  %19 = getelementptr inbounds [51 x i32], ptr %17, i64 0, i64 %18
  store i32 %5, ptr %19, align 4
  %20 = add nsw i32 %.0, 1
  br label %14, !llvm.loop !12

21:                                               ; preds = %14
  %22 = getelementptr inbounds [51 x i32], ptr %1, i64 %6
  %23 = sub nsw i32 %5, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [51 x i32], ptr %22, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %25, align 4
  %28 = load i32, ptr %7, align 4
  %29 = add nsw i32 %5, 20
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [51 x i32], ptr %1, i64 %30
  %32 = getelementptr inbounds [51 x i32], ptr %31, i64 0, i64 %6
  store i32 %28, ptr %32, align 4
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

3:                                                ; preds = %18, %2
  %.01 = phi i32 [ 1, %2 ], [ %.1, %18 ]
  %4 = icmp sle i32 %.01, 1
  br i1 %4, label %5, label %19

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
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  br label %18

18:                                               ; preds = %17, %5
  %.1 = phi i32 [ %10, %17 ], [ %.01, %5 ]
  br label %3, !llvm.loop !13

19:                                               ; preds = %3
  br label %22

20:                                               ; No predecessors!
  br label %22

21:                                               ; No predecessors!
  br label %22

22:                                               ; preds = %21, %20, %19
  br i1 false, label %23, label %24

23:                                               ; preds = %22
  br label %29

24:                                               ; preds = %22
  %25 = call i32 @strcmp(ptr noundef %0, ptr noundef %1) #5
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %29

28:                                               ; preds = %24
  br label %29

29:                                               ; preds = %28, %27, %23
  %.0 = phi i32 [ poison, %23 ], [ 1, %27 ], [ 0, %28 ]
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
