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

7:                                                ; preds = %11, %0
  %8 = phi i32 [ %12, %11 ], [ poison, %0 ]
  %9 = phi i32 [ %12, %11 ], [ 0, %0 ]
  %10 = icmp ult i32 %9, 100000000
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = add i32 %9, 1
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
  %21 = getelementptr inbounds nuw %struct.Record, ptr %19, i32 0, i32 2
  store i32 10001, ptr %21, align 4
  %22 = getelementptr inbounds nuw %struct.Record, ptr %19, i32 0, i32 3
  store i32 40, ptr %22, align 8
  %23 = getelementptr inbounds nuw %struct.Record, ptr %19, i32 0, i32 4
  %24 = call ptr @strcpy(ptr noundef %23, ptr noundef @.str) #5
  %25 = call ptr @strcpy(ptr noundef %4, ptr noundef @.str.1) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %26 = call i32 @clock()
  br label %27

27:                                               ; preds = %69, %13
  %28 = phi i32 [ %76, %69 ], [ 0, %13 ]
  %.lcssa26 = phi i8 [ %.lcssa2, %69 ], [ undef, %13 ]
  %29 = phi i32 [ %74, %69 ], [ undef, %13 ]
  %30 = phi i32 [ %76, %69 ], [ 0, %13 ]
  %31 = icmp ult i32 %30, 100000000
  br i1 %31, label %32, label %77

32:                                               ; preds = %27
  %33 = call i32 @Proc5()
  %34 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  %35 = call ptr @strcpy(ptr noundef %5, ptr noundef @.str.2) #5
  store i32 10000, ptr %3, align 4
  %36 = call i32 @Func2(ptr noundef %4, ptr noundef %5)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, ptr @BoolGlob, align 4
  %.pre = load i32, ptr %1, align 4
  br label %40

40:                                               ; preds = %43, %32
  %41 = phi i32 [ %48, %43 ], [ %.pre, %32 ]
  %42 = icmp slt i32 %41, 3
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = mul nsw i32 5, %41
  %45 = sub nsw i32 %44, 3
  store i32 %45, ptr %2, align 4
  %46 = call i32 @Proc7(i32 noundef %41, i32 noundef 3, ptr noundef %2)
  %47 = load i32, ptr %1, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %1, align 4
  br label %40, !llvm.loop !9

49:                                               ; preds = %40
  %.lcssa = phi i32 [ %41, %40 ]
  %50 = load i32, ptr %2, align 4
  %51 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, i32 noundef %.lcssa, i32 noundef %50)
  %52 = load ptr, ptr @PtrGlb, align 8
  %53 = call i32 @Proc1(ptr noundef %52)
  br label %54

54:                                               ; preds = %67, %49
  %55 = phi i8 [ %68, %67 ], [ 65, %49 ]
  %56 = phi i8 [ %68, %67 ], [ 65, %49 ]
  %57 = sext i8 %56 to i32
  %58 = load i8, ptr @Char2Glob, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp sle i32 %57, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %54
  %62 = load i32, ptr %3, align 4
  %63 = call i32 @Func1(i32 noundef %57, i32 noundef 67)
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = call i32 @Proc6(i32 noundef 0, ptr noundef %3)
  br label %67

67:                                               ; preds = %65, %61
  %68 = add i8 %56, 1
  br label %54, !llvm.loop !10

69:                                               ; preds = %54
  %.lcssa2 = phi i8 [ %55, %54 ]
  %70 = load i32, ptr %1, align 4
  %71 = mul nsw i32 3, %70
  store i32 %71, ptr %2, align 4
  %72 = sub nsw i32 %71, 3
  %73 = mul nsw i32 7, %72
  %74 = sub nsw i32 %73, %70
  %75 = call i32 @Proc2(ptr noundef %1)
  %76 = add i32 %30, 1
  br label %27, !llvm.loop !11

77:                                               ; preds = %27
  %.lcssa7 = phi i32 [ %28, %27 ]
  %.lcssa26.lcssa = phi i8 [ %.lcssa26, %27 ]
  %.lcssa4 = phi i32 [ %29, %27 ]
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
  %4 = sext i8 %.pre to i32
  %5 = icmp eq i32 %4, 65
  br label %6

6:                                                ; preds = %22, %1
  %7 = phi i32 [ %16, %22 ], [ undef, %1 ]
  %8 = phi i32 [ %17, %22 ], [ %3, %1 ]
  %9 = phi i32 [ %18, %22 ], [ undef, %1 ]
  %10 = phi i32 [ %19, %22 ], [ %3, %1 ]
  br i1 %5, label %11, label %15

11:                                               ; preds = %6
  %12 = add nsw i32 %10, -1
  %13 = load i32, ptr @IntGlob, align 4
  %14 = sub nsw i32 %12, %13
  store i32 %14, ptr %0, align 4
  br label %15

15:                                               ; preds = %11, %6
  %16 = phi i32 [ 0, %11 ], [ %7, %6 ]
  %17 = phi i32 [ %12, %11 ], [ %8, %6 ]
  %18 = phi i32 [ 0, %11 ], [ %9, %6 ]
  %19 = phi i32 [ %12, %11 ], [ %10, %6 ]
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  %.lcssa2 = phi i32 [ %16, %15 ]
  %.lcssa = phi i32 [ %17, %15 ]
  ret i32 undef

22:                                               ; preds = %15
  br label %6
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
  %14 = getelementptr inbounds [51 x i32], ptr %1, i64 %6
  br label %15

15:                                               ; preds = %19, %4
  %16 = phi i32 [ %22, %19 ], [ poison, %4 ]
  %17 = phi i32 [ %22, %19 ], [ %5, %4 ]
  %18 = icmp sle i32 %17, %8
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = sext i32 %17 to i64
  %21 = getelementptr inbounds [51 x i32], ptr %14, i64 0, i64 %20
  store i32 %5, ptr %21, align 4
  %22 = add nsw i32 %17, 1
  br label %15, !llvm.loop !12

23:                                               ; preds = %15
  %.lcssa = phi i32 [ %16, %15 ]
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

3:                                                ; preds = %22, %2
  %4 = phi i32 [ %23, %22 ], [ 1, %2 ]
  %5 = phi i8 [ %24, %22 ], [ undef, %2 ]
  %6 = phi i32 [ %25, %22 ], [ 1, %2 ]
  %7 = phi i8 [ %26, %22 ], [ undef, %2 ]
  %8 = icmp sle i32 %6, 1
  br i1 %8, label %9, label %27

9:                                                ; preds = %3
  %10 = sext i32 %6 to i64
  %11 = getelementptr inbounds i8, ptr %0, i64 %10
  %12 = load i8, ptr %11, align 1
  %13 = sext i8 %12 to i32
  %14 = add nsw i32 %6, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %1, i64 %15
  %17 = load i8, ptr %16, align 1
  %18 = sext i8 %17 to i32
  %19 = call i32 @Func1(i32 noundef %13, i32 noundef %18)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %9
  br label %22

22:                                               ; preds = %21, %9
  %23 = phi i32 [ %14, %21 ], [ %4, %9 ]
  %24 = phi i8 [ 65, %21 ], [ %5, %9 ]
  %25 = phi i32 [ %14, %21 ], [ %6, %9 ]
  %26 = phi i8 [ 65, %21 ], [ %7, %9 ]
  br label %3, !llvm.loop !13

27:                                               ; preds = %3
  %.lcssa4 = phi i32 [ %4, %3 ]
  %.lcssa2 = phi i8 [ %5, %3 ]
  %.lcssa1 = phi i32 [ %6, %3 ]
  %.lcssa = phi i8 [ %7, %3 ]
  %28 = sext i8 %.lcssa to i32
  %29 = icmp sge i32 %28, 87
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = icmp sle i32 %28, 90
  br i1 %31, label %32, label %33

32:                                               ; preds = %30
  br label %33

33:                                               ; preds = %32, %30, %27
  %34 = phi i32 [ 7, %32 ], [ %.lcssa1, %30 ], [ %.lcssa1, %27 ]
  %35 = icmp eq i32 %28, 88
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %43

37:                                               ; preds = %33
  %38 = call i32 @strcmp(ptr noundef %0, ptr noundef %1) #5
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = add nsw i32 %34, 7
  br label %43

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42, %40, %36
  %44 = phi i32 [ 0, %42 ], [ 1, %40 ], [ 1, %36 ]
  ret i32 %44
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
