; ModuleID = 'results\paper_full\Dhrystone_dry\Dhrystone_dry.ll'
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
  %13 = sub nsw i32 %12, %6
  %14 = call ptr @malloc(i64 noundef 56) #4
  store ptr %14, ptr @PtrGlbNext, align 8
  %15 = call ptr @malloc(i64 noundef 56) #4
  store ptr %15, ptr @PtrGlb, align 8
  %16 = load ptr, ptr @PtrGlbNext, align 8
  %17 = load ptr, ptr @PtrGlb, align 8
  %18 = getelementptr inbounds nuw %struct.Record, ptr %17, i32 0, i32 0
  store ptr %16, ptr %18, align 8
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
  %27 = getelementptr inbounds [31 x i8], ptr %26, i64 0, i64 0
  %28 = call ptr @strcpy(ptr noundef %27, ptr noundef @.str) #5
  %29 = getelementptr inbounds [31 x i8], ptr %4, i64 0, i64 0
  %30 = call ptr @strcpy(ptr noundef %29, ptr noundef @.str.1) #5
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4
  %31 = call i32 @clock()
  br label %32

32:                                               ; preds = %76, %11
  %.1 = phi i32 [ 0, %11 ], [ %88, %76 ]
  %33 = icmp ult i32 %.1, 100000000
  br i1 %33, label %34, label %89

34:                                               ; preds = %32
  %35 = call i32 @Proc5()
  %36 = call i32 @Proc4()
  store i32 2, ptr %1, align 4
  %37 = getelementptr inbounds [31 x i8], ptr %5, i64 0, i64 0
  %38 = call ptr @strcpy(ptr noundef %37, ptr noundef @.str.2) #5
  store i32 10000, ptr %3, align 4
  %39 = getelementptr inbounds [31 x i8], ptr %4, i64 0, i64 0
  %40 = getelementptr inbounds [31 x i8], ptr %5, i64 0, i64 0
  %41 = call i32 @Func2(ptr noundef %39, ptr noundef %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, ptr @BoolGlob, align 4
  br label %45

45:                                               ; preds = %48, %34
  %46 = load i32, ptr %1, align 4
  %47 = icmp slt i32 %46, 3
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load i32, ptr %1, align 4
  %50 = mul nsw i32 5, %49
  %51 = sub nsw i32 %50, 3
  store i32 %51, ptr %2, align 4
  %52 = load i32, ptr %1, align 4
  %53 = call i32 @Proc7(i32 noundef %52, i32 noundef 3, ptr noundef %2)
  %54 = load i32, ptr %1, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, ptr %1, align 4
  br label %45, !llvm.loop !9

56:                                               ; preds = %45
  %57 = load i32, ptr %1, align 4
  %58 = load i32, ptr %2, align 4
  %59 = call i32 @Proc8(ptr noundef @Array1Glob, ptr noundef @Array2Glob, i32 noundef %57, i32 noundef %58)
  %60 = load ptr, ptr @PtrGlb, align 8
  %61 = call i32 @Proc1(ptr noundef %60)
  br label %62

62:                                               ; preds = %74, %56
  %.01 = phi i8 [ 65, %56 ], [ %75, %74 ]
  %63 = sext i8 %.01 to i32
  %64 = load i8, ptr @Char2Glob, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp sle i32 %63, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %62
  %68 = load i32, ptr %3, align 4
  %69 = sext i8 %.01 to i32
  %70 = call i32 @Func1(i32 noundef %69, i32 noundef 67)
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = call i32 @Proc6(i32 noundef 0, ptr noundef %3)
  br label %74

74:                                               ; preds = %67, %72
  %75 = add i8 %.01, 1
  br label %62, !llvm.loop !10

76:                                               ; preds = %62
  %77 = load i32, ptr %1, align 4
  %78 = mul nsw i32 3, %77
  store i32 %78, ptr %2, align 4
  %79 = load i32, ptr %2, align 4
  %80 = load i32, ptr %1, align 4
  %81 = sdiv i32 %79, %80
  %82 = load i32, ptr %2, align 4
  %83 = sub nsw i32 %82, %81
  %84 = mul nsw i32 7, %83
  %85 = load i32, ptr %1, align 4
  %86 = sub nsw i32 %84, %85
  %87 = call i32 @Proc2(ptr noundef %1)
  %88 = add i32 %.1, 1
  br label %32, !llvm.loop !11

89:                                               ; preds = %32
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

17:                                               ; preds = %20, %4
  %.0 = phi i32 [ %5, %4 ], [ %25, %20 ]
  %18 = add nsw i32 %5, 1
  %19 = icmp sle i32 %.0, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = sext i32 %5 to i64
  %22 = getelementptr inbounds [51 x i32], ptr %1, i64 %21
  %23 = sext i32 %.0 to i64
  %24 = getelementptr inbounds [51 x i32], ptr %22, i64 0, i64 %23
  store i32 %5, ptr %24, align 4
  %25 = add nsw i32 %.0, 1
  br label %17, !llvm.loop !12

26:                                               ; preds = %17
  %27 = sext i32 %5 to i64
  %28 = getelementptr inbounds [51 x i32], ptr %1, i64 %27
  %29 = sub nsw i32 %5, 1
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
  %40 = sext i32 %5 to i64
  %41 = getelementptr inbounds [51 x i32], ptr %39, i64 0, i64 %40
  store i32 %36, ptr %41, align 4
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
  br label %3, !llvm.loop !13

18:                                               ; preds = %3
  %19 = sext i8 65 to i32
  %20 = icmp sge i32 %19, 87
  %21 = sext i8 65 to i32
  %22 = icmp sle i32 %21, 90
  %or.cond = and i1 %20, %22
  %.2 = select i1 %or.cond, i32 7, i32 %.01
  %23 = sext i8 65 to i32
  %24 = icmp eq i32 %23, 88
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = call i32 @strcmp(ptr noundef %0, ptr noundef %1) #5
  %27 = icmp sgt i32 %26, 0
  %spec.select3 = select i1 %27, i32 1, i32 0
  br label %28

28:                                               ; preds = %25, %18
  %.0 = phi i32 [ 1, %18 ], [ %spec.select3, %25 ]
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
!13 = distinct !{!13, !8}
