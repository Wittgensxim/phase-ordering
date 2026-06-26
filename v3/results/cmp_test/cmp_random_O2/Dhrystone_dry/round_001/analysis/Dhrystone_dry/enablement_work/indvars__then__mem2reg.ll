; ModuleID = 'results\cmp_test\cmp_random_O2\Dhrystone_dry\round_000\output.ll'
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
  %8 = phi i32 [ %10, %9 ], [ 0, %0 ]
  %exitcond = icmp ne i32 %8, 100000000
  br i1 %exitcond, label %9, label %11

9:                                                ; preds = %7
  %10 = add nuw nsw i32 %8, 1
  br label %7, !llvm.loop !7

11:                                               ; preds = %7
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
  %19 = getelementptr inbounds nuw %struct.Record, ptr %17, i32 0, i32 2
  store i32 10001, ptr %19, align 4
  %20 = getelementptr inbounds nuw %struct.Record, ptr %17, i32 0, i32 3
  store i32 40, ptr %20, align 8
  %21 = getelementptr inbounds nuw %struct.Record, ptr %17, i32 0, i32 4
  %22 = call ptr @strcpy(ptr noundef %21, ptr noundef @.str) #5
  %23 = call ptr @strcpy(ptr noundef %4, ptr noundef @.str.1) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %24 = call i32 @clock()
  br label %25

25:                                               ; preds = %63, %11
  %26 = phi i32 [ %70, %63 ], [ 0, %11 ]
  %exitcond1 = icmp ne i32 %26, 100000000
  br i1 %exitcond1, label %27, label %71

27:                                               ; preds = %25
  %28 = call i32 @Proc5()
  %29 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  %30 = call ptr @strcpy(ptr noundef %5, ptr noundef @.str.2) #5
  store i32 10000, ptr %3, align 4
  %31 = call i32 @Func2(ptr noundef %4, ptr noundef %5)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, ptr @BoolGlob, align 4
  %.pre = load i32, ptr %1, align 4
  br label %35

35:                                               ; preds = %38, %27
  %36 = phi i32 [ %43, %38 ], [ %.pre, %27 ]
  %37 = icmp slt i32 %36, 3
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = mul nsw i32 5, %36
  %40 = sub nsw i32 %39, 3
  store i32 %40, ptr %2, align 4
  %41 = call i32 @Proc7(i32 noundef %36, i32 noundef 3, ptr noundef %2)
  %42 = load i32, ptr %1, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %1, align 4
  br label %35, !llvm.loop !9

44:                                               ; preds = %35
  %.lcssa = phi i32 [ %36, %35 ]
  %45 = load i32, ptr %2, align 4
  %46 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, i32 noundef %.lcssa, i32 noundef %45)
  %47 = load ptr, ptr @PtrGlb, align 8
  %48 = call i32 @Proc1(ptr noundef %47)
  br label %49

49:                                               ; preds = %61, %44
  %50 = phi i8 [ %62, %61 ], [ 65, %44 ]
  %51 = sext i8 %50 to i32
  %52 = load i8, ptr @Char2Glob, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp sle i32 %51, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load i32, ptr %3, align 4
  %57 = call i32 @Func1(i32 noundef %51, i32 noundef 67)
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = call i32 @Proc6(i32 noundef 0, ptr noundef %3)
  br label %61

61:                                               ; preds = %59, %55
  %62 = add i8 %50, 1
  br label %49, !llvm.loop !10

63:                                               ; preds = %49
  %64 = load i32, ptr %1, align 4
  %65 = mul nsw i32 3, %64
  store i32 %65, ptr %2, align 4
  %66 = sub nsw i32 %65, 3
  %67 = mul nsw i32 7, %66
  %68 = sub nsw i32 %67, %64
  %69 = call i32 @Proc2(ptr noundef %1)
  %70 = add nuw nsw i32 %26, 1
  br label %25, !llvm.loop !11

71:                                               ; preds = %25
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

4:                                                ; preds = %18, %1
  %5 = phi i32 [ %14, %18 ], [ undef, %1 ]
  %6 = phi i32 [ %15, %18 ], [ %3, %1 ]
  %7 = sext i8 %.pre to i32
  %8 = icmp eq i32 %7, 65
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = add nsw i32 %6, -1
  %11 = load i32, ptr @IntGlob, align 4
  %12 = sub nsw i32 %10, %11
  store i32 %12, ptr %0, align 4
  br label %13

13:                                               ; preds = %9, %4
  %14 = phi i32 [ 0, %9 ], [ %5, %4 ]
  %15 = phi i32 [ %10, %9 ], [ %6, %4 ]
  %16 = icmp eq i32 %14, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  ret i32 undef

18:                                               ; preds = %13
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
  %8 = add nsw i32 %5, 1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %0, i64 %9
  store i32 %3, ptr %10, align 4
  %11 = add nsw i32 %5, 30
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, ptr %0, i64 %12
  store i32 %5, ptr %13, align 4
  %14 = sext i32 %2 to i64
  %15 = add nsw i64 %14, 5
  %16 = sext i32 %8 to i64
  br label %17

17:                                               ; preds = %19, %4
  %indvars.iv = phi i64 [ %indvars.iv.next, %19 ], [ %15, %4 ]
  %18 = icmp sle i64 %indvars.iv, %16
  br i1 %18, label %19, label %23

19:                                               ; preds = %17
  %20 = getelementptr inbounds [51 x i32], ptr %1, i64 %6
  %21 = getelementptr inbounds [51 x i32], ptr %20, i64 0, i64 %indvars.iv
  store i32 %5, ptr %21, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %22 = trunc nsw i64 %indvars.iv.next to i32
  br label %17, !llvm.loop !12

23:                                               ; preds = %17
  %24 = getelementptr inbounds [51 x i32], ptr %1, i64 %6
  %25 = sub nsw i32 %5, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [51 x i32], ptr %24, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %27, align 4
  %30 = load i32, ptr %7, align 4
  %31 = add nsw i32 %5, 20
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [51 x i32], ptr %1, i64 %32
  %34 = getelementptr inbounds [51 x i32], ptr %33, i64 0, i64 %6
  store i32 %30, ptr %34, align 4
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
  %11 = phi i32 [ 10000, %9 ], [ 0, %8 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func2(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %20, %2
  %4 = phi i32 [ %21, %20 ], [ 1, %2 ]
  %5 = phi i8 [ %22, %20 ], [ undef, %2 ]
  %6 = icmp sle i32 %4, 1
  br i1 %6, label %7, label %23

7:                                                ; preds = %3
  %8 = sext i32 %4 to i64
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = load i8, ptr %9, align 1
  %11 = sext i8 %10 to i32
  %12 = add nsw i32 %4, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %1, i64 %13
  %15 = load i8, ptr %14, align 1
  %16 = sext i8 %15 to i32
  %17 = call i32 @Func1(i32 noundef %11, i32 noundef %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %7
  br label %20

20:                                               ; preds = %19, %7
  %21 = phi i32 [ %12, %19 ], [ %4, %7 ]
  %22 = phi i8 [ 65, %19 ], [ %5, %7 ]
  br label %3, !llvm.loop !13

23:                                               ; preds = %3
  %.lcssa1 = phi i32 [ %4, %3 ]
  %.lcssa = phi i8 [ %5, %3 ]
  %24 = sext i8 %.lcssa to i32
  %25 = icmp sge i32 %24, 87
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = icmp sle i32 %24, 90
  br i1 %27, label %28, label %29

28:                                               ; preds = %26
  br label %29

29:                                               ; preds = %28, %26, %23
  %30 = phi i32 [ 7, %28 ], [ %.lcssa1, %26 ], [ %.lcssa1, %23 ]
  %31 = icmp eq i32 %24, 88
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %39

33:                                               ; preds = %29
  %34 = call i32 @strcmp(ptr noundef %0, ptr noundef %1) #5
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = add nsw i32 %30, 7
  br label %39

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38, %36, %32
  %40 = phi i32 [ 0, %38 ], [ 1, %36 ], [ 1, %32 ]
  ret i32 %40
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
  %6 = phi i32 [ 0, %4 ], [ 1, %3 ]
  ret i32 %6
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
