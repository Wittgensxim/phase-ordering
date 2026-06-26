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

7:                                                ; preds = %0, %8
  %.012 = phi i32 [ 0, %0 ], [ %9, %8 ]
  br label %8

8:                                                ; preds = %7
  %9 = add i32 %.012, 1
  %10 = icmp ult i32 %9, 100000000
  br i1 %10, label %7, label %11, !llvm.loop !7

11:                                               ; preds = %8
  %12 = call i32 @clock()
  %13 = sub nsw i32 %12, %6
  %14 = call ptr @malloc(i64 noundef 56) #4
  store ptr %14, ptr @PtrGlbNext, align 8
  %15 = call ptr @malloc(i64 noundef 56) #4
  store ptr %15, ptr @PtrGlb, align 8
  %16 = load ptr, ptr @PtrGlbNext, align 8
  store ptr %16, ptr %15, align 8
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
  %25 = call ptr @strcpy(ptr noundef %24, ptr noundef @.str) #5
  %26 = call ptr @strcpy(ptr noundef %4, ptr noundef @.str.1) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %27 = call i32 @clock()
  br label %28

28:                                               ; preds = %11, %81
  %.17 = phi i32 [ 0, %11 ], [ %82, %81 ]
  %29 = call i32 @Proc5()
  %30 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  %31 = call ptr @strcpy(ptr noundef %5, ptr noundef @.str.2) #5
  store i32 10000, ptr %3, align 4
  %32 = call i32 @Func2(ptr noundef %4, ptr noundef %5)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, ptr @BoolGlob, align 4
  %36 = load i32, ptr %1, align 4
  %37 = icmp slt i32 %36, 3
  br i1 %37, label %.lr.ph, label %48

.lr.ph:                                           ; preds = %28
  br label %38

38:                                               ; preds = %.lr.ph, %38
  %39 = phi i32 [ %36, %.lr.ph ], [ %46, %38 ]
  %40 = mul nsw i32 5, %39
  %41 = sub nsw i32 %40, 3
  store i32 %41, ptr %2, align 4
  %42 = load i32, ptr %1, align 4
  %43 = call i32 @Proc7(i32 noundef %42, i32 noundef 3, ptr noundef %2)
  %44 = load i32, ptr %1, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %1, align 4
  %46 = load i32, ptr %1, align 4
  %47 = icmp slt i32 %46, 3
  br i1 %47, label %38, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %38
  %split = phi i32 [ %46, %38 ]
  br label %48

48:                                               ; preds = %._crit_edge, %28
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %36, %28 ]
  %49 = load i32, ptr %2, align 4
  %50 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, i32 noundef %.lcssa, i32 noundef %49)
  %51 = load ptr, ptr @PtrGlb, align 8
  %52 = call i32 @Proc1(ptr noundef %51)
  %53 = load i8, ptr @Char2Glob, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp sle i32 65, %54
  br i1 %55, label %.lr.ph5, label %70

.lr.ph5:                                          ; preds = %48
  br label %56

56:                                               ; preds = %.lr.ph5, %64
  %57 = phi i32 [ 65, %.lr.ph5 ], [ %66, %64 ]
  %.03 = phi i8 [ 65, %.lr.ph5 ], [ %65, %64 ]
  %58 = load i32, ptr %3, align 4
  %59 = call i32 @Func1(i32 noundef %57, i32 noundef 67)
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = call i32 @Proc6(i32 noundef 0, ptr noundef %3)
  br label %63

63:                                               ; preds = %61, %56
  br label %64

64:                                               ; preds = %63
  %65 = add i8 %.03, 1
  %66 = sext i8 %65 to i32
  %67 = load i8, ptr @Char2Glob, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp sle i32 %66, %68
  br i1 %69, label %56, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %64
  br label %70

70:                                               ; preds = %._crit_edge6, %48
  %71 = load i32, ptr %1, align 4
  %72 = mul nsw i32 3, %71
  store i32 %72, ptr %2, align 4
  %73 = load i32, ptr %1, align 4
  %74 = sdiv i32 %72, %73
  %75 = load i32, ptr %2, align 4
  %76 = sub nsw i32 %75, %74
  %77 = mul nsw i32 7, %76
  %78 = load i32, ptr %1, align 4
  %79 = sub nsw i32 %77, %78
  %80 = call i32 @Proc2(ptr noundef %1)
  br label %81

81:                                               ; preds = %70
  %82 = add i32 %.17, 1
  %83 = icmp ult i32 %82, 100000000
  br i1 %83, label %28, label %84, !llvm.loop !11

84:                                               ; preds = %81
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
  br label %18

18:                                               ; preds = %4, %23
  %.01 = phi i32 [ %5, %4 ], [ %24, %23 ]
  %19 = sext i32 %5 to i64
  %20 = getelementptr inbounds [51 x i32], ptr %1, i64 %19
  %21 = sext i32 %.01 to i64
  %22 = getelementptr inbounds [51 x i32], ptr %20, i64 0, i64 %21
  store i32 %5, ptr %22, align 4
  br label %23

23:                                               ; preds = %18
  %24 = add nsw i32 %.01, 1
  %25 = icmp sle i32 %24, %17
  br i1 %25, label %18, label %26, !llvm.loop !12

26:                                               ; preds = %23
  %.lcssa = phi i32 [ %5, %23 ]
  %27 = sext i32 %.lcssa to i64
  %28 = getelementptr inbounds [51 x i32], ptr %1, i64 %27
  %29 = sub nsw i32 %.lcssa, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [51 x i32], ptr %28, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %31, align 4
  %34 = sext i32 %5 to i64
  %35 = getelementptr inbounds i32, ptr %0, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = add nsw i32 %5, 20
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [51 x i32], ptr %1, i64 %38
  %40 = getelementptr inbounds [51 x i32], ptr %39, i64 0, i64 %34
  store i32 %36, ptr %40, align 4
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

3:                                                ; preds = %2, %17
  %.012 = phi i32 [ 1, %2 ], [ %.1, %17 ]
  %4 = sext i32 %.012 to i64
  %5 = getelementptr inbounds i8, ptr %0, i64 %4
  %6 = load i8, ptr %5, align 1
  %7 = sext i8 %6 to i32
  %8 = add nsw i32 %.012, 1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, ptr %1, i64 %9
  %11 = load i8, ptr %10, align 1
  %12 = sext i8 %11 to i32
  %13 = call i32 @Func1(i32 noundef %7, i32 noundef %12)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = add nsw i32 %.012, 1
  br label %17

17:                                               ; preds = %15, %3
  %.1 = phi i32 [ %16, %15 ], [ %.012, %3 ]
  %18 = icmp sle i32 %.1, 1
  br i1 %18, label %3, label %19, !llvm.loop !13

19:                                               ; preds = %17
  %.01.lcssa = phi i32 [ %.1, %17 ]
  %20 = sext i8 65 to i32
  %21 = icmp sge i32 %20, 87
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = icmp sle i32 %20, 90
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %24, %22, %19
  %.2 = phi i32 [ 7, %24 ], [ %.01.lcssa, %22 ], [ %.01.lcssa, %19 ]
  %26 = sext i8 65 to i32
  %27 = icmp eq i32 %26, 88
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %35

29:                                               ; preds = %25
  %30 = call i32 @strcmp(ptr noundef %0, ptr noundef %1) #5
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = add nsw i32 %.2, 7
  br label %35

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %32, %28
  %.0 = phi i32 [ 1, %28 ], [ 1, %32 ], [ 0, %34 ]
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
